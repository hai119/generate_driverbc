; ModuleID = '../bcout/drivers/input/input-leds.llvm.bc'
source_filename = "drivers/input/input-leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_input_leds_init6:\09\09\09"
module asm ".long\09input_leds_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
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
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
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
%struct.input_value = type { i16, i16, i32 }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.anon.65 = type { i8*, i8* }
%struct.kmem_cache = type opaque
%struct.input_leds = type { %struct.input_handle, i32, [0 x %struct.input_led] }
%struct.input_led = type { %struct.led_classdev, %struct.input_handle*, i32 }
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, void (%struct.led_classdev*)*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }

@__UNIQUE_ID___addressable_input_leds_init206 = internal global i8* bitcast (i32 ()* @input_leds_init to i8*), section ".discard.addressable", align 8, !dbg !0
@input_leds_handler = internal global %struct.input_handler { i8* null, void (%struct.input_handle*, i32, i32, i32)* @input_leds_event, void (%struct.input_handle*, %struct.input_value*, i32)* null, i1 (%struct.input_handle*, i32, i32, i32)* null, i1 (%struct.input_handler*, %struct.input_dev*)* null, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @input_leds_connect, void (%struct.input_handle*)* @input_leds_disconnect, void (%struct.input_handle*)* null, i8 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.input_device_id* getelementptr inbounds ([2 x %struct.input_device_id], [2 x %struct.input_device_id]* @input_leds_ids, i32 0, i32 0), %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8, !dbg !3845
@__exitcall_input_leds_exit = internal global void ()* @input_leds_exit, section ".exitcall.exit", align 8, !dbg !3817
@__UNIQUE_ID_author207 = internal constant [65 x i8] c"input_leds.author=Samuel Thibault <samuel.thibault@ens-lyon.org>\00", section ".modinfo", align 1, !dbg !3822
@__UNIQUE_ID_author208 = internal constant [62 x i8] c"input_leds.author=Dmitry Torokhov <dmitry.torokhov@gmail.com>\00", section ".modinfo", align 1, !dbg !3827
@__UNIQUE_ID_description209 = internal constant [44 x i8] c"input_leds.description=Input -> LEDs Bridge\00", section ".modinfo", align 1, !dbg !3832
@__UNIQUE_ID_file210 = internal constant [41 x i8] c"input_leds.file=drivers/input/input-leds\00", section ".modinfo", align 1, !dbg !3835
@__UNIQUE_ID_license211 = internal constant [26 x i8] c"input_leds.license=GPL v2\00", section ".modinfo", align 1, !dbg !3840
@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@input_leds_ids = internal constant [2 x %struct.input_device_id] [%struct.input_device_id { i64 16, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 131072], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id zeroinitializer], align 16, !dbg !3855
@input_led_info = internal constant [16 x %struct.anon.65] [%struct.anon.65 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon.65 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon.65 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon.65 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.anon.65 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon.65 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* null }, %struct.anon.65 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct.anon.65 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* null }, %struct.anon.65 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null }, %struct.anon.65 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct.anon.65 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* null }, %struct.anon.65 zeroinitializer, %struct.anon.65 zeroinitializer, %struct.anon.65 zeroinitializer, %struct.anon.65 zeroinitializer, %struct.anon.65 zeroinitializer], align 16, !dbg !3847
@.str.1 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register LED %s: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"numlock\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"kbd-numlock\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"capslock\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"kbd-capslock\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"scrolllock\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"kbd-scrolllock\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"kana\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"kbd-kanalock\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_input_leds_init206 to i8*), i8* bitcast (void ()* @input_leds_exit to i8*), i8* bitcast (void ()** @__exitcall_input_leds_exit to i8*), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_author207, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_author208, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_description209, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file210, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_license211, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @input_leds_init() #0 section ".init.text" !dbg !3863 {
entry:
  %call = call i32 @input_register_handler(%struct.input_handler* @input_leds_handler) #8, !dbg !3866
  ret i32 %call, !dbg !3867
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @input_leds_exit() #0 section ".exit.text" !dbg !3868 {
entry:
  call void @input_unregister_handler(%struct.input_handler* @input_leds_handler) #8, !dbg !3869
  ret void, !dbg !3870
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_handler(%struct.input_handler*) #1

; Function Attrs: noredzone
declare dso_local i32 @input_register_handler(%struct.input_handler*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_leds_event(%struct.input_handle* %handle, i32 %type, i32 %code, i32 %value) #2 !dbg !3871 {
entry:
  %handle.addr = alloca %struct.input_handle*, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_handle* %handle, %struct.input_handle** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_handle** %handle.addr, metadata !3872, metadata !DIExpression()), !dbg !3873
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3874, metadata !DIExpression()), !dbg !3875
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !3876, metadata !DIExpression()), !dbg !3877
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3878, metadata !DIExpression()), !dbg !3879
  ret void, !dbg !3880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @input_leds_connect(%struct.input_handler* %handler, %struct.input_dev* %dev, %struct.input_device_id* %id) #2 !dbg !3881 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca %struct.input_handler*, align 8
  %dev.addr = alloca %struct.input_dev*, align 8
  %id.addr = alloca %struct.input_device_id*, align 8
  %leds = alloca %struct.input_leds*, align 8
  %led = alloca %struct.input_led*, align 8
  %num_leds = alloca i32, align 4
  %led_code = alloca i32, align 4
  %led_no = alloca i32, align 4
  %error = alloca i32, align 4
  %led70 = alloca %struct.input_led*, align 8
  store %struct.input_handler* %handler, %struct.input_handler** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_handler** %handler.addr, metadata !3882, metadata !DIExpression()), !dbg !3883
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !3884, metadata !DIExpression()), !dbg !3885
  store %struct.input_device_id* %id, %struct.input_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_device_id** %id.addr, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.declare(metadata %struct.input_leds** %leds, metadata !3888, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.declare(metadata %struct.input_led** %led, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.declare(metadata i32* %num_leds, metadata !3899, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.declare(metadata i32* %led_code, metadata !3901, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.declare(metadata i32* %led_no, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3905, metadata !DIExpression()), !dbg !3906
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3907
  %call = call i32 @input_leds_get_count(%struct.input_dev* %0) #8, !dbg !3908
  store i32 %call, i32* %num_leds, align 4, !dbg !3909
  %1 = load i32, i32* %num_leds, align 4, !dbg !3910
  %tobool = icmp ne i32 %1, 0, !dbg !3910
  br i1 %tobool, label %if.end, label %if.then, !dbg !3912

if.then:                                          ; preds = %entry
  store i32 -6, i32* %retval, align 4, !dbg !3913
  br label %return, !dbg !3913

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %num_leds, align 4, !dbg !3914
  %conv = zext i32 %2 to i64, !dbg !3914
  %call1 = call i64 @__ab_c_size(i64 %conv, i64 272, i64 80) #8, !dbg !3914
  %call2 = call i8* @kzalloc(i64 %call1, i32 3264) #8, !dbg !3915
  %3 = bitcast i8* %call2 to %struct.input_leds*, !dbg !3915
  store %struct.input_leds* %3, %struct.input_leds** %leds, align 8, !dbg !3916
  %4 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3917
  %tobool3 = icmp ne %struct.input_leds* %4, null, !dbg !3917
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3919

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !3920
  br label %return, !dbg !3920

if.end5:                                          ; preds = %if.end
  %5 = load i32, i32* %num_leds, align 4, !dbg !3921
  %6 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3922
  %num_leds6 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %6, i32 0, i32 1, !dbg !3923
  store i32 %5, i32* %num_leds6, align 8, !dbg !3924
  %7 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3925
  %8 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3926
  %handle = getelementptr inbounds %struct.input_leds, %struct.input_leds* %8, i32 0, i32 0, !dbg !3927
  %dev7 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i32 0, i32 3, !dbg !3928
  store %struct.input_dev* %7, %struct.input_dev** %dev7, align 8, !dbg !3929
  %9 = load %struct.input_handler*, %struct.input_handler** %handler.addr, align 8, !dbg !3930
  %10 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3931
  %handle8 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %10, i32 0, i32 0, !dbg !3932
  %handler9 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle8, i32 0, i32 4, !dbg !3933
  store %struct.input_handler* %9, %struct.input_handler** %handler9, align 8, !dbg !3934
  %11 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3935
  %handle10 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %11, i32 0, i32 0, !dbg !3936
  %name = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle10, i32 0, i32 2, !dbg !3937
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !3938
  %12 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3939
  %13 = bitcast %struct.input_leds* %12 to i8*, !dbg !3939
  %14 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3940
  %handle11 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %14, i32 0, i32 0, !dbg !3941
  %private = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle11, i32 0, i32 0, !dbg !3942
  store i8* %13, i8** %private, align 8, !dbg !3943
  %15 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3944
  %handle12 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %15, i32 0, i32 0, !dbg !3945
  %call13 = call i32 @input_register_handle(%struct.input_handle* %handle12) #8, !dbg !3946
  store i32 %call13, i32* %error, align 4, !dbg !3947
  %16 = load i32, i32* %error, align 4, !dbg !3948
  %tobool14 = icmp ne i32 %16, 0, !dbg !3948
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3950

if.then15:                                        ; preds = %if.end5
  br label %err_free_mem, !dbg !3951

if.end16:                                         ; preds = %if.end5
  %17 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3952
  %handle17 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %17, i32 0, i32 0, !dbg !3953
  %call18 = call i32 @input_open_device(%struct.input_handle* %handle17) #8, !dbg !3954
  store i32 %call18, i32* %error, align 4, !dbg !3955
  %18 = load i32, i32* %error, align 4, !dbg !3956
  %tobool19 = icmp ne i32 %18, 0, !dbg !3956
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3958

if.then20:                                        ; preds = %if.end16
  br label %err_unregister_handle, !dbg !3959

if.end21:                                         ; preds = %if.end16
  store i32 0, i32* %led_no, align 4, !dbg !3960
  %19 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3961
  %ledbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 10, !dbg !3961
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit, i64 0, i64 0, !dbg !3961
  %call22 = call i64 @find_first_bit(i64* %arraydecay, i64 16) #8, !dbg !3961
  %conv23 = trunc i64 %call22 to i32, !dbg !3961
  store i32 %conv23, i32* %led_code, align 4, !dbg !3961
  br label %for.cond, !dbg !3961

for.cond:                                         ; preds = %for.inc, %if.end21
  %20 = load i32, i32* %led_code, align 4, !dbg !3963
  %cmp = icmp ult i32 %20, 16, !dbg !3963
  br i1 %cmp, label %for.body, label %for.end, !dbg !3961

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %led_code, align 4, !dbg !3965
  %idxprom = zext i32 %21 to i64, !dbg !3968
  %arrayidx = getelementptr [16 x %struct.anon.65], [16 x %struct.anon.65]* @input_led_info, i64 0, i64 %idxprom, !dbg !3968
  %name25 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx, i32 0, i32 0, !dbg !3969
  %22 = load i8*, i8** %name25, align 16, !dbg !3969
  %tobool26 = icmp ne i8* %22, null, !dbg !3968
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !3970

if.then27:                                        ; preds = %for.body
  br label %for.inc, !dbg !3971

if.end28:                                         ; preds = %for.body
  %23 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3972
  %leds29 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %23, i32 0, i32 2, !dbg !3973
  %24 = load i32, i32* %led_no, align 4, !dbg !3974
  %idxprom30 = sext i32 %24 to i64, !dbg !3972
  %arrayidx31 = getelementptr [0 x %struct.input_led], [0 x %struct.input_led]* %leds29, i64 0, i64 %idxprom30, !dbg !3972
  store %struct.input_led* %arrayidx31, %struct.input_led** %led, align 8, !dbg !3975
  %25 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !3976
  %handle32 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %25, i32 0, i32 0, !dbg !3977
  %26 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !3978
  %handle33 = getelementptr inbounds %struct.input_led, %struct.input_led* %26, i32 0, i32 1, !dbg !3979
  store %struct.input_handle* %handle32, %struct.input_handle** %handle33, align 8, !dbg !3980
  %27 = load i32, i32* %led_code, align 4, !dbg !3981
  %28 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !3982
  %code = getelementptr inbounds %struct.input_led, %struct.input_led* %28, i32 0, i32 2, !dbg !3983
  store i32 %27, i32* %code, align 8, !dbg !3984
  %29 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3985
  %dev34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 40, !dbg !3986
  %call35 = call i8* @dev_name(%struct.device* %dev34) #8, !dbg !3987
  %30 = load i32, i32* %led_code, align 4, !dbg !3988
  %idxprom36 = zext i32 %30 to i64, !dbg !3989
  %arrayidx37 = getelementptr [16 x %struct.anon.65], [16 x %struct.anon.65]* @input_led_info, i64 0, i64 %idxprom36, !dbg !3989
  %name38 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx37, i32 0, i32 0, !dbg !3990
  %31 = load i8*, i8** %name38, align 16, !dbg !3990
  %call39 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %call35, i8* %31) #8, !dbg !3991
  %32 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !3992
  %cdev = getelementptr inbounds %struct.input_led, %struct.input_led* %32, i32 0, i32 0, !dbg !3993
  %name40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev, i32 0, i32 0, !dbg !3994
  store i8* %call39, i8** %name40, align 8, !dbg !3995
  %33 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !3996
  %cdev41 = getelementptr inbounds %struct.input_led, %struct.input_led* %33, i32 0, i32 0, !dbg !3998
  %name42 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev41, i32 0, i32 0, !dbg !3999
  %34 = load i8*, i8** %name42, align 8, !dbg !3999
  %tobool43 = icmp ne i8* %34, null, !dbg !3996
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !4000

if.then44:                                        ; preds = %if.end28
  store i32 -12, i32* %error, align 4, !dbg !4001
  br label %err_unregister_leds, !dbg !4003

if.end45:                                         ; preds = %if.end28
  %35 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4004
  %cdev46 = getelementptr inbounds %struct.input_led, %struct.input_led* %35, i32 0, i32 0, !dbg !4005
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev46, i32 0, i32 2, !dbg !4006
  store i32 1, i32* %max_brightness, align 4, !dbg !4007
  %36 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4008
  %cdev47 = getelementptr inbounds %struct.input_led, %struct.input_led* %36, i32 0, i32 0, !dbg !4009
  %brightness_get = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev47, i32 0, i32 7, !dbg !4010
  store i32 (%struct.led_classdev*)* @input_leds_brightness_get, i32 (%struct.led_classdev*)** %brightness_get, align 8, !dbg !4011
  %37 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4012
  %cdev48 = getelementptr inbounds %struct.input_led, %struct.input_led* %37, i32 0, i32 0, !dbg !4013
  %brightness_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev48, i32 0, i32 5, !dbg !4014
  store void (%struct.led_classdev*, i32)* @input_leds_brightness_set, void (%struct.led_classdev*, i32)** %brightness_set, align 8, !dbg !4015
  %38 = load i32, i32* %led_code, align 4, !dbg !4016
  %idxprom49 = zext i32 %38 to i64, !dbg !4017
  %arrayidx50 = getelementptr [16 x %struct.anon.65], [16 x %struct.anon.65]* @input_led_info, i64 0, i64 %idxprom49, !dbg !4017
  %trigger = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx50, i32 0, i32 1, !dbg !4018
  %39 = load i8*, i8** %trigger, align 8, !dbg !4018
  %40 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4019
  %cdev51 = getelementptr inbounds %struct.input_led, %struct.input_led* %40, i32 0, i32 0, !dbg !4020
  %default_trigger = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev51, i32 0, i32 14, !dbg !4021
  store i8* %39, i8** %default_trigger, align 8, !dbg !4022
  %41 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4023
  %dev52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 40, !dbg !4024
  %42 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4025
  %cdev53 = getelementptr inbounds %struct.input_led, %struct.input_led* %42, i32 0, i32 0, !dbg !4026
  %call54 = call i32 @led_classdev_register(%struct.device* %dev52, %struct.led_classdev* %cdev53) #8, !dbg !4027
  store i32 %call54, i32* %error, align 4, !dbg !4028
  %43 = load i32, i32* %error, align 4, !dbg !4029
  %tobool55 = icmp ne i32 %43, 0, !dbg !4029
  br i1 %tobool55, label %if.then56, label %if.end62, !dbg !4031

if.then56:                                        ; preds = %if.end45
  %44 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4032
  %dev57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 40, !dbg !4032
  %45 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4032
  %cdev58 = getelementptr inbounds %struct.input_led, %struct.input_led* %45, i32 0, i32 0, !dbg !4032
  %name59 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev58, i32 0, i32 0, !dbg !4032
  %46 = load i8*, i8** %name59, align 8, !dbg !4032
  %47 = load i32, i32* %error, align 4, !dbg !4032
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %46, i32 %47) #9, !dbg !4032
  %48 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4034
  %cdev60 = getelementptr inbounds %struct.input_led, %struct.input_led* %48, i32 0, i32 0, !dbg !4035
  %name61 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev60, i32 0, i32 0, !dbg !4036
  %49 = load i8*, i8** %name61, align 8, !dbg !4036
  call void @kfree(i8* %49) #8, !dbg !4037
  br label %err_unregister_leds, !dbg !4038

if.end62:                                         ; preds = %if.end45
  %50 = load i32, i32* %led_no, align 4, !dbg !4039
  %inc = add i32 %50, 1, !dbg !4039
  store i32 %inc, i32* %led_no, align 4, !dbg !4039
  br label %for.inc, !dbg !4040

for.inc:                                          ; preds = %if.end62, %if.then27
  %51 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3963
  %ledbit63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 10, !dbg !3963
  %arraydecay64 = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit63, i64 0, i64 0, !dbg !3963
  %52 = load i32, i32* %led_code, align 4, !dbg !3963
  %add = add i32 %52, 1, !dbg !3963
  %conv65 = zext i32 %add to i64, !dbg !3963
  %call66 = call i64 @find_next_bit(i64* %arraydecay64, i64 16, i64 %conv65) #8, !dbg !3963
  %conv67 = trunc i64 %call66 to i32, !dbg !3963
  store i32 %conv67, i32* %led_code, align 4, !dbg !3963
  br label %for.cond, !dbg !3963, !llvm.loop !4041

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4043
  br label %return, !dbg !4043

err_unregister_leds:                              ; preds = %if.then56, %if.then44
  call void @llvm.dbg.label(metadata !4044), !dbg !4045
  br label %while.cond, !dbg !4046

while.cond:                                       ; preds = %while.body, %err_unregister_leds
  %53 = load i32, i32* %led_no, align 4, !dbg !4047
  %dec = add i32 %53, -1, !dbg !4047
  store i32 %dec, i32* %led_no, align 4, !dbg !4047
  %cmp68 = icmp sge i32 %dec, 0, !dbg !4048
  br i1 %cmp68, label %while.body, label %while.end, !dbg !4046

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.input_led** %led70, metadata !4049, metadata !DIExpression()), !dbg !4051
  %54 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4052
  %leds71 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %54, i32 0, i32 2, !dbg !4053
  %55 = load i32, i32* %led_no, align 4, !dbg !4054
  %idxprom72 = sext i32 %55 to i64, !dbg !4052
  %arrayidx73 = getelementptr [0 x %struct.input_led], [0 x %struct.input_led]* %leds71, i64 0, i64 %idxprom72, !dbg !4052
  store %struct.input_led* %arrayidx73, %struct.input_led** %led70, align 8, !dbg !4051
  %56 = load %struct.input_led*, %struct.input_led** %led70, align 8, !dbg !4055
  %cdev74 = getelementptr inbounds %struct.input_led, %struct.input_led* %56, i32 0, i32 0, !dbg !4056
  call void @led_classdev_unregister(%struct.led_classdev* %cdev74) #8, !dbg !4057
  %57 = load %struct.input_led*, %struct.input_led** %led70, align 8, !dbg !4058
  %cdev75 = getelementptr inbounds %struct.input_led, %struct.input_led* %57, i32 0, i32 0, !dbg !4059
  %name76 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev75, i32 0, i32 0, !dbg !4060
  %58 = load i8*, i8** %name76, align 8, !dbg !4060
  call void @kfree(i8* %58) #8, !dbg !4061
  br label %while.cond, !dbg !4046, !llvm.loop !4062

while.end:                                        ; preds = %while.cond
  %59 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4064
  %handle77 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %59, i32 0, i32 0, !dbg !4065
  call void @input_close_device(%struct.input_handle* %handle77) #8, !dbg !4066
  br label %err_unregister_handle, !dbg !4066

err_unregister_handle:                            ; preds = %while.end, %if.then20
  call void @llvm.dbg.label(metadata !4067), !dbg !4068
  %60 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4069
  %handle78 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %60, i32 0, i32 0, !dbg !4070
  call void @input_unregister_handle(%struct.input_handle* %handle78) #8, !dbg !4071
  br label %err_free_mem, !dbg !4071

err_free_mem:                                     ; preds = %err_unregister_handle, %if.then15
  call void @llvm.dbg.label(metadata !4072), !dbg !4073
  %61 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4074
  %62 = bitcast %struct.input_leds* %61 to i8*, !dbg !4074
  call void @kfree(i8* %62) #8, !dbg !4075
  %63 = load i32, i32* %error, align 4, !dbg !4076
  store i32 %63, i32* %retval, align 4, !dbg !4077
  br label %return, !dbg !4077

return:                                           ; preds = %err_free_mem, %for.end, %if.then4, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !4078
  ret i32 %64, !dbg !4078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_leds_disconnect(%struct.input_handle* %handle) #2 !dbg !4079 {
entry:
  %handle.addr = alloca %struct.input_handle*, align 8
  %leds = alloca %struct.input_leds*, align 8
  %i = alloca i32, align 4
  %led = alloca %struct.input_led*, align 8
  store %struct.input_handle* %handle, %struct.input_handle** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_handle** %handle.addr, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.declare(metadata %struct.input_leds** %leds, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load %struct.input_handle*, %struct.input_handle** %handle.addr, align 8, !dbg !4084
  %private = getelementptr inbounds %struct.input_handle, %struct.input_handle* %0, i32 0, i32 0, !dbg !4085
  %1 = load i8*, i8** %private, align 8, !dbg !4085
  %2 = bitcast i8* %1 to %struct.input_leds*, !dbg !4084
  store %struct.input_leds* %2, %struct.input_leds** %leds, align 8, !dbg !4083
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4086, metadata !DIExpression()), !dbg !4087
  store i32 0, i32* %i, align 4, !dbg !4088
  br label %for.cond, !dbg !4090

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4091
  %4 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4093
  %num_leds = getelementptr inbounds %struct.input_leds, %struct.input_leds* %4, i32 0, i32 1, !dbg !4094
  %5 = load i32, i32* %num_leds, align 8, !dbg !4094
  %cmp = icmp ult i32 %3, %5, !dbg !4095
  br i1 %cmp, label %for.body, label %for.end, !dbg !4096

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.input_led** %led, metadata !4097, metadata !DIExpression()), !dbg !4099
  %6 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4100
  %leds1 = getelementptr inbounds %struct.input_leds, %struct.input_leds* %6, i32 0, i32 2, !dbg !4101
  %7 = load i32, i32* %i, align 4, !dbg !4102
  %idxprom = sext i32 %7 to i64, !dbg !4100
  %arrayidx = getelementptr [0 x %struct.input_led], [0 x %struct.input_led]* %leds1, i64 0, i64 %idxprom, !dbg !4100
  store %struct.input_led* %arrayidx, %struct.input_led** %led, align 8, !dbg !4099
  %8 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4103
  %cdev = getelementptr inbounds %struct.input_led, %struct.input_led* %8, i32 0, i32 0, !dbg !4104
  call void @led_classdev_unregister(%struct.led_classdev* %cdev) #8, !dbg !4105
  %9 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4106
  %cdev2 = getelementptr inbounds %struct.input_led, %struct.input_led* %9, i32 0, i32 0, !dbg !4107
  %name = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev2, i32 0, i32 0, !dbg !4108
  %10 = load i8*, i8** %name, align 8, !dbg !4108
  call void @kfree(i8* %10) #8, !dbg !4109
  br label %for.inc, !dbg !4110

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !4111
  %inc = add i32 %11, 1, !dbg !4111
  store i32 %inc, i32* %i, align 4, !dbg !4111
  br label %for.cond, !dbg !4112, !llvm.loop !4113

for.end:                                          ; preds = %for.cond
  %12 = load %struct.input_handle*, %struct.input_handle** %handle.addr, align 8, !dbg !4115
  call void @input_close_device(%struct.input_handle* %12) #8, !dbg !4116
  %13 = load %struct.input_handle*, %struct.input_handle** %handle.addr, align 8, !dbg !4117
  call void @input_unregister_handle(%struct.input_handle* %13) #8, !dbg !4118
  %14 = load %struct.input_leds*, %struct.input_leds** %leds, align 8, !dbg !4119
  %15 = bitcast %struct.input_leds* %14 to i8*, !dbg !4119
  call void @kfree(i8* %15) #8, !dbg !4120
  ret void, !dbg !4121
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @input_leds_get_count(%struct.input_dev* %dev) #2 !dbg !4122 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %led_code = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4123, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.declare(metadata i32* %led_code, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4127, metadata !DIExpression()), !dbg !4128
  store i32 0, i32* %count, align 4, !dbg !4128
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4129
  %ledbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 10, !dbg !4129
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit, i64 0, i64 0, !dbg !4129
  %call = call i64 @find_first_bit(i64* %arraydecay, i64 16) #8, !dbg !4129
  %conv = trunc i64 %call to i32, !dbg !4129
  store i32 %conv, i32* %led_code, align 4, !dbg !4129
  br label %for.cond, !dbg !4129

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %led_code, align 4, !dbg !4131
  %cmp = icmp ult i32 %1, 16, !dbg !4131
  br i1 %cmp, label %for.body, label %for.end, !dbg !4129

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %led_code, align 4, !dbg !4133
  %idxprom = zext i32 %2 to i64, !dbg !4135
  %arrayidx = getelementptr [16 x %struct.anon.65], [16 x %struct.anon.65]* @input_led_info, i64 0, i64 %idxprom, !dbg !4135
  %name = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx, i32 0, i32 0, !dbg !4136
  %3 = load i8*, i8** %name, align 16, !dbg !4136
  %tobool = icmp ne i8* %3, null, !dbg !4135
  br i1 %tobool, label %if.then, label %if.end, !dbg !4137

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %count, align 4, !dbg !4138
  %inc = add i32 %4, 1, !dbg !4138
  store i32 %inc, i32* %count, align 4, !dbg !4138
  br label %if.end, !dbg !4139

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4136

for.inc:                                          ; preds = %if.end
  %5 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4131
  %ledbit2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 10, !dbg !4131
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit2, i64 0, i64 0, !dbg !4131
  %6 = load i32, i32* %led_code, align 4, !dbg !4131
  %add = add i32 %6, 1, !dbg !4131
  %conv4 = zext i32 %add to i64, !dbg !4131
  %call5 = call i64 @find_next_bit(i64* %arraydecay3, i64 16, i64 %conv4) #8, !dbg !4131
  %conv6 = trunc i64 %call5 to i32, !dbg !4131
  store i32 %conv6, i32* %led_code, align 4, !dbg !4131
  br label %for.cond, !dbg !4131, !llvm.loop !4140

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %count, align 4, !dbg !4142
  ret i32 %7, !dbg !4143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4144 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4147, metadata !DIExpression()), !dbg !4151
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4157, metadata !DIExpression()), !dbg !4158
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4159, metadata !DIExpression()), !dbg !4160
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4161, metadata !DIExpression()), !dbg !4162
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4163, metadata !DIExpression()), !dbg !4167
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4169, metadata !DIExpression()), !dbg !4173
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4175, metadata !DIExpression()), !dbg !4179
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4184, metadata !DIExpression()), !dbg !4185
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4186, metadata !DIExpression()), !dbg !4187
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4188, metadata !DIExpression()), !dbg !4189
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4190, metadata !DIExpression()), !dbg !4191
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4192, metadata !DIExpression()), !dbg !4193
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4194, metadata !DIExpression()), !dbg !4195
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4196, metadata !DIExpression()), !dbg !4197
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4198, metadata !DIExpression()), !dbg !4199
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4200, metadata !DIExpression()), !dbg !4201
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4202, metadata !DIExpression()), !dbg !4203
  %0 = load i64, i64* %size.addr, align 8, !dbg !4204
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4205
  %or = or i32 %1, 256, !dbg !4206
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4207
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4208
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4209

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4210
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4211
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4212

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4213
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4214
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4215
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4216
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4193
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4217
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4218
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4219
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4220
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4221
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4222
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4223
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4223
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4223
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4223
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4223
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4224
  br label %kmalloc.exit, !dbg !4224

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4225
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4226
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4226
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4228

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4229
  br label %kmalloc_index.exit.i, !dbg !4229

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4230
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4232
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4233

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4234
  br label %kmalloc_index.exit.i, !dbg !4234

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4235
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4237
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4238

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4239
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4240
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4241

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4245
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4246

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4247
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4248
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4249

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4250
  br label %kmalloc_index.exit.i, !dbg !4250

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4251
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4253
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4254

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4255
  br label %kmalloc_index.exit.i, !dbg !4255

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4256
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4258
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4259

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4260
  br label %kmalloc_index.exit.i, !dbg !4260

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4261
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4263
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4264

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4265
  br label %kmalloc_index.exit.i, !dbg !4265

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4266
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4268
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4269

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4270
  br label %kmalloc_index.exit.i, !dbg !4270

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4271
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4273
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4274

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4275
  br label %kmalloc_index.exit.i, !dbg !4275

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4276
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4278
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4279

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4280
  br label %kmalloc_index.exit.i, !dbg !4280

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4281
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4283
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4284

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4285
  br label %kmalloc_index.exit.i, !dbg !4285

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4286
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4288
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4289

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4290
  br label %kmalloc_index.exit.i, !dbg !4290

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4291
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4293
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4294

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4295
  br label %kmalloc_index.exit.i, !dbg !4295

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4296
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4298
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4299

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4300
  br label %kmalloc_index.exit.i, !dbg !4300

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4301
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4303
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4304

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4305
  br label %kmalloc_index.exit.i, !dbg !4305

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4306
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4308
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4309

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4310
  br label %kmalloc_index.exit.i, !dbg !4310

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4311
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4313
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4314

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4315
  br label %kmalloc_index.exit.i, !dbg !4315

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4316
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4318
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4319

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4320
  br label %kmalloc_index.exit.i, !dbg !4320

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4321
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4323
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4324

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4325
  br label %kmalloc_index.exit.i, !dbg !4325

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4326
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4328
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4329

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4330
  br label %kmalloc_index.exit.i, !dbg !4330

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4331
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4333
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4334

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4335
  br label %kmalloc_index.exit.i, !dbg !4335

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4336
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4338
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4339

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4340
  br label %kmalloc_index.exit.i, !dbg !4340

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4341
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4343
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4344

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4345
  br label %kmalloc_index.exit.i, !dbg !4345

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4346
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4348
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4349

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4350
  br label %kmalloc_index.exit.i, !dbg !4350

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4351
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4353
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4354

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4355
  br label %kmalloc_index.exit.i, !dbg !4355

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4356
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4358
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4359

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4360
  br label %kmalloc_index.exit.i, !dbg !4360

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4361
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4363
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4364

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4365
  br label %kmalloc_index.exit.i, !dbg !4365

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4366
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4368
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4369

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4370
  br label %kmalloc_index.exit.i, !dbg !4370

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4371, !srcloc !4374
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4375, !srcloc !4378
  unreachable, !dbg !4379

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4380
  store i32 %45, i32* %index.i, align 4, !dbg !4381
  %46 = load i32, i32* %index.i, align 4, !dbg !4382
  %tobool.i = icmp ne i32 %46, 0, !dbg !4382
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4384

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4385
  br label %kmalloc.exit, !dbg !4385

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4386
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4387
  %and.i.i = and i32 %48, 17, !dbg !4387
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4387
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4387
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4387
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4387
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4389

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4390
  br label %kmalloc_type.exit.i, !dbg !4390

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4391
  %and2.i.i = and i32 %49, 1, !dbg !4392
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4391
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4391
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4391
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4393
  br label %kmalloc_type.exit.i, !dbg !4393

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4394
  %idxprom.i = zext i32 %51 to i64, !dbg !4395
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4395
  %52 = load i32, i32* %index.i, align 4, !dbg !4396
  %idxprom6.i = zext i32 %52 to i64, !dbg !4395
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4395
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4395
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4397
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4398
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4399
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4400
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4401
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4401
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4401
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4401
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4401
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4162
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4402
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4403
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4404
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4405
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4406
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4407
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4408
  store i8* %62, i8** %retval.i, align 8, !dbg !4409
  br label %kmalloc.exit, !dbg !4409

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4410
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4411
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4412
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4412
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4412
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4412
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4412
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4413
  br label %kmalloc.exit, !dbg !4413

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4414
  ret i8* %65, !dbg !4415
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #2 !dbg !4416 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4426, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4428, metadata !DIExpression()), !dbg !4431
  %0 = load i64, i64* %a.addr, align 8, !dbg !4431
  store i64 %0, i64* %__a, align 8, !dbg !4431
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4432, metadata !DIExpression()), !dbg !4431
  %1 = load i64, i64* %b.addr, align 8, !dbg !4431
  store i64 %1, i64* %__b, align 8, !dbg !4431
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4433, metadata !DIExpression()), !dbg !4431
  store i64* %bytes, i64** %__d, align 8, !dbg !4431
  %cmp = icmp eq i64* %__a, %__b, !dbg !4431
  %conv = zext i1 %cmp to i32, !dbg !4431
  %2 = load i64*, i64** %__d, align 8, !dbg !4431
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4431
  %conv2 = zext i1 %cmp1 to i32, !dbg !4431
  %3 = load i64, i64* %__a, align 8, !dbg !4431
  %4 = load i64, i64* %__b, align 8, !dbg !4431
  %5 = load i64*, i64** %__d, align 8, !dbg !4431
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4431
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4431
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4431
  store i64 %8, i64* %5, align 8, !dbg !4431
  %frombool = zext i1 %7 to i8, !dbg !4431
  store i8 %frombool, i8* %tmp, align 1, !dbg !4431
  %9 = load i8, i8* %tmp, align 1, !dbg !4431
  %tobool = trunc i8 %9 to i1, !dbg !4431
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !4435
  br i1 %call, label %if.then, label %if.end, !dbg !4436

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !4437
  br label %return, !dbg !4437

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !4438, metadata !DIExpression()), !dbg !4441
  %10 = load i64, i64* %bytes, align 8, !dbg !4441
  store i64 %10, i64* %__a3, align 8, !dbg !4441
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !4442, metadata !DIExpression()), !dbg !4441
  %11 = load i64, i64* %c.addr, align 8, !dbg !4441
  store i64 %11, i64* %__b4, align 8, !dbg !4441
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !4443, metadata !DIExpression()), !dbg !4441
  store i64* %bytes, i64** %__d5, align 8, !dbg !4441
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !4441
  %conv7 = zext i1 %cmp6 to i32, !dbg !4441
  %12 = load i64*, i64** %__d5, align 8, !dbg !4441
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !4441
  %conv9 = zext i1 %cmp8 to i32, !dbg !4441
  %13 = load i64, i64* %__a3, align 8, !dbg !4441
  %14 = load i64, i64* %__b4, align 8, !dbg !4441
  %15 = load i64*, i64** %__d5, align 8, !dbg !4441
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !4441
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4441
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4441
  store i64 %18, i64* %15, align 8, !dbg !4441
  %frombool11 = zext i1 %17 to i8, !dbg !4441
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !4441
  %19 = load i8, i8* %tmp10, align 1, !dbg !4441
  %tobool12 = trunc i8 %19 to i1, !dbg !4441
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #8, !dbg !4444
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4445

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !4446
  br label %return, !dbg !4446

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !4447
  store i64 %20, i64* %retval, align 8, !dbg !4448
  br label %return, !dbg !4448

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !4449
  ret i64 %21, !dbg !4449
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_handle(%struct.input_handle*) #1

; Function Attrs: noredzone
declare dso_local i32 @input_open_device(%struct.input_handle*) #1

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !4450 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4457
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4459
  %1 = load i8*, i8** %init_name, align 8, !dbg !4459
  %tobool = icmp ne i8* %1, null, !dbg !4457
  br i1 %tobool, label %if.then, label %if.end, !dbg !4460

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4461
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4462
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4462
  store i8* %3, i8** %retval, align 8, !dbg !4463
  br label %return, !dbg !4463

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4464
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4465
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !4466
  store i8* %call, i8** %retval, align 8, !dbg !4467
  br label %return, !dbg !4467

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4468
  ret i8* %5, !dbg !4468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @input_leds_brightness_get(%struct.led_classdev* %cdev) #2 !dbg !4469 {
entry:
  %cdev.addr = alloca %struct.led_classdev*, align 8
  %led = alloca %struct.input_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.input_led*, align 8
  %input = alloca %struct.input_dev*, align 8
  store %struct.led_classdev* %cdev, %struct.led_classdev** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %cdev.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata %struct.input_led** %led, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4474, metadata !DIExpression()), !dbg !4476
  %0 = load %struct.led_classdev*, %struct.led_classdev** %cdev.addr, align 8, !dbg !4476
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !4476
  store i8* %1, i8** %__mptr, align 8, !dbg !4476
  br label %do.body, !dbg !4476

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4477

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4476
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4476
  %3 = bitcast i8* %add.ptr to %struct.input_led*, !dbg !4476
  store %struct.input_led* %3, %struct.input_led** %tmp, align 8, !dbg !4477
  %4 = load %struct.input_led*, %struct.input_led** %tmp, align 8, !dbg !4476
  store %struct.input_led* %4, %struct.input_led** %led, align 8, !dbg !4473
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !4479, metadata !DIExpression()), !dbg !4480
  %5 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4481
  %handle = getelementptr inbounds %struct.input_led, %struct.input_led* %5, i32 0, i32 1, !dbg !4482
  %6 = load %struct.input_handle*, %struct.input_handle** %handle, align 8, !dbg !4482
  %dev = getelementptr inbounds %struct.input_handle, %struct.input_handle* %6, i32 0, i32 3, !dbg !4483
  %7 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4483
  store %struct.input_dev* %7, %struct.input_dev** %input, align 8, !dbg !4480
  %8 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4484
  %code = getelementptr inbounds %struct.input_led, %struct.input_led* %8, i32 0, i32 2, !dbg !4485
  %9 = load i32, i32* %code, align 8, !dbg !4485
  %conv = zext i32 %9 to i64, !dbg !4484
  %10 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4486
  %led1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 28, !dbg !4487
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %led1, i64 0, i64 0, !dbg !4486
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #8, !dbg !4488
  br i1 %call, label %cond.true, label %cond.false, !dbg !4488

cond.true:                                        ; preds = %do.end
  %11 = load %struct.led_classdev*, %struct.led_classdev** %cdev.addr, align 8, !dbg !4489
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 2, !dbg !4490
  %12 = load i32, i32* %max_brightness, align 4, !dbg !4490
  br label %cond.end, !dbg !4488

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4488

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 0, %cond.false ], !dbg !4488
  ret i32 %cond, !dbg !4491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_leds_brightness_set(%struct.led_classdev* %cdev, i32 %brightness) #2 !dbg !4492 {
entry:
  %cdev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  %led = alloca %struct.input_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.input_led*, align 8
  store %struct.led_classdev* %cdev, %struct.led_classdev** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %cdev.addr, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.declare(metadata %struct.input_led** %led, metadata !4497, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4499, metadata !DIExpression()), !dbg !4501
  %0 = load %struct.led_classdev*, %struct.led_classdev** %cdev.addr, align 8, !dbg !4501
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !4501
  store i8* %1, i8** %__mptr, align 8, !dbg !4501
  br label %do.body, !dbg !4501

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4502

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4501
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4501
  %3 = bitcast i8* %add.ptr to %struct.input_led*, !dbg !4501
  store %struct.input_led* %3, %struct.input_led** %tmp, align 8, !dbg !4502
  %4 = load %struct.input_led*, %struct.input_led** %tmp, align 8, !dbg !4501
  store %struct.input_led* %4, %struct.input_led** %led, align 8, !dbg !4498
  %5 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4504
  %handle = getelementptr inbounds %struct.input_led, %struct.input_led* %5, i32 0, i32 1, !dbg !4505
  %6 = load %struct.input_handle*, %struct.input_handle** %handle, align 8, !dbg !4505
  %7 = load %struct.input_led*, %struct.input_led** %led, align 8, !dbg !4506
  %code = getelementptr inbounds %struct.input_led, %struct.input_led* %7, i32 0, i32 2, !dbg !4507
  %8 = load i32, i32* %code, align 8, !dbg !4507
  %9 = load i32, i32* %brightness.addr, align 4, !dbg !4508
  %tobool = icmp ne i32 %9, 0, !dbg !4509
  %lnot = xor i1 %tobool, true, !dbg !4509
  %lnot1 = xor i1 %lnot, true, !dbg !4510
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4510
  call void @input_inject_event(%struct.input_handle* %6, i32 17, i32 %8, i32 %lnot.ext) #8, !dbg !4511
  ret void, !dbg !4512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_classdev_register(%struct.device* %parent, %struct.led_classdev* %led_cdev) #2 !dbg !4513 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4520
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !4521
  %call = call i32 @led_classdev_register_ext(%struct.device* %0, %struct.led_classdev* %1, %struct.led_init_data* null) #8, !dbg !4522
  ret i32 %call, !dbg !4523
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @led_classdev_unregister(%struct.led_classdev*) #1

; Function Attrs: noredzone
declare dso_local void @input_close_device(%struct.input_handle*) #1

; Function Attrs: noredzone
declare dso_local void @input_unregister_handle(%struct.input_handle*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4524 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4528, metadata !DIExpression()), !dbg !4533
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4535, metadata !DIExpression()), !dbg !4536
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  %0 = load i64, i64* %size.addr, align 8, !dbg !4539
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4541
  br i1 %1, label %if.then, label %if.end447, !dbg !4542

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4543
  %tobool = icmp ne i64 %2, 0, !dbg !4543
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4546

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4547
  br label %return, !dbg !4547

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4548
  %cmp = icmp ult i64 %3, 4096, !dbg !4550
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4551

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4552
  br label %return, !dbg !4552

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub = sub i64 %4, 1, !dbg !4553
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4553
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4553

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub4 = sub i64 %6, 1, !dbg !4553
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4553
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4553

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub6 = sub i64 %8, 1, !dbg !4553
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4553
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4553

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4553

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub9 = sub i64 %9, 1, !dbg !4553
  %and = and i64 %sub9, -9223372036854775808, !dbg !4553
  %tobool10 = icmp ne i64 %and, 0, !dbg !4553
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4553

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4553

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub13 = sub i64 %10, 1, !dbg !4553
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4553
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4553
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4553

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4553

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub18 = sub i64 %11, 1, !dbg !4553
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4553
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4553
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4553

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4553

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub23 = sub i64 %12, 1, !dbg !4553
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4553
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4553
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4553

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4553

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub28 = sub i64 %13, 1, !dbg !4553
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4553
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4553
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4553

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4553

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub33 = sub i64 %14, 1, !dbg !4553
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4553
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4553
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4553

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4553

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub38 = sub i64 %15, 1, !dbg !4553
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4553
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4553
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4553

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4553

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub43 = sub i64 %16, 1, !dbg !4553
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4553
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4553
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4553

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4553

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub48 = sub i64 %17, 1, !dbg !4553
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4553
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4553
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4553

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4553

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub53 = sub i64 %18, 1, !dbg !4553
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4553
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4553
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4553

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4553

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub58 = sub i64 %19, 1, !dbg !4553
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4553
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4553
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4553

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4553

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub63 = sub i64 %20, 1, !dbg !4553
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4553
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4553
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4553

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4553

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub68 = sub i64 %21, 1, !dbg !4553
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4553
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4553
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4553

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4553

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub73 = sub i64 %22, 1, !dbg !4553
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4553
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4553
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4553

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4553

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub78 = sub i64 %23, 1, !dbg !4553
  %and79 = and i64 %sub78, 562949953421312, !dbg !4553
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4553
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4553

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4553

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub83 = sub i64 %24, 1, !dbg !4553
  %and84 = and i64 %sub83, 281474976710656, !dbg !4553
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4553
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4553

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4553

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub88 = sub i64 %25, 1, !dbg !4553
  %and89 = and i64 %sub88, 140737488355328, !dbg !4553
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4553
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4553

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4553

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub93 = sub i64 %26, 1, !dbg !4553
  %and94 = and i64 %sub93, 70368744177664, !dbg !4553
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4553
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4553

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4553

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub98 = sub i64 %27, 1, !dbg !4553
  %and99 = and i64 %sub98, 35184372088832, !dbg !4553
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4553
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4553

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4553

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub103 = sub i64 %28, 1, !dbg !4553
  %and104 = and i64 %sub103, 17592186044416, !dbg !4553
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4553
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4553

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4553

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub108 = sub i64 %29, 1, !dbg !4553
  %and109 = and i64 %sub108, 8796093022208, !dbg !4553
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4553
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4553

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4553

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub113 = sub i64 %30, 1, !dbg !4553
  %and114 = and i64 %sub113, 4398046511104, !dbg !4553
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4553
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4553

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4553

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub118 = sub i64 %31, 1, !dbg !4553
  %and119 = and i64 %sub118, 2199023255552, !dbg !4553
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4553
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4553

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4553

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub123 = sub i64 %32, 1, !dbg !4553
  %and124 = and i64 %sub123, 1099511627776, !dbg !4553
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4553
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4553

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4553

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub128 = sub i64 %33, 1, !dbg !4553
  %and129 = and i64 %sub128, 549755813888, !dbg !4553
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4553
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4553

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4553

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub133 = sub i64 %34, 1, !dbg !4553
  %and134 = and i64 %sub133, 274877906944, !dbg !4553
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4553
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4553

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4553

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub138 = sub i64 %35, 1, !dbg !4553
  %and139 = and i64 %sub138, 137438953472, !dbg !4553
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4553
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4553

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4553

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub143 = sub i64 %36, 1, !dbg !4553
  %and144 = and i64 %sub143, 68719476736, !dbg !4553
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4553
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4553

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4553

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub148 = sub i64 %37, 1, !dbg !4553
  %and149 = and i64 %sub148, 34359738368, !dbg !4553
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4553
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4553

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4553

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub153 = sub i64 %38, 1, !dbg !4553
  %and154 = and i64 %sub153, 17179869184, !dbg !4553
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4553
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4553

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4553

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub158 = sub i64 %39, 1, !dbg !4553
  %and159 = and i64 %sub158, 8589934592, !dbg !4553
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4553
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4553

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4553

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub163 = sub i64 %40, 1, !dbg !4553
  %and164 = and i64 %sub163, 4294967296, !dbg !4553
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4553
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4553

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4553

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub168 = sub i64 %41, 1, !dbg !4553
  %and169 = and i64 %sub168, 2147483648, !dbg !4553
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4553
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4553

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4553

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub173 = sub i64 %42, 1, !dbg !4553
  %and174 = and i64 %sub173, 1073741824, !dbg !4553
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4553
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4553

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4553

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub178 = sub i64 %43, 1, !dbg !4553
  %and179 = and i64 %sub178, 536870912, !dbg !4553
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4553
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4553

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4553

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub183 = sub i64 %44, 1, !dbg !4553
  %and184 = and i64 %sub183, 268435456, !dbg !4553
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4553
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4553

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4553

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub188 = sub i64 %45, 1, !dbg !4553
  %and189 = and i64 %sub188, 134217728, !dbg !4553
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4553
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4553

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4553

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub193 = sub i64 %46, 1, !dbg !4553
  %and194 = and i64 %sub193, 67108864, !dbg !4553
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4553
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4553

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4553

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub198 = sub i64 %47, 1, !dbg !4553
  %and199 = and i64 %sub198, 33554432, !dbg !4553
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4553
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4553

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4553

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub203 = sub i64 %48, 1, !dbg !4553
  %and204 = and i64 %sub203, 16777216, !dbg !4553
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4553
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4553

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4553

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub208 = sub i64 %49, 1, !dbg !4553
  %and209 = and i64 %sub208, 8388608, !dbg !4553
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4553
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4553

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4553

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub213 = sub i64 %50, 1, !dbg !4553
  %and214 = and i64 %sub213, 4194304, !dbg !4553
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4553
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4553

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4553

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub218 = sub i64 %51, 1, !dbg !4553
  %and219 = and i64 %sub218, 2097152, !dbg !4553
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4553
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4553

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4553

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub223 = sub i64 %52, 1, !dbg !4553
  %and224 = and i64 %sub223, 1048576, !dbg !4553
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4553
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4553

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4553

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub228 = sub i64 %53, 1, !dbg !4553
  %and229 = and i64 %sub228, 524288, !dbg !4553
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4553
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4553

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4553

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub233 = sub i64 %54, 1, !dbg !4553
  %and234 = and i64 %sub233, 262144, !dbg !4553
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4553
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4553

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4553

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub238 = sub i64 %55, 1, !dbg !4553
  %and239 = and i64 %sub238, 131072, !dbg !4553
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4553
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4553

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4553

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub243 = sub i64 %56, 1, !dbg !4553
  %and244 = and i64 %sub243, 65536, !dbg !4553
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4553
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4553

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4553

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub248 = sub i64 %57, 1, !dbg !4553
  %and249 = and i64 %sub248, 32768, !dbg !4553
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4553
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4553

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4553

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub253 = sub i64 %58, 1, !dbg !4553
  %and254 = and i64 %sub253, 16384, !dbg !4553
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4553
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4553

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4553

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub258 = sub i64 %59, 1, !dbg !4553
  %and259 = and i64 %sub258, 8192, !dbg !4553
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4553
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4553

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4553

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub263 = sub i64 %60, 1, !dbg !4553
  %and264 = and i64 %sub263, 4096, !dbg !4553
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4553
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4553

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4553

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub268 = sub i64 %61, 1, !dbg !4553
  %and269 = and i64 %sub268, 2048, !dbg !4553
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4553
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4553

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4553

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub273 = sub i64 %62, 1, !dbg !4553
  %and274 = and i64 %sub273, 1024, !dbg !4553
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4553
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4553

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4553

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub278 = sub i64 %63, 1, !dbg !4553
  %and279 = and i64 %sub278, 512, !dbg !4553
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4553
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4553

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4553

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub283 = sub i64 %64, 1, !dbg !4553
  %and284 = and i64 %sub283, 256, !dbg !4553
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4553
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4553

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4553

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub288 = sub i64 %65, 1, !dbg !4553
  %and289 = and i64 %sub288, 128, !dbg !4553
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4553
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4553

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4553

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub293 = sub i64 %66, 1, !dbg !4553
  %and294 = and i64 %sub293, 64, !dbg !4553
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4553
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4553

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4553

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub298 = sub i64 %67, 1, !dbg !4553
  %and299 = and i64 %sub298, 32, !dbg !4553
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4553
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4553

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4553

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub303 = sub i64 %68, 1, !dbg !4553
  %and304 = and i64 %sub303, 16, !dbg !4553
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4553
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4553

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4553

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub308 = sub i64 %69, 1, !dbg !4553
  %and309 = and i64 %sub308, 8, !dbg !4553
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4553
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4553

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4553

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub313 = sub i64 %70, 1, !dbg !4553
  %and314 = and i64 %sub313, 4, !dbg !4553
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4553
  %71 = zext i1 %tobool315 to i64, !dbg !4553
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4553
  br label %cond.end, !dbg !4553

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4553
  br label %cond.end317, !dbg !4553

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4553
  br label %cond.end319, !dbg !4553

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4553
  br label %cond.end321, !dbg !4553

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4553
  br label %cond.end323, !dbg !4553

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4553
  br label %cond.end325, !dbg !4553

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4553
  br label %cond.end327, !dbg !4553

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4553
  br label %cond.end329, !dbg !4553

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4553
  br label %cond.end331, !dbg !4553

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4553
  br label %cond.end333, !dbg !4553

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4553
  br label %cond.end335, !dbg !4553

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4553
  br label %cond.end337, !dbg !4553

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4553
  br label %cond.end339, !dbg !4553

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4553
  br label %cond.end341, !dbg !4553

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4553
  br label %cond.end343, !dbg !4553

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4553
  br label %cond.end345, !dbg !4553

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4553
  br label %cond.end347, !dbg !4553

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4553
  br label %cond.end349, !dbg !4553

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4553
  br label %cond.end351, !dbg !4553

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4553
  br label %cond.end353, !dbg !4553

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4553
  br label %cond.end355, !dbg !4553

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4553
  br label %cond.end357, !dbg !4553

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4553
  br label %cond.end359, !dbg !4553

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4553
  br label %cond.end361, !dbg !4553

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4553
  br label %cond.end363, !dbg !4553

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4553
  br label %cond.end365, !dbg !4553

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4553
  br label %cond.end367, !dbg !4553

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4553
  br label %cond.end369, !dbg !4553

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4553
  br label %cond.end371, !dbg !4553

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4553
  br label %cond.end373, !dbg !4553

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4553
  br label %cond.end375, !dbg !4553

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4553
  br label %cond.end377, !dbg !4553

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4553
  br label %cond.end379, !dbg !4553

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4553
  br label %cond.end381, !dbg !4553

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4553
  br label %cond.end383, !dbg !4553

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4553
  br label %cond.end385, !dbg !4553

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4553
  br label %cond.end387, !dbg !4553

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4553
  br label %cond.end389, !dbg !4553

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4553
  br label %cond.end391, !dbg !4553

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4553
  br label %cond.end393, !dbg !4553

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4553
  br label %cond.end395, !dbg !4553

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4553
  br label %cond.end397, !dbg !4553

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4553
  br label %cond.end399, !dbg !4553

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4553
  br label %cond.end401, !dbg !4553

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4553
  br label %cond.end403, !dbg !4553

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4553
  br label %cond.end405, !dbg !4553

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4553
  br label %cond.end407, !dbg !4553

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4553
  br label %cond.end409, !dbg !4553

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4553
  br label %cond.end411, !dbg !4553

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4553
  br label %cond.end413, !dbg !4553

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4553
  br label %cond.end415, !dbg !4553

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4553
  br label %cond.end417, !dbg !4553

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4553
  br label %cond.end419, !dbg !4553

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4553
  br label %cond.end421, !dbg !4553

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4553
  br label %cond.end423, !dbg !4553

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4553
  br label %cond.end425, !dbg !4553

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4553
  br label %cond.end427, !dbg !4553

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4553
  br label %cond.end429, !dbg !4553

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4553
  br label %cond.end431, !dbg !4553

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4553
  br label %cond.end433, !dbg !4553

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4553
  br label %cond.end435, !dbg !4553

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4553
  br label %cond.end437, !dbg !4553

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4553
  br label %cond.end440, !dbg !4553

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4553

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4553
  br label %cond.end444, !dbg !4553

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4553
  %sub443 = sub i64 %72, 1, !dbg !4553
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4553
  br label %cond.end444, !dbg !4553

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4553
  %sub446 = sub i32 %cond445, 12, !dbg !4554
  %add = add i32 %sub446, 1, !dbg !4555
  store i32 %add, i32* %retval, align 4, !dbg !4556
  br label %return, !dbg !4556

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4557
  %dec = add i64 %73, -1, !dbg !4557
  store i64 %dec, i64* %size.addr, align 8, !dbg !4557
  %74 = load i64, i64* %size.addr, align 8, !dbg !4558
  %shr = lshr i64 %74, 12, !dbg !4558
  store i64 %shr, i64* %size.addr, align 8, !dbg !4558
  %75 = load i64, i64* %size.addr, align 8, !dbg !4559
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4536
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4560
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4561
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4560, !srcloc !4562
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4560
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4563
  %add.i = add i32 %79, 1, !dbg !4564
  store i32 %add.i, i32* %retval, align 4, !dbg !4565
  br label %return, !dbg !4565

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4566
  ret i32 %80, !dbg !4566
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4567 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4528, metadata !DIExpression()), !dbg !4571
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4535, metadata !DIExpression()), !dbg !4573
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4574, metadata !DIExpression()), !dbg !4575
  %0 = load i64, i64* %n.addr, align 8, !dbg !4576
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4573
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4577
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4578
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4577, !srcloc !4562
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4577
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4579
  %add.i = add i32 %4, 1, !dbg !4580
  %sub = sub i32 %add.i, 1, !dbg !4581
  ret i32 %sub, !dbg !4582
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4583 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4586, metadata !DIExpression()), !dbg !4587
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4594
  ret i8* %0, !dbg !4595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !4596 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4601
  %tobool = trunc i8 %0 to i1, !dbg !4601
  %lnot = xor i1 %tobool, true, !dbg !4601
  %lnot1 = xor i1 %lnot, true, !dbg !4601
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4601
  %conv = sext i32 %lnot.ext to i64, !dbg !4601
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4601
  ret i1 %tobool2, !dbg !4602
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !4603 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4610
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4611
  %1 = load i8*, i8** %name, align 8, !dbg !4611
  ret i8* %1, !dbg !4612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !4613 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4620, metadata !DIExpression()), !dbg !4622
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4624, metadata !DIExpression()), !dbg !4625
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4628, metadata !DIExpression()), !dbg !4630
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4632, metadata !DIExpression()), !dbg !4633
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4634, metadata !DIExpression()), !dbg !4642
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4644, metadata !DIExpression()), !dbg !4645
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4650
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4651
  %div = sdiv i64 %1, 64, !dbg !4651
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4652
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4650
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4653
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4654
  %conv.i = trunc i64 %4 to i32, !dbg !4654
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !4655
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4656
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4656
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4656
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4657
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4657
  br i1 %8, label %cond.true, label %cond.false, !dbg !4657

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4657
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4657
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4658
  %and.i = and i64 %11, 63, !dbg !4659
  %shl.i = shl i64 1, %and.i, !dbg !4660
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4661
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4662
  %shr.i = ashr i64 %13, 6, !dbg !4663
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4661
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4661
  %and1.i = and i64 %shl.i, %14, !dbg !4664
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4665
  %conv = zext i1 %cmp.i to i32, !dbg !4657
  br label %cond.end, !dbg !4657

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4657
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4657
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4666
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4667
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !4668, !srcloc !4669
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4668
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4670
  %tobool.i = trunc i8 %20 to i1, !dbg !4670
  %conv2 = zext i1 %tobool.i to i32, !dbg !4657
  br label %cond.end, !dbg !4657

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4657
  %tobool = icmp ne i32 %cond, 0, !dbg !4657
  ret i1 %tobool, !dbg !4671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !4672 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  ret i1 true, !dbg !4680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !4681 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  ret void, !dbg !4691
}

; Function Attrs: noredzone
declare dso_local void @input_inject_event(%struct.input_handle*, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!3858, !3859, !3860, !3861}
!llvm.ident = !{!3862}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_leds_init206", scope: !2, file: !3, line: 209, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !3816, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/input-leds.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !87, !94}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !81, line: 29, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "LED_OFF", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "LED_ON", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "LED_HALF", value: 127, isUnsigned: true)
!86 = !DIEnumerator(name: "LED_FULL", value: 255, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !88, line: 305, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 10, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!99 = !{!100, !101, !103, !104, !109, !140}
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !102, line: 148, baseType: !7)
!102 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 55, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !106, line: 72, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !106, line: 16, baseType: !108)
!108 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_led", file: !3, line: 38, size: 2176, elements: !111)
!111 = !{!112, !3539, !3815}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !110, file: !3, line: 39, baseType: !113, size: 2048)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !81, line: 64, size: 2048, elements: !114)
!114 = !{!115, !119, !120, !121, !122, !123, !128, !132, !136, !141, !154, !158, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3536, !3537, !3538}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !81, line: 65, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !113, file: !81, line: 66, baseType: !80, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !113, file: !81, line: 67, baseType: !80, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !81, line: 68, baseType: !100, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !113, file: !81, line: 84, baseType: !108, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !113, file: !81, line: 97, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !80}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !113, file: !81, line: 103, baseType: !129, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!100, !127, !80}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !113, file: !81, line: 106, baseType: !133, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!80, !127}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !113, file: !81, line: 116, baseType: !137, size: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!100, !127, !140, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !113, file: !81, line: 120, baseType: !142, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!100, !127, !145, !149, !100}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !81, line: 579, size: 64, elements: !147)
!147 = !{!148, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !146, file: !81, line: 580, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !150, line: 21, baseType: !151)
!150 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !7)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !146, file: !81, line: 581, baseType: !100, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !113, file: !81, line: 122, baseType: !155, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!100, !127}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !113, file: !81, line: 124, baseType: !159, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !161)
!161 = !{!162, !3165, !3166, !3169, !3170, !3221, !3312, !3313, !3314, !3315, !3316, !3325, !3430, !3443, !3446, !3447, !3451, !3453, !3454, !3455, !3459, !3465, !3466, !3469, !3473, !3476, !3477, !3478, !3479, !3480, !3512, !3513, !3514, !3517, !3520, !3521, !3522, !3523}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !160, file: !60, line: 462, baseType: !163, size: 512)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !164, line: 64, size: 512, elements: !165)
!164 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !173, !175, !235, !3016, !3155, !3160, !3161, !3162, !3163, !3164}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !164, line: 65, baseType: !116, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !163, file: !164, line: 66, baseType: !168, size: 128, offset: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !102, line: 178, size: 128, elements: !169)
!169 = !{!170, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !102, line: 179, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !102, line: 179, baseType: !171, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !164, line: 67, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !163, file: !164, line: 68, baseType: !176, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !164, line: 192, size: 704, elements: !178)
!178 = !{!179, !180, !196, !197}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !177, file: !164, line: 193, baseType: !168, size: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !177, file: !164, line: 194, baseType: !181, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !182, line: 83, baseType: !183)
!182 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !182, line: 71, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 72, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 72, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !186, file: !182, line: 73, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !182, line: 20, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !189, file: !182, line: 21, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 25, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 25, elements: !195)
!195 = !{}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !177, file: !164, line: 195, baseType: !163, size: 512, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !177, file: !164, line: 196, baseType: !198, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !164, line: 156, size: 192, elements: !201)
!201 = !{!202, !207, !212}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !200, file: !164, line: 157, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!100, !176, !174}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !164, line: 158, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!116, !176, !174}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !200, file: !164, line: 159, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!100, !176, !174, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !164, line: 148, size: 20736, elements: !219)
!219 = !{!220, !225, !229, !230, !234}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !218, file: !164, line: 149, baseType: !221, size: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 192, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!223 = !{!224}
!224 = !DISubrange(count: 3)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !218, file: !164, line: 150, baseType: !226, size: 4096, offset: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 4096, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !218, file: !164, line: 151, baseType: !100, size: 32, offset: 4288)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !218, file: !164, line: 152, baseType: !231, size: 16384, offset: 4320)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 16384, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2048)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !218, file: !164, line: 153, baseType: !100, size: 32, offset: 20704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !163, file: !164, line: 69, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !164, line: 138, size: 448, elements: !238)
!238 = !{!239, !243, !268, !270, !2976, !3006, !3010}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !237, file: !164, line: 139, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !174}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !237, file: !164, line: 140, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !247, line: 230, size: 128, elements: !248)
!247 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!248 = !{!249, !264}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !246, file: !247, line: 231, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !174, !257, !222}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !102, line: 60, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !106, line: 73, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !106, line: 15, baseType: !256)
!256 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !247, line: 30, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !247, line: 31, baseType: !116, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !258, file: !247, line: 32, baseType: !262, size: 16, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !102, line: 19, baseType: !263)
!263 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !246, file: !247, line: 232, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!253, !174, !257, !116, !104}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !237, file: !164, line: 141, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !237, file: !164, line: 142, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !247, line: 84, size: 320, elements: !275)
!275 = !{!276, !277, !281, !2973, !2974}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !247, line: 85, baseType: !116, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !274, file: !247, line: 86, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!262, !174, !257, !100}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !274, file: !247, line: 88, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!262, !174, !285, !100}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !247, line: 168, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !2968, !2969}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !286, file: !247, line: 169, baseType: !258, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !286, file: !247, line: 170, baseType: !104, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !286, file: !247, line: 171, baseType: !103, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !286, file: !247, line: 172, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!253, !295, !174, !285, !222, !470, !104}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !297)
!297 = !{!298, !316, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2951, !2952, !2961, !2962, !2963, !2964, !2965, !2966, !2967}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !296, file: !31, line: 920, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !31, line: 917, size: 128, elements: !300)
!300 = !{!301, !307}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !299, file: !31, line: 918, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !303, line: 58, size: 64, elements: !304)
!303 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !303, line: 59, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !299, file: !31, line: 919, baseType: !308, size: 128, align: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !102, line: 216, size: 128, align: 64, elements: !309)
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !102, line: 217, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !308, file: !102, line: 218, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !311}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !296, file: !31, line: 921, baseType: !317, size: 128, offset: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !318, line: 8, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !317, file: !318, line: 9, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !323, line: 18, flags: DIFlagFwdDecl)
!323 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !317, file: !318, line: 10, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !323, line: 89, size: 1536, elements: !327)
!327 = !{!328, !329, !339, !347, !348, !367, !2901, !2903, !2915, !2916, !2917, !2918, !2919, !2925, !2926, !2927}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !326, file: !323, line: 91, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !326, file: !323, line: 92, baseType: !330, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !331, line: 277, baseType: !332)
!331 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !331, line: 277, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !332, file: !331, line: 277, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !331, line: 70, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !331, line: 65, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !336, file: !331, line: 66, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !326, file: !323, line: 93, baseType: !340, size: 128, offset: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !341, line: 38, size: 128, elements: !342)
!341 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !341, line: 39, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !340, file: !341, line: 39, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !326, file: !323, line: 94, baseType: !325, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !326, file: !323, line: 95, baseType: !349, size: 128, offset: 256)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !323, line: 47, size: 128, elements: !350)
!350 = !{!351, !363}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !323, line: 48, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !323, line: 48, size: 64, elements: !353)
!353 = !{!354, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !323, line: 49, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !323, line: 49, size: 64, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !355, file: !323, line: 50, baseType: !149, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !355, file: !323, line: 50, baseType: !149, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !352, file: !323, line: 52, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !150, line: 23, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !362)
!362 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !323, line: 54, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !326, file: !323, line: 96, baseType: !368, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !370)
!370 = !{!371, !372, !373, !381, !388, !389, !537, !2612, !2613, !2614, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2877, !2885, !2886, !2887, !2897, !2898, !2899, !2900}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !369, file: !31, line: 611, baseType: !262, size: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !369, file: !31, line: 612, baseType: !263, size: 16, offset: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !369, file: !31, line: 613, baseType: !374, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !375, line: 23, baseType: !376)
!375 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 21, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !375, line: 22, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !102, line: 32, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !106, line: 49, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !369, file: !31, line: 614, baseType: !382, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !375, line: 28, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 26, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !383, file: !375, line: 27, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !102, line: 33, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !106, line: 50, baseType: !7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !369, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !369, file: !31, line: 622, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !393)
!393 = !{!394, !398, !411, !415, !421, !425, !431, !435, !439, !443, !447, !448, !454, !458, !484, !513, !517, !523, !528, !532, !533}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !392, file: !31, line: 1865, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!325, !368, !325, !7}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !392, file: !31, line: 1866, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!116, !325, !368, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !404, line: 10, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !403, file: !404, line: 11, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !103}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !403, file: !404, line: 12, baseType: !103, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !392, file: !31, line: 1867, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!100, !368, !100}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !392, file: !31, line: 1868, baseType: !416, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !368, !100}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !392, file: !31, line: 1870, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!100, !325, !222, !100}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !392, file: !31, line: 1872, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!100, !368, !325, !262, !429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !102, line: 30, baseType: !430)
!430 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !392, file: !31, line: 1873, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!100, !325, !368, !325}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !392, file: !31, line: 1874, baseType: !436, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!100, !368, !325}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !392, file: !31, line: 1875, baseType: !440, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!100, !368, !325, !116}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !392, file: !31, line: 1876, baseType: !444, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!100, !368, !325, !262}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !392, file: !31, line: 1877, baseType: !436, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !392, file: !31, line: 1878, baseType: !449, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!100, !368, !325, !262, !452}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !102, line: 16, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !102, line: 13, baseType: !149)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !392, file: !31, line: 1879, baseType: !455, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!100, !368, !325, !368, !325, !7}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !392, file: !31, line: 1881, baseType: !459, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!100, !325, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !473, !481, !482, !483}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !463, file: !31, line: 220, baseType: !7, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !463, file: !31, line: 221, baseType: !262, size: 16, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !463, file: !31, line: 222, baseType: !374, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !463, file: !31, line: 223, baseType: !382, size: 32, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !463, file: !31, line: 224, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !102, line: 46, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !106, line: 88, baseType: !472)
!472 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !463, file: !31, line: 225, baseType: !474, size: 128, offset: 192)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !475, line: 13, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !474, file: !475, line: 14, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !475, line: 8, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !152, line: 30, baseType: !472)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !474, file: !475, line: 15, baseType: !256, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !463, file: !31, line: 226, baseType: !474, size: 128, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !463, file: !31, line: 227, baseType: !474, size: 128, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !463, file: !31, line: 234, baseType: !295, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !392, file: !31, line: 1882, baseType: !485, size: 64, offset: 896)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!100, !488, !490, !149, !7}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !492, line: 22, size: 1152, elements: !493)
!492 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !495, !496, !497, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !491, file: !492, line: 23, baseType: !149, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !491, file: !492, line: 24, baseType: !262, size: 16, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !491, file: !492, line: 25, baseType: !7, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !491, file: !492, line: 26, baseType: !498, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !102, line: 104, baseType: !149)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !491, file: !492, line: 27, baseType: !360, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !491, file: !492, line: 28, baseType: !360, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !491, file: !492, line: 37, baseType: !360, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !491, file: !492, line: 38, baseType: !452, size: 32, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !491, file: !492, line: 39, baseType: !452, size: 32, offset: 352)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !491, file: !492, line: 40, baseType: !374, size: 32, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !491, file: !492, line: 41, baseType: !382, size: 32, offset: 416)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !491, file: !492, line: 42, baseType: !470, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !491, file: !492, line: 43, baseType: !474, size: 128, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !491, file: !492, line: 44, baseType: !474, size: 128, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !491, file: !492, line: 45, baseType: !474, size: 128, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !491, file: !492, line: 46, baseType: !474, size: 128, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !491, file: !492, line: 47, baseType: !360, size: 64, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !491, file: !492, line: 48, baseType: !360, size: 64, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !392, file: !31, line: 1883, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!253, !325, !222, !104}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !392, file: !31, line: 1884, baseType: !518, size: 64, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!100, !368, !521, !360, !360}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !392, file: !31, line: 1886, baseType: !524, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!100, !368, !527, !100}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !392, file: !31, line: 1887, baseType: !529, size: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!100, !368, !325, !295, !7, !262}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !392, file: !31, line: 1890, baseType: !444, size: 64, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !392, file: !31, line: 1891, baseType: !534, size: 64, offset: 1280)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!100, !368, !419, !100}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !369, file: !31, line: 623, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !596, !2219, !2301, !2384, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2400, !2404, !2405, !2408, !2409, !2412, !2413, !2414, !2455, !2482, !2483, !2484, !2485, !2486, !2487, !2490, !2492, !2499, !2500, !2502, !2503, !2504, !2563, !2564, !2579, !2580, !2581, !2582, !2583, !2586, !2587, !2588, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !539, file: !31, line: 1417, baseType: !168, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !539, file: !31, line: 1418, baseType: !452, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !539, file: !31, line: 1419, baseType: !366, size: 8, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !539, file: !31, line: 1420, baseType: !108, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !539, file: !31, line: 1421, baseType: !470, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !539, file: !31, line: 1422, baseType: !547, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !549)
!549 = !{!550, !551, !552, !559, !563, !567, !571, !575, !576, !586, !589, !590, !591, !593, !594, !595}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !31, line: 2229, baseType: !116, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !548, file: !31, line: 2230, baseType: !100, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !548, file: !31, line: 2238, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!100, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !558, line: 28, flags: DIFlagFwdDecl)
!558 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !548, file: !31, line: 2239, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !548, file: !31, line: 2240, baseType: !564, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!325, !547, !100, !116, !103}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !548, file: !31, line: 2242, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !538}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !548, file: !31, line: 2243, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !574, line: 76, flags: DIFlagFwdDecl)
!574 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !31, line: 2244, baseType: !547, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !548, file: !31, line: 2245, baseType: !577, size: 64, offset: 512)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !102, line: 182, size: 64, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !577, file: !102, line: 183, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !102, line: 186, size: 128, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !102, line: 187, baseType: !580, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !581, file: !102, line: 187, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !548, file: !31, line: 2247, baseType: !587, offset: 576)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !588, line: 187, elements: !195)
!588 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !548, file: !31, line: 2248, baseType: !587, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !548, file: !31, line: 2249, baseType: !587, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !548, file: !31, line: 2250, baseType: !592, offset: 576)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, elements: !223)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !548, file: !31, line: 2252, baseType: !587, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !548, file: !31, line: 2253, baseType: !587, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !548, file: !31, line: 2254, baseType: !587, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !539, file: !31, line: 1423, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !600)
!600 = !{!601, !605, !609, !610, !614, !620, !624, !625, !626, !630, !634, !635, !636, !637, !643, !648, !649, !656, !657, !658, !659, !2203, !2218}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !599, file: !31, line: 1936, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!368, !538}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !599, file: !31, line: 1937, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !368}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !599, file: !31, line: 1938, baseType: !606, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !599, file: !31, line: 1940, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !368, !100}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !599, file: !31, line: 1941, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!100, !368, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !599, file: !31, line: 1942, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!100, !368}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !599, file: !31, line: 1943, baseType: !606, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !599, file: !31, line: 1944, baseType: !568, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !599, file: !31, line: 1945, baseType: !627, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!100, !538, !100}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !599, file: !31, line: 1946, baseType: !631, size: 64, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!100, !538}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !599, file: !31, line: 1947, baseType: !631, size: 64, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !599, file: !31, line: 1948, baseType: !631, size: 64, offset: 704)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !599, file: !31, line: 1949, baseType: !631, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !599, file: !31, line: 1950, baseType: !638, size: 64, offset: 832)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!100, !325, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !599, file: !31, line: 1951, baseType: !644, size: 64, offset: 896)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!100, !538, !647, !222}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !599, file: !31, line: 1952, baseType: !568, size: 64, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !599, file: !31, line: 1954, baseType: !650, size: 64, offset: 1024)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!100, !653, !325}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !655, line: 539, flags: DIFlagFwdDecl)
!655 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !599, file: !31, line: 1955, baseType: !650, size: 64, offset: 1088)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !599, file: !31, line: 1956, baseType: !650, size: 64, offset: 1152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !599, file: !31, line: 1957, baseType: !650, size: 64, offset: 1216)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !599, file: !31, line: 1963, baseType: !660, size: 64, offset: 1280)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!100, !538, !663, !101}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !665, line: 68, size: 512, align: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !668, !2195, !2202}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !665, line: 69, baseType: !108, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 77, baseType: !669, size: 320, offset: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 77, size: 320, elements: !670)
!670 = !{!671, !858, !863, !891, !899, !905, !2187, !2194}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 78, baseType: !672, size: 320)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 78, size: 320, elements: !673)
!673 = !{!674, !675, !856, !857}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !672, file: !665, line: 84, baseType: !168, size: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !672, file: !665, line: 86, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !678)
!678 = !{!679, !680, !687, !688, !693, !708, !724, !725, !726, !727, !849, !850, !853, !854, !855}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !677, file: !31, line: 452, baseType: !368, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !677, file: !31, line: 453, baseType: !681, size: 128, offset: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !682, line: 292, size: 128, elements: !683)
!682 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !685, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !681, file: !682, line: 293, baseType: !181)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !681, file: !682, line: 295, baseType: !101, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !681, file: !682, line: 296, baseType: !103, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !677, file: !31, line: 454, baseType: !101, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !677, file: !31, line: 455, baseType: !689, size: 32, offset: 224)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !102, line: 168, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 166, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !690, file: !102, line: 167, baseType: !100, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !677, file: !31, line: 460, baseType: !694, size: 128, offset: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !695, line: 125, size: 128, elements: !696)
!695 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !707}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !694, file: !695, line: 126, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !695, line: 31, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !698, file: !695, line: 32, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !695, line: 24, size: 192, align: 64, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !702, file: !695, line: 25, baseType: !108, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !702, file: !695, line: 26, baseType: !701, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !702, file: !695, line: 27, baseType: !701, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !694, file: !695, line: 127, baseType: !701, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !677, file: !31, line: 461, baseType: !709, size: 256, offset: 384)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !710, line: 35, size: 256, elements: !711)
!710 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !720, !721, !723}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !710, line: 36, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !714, line: 13, baseType: !715)
!714 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !102, line: 175, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 173, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !716, file: !102, line: 174, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !150, line: 22, baseType: !479)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !709, file: !710, line: 42, baseType: !713, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !709, file: !710, line: 46, baseType: !722, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !182, line: 29, baseType: !189)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !709, file: !710, line: 47, baseType: !168, size: 128, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !677, file: !31, line: 462, baseType: !108, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !677, file: !31, line: 463, baseType: !108, size: 64, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !677, file: !31, line: 464, baseType: !108, size: 64, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !677, file: !31, line: 465, baseType: !728, size: 64, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !731)
!731 = !{!732, !736, !740, !744, !748, !752, !758, !764, !768, !773, !777, !781, !785, !813, !817, !823, !824, !825, !829, !834, !838, !845}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !730, file: !31, line: 368, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!100, !663, !618}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !730, file: !31, line: 369, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!100, !295, !663}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !730, file: !31, line: 372, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!100, !676, !618}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !730, file: !31, line: 375, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!100, !663}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !730, file: !31, line: 381, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!100, !295, !676, !171, !7}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !730, file: !31, line: 383, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !730, file: !31, line: 385, baseType: !759, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!100, !295, !676, !470, !7, !7, !762, !763}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !730, file: !31, line: 388, baseType: !765, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!100, !295, !676, !470, !7, !7, !663, !103}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !730, file: !31, line: 393, baseType: !769, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!772, !676, !772}
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !102, line: 125, baseType: !360)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !730, file: !31, line: 394, baseType: !774, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !663, !7, !7}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !730, file: !31, line: 395, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!100, !663, !101}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !730, file: !31, line: 396, baseType: !782, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !663}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !730, file: !31, line: 397, baseType: !786, size: 64, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!253, !789, !811}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !791)
!791 = !{!792, !793, !794, !798, !799, !800, !803, !804}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !790, file: !31, line: 321, baseType: !295, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !790, file: !31, line: 326, baseType: !470, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !790, file: !31, line: 327, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !789, !256, !256}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !790, file: !31, line: 328, baseType: !103, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !790, file: !31, line: 329, baseType: !100, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !790, file: !31, line: 330, baseType: !801, size: 16, offset: 288)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !150, line: 19, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !263)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !790, file: !31, line: 331, baseType: !801, size: 16, offset: 304)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !31, line: 332, baseType: !805, size: 64, offset: 320)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !31, line: 332, size: 64, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !805, file: !31, line: 333, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !805, file: !31, line: 334, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !730, file: !31, line: 402, baseType: !814, size: 64, offset: 832)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!100, !676, !663, !663, !5}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !730, file: !31, line: 404, baseType: !818, size: 64, offset: 896)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!429, !663, !821}
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !822, line: 305, baseType: !7)
!822 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !730, file: !31, line: 405, baseType: !782, size: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !730, file: !31, line: 406, baseType: !745, size: 64, offset: 1024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !730, file: !31, line: 407, baseType: !826, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!100, !663, !108, !108}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !730, file: !31, line: 409, baseType: !830, size: 64, offset: 1152)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !663, !833, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !730, file: !31, line: 410, baseType: !835, size: 64, offset: 1216)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!100, !676, !663}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !730, file: !31, line: 413, baseType: !839, size: 64, offset: 1280)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!100, !842, !295, !844}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !730, file: !31, line: 415, baseType: !846, size: 64, offset: 1344)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !295}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !31, line: 466, baseType: !108, size: 64, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !677, file: !31, line: 467, baseType: !851, size: 32, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !852, line: 8, baseType: !149)
!852 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!853 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !677, file: !31, line: 468, baseType: !181, offset: 992)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !677, file: !31, line: 469, baseType: !168, size: 128, offset: 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !677, file: !31, line: 470, baseType: !103, size: 64, offset: 1152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !672, file: !665, line: 87, baseType: !108, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !672, file: !665, line: 94, baseType: !108, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 96, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 96, size: 64, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !859, file: !665, line: 101, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !102, line: 143, baseType: !360)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 103, baseType: !864, size: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 103, size: 320, elements: !865)
!865 = !{!866, !876, !879, !880}
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !665, line: 104, baseType: !867, size: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !665, line: 104, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !867, file: !665, line: 105, baseType: !168, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !665, line: 106, baseType: !871, size: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !867, file: !665, line: 106, size: 128, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !665, line: 107, baseType: !663, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !871, file: !665, line: 109, baseType: !100, size: 32, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !871, file: !665, line: 110, baseType: !100, size: 32, offset: 96)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !864, file: !665, line: 117, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !665, line: 117, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !864, file: !665, line: 119, baseType: !103, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !665, line: 120, baseType: !881, size: 64, offset: 256)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !665, line: 120, size: 64, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !881, file: !665, line: 121, baseType: !103, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !881, file: !665, line: 122, baseType: !108, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !665, line: 123, baseType: !886, size: 32)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !665, line: 123, size: 32, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !886, file: !665, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !886, file: !665, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !886, file: !665, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 130, baseType: !892, size: 192)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 130, size: 192, elements: !893)
!893 = !{!894, !895, !896, !897, !898}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !892, file: !665, line: 131, baseType: !108, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !892, file: !665, line: 134, baseType: !366, size: 8, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !892, file: !665, line: 135, baseType: !366, size: 8, offset: 72)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !892, file: !665, line: 136, baseType: !689, size: 32, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !892, file: !665, line: 137, baseType: !7, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 139, baseType: !900, size: 256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 139, size: 256, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !900, file: !665, line: 140, baseType: !108, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !900, file: !665, line: 141, baseType: !689, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !900, file: !665, line: 143, baseType: !168, size: 128, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 145, baseType: !906, size: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 145, size: 256, elements: !907)
!907 = !{!908, !909, !911, !912, !2186}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !906, file: !665, line: 146, baseType: !108, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !906, file: !665, line: 147, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !655, line: 509, baseType: !663)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !906, file: !665, line: 148, baseType: !108, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !665, line: 149, baseType: !913, size: 64, offset: 192)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !665, line: 149, size: 64, elements: !914)
!914 = !{!915, !2185}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !913, file: !665, line: 150, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !665, line: 388, size: 7296, elements: !918)
!918 = !{!919, !2181}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !665, line: 389, baseType: !920, size: 7296)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !665, line: 389, size: 7296, elements: !921)
!921 = !{!922, !960, !961, !962, !966, !967, !968, !969, !970, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1011, !1019, !1022, !1068, !1069, !2165, !2166, !2169, !2170, !2171, !2174, !2175, !2176, !2179, !2180}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !920, file: !665, line: 390, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !665, line: 305, size: 1472, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !940, !941, !946, !947, !950, !954, !955, !956, !957, !958}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !924, file: !665, line: 308, baseType: !108, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !924, file: !665, line: 309, baseType: !108, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !924, file: !665, line: 313, baseType: !923, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !924, file: !665, line: 313, baseType: !923, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !924, file: !665, line: 315, baseType: !702, size: 192, align: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !924, file: !665, line: 323, baseType: !108, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !924, file: !665, line: 327, baseType: !916, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !924, file: !665, line: 333, baseType: !934, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !655, line: 284, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !655, line: 284, size: 64, elements: !936)
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !935, file: !655, line: 284, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !939, line: 19, baseType: !108)
!939 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !924, file: !665, line: 334, baseType: !108, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !924, file: !665, line: 343, baseType: !942, size: 256, offset: 704)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !665, line: 340, size: 256, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !942, file: !665, line: 341, baseType: !702, size: 192, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !942, file: !665, line: 342, baseType: !108, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !924, file: !665, line: 351, baseType: !168, size: 128, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !924, file: !665, line: 353, baseType: !948, size: 64, offset: 1088)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !665, line: 353, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !924, file: !665, line: 356, baseType: !951, size: 64, offset: 1152)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !665, line: 356, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !924, file: !665, line: 359, baseType: !108, size: 64, offset: 1216)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !924, file: !665, line: 361, baseType: !295, size: 64, offset: 1280)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !924, file: !665, line: 362, baseType: !103, size: 64, offset: 1344)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !924, file: !665, line: 365, baseType: !713, size: 64, offset: 1408)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !924, file: !665, line: 373, baseType: !959, offset: 1472)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !665, line: 296, elements: !195)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !920, file: !665, line: 391, baseType: !698, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !920, file: !665, line: 392, baseType: !360, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !920, file: !665, line: 394, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!108, !295, !108, !108, !108, !108}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !920, file: !665, line: 398, baseType: !108, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !920, file: !665, line: 399, baseType: !108, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !920, file: !665, line: 405, baseType: !108, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !920, file: !665, line: 406, baseType: !108, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !920, file: !665, line: 407, baseType: !971, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !655, line: 286, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !655, line: 286, size: 64, elements: !974)
!974 = !{!975}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !973, file: !655, line: 286, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !939, line: 18, baseType: !108)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !920, file: !665, line: 416, baseType: !689, size: 32, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !920, file: !665, line: 428, baseType: !689, size: 32, offset: 608)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !920, file: !665, line: 437, baseType: !689, size: 32, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !920, file: !665, line: 447, baseType: !689, size: 32, offset: 672)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !920, file: !665, line: 450, baseType: !713, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !920, file: !665, line: 452, baseType: !100, size: 32, offset: 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !920, file: !665, line: 454, baseType: !181, offset: 800)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !920, file: !665, line: 457, baseType: !709, size: 256, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !920, file: !665, line: 459, baseType: !168, size: 128, offset: 1088)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !920, file: !665, line: 466, baseType: !108, size: 64, offset: 1216)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !920, file: !665, line: 467, baseType: !108, size: 64, offset: 1280)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !920, file: !665, line: 469, baseType: !108, size: 64, offset: 1344)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !920, file: !665, line: 470, baseType: !108, size: 64, offset: 1408)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !920, file: !665, line: 471, baseType: !715, size: 64, offset: 1472)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !920, file: !665, line: 472, baseType: !108, size: 64, offset: 1536)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !920, file: !665, line: 473, baseType: !108, size: 64, offset: 1600)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !920, file: !665, line: 474, baseType: !108, size: 64, offset: 1664)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !920, file: !665, line: 475, baseType: !108, size: 64, offset: 1728)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !920, file: !665, line: 477, baseType: !181, offset: 1792)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !920, file: !665, line: 478, baseType: !108, size: 64, offset: 1792)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !920, file: !665, line: 478, baseType: !108, size: 64, offset: 1856)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !920, file: !665, line: 478, baseType: !108, size: 64, offset: 1920)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !920, file: !665, line: 478, baseType: !108, size: 64, offset: 1984)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !920, file: !665, line: 479, baseType: !108, size: 64, offset: 2048)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !920, file: !665, line: 479, baseType: !108, size: 64, offset: 2112)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !920, file: !665, line: 479, baseType: !108, size: 64, offset: 2176)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !920, file: !665, line: 480, baseType: !108, size: 64, offset: 2240)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !920, file: !665, line: 480, baseType: !108, size: 64, offset: 2304)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !920, file: !665, line: 480, baseType: !108, size: 64, offset: 2368)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !920, file: !665, line: 480, baseType: !108, size: 64, offset: 2432)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !920, file: !665, line: 482, baseType: !1008, size: 2816, offset: 2496)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 2816, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 44)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !920, file: !665, line: 488, baseType: !1012, size: 256, offset: 5312)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1013, line: 60, size: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1012, file: !1013, line: 61, baseType: !1016, size: 256)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 256, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 4)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !920, file: !665, line: 490, baseType: !1020, size: 64, offset: 5568)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !665, line: 490, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !920, file: !665, line: 493, baseType: !1023, size: 896, offset: 5632)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1024, line: 53, baseType: !1025)
!1024 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1024, line: 13, size: 896, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1033, !1034, !1041, !1042, !1062, !1063, !1064}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1025, file: !1024, line: 18, baseType: !360, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1025, file: !1024, line: 28, baseType: !715, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1025, file: !1024, line: 31, baseType: !709, size: 256, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1025, file: !1024, line: 32, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1024, line: 32, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1025, file: !1024, line: 37, baseType: !263, size: 16, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1025, file: !1024, line: 40, baseType: !1035, size: 192, offset: 512)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1036, line: 53, size: 192, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1035, file: !1036, line: 54, baseType: !713, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1035, file: !1036, line: 55, baseType: !181, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1035, file: !1036, line: 59, baseType: !168, size: 128, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1025, file: !1024, line: 41, baseType: !103, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1025, file: !1024, line: 42, baseType: !1043, size: 64, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1046, line: 13, size: 896, elements: !1047)
!1046 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1045, file: !1046, line: 14, baseType: !103, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1045, file: !1046, line: 15, baseType: !108, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1045, file: !1046, line: 17, baseType: !108, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1045, file: !1046, line: 17, baseType: !108, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1045, file: !1046, line: 19, baseType: !256, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1045, file: !1046, line: 21, baseType: !256, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1045, file: !1046, line: 22, baseType: !256, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1045, file: !1046, line: 23, baseType: !256, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1045, file: !1046, line: 24, baseType: !256, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1045, file: !1046, line: 25, baseType: !256, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1045, file: !1046, line: 26, baseType: !256, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1045, file: !1046, line: 27, baseType: !256, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1045, file: !1046, line: 28, baseType: !256, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1045, file: !1046, line: 29, baseType: !256, size: 64, offset: 832)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1025, file: !1024, line: 44, baseType: !689, size: 32, offset: 832)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1025, file: !1024, line: 50, baseType: !801, size: 16, offset: 864)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1025, file: !1024, line: 51, baseType: !1065, size: 16, offset: 880)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !150, line: 18, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !152, line: 23, baseType: !1067)
!1067 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !665, line: 495, baseType: !108, size: 64, offset: 6528)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !920, file: !665, line: 497, baseType: !1070, size: 64, offset: 6592)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !665, line: 381, size: 384, elements: !1072)
!1072 = !{!1073, !1074, !2164}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1071, file: !665, line: 382, baseType: !689, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1071, file: !665, line: 383, baseType: !1075, size: 128, offset: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !665, line: 376, size: 128, elements: !1076)
!1076 = !{!1077, !2162}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1075, file: !665, line: 377, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1080, line: 640, size: 48640, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1081 = !{!1082, !1088, !1090, !1091, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1108, !1126, !1137, !1222, !1223, !1224, !1235, !1236, !1238, !1239, !1240, !1241, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1320, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1358, !1360, !1361, !1362, !1374, !1375, !1376, !1377, !1378, !1379, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1403, !1408, !1592, !1593, !1594, !1595, !1599, !1602, !1605, !1608, !1611, !1615, !1716, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1762, !1763, !1764, !1765, !1766, !1771, !1772, !1773, !1776, !1777, !1780, !1783, !1786, !1789, !1832, !1835, !1836, !1915, !1916, !1919, !1920, !1923, !1924, !1925, !1929, !1930, !1931, !1944, !1945, !1946, !1956, !1961, !1964, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1079, file: !1080, line: 646, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1084, line: 56, size: 128, elements: !1085)
!1084 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !1084, line: 57, baseType: !108, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1083, file: !1084, line: 58, baseType: !149, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1079, file: !1080, line: 649, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1079, file: !1080, line: 657, baseType: !103, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1079, file: !1080, line: 658, baseType: !1092, size: 32, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1093, line: 113, baseType: !1094)
!1093 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1093, line: 111, size: 32, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1094, file: !1093, line: 112, baseType: !689, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !1080, line: 660, baseType: !7, size: 32, offset: 288)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1079, file: !1080, line: 661, baseType: !7, size: 32, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1079, file: !1080, line: 684, baseType: !100, size: 32, offset: 352)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1079, file: !1080, line: 686, baseType: !100, size: 32, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1079, file: !1080, line: 687, baseType: !100, size: 32, offset: 416)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1079, file: !1080, line: 688, baseType: !100, size: 32, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1079, file: !1080, line: 689, baseType: !7, size: 32, offset: 480)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1079, file: !1080, line: 691, baseType: !1105, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1080, line: 691, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1079, file: !1080, line: 692, baseType: !1109, size: 832, offset: 576)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1080, line: 451, size: 832, elements: !1110)
!1110 = !{!1111, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1109, file: !1080, line: 453, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1080, line: 325, size: 128, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1112, file: !1080, line: 326, baseType: !108, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1112, file: !1080, line: 327, baseType: !149, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1109, file: !1080, line: 454, baseType: !702, size: 192, align: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1109, file: !1080, line: 455, baseType: !168, size: 128, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1109, file: !1080, line: 456, baseType: !7, size: 32, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1109, file: !1080, line: 458, baseType: !360, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1109, file: !1080, line: 459, baseType: !360, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1109, file: !1080, line: 460, baseType: !360, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1109, file: !1080, line: 461, baseType: !360, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1109, file: !1080, line: 463, baseType: !360, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1109, file: !1080, line: 465, baseType: !1125, offset: 832)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1080, line: 415, elements: !195)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1079, file: !1080, line: 693, baseType: !1127, size: 384, offset: 1408)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1080, line: 489, size: 384, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1127, file: !1080, line: 490, baseType: !168, size: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1127, file: !1080, line: 491, baseType: !108, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1127, file: !1080, line: 492, baseType: !108, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1127, file: !1080, line: 493, baseType: !7, size: 32, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1127, file: !1080, line: 494, baseType: !263, size: 16, offset: 288)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1127, file: !1080, line: 495, baseType: !263, size: 16, offset: 304)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1127, file: !1080, line: 497, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1079, file: !1080, line: 697, baseType: !1138, size: 1792, offset: 1792)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1080, line: 507, size: 1792, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1219, !1220}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1138, file: !1080, line: 508, baseType: !702, size: 192, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1138, file: !1080, line: 515, baseType: !360, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1138, file: !1080, line: 516, baseType: !360, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1138, file: !1080, line: 517, baseType: !360, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1138, file: !1080, line: 518, baseType: !360, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1138, file: !1080, line: 519, baseType: !360, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1138, file: !1080, line: 526, baseType: !719, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1138, file: !1080, line: 527, baseType: !360, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !1080, line: 528, baseType: !7, size: 32, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1138, file: !1080, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1138, file: !1080, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1138, file: !1080, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1138, file: !1080, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1138, file: !1080, line: 563, baseType: !1154, size: 512, offset: 704)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1155)
!1155 = !{!1156, !1164, !1165, !1170, !1213, !1216, !1217, !1218}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1154, file: !14, line: 119, baseType: !1157, size: 256)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1158, line: 9, size: 256, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1157, file: !1158, line: 10, baseType: !702, size: 192, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1157, file: !1158, line: 11, baseType: !1162, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1163, line: 29, baseType: !719)
!1163 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1154, file: !14, line: 120, baseType: !1162, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1154, file: !14, line: 121, baseType: !1166, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!13, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1154, file: !14, line: 122, baseType: !1171, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1173)
!1173 = !{!1174, !1194, !1195, !1198, !1203, !1204, !1208, !1212}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1172, file: !14, line: 160, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !14, line: 215, baseType: !722)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1176, file: !14, line: 216, baseType: !7, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1176, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1176, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1176, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1176, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1176, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1176, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1176, file: !14, line: 233, baseType: !1162, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1176, file: !14, line: 234, baseType: !1169, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1176, file: !14, line: 235, baseType: !1162, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1176, file: !14, line: 236, baseType: !1169, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1176, file: !14, line: 237, baseType: !1191, size: 4096, offset: 512)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 4096, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 8)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1172, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1172, file: !14, line: 162, baseType: !1196, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !102, line: 27, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !106, line: 96, baseType: !100)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1172, file: !14, line: 163, baseType: !1199, size: 32, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !331, line: 276, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !331, line: 276, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1200, file: !331, line: 276, baseType: !335, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1172, file: !14, line: 164, baseType: !1169, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1172, file: !14, line: 165, baseType: !1205, size: 128, offset: 256)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1158, line: 14, size: 128, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1205, file: !1158, line: 15, baseType: !694, size: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1172, file: !14, line: 166, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1162}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1172, file: !14, line: 167, baseType: !1162, size: 64, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1154, file: !14, line: 123, baseType: !1214, size: 8, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !150, line: 17, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !366)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1154, file: !14, line: 124, baseType: !1214, size: 8, offset: 456)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1154, file: !14, line: 125, baseType: !1214, size: 8, offset: 464)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1154, file: !14, line: 126, baseType: !1214, size: 8, offset: 472)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1138, file: !1080, line: 572, baseType: !1154, size: 512, offset: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1138, file: !1080, line: 580, baseType: !1221, size: 64, offset: 1728)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1079, file: !1080, line: 721, baseType: !7, size: 32, offset: 3584)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1079, file: !1080, line: 722, baseType: !100, size: 32, offset: 3616)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1079, file: !1080, line: 723, baseType: !1225, size: 64, offset: 3648)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1228, line: 17, baseType: !1229)
!1228 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1228, line: 17, size: 64, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1229, file: !1228, line: 17, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 1)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1079, file: !1080, line: 724, baseType: !1227, size: 64, offset: 3712)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1079, file: !1080, line: 749, baseType: !1237, offset: 3776)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1080, line: 290, elements: !195)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1079, file: !1080, line: 751, baseType: !168, size: 128, offset: 3776)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1079, file: !1080, line: 757, baseType: !916, size: 64, offset: 3904)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1079, file: !1080, line: 758, baseType: !916, size: 64, offset: 3968)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1079, file: !1080, line: 761, baseType: !1242, size: 320, offset: 4032)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1013, line: 34, size: 320, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1242, file: !1013, line: 35, baseType: !360, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1242, file: !1013, line: 36, baseType: !1246, size: 256, offset: 64)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 256, elements: !1017)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1079, file: !1080, line: 766, baseType: !100, size: 32, offset: 4352)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1079, file: !1080, line: 767, baseType: !100, size: 32, offset: 4384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1079, file: !1080, line: 768, baseType: !100, size: 32, offset: 4416)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1079, file: !1080, line: 770, baseType: !100, size: 32, offset: 4448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1079, file: !1080, line: 772, baseType: !108, size: 64, offset: 4480)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1079, file: !1080, line: 775, baseType: !7, size: 32, offset: 4544)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1079, file: !1080, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1079, file: !1080, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1079, file: !1080, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1079, file: !1080, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1079, file: !1080, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1079, file: !1080, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1079, file: !1080, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1079, file: !1080, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1079, file: !1080, line: 831, baseType: !108, size: 64, offset: 4672)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1079, file: !1080, line: 833, baseType: !1263, size: 384, offset: 4736)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1264)
!1264 = !{!1265, !1270}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1263, file: !19, line: 26, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!256, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !19, line: 27, baseType: !1271, size: 320, offset: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !19, line: 27, size: 320, elements: !1272)
!1272 = !{!1273, !1283, !1310}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1271, file: !19, line: 36, baseType: !1274, size: 320)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1271, file: !19, line: 29, size: 320, elements: !1275)
!1275 = !{!1276, !1278, !1279, !1280, !1281, !1282}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1274, file: !19, line: 30, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1274, file: !19, line: 31, baseType: !149, size: 32, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !19, line: 32, baseType: !149, size: 32, offset: 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1274, file: !19, line: 33, baseType: !149, size: 32, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1274, file: !19, line: 34, baseType: !360, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1274, file: !19, line: 35, baseType: !1277, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1271, file: !19, line: 46, baseType: !1284, size: 192)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1271, file: !19, line: 38, size: 192, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1309}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1284, file: !19, line: 39, baseType: !1196, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1284, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !19, line: 41, baseType: !1289, size: 64, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !19, line: 41, size: 64, elements: !1290)
!1290 = !{!1291, !1299}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1289, file: !19, line: 42, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1294, line: 7, size: 128, elements: !1295)
!1294 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1293, file: !1294, line: 8, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !106, line: 93, baseType: !472)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1293, file: !1294, line: 9, baseType: !472, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1289, file: !19, line: 43, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1302, line: 7, size: 64, elements: !1303)
!1302 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1308}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1301, file: !1302, line: 8, baseType: !1305, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1302, line: 5, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !150, line: 20, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !152, line: 26, baseType: !100)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1301, file: !1302, line: 9, baseType: !1306, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1284, file: !19, line: 45, baseType: !360, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1271, file: !19, line: 54, baseType: !1311, size: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1271, file: !19, line: 48, size: 256, elements: !1312)
!1312 = !{!1313, !1316, !1317, !1318, !1319}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1311, file: !19, line: 49, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1311, file: !19, line: 50, baseType: !100, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1311, file: !19, line: 51, baseType: !100, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1311, file: !19, line: 52, baseType: !108, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1311, file: !19, line: 53, baseType: !108, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1079, file: !1080, line: 835, baseType: !1321, size: 32, offset: 5120)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !102, line: 22, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !106, line: 28, baseType: !100)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1079, file: !1080, line: 836, baseType: !1321, size: 32, offset: 5152)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1079, file: !1080, line: 840, baseType: !108, size: 64, offset: 5184)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1079, file: !1080, line: 849, baseType: !1078, size: 64, offset: 5248)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1079, file: !1080, line: 852, baseType: !1078, size: 64, offset: 5312)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1079, file: !1080, line: 857, baseType: !168, size: 128, offset: 5376)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1079, file: !1080, line: 858, baseType: !168, size: 128, offset: 5504)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1079, file: !1080, line: 859, baseType: !1078, size: 64, offset: 5632)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1079, file: !1080, line: 867, baseType: !168, size: 128, offset: 5696)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1079, file: !1080, line: 868, baseType: !168, size: 128, offset: 5824)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1079, file: !1080, line: 871, baseType: !1333, size: 64, offset: 5952)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1341, !1342, !1349, !1350}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1334, file: !40, line: 61, baseType: !1092, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1334, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !40, line: 63, baseType: !181, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1334, file: !40, line: 65, baseType: !1340, size: 256, offset: 64)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 256, elements: !1017)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1334, file: !40, line: 66, baseType: !577, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1334, file: !40, line: 68, baseType: !1343, size: 128, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1344, line: 40, baseType: !1345)
!1344 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1344, line: 36, size: 128, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1345, file: !1344, line: 37, baseType: !181)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1345, file: !1344, line: 38, baseType: !168, size: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1334, file: !40, line: 69, baseType: !308, size: 128, align: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1334, file: !40, line: 70, baseType: !1351, size: 128, offset: 640)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 128, elements: !1233)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1352, file: !40, line: 55, baseType: !100, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1352, file: !40, line: 56, baseType: !1356, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1079, file: !1080, line: 872, baseType: !1359, size: 512, offset: 6016)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 512, elements: !1017)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1079, file: !1080, line: 873, baseType: !168, size: 128, offset: 6528)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1079, file: !1080, line: 874, baseType: !168, size: 128, offset: 6656)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1079, file: !1080, line: 876, baseType: !1363, size: 64, offset: 6784)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1365, line: 26, size: 192, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1364, file: !1365, line: 27, baseType: !7, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1364, file: !1365, line: 28, baseType: !1369, size: 128, offset: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1370, line: 43, size: 128, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !1370, line: 44, baseType: !722)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1369, file: !1370, line: 45, baseType: !168, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1079, file: !1080, line: 879, baseType: !647, size: 64, offset: 6848)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1079, file: !1080, line: 882, baseType: !647, size: 64, offset: 6912)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1079, file: !1080, line: 884, baseType: !360, size: 64, offset: 6976)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1079, file: !1080, line: 885, baseType: !360, size: 64, offset: 7040)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1079, file: !1080, line: 890, baseType: !360, size: 64, offset: 7104)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1079, file: !1080, line: 891, baseType: !1380, size: 128, offset: 7168)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1080, line: 242, size: 128, elements: !1381)
!1381 = !{!1382, !1383, !1384}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1380, file: !1080, line: 244, baseType: !360, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1380, file: !1080, line: 245, baseType: !360, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1380, file: !1080, line: 246, baseType: !722, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1079, file: !1080, line: 900, baseType: !108, size: 64, offset: 7296)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1079, file: !1080, line: 901, baseType: !108, size: 64, offset: 7360)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1079, file: !1080, line: 904, baseType: !360, size: 64, offset: 7424)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1079, file: !1080, line: 907, baseType: !360, size: 64, offset: 7488)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1079, file: !1080, line: 910, baseType: !108, size: 64, offset: 7552)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1079, file: !1080, line: 911, baseType: !108, size: 64, offset: 7616)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1079, file: !1080, line: 914, baseType: !1392, size: 640, offset: 7680)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1393, line: 123, size: 640, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1394 = !{!1395, !1401, !1402}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1392, file: !1393, line: 124, baseType: !1396, size: 576)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1397, size: 576, elements: !223)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1393, line: 108, size: 192, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1397, file: !1393, line: 109, baseType: !360, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1397, file: !1393, line: 110, baseType: !1205, size: 128, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1392, file: !1393, line: 125, baseType: !7, size: 32, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1392, file: !1393, line: 126, baseType: !7, size: 32, offset: 608)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1079, file: !1080, line: 917, baseType: !1404, size: 192, offset: 8320)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1393, line: 134, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1404, file: !1393, line: 135, baseType: !308, size: 128, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1404, file: !1393, line: 136, baseType: !7, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1079, file: !1080, line: 923, baseType: !1409, size: 64, offset: 8512)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1412, line: 111, size: 1280, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1433, !1434, !1435, !1436, !1437, !1438, !1545, !1546, !1547, !1548, !1574, !1577, !1587}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1411, file: !1412, line: 112, baseType: !689, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1411, file: !1412, line: 120, baseType: !374, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1411, file: !1412, line: 121, baseType: !382, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1411, file: !1412, line: 122, baseType: !374, size: 32, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1411, file: !1412, line: 123, baseType: !382, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1411, file: !1412, line: 124, baseType: !374, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1411, file: !1412, line: 125, baseType: !382, size: 32, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1411, file: !1412, line: 126, baseType: !374, size: 32, offset: 224)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1411, file: !1412, line: 127, baseType: !382, size: 32, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1411, file: !1412, line: 128, baseType: !7, size: 32, offset: 288)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1411, file: !1412, line: 129, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1426, line: 26, baseType: !1427)
!1426 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1426, line: 24, size: 64, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1427, file: !1426, line: 25, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 2)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1411, file: !1412, line: 130, baseType: !1425, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1411, file: !1412, line: 131, baseType: !1425, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1411, file: !1412, line: 132, baseType: !1425, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1411, file: !1412, line: 133, baseType: !1425, size: 64, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1411, file: !1412, line: 135, baseType: !366, size: 8, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1411, file: !1412, line: 137, baseType: !1439, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1441, line: 189, size: 1664, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1444, !1447, !1452, !1453, !1456, !1457, !1462, !1463, !1464, !1465, !1467, !1468, !1469, !1470, !1471, !1509, !1530}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1440, file: !1441, line: 190, baseType: !1092, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1440, file: !1441, line: 191, baseType: !1445, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1441, line: 28, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !102, line: 98, baseType: !1306)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 192, baseType: !1448, size: 192, offset: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 192, size: 192, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1448, file: !1441, line: 193, baseType: !168, size: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1448, file: !1441, line: 194, baseType: !702, size: 192, align: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1440, file: !1441, line: 199, baseType: !709, size: 256, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1440, file: !1441, line: 200, baseType: !1454, size: 64, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1441, line: 200, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1440, file: !1441, line: 201, baseType: !103, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 202, baseType: !1458, size: 64, offset: 640)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 202, size: 64, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1458, file: !1441, line: 203, baseType: !478, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1458, file: !1441, line: 204, baseType: !478, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1440, file: !1441, line: 206, baseType: !478, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1440, file: !1441, line: 207, baseType: !374, size: 32, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1440, file: !1441, line: 208, baseType: !382, size: 32, offset: 800)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1440, file: !1441, line: 209, baseType: !1466, size: 32, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1441, line: 31, baseType: !498)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1440, file: !1441, line: 210, baseType: !263, size: 16, offset: 864)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1440, file: !1441, line: 211, baseType: !263, size: 16, offset: 880)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1440, file: !1441, line: 215, baseType: !1067, size: 16, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1441, line: 222, baseType: !108, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 239, baseType: !1472, size: 320, offset: 1024)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 239, size: 320, elements: !1473)
!1473 = !{!1474, !1501}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1472, file: !1441, line: 240, baseType: !1475, size: 320)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1441, line: 108, size: 320, elements: !1476)
!1476 = !{!1477, !1478, !1490, !1493, !1500}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1475, file: !1441, line: 110, baseType: !108, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1441, line: 111, baseType: !1479, size: 64, offset: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1475, file: !1441, line: 111, size: 64, elements: !1480)
!1480 = !{!1481, !1489}
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1441, line: 112, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !1441, line: 112, size: 64, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1482, file: !1441, line: 114, baseType: !801, size: 16)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1482, file: !1441, line: 115, baseType: !1486, size: 48, offset: 16)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 48, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 6)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1479, file: !1441, line: 121, baseType: !108, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1475, file: !1441, line: 123, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1441, line: 96, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1475, file: !1441, line: 124, baseType: !1494, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1441, line: 102, size: 192, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1495, file: !1441, line: 103, baseType: !308, size: 128, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1495, file: !1441, line: 104, baseType: !1092, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1495, file: !1441, line: 105, baseType: !429, size: 8, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1475, file: !1441, line: 125, baseType: !116, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1441, line: 241, baseType: !1502, size: 320)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1441, line: 241, size: 320, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1502, file: !1441, line: 242, baseType: !108, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1502, file: !1441, line: 243, baseType: !108, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1502, file: !1441, line: 244, baseType: !1491, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1502, file: !1441, line: 245, baseType: !1494, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1502, file: !1441, line: 246, baseType: !222, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 254, baseType: !1510, size: 256, offset: 1344)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 254, size: 256, elements: !1511)
!1511 = !{!1512, !1518}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1510, file: !1441, line: 255, baseType: !1513, size: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1441, line: 128, size: 256, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1513, file: !1441, line: 129, baseType: !103, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1513, file: !1441, line: 130, baseType: !1517, size: 256)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !1017)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1441, line: 256, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !1441, line: 256, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1519, file: !1441, line: 258, baseType: !168, size: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1519, file: !1441, line: 259, baseType: !1523, size: 128, offset: 128)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1524, line: 22, size: 128, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1529}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1523, file: !1524, line: 23, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1524, line: 23, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1523, file: !1524, line: 24, baseType: !108, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1440, file: !1441, line: 274, baseType: !1531, size: 64, offset: 1600)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1441, line: 170, size: 192, elements: !1533)
!1533 = !{!1534, !1543, !1544}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1532, file: !1441, line: 171, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1441, line: 165, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!100, !1439, !1539, !1541, !1439}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1532, file: !1441, line: 172, baseType: !1439, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1532, file: !1441, line: 173, baseType: !1491, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1411, file: !1412, line: 138, baseType: !1439, size: 64, offset: 768)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1411, file: !1412, line: 139, baseType: !1439, size: 64, offset: 832)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1411, file: !1412, line: 140, baseType: !1439, size: 64, offset: 896)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1411, file: !1412, line: 145, baseType: !1549, size: 64, offset: 960)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1551, line: 13, size: 896, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1550, file: !1551, line: 14, baseType: !1092, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1550, file: !1551, line: 15, baseType: !689, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1550, file: !1551, line: 16, baseType: !689, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1550, file: !1551, line: 21, baseType: !713, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1550, file: !1551, line: 27, baseType: !108, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1550, file: !1551, line: 28, baseType: !108, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1550, file: !1551, line: 29, baseType: !713, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1550, file: !1551, line: 32, baseType: !581, size: 128, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1550, file: !1551, line: 33, baseType: !374, size: 32, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1550, file: !1551, line: 37, baseType: !713, size: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1550, file: !1551, line: 44, baseType: !1564, size: 256, offset: 640)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1565, line: 15, size: 256, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1564, file: !1565, line: 16, baseType: !722)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1564, file: !1565, line: 18, baseType: !100, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1564, file: !1565, line: 19, baseType: !100, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1564, file: !1565, line: 20, baseType: !100, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1564, file: !1565, line: 21, baseType: !100, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1564, file: !1565, line: 22, baseType: !108, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1564, file: !1565, line: 23, baseType: !108, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1411, file: !1412, line: 146, baseType: !1575, size: 64, offset: 1024)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !665, line: 516, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1411, file: !1412, line: 147, baseType: !1578, size: 64, offset: 1088)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1412, line: 25, size: 64, elements: !1580)
!1580 = !{!1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1579, file: !1412, line: 26, baseType: !689, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1579, file: !1412, line: 27, baseType: !100, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1579, file: !1412, line: 28, baseType: !1584, offset: 64)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, elements: !1585)
!1585 = !{!1586}
!1586 = !DISubrange(count: 0)
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 149, baseType: !1588, size: 128, offset: 1152)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 149, size: 128, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1588, file: !1412, line: 150, baseType: !100, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1588, file: !1412, line: 151, baseType: !308, size: 128, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1079, file: !1080, line: 926, baseType: !1409, size: 64, offset: 8576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1079, file: !1080, line: 929, baseType: !1409, size: 64, offset: 8640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1079, file: !1080, line: 933, baseType: !1439, size: 64, offset: 8704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1079, file: !1080, line: 943, baseType: !1596, size: 128, offset: 8768)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !1597)
!1597 = !{!1598}
!1598 = !DISubrange(count: 16)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1079, file: !1080, line: 945, baseType: !1600, size: 64, offset: 8896)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1080, line: 49, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1079, file: !1080, line: 956, baseType: !1603, size: 64, offset: 8960)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1080, line: 45, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1079, file: !1080, line: 959, baseType: !1606, size: 64, offset: 9024)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1080, line: 959, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1079, file: !1080, line: 962, baseType: !1609, size: 64, offset: 9088)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1080, line: 66, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1079, file: !1080, line: 966, baseType: !1612, size: 64, offset: 9152)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1614, line: 35, flags: DIFlagFwdDecl)
!1614 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1079, file: !1080, line: 969, baseType: !1616, size: 64, offset: 9216)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1618, line: 82, size: 7296, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1655, !1664, !1665, !1667, !1668, !1669, !1672, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1702, !1703, !1710, !1711, !1712, !1713, !1714, !1715}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1617, file: !1618, line: 83, baseType: !1092, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1617, file: !1618, line: 84, baseType: !689, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1617, file: !1618, line: 85, baseType: !100, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1617, file: !1618, line: 86, baseType: !168, size: 128, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1617, file: !1618, line: 88, baseType: !1343, size: 128, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1617, file: !1618, line: 91, baseType: !1078, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1617, file: !1618, line: 94, baseType: !1627, size: 192, offset: 448)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1628, line: 30, size: 192, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1627, file: !1628, line: 31, baseType: !168, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1627, file: !1628, line: 32, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1633, line: 25, baseType: !1634)
!1633 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 23, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1634, file: !1633, line: 24, baseType: !1232, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1617, file: !1618, line: 97, baseType: !577, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1617, file: !1618, line: 100, baseType: !100, size: 32, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1617, file: !1618, line: 106, baseType: !100, size: 32, offset: 736)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1617, file: !1618, line: 107, baseType: !1078, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1617, file: !1618, line: 110, baseType: !100, size: 32, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 111, baseType: !7, size: 32, offset: 864)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1617, file: !1618, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1617, file: !1618, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1617, file: !1618, line: 128, baseType: !100, size: 32, offset: 928)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1617, file: !1618, line: 129, baseType: !168, size: 128, offset: 960)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1617, file: !1618, line: 132, baseType: !1154, size: 512, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1617, file: !1618, line: 133, baseType: !1162, size: 64, offset: 1600)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1617, file: !1618, line: 140, baseType: !1650, size: 256, offset: 1664)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 256, elements: !1431)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1618, line: 38, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1651, file: !1618, line: 39, baseType: !360, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1651, file: !1618, line: 40, baseType: !360, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1617, file: !1618, line: 146, baseType: !1656, size: 192, offset: 1920)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1618, line: 66, size: 192, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1656, file: !1618, line: 67, baseType: !1659, size: 192)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1618, line: 47, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1659, file: !1618, line: 48, baseType: !715, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1659, file: !1618, line: 49, baseType: !715, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1659, file: !1618, line: 50, baseType: !715, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1617, file: !1618, line: 150, baseType: !1392, size: 640, offset: 2112)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1617, file: !1618, line: 153, baseType: !1666, size: 256, offset: 2752)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1333, size: 256, elements: !1017)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1617, file: !1618, line: 159, baseType: !1333, size: 64, offset: 3008)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1617, file: !1618, line: 162, baseType: !100, size: 32, offset: 3072)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1617, file: !1618, line: 164, baseType: !1670, size: 64, offset: 3136)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1618, line: 164, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1617, file: !1618, line: 175, baseType: !1673, size: 32, offset: 3200)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !331, line: 805, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 798, size: 32, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1674, file: !331, line: 803, baseType: !330, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1674, file: !331, line: 804, baseType: !181, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1617, file: !1618, line: 176, baseType: !360, size: 64, offset: 3264)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1617, file: !1618, line: 176, baseType: !360, size: 64, offset: 3328)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1617, file: !1618, line: 176, baseType: !360, size: 64, offset: 3392)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1617, file: !1618, line: 176, baseType: !360, size: 64, offset: 3456)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1617, file: !1618, line: 177, baseType: !360, size: 64, offset: 3520)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1617, file: !1618, line: 178, baseType: !360, size: 64, offset: 3584)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1617, file: !1618, line: 179, baseType: !1380, size: 128, offset: 3648)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1617, file: !1618, line: 180, baseType: !108, size: 64, offset: 3776)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1617, file: !1618, line: 180, baseType: !108, size: 64, offset: 3840)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1617, file: !1618, line: 180, baseType: !108, size: 64, offset: 3904)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1617, file: !1618, line: 180, baseType: !108, size: 64, offset: 3968)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1617, file: !1618, line: 181, baseType: !108, size: 64, offset: 4032)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1617, file: !1618, line: 181, baseType: !108, size: 64, offset: 4096)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1617, file: !1618, line: 181, baseType: !108, size: 64, offset: 4160)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1617, file: !1618, line: 181, baseType: !108, size: 64, offset: 4224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1617, file: !1618, line: 182, baseType: !108, size: 64, offset: 4288)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1617, file: !1618, line: 182, baseType: !108, size: 64, offset: 4352)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1617, file: !1618, line: 182, baseType: !108, size: 64, offset: 4416)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1617, file: !1618, line: 182, baseType: !108, size: 64, offset: 4480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1617, file: !1618, line: 183, baseType: !108, size: 64, offset: 4544)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1617, file: !1618, line: 183, baseType: !108, size: 64, offset: 4608)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1617, file: !1618, line: 184, baseType: !1700, offset: 4672)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1701, line: 12, elements: !195)
!1701 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1617, file: !1618, line: 192, baseType: !362, size: 64, offset: 4672)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1617, file: !1618, line: 203, baseType: !1704, size: 2048, offset: 4736)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 2048, elements: !1597)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1706, line: 43, size: 128, elements: !1707)
!1706 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1705, file: !1706, line: 44, baseType: !107, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1705, file: !1706, line: 45, baseType: !107, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1617, file: !1618, line: 220, baseType: !429, size: 8, offset: 6784)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1617, file: !1618, line: 221, baseType: !1067, size: 16, offset: 6800)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1617, file: !1618, line: 222, baseType: !1067, size: 16, offset: 6816)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1617, file: !1618, line: 224, baseType: !916, size: 64, offset: 6848)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1617, file: !1618, line: 227, baseType: !1035, size: 192, offset: 6912)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1617, file: !1618, line: 233, baseType: !1035, size: 192, offset: 7104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1079, file: !1080, line: 970, baseType: !1717, size: 64, offset: 9280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1618, line: 20, size: 16576, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1718, file: !1618, line: 21, baseType: !181)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1718, file: !1618, line: 22, baseType: !1092, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1718, file: !1618, line: 23, baseType: !1343, size: 128, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1718, file: !1618, line: 24, baseType: !1724, size: 16384, offset: 192)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, size: 16384, elements: !227)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1628, line: 49, size: 256, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1725, file: !1628, line: 50, baseType: !1728, size: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1628, line: 35, size: 256, elements: !1729)
!1729 = !{!1730, !1737, !1738, !1744}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1728, file: !1628, line: 37, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1732, line: 19, baseType: !1733)
!1732 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1732, line: 18, baseType: !1735)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !100}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1728, file: !1628, line: 38, baseType: !108, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1728, file: !1628, line: 44, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1732, line: 22, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1732, line: 21, baseType: !1742)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1728, file: !1628, line: 46, baseType: !1632, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1079, file: !1080, line: 971, baseType: !1632, size: 64, offset: 9344)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1079, file: !1080, line: 972, baseType: !1632, size: 64, offset: 9408)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1079, file: !1080, line: 974, baseType: !1632, size: 64, offset: 9472)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1079, file: !1080, line: 975, baseType: !1627, size: 192, offset: 9536)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1079, file: !1080, line: 976, baseType: !108, size: 64, offset: 9728)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1079, file: !1080, line: 977, baseType: !104, size: 64, offset: 9792)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1079, file: !1080, line: 978, baseType: !7, size: 32, offset: 9856)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1079, file: !1080, line: 980, baseType: !311, size: 64, offset: 9920)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1079, file: !1080, line: 989, baseType: !1754, size: 128, offset: 9984)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1755, line: 35, size: 128, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1754, file: !1755, line: 36, baseType: !100, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1754, file: !1755, line: 37, baseType: !689, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1754, file: !1755, line: 38, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1755, line: 23, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1079, file: !1080, line: 992, baseType: !360, size: 64, offset: 10112)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1079, file: !1080, line: 993, baseType: !360, size: 64, offset: 10176)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1079, file: !1080, line: 996, baseType: !181, offset: 10240)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1079, file: !1080, line: 999, baseType: !722, offset: 10240)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1079, file: !1080, line: 1001, baseType: !1767, size: 64, offset: 10240)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1080, line: 636, size: 64, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1767, file: !1080, line: 637, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1079, file: !1080, line: 1005, baseType: !694, size: 128, offset: 10304)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1079, file: !1080, line: 1007, baseType: !1078, size: 64, offset: 10432)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1079, file: !1080, line: 1009, baseType: !1774, size: 64, offset: 10496)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1080, line: 1009, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1079, file: !1080, line: 1043, baseType: !103, size: 64, offset: 10560)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1079, file: !1080, line: 1046, baseType: !1778, size: 64, offset: 10624)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1080, line: 41, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1079, file: !1080, line: 1050, baseType: !1781, size: 64, offset: 10688)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1080, line: 42, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1079, file: !1080, line: 1054, baseType: !1784, size: 64, offset: 10752)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1080, line: 55, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1079, file: !1080, line: 1056, baseType: !1787, size: 64, offset: 10816)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1080, line: 40, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1079, file: !1080, line: 1058, baseType: !1790, size: 64, offset: 10880)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1792, line: 99, size: 704, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1819, !1820}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1791, file: !1792, line: 100, baseType: !713, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1791, file: !1792, line: 101, baseType: !689, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1791, file: !1792, line: 102, baseType: !689, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1791, file: !1792, line: 105, baseType: !181, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1791, file: !1792, line: 107, baseType: !263, size: 16, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1791, file: !1792, line: 109, baseType: !681, size: 128, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1791, file: !1792, line: 110, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1792, line: 73, size: 448, elements: !1803)
!1803 = !{!1804, !1807, !1808, !1813, !1818}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1802, file: !1792, line: 74, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1792, line: 74, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1802, file: !1792, line: 75, baseType: !1790, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1792, line: 83, baseType: !1809, size: 128, offset: 128)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1792, line: 83, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1809, file: !1792, line: 84, baseType: !168, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1809, file: !1792, line: 85, baseType: !877, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1792, line: 87, baseType: !1814, size: 128, offset: 256)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1792, line: 87, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1814, file: !1792, line: 88, baseType: !581, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1814, file: !1792, line: 89, baseType: !308, size: 128, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !1792, line: 92, baseType: !7, size: 32, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1791, file: !1792, line: 111, baseType: !577, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1791, file: !1792, line: 113, baseType: !1821, size: 256, offset: 448)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1822, line: 102, size: 256, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1821, file: !1822, line: 103, baseType: !713, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1821, file: !1822, line: 104, baseType: !168, size: 128, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1821, file: !1822, line: 105, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1822, line: 21, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1079, file: !1080, line: 1061, baseType: !1833, size: 64, offset: 10944)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1080, line: 43, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1079, file: !1080, line: 1064, baseType: !108, size: 64, offset: 11008)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1079, file: !1080, line: 1065, baseType: !1837, size: 64, offset: 11072)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1628, line: 14, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1628, line: 12, size: 384, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !1628, line: 13, baseType: !1842, size: 384)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !1628, line: 13, size: 384, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1842, file: !1628, line: 13, baseType: !100, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1842, file: !1628, line: 13, baseType: !100, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1842, file: !1628, line: 13, baseType: !100, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1842, file: !1628, line: 13, baseType: !1848, size: 256, offset: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1849, line: 32, size: 256, elements: !1850)
!1849 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1856, !1869, !1875, !1884, !1904, !1909}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1848, file: !1849, line: 37, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 34, size: 64, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1852, file: !1849, line: 35, baseType: !1322, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1852, file: !1849, line: 36, baseType: !380, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1848, file: !1849, line: 45, baseType: !1857, size: 192)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 40, size: 192, elements: !1858)
!1858 = !{!1859, !1861, !1862, !1868}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1857, file: !1849, line: 41, baseType: !1860, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !106, line: 95, baseType: !100)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1857, file: !1849, line: 42, baseType: !100, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1857, file: !1849, line: 43, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1849, line: 11, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1849, line: 8, size: 64, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1864, file: !1849, line: 9, baseType: !100, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1864, file: !1849, line: 10, baseType: !103, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1857, file: !1849, line: 44, baseType: !100, size: 32, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1848, file: !1849, line: 52, baseType: !1870, size: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 48, size: 128, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1870, file: !1849, line: 49, baseType: !1322, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1870, file: !1849, line: 50, baseType: !380, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1870, file: !1849, line: 51, baseType: !1863, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1848, file: !1849, line: 61, baseType: !1876, size: 256)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 55, size: 256, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1883}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1876, file: !1849, line: 56, baseType: !1322, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1876, file: !1849, line: 57, baseType: !380, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1876, file: !1849, line: 58, baseType: !100, size: 32, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1876, file: !1849, line: 59, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !106, line: 94, baseType: !255)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1876, file: !1849, line: 60, baseType: !1882, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1848, file: !1849, line: 95, baseType: !1885, size: 256)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 64, size: 256, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1885, file: !1849, line: 65, baseType: !103, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1849, line: 77, baseType: !1889, size: 192, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1849, line: 77, size: 192, elements: !1890)
!1890 = !{!1891, !1892, !1899}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1889, file: !1849, line: 82, baseType: !1067, size: 16)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1889, file: !1849, line: 88, baseType: !1893, size: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !1849, line: 84, size: 192, elements: !1894)
!1894 = !{!1895, !1897, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1893, file: !1849, line: 85, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !1192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1893, file: !1849, line: 86, baseType: !103, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1893, file: !1849, line: 87, baseType: !103, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1889, file: !1849, line: 93, baseType: !1900, size: 96)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !1849, line: 90, size: 96, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1900, file: !1849, line: 91, baseType: !1896, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1900, file: !1849, line: 92, baseType: !151, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1848, file: !1849, line: 101, baseType: !1905, size: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 98, size: 128, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1905, file: !1849, line: 99, baseType: !256, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1905, file: !1849, line: 100, baseType: !100, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1848, file: !1849, line: 108, baseType: !1910, size: 128)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1849, line: 104, size: 128, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1910, file: !1849, line: 105, baseType: !103, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1910, file: !1849, line: 106, baseType: !100, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1910, file: !1849, line: 107, baseType: !7, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1079, file: !1080, line: 1067, baseType: !1700, offset: 11136)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1079, file: !1080, line: 1099, baseType: !1917, size: 64, offset: 11136)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1080, line: 56, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1079, file: !1080, line: 1103, baseType: !168, size: 128, offset: 11200)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1079, file: !1080, line: 1104, baseType: !1921, size: 64, offset: 11328)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1080, line: 46, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1079, file: !1080, line: 1105, baseType: !1035, size: 192, offset: 11392)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1079, file: !1080, line: 1106, baseType: !7, size: 32, offset: 11584)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1079, file: !1080, line: 1109, baseType: !1926, size: 128, offset: 11648)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1927, size: 128, elements: !1431)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1080, line: 51, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1079, file: !1080, line: 1110, baseType: !1035, size: 192, offset: 11776)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1079, file: !1080, line: 1111, baseType: !168, size: 128, offset: 11968)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1079, file: !1080, line: 1173, baseType: !1932, size: 64, offset: 12096)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1934, line: 62, size: 256, align: 256, elements: !1935)
!1934 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937, !1938, !1943}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1933, file: !1934, line: 75, baseType: !151, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1933, file: !1934, line: 90, baseType: !151, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1933, file: !1934, line: 124, baseType: !1939, size: 64, offset: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1934, line: 109, size: 64, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1939, file: !1934, line: 110, baseType: !361, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1939, file: !1934, line: 112, baseType: !361, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !1934, line: 144, baseType: !151, size: 32, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1079, file: !1080, line: 1174, baseType: !149, size: 32, offset: 12160)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1079, file: !1080, line: 1179, baseType: !108, size: 64, offset: 12224)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1079, file: !1080, line: 1182, baseType: !1947, size: 128, offset: 12288)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1013, line: 76, size: 128, elements: !1948)
!1948 = !{!1949, !1954, !1955}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1947, file: !1013, line: 85, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1951, line: 7, size: 64, elements: !1952)
!1951 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1950, file: !1951, line: 12, baseType: !1229, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1947, file: !1013, line: 88, baseType: !429, size: 8, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1947, file: !1013, line: 95, baseType: !429, size: 8, offset: 72)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !1080, line: 1184, baseType: !1957, size: 128, offset: 12416)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !1080, line: 1184, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1957, file: !1080, line: 1185, baseType: !1092, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1957, file: !1080, line: 1186, baseType: !308, size: 128, align: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1079, file: !1080, line: 1190, baseType: !1962, size: 64, offset: 12544)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1080, line: 53, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1079, file: !1080, line: 1192, baseType: !1965, size: 128, offset: 12608)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1013, line: 64, size: 128, elements: !1966)
!1966 = !{!1967, !1968, !1969}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1965, file: !1013, line: 65, baseType: !663, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1965, file: !1013, line: 67, baseType: !151, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1965, file: !1013, line: 68, baseType: !151, size: 32, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1079, file: !1080, line: 1206, baseType: !100, size: 32, offset: 12736)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1079, file: !1080, line: 1207, baseType: !100, size: 32, offset: 12768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1079, file: !1080, line: 1209, baseType: !108, size: 64, offset: 12800)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1079, file: !1080, line: 1219, baseType: !360, size: 64, offset: 12864)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1079, file: !1080, line: 1220, baseType: !360, size: 64, offset: 12928)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1079, file: !1080, line: 1317, baseType: !100, size: 32, offset: 12992)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1079, file: !1080, line: 1319, baseType: !1078, size: 64, offset: 13056)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1079, file: !1080, line: 1322, baseType: !1978, size: 64, offset: 13120)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1980, line: 9, flags: DIFlagFwdDecl)
!1980 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1079, file: !1080, line: 1326, baseType: !1092, size: 32, offset: 13184)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1079, file: !1080, line: 1342, baseType: !103, size: 64, offset: 13248)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1079, file: !1080, line: 1343, baseType: !361, size: 64, offset: 13312)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1079, file: !1080, line: 1344, baseType: !360, size: 64, offset: 13376)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1079, file: !1080, line: 1345, baseType: !361, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1079, file: !1080, line: 1346, baseType: !361, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1079, file: !1080, line: 1347, baseType: !361, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1079, file: !1080, line: 1348, baseType: !308, size: 128, align: 64, offset: 13504)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1079, file: !1080, line: 1358, baseType: !1990, size: 34816, offset: 13824)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1991, line: 485, size: 34816, elements: !1992)
!1991 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !{!1993, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2022, !2023, !2024, !2025, !2026, !2027, !2030, !2031, !2032}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1990, file: !1991, line: 487, baseType: !1994, size: 192)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 192, elements: !223)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1996, line: 16, size: 64, elements: !1997)
!1996 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1995, file: !1996, line: 17, baseType: !801, size: 16)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1995, file: !1996, line: 18, baseType: !801, size: 16, offset: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1995, file: !1996, line: 19, baseType: !801, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1995, file: !1996, line: 19, baseType: !801, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1995, file: !1996, line: 19, baseType: !801, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1995, file: !1996, line: 19, baseType: !801, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1995, file: !1996, line: 19, baseType: !801, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1995, file: !1996, line: 20, baseType: !801, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1995, file: !1996, line: 20, baseType: !801, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1995, file: !1996, line: 20, baseType: !801, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1995, file: !1996, line: 20, baseType: !801, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1995, file: !1996, line: 20, baseType: !801, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1995, file: !1996, line: 20, baseType: !801, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1990, file: !1991, line: 491, baseType: !108, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1990, file: !1991, line: 495, baseType: !263, size: 16, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1990, file: !1991, line: 496, baseType: !263, size: 16, offset: 272)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1990, file: !1991, line: 497, baseType: !263, size: 16, offset: 288)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1990, file: !1991, line: 498, baseType: !263, size: 16, offset: 304)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1990, file: !1991, line: 502, baseType: !108, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1990, file: !1991, line: 503, baseType: !108, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1990, file: !1991, line: 514, baseType: !2019, size: 256, offset: 448)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 256, elements: !1017)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1991, line: 483, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1990, file: !1991, line: 516, baseType: !108, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1990, file: !1991, line: 518, baseType: !108, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1990, file: !1991, line: 520, baseType: !108, size: 64, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1990, file: !1991, line: 521, baseType: !108, size: 64, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1990, file: !1991, line: 522, baseType: !108, size: 64, offset: 960)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1990, file: !1991, line: 528, baseType: !2028, size: 64, offset: 1024)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1991, line: 10, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1990, file: !1991, line: 535, baseType: !108, size: 64, offset: 1088)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1990, file: !1991, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1990, file: !1991, line: 540, baseType: !2033, size: 33280, offset: 1536)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2034, line: 317, size: 33280, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2033, file: !2034, line: 330, baseType: !7, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2033, file: !2034, line: 337, baseType: !108, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2033, file: !2034, line: 348, baseType: !2039, size: 32768, offset: 512)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2034, line: 304, size: 32768, elements: !2040)
!2040 = !{!2041, !2056, !2095, !2145, !2158}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2039, file: !2034, line: 305, baseType: !2042, size: 896)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2034, line: 12, size: 896, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2055}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2042, file: !2034, line: 13, baseType: !149, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2042, file: !2034, line: 14, baseType: !149, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2042, file: !2034, line: 15, baseType: !149, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2042, file: !2034, line: 16, baseType: !149, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2042, file: !2034, line: 17, baseType: !149, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2042, file: !2034, line: 18, baseType: !149, size: 32, offset: 160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2042, file: !2034, line: 19, baseType: !149, size: 32, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2042, file: !2034, line: 22, baseType: !2052, size: 640, offset: 224)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !2053)
!2053 = !{!2054}
!2054 = !DISubrange(count: 20)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2042, file: !2034, line: 25, baseType: !149, size: 32, offset: 864)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2039, file: !2034, line: 306, baseType: !2057, size: 4096, align: 128)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2034, line: 34, size: 4096, align: 128, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2078, !2079, !2080, !2084, !2086, !2090}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2057, file: !2034, line: 35, baseType: !801, size: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2057, file: !2034, line: 36, baseType: !801, size: 16, offset: 16)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2057, file: !2034, line: 37, baseType: !801, size: 16, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2057, file: !2034, line: 38, baseType: !801, size: 16, offset: 48)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2034, line: 39, baseType: !2064, size: 128, offset: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2034, line: 39, size: 128, elements: !2065)
!2065 = !{!2066, !2071}
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2034, line: 40, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2034, line: 40, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2067, file: !2034, line: 41, baseType: !360, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2067, file: !2034, line: 42, baseType: !360, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2034, line: 44, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2034, line: 44, size: 128, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2072, file: !2034, line: 45, baseType: !149, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2072, file: !2034, line: 46, baseType: !149, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2072, file: !2034, line: 47, baseType: !149, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2072, file: !2034, line: 48, baseType: !149, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2057, file: !2034, line: 51, baseType: !149, size: 32, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2057, file: !2034, line: 52, baseType: !149, size: 32, offset: 224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2057, file: !2034, line: 55, baseType: !2081, size: 1024, offset: 256)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !2082)
!2082 = !{!2083}
!2083 = !DISubrange(count: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2057, file: !2034, line: 58, baseType: !2085, size: 2048, offset: 1280)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2048, elements: !227)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2057, file: !2034, line: 60, baseType: !2087, size: 384, offset: 3328)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 384, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 12)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2034, line: 62, baseType: !2091, size: 384, offset: 3712)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2034, line: 62, size: 384, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2091, file: !2034, line: 63, baseType: !2087, size: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2091, file: !2034, line: 64, baseType: !2087, size: 384)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2039, file: !2034, line: 307, baseType: !2096, size: 1088)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2034, line: 79, size: 1088, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2144}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2096, file: !2034, line: 80, baseType: !149, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2096, file: !2034, line: 81, baseType: !149, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2096, file: !2034, line: 82, baseType: !149, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2096, file: !2034, line: 83, baseType: !149, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2096, file: !2034, line: 84, baseType: !149, size: 32, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2096, file: !2034, line: 85, baseType: !149, size: 32, offset: 160)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2096, file: !2034, line: 86, baseType: !149, size: 32, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2096, file: !2034, line: 88, baseType: !2052, size: 640, offset: 224)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2096, file: !2034, line: 89, baseType: !1214, size: 8, offset: 864)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2096, file: !2034, line: 90, baseType: !1214, size: 8, offset: 872)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2096, file: !2034, line: 91, baseType: !1214, size: 8, offset: 880)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2096, file: !2034, line: 92, baseType: !1214, size: 8, offset: 888)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2096, file: !2034, line: 93, baseType: !1214, size: 8, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2096, file: !2034, line: 94, baseType: !1214, size: 8, offset: 904)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2096, file: !2034, line: 95, baseType: !2113, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2115, line: 11, size: 128, elements: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2114, file: !2115, line: 12, baseType: !256, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2114, file: !2115, line: 13, baseType: !2119, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2121, line: 56, size: 1344, elements: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2120, file: !2121, line: 61, baseType: !108, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2120, file: !2121, line: 62, baseType: !108, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2120, file: !2121, line: 63, baseType: !108, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2120, file: !2121, line: 64, baseType: !108, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2120, file: !2121, line: 65, baseType: !108, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2120, file: !2121, line: 66, baseType: !108, size: 64, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2120, file: !2121, line: 68, baseType: !108, size: 64, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2120, file: !2121, line: 69, baseType: !108, size: 64, offset: 448)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2120, file: !2121, line: 70, baseType: !108, size: 64, offset: 512)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2120, file: !2121, line: 71, baseType: !108, size: 64, offset: 576)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2120, file: !2121, line: 72, baseType: !108, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2120, file: !2121, line: 73, baseType: !108, size: 64, offset: 704)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2120, file: !2121, line: 74, baseType: !108, size: 64, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2120, file: !2121, line: 75, baseType: !108, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2120, file: !2121, line: 76, baseType: !108, size: 64, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2120, file: !2121, line: 81, baseType: !108, size: 64, offset: 960)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2120, file: !2121, line: 83, baseType: !108, size: 64, offset: 1024)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2120, file: !2121, line: 84, baseType: !108, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 85, baseType: !108, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2120, file: !2121, line: 86, baseType: !108, size: 64, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2120, file: !2121, line: 87, baseType: !108, size: 64, offset: 1280)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2096, file: !2034, line: 96, baseType: !149, size: 32, offset: 1024)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2039, file: !2034, line: 308, baseType: !2146, size: 4608, align: 512)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2034, line: 289, size: 4608, align: 512, elements: !2147)
!2147 = !{!2148, !2149, !2156}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2146, file: !2034, line: 290, baseType: !2057, size: 4096, align: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2146, file: !2034, line: 291, baseType: !2150, size: 512, offset: 4096)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2034, line: 268, size: 512, elements: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2150, file: !2034, line: 269, baseType: !360, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2150, file: !2034, line: 270, baseType: !360, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2150, file: !2034, line: 271, baseType: !2155, size: 384, offset: 128)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 384, elements: !1487)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2146, file: !2034, line: 292, baseType: !2157, offset: 4608)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1214, elements: !1585)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2039, file: !2034, line: 309, baseType: !2159, size: 32768)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1214, size: 32768, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 4096)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1075, file: !665, line: 378, baseType: !2163, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1071, file: !665, line: 384, baseType: !1364, size: 192, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !920, file: !665, line: 500, baseType: !181, offset: 6656)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !920, file: !665, line: 501, baseType: !2167, size: 64, offset: 6656)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !665, line: 387, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !920, file: !665, line: 516, baseType: !1575, size: 64, offset: 6720)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !920, file: !665, line: 519, baseType: !295, size: 64, offset: 6784)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !920, file: !665, line: 521, baseType: !2172, size: 64, offset: 6848)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !665, line: 521, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !920, file: !665, line: 545, baseType: !689, size: 32, offset: 6912)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !920, file: !665, line: 548, baseType: !429, size: 8, offset: 6944)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !920, file: !665, line: 550, baseType: !2177, offset: 6952)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2178, line: 142, elements: !195)
!2178 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !920, file: !665, line: 554, baseType: !1821, size: 256, offset: 6976)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !920, file: !665, line: 557, baseType: !149, size: 32, offset: 7232)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !917, file: !665, line: 565, baseType: !2182, offset: 7296)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, elements: !2183)
!2183 = !{!2184}
!2184 = !DISubrange(count: -1)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !913, file: !665, line: 151, baseType: !689, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !906, file: !665, line: 156, baseType: !181, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !665, line: 159, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !665, line: 159, size: 128, elements: !2189)
!2189 = !{!2190, !2193}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2188, file: !665, line: 161, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !665, line: 161, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2188, file: !665, line: 162, baseType: !103, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !669, file: !665, line: 176, baseType: !308, size: 128, align: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 179, baseType: !2196, size: 32, offset: 384)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 179, size: 32, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2196, file: !665, line: 184, baseType: !689, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2196, file: !665, line: 192, baseType: !7, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2196, file: !665, line: 194, baseType: !7, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2196, file: !665, line: 195, baseType: !100, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !664, file: !665, line: 199, baseType: !689, size: 32, offset: 416)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !599, file: !31, line: 1964, baseType: !2204, size: 64, offset: 1344)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!256, !538, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2209, line: 12, size: 256, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !{!2211, !2212, !2213, !2214, !2215}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2208, file: !2209, line: 13, baseType: !101, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2208, file: !2209, line: 16, baseType: !100, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2208, file: !2209, line: 23, baseType: !108, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2208, file: !2209, line: 30, baseType: !108, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2208, file: !2209, line: 33, baseType: !2216, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !665, line: 27, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !599, file: !31, line: 1966, baseType: !2204, size: 64, offset: 1408)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !539, file: !31, line: 1424, baseType: !2220, size: 64, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2223)
!2223 = !{!2224, !2270, !2274, !2278, !2279, !2280, !2281, !2282, !2287, !2292, !2296}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2222, file: !25, line: 323, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!100, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2255, !2256, !2257}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2229, file: !25, line: 295, baseType: !581, size: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2229, file: !25, line: 296, baseType: !168, size: 128, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2229, file: !25, line: 297, baseType: !168, size: 128, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2229, file: !25, line: 298, baseType: !168, size: 128, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2229, file: !25, line: 299, baseType: !1035, size: 192, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2229, file: !25, line: 300, baseType: !181, offset: 704)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2229, file: !25, line: 301, baseType: !689, size: 32, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2229, file: !25, line: 302, baseType: !538, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2229, file: !25, line: 303, baseType: !2240, size: 64, offset: 832)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2241)
!2241 = !{!2242, !2254}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !25, line: 69, baseType: !2243, size: 32)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2240, file: !25, line: 69, size: 32, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2243, file: !25, line: 70, baseType: !374, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2243, file: !25, line: 71, baseType: !382, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2243, file: !25, line: 72, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2249, line: 24, baseType: !2250)
!2249 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2249, line: 22, size: 32, elements: !2251)
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2250, file: !2249, line: 23, baseType: !2253, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2249, line: 20, baseType: !380)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2229, file: !25, line: 304, baseType: !470, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2229, file: !25, line: 305, baseType: !108, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2229, file: !25, line: 306, baseType: !2258, size: 576, offset: 1024)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2259)
!2259 = !{!2260, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2258, file: !25, line: 206, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !472)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2258, file: !25, line: 207, baseType: !2261, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2258, file: !25, line: 208, baseType: !2261, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2258, file: !25, line: 209, baseType: !2261, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2258, file: !25, line: 210, baseType: !2261, size: 64, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2258, file: !25, line: 211, baseType: !2261, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2258, file: !25, line: 212, baseType: !2261, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2258, file: !25, line: 213, baseType: !478, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2258, file: !25, line: 214, baseType: !478, size: 64, offset: 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2222, file: !25, line: 324, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2228, !538, !100}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2222, file: !25, line: 325, baseType: !2275, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !2228}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2222, file: !25, line: 326, baseType: !2225, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2222, file: !25, line: 327, baseType: !2225, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2222, file: !25, line: 328, baseType: !2225, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2222, file: !25, line: 329, baseType: !627, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2222, file: !25, line: 332, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2286, !368}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2222, file: !25, line: 333, baseType: !2288, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!100, !368, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2222, file: !25, line: 335, baseType: !2293, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!100, !368, !2286}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2222, file: !25, line: 337, baseType: !2297, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!100, !538, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !539, file: !31, line: 1425, baseType: !2302, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2305)
!2305 = !{!2306, !2310, !2311, !2315, !2316, !2317, !2332, !2355, !2359, !2360, !2383}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2304, file: !25, line: 429, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!100, !538, !100, !100, !488}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2304, file: !25, line: 430, baseType: !627, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2304, file: !25, line: 431, baseType: !2312, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!100, !538, !7}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2304, file: !25, line: 432, baseType: !2312, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2304, file: !25, line: 433, baseType: !627, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2304, file: !25, line: 434, baseType: !2318, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!100, !538, !100, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2322, file: !25, line: 416, baseType: !100, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2322, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2322, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2322, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2322, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2322, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2322, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2322, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2304, file: !25, line: 435, baseType: !2333, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!100, !538, !2240, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2337, file: !25, line: 344, baseType: !100, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2337, file: !25, line: 345, baseType: !360, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2337, file: !25, line: 346, baseType: !360, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2337, file: !25, line: 347, baseType: !360, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2337, file: !25, line: 348, baseType: !360, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2337, file: !25, line: 349, baseType: !360, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2337, file: !25, line: 350, baseType: !360, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2337, file: !25, line: 351, baseType: !719, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2337, file: !25, line: 353, baseType: !719, size: 64, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2337, file: !25, line: 354, baseType: !100, size: 32, offset: 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2337, file: !25, line: 355, baseType: !100, size: 32, offset: 608)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2337, file: !25, line: 356, baseType: !360, size: 64, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2337, file: !25, line: 357, baseType: !360, size: 64, offset: 704)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2337, file: !25, line: 358, baseType: !360, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2337, file: !25, line: 359, baseType: !719, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2337, file: !25, line: 360, baseType: !100, size: 32, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2304, file: !25, line: 436, baseType: !2356, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!100, !538, !2300, !2336}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2304, file: !25, line: 438, baseType: !2333, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2304, file: !25, line: 439, baseType: !2361, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!100, !538, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2365, file: !25, line: 410, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2365, file: !25, line: 411, baseType: !2369, size: 1344, offset: 64)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2370, size: 1344, elements: !223)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2382}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2370, file: !25, line: 396, baseType: !7, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2370, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2370, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2370, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2370, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2370, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2370, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2370, file: !25, line: 404, baseType: !362, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2370, file: !25, line: 405, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !102, line: 126, baseType: !360)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2370, file: !25, line: 406, baseType: !2381, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2304, file: !25, line: 440, baseType: !2312, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !539, file: !31, line: 1426, baseType: !2385, size: 64, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !539, file: !31, line: 1427, baseType: !108, size: 64, offset: 640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !539, file: !31, line: 1428, baseType: !108, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !539, file: !31, line: 1429, baseType: !108, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !539, file: !31, line: 1430, baseType: !325, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !539, file: !31, line: 1431, baseType: !709, size: 256, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !539, file: !31, line: 1432, baseType: !100, size: 32, offset: 1152)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !539, file: !31, line: 1433, baseType: !689, size: 32, offset: 1184)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !539, file: !31, line: 1437, baseType: !2396, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !539, file: !31, line: 1449, baseType: !2401, size: 64, offset: 1280)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !341, line: 34, size: 64, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2401, file: !341, line: 35, baseType: !344, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !539, file: !31, line: 1450, baseType: !168, size: 128, offset: 1344)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !539, file: !31, line: 1451, baseType: !2406, size: 64, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !539, file: !31, line: 1452, baseType: !1787, size: 64, offset: 1536)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !539, file: !31, line: 1453, baseType: !2410, size: 64, offset: 1600)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !539, file: !31, line: 1454, baseType: !581, size: 128, offset: 1664)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !539, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !539, file: !31, line: 1456, baseType: !2415, size: 2432, offset: 1856)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2421, !2453}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !25, line: 519, baseType: !7, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2415, file: !25, line: 520, baseType: !709, size: 256, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2415, file: !25, line: 521, baseType: !2420, size: 192, offset: 320)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !223)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2415, file: !25, line: 522, baseType: !2422, size: 1728, offset: 512)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 1728, elements: !223)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2424)
!2424 = !{!2425, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2423, file: !25, line: 223, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2428)
!2428 = !{!2429, !2430, !2443, !2444}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2427, file: !25, line: 444, baseType: !100, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2427, file: !25, line: 445, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2433, file: !25, line: 311, baseType: !627, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2433, file: !25, line: 312, baseType: !627, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2433, file: !25, line: 313, baseType: !627, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2433, file: !25, line: 314, baseType: !627, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2433, file: !25, line: 315, baseType: !2225, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2433, file: !25, line: 316, baseType: !2225, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2433, file: !25, line: 317, baseType: !2225, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2433, file: !25, line: 318, baseType: !2297, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2427, file: !25, line: 446, baseType: !572, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2427, file: !25, line: 447, baseType: !2426, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2423, file: !25, line: 224, baseType: !100, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2423, file: !25, line: 226, baseType: !168, size: 128, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2423, file: !25, line: 227, baseType: !108, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2423, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2423, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2423, file: !25, line: 230, baseType: !2261, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2423, file: !25, line: 231, baseType: !2261, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2423, file: !25, line: 232, baseType: !103, size: 64, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2415, file: !25, line: 523, baseType: !2454, size: 192, offset: 2240)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 192, elements: !223)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !539, file: !31, line: 1458, baseType: !2456, size: 2112, offset: 4288)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2457)
!2457 = !{!2458, !2459, !2460}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2456, file: !31, line: 1411, baseType: !100, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2456, file: !31, line: 1412, baseType: !1343, size: 128, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2456, file: !31, line: 1413, baseType: !2461, size: 1920, offset: 192)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2462, size: 1920, elements: !223)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2463, line: 12, size: 640, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2473, !2475, !2480, !2481}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2462, file: !2463, line: 13, baseType: !2466, size: 320)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2467, line: 17, size: 320, elements: !2468)
!2467 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2466, file: !2467, line: 18, baseType: !100, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2466, file: !2467, line: 19, baseType: !100, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2466, file: !2467, line: 20, baseType: !1343, size: 128, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2466, file: !2467, line: 22, baseType: !308, size: 128, align: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2462, file: !2463, line: 14, baseType: !2474, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2462, file: !2463, line: 15, baseType: !2476, size: 64, offset: 384)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2477, line: 16, size: 64, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2476, file: !2477, line: 17, baseType: !1078, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2462, file: !2463, line: 16, baseType: !1343, size: 128, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2462, file: !2463, line: 17, baseType: !689, size: 32, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !539, file: !31, line: 1465, baseType: !103, size: 64, offset: 6400)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !539, file: !31, line: 1468, baseType: !149, size: 32, offset: 6464)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !539, file: !31, line: 1470, baseType: !478, size: 64, offset: 6528)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !539, file: !31, line: 1471, baseType: !478, size: 64, offset: 6592)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !539, file: !31, line: 1473, baseType: !151, size: 32, offset: 6656)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !539, file: !31, line: 1474, baseType: !2488, size: 64, offset: 6720)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !539, file: !31, line: 1477, baseType: !2491, size: 256, offset: 6784)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !2082)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !539, file: !31, line: 1478, baseType: !2493, size: 128, offset: 7040)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2494, line: 18, baseType: !2495)
!2494 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2494, line: 16, size: 128, elements: !2496)
!2496 = !{!2497}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2495, file: !2494, line: 17, baseType: !2498, size: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 128, elements: !1597)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !539, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !539, file: !31, line: 1481, baseType: !2501, size: 32, offset: 7200)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !102, line: 150, baseType: !7)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !539, file: !31, line: 1487, baseType: !1035, size: 192, offset: 7232)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !539, file: !31, line: 1493, baseType: !116, size: 64, offset: 7424)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !539, file: !31, line: 1495, baseType: !2505, size: 64, offset: 7488)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !323, line: 135, size: 1024, align: 512, elements: !2508)
!2508 = !{!2509, !2513, !2514, !2521, !2527, !2531, !2535, !2539, !2540, !2544, !2548, !2553, !2557}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2507, file: !323, line: 136, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!100, !325, !7}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2507, file: !323, line: 137, baseType: !2510, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2507, file: !323, line: 138, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!100, !2518, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2507, file: !323, line: 139, baseType: !2522, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!100, !2518, !7, !116, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2507, file: !323, line: 141, baseType: !2528, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!100, !2518}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2507, file: !323, line: 142, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!100, !325}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2507, file: !323, line: 143, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !325}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2507, file: !323, line: 144, baseType: !2536, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2507, file: !323, line: 145, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !325, !368}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2507, file: !323, line: 146, baseType: !2545, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!222, !325, !222, !100}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2507, file: !323, line: 147, baseType: !2549, size: 64, offset: 640)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!321, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2507, file: !323, line: 148, baseType: !2554, size: 64, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!100, !488, !429}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2507, file: !323, line: 149, baseType: !2558, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!325, !325, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !539, file: !31, line: 1500, baseType: !100, size: 32, offset: 7552)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !539, file: !31, line: 1502, baseType: !2565, size: 448, offset: 7616)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2209, line: 60, size: 448, elements: !2566)
!2566 = !{!2567, !2572, !2573, !2574, !2575, !2576, !2577}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2565, file: !2209, line: 61, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!108, !2571, !2207}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2565, file: !2209, line: 63, baseType: !2568, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2565, file: !2209, line: 66, baseType: !256, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2565, file: !2209, line: 67, baseType: !100, size: 32, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2565, file: !2209, line: 68, baseType: !7, size: 32, offset: 224)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2565, file: !2209, line: 71, baseType: !168, size: 128, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2565, file: !2209, line: 77, baseType: !2578, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !539, file: !31, line: 1505, baseType: !713, size: 64, offset: 8064)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !539, file: !31, line: 1508, baseType: !713, size: 64, offset: 8128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !539, file: !31, line: 1511, baseType: !100, size: 32, offset: 8192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !539, file: !31, line: 1514, baseType: !851, size: 32, offset: 8224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !539, file: !31, line: 1517, baseType: !2584, size: 64, offset: 8256)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1822, line: 18, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !539, file: !31, line: 1518, baseType: !577, size: 64, offset: 8320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !539, file: !31, line: 1525, baseType: !1575, size: 64, offset: 8384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !539, file: !31, line: 1532, baseType: !2589, size: 64, offset: 8448)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2590, line: 52, size: 64, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2589, file: !2590, line: 53, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2590, line: 40, size: 256, elements: !2595)
!2595 = !{!2596, !2597, !2602}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2594, file: !2590, line: 42, baseType: !181)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2594, file: !2590, line: 44, baseType: !2598, size: 192)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2590, line: 28, size: 192, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2598, file: !2590, line: 29, baseType: !168, size: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2598, file: !2590, line: 31, baseType: !256, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2594, file: !2590, line: 49, baseType: !256, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !539, file: !31, line: 1533, baseType: !2589, size: 64, offset: 8512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !539, file: !31, line: 1534, baseType: !308, size: 128, align: 64, offset: 8576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !539, file: !31, line: 1535, baseType: !1821, size: 256, offset: 8704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !539, file: !31, line: 1537, baseType: !1035, size: 192, offset: 8960)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !539, file: !31, line: 1542, baseType: !100, size: 32, offset: 9152)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !539, file: !31, line: 1545, baseType: !181, offset: 9184)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !539, file: !31, line: 1546, baseType: !168, size: 128, offset: 9216)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !539, file: !31, line: 1548, baseType: !181, offset: 9344)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !539, file: !31, line: 1549, baseType: !168, size: 128, offset: 9344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !369, file: !31, line: 624, baseType: !676, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !369, file: !31, line: 631, baseType: !108, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !31, line: 639, baseType: !2615, size: 32, offset: 384)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !31, line: 639, size: 32, elements: !2616)
!2616 = !{!2617, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2615, file: !31, line: 640, baseType: !2618, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2615, file: !31, line: 641, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !369, file: !31, line: 643, baseType: !452, size: 32, offset: 416)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !369, file: !31, line: 644, baseType: !470, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !369, file: !31, line: 645, baseType: !474, size: 128, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !369, file: !31, line: 646, baseType: !474, size: 128, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !369, file: !31, line: 647, baseType: !474, size: 128, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !369, file: !31, line: 648, baseType: !181, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !369, file: !31, line: 649, baseType: !263, size: 16, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !369, file: !31, line: 650, baseType: !1214, size: 8, offset: 912)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !369, file: !31, line: 651, baseType: !1214, size: 8, offset: 920)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !369, file: !31, line: 652, baseType: !2381, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !369, file: !31, line: 659, baseType: !108, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !369, file: !31, line: 660, baseType: !709, size: 256, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !369, file: !31, line: 662, baseType: !108, size: 64, offset: 1344)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !369, file: !31, line: 663, baseType: !108, size: 64, offset: 1408)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !369, file: !31, line: 665, baseType: !581, size: 128, offset: 1472)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !369, file: !31, line: 666, baseType: !168, size: 128, offset: 1600)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !369, file: !31, line: 675, baseType: !168, size: 128, offset: 1728)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !369, file: !31, line: 676, baseType: !168, size: 128, offset: 1856)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !369, file: !31, line: 677, baseType: !168, size: 128, offset: 1984)
!2639 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !31, line: 678, baseType: !2640, size: 128, offset: 2112)
!2640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !31, line: 678, size: 128, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2640, file: !31, line: 679, baseType: !577, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2640, file: !31, line: 680, baseType: !308, size: 128, align: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !369, file: !31, line: 682, baseType: !715, size: 64, offset: 2240)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !369, file: !31, line: 683, baseType: !715, size: 64, offset: 2304)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !369, file: !31, line: 684, baseType: !689, size: 32, offset: 2368)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !369, file: !31, line: 685, baseType: !689, size: 32, offset: 2400)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !369, file: !31, line: 686, baseType: !689, size: 32, offset: 2432)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !369, file: !31, line: 688, baseType: !689, size: 32, offset: 2464)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !31, line: 690, baseType: !2651, size: 64, offset: 2496)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !31, line: 690, size: 64, elements: !2652)
!2652 = !{!2653, !2876}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2651, file: !31, line: 691, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2657)
!2657 = !{!2658, !2659, !2663, !2668, !2672, !2673, !2674, !2678, !2691, !2692, !2700, !2704, !2705, !2709, !2710, !2714, !2719, !2720, !2724, !2728, !2836, !2840, !2841, !2845, !2846, !2850, !2854, !2859, !2863, !2867, !2871, !2875}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2656, file: !31, line: 1823, baseType: !572, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2656, file: !31, line: 1824, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!470, !295, !470, !100}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2656, file: !31, line: 1825, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!253, !295, !222, !104, !2667}
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2656, file: !31, line: 1826, baseType: !2669, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!253, !295, !116, !104, !2667}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2656, file: !31, line: 1827, baseType: !786, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2656, file: !31, line: 1828, baseType: !786, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2656, file: !31, line: 1829, baseType: !2675, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!100, !789, !429}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2656, file: !31, line: 1830, baseType: !2679, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!100, !295, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2684)
!2684 = !{!2685, !2690}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2683, file: !31, line: 1777, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2687)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!100, !2682, !116, !100, !470, !360, !7}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2683, file: !31, line: 1778, baseType: !470, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2656, file: !31, line: 1831, baseType: !2679, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2656, file: !31, line: 1832, baseType: !2693, size: 64, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2696, !295, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2697, line: 52, baseType: !7)
!2697 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !558, line: 27, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2656, file: !31, line: 1833, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!256, !295, !7, !108}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2656, file: !31, line: 1834, baseType: !2701, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2656, file: !31, line: 1835, baseType: !2706, size: 64, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!100, !295, !923}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2656, file: !31, line: 1836, baseType: !108, size: 64, offset: 832)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2656, file: !31, line: 1837, baseType: !2711, size: 64, offset: 896)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!100, !368, !295}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2656, file: !31, line: 1838, baseType: !2715, size: 64, offset: 960)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!100, !295, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !103)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2656, file: !31, line: 1839, baseType: !2711, size: 64, offset: 1024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2656, file: !31, line: 1840, baseType: !2721, size: 64, offset: 1088)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!100, !295, !470, !470, !100}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2656, file: !31, line: 1841, baseType: !2725, size: 64, offset: 1152)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!100, !100, !295, !100}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2656, file: !31, line: 1842, baseType: !2729, size: 64, offset: 1216)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!100, !295, !100, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2766, !2767, !2768, !2781, !2812}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2733, file: !31, line: 1063, baseType: !2732, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2733, file: !31, line: 1064, baseType: !168, size: 128, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2733, file: !31, line: 1065, baseType: !581, size: 128, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2733, file: !31, line: 1066, baseType: !168, size: 128, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2733, file: !31, line: 1069, baseType: !168, size: 128, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2733, file: !31, line: 1072, baseType: !2718, size: 64, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2733, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2733, file: !31, line: 1074, baseType: !366, size: 8, offset: 672)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2733, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2733, file: !31, line: 1076, baseType: !100, size: 32, offset: 736)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2733, file: !31, line: 1077, baseType: !1343, size: 128, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2733, file: !31, line: 1078, baseType: !295, size: 64, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2733, file: !31, line: 1079, baseType: !470, size: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2733, file: !31, line: 1080, baseType: !470, size: 64, offset: 1024)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2733, file: !31, line: 1082, baseType: !2750, size: 64, offset: 1088)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2752)
!2752 = !{!2753, !2761, !2762, !2763, !2764, !2765}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2751, file: !31, line: 1315, baseType: !2754)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2755, line: 20, baseType: !2756)
!2755 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2755, line: 11, elements: !2757)
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2756, file: !2755, line: 12, baseType: !2759)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !193, line: 33, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 31, elements: !195)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2751, file: !31, line: 1316, baseType: !100, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2751, file: !31, line: 1317, baseType: !100, size: 32, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2751, file: !31, line: 1318, baseType: !2750, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2751, file: !31, line: 1319, baseType: !295, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2751, file: !31, line: 1320, baseType: !308, size: 128, align: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2733, file: !31, line: 1084, baseType: !108, size: 64, offset: 1152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2733, file: !31, line: 1085, baseType: !108, size: 64, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2733, file: !31, line: 1087, baseType: !2769, size: 64, offset: 1280)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2772)
!2772 = !{!2773, !2777}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2771, file: !31, line: 1012, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2732, !2732}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2771, file: !31, line: 1013, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2732}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2733, file: !31, line: 1088, baseType: !2782, size: 64, offset: 1344)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2785)
!2785 = !{!2786, !2790, !2794, !2795, !2799, !2803, !2807, !2811}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2784, file: !31, line: 1017, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2718, !2718}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2784, file: !31, line: 1018, baseType: !2791, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2718}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2784, file: !31, line: 1019, baseType: !2778, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2784, file: !31, line: 1020, baseType: !2796, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!100, !2732, !100}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2784, file: !31, line: 1021, baseType: !2800, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!429, !2732}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2784, file: !31, line: 1022, baseType: !2804, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!100, !2732, !100, !171}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2784, file: !31, line: 1023, baseType: !2808, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2732, !763}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2784, file: !31, line: 1024, baseType: !2800, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2733, file: !31, line: 1097, baseType: !2813, size: 256, offset: 1408)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !31, line: 1089, size: 256, elements: !2814)
!2814 = !{!2815, !2824, !2830}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2813, file: !31, line: 1090, baseType: !2816, size: 256)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2817, line: 10, size: 256, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2818 = !{!2819, !2820, !2823}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2816, file: !2817, line: 11, baseType: !149, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2816, file: !2817, line: 12, baseType: !2821, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2817, line: 5, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2816, file: !2817, line: 13, baseType: !168, size: 128, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2813, file: !31, line: 1091, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2817, line: 17, size: 64, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2825, file: !2817, line: 18, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2817, line: 16, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2813, file: !31, line: 1096, baseType: !2831, size: 192)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2813, file: !31, line: 1092, size: 192, elements: !2832)
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2831, file: !31, line: 1093, baseType: !168, size: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2831, file: !31, line: 1094, baseType: !100, size: 32, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2831, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2656, file: !31, line: 1843, baseType: !2837, size: 64, offset: 1280)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!253, !295, !663, !100, !104, !2667, !100}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2656, file: !31, line: 1844, baseType: !963, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2656, file: !31, line: 1845, baseType: !2842, size: 64, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!100, !100}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2656, file: !31, line: 1846, baseType: !2729, size: 64, offset: 1472)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2656, file: !31, line: 1847, baseType: !2847, size: 64, offset: 1536)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!253, !1962, !295, !2667, !104, !7}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2656, file: !31, line: 1848, baseType: !2851, size: 64, offset: 1600)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!253, !295, !2667, !1962, !104, !7}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2656, file: !31, line: 1849, baseType: !2855, size: 64, offset: 1664)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!100, !295, !256, !2858, !763}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2656, file: !31, line: 1850, baseType: !2860, size: 64, offset: 1728)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!256, !295, !100, !470, !470}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2656, file: !31, line: 1852, baseType: !2864, size: 64, offset: 1792)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !653, !295}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2656, file: !31, line: 1856, baseType: !2868, size: 64, offset: 1856)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!253, !295, !470, !295, !470, !104, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2656, file: !31, line: 1858, baseType: !2872, size: 64, offset: 1920)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!470, !295, !470, !295, !470, !470, !7}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2656, file: !31, line: 1861, baseType: !2721, size: 64, offset: 1984)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2651, file: !31, line: 692, baseType: !606, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !369, file: !31, line: 694, baseType: !2878, size: 64, offset: 2560)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2879, file: !31, line: 1101, baseType: !181)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2879, file: !31, line: 1102, baseType: !168, size: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2879, file: !31, line: 1103, baseType: !168, size: 128, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2879, file: !31, line: 1104, baseType: !168, size: 128, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !369, file: !31, line: 695, baseType: !677, size: 1216, align: 64, offset: 2624)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !369, file: !31, line: 696, baseType: !168, size: 128, offset: 3840)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !31, line: 697, baseType: !2888, size: 64, offset: 3968)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !31, line: 697, size: 64, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2895, !2896}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2888, file: !31, line: 698, baseType: !1962, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2888, file: !31, line: 699, baseType: !2406, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2888, file: !31, line: 700, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2888, file: !31, line: 701, baseType: !222, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2888, file: !31, line: 702, baseType: !7, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !369, file: !31, line: 705, baseType: !151, size: 32, offset: 4032)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !369, file: !31, line: 708, baseType: !151, size: 32, offset: 4064)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !369, file: !31, line: 709, baseType: !2488, size: 64, offset: 4096)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !369, file: !31, line: 720, baseType: !103, size: 64, offset: 4160)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !326, file: !323, line: 98, baseType: !2902, size: 256, offset: 448)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !2082)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !326, file: !323, line: 101, baseType: !2904, size: 32, offset: 704)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2905, line: 25, size: 32, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2905, line: 26, baseType: !2908, size: 32)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2905, line: 26, size: 32, elements: !2909)
!2909 = !{!2910}
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !2905, line: 30, baseType: !2911, size: 32)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !2905, line: 30, size: 32, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2911, file: !2905, line: 31, baseType: !181)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2911, file: !2905, line: 32, baseType: !100, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !326, file: !323, line: 102, baseType: !2505, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !326, file: !323, line: 103, baseType: !538, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !326, file: !323, line: 104, baseType: !108, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !326, file: !323, line: 105, baseType: !103, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !323, line: 107, baseType: !2920, size: 128, offset: 1024)
!2920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !323, line: 107, size: 128, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2920, file: !323, line: 108, baseType: !168, size: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2920, file: !323, line: 109, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !326, file: !323, line: 111, baseType: !168, size: 128, offset: 1152)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !326, file: !323, line: 112, baseType: !168, size: 128, offset: 1280)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !326, file: !323, line: 120, baseType: !2928, size: 128, offset: 1408)
!2928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !323, line: 116, size: 128, elements: !2929)
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2928, file: !323, line: 117, baseType: !581, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2928, file: !323, line: 118, baseType: !340, size: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2928, file: !323, line: 119, baseType: !308, size: 128, align: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !296, file: !31, line: 922, baseType: !368, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !296, file: !31, line: 923, baseType: !2654, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !296, file: !31, line: 929, baseType: !181, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !296, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !296, file: !31, line: 931, baseType: !713, size: 64, offset: 448)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !296, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !296, file: !31, line: 933, baseType: !2501, size: 32, offset: 544)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !296, file: !31, line: 934, baseType: !1035, size: 192, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !296, file: !31, line: 935, baseType: !470, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !296, file: !31, line: 936, baseType: !2943, size: 192, offset: 832)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2943, file: !31, line: 886, baseType: !2754)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2943, file: !31, line: 887, baseType: !1333, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2943, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2943, file: !31, line: 889, baseType: !374, size: 32, offset: 96)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2943, file: !31, line: 889, baseType: !374, size: 32, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2943, file: !31, line: 890, baseType: !100, size: 32, offset: 160)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !296, file: !31, line: 937, baseType: !1409, size: 64, offset: 1024)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !296, file: !31, line: 938, baseType: !2953, size: 256, offset: 1088)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2953, file: !31, line: 897, baseType: !108, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2953, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2953, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2953, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2953, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2953, file: !31, line: 904, baseType: !470, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !296, file: !31, line: 940, baseType: !360, size: 64, offset: 1344)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !296, file: !31, line: 945, baseType: !103, size: 64, offset: 1408)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !296, file: !31, line: 949, baseType: !168, size: 128, offset: 1472)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !296, file: !31, line: 950, baseType: !168, size: 128, offset: 1600)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !296, file: !31, line: 952, baseType: !676, size: 64, offset: 1728)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !296, file: !31, line: 953, baseType: !851, size: 32, offset: 1792)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !296, file: !31, line: 954, baseType: !851, size: 32, offset: 1824)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !286, file: !247, line: 174, baseType: !292, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !286, file: !247, line: 176, baseType: !2970, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!100, !295, !174, !285, !923}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !274, file: !247, line: 90, baseType: !269, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !274, file: !247, line: 91, baseType: !2975, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !237, file: !164, line: 143, baseType: !2977, size: 64, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!2980, !174}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2983)
!2983 = !{!2984, !2985, !2989, !2993, !3001, !3005}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2982, file: !48, line: 40, baseType: !47, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2982, file: !48, line: 41, baseType: !2986, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!429}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2982, file: !48, line: 42, baseType: !2990, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!103}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2982, file: !48, line: 43, baseType: !2994, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2997, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2982, file: !48, line: 44, baseType: !3002, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2997}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2982, file: !48, line: 45, baseType: !407, size: 64, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !237, file: !164, line: 144, baseType: !3007, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!2997, !174}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !237, file: !164, line: 145, baseType: !3011, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !174, !3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !163, file: !164, line: 70, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !558, line: 123, size: 1024, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3148, !3149, !3150, !3151, !3152}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !558, line: 124, baseType: !689, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3018, file: !558, line: 125, baseType: !689, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3018, file: !558, line: 135, baseType: !3017, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3018, file: !558, line: 136, baseType: !116, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3018, file: !558, line: 138, baseType: !702, size: 192, align: 64, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3018, file: !558, line: 140, baseType: !2997, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3018, file: !558, line: 141, baseType: !7, size: 32, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !558, line: 142, baseType: !3028, size: 256, offset: 512)
!3028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !558, line: 142, size: 256, elements: !3029)
!3029 = !{!3030, !3076, !3080}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3028, file: !558, line: 143, baseType: !3031, size: 192)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !558, line: 91, size: 192, elements: !3032)
!3032 = !{!3033, !3034, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3031, file: !558, line: 92, baseType: !108, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3031, file: !558, line: 94, baseType: !698, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3031, file: !558, line: 100, baseType: !3036, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !558, line: 180, size: 704, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3048, !3049, !3050, !3074, !3075}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3037, file: !558, line: 182, baseType: !3017, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3037, file: !558, line: 183, baseType: !7, size: 32, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3037, file: !558, line: 186, baseType: !3042, size: 192, offset: 128)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3043, line: 19, size: 192, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3042, file: !3043, line: 20, baseType: !681, size: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3042, file: !3043, line: 21, baseType: !7, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3042, file: !3043, line: 22, baseType: !7, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3037, file: !558, line: 187, baseType: !149, size: 32, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3037, file: !558, line: 188, baseType: !149, size: 32, offset: 352)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3037, file: !558, line: 189, baseType: !3051, size: 64, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !558, line: 168, size: 320, elements: !3053)
!3053 = !{!3054, !3058, !3062, !3066, !3070}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3052, file: !558, line: 169, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!100, !653, !3036}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3052, file: !558, line: 171, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!100, !3017, !116, !262}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3052, file: !558, line: 173, baseType: !3063, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!100, !3017}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3052, file: !558, line: 174, baseType: !3067, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!100, !3017, !3017, !116}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3052, file: !558, line: 176, baseType: !3071, size: 64, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!100, !653, !3017, !3036}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3037, file: !558, line: 192, baseType: !168, size: 128, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3037, file: !558, line: 194, baseType: !1343, size: 128, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3028, file: !558, line: 144, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !558, line: 103, size: 64, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3077, file: !558, line: 104, baseType: !3017, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3028, file: !558, line: 145, baseType: !3081, size: 256)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !558, line: 107, size: 256, elements: !3082)
!3082 = !{!3083, !3143, !3146, !3147}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3081, file: !558, line: 108, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !558, line: 217, size: 768, elements: !3087)
!3087 = !{!3088, !3108, !3112, !3116, !3120, !3124, !3128, !3132, !3133, !3134, !3135, !3139}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3086, file: !558, line: 222, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!100, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !558, line: 197, size: 1088, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3093, file: !558, line: 199, baseType: !3017, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3093, file: !558, line: 200, baseType: !295, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3093, file: !558, line: 201, baseType: !653, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3093, file: !558, line: 202, baseType: !103, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3093, file: !558, line: 205, baseType: !1035, size: 192, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3093, file: !558, line: 206, baseType: !1035, size: 192, offset: 448)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3093, file: !558, line: 207, baseType: !100, size: 32, offset: 640)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3093, file: !558, line: 208, baseType: !168, size: 128, offset: 704)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3093, file: !558, line: 209, baseType: !222, size: 64, offset: 832)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3093, file: !558, line: 211, baseType: !104, size: 64, offset: 896)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3093, file: !558, line: 212, baseType: !429, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3093, file: !558, line: 213, baseType: !429, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3093, file: !558, line: 214, baseType: !951, size: 64, offset: 1024)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3086, file: !558, line: 223, baseType: !3109, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3092}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3086, file: !558, line: 236, baseType: !3113, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!100, !653, !103}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3086, file: !558, line: 238, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!103, !653, !2667}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3086, file: !558, line: 239, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!103, !653, !103, !2667}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3086, file: !558, line: 240, baseType: !3125, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !653, !103}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3086, file: !558, line: 242, baseType: !3129, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!253, !3092, !222, !104, !470}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3086, file: !558, line: 252, baseType: !104, size: 64, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3086, file: !558, line: 259, baseType: !429, size: 8, offset: 512)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3086, file: !558, line: 260, baseType: !3129, size: 64, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3086, file: !558, line: 263, baseType: !3136, size: 64, offset: 640)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!2696, !3092, !2698}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3086, file: !558, line: 266, baseType: !3140, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!100, !3092, !923}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3081, file: !558, line: 109, baseType: !3144, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !558, line: 31, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3081, file: !558, line: 110, baseType: !470, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3081, file: !558, line: 111, baseType: !3017, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3018, file: !558, line: 148, baseType: !103, size: 64, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3018, file: !558, line: 154, baseType: !360, size: 64, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3018, file: !558, line: 156, baseType: !263, size: 16, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3018, file: !558, line: 157, baseType: !262, size: 16, offset: 912)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3018, file: !558, line: 158, baseType: !3153, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !558, line: 32, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !163, file: !164, line: 71, baseType: !3156, size: 32, offset: 448)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3157, line: 19, size: 32, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3156, file: !3157, line: 20, baseType: !1092, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !163, file: !164, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !163, file: !164, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !163, file: !164, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !163, file: !164, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !163, file: !164, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !60, line: 463, baseType: !159, size: 64, offset: 512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !160, file: !60, line: 465, baseType: !3167, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !160, file: !60, line: 467, baseType: !116, size: 64, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !60, line: 468, baseType: !3171, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3181, !3186, !3190}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3173, file: !60, line: 88, baseType: !116, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3173, file: !60, line: 89, baseType: !271, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3173, file: !60, line: 90, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!100, !159, !217}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3173, file: !60, line: 91, baseType: !3182, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!222, !159, !3185, !3014, !3015}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3173, file: !60, line: 93, baseType: !3187, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !159}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3173, file: !60, line: 95, baseType: !3191, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3194)
!3194 = !{!3195, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3193, file: !67, line: 279, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!100, !159}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3193, file: !67, line: 280, baseType: !3187, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3193, file: !67, line: 281, baseType: !3196, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3193, file: !67, line: 282, baseType: !3196, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3193, file: !67, line: 283, baseType: !3196, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3193, file: !67, line: 284, baseType: !3196, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3193, file: !67, line: 285, baseType: !3196, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3193, file: !67, line: 286, baseType: !3196, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3193, file: !67, line: 287, baseType: !3196, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3193, file: !67, line: 288, baseType: !3196, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3193, file: !67, line: 289, baseType: !3196, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3193, file: !67, line: 290, baseType: !3196, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3193, file: !67, line: 291, baseType: !3196, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3193, file: !67, line: 292, baseType: !3196, size: 64, offset: 832)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3193, file: !67, line: 293, baseType: !3196, size: 64, offset: 896)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3193, file: !67, line: 294, baseType: !3196, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3193, file: !67, line: 295, baseType: !3196, size: 64, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3193, file: !67, line: 296, baseType: !3196, size: 64, offset: 1088)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3193, file: !67, line: 297, baseType: !3196, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3193, file: !67, line: 298, baseType: !3196, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3193, file: !67, line: 299, baseType: !3196, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3193, file: !67, line: 300, baseType: !3196, size: 64, offset: 1344)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3193, file: !67, line: 301, baseType: !3196, size: 64, offset: 1408)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !160, file: !60, line: 470, baseType: !3222, size: 64, offset: 768)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3224, line: 82, size: 1408, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3307, !3310, !3311}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3223, file: !3224, line: 83, baseType: !116, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3223, file: !3224, line: 84, baseType: !116, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3223, file: !3224, line: 85, baseType: !159, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3223, file: !3224, line: 86, baseType: !271, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3223, file: !3224, line: 87, baseType: !271, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3223, file: !3224, line: 88, baseType: !271, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3223, file: !3224, line: 90, baseType: !3233, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!100, !159, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3258, !3271, !3272, !3273, !3274, !3275, !3283, !3284, !3285, !3286, !3287, !3288}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3237, file: !54, line: 96, baseType: !116, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3237, file: !54, line: 97, baseType: !3222, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3237, file: !54, line: 99, baseType: !572, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3237, file: !54, line: 100, baseType: !116, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3237, file: !54, line: 102, baseType: !429, size: 8, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3237, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3237, file: !54, line: 105, baseType: !3246, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3248)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3249, line: 262, size: 1600, elements: !3250)
!3249 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3250 = !{!3251, !3252, !3253, !3257}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3248, file: !3249, line: 263, baseType: !2491, size: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3248, file: !3249, line: 264, baseType: !2491, size: 256, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3248, file: !3249, line: 265, baseType: !3254, size: 1024, offset: 512)
!3254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !3255)
!3255 = !{!3256}
!3256 = !DISubrange(count: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3248, file: !3249, line: 266, baseType: !2997, size: 64, offset: 1536)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3237, file: !54, line: 106, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3249, line: 210, size: 256, elements: !3262)
!3262 = !{!3263, !3267, !3269, !3270}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3261, file: !3249, line: 211, baseType: !3264, size: 72)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 72, elements: !3265)
!3265 = !{!3266}
!3266 = !DISubrange(count: 9)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3261, file: !3249, line: 212, baseType: !3268, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3249, line: 14, baseType: !108)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3261, file: !3249, line: 213, baseType: !151, size: 32, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3261, file: !3249, line: 214, baseType: !151, size: 32, offset: 224)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3237, file: !54, line: 108, baseType: !3196, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3237, file: !54, line: 109, baseType: !3187, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3237, file: !54, line: 110, baseType: !3196, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3237, file: !54, line: 111, baseType: !3187, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3237, file: !54, line: 112, baseType: !3276, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!100, !159, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3281)
!3281 = !{!3282}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3280, file: !67, line: 51, baseType: !100, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3237, file: !54, line: 113, baseType: !3196, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3237, file: !54, line: 114, baseType: !271, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3237, file: !54, line: 115, baseType: !271, size: 64, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3237, file: !54, line: 117, baseType: !3191, size: 64, offset: 960)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3237, file: !54, line: 118, baseType: !3187, size: 64, offset: 1024)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3237, file: !54, line: 120, baseType: !3289, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3223, file: !3224, line: 91, baseType: !3178, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3223, file: !3224, line: 92, baseType: !3196, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3223, file: !3224, line: 93, baseType: !3187, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3223, file: !3224, line: 94, baseType: !3196, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3223, file: !3224, line: 95, baseType: !3187, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3223, file: !3224, line: 97, baseType: !3196, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3223, file: !3224, line: 98, baseType: !3196, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3223, file: !3224, line: 100, baseType: !3276, size: 64, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3223, file: !3224, line: 101, baseType: !3196, size: 64, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3223, file: !3224, line: 103, baseType: !3196, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3223, file: !3224, line: 105, baseType: !3196, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3223, file: !3224, line: 107, baseType: !3191, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3223, file: !3224, line: 109, baseType: !3304, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3224, line: 109, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3223, file: !3224, line: 111, baseType: !3308, size: 64, offset: 1280)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3224, line: 111, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3223, file: !3224, line: 112, baseType: !587, offset: 1344)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3223, file: !3224, line: 114, baseType: !429, size: 8, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !160, file: !60, line: 471, baseType: !3236, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !160, file: !60, line: 473, baseType: !103, size: 64, offset: 896)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !160, file: !60, line: 475, baseType: !103, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !160, file: !60, line: 480, baseType: !1035, size: 192, offset: 1024)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !160, file: !60, line: 484, baseType: !3317, size: 576, offset: 1216)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3317, file: !60, line: 362, baseType: !168, size: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3317, file: !60, line: 363, baseType: !168, size: 128, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3317, file: !60, line: 364, baseType: !168, size: 128, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3317, file: !60, line: 365, baseType: !168, size: 128, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3317, file: !60, line: 366, baseType: !429, size: 8, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3317, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !160, file: !60, line: 485, baseType: !3326, size: 2304, offset: 1792)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3423, !3427}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3326, file: !67, line: 566, baseType: !3279, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3326, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3326, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3326, file: !67, line: 569, baseType: !429, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3326, file: !67, line: 570, baseType: !429, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3326, file: !67, line: 571, baseType: !429, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3326, file: !67, line: 572, baseType: !429, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3326, file: !67, line: 573, baseType: !429, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3326, file: !67, line: 574, baseType: !429, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3326, file: !67, line: 575, baseType: !429, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3326, file: !67, line: 576, baseType: !429, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3326, file: !67, line: 577, baseType: !149, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3326, file: !67, line: 578, baseType: !181, offset: 96)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3326, file: !67, line: 580, baseType: !168, size: 128, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3326, file: !67, line: 581, baseType: !1364, size: 192, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3326, file: !67, line: 582, baseType: !3344, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3346, line: 43, size: 1472, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3355, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3345, file: !3346, line: 44, baseType: !116, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3345, file: !3346, line: 45, baseType: !100, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3345, file: !3346, line: 46, baseType: !168, size: 128, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3345, file: !3346, line: 47, baseType: !181, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3345, file: !3346, line: 48, baseType: !3353, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3345, file: !3346, line: 49, baseType: !3356, size: 320, offset: 320)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3357, line: 11, size: 320, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3360, !3361, !3366}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3356, file: !3357, line: 16, baseType: !581, size: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3356, file: !3357, line: 17, baseType: !108, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3356, file: !3357, line: 18, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3356, file: !3357, line: 19, baseType: !149, size: 32, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3345, file: !3346, line: 50, baseType: !108, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3345, file: !3346, line: 51, baseType: !1162, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3345, file: !3346, line: 52, baseType: !1162, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3345, file: !3346, line: 53, baseType: !1162, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3345, file: !3346, line: 54, baseType: !1162, size: 64, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3345, file: !3346, line: 55, baseType: !1162, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3345, file: !3346, line: 56, baseType: !108, size: 64, offset: 1024)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3345, file: !3346, line: 57, baseType: !108, size: 64, offset: 1088)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3345, file: !3346, line: 58, baseType: !108, size: 64, offset: 1152)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3345, file: !3346, line: 59, baseType: !108, size: 64, offset: 1216)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3345, file: !3346, line: 60, baseType: !108, size: 64, offset: 1280)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3345, file: !3346, line: 61, baseType: !159, size: 64, offset: 1344)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3345, file: !3346, line: 62, baseType: !429, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3345, file: !3346, line: 63, baseType: !429, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3326, file: !67, line: 583, baseType: !429, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3326, file: !67, line: 584, baseType: !429, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3326, file: !67, line: 585, baseType: !429, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3326, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3326, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3326, file: !67, line: 592, baseType: !1154, size: 512, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3326, file: !67, line: 593, baseType: !360, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3326, file: !67, line: 594, baseType: !1821, size: 256, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3326, file: !67, line: 595, baseType: !1343, size: 128, offset: 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3326, file: !67, line: 596, baseType: !3353, size: 64, offset: 1536)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3326, file: !67, line: 597, baseType: !689, size: 32, offset: 1600)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3326, file: !67, line: 598, baseType: !689, size: 32, offset: 1632)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3326, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3326, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3326, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3326, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3326, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3326, file: !67, line: 604, baseType: !429, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3326, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3326, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3326, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3326, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3326, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3326, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3326, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3326, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3326, file: !67, line: 613, baseType: !100, size: 32, offset: 1792)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3326, file: !67, line: 614, baseType: !100, size: 32, offset: 1824)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3326, file: !67, line: 615, baseType: !360, size: 64, offset: 1856)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3326, file: !67, line: 616, baseType: !360, size: 64, offset: 1920)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3326, file: !67, line: 617, baseType: !360, size: 64, offset: 1984)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3326, file: !67, line: 618, baseType: !360, size: 64, offset: 2048)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3326, file: !67, line: 620, baseType: !3414, size: 64, offset: 2112)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3415, file: !67, line: 537, baseType: !181)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3415, file: !67, line: 538, baseType: !7, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3415, file: !67, line: 540, baseType: !168, size: 128, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3415, file: !67, line: 543, baseType: !3421, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3326, file: !67, line: 621, baseType: !3424, size: 64, offset: 2176)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !159, !1306}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3326, file: !67, line: 622, baseType: !3428, size: 64, offset: 2240)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !160, file: !60, line: 486, baseType: !3431, size: 64, offset: 4096)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3440, !3441, !3442}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3432, file: !67, line: 643, baseType: !3193, size: 1472)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3432, file: !67, line: 644, baseType: !3196, size: 64, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3432, file: !67, line: 645, baseType: !3437, size: 64, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !159, !429}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3432, file: !67, line: 646, baseType: !3196, size: 64, offset: 1600)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3432, file: !67, line: 647, baseType: !3187, size: 64, offset: 1664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3432, file: !67, line: 648, baseType: !3187, size: 64, offset: 1728)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !160, file: !60, line: 493, baseType: !3444, size: 64, offset: 4160)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !160, file: !60, line: 499, baseType: !168, size: 128, offset: 4224)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !160, file: !60, line: 502, baseType: !3448, size: 64, offset: 4352)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !160, file: !60, line: 504, baseType: !3452, size: 64, offset: 4416)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !160, file: !60, line: 505, baseType: !360, size: 64, offset: 4480)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !160, file: !60, line: 510, baseType: !360, size: 64, offset: 4544)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !160, file: !60, line: 511, baseType: !3456, size: 64, offset: 4608)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !160, file: !60, line: 513, baseType: !3460, size: 64, offset: 4672)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3461, file: !60, line: 293, baseType: !7, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3461, file: !60, line: 294, baseType: !108, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !160, file: !60, line: 515, baseType: !168, size: 128, offset: 4736)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !160, file: !60, line: 526, baseType: !3467, offset: 4864)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3468, line: 5, elements: !195)
!3468 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !160, file: !60, line: 528, baseType: !3470, size: 64, offset: 4864)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3472, line: 14, flags: DIFlagFwdDecl)
!3472 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !160, file: !60, line: 529, baseType: !3474, size: 64, offset: 4928)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3224, line: 22, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !160, file: !60, line: 534, baseType: !452, size: 32, offset: 4992)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !160, file: !60, line: 535, baseType: !149, size: 32, offset: 5024)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !160, file: !60, line: 537, baseType: !181, offset: 5056)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !160, file: !60, line: 538, baseType: !168, size: 128, offset: 5056)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !160, file: !60, line: 540, baseType: !3481, size: 64, offset: 5184)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3483, line: 54, size: 960, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3495, !3499, !3500, !3501, !3502, !3506, !3510, !3511}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !3483, line: 55, baseType: !116, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3482, file: !3483, line: 56, baseType: !572, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3482, file: !3483, line: 58, baseType: !271, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3482, file: !3483, line: 59, baseType: !271, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3482, file: !3483, line: 60, baseType: !174, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3482, file: !3483, line: 62, baseType: !3178, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3482, file: !3483, line: 63, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!222, !159, !3185}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3482, file: !3483, line: 65, baseType: !3496, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !3481}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3482, file: !3483, line: 66, baseType: !3187, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3482, file: !3483, line: 68, baseType: !3196, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3482, file: !3483, line: 70, baseType: !2980, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3482, file: !3483, line: 71, baseType: !3503, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!2997, !159}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3482, file: !3483, line: 73, baseType: !3507, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !159, !3014, !3015}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !3483, line: 75, baseType: !3191, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !3483, line: 77, baseType: !3308, size: 64, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !160, file: !60, line: 541, baseType: !271, size: 64, offset: 5248)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !160, file: !60, line: 543, baseType: !3187, size: 64, offset: 5312)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !160, file: !60, line: 544, baseType: !3515, size: 64, offset: 5376)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !160, file: !60, line: 545, baseType: !3518, size: 64, offset: 5440)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !160, file: !60, line: 547, baseType: !429, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !160, file: !60, line: 548, baseType: !429, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !160, file: !60, line: 549, baseType: !429, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !160, file: !60, line: 550, baseType: !429, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !113, file: !81, line: 125, baseType: !271, size: 64, offset: 704)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !81, line: 127, baseType: !168, size: 128, offset: 768)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !113, file: !81, line: 128, baseType: !116, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !113, file: !81, line: 130, baseType: !108, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !113, file: !81, line: 130, baseType: !108, size: 64, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !113, file: !81, line: 131, baseType: !3356, size: 320, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !113, file: !81, line: 132, baseType: !100, size: 32, offset: 1408)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !113, file: !81, line: 133, baseType: !100, size: 32, offset: 1440)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !113, file: !81, line: 134, baseType: !3533, size: 64, offset: 1472)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !127}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !113, file: !81, line: 136, baseType: !1821, size: 256, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !113, file: !81, line: 137, baseType: !100, size: 32, offset: 1792)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !113, file: !81, line: 159, baseType: !1035, size: 192, offset: 1856)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !110, file: !3, line: 40, baseType: !3540, size: 64, offset: 2048)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3542, line: 337, size: 576, elements: !3543)
!3542 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3543 = !{!3544, !3545, !3546, !3547, !3752, !3813, !3814}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3541, file: !3542, line: 339, baseType: !103, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3541, file: !3542, line: 341, baseType: !100, size: 32, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3541, file: !3542, line: 342, baseType: !116, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3541, file: !3542, line: 344, baseType: !3548, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3542, line: 131, size: 10432, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3562, !3563, !3564, !3566, !3567, !3568, !3569, !3570, !3571, !3573, !3574, !3575, !3576, !3577, !3578, !3592, !3597, !3692, !3695, !3696, !3697, !3699, !3702, !3712, !3713, !3714, !3715, !3716, !3720, !3724, !3728, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3749, !3750}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3549, file: !3542, line: 132, baseType: !116, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3549, file: !3542, line: 133, baseType: !116, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3549, file: !3542, line: 134, baseType: !116, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3549, file: !3542, line: 135, baseType: !3555, size: 64, offset: 192)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3556, line: 59, size: 64, elements: !3557)
!3556 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3555, file: !3556, line: 60, baseType: !802, size: 16)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3555, file: !3556, line: 61, baseType: !802, size: 16, offset: 16)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3555, file: !3556, line: 62, baseType: !802, size: 16, offset: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3555, file: !3556, line: 63, baseType: !802, size: 16, offset: 48)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3549, file: !3542, line: 137, baseType: !1232, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3549, file: !3542, line: 139, baseType: !1232, size: 64, offset: 320)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3549, file: !3542, line: 140, baseType: !3565, size: 768, offset: 384)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 768, elements: !2088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3549, file: !3542, line: 141, baseType: !1232, size: 64, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3549, file: !3542, line: 142, baseType: !1232, size: 64, offset: 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3549, file: !3542, line: 143, baseType: !1232, size: 64, offset: 1280)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3549, file: !3542, line: 144, baseType: !1232, size: 64, offset: 1344)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3549, file: !3542, line: 145, baseType: !1232, size: 64, offset: 1408)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3549, file: !3542, line: 146, baseType: !3572, size: 128, offset: 1472)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1431)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3549, file: !3542, line: 147, baseType: !1232, size: 64, offset: 1600)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3549, file: !3542, line: 149, baseType: !7, size: 32, offset: 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3549, file: !3542, line: 151, baseType: !7, size: 32, offset: 1696)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3549, file: !3542, line: 152, baseType: !7, size: 32, offset: 1728)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3549, file: !3542, line: 153, baseType: !103, size: 64, offset: 1792)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3549, file: !3542, line: 155, baseType: !3579, size: 64, offset: 1856)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!100, !3548, !3582, !2474}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3584)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3556, line: 114, size: 320, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3584, file: !3556, line: 116, baseType: !1215, size: 8)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3584, file: !3556, line: 117, baseType: !1215, size: 8, offset: 8)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3584, file: !3556, line: 118, baseType: !802, size: 16, offset: 16)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3584, file: !3556, line: 119, baseType: !151, size: 32, offset: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3584, file: !3556, line: 120, baseType: !3591, size: 256, offset: 64)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 256, elements: !2082)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3549, file: !3542, line: 158, baseType: !3593, size: 64, offset: 1920)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!100, !3548, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3549, file: !3542, line: 161, baseType: !3598, size: 64, offset: 1984)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3542, line: 534, size: 896, elements: !3600)
!3600 = !{!3601, !3668, !3672, !3676, !3680, !3681, !3685, !3686, !3687, !3688, !3689, !3690}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3599, file: !3542, line: 535, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!100, !3548, !3605, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3556, line: 450, size: 384, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3616, !3621}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3606, file: !3556, line: 451, baseType: !802, size: 16)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3606, file: !3556, line: 452, baseType: !1066, size: 16, offset: 16)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3606, file: !3556, line: 453, baseType: !802, size: 16, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3606, file: !3556, line: 454, baseType: !3612, size: 32, offset: 48)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3556, line: 316, size: 32, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3612, file: !3556, line: 317, baseType: !802, size: 16)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3612, file: !3556, line: 318, baseType: !802, size: 16, offset: 16)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3606, file: !3556, line: 455, baseType: !3617, size: 32, offset: 80)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3556, line: 306, size: 32, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3617, file: !3556, line: 307, baseType: !802, size: 16)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3617, file: !3556, line: 308, baseType: !802, size: 16, offset: 16)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3606, file: !3556, line: 463, baseType: !3622, size: 256, offset: 128)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !3556, line: 457, size: 256, elements: !3623)
!3623 = !{!3624, !3635, !3641, !3653, !3663}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3622, file: !3556, line: 458, baseType: !3625, size: 80)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3556, line: 345, size: 80, elements: !3626)
!3626 = !{!3627, !3628}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3625, file: !3556, line: 346, baseType: !1066, size: 16)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3625, file: !3556, line: 347, baseType: !3629, size: 64, offset: 16)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3556, line: 333, size: 64, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3629, file: !3556, line: 334, baseType: !802, size: 16)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3629, file: !3556, line: 335, baseType: !802, size: 16, offset: 16)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3629, file: !3556, line: 336, baseType: !802, size: 16, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3629, file: !3556, line: 337, baseType: !802, size: 16, offset: 48)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3622, file: !3556, line: 459, baseType: !3636, size: 96)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3556, line: 356, size: 96, elements: !3637)
!3637 = !{!3638, !3639, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !3636, file: !3556, line: 357, baseType: !1066, size: 16)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !3636, file: !3556, line: 358, baseType: !1066, size: 16, offset: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3636, file: !3556, line: 359, baseType: !3629, size: 64, offset: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3622, file: !3556, line: 460, baseType: !3642, size: 256)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3556, line: 401, size: 256, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !3642, file: !3556, line: 402, baseType: !802, size: 16)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3642, file: !3556, line: 403, baseType: !802, size: 16, offset: 16)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !3642, file: !3556, line: 404, baseType: !1066, size: 16, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3642, file: !3556, line: 405, baseType: !1066, size: 16, offset: 48)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3642, file: !3556, line: 406, baseType: !802, size: 16, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3642, file: !3556, line: 408, baseType: !3629, size: 64, offset: 80)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !3642, file: !3556, line: 410, baseType: !151, size: 32, offset: 160)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !3642, file: !3556, line: 411, baseType: !3652, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3622, file: !3556, line: 461, baseType: !3654, size: 192)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3655, size: 192, elements: !1431)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3556, line: 372, size: 96, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !3655, file: !3556, line: 373, baseType: !802, size: 16)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !3655, file: !3556, line: 374, baseType: !802, size: 16, offset: 16)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !3655, file: !3556, line: 376, baseType: !1066, size: 16, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !3655, file: !3556, line: 377, baseType: !1066, size: 16, offset: 48)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !3655, file: !3556, line: 379, baseType: !802, size: 16, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !3655, file: !3556, line: 380, baseType: !1066, size: 16, offset: 80)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3622, file: !3556, line: 462, baseType: !3664, size: 32)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3556, line: 422, size: 32, elements: !3665)
!3665 = !{!3666, !3667}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !3664, file: !3556, line: 423, baseType: !802, size: 16)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !3664, file: !3556, line: 424, baseType: !802, size: 16, offset: 16)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3599, file: !3542, line: 537, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!100, !3548, !100}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3599, file: !3542, line: 539, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!100, !3548, !100, !100}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3599, file: !3542, line: 540, baseType: !3677, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !3548, !801}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3599, file: !3542, line: 541, baseType: !3677, size: 64, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3599, file: !3542, line: 543, baseType: !3682, size: 64, offset: 320)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3598}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3599, file: !3542, line: 545, baseType: !103, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3599, file: !3542, line: 547, baseType: !3572, size: 128, offset: 448)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3599, file: !3542, line: 549, baseType: !1035, size: 192, offset: 576)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3599, file: !3542, line: 551, baseType: !100, size: 32, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3599, file: !3542, line: 552, baseType: !3605, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3599, file: !3542, line: 553, baseType: !3691, offset: 896)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !2183)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3549, file: !3542, line: 163, baseType: !3693, size: 64, offset: 2048)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3542, line: 24, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3549, file: !3542, line: 165, baseType: !7, size: 32, offset: 2112)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3549, file: !3542, line: 166, baseType: !3356, size: 320, offset: 2176)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3549, file: !3542, line: 168, baseType: !3698, size: 64, offset: 2496)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !1431)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3549, file: !3542, line: 170, baseType: !3700, size: 64, offset: 2560)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3542, line: 170, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3549, file: !3542, line: 172, baseType: !3703, size: 64, offset: 2624)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3556, line: 90, size: 192, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3704, file: !3556, line: 91, baseType: !1307, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3704, file: !3556, line: 92, baseType: !1307, size: 32, offset: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3704, file: !3556, line: 93, baseType: !1307, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3704, file: !3556, line: 94, baseType: !1307, size: 32, offset: 96)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3704, file: !3556, line: 95, baseType: !1307, size: 32, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3704, file: !3556, line: 96, baseType: !1307, size: 32, offset: 160)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3549, file: !3542, line: 174, baseType: !3565, size: 768, offset: 2688)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3549, file: !3542, line: 175, baseType: !1232, size: 64, offset: 3456)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3549, file: !3542, line: 176, baseType: !1232, size: 64, offset: 3520)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3549, file: !3542, line: 177, baseType: !1232, size: 64, offset: 3584)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3549, file: !3542, line: 179, baseType: !3717, size: 64, offset: 3648)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!100, !3548}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3549, file: !3542, line: 180, baseType: !3721, size: 64, offset: 3712)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3548}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3549, file: !3542, line: 181, baseType: !3725, size: 64, offset: 3776)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!100, !3548, !295}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3549, file: !3542, line: 182, baseType: !3729, size: 64, offset: 3840)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!100, !3548, !7, !7, !100}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3549, file: !3542, line: 184, baseType: !3540, size: 64, offset: 3904)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3549, file: !3542, line: 186, baseType: !181, offset: 3968)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3549, file: !3542, line: 187, baseType: !1035, size: 192, offset: 3968)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3549, file: !3542, line: 189, baseType: !7, size: 32, offset: 4160)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3549, file: !3542, line: 190, baseType: !429, size: 8, offset: 4192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3549, file: !3542, line: 192, baseType: !160, size: 5568, offset: 4224)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3549, file: !3542, line: 194, baseType: !168, size: 128, offset: 9792)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3549, file: !3542, line: 195, baseType: !168, size: 128, offset: 9920)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3549, file: !3542, line: 197, baseType: !7, size: 32, offset: 10048)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3549, file: !3542, line: 198, baseType: !7, size: 32, offset: 10080)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3549, file: !3542, line: 199, baseType: !3743, size: 64, offset: 10112)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3542, line: 32, size: 64, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3744, file: !3542, line: 33, baseType: !802, size: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3744, file: !3542, line: 34, baseType: !802, size: 16, offset: 16)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3744, file: !3542, line: 35, baseType: !1307, size: 32, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3549, file: !3542, line: 201, baseType: !429, size: 8, offset: 10176)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3549, file: !3542, line: 203, baseType: !3751, size: 192, offset: 10240)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 192, elements: !223)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3541, file: !3542, line: 345, baseType: !3753, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3542, line: 302, size: 960, elements: !3755)
!3755 = !{!3756, !3757, !3761, !3767, !3771, !3775, !3802, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3754, file: !3542, line: 304, baseType: !103, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3754, file: !3542, line: 306, baseType: !3758, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{null, !3540, !7, !7, !100}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3754, file: !3542, line: 307, baseType: !3762, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !3540, !3765, !7}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3744)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3754, file: !3542, line: 309, baseType: !3768, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!429, !3540, !7, !7, !100}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3754, file: !3542, line: 310, baseType: !3772, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!429, !3753, !3548}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3754, file: !3542, line: 311, baseType: !3776, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!100, !3753, !3548, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3249, line: 342, size: 1600, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3786, !3787, !3788, !3790, !3792, !3793, !3794, !3795, !3796, !3797, !3799, !3800, !3801}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3781, file: !3249, line: 344, baseType: !3268, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3781, file: !3249, line: 346, baseType: !802, size: 16, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3781, file: !3249, line: 347, baseType: !802, size: 16, offset: 80)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3781, file: !3249, line: 348, baseType: !802, size: 16, offset: 96)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3781, file: !3249, line: 349, baseType: !802, size: 16, offset: 112)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3781, file: !3249, line: 351, baseType: !3789, size: 64, offset: 128)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 64, elements: !1233)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3781, file: !3249, line: 352, baseType: !3791, size: 768, offset: 192)
!3791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 768, elements: !2088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3781, file: !3249, line: 353, baseType: !3789, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3781, file: !3249, line: 354, baseType: !3789, size: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3781, file: !3249, line: 355, baseType: !3789, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3781, file: !3249, line: 356, baseType: !3789, size: 64, offset: 1152)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3781, file: !3249, line: 357, baseType: !3789, size: 64, offset: 1216)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3781, file: !3249, line: 358, baseType: !3798, size: 128, offset: 1280)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 128, elements: !1431)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3781, file: !3249, line: 359, baseType: !3789, size: 64, offset: 1408)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3781, file: !3249, line: 360, baseType: !3789, size: 64, offset: 1472)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3781, file: !3249, line: 362, baseType: !3268, size: 64, offset: 1536)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3754, file: !3542, line: 312, baseType: !3803, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3540}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3754, file: !3542, line: 313, baseType: !3803, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3754, file: !3542, line: 315, baseType: !429, size: 8, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3754, file: !3542, line: 316, baseType: !100, size: 32, offset: 544)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3754, file: !3542, line: 317, baseType: !116, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3754, file: !3542, line: 319, baseType: !3779, size: 64, offset: 640)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3754, file: !3542, line: 321, baseType: !168, size: 128, offset: 704)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3754, file: !3542, line: 322, baseType: !168, size: 128, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3541, file: !3542, line: 347, baseType: !168, size: 128, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3541, file: !3542, line: 348, baseType: !168, size: 128, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !110, file: !3, line: 41, baseType: !7, size: 32, offset: 2112)
!3816 = !{!0, !3817, !3822, !3827, !3832, !3835, !3840, !3845, !3847, !3855}
!3817 = !DIGlobalVariableExpression(var: !3818, expr: !DIExpression())
!3818 = distinct !DIGlobalVariable(name: "__exitcall_input_leds_exit", scope: !2, file: !3, line: 215, type: !3819, isLocal: true, isDefinition: true)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3820, line: 117, baseType: !3821)
!3820 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!3822 = !DIGlobalVariableExpression(var: !3823, expr: !DIExpression())
!3823 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author207", scope: !2, file: !3, line: 217, type: !3824, isLocal: true, isDefinition: true, align: 8)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 520, elements: !3825)
!3825 = !{!3826}
!3826 = !DISubrange(count: 65)
!3827 = !DIGlobalVariableExpression(var: !3828, expr: !DIExpression())
!3828 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author208", scope: !2, file: !3, line: 218, type: !3829, isLocal: true, isDefinition: true, align: 8)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 496, elements: !3830)
!3830 = !{!3831}
!3831 = !DISubrange(count: 62)
!3832 = !DIGlobalVariableExpression(var: !3833, expr: !DIExpression())
!3833 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description209", scope: !2, file: !3, line: 219, type: !3834, isLocal: true, isDefinition: true, align: 8)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 352, elements: !1009)
!3835 = !DIGlobalVariableExpression(var: !3836, expr: !DIExpression())
!3836 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file210", scope: !2, file: !3, line: 220, type: !3837, isLocal: true, isDefinition: true, align: 8)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 328, elements: !3838)
!3838 = !{!3839}
!3839 = !DISubrange(count: 41)
!3840 = !DIGlobalVariableExpression(var: !3841, expr: !DIExpression())
!3841 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license211", scope: !2, file: !3, line: 220, type: !3842, isLocal: true, isDefinition: true, align: 8)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 208, elements: !3843)
!3843 = !{!3844}
!3844 = !DISubrange(count: 26)
!3845 = !DIGlobalVariableExpression(var: !3846, expr: !DIExpression())
!3846 = distinct !DIGlobalVariable(name: "input_leds_handler", scope: !2, file: !3, line: 197, type: !3754, isLocal: true, isDefinition: true)
!3847 = !DIGlobalVariableExpression(var: !3848, expr: !DIExpression())
!3848 = distinct !DIGlobalVariable(name: "input_led_info", scope: !2, file: !3, line: 24, type: !3849, isLocal: true, isDefinition: true)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3850, size: 2048, elements: !1597)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 128, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !3, line: 22, baseType: !116, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3851, file: !3, line: 23, baseType: !116, size: 64, offset: 64)
!3855 = !DIGlobalVariableExpression(var: !3856, expr: !DIExpression())
!3856 = distinct !DIGlobalVariable(name: "input_leds_ids", scope: !2, file: !3, line: 188, type: !3857, isLocal: true, isDefinition: true)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3780, size: 3200, elements: !1431)
!3858 = !{i32 7, !"Dwarf Version", i32 4}
!3859 = !{i32 2, !"Debug Info Version", i32 3}
!3860 = !{i32 1, !"wchar_size", i32 2}
!3861 = !{i32 1, !"Code Model", i32 2}
!3862 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3863 = distinct !DISubprogram(name: "input_leds_init", scope: !3, file: !3, line: 205, type: !3864, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!100}
!3866 = !DILocation(line: 207, column: 9, scope: !3863)
!3867 = !DILocation(line: 207, column: 2, scope: !3863)
!3868 = distinct !DISubprogram(name: "input_leds_exit", scope: !3, file: !3, line: 211, type: !1742, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3869 = !DILocation(line: 213, column: 2, scope: !3868)
!3870 = !DILocation(line: 214, column: 1, scope: !3868)
!3871 = distinct !DISubprogram(name: "input_leds_event", scope: !3, file: !3, line: 66, type: !3759, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3872 = !DILocalVariable(name: "handle", arg: 1, scope: !3871, file: !3, line: 66, type: !3540)
!3873 = !DILocation(line: 66, column: 51, scope: !3871)
!3874 = !DILocalVariable(name: "type", arg: 2, scope: !3871, file: !3, line: 66, type: !7)
!3875 = !DILocation(line: 66, column: 72, scope: !3871)
!3876 = !DILocalVariable(name: "code", arg: 3, scope: !3871, file: !3, line: 67, type: !7)
!3877 = !DILocation(line: 67, column: 22, scope: !3871)
!3878 = !DILocalVariable(name: "value", arg: 4, scope: !3871, file: !3, line: 67, type: !100)
!3879 = !DILocation(line: 67, column: 32, scope: !3871)
!3880 = !DILocation(line: 69, column: 1, scope: !3871)
!3881 = distinct !DISubprogram(name: "input_leds_connect", scope: !3, file: !3, line: 83, type: !3777, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3882 = !DILocalVariable(name: "handler", arg: 1, scope: !3881, file: !3, line: 83, type: !3753)
!3883 = !DILocation(line: 83, column: 53, scope: !3881)
!3884 = !DILocalVariable(name: "dev", arg: 2, scope: !3881, file: !3, line: 84, type: !3548)
!3885 = !DILocation(line: 84, column: 28, scope: !3881)
!3886 = !DILocalVariable(name: "id", arg: 3, scope: !3881, file: !3, line: 85, type: !3779)
!3887 = !DILocation(line: 85, column: 40, scope: !3881)
!3888 = !DILocalVariable(name: "leds", scope: !3881, file: !3, line: 87, type: !3889)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_leds", file: !3, line: 44, size: 640, elements: !3891)
!3891 = !{!3892, !3893, !3894}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3890, file: !3, line: 45, baseType: !3541, size: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "num_leds", scope: !3890, file: !3, line: 46, baseType: !7, size: 32, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !3890, file: !3, line: 47, baseType: !3895, offset: 640)
!3895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !2183)
!3896 = !DILocation(line: 87, column: 21, scope: !3881)
!3897 = !DILocalVariable(name: "led", scope: !3881, file: !3, line: 88, type: !109)
!3898 = !DILocation(line: 88, column: 20, scope: !3881)
!3899 = !DILocalVariable(name: "num_leds", scope: !3881, file: !3, line: 89, type: !7)
!3900 = !DILocation(line: 89, column: 15, scope: !3881)
!3901 = !DILocalVariable(name: "led_code", scope: !3881, file: !3, line: 90, type: !7)
!3902 = !DILocation(line: 90, column: 15, scope: !3881)
!3903 = !DILocalVariable(name: "led_no", scope: !3881, file: !3, line: 91, type: !100)
!3904 = !DILocation(line: 91, column: 6, scope: !3881)
!3905 = !DILocalVariable(name: "error", scope: !3881, file: !3, line: 92, type: !100)
!3906 = !DILocation(line: 92, column: 6, scope: !3881)
!3907 = !DILocation(line: 94, column: 34, scope: !3881)
!3908 = !DILocation(line: 94, column: 13, scope: !3881)
!3909 = !DILocation(line: 94, column: 11, scope: !3881)
!3910 = !DILocation(line: 95, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 95, column: 6)
!3912 = !DILocation(line: 95, column: 6, scope: !3881)
!3913 = !DILocation(line: 96, column: 3, scope: !3911)
!3914 = !DILocation(line: 98, column: 17, scope: !3881)
!3915 = !DILocation(line: 98, column: 9, scope: !3881)
!3916 = !DILocation(line: 98, column: 7, scope: !3881)
!3917 = !DILocation(line: 99, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 99, column: 6)
!3919 = !DILocation(line: 99, column: 6, scope: !3881)
!3920 = !DILocation(line: 100, column: 3, scope: !3918)
!3921 = !DILocation(line: 102, column: 19, scope: !3881)
!3922 = !DILocation(line: 102, column: 2, scope: !3881)
!3923 = !DILocation(line: 102, column: 8, scope: !3881)
!3924 = !DILocation(line: 102, column: 17, scope: !3881)
!3925 = !DILocation(line: 104, column: 21, scope: !3881)
!3926 = !DILocation(line: 104, column: 2, scope: !3881)
!3927 = !DILocation(line: 104, column: 8, scope: !3881)
!3928 = !DILocation(line: 104, column: 15, scope: !3881)
!3929 = !DILocation(line: 104, column: 19, scope: !3881)
!3930 = !DILocation(line: 105, column: 25, scope: !3881)
!3931 = !DILocation(line: 105, column: 2, scope: !3881)
!3932 = !DILocation(line: 105, column: 8, scope: !3881)
!3933 = !DILocation(line: 105, column: 15, scope: !3881)
!3934 = !DILocation(line: 105, column: 23, scope: !3881)
!3935 = !DILocation(line: 106, column: 2, scope: !3881)
!3936 = !DILocation(line: 106, column: 8, scope: !3881)
!3937 = !DILocation(line: 106, column: 15, scope: !3881)
!3938 = !DILocation(line: 106, column: 20, scope: !3881)
!3939 = !DILocation(line: 107, column: 25, scope: !3881)
!3940 = !DILocation(line: 107, column: 2, scope: !3881)
!3941 = !DILocation(line: 107, column: 8, scope: !3881)
!3942 = !DILocation(line: 107, column: 15, scope: !3881)
!3943 = !DILocation(line: 107, column: 23, scope: !3881)
!3944 = !DILocation(line: 109, column: 33, scope: !3881)
!3945 = !DILocation(line: 109, column: 39, scope: !3881)
!3946 = !DILocation(line: 109, column: 10, scope: !3881)
!3947 = !DILocation(line: 109, column: 8, scope: !3881)
!3948 = !DILocation(line: 110, column: 6, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 110, column: 6)
!3950 = !DILocation(line: 110, column: 6, scope: !3881)
!3951 = !DILocation(line: 111, column: 3, scope: !3949)
!3952 = !DILocation(line: 113, column: 29, scope: !3881)
!3953 = !DILocation(line: 113, column: 35, scope: !3881)
!3954 = !DILocation(line: 113, column: 10, scope: !3881)
!3955 = !DILocation(line: 113, column: 8, scope: !3881)
!3956 = !DILocation(line: 114, column: 6, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 114, column: 6)
!3958 = !DILocation(line: 114, column: 6, scope: !3881)
!3959 = !DILocation(line: 115, column: 3, scope: !3957)
!3960 = !DILocation(line: 117, column: 9, scope: !3881)
!3961 = !DILocation(line: 118, column: 2, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 118, column: 2)
!3963 = !DILocation(line: 118, column: 2, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 118, column: 2)
!3965 = !DILocation(line: 119, column: 23, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 119, column: 7)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 118, column: 51)
!3968 = !DILocation(line: 119, column: 8, scope: !3966)
!3969 = !DILocation(line: 119, column: 33, scope: !3966)
!3970 = !DILocation(line: 119, column: 7, scope: !3967)
!3971 = !DILocation(line: 120, column: 4, scope: !3966)
!3972 = !DILocation(line: 122, column: 10, scope: !3967)
!3973 = !DILocation(line: 122, column: 16, scope: !3967)
!3974 = !DILocation(line: 122, column: 21, scope: !3967)
!3975 = !DILocation(line: 122, column: 7, scope: !3967)
!3976 = !DILocation(line: 123, column: 18, scope: !3967)
!3977 = !DILocation(line: 123, column: 24, scope: !3967)
!3978 = !DILocation(line: 123, column: 3, scope: !3967)
!3979 = !DILocation(line: 123, column: 8, scope: !3967)
!3980 = !DILocation(line: 123, column: 15, scope: !3967)
!3981 = !DILocation(line: 124, column: 15, scope: !3967)
!3982 = !DILocation(line: 124, column: 3, scope: !3967)
!3983 = !DILocation(line: 124, column: 8, scope: !3967)
!3984 = !DILocation(line: 124, column: 13, scope: !3967)
!3985 = !DILocation(line: 127, column: 19, scope: !3967)
!3986 = !DILocation(line: 127, column: 24, scope: !3967)
!3987 = !DILocation(line: 127, column: 9, scope: !3967)
!3988 = !DILocation(line: 128, column: 24, scope: !3967)
!3989 = !DILocation(line: 128, column: 9, scope: !3967)
!3990 = !DILocation(line: 128, column: 34, scope: !3967)
!3991 = !DILocation(line: 126, column: 20, scope: !3967)
!3992 = !DILocation(line: 126, column: 3, scope: !3967)
!3993 = !DILocation(line: 126, column: 8, scope: !3967)
!3994 = !DILocation(line: 126, column: 13, scope: !3967)
!3995 = !DILocation(line: 126, column: 18, scope: !3967)
!3996 = !DILocation(line: 129, column: 8, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 129, column: 7)
!3998 = !DILocation(line: 129, column: 13, scope: !3997)
!3999 = !DILocation(line: 129, column: 18, scope: !3997)
!4000 = !DILocation(line: 129, column: 7, scope: !3967)
!4001 = !DILocation(line: 130, column: 10, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 129, column: 24)
!4003 = !DILocation(line: 131, column: 4, scope: !4002)
!4004 = !DILocation(line: 134, column: 3, scope: !3967)
!4005 = !DILocation(line: 134, column: 8, scope: !3967)
!4006 = !DILocation(line: 134, column: 13, scope: !3967)
!4007 = !DILocation(line: 134, column: 28, scope: !3967)
!4008 = !DILocation(line: 135, column: 3, scope: !3967)
!4009 = !DILocation(line: 135, column: 8, scope: !3967)
!4010 = !DILocation(line: 135, column: 13, scope: !3967)
!4011 = !DILocation(line: 135, column: 28, scope: !3967)
!4012 = !DILocation(line: 136, column: 3, scope: !3967)
!4013 = !DILocation(line: 136, column: 8, scope: !3967)
!4014 = !DILocation(line: 136, column: 13, scope: !3967)
!4015 = !DILocation(line: 136, column: 28, scope: !3967)
!4016 = !DILocation(line: 137, column: 46, scope: !3967)
!4017 = !DILocation(line: 137, column: 31, scope: !3967)
!4018 = !DILocation(line: 137, column: 56, scope: !3967)
!4019 = !DILocation(line: 137, column: 3, scope: !3967)
!4020 = !DILocation(line: 137, column: 8, scope: !3967)
!4021 = !DILocation(line: 137, column: 13, scope: !3967)
!4022 = !DILocation(line: 137, column: 29, scope: !3967)
!4023 = !DILocation(line: 139, column: 34, scope: !3967)
!4024 = !DILocation(line: 139, column: 39, scope: !3967)
!4025 = !DILocation(line: 139, column: 45, scope: !3967)
!4026 = !DILocation(line: 139, column: 50, scope: !3967)
!4027 = !DILocation(line: 139, column: 11, scope: !3967)
!4028 = !DILocation(line: 139, column: 9, scope: !3967)
!4029 = !DILocation(line: 140, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 140, column: 7)
!4031 = !DILocation(line: 140, column: 7, scope: !3967)
!4032 = !DILocation(line: 141, column: 4, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 140, column: 14)
!4034 = !DILocation(line: 143, column: 10, scope: !4033)
!4035 = !DILocation(line: 143, column: 15, scope: !4033)
!4036 = !DILocation(line: 143, column: 20, scope: !4033)
!4037 = !DILocation(line: 143, column: 4, scope: !4033)
!4038 = !DILocation(line: 144, column: 4, scope: !4033)
!4039 = !DILocation(line: 147, column: 9, scope: !3967)
!4040 = !DILocation(line: 148, column: 2, scope: !3967)
!4041 = distinct !{!4041, !3961, !4042}
!4042 = !DILocation(line: 148, column: 2, scope: !3962)
!4043 = !DILocation(line: 150, column: 2, scope: !3881)
!4044 = !DILabel(scope: !3881, name: "err_unregister_leds", file: !3, line: 152)
!4045 = !DILocation(line: 152, column: 1, scope: !3881)
!4046 = !DILocation(line: 153, column: 2, scope: !3881)
!4047 = !DILocation(line: 153, column: 9, scope: !3881)
!4048 = !DILocation(line: 153, column: 18, scope: !3881)
!4049 = !DILocalVariable(name: "led", scope: !4050, file: !3, line: 154, type: !109)
!4050 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 153, column: 24)
!4051 = !DILocation(line: 154, column: 21, scope: !4050)
!4052 = !DILocation(line: 154, column: 28, scope: !4050)
!4053 = !DILocation(line: 154, column: 34, scope: !4050)
!4054 = !DILocation(line: 154, column: 39, scope: !4050)
!4055 = !DILocation(line: 156, column: 28, scope: !4050)
!4056 = !DILocation(line: 156, column: 33, scope: !4050)
!4057 = !DILocation(line: 156, column: 3, scope: !4050)
!4058 = !DILocation(line: 157, column: 9, scope: !4050)
!4059 = !DILocation(line: 157, column: 14, scope: !4050)
!4060 = !DILocation(line: 157, column: 19, scope: !4050)
!4061 = !DILocation(line: 157, column: 3, scope: !4050)
!4062 = distinct !{!4062, !4046, !4063}
!4063 = !DILocation(line: 158, column: 2, scope: !3881)
!4064 = !DILocation(line: 160, column: 22, scope: !3881)
!4065 = !DILocation(line: 160, column: 28, scope: !3881)
!4066 = !DILocation(line: 160, column: 2, scope: !3881)
!4067 = !DILabel(scope: !3881, name: "err_unregister_handle", file: !3, line: 162)
!4068 = !DILocation(line: 162, column: 1, scope: !3881)
!4069 = !DILocation(line: 163, column: 27, scope: !3881)
!4070 = !DILocation(line: 163, column: 33, scope: !3881)
!4071 = !DILocation(line: 163, column: 2, scope: !3881)
!4072 = !DILabel(scope: !3881, name: "err_free_mem", file: !3, line: 165)
!4073 = !DILocation(line: 165, column: 1, scope: !3881)
!4074 = !DILocation(line: 166, column: 8, scope: !3881)
!4075 = !DILocation(line: 166, column: 2, scope: !3881)
!4076 = !DILocation(line: 167, column: 9, scope: !3881)
!4077 = !DILocation(line: 167, column: 2, scope: !3881)
!4078 = !DILocation(line: 168, column: 1, scope: !3881)
!4079 = distinct !DISubprogram(name: "input_leds_disconnect", scope: !3, file: !3, line: 170, type: !3804, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4080 = !DILocalVariable(name: "handle", arg: 1, scope: !4079, file: !3, line: 170, type: !3540)
!4081 = !DILocation(line: 170, column: 56, scope: !4079)
!4082 = !DILocalVariable(name: "leds", scope: !4079, file: !3, line: 172, type: !3889)
!4083 = !DILocation(line: 172, column: 21, scope: !4079)
!4084 = !DILocation(line: 172, column: 28, scope: !4079)
!4085 = !DILocation(line: 172, column: 36, scope: !4079)
!4086 = !DILocalVariable(name: "i", scope: !4079, file: !3, line: 173, type: !100)
!4087 = !DILocation(line: 173, column: 6, scope: !4079)
!4088 = !DILocation(line: 175, column: 9, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 175, column: 2)
!4090 = !DILocation(line: 175, column: 7, scope: !4089)
!4091 = !DILocation(line: 175, column: 14, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 175, column: 2)
!4093 = !DILocation(line: 175, column: 18, scope: !4092)
!4094 = !DILocation(line: 175, column: 24, scope: !4092)
!4095 = !DILocation(line: 175, column: 16, scope: !4092)
!4096 = !DILocation(line: 175, column: 2, scope: !4089)
!4097 = !DILocalVariable(name: "led", scope: !4098, file: !3, line: 176, type: !109)
!4098 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 175, column: 39)
!4099 = !DILocation(line: 176, column: 21, scope: !4098)
!4100 = !DILocation(line: 176, column: 28, scope: !4098)
!4101 = !DILocation(line: 176, column: 34, scope: !4098)
!4102 = !DILocation(line: 176, column: 39, scope: !4098)
!4103 = !DILocation(line: 178, column: 28, scope: !4098)
!4104 = !DILocation(line: 178, column: 33, scope: !4098)
!4105 = !DILocation(line: 178, column: 3, scope: !4098)
!4106 = !DILocation(line: 179, column: 9, scope: !4098)
!4107 = !DILocation(line: 179, column: 14, scope: !4098)
!4108 = !DILocation(line: 179, column: 19, scope: !4098)
!4109 = !DILocation(line: 179, column: 3, scope: !4098)
!4110 = !DILocation(line: 180, column: 2, scope: !4098)
!4111 = !DILocation(line: 175, column: 35, scope: !4092)
!4112 = !DILocation(line: 175, column: 2, scope: !4092)
!4113 = distinct !{!4113, !4096, !4114}
!4114 = !DILocation(line: 180, column: 2, scope: !4089)
!4115 = !DILocation(line: 182, column: 21, scope: !4079)
!4116 = !DILocation(line: 182, column: 2, scope: !4079)
!4117 = !DILocation(line: 183, column: 26, scope: !4079)
!4118 = !DILocation(line: 183, column: 2, scope: !4079)
!4119 = !DILocation(line: 185, column: 8, scope: !4079)
!4120 = !DILocation(line: 185, column: 2, scope: !4079)
!4121 = !DILocation(line: 186, column: 1, scope: !4079)
!4122 = distinct !DISubprogram(name: "input_leds_get_count", scope: !3, file: !3, line: 71, type: !3718, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4123 = !DILocalVariable(name: "dev", arg: 1, scope: !4122, file: !3, line: 71, type: !3548)
!4124 = !DILocation(line: 71, column: 51, scope: !4122)
!4125 = !DILocalVariable(name: "led_code", scope: !4122, file: !3, line: 73, type: !7)
!4126 = !DILocation(line: 73, column: 15, scope: !4122)
!4127 = !DILocalVariable(name: "count", scope: !4122, file: !3, line: 74, type: !100)
!4128 = !DILocation(line: 74, column: 6, scope: !4122)
!4129 = !DILocation(line: 76, column: 2, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 76, column: 2)
!4131 = !DILocation(line: 76, column: 2, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 76, column: 2)
!4133 = !DILocation(line: 77, column: 22, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 77, column: 7)
!4135 = !DILocation(line: 77, column: 7, scope: !4134)
!4136 = !DILocation(line: 77, column: 32, scope: !4134)
!4137 = !DILocation(line: 77, column: 7, scope: !4132)
!4138 = !DILocation(line: 78, column: 9, scope: !4134)
!4139 = !DILocation(line: 78, column: 4, scope: !4134)
!4140 = distinct !{!4140, !4129, !4141}
!4141 = !DILocation(line: 78, column: 9, scope: !4130)
!4142 = !DILocation(line: 80, column: 9, scope: !4122)
!4143 = !DILocation(line: 80, column: 2, scope: !4122)
!4144 = distinct !DISubprogram(name: "kzalloc", scope: !88, file: !88, line: 662, type: !4145, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!103, !104, !101}
!4147 = !DILocalVariable(name: "s", arg: 1, scope: !4148, file: !88, line: 445, type: !877)
!4148 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !88, file: !88, line: 445, type: !4149, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!103, !877, !101, !104}
!4151 = !DILocation(line: 445, column: 72, scope: !4148, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 552, column: 10, scope: !4153, inlinedAt: !4156)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !88, line: 540, column: 34)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !88, line: 540, column: 6)
!4155 = distinct !DISubprogram(name: "kmalloc", scope: !88, file: !88, line: 538, type: !4145, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4156 = distinct !DILocation(line: 664, column: 9, scope: !4144)
!4157 = !DILocalVariable(name: "flags", arg: 2, scope: !4148, file: !88, line: 446, type: !101)
!4158 = !DILocation(line: 446, column: 9, scope: !4148, inlinedAt: !4152)
!4159 = !DILocalVariable(name: "size", arg: 3, scope: !4148, file: !88, line: 446, type: !104)
!4160 = !DILocation(line: 446, column: 23, scope: !4148, inlinedAt: !4152)
!4161 = !DILocalVariable(name: "ret", scope: !4148, file: !88, line: 448, type: !103)
!4162 = !DILocation(line: 448, column: 8, scope: !4148, inlinedAt: !4152)
!4163 = !DILocalVariable(name: "flags", arg: 1, scope: !4164, file: !88, line: 318, type: !101)
!4164 = distinct !DISubprogram(name: "kmalloc_type", scope: !88, file: !88, line: 318, type: !4165, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!87, !101}
!4167 = !DILocation(line: 318, column: 67, scope: !4164, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 553, column: 20, scope: !4153, inlinedAt: !4156)
!4169 = !DILocalVariable(name: "size", arg: 1, scope: !4170, file: !88, line: 346, type: !104)
!4170 = distinct !DISubprogram(name: "kmalloc_index", scope: !88, file: !88, line: 346, type: !4171, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!7, !104}
!4173 = !DILocation(line: 346, column: 58, scope: !4170, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 547, column: 11, scope: !4153, inlinedAt: !4156)
!4175 = !DILocalVariable(name: "size", arg: 1, scope: !4176, file: !88, line: 472, type: !104)
!4176 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !88, file: !88, line: 472, type: !4177, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!103, !104, !101, !7}
!4179 = !DILocation(line: 472, column: 28, scope: !4176, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 481, column: 9, scope: !4181, inlinedAt: !4182)
!4181 = distinct !DISubprogram(name: "kmalloc_large", scope: !88, file: !88, line: 478, type: !4145, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4182 = distinct !DILocation(line: 545, column: 11, scope: !4183, inlinedAt: !4156)
!4183 = distinct !DILexicalBlock(scope: !4153, file: !88, line: 544, column: 7)
!4184 = !DILocalVariable(name: "flags", arg: 2, scope: !4176, file: !88, line: 472, type: !101)
!4185 = !DILocation(line: 472, column: 40, scope: !4176, inlinedAt: !4180)
!4186 = !DILocalVariable(name: "order", arg: 3, scope: !4176, file: !88, line: 472, type: !7)
!4187 = !DILocation(line: 472, column: 60, scope: !4176, inlinedAt: !4180)
!4188 = !DILocalVariable(name: "size", arg: 1, scope: !4181, file: !88, line: 478, type: !104)
!4189 = !DILocation(line: 478, column: 51, scope: !4181, inlinedAt: !4182)
!4190 = !DILocalVariable(name: "flags", arg: 2, scope: !4181, file: !88, line: 478, type: !101)
!4191 = !DILocation(line: 478, column: 63, scope: !4181, inlinedAt: !4182)
!4192 = !DILocalVariable(name: "order", scope: !4181, file: !88, line: 480, type: !7)
!4193 = !DILocation(line: 480, column: 15, scope: !4181, inlinedAt: !4182)
!4194 = !DILocalVariable(name: "size", arg: 1, scope: !4155, file: !88, line: 538, type: !104)
!4195 = !DILocation(line: 538, column: 45, scope: !4155, inlinedAt: !4156)
!4196 = !DILocalVariable(name: "flags", arg: 2, scope: !4155, file: !88, line: 538, type: !101)
!4197 = !DILocation(line: 538, column: 57, scope: !4155, inlinedAt: !4156)
!4198 = !DILocalVariable(name: "index", scope: !4153, file: !88, line: 542, type: !7)
!4199 = !DILocation(line: 542, column: 16, scope: !4153, inlinedAt: !4156)
!4200 = !DILocalVariable(name: "size", arg: 1, scope: !4144, file: !88, line: 662, type: !104)
!4201 = !DILocation(line: 662, column: 36, scope: !4144)
!4202 = !DILocalVariable(name: "flags", arg: 2, scope: !4144, file: !88, line: 662, type: !101)
!4203 = !DILocation(line: 662, column: 48, scope: !4144)
!4204 = !DILocation(line: 664, column: 17, scope: !4144)
!4205 = !DILocation(line: 664, column: 23, scope: !4144)
!4206 = !DILocation(line: 664, column: 29, scope: !4144)
!4207 = !DILocation(line: 540, column: 27, scope: !4154, inlinedAt: !4156)
!4208 = !DILocation(line: 540, column: 6, scope: !4154, inlinedAt: !4156)
!4209 = !DILocation(line: 540, column: 6, scope: !4155, inlinedAt: !4156)
!4210 = !DILocation(line: 544, column: 7, scope: !4183, inlinedAt: !4156)
!4211 = !DILocation(line: 544, column: 12, scope: !4183, inlinedAt: !4156)
!4212 = !DILocation(line: 544, column: 7, scope: !4153, inlinedAt: !4156)
!4213 = !DILocation(line: 545, column: 25, scope: !4183, inlinedAt: !4156)
!4214 = !DILocation(line: 545, column: 31, scope: !4183, inlinedAt: !4156)
!4215 = !DILocation(line: 480, column: 33, scope: !4181, inlinedAt: !4182)
!4216 = !DILocation(line: 480, column: 23, scope: !4181, inlinedAt: !4182)
!4217 = !DILocation(line: 481, column: 29, scope: !4181, inlinedAt: !4182)
!4218 = !DILocation(line: 481, column: 35, scope: !4181, inlinedAt: !4182)
!4219 = !DILocation(line: 481, column: 42, scope: !4181, inlinedAt: !4182)
!4220 = !DILocation(line: 474, column: 23, scope: !4176, inlinedAt: !4180)
!4221 = !DILocation(line: 474, column: 29, scope: !4176, inlinedAt: !4180)
!4222 = !DILocation(line: 474, column: 36, scope: !4176, inlinedAt: !4180)
!4223 = !DILocation(line: 474, column: 9, scope: !4176, inlinedAt: !4180)
!4224 = !DILocation(line: 545, column: 4, scope: !4183, inlinedAt: !4156)
!4225 = !DILocation(line: 547, column: 25, scope: !4153, inlinedAt: !4156)
!4226 = !DILocation(line: 348, column: 7, scope: !4227, inlinedAt: !4174)
!4227 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 348, column: 6)
!4228 = !DILocation(line: 348, column: 6, scope: !4170, inlinedAt: !4174)
!4229 = !DILocation(line: 349, column: 3, scope: !4227, inlinedAt: !4174)
!4230 = !DILocation(line: 351, column: 6, scope: !4231, inlinedAt: !4174)
!4231 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 351, column: 6)
!4232 = !DILocation(line: 351, column: 11, scope: !4231, inlinedAt: !4174)
!4233 = !DILocation(line: 351, column: 6, scope: !4170, inlinedAt: !4174)
!4234 = !DILocation(line: 352, column: 3, scope: !4231, inlinedAt: !4174)
!4235 = !DILocation(line: 354, column: 32, scope: !4236, inlinedAt: !4174)
!4236 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 354, column: 6)
!4237 = !DILocation(line: 354, column: 37, scope: !4236, inlinedAt: !4174)
!4238 = !DILocation(line: 354, column: 42, scope: !4236, inlinedAt: !4174)
!4239 = !DILocation(line: 354, column: 45, scope: !4236, inlinedAt: !4174)
!4240 = !DILocation(line: 354, column: 50, scope: !4236, inlinedAt: !4174)
!4241 = !DILocation(line: 354, column: 6, scope: !4170, inlinedAt: !4174)
!4242 = !DILocation(line: 355, column: 3, scope: !4236, inlinedAt: !4174)
!4243 = !DILocation(line: 356, column: 32, scope: !4244, inlinedAt: !4174)
!4244 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 356, column: 6)
!4245 = !DILocation(line: 356, column: 37, scope: !4244, inlinedAt: !4174)
!4246 = !DILocation(line: 356, column: 43, scope: !4244, inlinedAt: !4174)
!4247 = !DILocation(line: 356, column: 46, scope: !4244, inlinedAt: !4174)
!4248 = !DILocation(line: 356, column: 51, scope: !4244, inlinedAt: !4174)
!4249 = !DILocation(line: 356, column: 6, scope: !4170, inlinedAt: !4174)
!4250 = !DILocation(line: 357, column: 3, scope: !4244, inlinedAt: !4174)
!4251 = !DILocation(line: 358, column: 6, scope: !4252, inlinedAt: !4174)
!4252 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 358, column: 6)
!4253 = !DILocation(line: 358, column: 11, scope: !4252, inlinedAt: !4174)
!4254 = !DILocation(line: 358, column: 6, scope: !4170, inlinedAt: !4174)
!4255 = !DILocation(line: 358, column: 26, scope: !4252, inlinedAt: !4174)
!4256 = !DILocation(line: 359, column: 6, scope: !4257, inlinedAt: !4174)
!4257 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 359, column: 6)
!4258 = !DILocation(line: 359, column: 11, scope: !4257, inlinedAt: !4174)
!4259 = !DILocation(line: 359, column: 6, scope: !4170, inlinedAt: !4174)
!4260 = !DILocation(line: 359, column: 26, scope: !4257, inlinedAt: !4174)
!4261 = !DILocation(line: 360, column: 6, scope: !4262, inlinedAt: !4174)
!4262 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 360, column: 6)
!4263 = !DILocation(line: 360, column: 11, scope: !4262, inlinedAt: !4174)
!4264 = !DILocation(line: 360, column: 6, scope: !4170, inlinedAt: !4174)
!4265 = !DILocation(line: 360, column: 26, scope: !4262, inlinedAt: !4174)
!4266 = !DILocation(line: 361, column: 6, scope: !4267, inlinedAt: !4174)
!4267 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 361, column: 6)
!4268 = !DILocation(line: 361, column: 11, scope: !4267, inlinedAt: !4174)
!4269 = !DILocation(line: 361, column: 6, scope: !4170, inlinedAt: !4174)
!4270 = !DILocation(line: 361, column: 26, scope: !4267, inlinedAt: !4174)
!4271 = !DILocation(line: 362, column: 6, scope: !4272, inlinedAt: !4174)
!4272 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 362, column: 6)
!4273 = !DILocation(line: 362, column: 11, scope: !4272, inlinedAt: !4174)
!4274 = !DILocation(line: 362, column: 6, scope: !4170, inlinedAt: !4174)
!4275 = !DILocation(line: 362, column: 26, scope: !4272, inlinedAt: !4174)
!4276 = !DILocation(line: 363, column: 6, scope: !4277, inlinedAt: !4174)
!4277 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 363, column: 6)
!4278 = !DILocation(line: 363, column: 11, scope: !4277, inlinedAt: !4174)
!4279 = !DILocation(line: 363, column: 6, scope: !4170, inlinedAt: !4174)
!4280 = !DILocation(line: 363, column: 26, scope: !4277, inlinedAt: !4174)
!4281 = !DILocation(line: 364, column: 6, scope: !4282, inlinedAt: !4174)
!4282 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 364, column: 6)
!4283 = !DILocation(line: 364, column: 11, scope: !4282, inlinedAt: !4174)
!4284 = !DILocation(line: 364, column: 6, scope: !4170, inlinedAt: !4174)
!4285 = !DILocation(line: 364, column: 26, scope: !4282, inlinedAt: !4174)
!4286 = !DILocation(line: 365, column: 6, scope: !4287, inlinedAt: !4174)
!4287 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 365, column: 6)
!4288 = !DILocation(line: 365, column: 11, scope: !4287, inlinedAt: !4174)
!4289 = !DILocation(line: 365, column: 6, scope: !4170, inlinedAt: !4174)
!4290 = !DILocation(line: 365, column: 26, scope: !4287, inlinedAt: !4174)
!4291 = !DILocation(line: 366, column: 6, scope: !4292, inlinedAt: !4174)
!4292 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 366, column: 6)
!4293 = !DILocation(line: 366, column: 11, scope: !4292, inlinedAt: !4174)
!4294 = !DILocation(line: 366, column: 6, scope: !4170, inlinedAt: !4174)
!4295 = !DILocation(line: 366, column: 26, scope: !4292, inlinedAt: !4174)
!4296 = !DILocation(line: 367, column: 6, scope: !4297, inlinedAt: !4174)
!4297 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 367, column: 6)
!4298 = !DILocation(line: 367, column: 11, scope: !4297, inlinedAt: !4174)
!4299 = !DILocation(line: 367, column: 6, scope: !4170, inlinedAt: !4174)
!4300 = !DILocation(line: 367, column: 26, scope: !4297, inlinedAt: !4174)
!4301 = !DILocation(line: 368, column: 6, scope: !4302, inlinedAt: !4174)
!4302 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 368, column: 6)
!4303 = !DILocation(line: 368, column: 11, scope: !4302, inlinedAt: !4174)
!4304 = !DILocation(line: 368, column: 6, scope: !4170, inlinedAt: !4174)
!4305 = !DILocation(line: 368, column: 26, scope: !4302, inlinedAt: !4174)
!4306 = !DILocation(line: 369, column: 6, scope: !4307, inlinedAt: !4174)
!4307 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 369, column: 6)
!4308 = !DILocation(line: 369, column: 11, scope: !4307, inlinedAt: !4174)
!4309 = !DILocation(line: 369, column: 6, scope: !4170, inlinedAt: !4174)
!4310 = !DILocation(line: 369, column: 26, scope: !4307, inlinedAt: !4174)
!4311 = !DILocation(line: 370, column: 6, scope: !4312, inlinedAt: !4174)
!4312 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 370, column: 6)
!4313 = !DILocation(line: 370, column: 11, scope: !4312, inlinedAt: !4174)
!4314 = !DILocation(line: 370, column: 6, scope: !4170, inlinedAt: !4174)
!4315 = !DILocation(line: 370, column: 26, scope: !4312, inlinedAt: !4174)
!4316 = !DILocation(line: 371, column: 6, scope: !4317, inlinedAt: !4174)
!4317 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 371, column: 6)
!4318 = !DILocation(line: 371, column: 11, scope: !4317, inlinedAt: !4174)
!4319 = !DILocation(line: 371, column: 6, scope: !4170, inlinedAt: !4174)
!4320 = !DILocation(line: 371, column: 26, scope: !4317, inlinedAt: !4174)
!4321 = !DILocation(line: 372, column: 6, scope: !4322, inlinedAt: !4174)
!4322 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 372, column: 6)
!4323 = !DILocation(line: 372, column: 11, scope: !4322, inlinedAt: !4174)
!4324 = !DILocation(line: 372, column: 6, scope: !4170, inlinedAt: !4174)
!4325 = !DILocation(line: 372, column: 26, scope: !4322, inlinedAt: !4174)
!4326 = !DILocation(line: 373, column: 6, scope: !4327, inlinedAt: !4174)
!4327 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 373, column: 6)
!4328 = !DILocation(line: 373, column: 11, scope: !4327, inlinedAt: !4174)
!4329 = !DILocation(line: 373, column: 6, scope: !4170, inlinedAt: !4174)
!4330 = !DILocation(line: 373, column: 26, scope: !4327, inlinedAt: !4174)
!4331 = !DILocation(line: 374, column: 6, scope: !4332, inlinedAt: !4174)
!4332 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 374, column: 6)
!4333 = !DILocation(line: 374, column: 11, scope: !4332, inlinedAt: !4174)
!4334 = !DILocation(line: 374, column: 6, scope: !4170, inlinedAt: !4174)
!4335 = !DILocation(line: 374, column: 26, scope: !4332, inlinedAt: !4174)
!4336 = !DILocation(line: 375, column: 6, scope: !4337, inlinedAt: !4174)
!4337 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 375, column: 6)
!4338 = !DILocation(line: 375, column: 11, scope: !4337, inlinedAt: !4174)
!4339 = !DILocation(line: 375, column: 6, scope: !4170, inlinedAt: !4174)
!4340 = !DILocation(line: 375, column: 27, scope: !4337, inlinedAt: !4174)
!4341 = !DILocation(line: 376, column: 6, scope: !4342, inlinedAt: !4174)
!4342 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 376, column: 6)
!4343 = !DILocation(line: 376, column: 11, scope: !4342, inlinedAt: !4174)
!4344 = !DILocation(line: 376, column: 6, scope: !4170, inlinedAt: !4174)
!4345 = !DILocation(line: 376, column: 32, scope: !4342, inlinedAt: !4174)
!4346 = !DILocation(line: 377, column: 6, scope: !4347, inlinedAt: !4174)
!4347 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 377, column: 6)
!4348 = !DILocation(line: 377, column: 11, scope: !4347, inlinedAt: !4174)
!4349 = !DILocation(line: 377, column: 6, scope: !4170, inlinedAt: !4174)
!4350 = !DILocation(line: 377, column: 32, scope: !4347, inlinedAt: !4174)
!4351 = !DILocation(line: 378, column: 6, scope: !4352, inlinedAt: !4174)
!4352 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 378, column: 6)
!4353 = !DILocation(line: 378, column: 11, scope: !4352, inlinedAt: !4174)
!4354 = !DILocation(line: 378, column: 6, scope: !4170, inlinedAt: !4174)
!4355 = !DILocation(line: 378, column: 32, scope: !4352, inlinedAt: !4174)
!4356 = !DILocation(line: 379, column: 6, scope: !4357, inlinedAt: !4174)
!4357 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 379, column: 6)
!4358 = !DILocation(line: 379, column: 11, scope: !4357, inlinedAt: !4174)
!4359 = !DILocation(line: 379, column: 6, scope: !4170, inlinedAt: !4174)
!4360 = !DILocation(line: 379, column: 33, scope: !4357, inlinedAt: !4174)
!4361 = !DILocation(line: 380, column: 6, scope: !4362, inlinedAt: !4174)
!4362 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 380, column: 6)
!4363 = !DILocation(line: 380, column: 11, scope: !4362, inlinedAt: !4174)
!4364 = !DILocation(line: 380, column: 6, scope: !4170, inlinedAt: !4174)
!4365 = !DILocation(line: 380, column: 33, scope: !4362, inlinedAt: !4174)
!4366 = !DILocation(line: 381, column: 6, scope: !4367, inlinedAt: !4174)
!4367 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 381, column: 6)
!4368 = !DILocation(line: 381, column: 11, scope: !4367, inlinedAt: !4174)
!4369 = !DILocation(line: 381, column: 6, scope: !4170, inlinedAt: !4174)
!4370 = !DILocation(line: 381, column: 33, scope: !4367, inlinedAt: !4174)
!4371 = !DILocation(line: 382, column: 2, scope: !4372, inlinedAt: !4174)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !88, line: 382, column: 2)
!4373 = distinct !DILexicalBlock(scope: !4170, file: !88, line: 382, column: 2)
!4374 = !{i32 -2144650099, i32 -2144650070, i32 -2144650024, i32 -2144649966, i32 -2144649912, i32 -2144649858, i32 -2144649803, i32 -2144649772}
!4375 = !DILocation(line: 382, column: 2, scope: !4376, inlinedAt: !4174)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !88, line: 382, column: 2)
!4377 = distinct !DILexicalBlock(scope: !4373, file: !88, line: 382, column: 2)
!4378 = !{i32 -2144649329, i32 -2144649322, i32 -2144649268, i32 -2144649237, i32 -2144649207}
!4379 = !DILocation(line: 382, column: 2, scope: !4377, inlinedAt: !4174)
!4380 = !DILocation(line: 386, column: 1, scope: !4170, inlinedAt: !4174)
!4381 = !DILocation(line: 547, column: 9, scope: !4153, inlinedAt: !4156)
!4382 = !DILocation(line: 549, column: 8, scope: !4383, inlinedAt: !4156)
!4383 = distinct !DILexicalBlock(scope: !4153, file: !88, line: 549, column: 7)
!4384 = !DILocation(line: 549, column: 7, scope: !4153, inlinedAt: !4156)
!4385 = !DILocation(line: 550, column: 4, scope: !4383, inlinedAt: !4156)
!4386 = !DILocation(line: 553, column: 33, scope: !4153, inlinedAt: !4156)
!4387 = !DILocation(line: 325, column: 6, scope: !4388, inlinedAt: !4168)
!4388 = distinct !DILexicalBlock(scope: !4164, file: !88, line: 325, column: 6)
!4389 = !DILocation(line: 325, column: 6, scope: !4164, inlinedAt: !4168)
!4390 = !DILocation(line: 326, column: 3, scope: !4388, inlinedAt: !4168)
!4391 = !DILocation(line: 332, column: 9, scope: !4164, inlinedAt: !4168)
!4392 = !DILocation(line: 332, column: 15, scope: !4164, inlinedAt: !4168)
!4393 = !DILocation(line: 332, column: 2, scope: !4164, inlinedAt: !4168)
!4394 = !DILocation(line: 336, column: 1, scope: !4164, inlinedAt: !4168)
!4395 = !DILocation(line: 553, column: 5, scope: !4153, inlinedAt: !4156)
!4396 = !DILocation(line: 553, column: 41, scope: !4153, inlinedAt: !4156)
!4397 = !DILocation(line: 554, column: 5, scope: !4153, inlinedAt: !4156)
!4398 = !DILocation(line: 554, column: 12, scope: !4153, inlinedAt: !4156)
!4399 = !DILocation(line: 448, column: 31, scope: !4148, inlinedAt: !4152)
!4400 = !DILocation(line: 448, column: 34, scope: !4148, inlinedAt: !4152)
!4401 = !DILocation(line: 448, column: 14, scope: !4148, inlinedAt: !4152)
!4402 = !DILocation(line: 450, column: 22, scope: !4148, inlinedAt: !4152)
!4403 = !DILocation(line: 450, column: 25, scope: !4148, inlinedAt: !4152)
!4404 = !DILocation(line: 450, column: 30, scope: !4148, inlinedAt: !4152)
!4405 = !DILocation(line: 450, column: 36, scope: !4148, inlinedAt: !4152)
!4406 = !DILocation(line: 450, column: 8, scope: !4148, inlinedAt: !4152)
!4407 = !DILocation(line: 450, column: 6, scope: !4148, inlinedAt: !4152)
!4408 = !DILocation(line: 451, column: 9, scope: !4148, inlinedAt: !4152)
!4409 = !DILocation(line: 552, column: 3, scope: !4153, inlinedAt: !4156)
!4410 = !DILocation(line: 557, column: 19, scope: !4155, inlinedAt: !4156)
!4411 = !DILocation(line: 557, column: 25, scope: !4155, inlinedAt: !4156)
!4412 = !DILocation(line: 557, column: 9, scope: !4155, inlinedAt: !4156)
!4413 = !DILocation(line: 557, column: 2, scope: !4155, inlinedAt: !4156)
!4414 = !DILocation(line: 558, column: 1, scope: !4155, inlinedAt: !4156)
!4415 = !DILocation(line: 664, column: 2, scope: !4144)
!4416 = distinct !DISubprogram(name: "__ab_c_size", scope: !4417, file: !4417, line: 301, type: !4418, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4417 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!104, !104, !104, !104}
!4420 = !DILocalVariable(name: "a", arg: 1, scope: !4416, file: !4417, line: 301, type: !104)
!4421 = !DILocation(line: 301, column: 54, scope: !4416)
!4422 = !DILocalVariable(name: "b", arg: 2, scope: !4416, file: !4417, line: 301, type: !104)
!4423 = !DILocation(line: 301, column: 64, scope: !4416)
!4424 = !DILocalVariable(name: "c", arg: 3, scope: !4416, file: !4417, line: 301, type: !104)
!4425 = !DILocation(line: 301, column: 74, scope: !4416)
!4426 = !DILocalVariable(name: "bytes", scope: !4416, file: !4417, line: 303, type: !104)
!4427 = !DILocation(line: 303, column: 9, scope: !4416)
!4428 = !DILocalVariable(name: "__a", scope: !4429, file: !4417, line: 305, type: !104)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !4417, line: 305, column: 6)
!4430 = distinct !DILexicalBlock(scope: !4416, file: !4417, line: 305, column: 6)
!4431 = !DILocation(line: 305, column: 6, scope: !4429)
!4432 = !DILocalVariable(name: "__b", scope: !4429, file: !4417, line: 305, type: !104)
!4433 = !DILocalVariable(name: "__d", scope: !4429, file: !4417, line: 305, type: !4434)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!4435 = !DILocation(line: 305, column: 6, scope: !4430)
!4436 = !DILocation(line: 305, column: 6, scope: !4416)
!4437 = !DILocation(line: 306, column: 3, scope: !4430)
!4438 = !DILocalVariable(name: "__a", scope: !4439, file: !4417, line: 307, type: !104)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !4417, line: 307, column: 6)
!4440 = distinct !DILexicalBlock(scope: !4416, file: !4417, line: 307, column: 6)
!4441 = !DILocation(line: 307, column: 6, scope: !4439)
!4442 = !DILocalVariable(name: "__b", scope: !4439, file: !4417, line: 307, type: !104)
!4443 = !DILocalVariable(name: "__d", scope: !4439, file: !4417, line: 307, type: !4434)
!4444 = !DILocation(line: 307, column: 6, scope: !4440)
!4445 = !DILocation(line: 307, column: 6, scope: !4416)
!4446 = !DILocation(line: 308, column: 3, scope: !4440)
!4447 = !DILocation(line: 310, column: 9, scope: !4416)
!4448 = !DILocation(line: 310, column: 2, scope: !4416)
!4449 = !DILocation(line: 311, column: 1, scope: !4416)
!4450 = distinct !DISubprogram(name: "dev_name", scope: !60, file: !60, line: 609, type: !4451, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!116, !4453}
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!4455 = !DILocalVariable(name: "dev", arg: 1, scope: !4450, file: !60, line: 609, type: !4453)
!4456 = !DILocation(line: 609, column: 57, scope: !4450)
!4457 = !DILocation(line: 612, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4450, file: !60, line: 612, column: 6)
!4459 = !DILocation(line: 612, column: 11, scope: !4458)
!4460 = !DILocation(line: 612, column: 6, scope: !4450)
!4461 = !DILocation(line: 613, column: 10, scope: !4458)
!4462 = !DILocation(line: 613, column: 15, scope: !4458)
!4463 = !DILocation(line: 613, column: 3, scope: !4458)
!4464 = !DILocation(line: 615, column: 23, scope: !4450)
!4465 = !DILocation(line: 615, column: 28, scope: !4450)
!4466 = !DILocation(line: 615, column: 9, scope: !4450)
!4467 = !DILocation(line: 615, column: 2, scope: !4450)
!4468 = !DILocation(line: 616, column: 1, scope: !4450)
!4469 = distinct !DISubprogram(name: "input_leds_brightness_get", scope: !3, file: !3, line: 50, type: !134, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4470 = !DILocalVariable(name: "cdev", arg: 1, scope: !4469, file: !3, line: 50, type: !127)
!4471 = !DILocation(line: 50, column: 75, scope: !4469)
!4472 = !DILocalVariable(name: "led", scope: !4469, file: !3, line: 52, type: !109)
!4473 = !DILocation(line: 52, column: 20, scope: !4469)
!4474 = !DILocalVariable(name: "__mptr", scope: !4475, file: !3, line: 52, type: !103)
!4475 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 52, column: 26)
!4476 = !DILocation(line: 52, column: 26, scope: !4475)
!4477 = !DILocation(line: 52, column: 26, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 52, column: 26)
!4479 = !DILocalVariable(name: "input", scope: !4469, file: !3, line: 53, type: !3548)
!4480 = !DILocation(line: 53, column: 20, scope: !4469)
!4481 = !DILocation(line: 53, column: 28, scope: !4469)
!4482 = !DILocation(line: 53, column: 33, scope: !4469)
!4483 = !DILocation(line: 53, column: 41, scope: !4469)
!4484 = !DILocation(line: 55, column: 18, scope: !4469)
!4485 = !DILocation(line: 55, column: 23, scope: !4469)
!4486 = !DILocation(line: 55, column: 29, scope: !4469)
!4487 = !DILocation(line: 55, column: 36, scope: !4469)
!4488 = !DILocation(line: 55, column: 9, scope: !4469)
!4489 = !DILocation(line: 55, column: 43, scope: !4469)
!4490 = !DILocation(line: 55, column: 49, scope: !4469)
!4491 = !DILocation(line: 55, column: 2, scope: !4469)
!4492 = distinct !DISubprogram(name: "input_leds_brightness_set", scope: !3, file: !3, line: 58, type: !125, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4493 = !DILocalVariable(name: "cdev", arg: 1, scope: !4492, file: !3, line: 58, type: !127)
!4494 = !DILocation(line: 58, column: 60, scope: !4492)
!4495 = !DILocalVariable(name: "brightness", arg: 2, scope: !4492, file: !3, line: 59, type: !80)
!4496 = !DILocation(line: 59, column: 31, scope: !4492)
!4497 = !DILocalVariable(name: "led", scope: !4492, file: !3, line: 61, type: !109)
!4498 = !DILocation(line: 61, column: 20, scope: !4492)
!4499 = !DILocalVariable(name: "__mptr", scope: !4500, file: !3, line: 61, type: !103)
!4500 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 61, column: 26)
!4501 = !DILocation(line: 61, column: 26, scope: !4500)
!4502 = !DILocation(line: 61, column: 26, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 61, column: 26)
!4504 = !DILocation(line: 63, column: 21, scope: !4492)
!4505 = !DILocation(line: 63, column: 26, scope: !4492)
!4506 = !DILocation(line: 63, column: 42, scope: !4492)
!4507 = !DILocation(line: 63, column: 47, scope: !4492)
!4508 = !DILocation(line: 63, column: 55, scope: !4492)
!4509 = !DILocation(line: 63, column: 54, scope: !4492)
!4510 = !DILocation(line: 63, column: 53, scope: !4492)
!4511 = !DILocation(line: 63, column: 2, scope: !4492)
!4512 = !DILocation(line: 64, column: 1, scope: !4492)
!4513 = distinct !DISubprogram(name: "led_classdev_register", scope: !81, file: !81, line: 187, type: !4514, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!100, !159, !127}
!4516 = !DILocalVariable(name: "parent", arg: 1, scope: !4513, file: !81, line: 187, type: !159)
!4517 = !DILocation(line: 187, column: 56, scope: !4513)
!4518 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !4513, file: !81, line: 188, type: !127)
!4519 = !DILocation(line: 188, column: 27, scope: !4513)
!4520 = !DILocation(line: 190, column: 35, scope: !4513)
!4521 = !DILocation(line: 190, column: 43, scope: !4513)
!4522 = !DILocation(line: 190, column: 9, scope: !4513)
!4523 = !DILocation(line: 190, column: 2, scope: !4513)
!4524 = distinct !DISubprogram(name: "get_order", scope: !4525, file: !4525, line: 29, type: !4526, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4525 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!100, !108}
!4528 = !DILocalVariable(name: "x", arg: 1, scope: !4529, file: !4530, line: 366, type: !361)
!4529 = distinct !DISubprogram(name: "fls64", scope: !4530, file: !4530, line: 366, type: !4531, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4530 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!100, !361}
!4533 = !DILocation(line: 366, column: 40, scope: !4529, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 46, column: 9, scope: !4524)
!4535 = !DILocalVariable(name: "bitpos", scope: !4529, file: !4530, line: 368, type: !100)
!4536 = !DILocation(line: 368, column: 6, scope: !4529, inlinedAt: !4534)
!4537 = !DILocalVariable(name: "size", arg: 1, scope: !4524, file: !4525, line: 29, type: !108)
!4538 = !DILocation(line: 29, column: 63, scope: !4524)
!4539 = !DILocation(line: 31, column: 27, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 31, column: 6)
!4541 = !DILocation(line: 31, column: 6, scope: !4540)
!4542 = !DILocation(line: 31, column: 6, scope: !4524)
!4543 = !DILocation(line: 32, column: 8, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !4525, line: 32, column: 7)
!4545 = distinct !DILexicalBlock(scope: !4540, file: !4525, line: 31, column: 34)
!4546 = !DILocation(line: 32, column: 7, scope: !4545)
!4547 = !DILocation(line: 33, column: 4, scope: !4544)
!4548 = !DILocation(line: 35, column: 7, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4545, file: !4525, line: 35, column: 7)
!4550 = !DILocation(line: 35, column: 12, scope: !4549)
!4551 = !DILocation(line: 35, column: 7, scope: !4545)
!4552 = !DILocation(line: 36, column: 4, scope: !4549)
!4553 = !DILocation(line: 38, column: 10, scope: !4545)
!4554 = !DILocation(line: 38, column: 28, scope: !4545)
!4555 = !DILocation(line: 38, column: 41, scope: !4545)
!4556 = !DILocation(line: 38, column: 3, scope: !4545)
!4557 = !DILocation(line: 41, column: 6, scope: !4524)
!4558 = !DILocation(line: 42, column: 7, scope: !4524)
!4559 = !DILocation(line: 46, column: 15, scope: !4524)
!4560 = !DILocation(line: 374, column: 2, scope: !4529, inlinedAt: !4534)
!4561 = !DILocation(line: 376, column: 14, scope: !4529, inlinedAt: !4534)
!4562 = !{i32 244159}
!4563 = !DILocation(line: 377, column: 9, scope: !4529, inlinedAt: !4534)
!4564 = !DILocation(line: 377, column: 16, scope: !4529, inlinedAt: !4534)
!4565 = !DILocation(line: 46, column: 2, scope: !4524)
!4566 = !DILocation(line: 48, column: 1, scope: !4524)
!4567 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4568, file: !4568, line: 30, type: !4569, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4568 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!100, !360}
!4571 = !DILocation(line: 366, column: 40, scope: !4529, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 32, column: 9, scope: !4567)
!4573 = !DILocation(line: 368, column: 6, scope: !4529, inlinedAt: !4572)
!4574 = !DILocalVariable(name: "n", arg: 1, scope: !4567, file: !4568, line: 30, type: !360)
!4575 = !DILocation(line: 30, column: 21, scope: !4567)
!4576 = !DILocation(line: 32, column: 15, scope: !4567)
!4577 = !DILocation(line: 374, column: 2, scope: !4529, inlinedAt: !4572)
!4578 = !DILocation(line: 376, column: 14, scope: !4529, inlinedAt: !4572)
!4579 = !DILocation(line: 377, column: 9, scope: !4529, inlinedAt: !4572)
!4580 = !DILocation(line: 377, column: 16, scope: !4529, inlinedAt: !4572)
!4581 = !DILocation(line: 32, column: 18, scope: !4567)
!4582 = !DILocation(line: 32, column: 2, scope: !4567)
!4583 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1980, file: !1980, line: 137, type: !4584, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!103, !877, !2997, !104, !101}
!4586 = !DILocalVariable(name: "s", arg: 1, scope: !4583, file: !1980, line: 137, type: !877)
!4587 = !DILocation(line: 137, column: 54, scope: !4583)
!4588 = !DILocalVariable(name: "object", arg: 2, scope: !4583, file: !1980, line: 137, type: !2997)
!4589 = !DILocation(line: 137, column: 69, scope: !4583)
!4590 = !DILocalVariable(name: "size", arg: 3, scope: !4583, file: !1980, line: 138, type: !104)
!4591 = !DILocation(line: 138, column: 12, scope: !4583)
!4592 = !DILocalVariable(name: "flags", arg: 4, scope: !4583, file: !1980, line: 138, type: !101)
!4593 = !DILocation(line: 138, column: 24, scope: !4583)
!4594 = !DILocation(line: 140, column: 17, scope: !4583)
!4595 = !DILocation(line: 140, column: 2, scope: !4583)
!4596 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4417, file: !4417, line: 52, type: !4597, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!429, !429}
!4599 = !DILocalVariable(name: "overflow", arg: 1, scope: !4596, file: !4417, line: 52, type: !429)
!4600 = !DILocation(line: 52, column: 60, scope: !4596)
!4601 = !DILocation(line: 54, column: 9, scope: !4596)
!4602 = !DILocation(line: 54, column: 2, scope: !4596)
!4603 = distinct !DISubprogram(name: "kobject_name", scope: !164, file: !164, line: 88, type: !4604, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!116, !4606}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4608 = !DILocalVariable(name: "kobj", arg: 1, scope: !4603, file: !164, line: 88, type: !4606)
!4609 = !DILocation(line: 88, column: 62, scope: !4603)
!4610 = !DILocation(line: 90, column: 9, scope: !4603)
!4611 = !DILocation(line: 90, column: 15, scope: !4603)
!4612 = !DILocation(line: 90, column: 2, scope: !4603)
!4613 = distinct !DISubprogram(name: "test_bit", scope: !4614, file: !4614, line: 132, type: !4615, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4614 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!429, !256, !4617}
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4619)
!4619 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!4620 = !DILocalVariable(name: "nr", arg: 1, scope: !4621, file: !4530, line: 210, type: !256)
!4621 = distinct !DISubprogram(name: "variable_test_bit", scope: !4530, file: !4530, line: 210, type: !4615, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4622 = !DILocation(line: 210, column: 52, scope: !4621, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 135, column: 9, scope: !4613)
!4624 = !DILocalVariable(name: "addr", arg: 2, scope: !4621, file: !4530, line: 210, type: !4617)
!4625 = !DILocation(line: 210, column: 86, scope: !4621, inlinedAt: !4623)
!4626 = !DILocalVariable(name: "oldbit", scope: !4621, file: !4530, line: 212, type: !429)
!4627 = !DILocation(line: 212, column: 7, scope: !4621, inlinedAt: !4623)
!4628 = !DILocalVariable(name: "nr", arg: 1, scope: !4629, file: !4530, line: 204, type: !256)
!4629 = distinct !DISubprogram(name: "constant_test_bit", scope: !4530, file: !4530, line: 204, type: !4615, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4630 = !DILocation(line: 204, column: 52, scope: !4629, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 135, column: 9, scope: !4613)
!4632 = !DILocalVariable(name: "addr", arg: 2, scope: !4629, file: !4530, line: 204, type: !4617)
!4633 = !DILocation(line: 204, column: 86, scope: !4629, inlinedAt: !4631)
!4634 = !DILocalVariable(name: "v", arg: 1, scope: !4635, file: !4636, line: 69, type: !4639)
!4635 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4636, file: !4636, line: 69, type: !4637, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4636 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4639, !104}
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4641)
!4641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4642 = !DILocation(line: 69, column: 73, scope: !4635, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 134, column: 2, scope: !4613)
!4644 = !DILocalVariable(name: "size", arg: 2, scope: !4635, file: !4636, line: 69, type: !104)
!4645 = !DILocation(line: 69, column: 83, scope: !4635, inlinedAt: !4643)
!4646 = !DILocalVariable(name: "nr", arg: 1, scope: !4613, file: !4614, line: 132, type: !256)
!4647 = !DILocation(line: 132, column: 34, scope: !4613)
!4648 = !DILocalVariable(name: "addr", arg: 2, scope: !4613, file: !4614, line: 132, type: !4617)
!4649 = !DILocation(line: 132, column: 68, scope: !4613)
!4650 = !DILocation(line: 134, column: 25, scope: !4613)
!4651 = !DILocation(line: 134, column: 32, scope: !4613)
!4652 = !DILocation(line: 134, column: 30, scope: !4613)
!4653 = !DILocation(line: 71, column: 19, scope: !4635, inlinedAt: !4643)
!4654 = !DILocation(line: 71, column: 22, scope: !4635, inlinedAt: !4643)
!4655 = !DILocation(line: 71, column: 2, scope: !4635, inlinedAt: !4643)
!4656 = !DILocation(line: 72, column: 2, scope: !4635, inlinedAt: !4643)
!4657 = !DILocation(line: 135, column: 9, scope: !4613)
!4658 = !DILocation(line: 206, column: 19, scope: !4629, inlinedAt: !4631)
!4659 = !DILocation(line: 206, column: 22, scope: !4629, inlinedAt: !4631)
!4660 = !DILocation(line: 206, column: 15, scope: !4629, inlinedAt: !4631)
!4661 = !DILocation(line: 207, column: 4, scope: !4629, inlinedAt: !4631)
!4662 = !DILocation(line: 207, column: 9, scope: !4629, inlinedAt: !4631)
!4663 = !DILocation(line: 207, column: 12, scope: !4629, inlinedAt: !4631)
!4664 = !DILocation(line: 206, column: 44, scope: !4629, inlinedAt: !4631)
!4665 = !DILocation(line: 207, column: 37, scope: !4629, inlinedAt: !4631)
!4666 = !DILocation(line: 217, column: 33, scope: !4621, inlinedAt: !4623)
!4667 = !DILocation(line: 217, column: 46, scope: !4621, inlinedAt: !4623)
!4668 = !DILocation(line: 214, column: 2, scope: !4621, inlinedAt: !4623)
!4669 = !{i32 -2147198814, i32 -2147198754}
!4670 = !DILocation(line: 219, column: 9, scope: !4621, inlinedAt: !4623)
!4671 = !DILocation(line: 135, column: 2, scope: !4613)
!4672 = distinct !DISubprogram(name: "kasan_check_read", scope: !4673, file: !4673, line: 34, type: !4674, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4673 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!429, !4639, !7}
!4676 = !DILocalVariable(name: "p", arg: 1, scope: !4672, file: !4673, line: 34, type: !4639)
!4677 = !DILocation(line: 34, column: 58, scope: !4672)
!4678 = !DILocalVariable(name: "size", arg: 2, scope: !4672, file: !4673, line: 34, type: !7)
!4679 = !DILocation(line: 34, column: 74, scope: !4672)
!4680 = !DILocation(line: 36, column: 2, scope: !4672)
!4681 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4682, file: !4682, line: 178, type: !4683, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!4682 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4683 = !DISubroutineType(types: !4684)
!4684 = !{null, !4639, !104, !100}
!4685 = !DILocalVariable(name: "ptr", arg: 1, scope: !4681, file: !4682, line: 178, type: !4639)
!4686 = !DILocation(line: 178, column: 60, scope: !4681)
!4687 = !DILocalVariable(name: "size", arg: 2, scope: !4681, file: !4682, line: 178, type: !104)
!4688 = !DILocation(line: 178, column: 72, scope: !4681)
!4689 = !DILocalVariable(name: "type", arg: 3, scope: !4681, file: !4682, line: 179, type: !100)
!4690 = !DILocation(line: 179, column: 15, scope: !4681)
!4691 = !DILocation(line: 179, column: 23, scope: !4681)
