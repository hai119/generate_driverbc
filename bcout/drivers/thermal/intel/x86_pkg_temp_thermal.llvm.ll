; ModuleID = '../bcout/drivers/thermal/intel/x86_pkg_temp_thermal.llvm.bc'
source_filename = "drivers/thermal/intel/x86_pkg_temp_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_pkg_temp_thermal_init6:\09\09\09"
module asm ".long\09pkg_temp_thermal_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.2 }
%union.anon.2 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.52, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.33, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.10, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.11, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.12, %union.anon.16, %struct.key_restriction* }
%union.anon.10 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.11 = type { i64 }
%union.anon.12 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.13, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.13 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.16 = type { %union.key_payload }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.19, %union.anon.20, i32 }
%struct.request_queue = type opaque
%union.anon.19 = type { %struct.list_head }
%union.anon.20 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.21 }
%struct.anon.21 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.32, i32, [12 x i8] }
%union.anon.32 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.33 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.34, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.47 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.48, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.51 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i64, i64 }
%union.anon.51 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.52 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.53 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.53 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.18 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.18 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.57 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.58 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, {}*, {}*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.55, i32 }
%union.anon.55 = type { %struct.kuid_t }
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
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.62 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.63 = type { %struct.hlist_node }
%struct.zone_device = type { i32, i8, i32, i32, i32, %struct.delayed_work, %struct.thermal_zone_device*, %struct.cpumask }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.thermal_attr = type opaque
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i64 }
%struct.kmem_cache = type opaque
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.65, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.65 = type { i64, [72 x i8] }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
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

@__param_str_notify_delay_ms = internal constant [37 x i8] c"x86_pkg_temp_thermal.notify_delay_ms\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@notify_delay_ms = internal global i32 5000, align 4, !dbg !4122
@__param_notify_delay_ms = internal constant %struct.kernel_param { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__param_str_notify_delay_ms, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @notify_delay_ms to i8*) } }, section "__param", align 8, !dbg !355
@__UNIQUE_ID_notify_delay_mstype205 = internal constant [50 x i8] c"x86_pkg_temp_thermal.parmtype=notify_delay_ms:int\00", section ".modinfo", align 1, !dbg !423
@__UNIQUE_ID_notify_delay_ms206 = internal constant [90 x i8] c"x86_pkg_temp_thermal.parm=notify_delay_ms:User space notification delay in milli seconds.\00", section ".modinfo", align 1, !dbg !428
@__UNIQUE_ID___addressable_pkg_temp_thermal_init211 = internal global i8* bitcast (i32 ()* @pkg_temp_thermal_init to i8*), section ".discard.addressable", align 8, !dbg !433
@platform_thermal_package_notify = external dso_local global i32 (i64)*, align 8
@platform_thermal_package_rate_control = external dso_local global i1 ()*, align 8
@pkg_thermal_hp_state = internal global i32 0, section ".data..read_mostly", align 4, !dbg !4118
@debugfs = internal global %struct.dentry* null, align 8, !dbg !4120
@zones = internal global %struct.zone_device** null, align 8, !dbg !462
@__exitcall_pkg_temp_thermal_exit = internal global void ()* @pkg_temp_thermal_exit, section ".exitcall.exit", align 8, !dbg !435
@__UNIQUE_ID_description212 = internal constant [61 x i8] c"x86_pkg_temp_thermal.description=X86 PKG TEMP Thermal Driver\00", section ".modinfo", align 1, !dbg !442
@__UNIQUE_ID_author213 = internal constant [86 x i8] c"x86_pkg_temp_thermal.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1, !dbg !447
@__UNIQUE_ID_file214 = internal constant [69 x i8] c"x86_pkg_temp_thermal.file=drivers/thermal/intel/x86_pkg_temp_thermal\00", section ".modinfo", align 1, !dbg !452
@__UNIQUE_ID_license215 = internal constant [36 x i8] c"x86_pkg_temp_thermal.license=GPL v2\00", section ".modinfo", align 1, !dbg !457
@pkg_temp_thermal_ids = internal constant [2 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 0, i16 0, i16 0, i16 454, i64 0 }, %struct.x86_cpu_id zeroinitializer], section ".init.rodata", align 16, !dbg !4124
@max_id = internal global i32 0, section ".data..read_mostly", align 4, !dbg !4136
@.str = private unnamed_addr constant [23 x i8] c"thermal/x86_pkg:online\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"x86_pkg_temp\00", align 1
@tzone_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, i32*)* @sys_get_curr_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* @sys_get_trip_type, i32 (%struct.thermal_zone_device*, i32, i32*)* @sys_get_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32)* @sys_set_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !4142
@pkg_temp_tz_params = internal global %struct.thermal_zone_params { [20 x i8] zeroinitializer, i8 1, i32 0, %struct.thermal_bind_params* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8, !dbg !4144
@pkg_temp_lock = internal global %struct.raw_spinlock undef, align 1, !dbg !4146
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@thermal_zone_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @thermal_zone_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @thermal_zone_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4138
@pkg_work_cnt = internal global i32 0, align 4, !dbg !4140
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@pkg_interrupt_cnt = internal global i32 0, align 4, !dbg !4148
@.str.3 = private unnamed_addr constant [17 x i8] c"pkg_temp_thermal\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"pkg_thres_interrupt\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pkg_thres_work\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_notify_delay_ms to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_notify_delay_mstype205, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @__UNIQUE_ID_notify_delay_ms206, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_pkg_temp_thermal_init211 to i8*), i8* bitcast (void ()* @pkg_temp_thermal_exit to i8*), i8* bitcast (void ()** @__exitcall_pkg_temp_thermal_exit to i8*), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description212, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_author213, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pkg_temp_thermal_init() #0 section ".init.text" !dbg !4159 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4162, metadata !DIExpression()), !dbg !4163
  %call = call %struct.x86_cpu_id* @x86_match_cpu(%struct.x86_cpu_id* getelementptr inbounds ([2 x %struct.x86_cpu_id], [2 x %struct.x86_cpu_id]* @pkg_temp_thermal_ids, i64 0, i64 0)) #10, !dbg !4164
  %tobool = icmp ne %struct.x86_cpu_id* %call, null, !dbg !4164
  br i1 %tobool, label %if.end, label %if.then, !dbg !4166

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4167
  br label %return, !dbg !4167

if.end:                                           ; preds = %entry
  %call1 = call i32 @topology_max_die_per_package() #10, !dbg !4168
  %mul = mul i32 1, %call1, !dbg !4169
  store i32 %mul, i32* @max_id, align 4, !dbg !4170
  %0 = load i32, i32* @max_id, align 4, !dbg !4171
  %conv = sext i32 %0 to i64, !dbg !4171
  %call2 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #10, !dbg !4172
  %1 = bitcast i8* %call2 to %struct.zone_device**, !dbg !4172
  store %struct.zone_device** %1, %struct.zone_device*** @zones, align 8, !dbg !4173
  %2 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8, !dbg !4174
  %tobool3 = icmp ne %struct.zone_device** %2, null, !dbg !4174
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4176

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4177
  br label %return, !dbg !4177

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @cpuhp_setup_state(i32 182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 (i32)* @pkg_thermal_cpu_online, i32 (i32)* @pkg_thermal_cpu_offline) #10, !dbg !4178
  store i32 %call6, i32* %ret, align 4, !dbg !4179
  %3 = load i32, i32* %ret, align 4, !dbg !4180
  %cmp = icmp slt i32 %3, 0, !dbg !4182
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !4183

if.then8:                                         ; preds = %if.end5
  br label %err, !dbg !4184

if.end9:                                          ; preds = %if.end5
  %4 = load i32, i32* %ret, align 4, !dbg !4185
  store i32 %4, i32* @pkg_thermal_hp_state, align 4, !dbg !4186
  store i32 (i64)* @pkg_thermal_notify, i32 (i64)** @platform_thermal_package_notify, align 8, !dbg !4187
  store i1 ()* @pkg_thermal_rate_control, i1 ()** @platform_thermal_package_rate_control, align 8, !dbg !4188
  call void @pkg_temp_debugfs_init() #10, !dbg !4189
  store i32 0, i32* %retval, align 4, !dbg !4190
  br label %return, !dbg !4190

err:                                              ; preds = %if.then8
  call void @llvm.dbg.label(metadata !4191), !dbg !4192
  %5 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8, !dbg !4193
  %6 = bitcast %struct.zone_device** %5 to i8*, !dbg !4193
  call void @kfree(i8* %6) #10, !dbg !4194
  %7 = load i32, i32* %ret, align 4, !dbg !4195
  store i32 %7, i32* %retval, align 4, !dbg !4196
  br label %return, !dbg !4196

return:                                           ; preds = %err, %if.end9, %if.then4, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4197
  ret i32 %8, !dbg !4197
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @pkg_temp_thermal_exit() #0 section ".exit.text" !dbg !4198 {
entry:
  store i32 (i64)* null, i32 (i64)** @platform_thermal_package_notify, align 8, !dbg !4199
  store i1 ()* null, i1 ()** @platform_thermal_package_rate_control, align 8, !dbg !4200
  %0 = load i32, i32* @pkg_thermal_hp_state, align 4, !dbg !4201
  call void @cpuhp_remove_state(i32 %0) #10, !dbg !4202
  %1 = load %struct.dentry*, %struct.dentry** @debugfs, align 8, !dbg !4203
  call void @debugfs_remove_recursive(%struct.dentry* %1) #10, !dbg !4204
  %2 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8, !dbg !4205
  %3 = bitcast %struct.zone_device** %2 to i8*, !dbg !4205
  call void @kfree(i8* %3) #10, !dbg !4206
  ret void, !dbg !4207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuhp_remove_state(i32 %state) #1 !dbg !4208 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !4211, metadata !DIExpression()), !dbg !4212
  %0 = load i32, i32* %state.addr, align 4, !dbg !4213
  call void @__cpuhp_remove_state(i32 %0, i1 zeroext true) #10, !dbg !4214
  ret void, !dbg !4215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debugfs_remove_recursive(%struct.dentry* %dentry) #1 !dbg !4216 {
entry:
  %dentry.addr = alloca %struct.dentry*, align 8
  store %struct.dentry* %dentry, %struct.dentry** %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dentry** %dentry.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  ret void, !dbg !4220
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.x86_cpu_id* @x86_match_cpu(%struct.x86_cpu_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @topology_max_die_per_package() #1 !dbg !4221 {
entry:
  ret i32 1, !dbg !4223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #1 !dbg !4224 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4227, metadata !DIExpression()), !dbg !4228
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4231, metadata !DIExpression()), !dbg !4232
  %0 = load i64, i64* %n.addr, align 8, !dbg !4233
  %1 = load i64, i64* %size.addr, align 8, !dbg !4234
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4235
  %or = or i32 %2, 256, !dbg !4236
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4237
  ret i8* %call, !dbg !4238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuhp_setup_state(i32 %state, i8* %name, i32 (i32)* %startup, i32 (i32)* %teardown) #1 !dbg !4239 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %startup.addr = alloca i32 (i32)*, align 8
  %teardown.addr = alloca i32 (i32)*, align 8
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  store i32 (i32)* %startup, i32 (i32)** %startup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %startup.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  store i32 (i32)* %teardown, i32 (i32)** %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %teardown.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  %0 = load i32, i32* %state.addr, align 4, !dbg !4253
  %1 = load i8*, i8** %name.addr, align 8, !dbg !4254
  %2 = load i32 (i32)*, i32 (i32)** %startup.addr, align 8, !dbg !4255
  %3 = load i32 (i32)*, i32 (i32)** %teardown.addr, align 8, !dbg !4256
  %call = call i32 @__cpuhp_setup_state(i32 %0, i8* %1, i1 zeroext true, i32 (i32)* %2, i32 (i32)* %3, i1 zeroext false) #10, !dbg !4257
  ret i32 %call, !dbg !4258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pkg_thermal_cpu_online(i32 %cpu) #1 !dbg !4259 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %zonedev = alloca %struct.zone_device*, align 8
  %c = alloca %struct.cpuinfo_x86*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4260, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !4262, metadata !DIExpression()), !dbg !4263
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4264
  %call = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %0) #10, !dbg !4265
  store %struct.zone_device* %call, %struct.zone_device** %zonedev, align 8, !dbg !4263
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !4266, metadata !DIExpression()), !dbg !4313
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !4313
  br i1 false, label %cond.true, label %cond.false, !dbg !4314

cond.true:                                        ; preds = %entry
  br i1 true, label %lor.lhs.false, label %if.then, !dbg !4316

cond.false:                                       ; preds = %entry
  %1 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4316
  %2 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %1, i32 0, i32 12, !dbg !4316
  %x86_capability = bitcast %union.anon.65* %2 to [20 x i32]*, !dbg !4316
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %x86_capability, i64 0, i64 0, !dbg !4316
  %3 = bitcast i32* %arraydecay to i64*, !dbg !4316
  %call1 = call zeroext i1 @test_bit(i64 448, i64* %3) #10, !dbg !4316
  br i1 %call1, label %lor.lhs.false, label %if.then, !dbg !4314

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4317

cond.true2:                                       ; preds = %lor.lhs.false
  br i1 true, label %if.end, label %if.then, !dbg !4318

cond.false3:                                      ; preds = %lor.lhs.false
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !4318
  %5 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 12, !dbg !4318
  %x86_capability4 = bitcast %union.anon.65* %5 to [20 x i32]*, !dbg !4318
  %arraydecay5 = getelementptr inbounds [20 x i32], [20 x i32]* %x86_capability4, i64 0, i64 0, !dbg !4318
  %6 = bitcast i32* %arraydecay5 to i64*, !dbg !4318
  %call6 = call zeroext i1 @test_bit(i64 454, i64* %6) #10, !dbg !4318
  br i1 %call6, label %if.end, label %if.then, !dbg !4317

if.then:                                          ; preds = %cond.false3, %cond.true2, %cond.false, %cond.true
  store i32 -19, i32* %retval, align 4, !dbg !4319
  br label %return, !dbg !4319

if.end:                                           ; preds = %cond.false3, %cond.true2
  %7 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4320
  %tobool = icmp ne %struct.zone_device* %7, null, !dbg !4320
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !4322

if.then7:                                         ; preds = %if.end
  %8 = load i32, i32* %cpu.addr, align 4, !dbg !4323
  %9 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4325
  %cpumask = getelementptr inbounds %struct.zone_device, %struct.zone_device* %9, i32 0, i32 7, !dbg !4326
  call void @cpumask_set_cpu(i32 %8, %struct.cpumask* %cpumask) #10, !dbg !4327
  store i32 0, i32* %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end8:                                          ; preds = %if.end
  %10 = load i32, i32* %cpu.addr, align 4, !dbg !4329
  %call9 = call i32 @pkg_temp_thermal_device_add(i32 %10) #10, !dbg !4330
  store i32 %call9, i32* %retval, align 4, !dbg !4331
  br label %return, !dbg !4331

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4332
  ret i32 %11, !dbg !4332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pkg_thermal_cpu_offline(i32 %cpu) #1 !dbg !4333 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %zonedev = alloca %struct.zone_device*, align 8
  %lastcpu = alloca i8, align 1
  %was_target = alloca i8, align 1
  %target = alloca i32, align 4
  %tzone = alloca %struct.thermal_zone_device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !4336, metadata !DIExpression()), !dbg !4337
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4338
  %call = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %0) #10, !dbg !4339
  store %struct.zone_device* %call, %struct.zone_device** %zonedev, align 8, !dbg !4337
  call void @llvm.dbg.declare(metadata i8* %lastcpu, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata i8* %was_target, metadata !4342, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.declare(metadata i32* %target, metadata !4344, metadata !DIExpression()), !dbg !4345
  %1 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4346
  %tobool = icmp ne %struct.zone_device* %1, null, !dbg !4346
  br i1 %tobool, label %if.end, label %if.then, !dbg !4348

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4349
  br label %return, !dbg !4349

if.end:                                           ; preds = %entry
  %2 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4350
  %cpumask = getelementptr inbounds %struct.zone_device, %struct.zone_device* %2, i32 0, i32 7, !dbg !4351
  %3 = load i32, i32* %cpu.addr, align 4, !dbg !4352
  %call1 = call i32 @cpumask_any_but(%struct.cpumask* %cpumask, i32 %3) #10, !dbg !4353
  store i32 %call1, i32* %target, align 4, !dbg !4354
  %4 = load i32, i32* %cpu.addr, align 4, !dbg !4355
  %5 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4356
  %cpumask2 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %5, i32 0, i32 7, !dbg !4357
  call void @cpumask_clear_cpu(i32 %4, %struct.cpumask* %cpumask2) #10, !dbg !4358
  %6 = load i32, i32* %target, align 4, !dbg !4359
  %cmp = icmp uge i32 %6, 1, !dbg !4360
  %frombool = zext i1 %cmp to i8, !dbg !4361
  store i8 %frombool, i8* %lastcpu, align 1, !dbg !4361
  %7 = load i8, i8* %lastcpu, align 1, !dbg !4362
  %tobool3 = trunc i8 %7 to i1, !dbg !4362
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !4364

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzone, metadata !4365, metadata !DIExpression()), !dbg !4367
  %8 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4368
  %tzone5 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %8, i32 0, i32 6, !dbg !4369
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone5, align 8, !dbg !4369
  store %struct.thermal_zone_device* %9, %struct.thermal_zone_device** %tzone, align 8, !dbg !4367
  call void @mutex_lock(%struct.mutex* @thermal_zone_mutex) #10, !dbg !4370
  %10 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4371
  %tzone6 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %10, i32 0, i32 6, !dbg !4372
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %tzone6, align 8, !dbg !4373
  call void @mutex_unlock(%struct.mutex* @thermal_zone_mutex) #10, !dbg !4374
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone, align 8, !dbg !4375
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %11) #10, !dbg !4376
  br label %if.end7, !dbg !4377

if.end7:                                          ; preds = %if.then4, %if.end
  br label %do.body, !dbg !4378

do.body:                                          ; preds = %if.end7
  br label %do.body8, !dbg !4379

do.body8:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #10, !dbg !4381
  br label %do.end, !dbg !4381

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4379

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4383, !srcloc !4385
  br label %do.body10, !dbg !4383

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4386

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !4383

do.end12:                                         ; preds = %do.end11
  br label %do.end13, !dbg !4379

do.end13:                                         ; preds = %do.end12
  %12 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4388
  %cpu14 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %12, i32 0, i32 0, !dbg !4389
  %13 = load i32, i32* %cpu14, align 8, !dbg !4389
  %14 = load i32, i32* %cpu.addr, align 4, !dbg !4390
  %cmp15 = icmp eq i32 %13, %14, !dbg !4391
  %frombool16 = zext i1 %cmp15 to i8, !dbg !4392
  store i8 %frombool16, i8* %was_target, align 1, !dbg !4392
  %15 = load i32, i32* %target, align 4, !dbg !4393
  %16 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4394
  %cpu17 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %16, i32 0, i32 0, !dbg !4395
  store i32 %15, i32* %cpu17, align 8, !dbg !4396
  %17 = load i8, i8* %lastcpu, align 1, !dbg !4397
  %tobool18 = trunc i8 %17 to i1, !dbg !4397
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !4399

if.then19:                                        ; preds = %do.end13
  %18 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8, !dbg !4400
  %19 = load i16, i16* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 31), align 2, !dbg !4402
  %idxprom = zext i16 %19 to i64, !dbg !4400
  %arrayidx = getelementptr %struct.zone_device*, %struct.zone_device** %18, i64 %idxprom, !dbg !4400
  store %struct.zone_device* null, %struct.zone_device** %arrayidx, align 8, !dbg !4403
  br label %do.body20, !dbg !4404

do.body20:                                        ; preds = %if.then19
  %20 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4405
  %msr_pkg_therm_low = getelementptr inbounds %struct.zone_device, %struct.zone_device* %20, i32 0, i32 3, !dbg !4405
  %21 = load i32, i32* %msr_pkg_therm_low, align 4, !dbg !4405
  %22 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4405
  %msr_pkg_therm_high = getelementptr inbounds %struct.zone_device, %struct.zone_device* %22, i32 0, i32 4, !dbg !4405
  %23 = load i32, i32* %msr_pkg_therm_high, align 8, !dbg !4405
  call void @paravirt_write_msr(i32 434, i32 %21, i32 %23) #10, !dbg !4405
  br label %do.end21, !dbg !4405

do.end21:                                         ; preds = %do.body20
  br label %if.end22, !dbg !4407

if.end22:                                         ; preds = %do.end21, %do.end13
  %24 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4408
  %work_scheduled = getelementptr inbounds %struct.zone_device, %struct.zone_device* %24, i32 0, i32 1, !dbg !4410
  %25 = load i8, i8* %work_scheduled, align 4, !dbg !4410
  %tobool23 = trunc i8 %25 to i1, !dbg !4410
  br i1 %tobool23, label %land.lhs.true, label %if.end50, !dbg !4411

land.lhs.true:                                    ; preds = %if.end22
  %26 = load i8, i8* %was_target, align 1, !dbg !4412
  %tobool24 = trunc i8 %26 to i1, !dbg !4412
  br i1 %tobool24, label %if.then25, label %if.end50, !dbg !4413

if.then25:                                        ; preds = %land.lhs.true
  br label %do.body26, !dbg !4414

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !4416

do.body27:                                        ; preds = %do.body26
  call void @arch_local_irq_enable() #10, !dbg !4418
  br label %do.end28, !dbg !4418

do.end28:                                         ; preds = %do.body27
  br label %do.body29, !dbg !4416

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4420, !srcloc !4422
  br label %do.body30, !dbg !4420

do.body30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4423

do.end31:                                         ; preds = %do.body30
  br label %do.end32, !dbg !4420

do.end32:                                         ; preds = %do.end31
  br label %do.end33, !dbg !4416

do.end33:                                         ; preds = %do.end32
  %27 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4425
  %work = getelementptr inbounds %struct.zone_device, %struct.zone_device* %27, i32 0, i32 5, !dbg !4426
  %call34 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %work) #10, !dbg !4427
  br label %do.body35, !dbg !4428

do.body35:                                        ; preds = %do.end33
  br label %do.body36, !dbg !4429

do.body36:                                        ; preds = %do.body35
  call void @arch_local_irq_disable() #10, !dbg !4431
  br label %do.end37, !dbg !4431

do.end37:                                         ; preds = %do.body36
  br label %do.body38, !dbg !4429

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4433, !srcloc !4435
  br label %do.body39, !dbg !4433

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4436

do.end40:                                         ; preds = %do.body39
  br label %do.end41, !dbg !4433

do.end41:                                         ; preds = %do.end40
  br label %do.end42, !dbg !4429

do.end42:                                         ; preds = %do.end41
  %28 = load i8, i8* %lastcpu, align 1, !dbg !4438
  %tobool43 = trunc i8 %28 to i1, !dbg !4438
  br i1 %tobool43, label %if.end49, label %land.lhs.true44, !dbg !4440

land.lhs.true44:                                  ; preds = %do.end42
  %29 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4441
  %work_scheduled45 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %29, i32 0, i32 1, !dbg !4442
  %30 = load i8, i8* %work_scheduled45, align 4, !dbg !4442
  %tobool46 = trunc i8 %30 to i1, !dbg !4442
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !4443

if.then47:                                        ; preds = %land.lhs.true44
  %31 = load i32, i32* %target, align 4, !dbg !4444
  %32 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4445
  %work48 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %32, i32 0, i32 5, !dbg !4446
  call void @pkg_thermal_schedule_work(i32 %31, %struct.delayed_work* %work48) #10, !dbg !4447
  br label %if.end49, !dbg !4447

if.end49:                                         ; preds = %if.then47, %land.lhs.true44, %do.end42
  br label %if.end50, !dbg !4448

if.end50:                                         ; preds = %if.end49, %land.lhs.true, %if.end22
  br label %do.body51, !dbg !4449

do.body51:                                        ; preds = %if.end50
  br label %do.body52, !dbg !4450

do.body52:                                        ; preds = %do.body51
  call void @arch_local_irq_enable() #10, !dbg !4452
  br label %do.end53, !dbg !4452

do.end53:                                         ; preds = %do.body52
  br label %do.body54, !dbg !4450

do.body54:                                        ; preds = %do.end53
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4454, !srcloc !4456
  br label %do.body55, !dbg !4454

do.body55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4457

do.end56:                                         ; preds = %do.body55
  br label %do.end57, !dbg !4454

do.end57:                                         ; preds = %do.end56
  br label %do.end58, !dbg !4450

do.end58:                                         ; preds = %do.end57
  %33 = load i8, i8* %lastcpu, align 1, !dbg !4459
  %tobool59 = trunc i8 %33 to i1, !dbg !4459
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !4461

if.then60:                                        ; preds = %do.end58
  %34 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4462
  %35 = bitcast %struct.zone_device* %34 to i8*, !dbg !4462
  call void @kfree(i8* %35) #10, !dbg !4463
  br label %if.end61, !dbg !4463

if.end61:                                         ; preds = %if.then60, %do.end58
  store i32 0, i32* %retval, align 4, !dbg !4464
  br label %return, !dbg !4464

return:                                           ; preds = %if.end61, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4465
  ret i32 %36, !dbg !4465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pkg_thermal_notify(i64 %msr_val) #1 !dbg !4466 {
entry:
  %msr_val.addr = alloca i64, align 8
  %cpu = alloca i32, align 4
  %zonedev = alloca %struct.zone_device*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy21 = alloca i64, align 8
  %__dummy222 = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  %__dummy29 = alloca i64, align 8
  %__dummy230 = alloca i64, align 8
  %tmp33 = alloca i32, align 4
  store i64 %msr_val, i64* %msr_val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %msr_val.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !4471, metadata !DIExpression()), !dbg !4472
  store i32 0, i32* %cpu, align 4, !dbg !4472
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4475, metadata !DIExpression()), !dbg !4476
  br label %do.body, !dbg !4477

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4478, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4482, metadata !DIExpression()), !dbg !4481
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4481
  %conv = zext i1 %cmp to i32, !dbg !4481
  store i32 1, i32* %tmp, align 4, !dbg !4481
  %0 = load i32, i32* %tmp, align 4, !dbg !4481
  br label %do.body1, !dbg !4483

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4484

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4486

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !4488, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !4492, metadata !DIExpression()), !dbg !4491
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !4491
  %conv7 = zext i1 %cmp6 to i32, !dbg !4491
  store i32 1, i32* %tmp8, align 4, !dbg !4491
  %1 = load i32, i32* %tmp8, align 4, !dbg !4491
  %call = call i64 @arch_local_irq_save() #10, !dbg !4493
  store i64 %call, i64* %flags, align 8, !dbg !4493
  br label %do.end, !dbg !4493

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !4486

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !4484

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4494, !srcloc !4496
  br label %do.body11, !dbg !4494

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4497

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4494

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !4484

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !4483

do.end15:                                         ; preds = %do.end14
  %2 = load i32, i32* @pkg_interrupt_cnt, align 4, !dbg !4499
  %inc = add i32 %2, 1, !dbg !4499
  store i32 %inc, i32* @pkg_interrupt_cnt, align 4, !dbg !4499
  call void @disable_pkg_thres_interrupt() #10, !dbg !4500
  %3 = load i32, i32* %cpu, align 4, !dbg !4501
  %call16 = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %3) #10, !dbg !4502
  store %struct.zone_device* %call16, %struct.zone_device** %zonedev, align 8, !dbg !4503
  %4 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4504
  %tobool = icmp ne %struct.zone_device* %4, null, !dbg !4504
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4506

land.lhs.true:                                    ; preds = %do.end15
  %5 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4507
  %work_scheduled = getelementptr inbounds %struct.zone_device, %struct.zone_device* %5, i32 0, i32 1, !dbg !4508
  %6 = load i8, i8* %work_scheduled, align 4, !dbg !4508
  %tobool17 = trunc i8 %6 to i1, !dbg !4508
  br i1 %tobool17, label %if.end, label %if.then, !dbg !4509

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4510
  %work_scheduled18 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %7, i32 0, i32 1, !dbg !4512
  store i8 1, i8* %work_scheduled18, align 4, !dbg !4513
  %8 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4514
  %cpu19 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %8, i32 0, i32 0, !dbg !4515
  %9 = load i32, i32* %cpu19, align 8, !dbg !4515
  %10 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !4516
  %work = getelementptr inbounds %struct.zone_device, %struct.zone_device* %10, i32 0, i32 5, !dbg !4517
  call void @pkg_thermal_schedule_work(i32 %9, %struct.delayed_work* %work) #10, !dbg !4518
  br label %if.end, !dbg !4519

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end15
  br label %do.body20, !dbg !4520

do.body20:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy21, metadata !4521, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.declare(metadata i64* %__dummy222, metadata !4525, metadata !DIExpression()), !dbg !4524
  %cmp23 = icmp eq i64* %__dummy21, %__dummy222, !dbg !4524
  %conv24 = zext i1 %cmp23 to i32, !dbg !4524
  store i32 1, i32* %tmp25, align 4, !dbg !4524
  %11 = load i32, i32* %tmp25, align 4, !dbg !4524
  br label %do.body26, !dbg !4526

do.body26:                                        ; preds = %do.body20
  br label %do.body27, !dbg !4527

do.body27:                                        ; preds = %do.body26
  br label %do.body28, !dbg !4529

do.body28:                                        ; preds = %do.body27
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !4531, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.declare(metadata i64* %__dummy230, metadata !4535, metadata !DIExpression()), !dbg !4534
  %cmp31 = icmp eq i64* %__dummy29, %__dummy230, !dbg !4534
  %conv32 = zext i1 %cmp31 to i32, !dbg !4534
  store i32 1, i32* %tmp33, align 4, !dbg !4534
  %12 = load i32, i32* %tmp33, align 4, !dbg !4534
  %13 = load i64, i64* %flags, align 8, !dbg !4536
  call void @arch_local_irq_restore(i64 %13) #10, !dbg !4536
  br label %do.end34, !dbg !4536

do.end34:                                         ; preds = %do.body28
  br label %do.end35, !dbg !4529

do.end35:                                         ; preds = %do.end34
  br label %do.body36, !dbg !4527

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4537, !srcloc !4539
  br label %do.body37, !dbg !4537

do.body37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !4540

do.end38:                                         ; preds = %do.body37
  br label %do.end39, !dbg !4537

do.end39:                                         ; preds = %do.end38
  br label %do.end40, !dbg !4527

do.end40:                                         ; preds = %do.end39
  br label %do.end41, !dbg !4526

do.end41:                                         ; preds = %do.end40
  ret i32 0, !dbg !4542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pkg_thermal_rate_control() #1 !dbg !4543 {
entry:
  ret i1 true, !dbg !4544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pkg_temp_debugfs_init() #1 !dbg !4545 {
entry:
  %call = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* null) #10, !dbg !4546
  store %struct.dentry* %call, %struct.dentry** @debugfs, align 8, !dbg !4547
  %0 = load %struct.dentry*, %struct.dentry** @debugfs, align 8, !dbg !4548
  call void @debugfs_create_u32(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %0, i32* @pkg_interrupt_cnt) #10, !dbg !4549
  %1 = load %struct.dentry*, %struct.dentry** @debugfs, align 8, !dbg !4550
  call void @debugfs_create_u32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %1, i32* @pkg_work_cnt) #10, !dbg !4551
  ret void, !dbg !4552
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #1 !dbg !4553 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4554, metadata !DIExpression()), !dbg !4558
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4567, metadata !DIExpression()), !dbg !4568
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4569, metadata !DIExpression()), !dbg !4570
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4571, metadata !DIExpression()), !dbg !4572
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4573, metadata !DIExpression()), !dbg !4577
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4579, metadata !DIExpression()), !dbg !4583
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4585, metadata !DIExpression()), !dbg !4589
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4594, metadata !DIExpression()), !dbg !4595
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4596, metadata !DIExpression()), !dbg !4597
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4598, metadata !DIExpression()), !dbg !4599
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4600, metadata !DIExpression()), !dbg !4601
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4602, metadata !DIExpression()), !dbg !4603
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4604, metadata !DIExpression()), !dbg !4605
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4606, metadata !DIExpression()), !dbg !4607
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4608, metadata !DIExpression()), !dbg !4609
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4616, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4618, metadata !DIExpression()), !dbg !4621
  %0 = load i64, i64* %n.addr, align 8, !dbg !4621
  store i64 %0, i64* %__a, align 8, !dbg !4621
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4622, metadata !DIExpression()), !dbg !4621
  %1 = load i64, i64* %size.addr, align 8, !dbg !4621
  store i64 %1, i64* %__b, align 8, !dbg !4621
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4623, metadata !DIExpression()), !dbg !4621
  store i64* %bytes, i64** %__d, align 8, !dbg !4621
  %cmp = icmp eq i64* %__a, %__b, !dbg !4621
  %conv = zext i1 %cmp to i32, !dbg !4621
  %2 = load i64*, i64** %__d, align 8, !dbg !4621
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4621
  %conv2 = zext i1 %cmp1 to i32, !dbg !4621
  %3 = load i64, i64* %__a, align 8, !dbg !4621
  %4 = load i64, i64* %__b, align 8, !dbg !4621
  %5 = load i64*, i64** %__d, align 8, !dbg !4621
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4621
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4621
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4621
  store i64 %8, i64* %5, align 8, !dbg !4621
  %frombool = zext i1 %7 to i8, !dbg !4621
  store i8 %frombool, i8* %tmp, align 1, !dbg !4621
  %9 = load i8, i8* %tmp, align 1, !dbg !4621
  %tobool = trunc i8 %9 to i1, !dbg !4621
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !4625
  %lnot = xor i1 %call, true, !dbg !4625
  %lnot3 = xor i1 %lnot, true, !dbg !4625
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4625
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4625
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4625
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4626

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4627
  br label %return, !dbg !4627

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4628
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4629
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4630

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4631
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4632
  br i1 %13, label %if.then6, label %if.end8, !dbg !4633

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4634
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4635
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4636
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !4637
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4638

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4639
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4640
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4641

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4642
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4643
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4644
  %call.i.i = call i32 @get_order(i64 %21) #11, !dbg !4645
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4603
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4646
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4647
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4648
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4649
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4650
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4651
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !4652
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4652
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4652
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4652
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4652
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4653
  br label %kmalloc.exit, !dbg !4653

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4654
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4655
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4655
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4657

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4658
  br label %kmalloc_index.exit.i, !dbg !4658

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4659
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4661
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4662

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4663
  br label %kmalloc_index.exit.i, !dbg !4663

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4666
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4667

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4669
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4670

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4674
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4675

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4677
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4678

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4682
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4683

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4684
  br label %kmalloc_index.exit.i, !dbg !4684

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4685
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4687
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4688

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4692
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4693

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4694
  br label %kmalloc_index.exit.i, !dbg !4694

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4695
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4697
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4698

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4699
  br label %kmalloc_index.exit.i, !dbg !4699

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4700
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4702
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4703

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4704
  br label %kmalloc_index.exit.i, !dbg !4704

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4705
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4707
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4708

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4709
  br label %kmalloc_index.exit.i, !dbg !4709

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4712
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4713

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4714
  br label %kmalloc_index.exit.i, !dbg !4714

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4717
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4718

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4722
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4723

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4724
  br label %kmalloc_index.exit.i, !dbg !4724

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4725
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4727
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4728

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4729
  br label %kmalloc_index.exit.i, !dbg !4729

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4730
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4732
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4733

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4734
  br label %kmalloc_index.exit.i, !dbg !4734

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4735
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4737
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4738

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4742
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4743

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4744
  br label %kmalloc_index.exit.i, !dbg !4744

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4747
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4748

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4752
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4753

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4757
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4758

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4762
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4763

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4764
  br label %kmalloc_index.exit.i, !dbg !4764

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4765
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4767
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4768

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4769
  br label %kmalloc_index.exit.i, !dbg !4769

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4772
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4773

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4777
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4778

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4779
  br label %kmalloc_index.exit.i, !dbg !4779

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4782
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4783

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4787
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4788

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4789
  br label %kmalloc_index.exit.i, !dbg !4789

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4790
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4792
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4793

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4794
  br label %kmalloc_index.exit.i, !dbg !4794

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4795
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4797
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4798

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4799
  br label %kmalloc_index.exit.i, !dbg !4799

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4800, !srcloc !4803
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4804, !srcloc !4807
  unreachable, !dbg !4808

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4809
  store i32 %59, i32* %index.i, align 4, !dbg !4810
  %60 = load i32, i32* %index.i, align 4, !dbg !4811
  %tobool.i = icmp ne i32 %60, 0, !dbg !4811
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4813

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4814
  br label %kmalloc.exit, !dbg !4814

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4815
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4816
  %and.i.i = and i32 %62, 17, !dbg !4816
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4816
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4816
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4816
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4816
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4818

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4819
  br label %kmalloc_type.exit.i, !dbg !4819

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4820
  %and2.i.i = and i32 %63, 1, !dbg !4821
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4820
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4820
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4820
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4822
  br label %kmalloc_type.exit.i, !dbg !4822

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4823
  %idxprom.i = zext i32 %65 to i64, !dbg !4824
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4824
  %66 = load i32, i32* %index.i, align 4, !dbg !4825
  %idxprom6.i = zext i32 %66 to i64, !dbg !4824
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4824
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4824
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4826
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4827
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4828
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4829
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !4830
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4830
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4830
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4830
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4830
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4572
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4831
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4832
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4833
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4834
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !4835
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4836
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4837
  store i8* %76, i8** %retval.i, align 8, !dbg !4838
  br label %kmalloc.exit, !dbg !4838

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4839
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4840
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !4841
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4841
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4841
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4841
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4841
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4842
  br label %kmalloc.exit, !dbg !4842

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4843
  store i8* %79, i8** %retval, align 8, !dbg !4844
  br label %return, !dbg !4844

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4845
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4846
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !4847
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4847
  %maskedptr = and i64 %ptrint, 7, !dbg !4847
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4847
  call void @llvm.assume(i1 %maskcond), !dbg !4847
  store i8* %call9, i8** %retval, align 8, !dbg !4848
  br label %return, !dbg !4848

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4849
  ret i8* %82, !dbg !4849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #1 !dbg !4850 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4856
  %tobool = trunc i8 %0 to i1, !dbg !4856
  %lnot = xor i1 %tobool, true, !dbg !4856
  %lnot1 = xor i1 %lnot, true, !dbg !4856
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4856
  %conv = sext i32 %lnot.ext to i64, !dbg !4856
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4856
  ret i1 %tobool2, !dbg !4857
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4858 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4862, metadata !DIExpression()), !dbg !4867
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4869, metadata !DIExpression()), !dbg !4870
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  %0 = load i64, i64* %size.addr, align 8, !dbg !4873
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4875
  br i1 %1, label %if.then, label %if.end447, !dbg !4876

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4877
  %tobool = icmp ne i64 %2, 0, !dbg !4877
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4880

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4882
  %cmp = icmp ult i64 %3, 4096, !dbg !4884
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4885

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4886
  br label %return, !dbg !4886

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub = sub i64 %4, 1, !dbg !4887
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4887
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4887

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub4 = sub i64 %6, 1, !dbg !4887
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4887
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4887

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub6 = sub i64 %8, 1, !dbg !4887
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4887
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4887

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4887

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub9 = sub i64 %9, 1, !dbg !4887
  %and = and i64 %sub9, -9223372036854775808, !dbg !4887
  %tobool10 = icmp ne i64 %and, 0, !dbg !4887
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4887

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4887

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub13 = sub i64 %10, 1, !dbg !4887
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4887
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4887
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4887

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4887

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub18 = sub i64 %11, 1, !dbg !4887
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4887
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4887
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4887

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4887

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub23 = sub i64 %12, 1, !dbg !4887
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4887
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4887
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4887

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4887

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub28 = sub i64 %13, 1, !dbg !4887
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4887
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4887
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4887

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4887

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub33 = sub i64 %14, 1, !dbg !4887
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4887
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4887
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4887

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4887

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub38 = sub i64 %15, 1, !dbg !4887
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4887
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4887
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4887

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4887

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub43 = sub i64 %16, 1, !dbg !4887
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4887
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4887
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4887

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4887

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub48 = sub i64 %17, 1, !dbg !4887
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4887
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4887
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4887

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4887

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub53 = sub i64 %18, 1, !dbg !4887
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4887
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4887
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4887

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4887

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub58 = sub i64 %19, 1, !dbg !4887
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4887
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4887
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4887

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4887

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub63 = sub i64 %20, 1, !dbg !4887
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4887
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4887
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4887

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4887

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub68 = sub i64 %21, 1, !dbg !4887
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4887
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4887
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4887

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4887

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub73 = sub i64 %22, 1, !dbg !4887
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4887
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4887
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4887

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4887

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub78 = sub i64 %23, 1, !dbg !4887
  %and79 = and i64 %sub78, 562949953421312, !dbg !4887
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4887
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4887

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4887

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub83 = sub i64 %24, 1, !dbg !4887
  %and84 = and i64 %sub83, 281474976710656, !dbg !4887
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4887
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4887

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4887

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub88 = sub i64 %25, 1, !dbg !4887
  %and89 = and i64 %sub88, 140737488355328, !dbg !4887
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4887
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4887

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4887

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub93 = sub i64 %26, 1, !dbg !4887
  %and94 = and i64 %sub93, 70368744177664, !dbg !4887
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4887
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4887

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4887

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub98 = sub i64 %27, 1, !dbg !4887
  %and99 = and i64 %sub98, 35184372088832, !dbg !4887
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4887
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4887

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4887

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub103 = sub i64 %28, 1, !dbg !4887
  %and104 = and i64 %sub103, 17592186044416, !dbg !4887
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4887
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4887

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4887

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub108 = sub i64 %29, 1, !dbg !4887
  %and109 = and i64 %sub108, 8796093022208, !dbg !4887
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4887
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4887

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4887

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub113 = sub i64 %30, 1, !dbg !4887
  %and114 = and i64 %sub113, 4398046511104, !dbg !4887
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4887
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4887

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4887

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub118 = sub i64 %31, 1, !dbg !4887
  %and119 = and i64 %sub118, 2199023255552, !dbg !4887
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4887
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4887

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4887

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub123 = sub i64 %32, 1, !dbg !4887
  %and124 = and i64 %sub123, 1099511627776, !dbg !4887
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4887
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4887

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4887

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub128 = sub i64 %33, 1, !dbg !4887
  %and129 = and i64 %sub128, 549755813888, !dbg !4887
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4887
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4887

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4887

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub133 = sub i64 %34, 1, !dbg !4887
  %and134 = and i64 %sub133, 274877906944, !dbg !4887
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4887
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4887

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4887

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub138 = sub i64 %35, 1, !dbg !4887
  %and139 = and i64 %sub138, 137438953472, !dbg !4887
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4887
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4887

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4887

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub143 = sub i64 %36, 1, !dbg !4887
  %and144 = and i64 %sub143, 68719476736, !dbg !4887
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4887
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4887

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4887

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub148 = sub i64 %37, 1, !dbg !4887
  %and149 = and i64 %sub148, 34359738368, !dbg !4887
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4887
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4887

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4887

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub153 = sub i64 %38, 1, !dbg !4887
  %and154 = and i64 %sub153, 17179869184, !dbg !4887
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4887
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4887

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4887

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub158 = sub i64 %39, 1, !dbg !4887
  %and159 = and i64 %sub158, 8589934592, !dbg !4887
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4887
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4887

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4887

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub163 = sub i64 %40, 1, !dbg !4887
  %and164 = and i64 %sub163, 4294967296, !dbg !4887
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4887
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4887

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4887

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub168 = sub i64 %41, 1, !dbg !4887
  %and169 = and i64 %sub168, 2147483648, !dbg !4887
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4887
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4887

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4887

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub173 = sub i64 %42, 1, !dbg !4887
  %and174 = and i64 %sub173, 1073741824, !dbg !4887
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4887
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4887

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4887

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub178 = sub i64 %43, 1, !dbg !4887
  %and179 = and i64 %sub178, 536870912, !dbg !4887
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4887
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4887

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4887

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub183 = sub i64 %44, 1, !dbg !4887
  %and184 = and i64 %sub183, 268435456, !dbg !4887
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4887
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4887

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4887

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub188 = sub i64 %45, 1, !dbg !4887
  %and189 = and i64 %sub188, 134217728, !dbg !4887
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4887
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4887

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4887

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub193 = sub i64 %46, 1, !dbg !4887
  %and194 = and i64 %sub193, 67108864, !dbg !4887
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4887
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4887

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4887

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub198 = sub i64 %47, 1, !dbg !4887
  %and199 = and i64 %sub198, 33554432, !dbg !4887
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4887
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4887

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4887

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub203 = sub i64 %48, 1, !dbg !4887
  %and204 = and i64 %sub203, 16777216, !dbg !4887
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4887
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4887

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4887

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub208 = sub i64 %49, 1, !dbg !4887
  %and209 = and i64 %sub208, 8388608, !dbg !4887
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4887
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4887

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4887

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub213 = sub i64 %50, 1, !dbg !4887
  %and214 = and i64 %sub213, 4194304, !dbg !4887
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4887
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4887

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4887

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub218 = sub i64 %51, 1, !dbg !4887
  %and219 = and i64 %sub218, 2097152, !dbg !4887
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4887
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4887

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4887

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub223 = sub i64 %52, 1, !dbg !4887
  %and224 = and i64 %sub223, 1048576, !dbg !4887
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4887
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4887

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4887

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub228 = sub i64 %53, 1, !dbg !4887
  %and229 = and i64 %sub228, 524288, !dbg !4887
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4887
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4887

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4887

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub233 = sub i64 %54, 1, !dbg !4887
  %and234 = and i64 %sub233, 262144, !dbg !4887
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4887
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4887

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4887

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub238 = sub i64 %55, 1, !dbg !4887
  %and239 = and i64 %sub238, 131072, !dbg !4887
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4887
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4887

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4887

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub243 = sub i64 %56, 1, !dbg !4887
  %and244 = and i64 %sub243, 65536, !dbg !4887
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4887
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4887

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4887

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub248 = sub i64 %57, 1, !dbg !4887
  %and249 = and i64 %sub248, 32768, !dbg !4887
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4887
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4887

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4887

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub253 = sub i64 %58, 1, !dbg !4887
  %and254 = and i64 %sub253, 16384, !dbg !4887
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4887
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4887

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4887

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub258 = sub i64 %59, 1, !dbg !4887
  %and259 = and i64 %sub258, 8192, !dbg !4887
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4887
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4887

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4887

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub263 = sub i64 %60, 1, !dbg !4887
  %and264 = and i64 %sub263, 4096, !dbg !4887
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4887
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4887

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4887

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub268 = sub i64 %61, 1, !dbg !4887
  %and269 = and i64 %sub268, 2048, !dbg !4887
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4887
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4887

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4887

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub273 = sub i64 %62, 1, !dbg !4887
  %and274 = and i64 %sub273, 1024, !dbg !4887
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4887
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4887

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4887

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub278 = sub i64 %63, 1, !dbg !4887
  %and279 = and i64 %sub278, 512, !dbg !4887
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4887
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4887

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4887

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub283 = sub i64 %64, 1, !dbg !4887
  %and284 = and i64 %sub283, 256, !dbg !4887
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4887
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4887

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4887

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub288 = sub i64 %65, 1, !dbg !4887
  %and289 = and i64 %sub288, 128, !dbg !4887
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4887
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4887

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4887

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub293 = sub i64 %66, 1, !dbg !4887
  %and294 = and i64 %sub293, 64, !dbg !4887
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4887
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4887

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4887

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub298 = sub i64 %67, 1, !dbg !4887
  %and299 = and i64 %sub298, 32, !dbg !4887
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4887
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4887

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4887

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub303 = sub i64 %68, 1, !dbg !4887
  %and304 = and i64 %sub303, 16, !dbg !4887
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4887
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4887

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4887

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub308 = sub i64 %69, 1, !dbg !4887
  %and309 = and i64 %sub308, 8, !dbg !4887
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4887
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4887

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4887

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub313 = sub i64 %70, 1, !dbg !4887
  %and314 = and i64 %sub313, 4, !dbg !4887
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4887
  %71 = zext i1 %tobool315 to i64, !dbg !4887
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4887
  br label %cond.end, !dbg !4887

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4887
  br label %cond.end317, !dbg !4887

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4887
  br label %cond.end319, !dbg !4887

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4887
  br label %cond.end321, !dbg !4887

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4887
  br label %cond.end323, !dbg !4887

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4887
  br label %cond.end325, !dbg !4887

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4887
  br label %cond.end327, !dbg !4887

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4887
  br label %cond.end329, !dbg !4887

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4887
  br label %cond.end331, !dbg !4887

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4887
  br label %cond.end333, !dbg !4887

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4887
  br label %cond.end335, !dbg !4887

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4887
  br label %cond.end337, !dbg !4887

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4887
  br label %cond.end339, !dbg !4887

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4887
  br label %cond.end341, !dbg !4887

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4887
  br label %cond.end343, !dbg !4887

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4887
  br label %cond.end345, !dbg !4887

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4887
  br label %cond.end347, !dbg !4887

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4887
  br label %cond.end349, !dbg !4887

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4887
  br label %cond.end351, !dbg !4887

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4887
  br label %cond.end353, !dbg !4887

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4887
  br label %cond.end355, !dbg !4887

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4887
  br label %cond.end357, !dbg !4887

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4887
  br label %cond.end359, !dbg !4887

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4887
  br label %cond.end361, !dbg !4887

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4887
  br label %cond.end363, !dbg !4887

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4887
  br label %cond.end365, !dbg !4887

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4887
  br label %cond.end367, !dbg !4887

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4887
  br label %cond.end369, !dbg !4887

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4887
  br label %cond.end371, !dbg !4887

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4887
  br label %cond.end373, !dbg !4887

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4887
  br label %cond.end375, !dbg !4887

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4887
  br label %cond.end377, !dbg !4887

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4887
  br label %cond.end379, !dbg !4887

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4887
  br label %cond.end381, !dbg !4887

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4887
  br label %cond.end383, !dbg !4887

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4887
  br label %cond.end385, !dbg !4887

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4887
  br label %cond.end387, !dbg !4887

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4887
  br label %cond.end389, !dbg !4887

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4887
  br label %cond.end391, !dbg !4887

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4887
  br label %cond.end393, !dbg !4887

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4887
  br label %cond.end395, !dbg !4887

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4887
  br label %cond.end397, !dbg !4887

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4887
  br label %cond.end399, !dbg !4887

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4887
  br label %cond.end401, !dbg !4887

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4887
  br label %cond.end403, !dbg !4887

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4887
  br label %cond.end405, !dbg !4887

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4887
  br label %cond.end407, !dbg !4887

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4887
  br label %cond.end409, !dbg !4887

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4887
  br label %cond.end411, !dbg !4887

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4887
  br label %cond.end413, !dbg !4887

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4887
  br label %cond.end415, !dbg !4887

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4887
  br label %cond.end417, !dbg !4887

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4887
  br label %cond.end419, !dbg !4887

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4887
  br label %cond.end421, !dbg !4887

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4887
  br label %cond.end423, !dbg !4887

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4887
  br label %cond.end425, !dbg !4887

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4887
  br label %cond.end427, !dbg !4887

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4887
  br label %cond.end429, !dbg !4887

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4887
  br label %cond.end431, !dbg !4887

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4887
  br label %cond.end433, !dbg !4887

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4887
  br label %cond.end435, !dbg !4887

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4887
  br label %cond.end437, !dbg !4887

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4887
  br label %cond.end440, !dbg !4887

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4887

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4887
  br label %cond.end444, !dbg !4887

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4887
  %sub443 = sub i64 %72, 1, !dbg !4887
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4887
  br label %cond.end444, !dbg !4887

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4887
  %sub446 = sub i32 %cond445, 12, !dbg !4888
  %add = add i32 %sub446, 1, !dbg !4889
  store i32 %add, i32* %retval, align 4, !dbg !4890
  br label %return, !dbg !4890

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4891
  %dec = add i64 %73, -1, !dbg !4891
  store i64 %dec, i64* %size.addr, align 8, !dbg !4891
  %74 = load i64, i64* %size.addr, align 8, !dbg !4892
  %shr = lshr i64 %74, 12, !dbg !4892
  store i64 %shr, i64* %size.addr, align 8, !dbg !4892
  %75 = load i64, i64* %size.addr, align 8, !dbg !4893
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4870
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4894
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4895
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !4894, !srcloc !4896
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4894
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4897
  %add.i = add i32 %79, 1, !dbg !4898
  store i32 %add.i, i32* %retval, align 4, !dbg !4899
  br label %return, !dbg !4899

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4900
  ret i32 %80, !dbg !4900
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4901 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4862, metadata !DIExpression()), !dbg !4903
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4869, metadata !DIExpression()), !dbg !4905
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load i64, i64* %n.addr, align 8, !dbg !4908
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4905
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4909
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4910
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !4909, !srcloc !4896
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4909
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4911
  %add.i = add i32 %4, 1, !dbg !4912
  %sub = sub i32 %add.i, 1, !dbg !4913
  ret i32 %sub, !dbg !4914
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #1 !dbg !4915 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4925, metadata !DIExpression()), !dbg !4926
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4927
  ret i8* %0, !dbg !4928
}

; Function Attrs: noredzone
declare dso_local i32 @__cpuhp_setup_state(i32, i8*, i1 zeroext, i32 (i32)*, i32 (i32)*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %cpu) #1 !dbg !4929 {
entry:
  %retval = alloca %struct.zone_device*, align 8
  %cpu.addr = alloca i32, align 4
  %id = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load i16, i16* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 31), align 2, !dbg !4936
  %conv = zext i16 %0 to i32, !dbg !4936
  store i32 %conv, i32* %id, align 4, !dbg !4935
  %1 = load i32, i32* %id, align 4, !dbg !4937
  %cmp = icmp sge i32 %1, 0, !dbg !4939
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4940

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %id, align 4, !dbg !4941
  %3 = load i32, i32* @max_id, align 4, !dbg !4942
  %cmp2 = icmp slt i32 %2, %3, !dbg !4943
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4944

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8, !dbg !4945
  %5 = load i32, i32* %id, align 4, !dbg !4946
  %idxprom = sext i32 %5 to i64, !dbg !4945
  %arrayidx = getelementptr %struct.zone_device*, %struct.zone_device** %4, i64 %idxprom, !dbg !4945
  %6 = load %struct.zone_device*, %struct.zone_device** %arrayidx, align 8, !dbg !4945
  store %struct.zone_device* %6, %struct.zone_device** %retval, align 8, !dbg !4947
  br label %return, !dbg !4947

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct.zone_device* null, %struct.zone_device** %retval, align 8, !dbg !4948
  br label %return, !dbg !4948

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.zone_device*, %struct.zone_device** %retval, align 8, !dbg !4949
  ret %struct.zone_device* %7, !dbg !4949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #1 !dbg !4950 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4957, metadata !DIExpression()), !dbg !4959
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4961, metadata !DIExpression()), !dbg !4962
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4963, metadata !DIExpression()), !dbg !4964
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4965, metadata !DIExpression()), !dbg !4967
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4969, metadata !DIExpression()), !dbg !4970
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4971, metadata !DIExpression()), !dbg !4979
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4981, metadata !DIExpression()), !dbg !4982
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4987
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4988
  %div = sdiv i64 %1, 64, !dbg !4988
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4989
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4987
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4990
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4991
  %conv.i = trunc i64 %4 to i32, !dbg !4991
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !4992
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4993
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4993
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4993
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4994
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4994
  br i1 %8, label %cond.true, label %cond.false, !dbg !4994

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4994
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4994
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4995
  %and.i = and i64 %11, 63, !dbg !4996
  %shl.i = shl i64 1, %and.i, !dbg !4997
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4998
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4999
  %shr.i = ashr i64 %13, 6, !dbg !5000
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4998
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4998
  %and1.i = and i64 %shl.i, %14, !dbg !5001
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5002
  %conv = zext i1 %cmp.i to i32, !dbg !4994
  br label %cond.end, !dbg !4994

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4994
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4994
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5003
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5004
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !5005, !srcloc !5006
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5005
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5007
  %tobool.i = trunc i8 %20 to i1, !dbg !5007
  %conv2 = zext i1 %tobool.i to i32, !dbg !4994
  br label %cond.end, !dbg !4994

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4994
  %tobool = icmp ne i32 %cond, 0, !dbg !4994
  ret i1 %tobool, !dbg !5008
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_set_cpu(i32 %cpu, %struct.cpumask* %dstp) #1 !dbg !5009 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5017
  %call = call i32 @cpumask_check(i32 %0) #10, !dbg !5018
  %conv = zext i32 %call to i64, !dbg !5018
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !5019
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !5019
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !5019
  call void @set_bit(i64 %conv, i64* %arraydecay) #10, !dbg !5020
  ret void, !dbg !5021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pkg_temp_thermal_device_add(i32 %cpu) #1 !dbg !5022 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %id = alloca i32, align 4
  %tj_max = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %zonedev = alloca %struct.zone_device*, align 8
  %thres_count = alloca i32, align 4
  %err = alloca i32, align 4
  %__UNIQUE_ID___x209 = alloca i32, align 4
  %__UNIQUE_ID___x207 = alloca i32, align 4
  %__UNIQUE_ID___y208 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y210 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %_l = alloca i64, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata i32* %id, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load i16, i16* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 31), align 2, !dbg !5027
  %conv = zext i16 %0 to i32, !dbg !5027
  store i32 %conv, i32* %id, align 4, !dbg !5026
  call void @llvm.dbg.declare(metadata i32* %tj_max, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i32* %ebx, metadata !5032, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.declare(metadata i32* %ecx, metadata !5034, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5036, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !5038, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata i32* %thres_count, metadata !5040, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5042, metadata !DIExpression()), !dbg !5043
  %1 = load i32, i32* %id, align 4, !dbg !5044
  %2 = load i32, i32* @max_id, align 4, !dbg !5046
  %cmp = icmp sge i32 %1, %2, !dbg !5047
  br i1 %cmp, label %if.then, label %if.end, !dbg !5048

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5049
  br label %return, !dbg !5049

if.end:                                           ; preds = %entry
  call void @cpuid(i32 6, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #10, !dbg !5050
  %3 = load i32, i32* %ebx, align 4, !dbg !5051
  %and = and i32 %3, 7, !dbg !5052
  store i32 %and, i32* %thres_count, align 4, !dbg !5053
  %4 = load i32, i32* %thres_count, align 4, !dbg !5054
  %tobool = icmp ne i32 %4, 0, !dbg !5054
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5056

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5057
  br label %return, !dbg !5057

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x209, metadata !5058, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5061, metadata !DIExpression()), !dbg !5063
  %5 = load i32, i32* %thres_count, align 4, !dbg !5063
  store i32 %5, i32* %__UNIQUE_ID___x207, align 4, !dbg !5063
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5064, metadata !DIExpression()), !dbg !5063
  store i32 0, i32* %__UNIQUE_ID___y208, align 4, !dbg !5063
  %6 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5063
  %7 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5063
  %cmp4 = icmp sgt i32 %6, %7, !dbg !5063
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5063

cond.true:                                        ; preds = %if.end3
  %8 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5063
  br label %cond.end, !dbg !5063

cond.false:                                       ; preds = %if.end3
  %9 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5063
  br label %cond.end, !dbg !5063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5063
  store i32 %cond, i32* %tmp, align 4, !dbg !5063
  %10 = load i32, i32* %tmp, align 4, !dbg !5063
  store i32 %10, i32* %__UNIQUE_ID___x209, align 4, !dbg !5060
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y210, metadata !5065, metadata !DIExpression()), !dbg !5060
  store i32 2, i32* %__UNIQUE_ID___y210, align 4, !dbg !5060
  %11 = load i32, i32* %__UNIQUE_ID___x209, align 4, !dbg !5060
  %12 = load i32, i32* %__UNIQUE_ID___y210, align 4, !dbg !5060
  %cmp7 = icmp slt i32 %11, %12, !dbg !5060
  br i1 %cmp7, label %cond.true9, label %cond.false10, !dbg !5060

cond.true9:                                       ; preds = %cond.end
  %13 = load i32, i32* %__UNIQUE_ID___x209, align 4, !dbg !5060
  br label %cond.end11, !dbg !5060

cond.false10:                                     ; preds = %cond.end
  %14 = load i32, i32* %__UNIQUE_ID___y210, align 4, !dbg !5060
  br label %cond.end11, !dbg !5060

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %13, %cond.true9 ], [ %14, %cond.false10 ], !dbg !5060
  store i32 %cond12, i32* %tmp6, align 4, !dbg !5060
  %15 = load i32, i32* %tmp6, align 4, !dbg !5060
  store i32 %15, i32* %thres_count, align 4, !dbg !5066
  %16 = load i32, i32* %cpu.addr, align 4, !dbg !5067
  %call = call i32 @get_tj_max(i32 %16, i32* %tj_max) #10, !dbg !5068
  store i32 %call, i32* %err, align 4, !dbg !5069
  %17 = load i32, i32* %err, align 4, !dbg !5070
  %tobool13 = icmp ne i32 %17, 0, !dbg !5070
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5072

if.then14:                                        ; preds = %cond.end11
  %18 = load i32, i32* %err, align 4, !dbg !5073
  store i32 %18, i32* %retval, align 4, !dbg !5074
  br label %return, !dbg !5074

if.end15:                                         ; preds = %cond.end11
  %call16 = call i8* @kzalloc(i64 128, i32 3264) #10, !dbg !5075
  %19 = bitcast i8* %call16 to %struct.zone_device*, !dbg !5075
  store %struct.zone_device* %19, %struct.zone_device** %zonedev, align 8, !dbg !5076
  %20 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5077
  %tobool17 = icmp ne %struct.zone_device* %20, null, !dbg !5077
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5079

if.then18:                                        ; preds = %if.end15
  store i32 -12, i32* %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

if.end19:                                         ; preds = %if.end15
  br label %do.body, !dbg !5081

do.body:                                          ; preds = %if.end19
  br label %do.body20, !dbg !5082

do.body20:                                        ; preds = %do.body
  %21 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5084
  %work = getelementptr inbounds %struct.zone_device, %struct.zone_device* %21, i32 0, i32 5, !dbg !5084
  %work21 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work, i32 0, i32 0, !dbg !5084
  call void @__init_work(%struct.work_struct* %work21, i32 0) #10, !dbg !5084
  %22 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5084
  %work22 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %22, i32 0, i32 5, !dbg !5084
  %work23 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work22, i32 0, i32 0, !dbg !5084
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work23, i32 0, i32 0, !dbg !5084
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !5084
  store i64 68719476704, i64* %counter, align 8, !dbg !5084
  %23 = bitcast %struct.atomic64_t* %data to i8*, !dbg !5084
  %24 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !5084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false), !dbg !5084
  %25 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5084
  %work24 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %25, i32 0, i32 5, !dbg !5084
  %work25 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work24, i32 0, i32 0, !dbg !5084
  %entry26 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work25, i32 0, i32 1, !dbg !5084
  call void @INIT_LIST_HEAD(%struct.list_head* %entry26) #10, !dbg !5084
  %26 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5084
  %work27 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %26, i32 0, i32 5, !dbg !5084
  %work28 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work27, i32 0, i32 0, !dbg !5084
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work28, i32 0, i32 2, !dbg !5084
  store void (%struct.work_struct*)* @pkg_temp_thermal_threshold_work_fn, void (%struct.work_struct*)** %func, align 8, !dbg !5084
  br label %do.end, !dbg !5084

do.end:                                           ; preds = %do.body20
  %27 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5082
  %work29 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %27, i32 0, i32 5, !dbg !5082
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work29, i32 0, i32 1, !dbg !5082
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #10, !dbg !5082
  br label %do.end30, !dbg !5082

do.end30:                                         ; preds = %do.end
  %28 = load i32, i32* %cpu.addr, align 4, !dbg !5086
  %29 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5087
  %cpu31 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %29, i32 0, i32 0, !dbg !5088
  store i32 %28, i32* %cpu31, align 8, !dbg !5089
  %30 = load i32, i32* %tj_max, align 4, !dbg !5090
  %31 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5091
  %tj_max32 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %31, i32 0, i32 2, !dbg !5092
  store i32 %30, i32* %tj_max32, align 8, !dbg !5093
  %32 = load i32, i32* %thres_count, align 4, !dbg !5094
  %33 = load i32, i32* %thres_count, align 4, !dbg !5095
  %cmp33 = icmp eq i32 %33, 2, !dbg !5096
  %34 = zext i1 %cmp33 to i64, !dbg !5097
  %cond35 = select i1 %cmp33, i32 3, i32 1, !dbg !5097
  %35 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5098
  %36 = bitcast %struct.zone_device* %35 to i8*, !dbg !5098
  %call36 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %cond35, i8* %36, %struct.thermal_zone_device_ops* @tzone_ops, %struct.thermal_zone_params* @pkg_temp_tz_params, i32 0, i32 0) #10, !dbg !5099
  %37 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5100
  %tzone = getelementptr inbounds %struct.zone_device, %struct.zone_device* %37, i32 0, i32 6, !dbg !5101
  store %struct.thermal_zone_device* %call36, %struct.thermal_zone_device** %tzone, align 8, !dbg !5102
  %38 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5103
  %tzone37 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %38, i32 0, i32 6, !dbg !5105
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone37, align 8, !dbg !5105
  %40 = bitcast %struct.thermal_zone_device* %39 to i8*, !dbg !5103
  %call38 = call zeroext i1 @IS_ERR(i8* %40) #10, !dbg !5106
  br i1 %call38, label %if.then39, label %if.end43, !dbg !5107

if.then39:                                        ; preds = %do.end30
  %41 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5108
  %tzone40 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %41, i32 0, i32 6, !dbg !5110
  %42 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone40, align 8, !dbg !5110
  %43 = bitcast %struct.thermal_zone_device* %42 to i8*, !dbg !5108
  %call41 = call i64 @PTR_ERR(i8* %43) #10, !dbg !5111
  %conv42 = trunc i64 %call41 to i32, !dbg !5111
  store i32 %conv42, i32* %err, align 4, !dbg !5112
  %44 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5113
  %45 = bitcast %struct.zone_device* %44 to i8*, !dbg !5113
  call void @kfree(i8* %45) #10, !dbg !5114
  %46 = load i32, i32* %err, align 4, !dbg !5115
  store i32 %46, i32* %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

if.end43:                                         ; preds = %do.end30
  %47 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5117
  %tzone44 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %47, i32 0, i32 6, !dbg !5118
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone44, align 8, !dbg !5118
  %call45 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %48) #10, !dbg !5119
  store i32 %call45, i32* %err, align 4, !dbg !5120
  %49 = load i32, i32* %err, align 4, !dbg !5121
  %tobool46 = icmp ne i32 %49, 0, !dbg !5121
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !5123

if.then47:                                        ; preds = %if.end43
  %50 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5124
  %tzone48 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %50, i32 0, i32 6, !dbg !5126
  %51 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone48, align 8, !dbg !5126
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %51) #10, !dbg !5127
  %52 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5128
  %53 = bitcast %struct.zone_device* %52 to i8*, !dbg !5128
  call void @kfree(i8* %53) #10, !dbg !5129
  %54 = load i32, i32* %err, align 4, !dbg !5130
  store i32 %54, i32* %retval, align 4, !dbg !5131
  br label %return, !dbg !5131

if.end49:                                         ; preds = %if.end43
  br label %do.body50, !dbg !5132

do.body50:                                        ; preds = %if.end49
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !5133, metadata !DIExpression()), !dbg !5135
  %call51 = call i64 @paravirt_read_msr(i32 434) #10, !dbg !5135
  store i64 %call51, i64* %_l, align 8, !dbg !5135
  %55 = load i64, i64* %_l, align 8, !dbg !5135
  %conv52 = trunc i64 %55 to i32, !dbg !5135
  %56 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5135
  %msr_pkg_therm_low = getelementptr inbounds %struct.zone_device, %struct.zone_device* %56, i32 0, i32 3, !dbg !5135
  store i32 %conv52, i32* %msr_pkg_therm_low, align 4, !dbg !5135
  %57 = load i64, i64* %_l, align 8, !dbg !5135
  %shr = lshr i64 %57, 32, !dbg !5135
  %conv53 = trunc i64 %shr to i32, !dbg !5135
  %58 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5135
  %msr_pkg_therm_high = getelementptr inbounds %struct.zone_device, %struct.zone_device* %58, i32 0, i32 4, !dbg !5135
  store i32 %conv53, i32* %msr_pkg_therm_high, align 8, !dbg !5135
  br label %do.end54, !dbg !5135

do.end54:                                         ; preds = %do.body50
  %59 = load i32, i32* %cpu.addr, align 4, !dbg !5136
  %60 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5137
  %cpumask = getelementptr inbounds %struct.zone_device, %struct.zone_device* %60, i32 0, i32 7, !dbg !5138
  call void @cpumask_set_cpu(i32 %59, %struct.cpumask* %cpumask) #10, !dbg !5139
  br label %do.body55, !dbg !5140

do.body55:                                        ; preds = %do.end54
  br label %do.body56, !dbg !5141

do.body56:                                        ; preds = %do.body55
  call void @arch_local_irq_disable() #10, !dbg !5143
  br label %do.end57, !dbg !5143

do.end57:                                         ; preds = %do.body56
  br label %do.body58, !dbg !5141

do.body58:                                        ; preds = %do.end57
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5145, !srcloc !5147
  br label %do.body59, !dbg !5145

do.body59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !5148

do.end60:                                         ; preds = %do.body59
  br label %do.end61, !dbg !5145

do.end61:                                         ; preds = %do.end60
  br label %do.end62, !dbg !5141

do.end62:                                         ; preds = %do.end61
  %61 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5150
  %62 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8, !dbg !5151
  %63 = load i32, i32* %id, align 4, !dbg !5152
  %idxprom = sext i32 %63 to i64, !dbg !5151
  %arrayidx = getelementptr %struct.zone_device*, %struct.zone_device** %62, i64 %idxprom, !dbg !5151
  store %struct.zone_device* %61, %struct.zone_device** %arrayidx, align 8, !dbg !5153
  br label %do.body63, !dbg !5154

do.body63:                                        ; preds = %do.end62
  br label %do.body64, !dbg !5155

do.body64:                                        ; preds = %do.body63
  call void @arch_local_irq_enable() #10, !dbg !5157
  br label %do.end65, !dbg !5157

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !5155

do.body66:                                        ; preds = %do.end65
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5159, !srcloc !5161
  br label %do.body67, !dbg !5159

do.body67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !5162

do.end68:                                         ; preds = %do.body67
  br label %do.end69, !dbg !5159

do.end69:                                         ; preds = %do.end68
  br label %do.end70, !dbg !5155

do.end70:                                         ; preds = %do.end69
  store i32 0, i32* %retval, align 4, !dbg !5164
  br label %return, !dbg !5164

return:                                           ; preds = %do.end70, %if.then47, %if.then39, %if.then18, %if.then14, %if.then2, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !5165
  ret i32 %64, !dbg !5165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #1 !dbg !5166 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  ret i1 true, !dbg !5174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #1 !dbg !5175 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  ret void, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #1 !dbg !5186 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5191, metadata !DIExpression()), !dbg !5193
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5195, metadata !DIExpression()), !dbg !5196
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5197, metadata !DIExpression()), !dbg !5199
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5201, metadata !DIExpression()), !dbg !5202
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5203, metadata !DIExpression()), !dbg !5204
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5207
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5208
  %div = sdiv i64 %1, 64, !dbg !5208
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5209
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5207
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5210
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5211
  %conv.i = trunc i64 %4 to i32, !dbg !5211
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5212
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5213
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5213
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !5213
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5214
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5215
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5216
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !5218
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5219

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5220
  %12 = bitcast i64* %11 to i8*, !dbg !5220
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5220
  %shr.i = ashr i64 %13, 3, !dbg !5220
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5220
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5222
  %and.i = and i64 %14, 7, !dbg !5222
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5222
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5222
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !5223, !srcloc !5224
  br label %arch_set_bit.exit, !dbg !5225

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5226
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5228
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !5229, !srcloc !5230
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_check(i32 %cpu) #1 !dbg !5232 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5237
  call void @cpu_max_bits_warn(i32 %0, i32 1) #10, !dbg !5238
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !5239
  ret i32 %1, !dbg !5240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #1 !dbg !5241 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  ret i1 true, !dbg !5246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_max_bits_warn(i32 %cpu, i32 %bits) #1 !dbg !5247 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  ret void, !dbg !5254
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuid(i32 %op, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #1 !dbg !5255 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  %0 = load i32, i32* %op.addr, align 4, !dbg !5268
  %1 = load i32*, i32** %eax.addr, align 8, !dbg !5269
  store i32 %0, i32* %1, align 4, !dbg !5270
  %2 = load i32*, i32** %ecx.addr, align 8, !dbg !5271
  store i32 0, i32* %2, align 4, !dbg !5272
  %3 = load i32*, i32** %eax.addr, align 8, !dbg !5273
  %4 = load i32*, i32** %ebx.addr, align 8, !dbg !5274
  %5 = load i32*, i32** %ecx.addr, align 8, !dbg !5275
  %6 = load i32*, i32** %edx.addr, align 8, !dbg !5276
  call void @__cpuid(i32* %3, i32* %4, i32* %5, i32* %6) #10, !dbg !5277
  ret void, !dbg !5278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_tj_max(i32 %cpu, i32* %tj_max) #1 !dbg !5279 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %tj_max.addr = alloca i32*, align 8
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i32* %tj_max, i32** %tj_max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tj_max.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5286, metadata !DIExpression()), !dbg !5287
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5288, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5290, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5292, metadata !DIExpression()), !dbg !5293
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5294
  %call = call i32 @rdmsr_safe_on_cpu(i32 %0, i32 418, i32* %eax, i32* %edx) #10, !dbg !5295
  store i32 %call, i32* %err, align 4, !dbg !5296
  %1 = load i32, i32* %err, align 4, !dbg !5297
  %tobool = icmp ne i32 %1, 0, !dbg !5297
  br i1 %tobool, label %if.then, label %if.end, !dbg !5299

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !5300
  store i32 %2, i32* %retval, align 4, !dbg !5301
  br label %return, !dbg !5301

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %eax, align 4, !dbg !5302
  %shr = lshr i32 %3, 16, !dbg !5303
  %and = and i32 %shr, 255, !dbg !5304
  store i32 %and, i32* %val, align 4, !dbg !5305
  %4 = load i32, i32* %val, align 4, !dbg !5306
  %mul = mul i32 %4, 1000, !dbg !5307
  %5 = load i32*, i32** %tj_max.addr, align 8, !dbg !5308
  store i32 %mul, i32* %5, align 4, !dbg !5309
  %6 = load i32, i32* %val, align 4, !dbg !5310
  %tobool1 = icmp ne i32 %6, 0, !dbg !5310
  %7 = zext i1 %tobool1 to i64, !dbg !5310
  %cond = select i1 %tobool1, i32 0, i32 -22, !dbg !5310
  store i32 %cond, i32* %retval, align 4, !dbg !5311
  br label %return, !dbg !5311

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5312
  ret i32 %8, !dbg !5312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #1 !dbg !5313 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4554, metadata !DIExpression()), !dbg !5314
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4567, metadata !DIExpression()), !dbg !5317
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4569, metadata !DIExpression()), !dbg !5318
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4571, metadata !DIExpression()), !dbg !5319
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4573, metadata !DIExpression()), !dbg !5320
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4579, metadata !DIExpression()), !dbg !5322
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4585, metadata !DIExpression()), !dbg !5324
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4594, metadata !DIExpression()), !dbg !5327
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4596, metadata !DIExpression()), !dbg !5328
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4598, metadata !DIExpression()), !dbg !5329
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4600, metadata !DIExpression()), !dbg !5330
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4602, metadata !DIExpression()), !dbg !5331
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4604, metadata !DIExpression()), !dbg !5332
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4606, metadata !DIExpression()), !dbg !5333
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4608, metadata !DIExpression()), !dbg !5334
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load i64, i64* %size.addr, align 8, !dbg !5339
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5340
  %or = or i32 %1, 256, !dbg !5341
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5342
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !5343
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5344

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5345
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5346
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5347

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5348
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5349
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5350
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5351
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5331
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5352
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5353
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5354
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5355
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5356
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5357
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5358
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5358
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5358
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5358
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5358
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5359
  br label %kmalloc.exit, !dbg !5359

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5360
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5361
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5361
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5362

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5363
  br label %kmalloc_index.exit.i, !dbg !5363

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5364
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5365
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5366

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5367
  br label %kmalloc_index.exit.i, !dbg !5367

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5368
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5369
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5370

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5371
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5372
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5373

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5374
  br label %kmalloc_index.exit.i, !dbg !5374

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5375
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5376
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5377

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5378
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5379
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5380

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5381
  br label %kmalloc_index.exit.i, !dbg !5381

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5382
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5383
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5384

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5385
  br label %kmalloc_index.exit.i, !dbg !5385

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5386
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5387
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5388

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5389
  br label %kmalloc_index.exit.i, !dbg !5389

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5390
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5391
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5392

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5393
  br label %kmalloc_index.exit.i, !dbg !5393

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5394
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5395
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5396

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5397
  br label %kmalloc_index.exit.i, !dbg !5397

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5398
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5399
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5400

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5401
  br label %kmalloc_index.exit.i, !dbg !5401

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5402
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5403
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5404

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5405
  br label %kmalloc_index.exit.i, !dbg !5405

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5406
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5407
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5408

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5409
  br label %kmalloc_index.exit.i, !dbg !5409

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5410
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5411
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5412

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5413
  br label %kmalloc_index.exit.i, !dbg !5413

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5414
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5415
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5416

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5417
  br label %kmalloc_index.exit.i, !dbg !5417

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5418
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5419
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5420

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5421
  br label %kmalloc_index.exit.i, !dbg !5421

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5422
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5423
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5424

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5425
  br label %kmalloc_index.exit.i, !dbg !5425

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5426
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5427
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5428

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5429
  br label %kmalloc_index.exit.i, !dbg !5429

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5430
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5431
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5432

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5433
  br label %kmalloc_index.exit.i, !dbg !5433

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5434
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5435
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5436

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5437
  br label %kmalloc_index.exit.i, !dbg !5437

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5438
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5439
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5440

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5441
  br label %kmalloc_index.exit.i, !dbg !5441

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5442
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5443
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5444

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5445
  br label %kmalloc_index.exit.i, !dbg !5445

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5446
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5447
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5448

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5449
  br label %kmalloc_index.exit.i, !dbg !5449

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5450
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5451
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5452

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5453
  br label %kmalloc_index.exit.i, !dbg !5453

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5454
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5455
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5456

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5457
  br label %kmalloc_index.exit.i, !dbg !5457

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5458
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5459
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5460

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5461
  br label %kmalloc_index.exit.i, !dbg !5461

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5462
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5463
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5464

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5465
  br label %kmalloc_index.exit.i, !dbg !5465

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5466
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5467
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5468

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5469
  br label %kmalloc_index.exit.i, !dbg !5469

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5470
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5471
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5472

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5473
  br label %kmalloc_index.exit.i, !dbg !5473

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5474
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5475
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5476

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5477
  br label %kmalloc_index.exit.i, !dbg !5477

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5478, !srcloc !4803
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !5479, !srcloc !4807
  unreachable, !dbg !5480

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5481
  store i32 %45, i32* %index.i, align 4, !dbg !5482
  %46 = load i32, i32* %index.i, align 4, !dbg !5483
  %tobool.i = icmp ne i32 %46, 0, !dbg !5483
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5484

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5485
  br label %kmalloc.exit, !dbg !5485

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5486
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5487
  %and.i.i = and i32 %48, 17, !dbg !5487
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5487
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5487
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5487
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5487
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5488

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5489
  br label %kmalloc_type.exit.i, !dbg !5489

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5490
  %and2.i.i = and i32 %49, 1, !dbg !5491
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5490
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5490
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5490
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5492
  br label %kmalloc_type.exit.i, !dbg !5492

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5493
  %idxprom.i = zext i32 %51 to i64, !dbg !5494
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5494
  %52 = load i32, i32* %index.i, align 4, !dbg !5495
  %idxprom6.i = zext i32 %52 to i64, !dbg !5494
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5494
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5494
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5496
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5497
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5498
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5499
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5500
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5500
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5500
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5500
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5500
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5319
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5501
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5502
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5503
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5504
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5505
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5506
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5507
  store i8* %62, i8** %retval.i, align 8, !dbg !5508
  br label %kmalloc.exit, !dbg !5508

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5509
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5510
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5511
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5511
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5511
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5511
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5511
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5512
  br label %kmalloc.exit, !dbg !5512

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5513
  ret i8* %65, !dbg !5514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #1 !dbg !5515 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  ret void, !dbg !5522
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #1 !dbg !5523 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  br label %do.body, !dbg !5529

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5530

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5532

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5530

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5534
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5534
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5534
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5534
  br label %do.end3, !dbg !5534

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5530

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5536
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5537
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5538
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5539
  ret void, !dbg !5540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pkg_temp_thermal_threshold_work_fn(%struct.work_struct* %work) #1 !dbg !5541 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %tzone = alloca %struct.thermal_zone_device*, align 8
  %cpu = alloca i32, align 4
  %zonedev = alloca %struct.zone_device*, align 8
  %msr_val = alloca i64, align 8
  %wr_val = alloca i64, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzone, metadata !5544, metadata !DIExpression()), !dbg !5545
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %tzone, align 8, !dbg !5545
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32 0, i32* %cpu, align 4, !dbg !5547
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !5548, metadata !DIExpression()), !dbg !5549
  call void @llvm.dbg.declare(metadata i64* %msr_val, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata i64* %wr_val, metadata !5552, metadata !DIExpression()), !dbg !5553
  call void @mutex_lock(%struct.mutex* @thermal_zone_mutex) #10, !dbg !5554
  br label %do.body, !dbg !5555

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5556

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #10, !dbg !5558
  br label %do.end, !dbg !5558

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5556

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5560, !srcloc !5562
  br label %do.body3, !dbg !5560

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5563

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !5560

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !5556

do.end6:                                          ; preds = %do.end5
  %0 = load i32, i32* @pkg_work_cnt, align 4, !dbg !5565
  %inc = add i32 %0, 1, !dbg !5565
  store i32 %inc, i32* @pkg_work_cnt, align 4, !dbg !5565
  %1 = load i32, i32* %cpu, align 4, !dbg !5566
  %call = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %1) #10, !dbg !5567
  store %struct.zone_device* %call, %struct.zone_device** %zonedev, align 8, !dbg !5568
  %2 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5569
  %tobool = icmp ne %struct.zone_device* %2, null, !dbg !5569
  br i1 %tobool, label %if.end, label %if.then, !dbg !5571

if.then:                                          ; preds = %do.end6
  br label %do.body7, !dbg !5572

do.body7:                                         ; preds = %if.then
  br label %do.body8, !dbg !5574

do.body8:                                         ; preds = %do.body7
  call void @arch_local_irq_enable() #10, !dbg !5576
  br label %do.end9, !dbg !5576

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !5574

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5578, !srcloc !5580
  br label %do.body11, !dbg !5578

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5581

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5578

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !5574

do.end14:                                         ; preds = %do.end13
  call void @mutex_unlock(%struct.mutex* @thermal_zone_mutex) #10, !dbg !5583
  br label %return, !dbg !5584

if.end:                                           ; preds = %do.end6
  %3 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5585
  %work_scheduled = getelementptr inbounds %struct.zone_device, %struct.zone_device* %3, i32 0, i32 1, !dbg !5586
  store i8 0, i8* %work_scheduled, align 4, !dbg !5587
  br label %do.body15, !dbg !5588

do.body15:                                        ; preds = %if.end
  %call16 = call i64 @paravirt_read_msr(i32 433) #10, !dbg !5589
  store i64 %call16, i64* %msr_val, align 8, !dbg !5589
  br label %do.end17, !dbg !5589

do.end17:                                         ; preds = %do.body15
  %4 = load i64, i64* %msr_val, align 8, !dbg !5591
  %and = and i64 %4, -641, !dbg !5592
  store i64 %and, i64* %wr_val, align 8, !dbg !5593
  %5 = load i64, i64* %wr_val, align 8, !dbg !5594
  %6 = load i64, i64* %msr_val, align 8, !dbg !5596
  %cmp = icmp ne i64 %5, %6, !dbg !5597
  br i1 %cmp, label %if.then18, label %if.end20, !dbg !5598

if.then18:                                        ; preds = %do.end17
  %7 = load i64, i64* %wr_val, align 8, !dbg !5599
  call void @wrmsrl(i32 433, i64 %7) #10, !dbg !5601
  %8 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5602
  %tzone19 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %8, i32 0, i32 6, !dbg !5603
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone19, align 8, !dbg !5603
  store %struct.thermal_zone_device* %9, %struct.thermal_zone_device** %tzone, align 8, !dbg !5604
  br label %if.end20, !dbg !5605

if.end20:                                         ; preds = %if.then18, %do.end17
  call void @enable_pkg_thres_interrupt() #10, !dbg !5606
  br label %do.body21, !dbg !5607

do.body21:                                        ; preds = %if.end20
  br label %do.body22, !dbg !5608

do.body22:                                        ; preds = %do.body21
  call void @arch_local_irq_enable() #10, !dbg !5610
  br label %do.end23, !dbg !5610

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !5608

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5612, !srcloc !5614
  br label %do.body25, !dbg !5612

do.body25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5615

do.end26:                                         ; preds = %do.body25
  br label %do.end27, !dbg !5612

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !5608

do.end28:                                         ; preds = %do.end27
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone, align 8, !dbg !5617
  %tobool29 = icmp ne %struct.thermal_zone_device* %10, null, !dbg !5617
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5619

if.then30:                                        ; preds = %do.end28
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone, align 8, !dbg !5620
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %11, i32 0) #10, !dbg !5621
  br label %if.end31, !dbg !5621

if.end31:                                         ; preds = %if.then30, %do.end28
  call void @mutex_unlock(%struct.mutex* @thermal_zone_mutex) #10, !dbg !5622
  br label %return, !dbg !5623

return:                                           ; preds = %if.end31, %do.end14
  ret void, !dbg !5623
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #2

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #1 !dbg !5624 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5630
  %1 = ptrtoint i8* %0 to i64, !dbg !5630
  %2 = inttoptr i64 %1 to i8*, !dbg !5630
  %3 = ptrtoint i8* %2 to i64, !dbg !5630
  %cmp = icmp uge i64 %3, -4095, !dbg !5630
  %lnot = xor i1 %cmp, true, !dbg !5630
  %lnot1 = xor i1 %lnot, true, !dbg !5630
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5630
  %conv = sext i32 %lnot.ext to i64, !dbg !5630
  %tobool = icmp ne i64 %conv, 0, !dbg !5630
  ret i1 %tobool, !dbg !5631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #1 !dbg !5632 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5637
  %1 = ptrtoint i8* %0 to i64, !dbg !5638
  ret i64 %1, !dbg !5639
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr(i32 %msr) #1 !dbg !5640 {
entry:
  %msr.addr = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5646, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5649, metadata !DIExpression()), !dbg !5648
  %0 = load i64, i64* %__edi, align 8, !dbg !5648
  store i64 %0, i64* %__edi, align 8, !dbg !5648
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5650, metadata !DIExpression()), !dbg !5648
  %1 = load i64, i64* %__esi, align 8, !dbg !5648
  store i64 %1, i64* %__esi, align 8, !dbg !5648
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5651, metadata !DIExpression()), !dbg !5648
  %2 = load i64, i64* %__edx, align 8, !dbg !5648
  store i64 %2, i64* %__edx, align 8, !dbg !5648
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5652, metadata !DIExpression()), !dbg !5648
  %3 = load i64, i64* %__ecx, align 8, !dbg !5648
  store i64 %3, i64* %__ecx, align 8, !dbg !5648
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5653, metadata !DIExpression()), !dbg !5648
  %4 = load i64, i64* %__eax, align 8, !dbg !5648
  store i64 %4, i64* %__eax, align 8, !dbg !5648
  %5 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), align 8, !dbg !5648
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !5654
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5654
  %conv = zext i32 %7 to i64, !dbg !5654
  %8 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 26, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), i32 511, i64 %conv, i64 %6) #9, !dbg !5654, !srcloc !5657
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 0, !dbg !5654
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 1, !dbg !5654
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 2, !dbg !5654
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 3, !dbg !5654
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 4, !dbg !5654
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 5, !dbg !5654
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5654
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5654
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5654
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5654
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !5654
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult5), !dbg !5654
  %9 = load i64, i64* %__eax, align 8, !dbg !5654
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5658, metadata !DIExpression()), !dbg !5660
  store i64 -1, i64* %__mask, align 8, !dbg !5660
  %10 = load i64, i64* %__mask, align 8, !dbg !5660
  store i64 %10, i64* %tmp, align 8, !dbg !5660
  %11 = load i64, i64* %tmp, align 8, !dbg !5660
  %and = and i64 %9, %11, !dbg !5654
  store i64 %and, i64* %__ret, align 8, !dbg !5654
  %12 = load i64, i64* %__ret, align 8, !dbg !5648
  store i64 %12, i64* %tmp6, align 8, !dbg !5661
  %13 = load i64, i64* %tmp6, align 8, !dbg !5648
  ret i64 %13, !dbg !5662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #1 !dbg !5663 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5664, metadata !DIExpression()), !dbg !5666
  %0 = load i64, i64* %__edi, align 8, !dbg !5666
  store i64 %0, i64* %__edi, align 8, !dbg !5666
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5667, metadata !DIExpression()), !dbg !5666
  %1 = load i64, i64* %__esi, align 8, !dbg !5666
  store i64 %1, i64* %__esi, align 8, !dbg !5666
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5668, metadata !DIExpression()), !dbg !5666
  %2 = load i64, i64* %__edx, align 8, !dbg !5666
  store i64 %2, i64* %__edx, align 8, !dbg !5666
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5669, metadata !DIExpression()), !dbg !5666
  %3 = load i64, i64* %__ecx, align 8, !dbg !5666
  store i64 %3, i64* %__ecx, align 8, !dbg !5666
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5670, metadata !DIExpression()), !dbg !5666
  %4 = load i64, i64* %__eax, align 8, !dbg !5666
  store i64 %4, i64* %__eax, align 8, !dbg !5666
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5666
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !5666
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !5666, !srcloc !5671
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5666
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5666
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5666
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult1), !dbg !5666
  ret void, !dbg !5672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #1 !dbg !5673 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5674, metadata !DIExpression()), !dbg !5676
  %0 = load i64, i64* %__edi, align 8, !dbg !5676
  store i64 %0, i64* %__edi, align 8, !dbg !5676
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5677, metadata !DIExpression()), !dbg !5676
  %1 = load i64, i64* %__esi, align 8, !dbg !5676
  store i64 %1, i64* %__esi, align 8, !dbg !5676
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5678, metadata !DIExpression()), !dbg !5676
  %2 = load i64, i64* %__edx, align 8, !dbg !5676
  store i64 %2, i64* %__edx, align 8, !dbg !5676
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5679, metadata !DIExpression()), !dbg !5676
  %3 = load i64, i64* %__ecx, align 8, !dbg !5676
  store i64 %3, i64* %__ecx, align 8, !dbg !5676
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5680, metadata !DIExpression()), !dbg !5676
  %4 = load i64, i64* %__eax, align 8, !dbg !5676
  store i64 %4, i64* %__eax, align 8, !dbg !5676
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5676
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !5676
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #9, !dbg !5676, !srcloc !5681
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5676
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5676
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5676
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult1), !dbg !5676
  ret void, !dbg !5682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuid(i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #1 !dbg !5683 {
entry:
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5694, metadata !DIExpression()), !dbg !5696
  %0 = load i64, i64* %__edi, align 8, !dbg !5696
  store i64 %0, i64* %__edi, align 8, !dbg !5696
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5697, metadata !DIExpression()), !dbg !5696
  %1 = load i64, i64* %__esi, align 8, !dbg !5696
  store i64 %1, i64* %__esi, align 8, !dbg !5696
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5698, metadata !DIExpression()), !dbg !5696
  %2 = load i64, i64* %__edx, align 8, !dbg !5696
  store i64 %2, i64* %__edx, align 8, !dbg !5696
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5699, metadata !DIExpression()), !dbg !5696
  %3 = load i64, i64* %__ecx, align 8, !dbg !5696
  store i64 %3, i64* %__ecx, align 8, !dbg !5696
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5700, metadata !DIExpression()), !dbg !5696
  %4 = load i64, i64* %__eax, align 8, !dbg !5696
  store i64 %4, i64* %__eax, align 8, !dbg !5696
  %5 = load void (i32*, i32*, i32*, i32*)*, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), align 8, !dbg !5696
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !5696
  %7 = load i32*, i32** %eax.addr, align 8, !dbg !5696
  %8 = ptrtoint i32* %7 to i64, !dbg !5696
  %9 = load i32*, i32** %ebx.addr, align 8, !dbg !5696
  %10 = ptrtoint i32* %9 to i64, !dbg !5696
  %11 = load i32*, i32** %ecx.addr, align 8, !dbg !5696
  %12 = ptrtoint i32* %11 to i64, !dbg !5696
  %13 = load i32*, i32** %edx.addr, align 8, !dbg !5696
  %14 = ptrtoint i32* %13 to i64, !dbg !5696
  %15 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},{cx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 25, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), i32 511, i64 %8, i64 %10, i64 %12, i64 %14, i64 %6) #9, !dbg !5696, !srcloc !5701
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %15, 0, !dbg !5696
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %15, 1, !dbg !5696
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %15, 2, !dbg !5696
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %15, 3, !dbg !5696
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %15, 4, !dbg !5696
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5696
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5696
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5696
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5696
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult4), !dbg !5696
  ret void, !dbg !5702
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rdmsr_safe_on_cpu(i32 %cpu, i32 %msr_no, i32* %l, i32* %h) #1 !dbg !5703 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %_err = alloca i32, align 4
  %_l = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  store i32 %msr_no, i32* %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr_no.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  store i32* %l, i32** %l.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %l.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  store i32* %h, i32** %h.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %h.addr, metadata !5713, metadata !DIExpression()), !dbg !5714
  call void @llvm.dbg.declare(metadata i32* %_err, metadata !5715, metadata !DIExpression()), !dbg !5717
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !5718, metadata !DIExpression()), !dbg !5717
  %0 = load i32, i32* %msr_no.addr, align 4, !dbg !5717
  %call = call i64 @paravirt_read_msr_safe(i32 %0, i32* %_err) #10, !dbg !5717
  store i64 %call, i64* %_l, align 8, !dbg !5717
  %1 = load i64, i64* %_l, align 8, !dbg !5717
  %conv = trunc i64 %1 to i32, !dbg !5717
  %2 = load i32*, i32** %l.addr, align 8, !dbg !5717
  store i32 %conv, i32* %2, align 4, !dbg !5717
  %3 = load i64, i64* %_l, align 8, !dbg !5717
  %shr = lshr i64 %3, 32, !dbg !5717
  %conv1 = trunc i64 %shr to i32, !dbg !5717
  %4 = load i32*, i32** %h.addr, align 8, !dbg !5717
  store i32 %conv1, i32* %4, align 4, !dbg !5717
  %5 = load i32, i32* %_err, align 4, !dbg !5717
  store i32 %5, i32* %tmp, align 4, !dbg !5717
  %6 = load i32, i32* %tmp, align 4, !dbg !5717
  ret i32 %6, !dbg !5719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #1 !dbg !5720 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5723, metadata !DIExpression()), !dbg !5724
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5727, metadata !DIExpression()), !dbg !5729
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5730, metadata !DIExpression()), !dbg !5729
  %0 = load i64, i64* %__edi, align 8, !dbg !5729
  store i64 %0, i64* %__edi, align 8, !dbg !5729
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5731, metadata !DIExpression()), !dbg !5729
  %1 = load i64, i64* %__esi, align 8, !dbg !5729
  store i64 %1, i64* %__esi, align 8, !dbg !5729
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5732, metadata !DIExpression()), !dbg !5729
  %2 = load i64, i64* %__edx, align 8, !dbg !5729
  store i64 %2, i64* %__edx, align 8, !dbg !5729
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5733, metadata !DIExpression()), !dbg !5729
  %3 = load i64, i64* %__ecx, align 8, !dbg !5729
  store i64 %3, i64* %__ecx, align 8, !dbg !5729
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5734, metadata !DIExpression()), !dbg !5729
  %4 = load i64, i64* %__eax, align 8, !dbg !5729
  store i64 %4, i64* %__eax, align 8, !dbg !5729
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !5729
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !5735
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5735
  %conv = zext i32 %7 to i64, !dbg !5735
  %8 = load i32*, i32** %err.addr, align 8, !dbg !5735
  %9 = ptrtoint i32* %8 to i64, !dbg !5735
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #9, !dbg !5735, !srcloc !5738
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !5735
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !5735
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !5735
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !5735
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !5735
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !5735
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5735
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5735
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5735
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5735
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !5735
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult5), !dbg !5735
  %11 = load i64, i64* %__eax, align 8, !dbg !5735
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5739, metadata !DIExpression()), !dbg !5741
  store i64 -1, i64* %__mask, align 8, !dbg !5741
  %12 = load i64, i64* %__mask, align 8, !dbg !5741
  store i64 %12, i64* %tmp, align 8, !dbg !5741
  %13 = load i64, i64* %tmp, align 8, !dbg !5741
  %and = and i64 %11, %13, !dbg !5735
  store i64 %and, i64* %__ret, align 8, !dbg !5735
  %14 = load i64, i64* %__ret, align 8, !dbg !5729
  store i64 %14, i64* %tmp6, align 8, !dbg !5742
  %15 = load i64, i64* %tmp6, align 8, !dbg !5729
  ret i64 %15, !dbg !5743
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wrmsrl(i32 %msr, i64 %val) #1 !dbg !5744 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  br label %do.body, !dbg !5751

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %msr.addr, align 4, !dbg !5752
  %1 = load i64, i64* %val.addr, align 8, !dbg !5752
  %conv = trunc i64 %1 to i32, !dbg !5752
  %2 = load i64, i64* %val.addr, align 8, !dbg !5752
  %shr = lshr i64 %2, 32, !dbg !5752
  %conv1 = trunc i64 %shr to i32, !dbg !5752
  call void @paravirt_write_msr(i32 %0, i32 %conv, i32 %conv1) #10, !dbg !5752
  br label %do.end, !dbg !5752

do.end:                                           ; preds = %do.body
  ret void, !dbg !5754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enable_pkg_thres_interrupt() #1 !dbg !5755 {
entry:
  %thres_0 = alloca i8, align 1
  %thres_1 = alloca i8, align 1
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %_l = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8* %thres_0, metadata !5756, metadata !DIExpression()), !dbg !5757
  call void @llvm.dbg.declare(metadata i8* %thres_1, metadata !5758, metadata !DIExpression()), !dbg !5759
  call void @llvm.dbg.declare(metadata i32* %l, metadata !5760, metadata !DIExpression()), !dbg !5761
  call void @llvm.dbg.declare(metadata i32* %h, metadata !5762, metadata !DIExpression()), !dbg !5763
  br label %do.body, !dbg !5764

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !5765, metadata !DIExpression()), !dbg !5767
  %call = call i64 @paravirt_read_msr(i32 434) #10, !dbg !5767
  store i64 %call, i64* %_l, align 8, !dbg !5767
  %0 = load i64, i64* %_l, align 8, !dbg !5767
  %conv = trunc i64 %0 to i32, !dbg !5767
  store i32 %conv, i32* %l, align 4, !dbg !5767
  %1 = load i64, i64* %_l, align 8, !dbg !5767
  %shr = lshr i64 %1, 32, !dbg !5767
  %conv1 = trunc i64 %shr to i32, !dbg !5767
  store i32 %conv1, i32* %h, align 4, !dbg !5767
  br label %do.end, !dbg !5767

do.end:                                           ; preds = %do.body
  %2 = load i32, i32* %l, align 4, !dbg !5768
  %and = and i32 %2, 32512, !dbg !5769
  %shr2 = lshr i32 %and, 8, !dbg !5770
  %conv3 = trunc i32 %shr2 to i8, !dbg !5771
  store i8 %conv3, i8* %thres_0, align 1, !dbg !5772
  %3 = load i32, i32* %l, align 4, !dbg !5773
  %and4 = and i32 %3, 8323072, !dbg !5774
  %shr5 = lshr i32 %and4, 16, !dbg !5775
  %conv6 = trunc i32 %shr5 to i8, !dbg !5776
  store i8 %conv6, i8* %thres_1, align 1, !dbg !5777
  %4 = load i8, i8* %thres_0, align 1, !dbg !5778
  %tobool = icmp ne i8 %4, 0, !dbg !5778
  br i1 %tobool, label %if.then, label %if.end, !dbg !5780

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %l, align 4, !dbg !5781
  %or = or i32 %5, 32768, !dbg !5781
  store i32 %or, i32* %l, align 4, !dbg !5781
  br label %if.end, !dbg !5782

if.end:                                           ; preds = %if.then, %do.end
  %6 = load i8, i8* %thres_1, align 1, !dbg !5783
  %tobool7 = icmp ne i8 %6, 0, !dbg !5783
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5785

if.then8:                                         ; preds = %if.end
  %7 = load i32, i32* %l, align 4, !dbg !5786
  %or9 = or i32 %7, 8388608, !dbg !5786
  store i32 %or9, i32* %l, align 4, !dbg !5786
  br label %if.end10, !dbg !5787

if.end10:                                         ; preds = %if.then8, %if.end
  br label %do.body11, !dbg !5788

do.body11:                                        ; preds = %if.end10
  %8 = load i32, i32* %l, align 4, !dbg !5789
  %9 = load i32, i32* %h, align 4, !dbg !5789
  call void @paravirt_write_msr(i32 434, i32 %8, i32 %9) #10, !dbg !5789
  br label %do.end12, !dbg !5789

do.end12:                                         ; preds = %do.body11
  ret void, !dbg !5791
}

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @paravirt_write_msr(i32 %msr, i32 %low, i32 %high) #1 !dbg !5792 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !5797, metadata !DIExpression()), !dbg !5798
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5801, metadata !DIExpression()), !dbg !5803
  %0 = load i64, i64* %__edi, align 8, !dbg !5803
  store i64 %0, i64* %__edi, align 8, !dbg !5803
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5804, metadata !DIExpression()), !dbg !5803
  %1 = load i64, i64* %__esi, align 8, !dbg !5803
  store i64 %1, i64* %__esi, align 8, !dbg !5803
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5805, metadata !DIExpression()), !dbg !5803
  %2 = load i64, i64* %__edx, align 8, !dbg !5803
  store i64 %2, i64* %__edx, align 8, !dbg !5803
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5806, metadata !DIExpression()), !dbg !5803
  %3 = load i64, i64* %__ecx, align 8, !dbg !5803
  store i64 %3, i64* %__ecx, align 8, !dbg !5803
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5807, metadata !DIExpression()), !dbg !5803
  %4 = load i64, i64* %__eax, align 8, !dbg !5803
  store i64 %4, i64* %__eax, align 8, !dbg !5803
  %5 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), align 8, !dbg !5803
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !5803
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5803
  %conv = zext i32 %7 to i64, !dbg !5803
  %8 = load i32, i32* %low.addr, align 4, !dbg !5803
  %conv1 = zext i32 %8 to i64, !dbg !5803
  %9 = load i32, i32* %high.addr, align 4, !dbg !5803
  %conv2 = zext i32 %9 to i64, !dbg !5803
  %10 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 27, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #9, !dbg !5803, !srcloc !5808
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %10, 0, !dbg !5803
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %10, 1, !dbg !5803
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %10, 2, !dbg !5803
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %10, 3, !dbg !5803
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64 } %10, 4, !dbg !5803
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5803
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !5803
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !5803
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !5803
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult6), !dbg !5803
  ret void, !dbg !5809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_get_curr_temp(%struct.thermal_zone_device* %tzd, i32* %temp) #1 !dbg !5810 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %zonedev = alloca %struct.zone_device*, align 8
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !5813, metadata !DIExpression()), !dbg !5814
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !5817
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !5818
  %1 = load i8*, i8** %devdata, align 8, !dbg !5818
  %2 = bitcast i8* %1 to %struct.zone_device*, !dbg !5817
  store %struct.zone_device* %2, %struct.zone_device** %zonedev, align 8, !dbg !5816
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5819, metadata !DIExpression()), !dbg !5820
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5821, metadata !DIExpression()), !dbg !5822
  %3 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5823
  %cpu = getelementptr inbounds %struct.zone_device, %struct.zone_device* %3, i32 0, i32 0, !dbg !5824
  %4 = load i32, i32* %cpu, align 8, !dbg !5824
  %call = call i32 @rdmsr_on_cpu(i32 %4, i32 433, i32* %eax, i32* %edx) #10, !dbg !5825
  %5 = load i32, i32* %eax, align 4, !dbg !5826
  %and = and i32 %5, -2147483648, !dbg !5828
  %tobool = icmp ne i32 %and, 0, !dbg !5828
  br i1 %tobool, label %if.then, label %if.end, !dbg !5829

if.then:                                          ; preds = %entry
  %6 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5830
  %tj_max = getelementptr inbounds %struct.zone_device, %struct.zone_device* %6, i32 0, i32 2, !dbg !5832
  %7 = load i32, i32* %tj_max, align 8, !dbg !5832
  %8 = load i32, i32* %eax, align 4, !dbg !5833
  %shr = lshr i32 %8, 16, !dbg !5834
  %and1 = and i32 %shr, 127, !dbg !5835
  %mul = mul i32 %and1, 1000, !dbg !5836
  %sub = sub i32 %7, %mul, !dbg !5837
  %9 = load i32*, i32** %temp.addr, align 8, !dbg !5838
  store i32 %sub, i32* %9, align 4, !dbg !5839
  store i32 0, i32* %tmp, align 4, !dbg !5840
  %10 = load i32, i32* %tmp, align 4, !dbg !5843
  store i32 0, i32* %retval, align 4, !dbg !5844
  br label %return, !dbg !5844

if.end:                                           ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5845
  br label %return, !dbg !5845

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5846
  ret i32 %11, !dbg !5846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_get_trip_type(%struct.thermal_zone_device* %thermal, i32 %trip, i32* %type) #1 !dbg !5847 {
entry:
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %type.addr = alloca i32*, align 8
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  %0 = load i32*, i32** %type.addr, align 8, !dbg !5854
  store i32 1, i32* %0, align 4, !dbg !5855
  ret i32 0, !dbg !5856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_get_trip_temp(%struct.thermal_zone_device* %tzd, i32 %trip, i32* %temp) #1 !dbg !5857 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %zonedev = alloca %struct.zone_device*, align 8
  %thres_reg_value = alloca i64, align 8
  %mask = alloca i32, align 4
  %shift = alloca i32, align 4
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !5864, metadata !DIExpression()), !dbg !5865
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !5866
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !5867
  %1 = load i8*, i8** %devdata, align 8, !dbg !5867
  %2 = bitcast i8* %1 to %struct.zone_device*, !dbg !5866
  store %struct.zone_device* %2, %struct.zone_device** %zonedev, align 8, !dbg !5865
  call void @llvm.dbg.declare(metadata i64* %thres_reg_value, metadata !5868, metadata !DIExpression()), !dbg !5869
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5870, metadata !DIExpression()), !dbg !5871
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5872, metadata !DIExpression()), !dbg !5873
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5874, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5876, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5878, metadata !DIExpression()), !dbg !5879
  %3 = load i32, i32* %trip.addr, align 4, !dbg !5880
  %cmp = icmp sge i32 %3, 2, !dbg !5882
  br i1 %cmp, label %if.then, label %if.end, !dbg !5883

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5884
  br label %return, !dbg !5884

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %trip.addr, align 4, !dbg !5885
  %tobool = icmp ne i32 %4, 0, !dbg !5885
  br i1 %tobool, label %if.then1, label %if.else, !dbg !5887

if.then1:                                         ; preds = %if.end
  store i32 8323072, i32* %mask, align 4, !dbg !5888
  store i32 16, i32* %shift, align 4, !dbg !5890
  br label %if.end2, !dbg !5891

if.else:                                          ; preds = %if.end
  store i32 32512, i32* %mask, align 4, !dbg !5892
  store i32 8, i32* %shift, align 4, !dbg !5894
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %5 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5895
  %cpu = getelementptr inbounds %struct.zone_device, %struct.zone_device* %5, i32 0, i32 0, !dbg !5896
  %6 = load i32, i32* %cpu, align 8, !dbg !5896
  %call = call i32 @rdmsr_on_cpu(i32 %6, i32 434, i32* %eax, i32* %edx) #10, !dbg !5897
  store i32 %call, i32* %ret, align 4, !dbg !5898
  %7 = load i32, i32* %ret, align 4, !dbg !5899
  %cmp3 = icmp slt i32 %7, 0, !dbg !5901
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5902

if.then4:                                         ; preds = %if.end2
  %8 = load i32, i32* %ret, align 4, !dbg !5903
  store i32 %8, i32* %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

if.end5:                                          ; preds = %if.end2
  %9 = load i32, i32* %eax, align 4, !dbg !5905
  %10 = load i32, i32* %mask, align 4, !dbg !5906
  %and = and i32 %9, %10, !dbg !5907
  %11 = load i32, i32* %shift, align 4, !dbg !5908
  %shr = lshr i32 %and, %11, !dbg !5909
  %conv = zext i32 %shr to i64, !dbg !5910
  store i64 %conv, i64* %thres_reg_value, align 8, !dbg !5911
  %12 = load i64, i64* %thres_reg_value, align 8, !dbg !5912
  %tobool6 = icmp ne i64 %12, 0, !dbg !5912
  br i1 %tobool6, label %if.then7, label %if.else10, !dbg !5914

if.then7:                                         ; preds = %if.end5
  %13 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5915
  %tj_max = getelementptr inbounds %struct.zone_device, %struct.zone_device* %13, i32 0, i32 2, !dbg !5916
  %14 = load i32, i32* %tj_max, align 8, !dbg !5916
  %conv8 = zext i32 %14 to i64, !dbg !5915
  %15 = load i64, i64* %thres_reg_value, align 8, !dbg !5917
  %mul = mul i64 %15, 1000, !dbg !5918
  %sub = sub i64 %conv8, %mul, !dbg !5919
  %conv9 = trunc i64 %sub to i32, !dbg !5915
  %16 = load i32*, i32** %temp.addr, align 8, !dbg !5920
  store i32 %conv9, i32* %16, align 4, !dbg !5921
  br label %if.end11, !dbg !5922

if.else10:                                        ; preds = %if.end5
  %17 = load i32*, i32** %temp.addr, align 8, !dbg !5923
  store i32 0, i32* %17, align 4, !dbg !5924
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then7
  store i32 0, i32* %tmp, align 4, !dbg !5925
  %18 = load i32, i32* %tmp, align 4, !dbg !5928
  store i32 0, i32* %retval, align 4, !dbg !5929
  br label %return, !dbg !5929

return:                                           ; preds = %if.end11, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5930
  ret i32 %19, !dbg !5930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_set_trip_temp(%struct.thermal_zone_device* %tzd, i32 %trip, i32 %temp) #1 !dbg !5931 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %zonedev = alloca %struct.zone_device*, align 8
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %mask = alloca i32, align 4
  %shift = alloca i32, align 4
  %intr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !5932, metadata !DIExpression()), !dbg !5933
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !5936, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.declare(metadata %struct.zone_device** %zonedev, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !5940
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !5941
  %1 = load i8*, i8** %devdata, align 8, !dbg !5941
  %2 = bitcast i8* %1 to %struct.zone_device*, !dbg !5940
  store %struct.zone_device* %2, %struct.zone_device** %zonedev, align 8, !dbg !5939
  call void @llvm.dbg.declare(metadata i32* %l, metadata !5942, metadata !DIExpression()), !dbg !5943
  call void @llvm.dbg.declare(metadata i32* %h, metadata !5944, metadata !DIExpression()), !dbg !5945
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5946, metadata !DIExpression()), !dbg !5947
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5948, metadata !DIExpression()), !dbg !5949
  call void @llvm.dbg.declare(metadata i32* %intr, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5952, metadata !DIExpression()), !dbg !5953
  %3 = load i32, i32* %trip.addr, align 4, !dbg !5954
  %cmp = icmp sge i32 %3, 2, !dbg !5956
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5957

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %temp.addr, align 4, !dbg !5958
  %5 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5959
  %tj_max = getelementptr inbounds %struct.zone_device, %struct.zone_device* %5, i32 0, i32 2, !dbg !5960
  %6 = load i32, i32* %tj_max, align 8, !dbg !5960
  %cmp1 = icmp uge i32 %4, %6, !dbg !5961
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5962

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5963
  br label %return, !dbg !5963

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5964
  %cpu = getelementptr inbounds %struct.zone_device, %struct.zone_device* %7, i32 0, i32 0, !dbg !5965
  %8 = load i32, i32* %cpu, align 8, !dbg !5965
  %call = call i32 @rdmsr_on_cpu(i32 %8, i32 434, i32* %l, i32* %h) #10, !dbg !5966
  store i32 %call, i32* %ret, align 4, !dbg !5967
  %9 = load i32, i32* %ret, align 4, !dbg !5968
  %cmp2 = icmp slt i32 %9, 0, !dbg !5970
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5971

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !5972
  store i32 %10, i32* %retval, align 4, !dbg !5973
  br label %return, !dbg !5973

if.end4:                                          ; preds = %if.end
  %11 = load i32, i32* %trip.addr, align 4, !dbg !5974
  %tobool = icmp ne i32 %11, 0, !dbg !5974
  br i1 %tobool, label %if.then5, label %if.else, !dbg !5976

if.then5:                                         ; preds = %if.end4
  store i32 8323072, i32* %mask, align 4, !dbg !5977
  store i32 16, i32* %shift, align 4, !dbg !5979
  store i32 8388608, i32* %intr, align 4, !dbg !5980
  br label %if.end6, !dbg !5981

if.else:                                          ; preds = %if.end4
  store i32 32512, i32* %mask, align 4, !dbg !5982
  store i32 8, i32* %shift, align 4, !dbg !5984
  store i32 32768, i32* %intr, align 4, !dbg !5985
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %12 = load i32, i32* %mask, align 4, !dbg !5986
  %neg = xor i32 %12, -1, !dbg !5987
  %13 = load i32, i32* %l, align 4, !dbg !5988
  %and = and i32 %13, %neg, !dbg !5988
  store i32 %and, i32* %l, align 4, !dbg !5988
  %14 = load i32, i32* %temp.addr, align 4, !dbg !5989
  %tobool7 = icmp ne i32 %14, 0, !dbg !5989
  br i1 %tobool7, label %if.else11, label %if.then8, !dbg !5991

if.then8:                                         ; preds = %if.end6
  %15 = load i32, i32* %intr, align 4, !dbg !5992
  %neg9 = xor i32 %15, -1, !dbg !5994
  %16 = load i32, i32* %l, align 4, !dbg !5995
  %and10 = and i32 %16, %neg9, !dbg !5995
  store i32 %and10, i32* %l, align 4, !dbg !5995
  br label %if.end14, !dbg !5996

if.else11:                                        ; preds = %if.end6
  %17 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !5997
  %tj_max12 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %17, i32 0, i32 2, !dbg !5999
  %18 = load i32, i32* %tj_max12, align 8, !dbg !5999
  %19 = load i32, i32* %temp.addr, align 4, !dbg !6000
  %sub = sub i32 %18, %19, !dbg !6001
  %div = udiv i32 %sub, 1000, !dbg !6002
  %20 = load i32, i32* %shift, align 4, !dbg !6003
  %shl = shl i32 %div, %20, !dbg !6004
  %21 = load i32, i32* %l, align 4, !dbg !6005
  %or = or i32 %21, %shl, !dbg !6005
  store i32 %or, i32* %l, align 4, !dbg !6005
  %22 = load i32, i32* %intr, align 4, !dbg !6006
  %23 = load i32, i32* %l, align 4, !dbg !6007
  %or13 = or i32 %23, %22, !dbg !6007
  store i32 %or13, i32* %l, align 4, !dbg !6007
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8
  %24 = load %struct.zone_device*, %struct.zone_device** %zonedev, align 8, !dbg !6008
  %cpu15 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %24, i32 0, i32 0, !dbg !6009
  %25 = load i32, i32* %cpu15, align 8, !dbg !6009
  %26 = load i32, i32* %l, align 4, !dbg !6010
  %27 = load i32, i32* %h, align 4, !dbg !6011
  %call16 = call i32 @wrmsr_on_cpu(i32 %25, i32 434, i32 %26, i32 %27) #10, !dbg !6012
  store i32 %call16, i32* %retval, align 4, !dbg !6013
  br label %return, !dbg !6013

return:                                           ; preds = %if.end14, %if.then3, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !6014
  ret i32 %28, !dbg !6014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rdmsr_on_cpu(i32 %cpu, i32 %msr_no, i32* %l, i32* %h) #1 !dbg !6015 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %_l = alloca i64, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  store i32 %msr_no, i32* %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr_no.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store i32* %l, i32** %l.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %l.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  store i32* %h, i32** %h.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %h.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  br label %do.body, !dbg !6024

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !6025, metadata !DIExpression()), !dbg !6027
  %0 = load i32, i32* %msr_no.addr, align 4, !dbg !6027
  %call = call i64 @paravirt_read_msr(i32 %0) #10, !dbg !6027
  store i64 %call, i64* %_l, align 8, !dbg !6027
  %1 = load i64, i64* %_l, align 8, !dbg !6027
  %conv = trunc i64 %1 to i32, !dbg !6027
  %2 = load i32*, i32** %l.addr, align 8, !dbg !6027
  store i32 %conv, i32* %2, align 4, !dbg !6027
  %3 = load i64, i64* %_l, align 8, !dbg !6027
  %shr = lshr i64 %3, 32, !dbg !6027
  %conv1 = trunc i64 %shr to i32, !dbg !6027
  %4 = load i32*, i32** %h.addr, align 8, !dbg !6027
  store i32 %conv1, i32* %4, align 4, !dbg !6027
  br label %do.end, !dbg !6027

do.end:                                           ; preds = %do.body
  ret i32 0, !dbg !6028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wrmsr_on_cpu(i32 %cpu, i32 %msr_no, i32 %l, i32 %h) #1 !dbg !6029 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  store i32 %msr_no, i32* %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr_no.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  store i32 %l, i32* %l.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %l.addr, metadata !6036, metadata !DIExpression()), !dbg !6037
  store i32 %h, i32* %h.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %h.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  br label %do.body, !dbg !6040

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %msr_no.addr, align 4, !dbg !6041
  %1 = load i32, i32* %l.addr, align 4, !dbg !6041
  %2 = load i32, i32* %h.addr, align 4, !dbg !6041
  call void @paravirt_write_msr(i32 %0, i32 %1, i32 %2) #10, !dbg !6041
  br label %do.end, !dbg !6041

do.end:                                           ; preds = %do.body
  ret i32 0, !dbg !6043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_any_but(%struct.cpumask* %mask, i32 %cpu) #1 !dbg !6044 {
entry:
  %mask.addr = alloca %struct.cpumask*, align 8
  %cpu.addr = alloca i32, align 4
  store %struct.cpumask* %mask, %struct.cpumask** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask.addr, metadata !6049, metadata !DIExpression()), !dbg !6050
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  ret i32 1, !dbg !6053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_clear_cpu(i32 %cpu, %struct.cpumask* %dstp) #1 !dbg !6054 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !6059, metadata !DIExpression()), !dbg !6060
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !6061
  %call = call i32 @cpumask_check(i32 %0) #10, !dbg !6062
  %conv = zext i32 %call to i64, !dbg !6062
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !6063
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !6063
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !6063
  call void @clear_bit(i64 %conv, i64* %arraydecay) #10, !dbg !6064
  ret void, !dbg !6065
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pkg_thermal_schedule_work(i32 %cpu, %struct.delayed_work* %work) #1 !dbg !6066 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6070, metadata !DIExpression()), !dbg !6075
  %cpu.addr = alloca i32, align 4
  %work.addr = alloca %struct.delayed_work*, align 8
  %ms = alloca i64, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !6077, metadata !DIExpression()), !dbg !6078
  store %struct.delayed_work* %work, %struct.delayed_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %work.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %ms, metadata !6081, metadata !DIExpression()), !dbg !6082
  %0 = load i32, i32* @notify_delay_ms, align 4, !dbg !6083
  store i32 %0, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !6084
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #9, !dbg !6086
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !6087

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !6088
  %cmp.i = icmp slt i32 %3, 0, !dbg !6091
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6092

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6093
  br label %msecs_to_jiffies.exit, !dbg !6093

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !6094
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #12, !dbg !6095
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6096
  br label %msecs_to_jiffies.exit, !dbg !6096

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !6097
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #12, !dbg !6099
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6100
  br label %msecs_to_jiffies.exit, !dbg !6100

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !6101
  store i64 %6, i64* %ms, align 8, !dbg !6082
  %7 = load i32, i32* %cpu.addr, align 4, !dbg !6102
  %8 = load %struct.delayed_work*, %struct.delayed_work** %work.addr, align 8, !dbg !6103
  %9 = load i64, i64* %ms, align 8, !dbg !6104
  %call1 = call zeroext i1 @schedule_delayed_work_on(i32 %7, %struct.delayed_work* %8, i64 %9) #10, !dbg !6105
  ret void, !dbg !6106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #1 !dbg !6107 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6108, metadata !DIExpression()), !dbg !6110
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6112, metadata !DIExpression()), !dbg !6113
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5197, metadata !DIExpression()), !dbg !6114
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5201, metadata !DIExpression()), !dbg !6116
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6121
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6122
  %div = sdiv i64 %1, 64, !dbg !6122
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6123
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6121
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6124
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6125
  %conv.i = trunc i64 %4 to i32, !dbg !6125
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !6126
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6127
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6127
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !6127
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6128
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6129
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6130
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !6132
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6133

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6134
  %12 = bitcast i64* %11 to i8*, !dbg !6134
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6134
  %shr.i = ashr i64 %13, 3, !dbg !6134
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6134
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6136
  %and.i = and i64 %14, 7, !dbg !6136
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6136
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6136
  %neg.i = xor i32 %shl.i, -1, !dbg !6137
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #9, !dbg !6138, !srcloc !6139
  br label %arch_clear_bit.exit, !dbg !6140

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6141
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6143
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !6144, !srcloc !6145
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work_on(i32 %cpu, %struct.delayed_work* %dwork, i64 %delay) #1 !dbg !6147 {
entry:
  %cpu.addr = alloca i32, align 4
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !6156
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !6157
  %2 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6158
  %3 = load i64, i64* %delay.addr, align 8, !dbg !6159
  %call = call zeroext i1 @queue_delayed_work_on(i32 %0, %struct.workqueue_struct* %1, %struct.delayed_work* %2, i64 %3) #10, !dbg !6160
  ret i1 %call, !dbg !6161
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #1 !dbg !6162 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6163, metadata !DIExpression()), !dbg !6164
  %0 = load i32, i32* %m.addr, align 4, !dbg !6165
  %conv = zext i32 %0 to i64, !dbg !6165
  %add = add i64 %conv, 4, !dbg !6166
  %sub = sub i64 %add, 1, !dbg !6167
  %div = sdiv i64 %sub, 4, !dbg !6168
  ret i64 %div, !dbg !6169
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #1 !dbg !6170 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6173, metadata !DIExpression()), !dbg !6174
  %call = call i64 @arch_local_save_flags() #10, !dbg !6175
  store i64 %call, i64* %f, align 8, !dbg !6176
  call void @arch_local_irq_disable() #10, !dbg !6177
  %0 = load i64, i64* %f, align 8, !dbg !6178
  ret i64 %0, !dbg !6179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @disable_pkg_thres_interrupt() #1 !dbg !6180 {
entry:
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %_l = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %l, metadata !6181, metadata !DIExpression()), !dbg !6182
  call void @llvm.dbg.declare(metadata i32* %h, metadata !6183, metadata !DIExpression()), !dbg !6184
  br label %do.body, !dbg !6185

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !6186, metadata !DIExpression()), !dbg !6188
  %call = call i64 @paravirt_read_msr(i32 434) #10, !dbg !6188
  store i64 %call, i64* %_l, align 8, !dbg !6188
  %0 = load i64, i64* %_l, align 8, !dbg !6188
  %conv = trunc i64 %0 to i32, !dbg !6188
  store i32 %conv, i32* %l, align 4, !dbg !6188
  %1 = load i64, i64* %_l, align 8, !dbg !6188
  %shr = lshr i64 %1, 32, !dbg !6188
  %conv1 = trunc i64 %shr to i32, !dbg !6188
  store i32 %conv1, i32* %h, align 4, !dbg !6188
  br label %do.end, !dbg !6188

do.end:                                           ; preds = %do.body
  %2 = load i32, i32* %l, align 4, !dbg !6189
  %and = and i32 %2, -8421377, !dbg !6189
  store i32 %and, i32* %l, align 4, !dbg !6189
  br label %do.body2, !dbg !6190

do.body2:                                         ; preds = %do.end
  %3 = load i32, i32* %l, align 4, !dbg !6191
  %4 = load i32, i32* %h, align 4, !dbg !6191
  call void @paravirt_write_msr(i32 434, i32 %3, i32 %4) #10, !dbg !6191
  br label %do.end3, !dbg !6191

do.end3:                                          ; preds = %do.body2
  ret void, !dbg !6193
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #1 !dbg !6194 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6197, metadata !DIExpression()), !dbg !6198
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6199, metadata !DIExpression()), !dbg !6201
  %0 = load i64, i64* %__edi, align 8, !dbg !6201
  store i64 %0, i64* %__edi, align 8, !dbg !6201
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6202, metadata !DIExpression()), !dbg !6201
  %1 = load i64, i64* %__esi, align 8, !dbg !6201
  store i64 %1, i64* %__esi, align 8, !dbg !6201
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6203, metadata !DIExpression()), !dbg !6201
  %2 = load i64, i64* %__edx, align 8, !dbg !6201
  store i64 %2, i64* %__edx, align 8, !dbg !6201
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6204, metadata !DIExpression()), !dbg !6201
  %3 = load i64, i64* %__ecx, align 8, !dbg !6201
  store i64 %3, i64* %__ecx, align 8, !dbg !6201
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6205, metadata !DIExpression()), !dbg !6201
  %4 = load i64, i64* %__eax, align 8, !dbg !6201
  store i64 %4, i64* %__eax, align 8, !dbg !6201
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6201
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !6201
  %7 = load i64, i64* %f.addr, align 8, !dbg !6201
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !6201, !srcloc !6206
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6201
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6201
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6201
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult1), !dbg !6201
  ret void, !dbg !6207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #1 !dbg !6208 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6209, metadata !DIExpression()), !dbg !6211
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6212, metadata !DIExpression()), !dbg !6211
  %0 = load i64, i64* %__edi, align 8, !dbg !6211
  store i64 %0, i64* %__edi, align 8, !dbg !6211
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6213, metadata !DIExpression()), !dbg !6211
  %1 = load i64, i64* %__esi, align 8, !dbg !6211
  store i64 %1, i64* %__esi, align 8, !dbg !6211
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6214, metadata !DIExpression()), !dbg !6211
  %2 = load i64, i64* %__edx, align 8, !dbg !6211
  store i64 %2, i64* %__edx, align 8, !dbg !6211
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6215, metadata !DIExpression()), !dbg !6211
  %3 = load i64, i64* %__ecx, align 8, !dbg !6211
  store i64 %3, i64* %__ecx, align 8, !dbg !6211
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6216, metadata !DIExpression()), !dbg !6211
  %4 = load i64, i64* %__eax, align 8, !dbg !6211
  store i64 %4, i64* %__eax, align 8, !dbg !6211
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6211
  %6 = call i64 @llvm.read_register.i64(metadata !4153), !dbg !6217
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !6217, !srcloc !6220
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6217
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6217
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6217
  call void @llvm.write_register.i64(metadata !4153, i64 %asmresult1), !dbg !6217
  %8 = load i64, i64* %__eax, align 8, !dbg !6217
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6221, metadata !DIExpression()), !dbg !6223
  store i64 -1, i64* %__mask, align 8, !dbg !6223
  %9 = load i64, i64* %__mask, align 8, !dbg !6223
  store i64 %9, i64* %tmp, align 8, !dbg !6223
  %10 = load i64, i64* %tmp, align 8, !dbg !6223
  %and = and i64 %8, %10, !dbg !6217
  store i64 %and, i64* %__ret, align 8, !dbg !6217
  %11 = load i64, i64* %__ret, align 8, !dbg !6211
  store i64 %11, i64* %tmp2, align 8, !dbg !6224
  %12 = load i64, i64* %tmp2, align 8, !dbg !6211
  ret i64 %12, !dbg !6225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dentry* @debugfs_create_dir(i8* %name, %struct.dentry* %parent) #1 !dbg !6226 {
entry:
  %name.addr = alloca i8*, align 8
  %parent.addr = alloca %struct.dentry*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  store %struct.dentry* %parent, %struct.dentry** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dentry** %parent.addr, metadata !6231, metadata !DIExpression()), !dbg !6232
  %call = call i8* @ERR_PTR(i64 -19) #10, !dbg !6233
  %0 = bitcast i8* %call to %struct.dentry*, !dbg !6233
  ret %struct.dentry* %0, !dbg !6234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debugfs_create_u32(i8* %name, i16 zeroext %mode, %struct.dentry* %parent, i32* %value) #1 !dbg !6235 {
entry:
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca %struct.dentry*, align 8
  %value.addr = alloca i32*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  store i16 %mode, i16* %mode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %mode.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  store %struct.dentry* %parent, %struct.dentry** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dentry** %parent.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !6244, metadata !DIExpression()), !dbg !6245
  ret void, !dbg !6246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #1 !dbg !6247 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  %0 = load i64, i64* %error.addr, align 8, !dbg !6252
  %1 = inttoptr i64 %0 to i8*, !dbg !6253
  ret i8* %1, !dbg !6254
}

; Function Attrs: noredzone
declare dso_local void @__cpuhp_remove_state(i32, i1 zeroext) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4153}
!llvm.module.flags = !{!4154, !4155, !4156, !4157}
!llvm.ident = !{!4158}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_notify_delay_ms", scope: !2, file: !3, line: 35, type: !4150, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !329, globals: !354, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/x86_pkg_temp_thermal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !85, !91, !99, !110, !284, !291, !296}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !81, line: 7, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !81, line: 12, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !92, line: 40, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !92, line: 49, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109}
!101 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!108 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!109 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !111, line: 25, baseType: !112, size: 32, elements: !113)
!111 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!114 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!115 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!116 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!117 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!118 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!119 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!120 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!121 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!122 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!123 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!124 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!125 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!126 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 11)
!127 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 12)
!128 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 13)
!129 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 14)
!130 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 15)
!131 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 16)
!132 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 17)
!133 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 18)
!134 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 19)
!135 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 20)
!136 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 21)
!137 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 22)
!138 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 23)
!139 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 24)
!140 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 25)
!141 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 26)
!142 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 27)
!143 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 28)
!144 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 29)
!145 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC_DEAD", value: 30)
!146 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 31)
!147 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 32)
!148 = !DIEnumerator(name: "CPUHP_IOMMU_INTEL_DEAD", value: 33)
!149 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 34)
!150 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 35)
!151 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 36)
!152 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 37)
!153 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 38)
!154 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 39)
!155 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 40)
!156 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 41)
!157 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 42)
!158 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 43)
!159 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 44)
!160 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 45)
!161 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 46)
!162 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 47)
!163 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 48)
!164 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 49)
!165 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 50)
!166 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 51)
!167 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 52)
!168 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 53)
!169 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 54)
!170 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 55)
!171 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 56)
!172 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 57)
!173 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 58)
!174 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 59)
!175 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 60)
!176 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 61)
!177 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 62)
!178 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 63)
!179 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 64)
!180 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 65)
!181 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 66)
!182 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 86)
!183 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 87)
!184 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 88)
!185 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 89)
!186 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 90)
!187 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 91)
!188 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 92)
!189 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 93)
!190 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 94)
!191 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 95)
!192 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 96)
!193 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 97)
!194 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 98)
!195 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 99)
!196 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 100)
!197 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 101)
!198 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 102)
!199 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 103)
!200 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 104)
!201 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 105)
!202 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 106)
!203 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 107)
!204 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 108)
!205 = !DIEnumerator(name: "CPUHP_AP_ARM_SDEI_STARTING", value: 109)
!206 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 110)
!207 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 111)
!208 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 112)
!209 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 113)
!210 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 114)
!211 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 115)
!212 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 116)
!213 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 117)
!214 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 118)
!215 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 119)
!216 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 120)
!217 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 121)
!218 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 122)
!219 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 123)
!220 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 124)
!221 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 125)
!222 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 126)
!223 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 127)
!224 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 128)
!225 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 129)
!226 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 130)
!227 = !DIEnumerator(name: "CPUHP_AP_KVM_STARTING", value: 131)
!228 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING", value: 132)
!229 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_STARTING", value: 133)
!230 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_TIMER_STARTING", value: 134)
!231 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 135)
!232 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 136)
!233 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 137)
!234 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 138)
!235 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 139)
!236 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 140)
!237 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 141)
!238 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 142)
!239 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 143)
!240 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 144)
!241 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 145)
!242 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 146)
!243 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 147)
!244 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 148)
!245 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 149)
!246 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 150)
!247 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 151)
!248 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 152)
!249 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 153)
!250 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 154)
!251 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 155)
!252 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 156)
!253 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 157)
!254 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 158)
!255 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 159)
!256 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 160)
!257 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 161)
!258 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 162)
!259 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 163)
!260 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 164)
!261 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 165)
!262 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 166)
!263 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 167)
!264 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 168)
!265 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 169)
!266 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 170)
!267 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 171)
!268 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 172)
!269 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 173)
!270 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 174)
!271 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 175)
!272 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 176)
!273 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 177)
!274 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 178)
!275 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 179)
!276 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 180)
!277 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 181)
!278 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 182)
!279 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 212)
!280 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 213)
!281 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 214)
!282 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 215)
!283 = !DIEnumerator(name: "CPUHP_ONLINE", value: 216)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !285, line: 305, baseType: !7, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287, !288, !289, !290}
!287 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!289 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!290 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 10, baseType: !7, size: 32, elements: !293)
!292 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !295}
!294 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!295 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!296 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !297, line: 30, baseType: !298, size: 64, elements: !299)
!297 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!300 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!301 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!302 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!303 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!304 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!305 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!306 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!307 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!308 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!309 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!310 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!311 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!312 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!313 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!314 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!315 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!316 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!317 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!318 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!319 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!320 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!321 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!322 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!323 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!324 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!325 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!326 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!327 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!328 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!329 = !{!330, !332, !112, !333, !335, !338, !7, !334, !340, !344, !347, !298}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !331, line: 148, baseType: !7)
!331 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !337)
!337 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !298)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !341, line: 21, baseType: !342)
!341 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !343, line: 27, baseType: !7)
!343 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !341, line: 23, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !343, line: 31, baseType: !346)
!346 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !331, line: 178, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !331, line: 179, baseType: !349, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !350, file: !331, line: 179, baseType: !349, size: 64, offset: 64)
!354 = !{!355, !423, !428, !433, !435, !442, !447, !452, !457, !462, !4118, !4120, !0, !4122, !4124, !4136, !4138, !4140, !4142, !4144, !4146, !4148}
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "__param_notify_delay_ms", scope: !2, file: !3, line: 35, type: !357, isLocal: true, isDefinition: true, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !359, line: 69, size: 320, elements: !360)
!359 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !364, !368, !388, !393, !397, !401}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !359, line: 70, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !358, file: !359, line: 71, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !367, line: 76, flags: DIFlagFwdDecl)
!367 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !358, file: !359, line: 72, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !359, line: 47, size: 256, elements: !372)
!372 = !{!373, !374, !379, !384}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !359, line: 49, baseType: !7, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !371, file: !359, line: 51, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!112, !362, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !371, file: !359, line: 53, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!112, !383, !378}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !371, file: !359, line: 55, baseType: !385, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !332}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !358, file: !359, line: 73, baseType: !389, size: 16, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !341, line: 19, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !343, line: 24, baseType: !392)
!392 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !358, file: !359, line: 74, baseType: !394, size: 8, offset: 208)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !341, line: 16, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !343, line: 20, baseType: !396)
!396 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !359, line: 75, baseType: !398, size: 8, offset: 216)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !341, line: 17, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !343, line: 21, baseType: !400)
!400 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !359, line: 76, baseType: !402, size: 64, offset: 256)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !359, line: 76, size: 64, elements: !403)
!403 = !{!404, !405, !412}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !402, file: !359, line: 77, baseType: !332, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !402, file: !359, line: 78, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !359, line: 86, size: 128, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !408, file: !359, line: 87, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !408, file: !359, line: 88, baseType: !383, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !402, file: !359, line: 79, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !359, line: 92, size: 256, elements: !416)
!416 = !{!417, !418, !419, !421, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !415, file: !359, line: 94, baseType: !7, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !415, file: !359, line: 95, baseType: !7, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !415, file: !359, line: 96, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !415, file: !359, line: 97, baseType: !369, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !415, file: !359, line: 98, baseType: !332, size: 64, offset: 192)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_notify_delay_mstype205", scope: !2, file: !3, line: 35, type: !425, isLocal: true, isDefinition: true, align: 8)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 400, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 50)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_notify_delay_ms206", scope: !2, file: !3, line: 36, type: !430, isLocal: true, isDefinition: true, align: 8)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 720, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 90)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkg_temp_thermal_init211", scope: !2, file: !3, line: 524, type: !332, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "__exitcall_pkg_temp_thermal_exit", scope: !2, file: !3, line: 535, type: !437, isLocal: true, isDefinition: true)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !438, line: 117, baseType: !439)
!438 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null}
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description212", scope: !2, file: !3, line: 537, type: !444, isLocal: true, isDefinition: true, align: 8)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 488, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 61)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author213", scope: !2, file: !3, line: 538, type: !449, isLocal: true, isDefinition: true, align: 8)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 688, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 86)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 539, type: !454, isLocal: true, isDefinition: true, align: 8)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 552, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 69)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 539, type: !459, isLocal: true, isDefinition: true, align: 8)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 288, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 36)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "zones", scope: !2, file: !3, line: 64, type: !464, isLocal: true, isDefinition: true)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone_device", file: !3, line: 46, size: 1024, elements: !467)
!467 = !{!468, !469, !472, !473, !474, !475, !520, !4117}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !466, file: !3, line: 47, baseType: !112, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "work_scheduled", scope: !466, file: !3, line: 48, baseType: !470, size: 8, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !331, line: 30, baseType: !471)
!471 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "tj_max", scope: !466, file: !3, line: 49, baseType: !340, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "msr_pkg_therm_low", scope: !466, file: !3, line: 50, baseType: !340, size: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "msr_pkg_therm_high", scope: !466, file: !3, line: 51, baseType: !340, size: 32, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !466, file: !3, line: 52, baseType: !476, size: 704, offset: 192)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !297, line: 115, size: 704, elements: !477)
!477 = !{!478, !498, !516, !519}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !476, file: !297, line: 116, baseType: !479, size: 256)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !297, line: 102, size: 256, elements: !480)
!480 = !{!481, !491, !492}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !479, file: !297, line: 103, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !483, line: 13, baseType: !484)
!483 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !331, line: 175, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 173, size: 64, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !485, file: !331, line: 174, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !341, line: 22, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !343, line: 30, baseType: !490)
!490 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !479, file: !297, line: 104, baseType: !350, size: 128, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !479, file: !297, line: 105, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !297, line: 21, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !476, file: !297, line: 117, baseType: !499, size: 320, offset: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !500, line: 11, size: 320, elements: !501)
!500 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !509, !510, !515}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !499, file: !500, line: 16, baseType: !503, size: 128)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !331, line: 186, size: 128, elements: !504)
!504 = !{!505, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !331, line: 187, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !503, file: !331, line: 187, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !499, file: !500, line: 17, baseType: !334, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !499, file: !500, line: 18, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !500, line: 19, baseType: !340, size: 32, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !476, file: !297, line: 120, baseType: !517, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !297, line: 18, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !476, file: !297, line: 121, baseType: !112, size: 32, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tzone", scope: !466, file: !3, line: 53, baseType: !521, size: 64, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !92, line: 150, size: 8448, elements: !523)
!523 = !{!524, !525, !529, !3962, !3963, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !4068, !4092, !4107, !4108, !4109, !4113, !4114, !4115, !4116}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !522, file: !92, line: 151, baseType: !112, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !522, file: !92, line: 152, baseType: !526, size: 160, offset: 32)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 160, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 20)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !522, file: !92, line: 153, baseType: !530, size: 5568, offset: 192)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !531)
!531 = !{!532, !3504, !3506, !3509, !3510, !3561, !3652, !3653, !3654, !3655, !3656, !3665, !3759, !3772, !3775, !3776, !3780, !3782, !3783, !3784, !3788, !3794, !3795, !3798, !3913, !3914, !3915, !3916, !3917, !3918, !3950, !3951, !3952, !3955, !3958, !3959, !3960, !3961}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !530, file: !60, line: 462, baseType: !533, size: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !534, line: 64, size: 512, elements: !535)
!534 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !537, !538, !540, !599, !3367, !3494, !3499, !3500, !3501, !3502, !3503}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !534, line: 65, baseType: !362, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !533, file: !534, line: 66, baseType: !350, size: 128, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !533, file: !534, line: 67, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !533, file: !534, line: 68, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !534, line: 192, size: 704, elements: !543)
!543 = !{!544, !545, !561, !562}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !542, file: !534, line: 193, baseType: !350, size: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !542, file: !534, line: 194, baseType: !546, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !547, line: 83, baseType: !548)
!547 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !547, line: 71, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !547, line: 72, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !547, line: 72, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !551, file: !547, line: 73, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !547, line: 20, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !554, file: !547, line: 21, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !558, line: 25, baseType: !559)
!558 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 25, elements: !560)
!560 = !{}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !542, file: !534, line: 195, baseType: !533, size: 512, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !542, file: !534, line: 196, baseType: !563, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !534, line: 156, size: 192, elements: !566)
!566 = !{!567, !572, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !565, file: !534, line: 157, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!112, !541, !539}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !534, line: 158, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!362, !541, !539}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !565, file: !534, line: 159, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!112, !541, !539, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !534, line: 148, size: 20736, elements: !584)
!584 = !{!585, !589, !593, !594, !598}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !583, file: !534, line: 149, baseType: !586, size: 192)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 192, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 3)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !583, file: !534, line: 150, baseType: !590, size: 4096, offset: 192)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 4096, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !583, file: !534, line: 151, baseType: !112, size: 32, offset: 4288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !583, file: !534, line: 152, baseType: !595, size: 16384, offset: 4320)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 16384, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 2048)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !583, file: !534, line: 153, baseType: !112, size: 32, offset: 20704)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !533, file: !534, line: 69, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !534, line: 138, size: 448, elements: !602)
!602 = !{!603, !607, !634, !636, !3327, !3357, !3361}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !601, file: !534, line: 139, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !539}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !601, file: !534, line: 140, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !611, line: 230, size: 128, elements: !612)
!611 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613, !627}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !610, file: !611, line: 231, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !539, !621, !383}
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !331, line: 60, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !619, line: 73, baseType: !620)
!619 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !619, line: 15, baseType: !298)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !611, line: 30, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !611, line: 31, baseType: !362, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !622, file: !611, line: 32, baseType: !626, size: 16, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !331, line: 19, baseType: !392)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !610, file: !611, line: 232, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!617, !539, !621, !362, !631}
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !331, line: 55, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !619, line: 72, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !619, line: 16, baseType: !334)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !601, file: !534, line: 141, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !601, file: !534, line: 142, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !611, line: 84, size: 320, elements: !641)
!641 = !{!642, !643, !647, !3324, !3325}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !611, line: 85, baseType: !362, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !640, file: !611, line: 86, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!626, !539, !621, !112}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !640, file: !611, line: 88, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!626, !539, !651, !112}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !611, line: 168, size: 448, elements: !653)
!653 = !{!654, !655, !656, !657, !3319, !3320}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !652, file: !611, line: 169, baseType: !622, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !652, file: !611, line: 170, baseType: !631, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !652, file: !611, line: 171, baseType: !332, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !652, file: !611, line: 172, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!617, !661, !539, !651, !383, !827, !631}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !663)
!663 = !{!664, !682, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3302, !3303, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !662, file: !31, line: 920, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !31, line: 917, size: 128, elements: !666)
!666 = !{!667, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !665, file: !31, line: 918, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !669, line: 58, size: 64, elements: !670)
!669 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !669, line: 59, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !665, file: !31, line: 919, baseType: !674, size: 128, align: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !331, line: 216, size: 128, align: 64, elements: !675)
!675 = !{!676, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !331, line: 217, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !674, file: !331, line: 218, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !677}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !662, file: !31, line: 921, baseType: !683, size: 128, offset: 128)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !684, line: 8, size: 128, elements: !685)
!684 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!685 = !{!686, !690}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !683, file: !684, line: 9, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !689, line: 18, flags: DIFlagFwdDecl)
!689 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !683, file: !684, line: 10, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !689, line: 89, size: 1536, elements: !693)
!693 = !{!694, !695, !705, !713, !714, !729, !3252, !3254, !3266, !3267, !3268, !3269, !3270, !3276, !3277, !3278}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !692, file: !689, line: 91, baseType: !7, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !692, file: !689, line: 92, baseType: !696, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !697, line: 277, baseType: !698)
!697 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !697, line: 277, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !698, file: !697, line: 277, baseType: !701, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !697, line: 70, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !697, line: 65, size: 32, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !702, file: !697, line: 66, baseType: !7, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !692, file: !689, line: 93, baseType: !706, size: 128, offset: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !707, line: 38, size: 128, elements: !708)
!707 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !707, line: 39, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !706, file: !707, line: 39, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !692, file: !689, line: 94, baseType: !691, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !692, file: !689, line: 95, baseType: !715, size: 128, offset: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !689, line: 47, size: 128, elements: !716)
!716 = !{!717, !726}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !689, line: 48, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !689, line: 48, size: 64, elements: !719)
!719 = !{!720, !725}
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !689, line: 49, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !689, line: 49, size: 64, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !721, file: !689, line: 50, baseType: !340, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !721, file: !689, line: 50, baseType: !340, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !718, file: !689, line: 52, baseType: !344, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !715, file: !689, line: 54, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !692, file: !689, line: 96, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !732)
!732 = !{!733, !734, !735, !743, !750, !751, !892, !2964, !2965, !2966, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3228, !3236, !3237, !3238, !3248, !3249, !3250, !3251}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !731, file: !31, line: 611, baseType: !626, size: 16)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !731, file: !31, line: 612, baseType: !392, size: 16, offset: 16)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !731, file: !31, line: 613, baseType: !736, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !737, line: 23, baseType: !738)
!737 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 21, size: 32, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !738, file: !737, line: 22, baseType: !741, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !331, line: 32, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !619, line: 49, baseType: !7)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !731, file: !31, line: 614, baseType: !744, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !737, line: 28, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 26, size: 32, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !745, file: !737, line: 27, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !331, line: 33, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !619, line: 50, baseType: !7)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !731, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !731, file: !31, line: 622, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !755)
!755 = !{!756, !760, !770, !774, !780, !784, !788, !792, !796, !800, !804, !805, !811, !815, !839, !868, !872, !878, !883, !887, !888}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !754, file: !31, line: 1865, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!691, !730, !691, !7}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !754, file: !31, line: 1866, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!362, !691, !730, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !766, line: 10, size: 128, elements: !767)
!766 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !765, file: !766, line: 11, baseType: !385, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !765, file: !766, line: 12, baseType: !332, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !754, file: !31, line: 1867, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!112, !730, !112}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !754, file: !31, line: 1868, baseType: !775, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!778, !730, !112}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !754, file: !31, line: 1870, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!112, !691, !383, !112}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !754, file: !31, line: 1872, baseType: !785, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!112, !730, !691, !626, !470}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !754, file: !31, line: 1873, baseType: !789, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!112, !691, !730, !691}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !754, file: !31, line: 1874, baseType: !793, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!112, !730, !691}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !754, file: !31, line: 1875, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!112, !730, !691, !362}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !754, file: !31, line: 1876, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!112, !730, !691, !626}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !754, file: !31, line: 1877, baseType: !793, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !754, file: !31, line: 1878, baseType: !806, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!112, !730, !691, !626, !809}
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !331, line: 16, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !331, line: 13, baseType: !340)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !754, file: !31, line: 1879, baseType: !812, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!112, !730, !691, !730, !691, !7}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !754, file: !31, line: 1881, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!112, !691, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !829, !836, !837, !838}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !820, file: !31, line: 220, baseType: !7, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !820, file: !31, line: 221, baseType: !626, size: 16, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !820, file: !31, line: 222, baseType: !736, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !820, file: !31, line: 223, baseType: !744, size: 32, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !820, file: !31, line: 224, baseType: !827, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !331, line: 46, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !619, line: 88, baseType: !490)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !820, file: !31, line: 225, baseType: !830, size: 128, offset: 192)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !831, line: 13, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !830, file: !831, line: 14, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !831, line: 8, baseType: !489)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !830, file: !831, line: 15, baseType: !298, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !820, file: !31, line: 226, baseType: !830, size: 128, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !820, file: !31, line: 227, baseType: !830, size: 128, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !820, file: !31, line: 234, baseType: !661, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !754, file: !31, line: 1882, baseType: !840, size: 64, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!112, !843, !845, !340, !7}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !847, line: 22, size: 1152, elements: !848)
!847 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!848 = !{!849, !850, !851, !852, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !846, file: !847, line: 23, baseType: !340, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !846, file: !847, line: 24, baseType: !626, size: 16, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !846, file: !847, line: 25, baseType: !7, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !846, file: !847, line: 26, baseType: !853, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !331, line: 104, baseType: !340)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !846, file: !847, line: 27, baseType: !344, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !846, file: !847, line: 28, baseType: !344, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !846, file: !847, line: 37, baseType: !344, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !846, file: !847, line: 38, baseType: !809, size: 32, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !846, file: !847, line: 39, baseType: !809, size: 32, offset: 352)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !846, file: !847, line: 40, baseType: !736, size: 32, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !846, file: !847, line: 41, baseType: !744, size: 32, offset: 416)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !846, file: !847, line: 42, baseType: !827, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !846, file: !847, line: 43, baseType: !830, size: 128, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !846, file: !847, line: 44, baseType: !830, size: 128, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !846, file: !847, line: 45, baseType: !830, size: 128, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !846, file: !847, line: 46, baseType: !830, size: 128, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !846, file: !847, line: 47, baseType: !344, size: 64, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !846, file: !847, line: 48, baseType: !344, size: 64, offset: 1088)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !754, file: !31, line: 1883, baseType: !869, size: 64, offset: 960)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!617, !691, !383, !631}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !754, file: !31, line: 1884, baseType: !873, size: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!112, !730, !876, !344, !344}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !754, file: !31, line: 1886, baseType: !879, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!112, !730, !882, !112}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !754, file: !31, line: 1887, baseType: !884, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!112, !730, !691, !661, !7, !626}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !754, file: !31, line: 1890, baseType: !801, size: 64, offset: 1216)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !754, file: !31, line: 1891, baseType: !889, size: 64, offset: 1280)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!112, !730, !778, !112}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !731, file: !31, line: 623, baseType: !893, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !942, !2574, !2656, !2739, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2755, !2759, !2760, !2763, !2764, !2767, !2768, !2769, !2810, !2836, !2837, !2838, !2839, !2840, !2841, !2844, !2846, !2853, !2854, !2856, !2857, !2858, !2917, !2918, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !894, file: !31, line: 1417, baseType: !350, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !894, file: !31, line: 1418, baseType: !809, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !894, file: !31, line: 1419, baseType: !400, size: 8, offset: 160)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !894, file: !31, line: 1420, baseType: !334, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !894, file: !31, line: 1421, baseType: !827, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !894, file: !31, line: 1422, baseType: !902, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !904)
!904 = !{!905, !906, !907, !914, !918, !922, !926, !927, !928, !932, !935, !936, !937, !939, !940, !941}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !903, file: !31, line: 2229, baseType: !362, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !903, file: !31, line: 2230, baseType: !112, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !903, file: !31, line: 2238, baseType: !908, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!112, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !913, line: 28, flags: DIFlagFwdDecl)
!913 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !903, file: !31, line: 2239, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !903, file: !31, line: 2240, baseType: !919, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!691, !902, !112, !362, !332}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !903, file: !31, line: 2242, baseType: !923, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !893}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !903, file: !31, line: 2243, baseType: !365, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !31, line: 2244, baseType: !902, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !903, file: !31, line: 2245, baseType: !929, size: 64, offset: 512)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !331, line: 182, size: 64, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !929, file: !331, line: 183, baseType: !506, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !903, file: !31, line: 2247, baseType: !933, offset: 576)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !934, line: 187, elements: !560)
!934 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!935 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !903, file: !31, line: 2248, baseType: !933, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !903, file: !31, line: 2249, baseType: !933, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !903, file: !31, line: 2250, baseType: !938, offset: 576)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, elements: !587)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !903, file: !31, line: 2252, baseType: !933, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !903, file: !31, line: 2253, baseType: !933, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !903, file: !31, line: 2254, baseType: !933, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !894, file: !31, line: 1423, baseType: !943, size: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !946)
!946 = !{!947, !951, !955, !956, !960, !966, !970, !971, !972, !976, !980, !981, !982, !983, !989, !994, !995, !1044, !1045, !1046, !1047, !2558, !2573}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !945, file: !31, line: 1936, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!730, !893}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !945, file: !31, line: 1937, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !730}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !945, file: !31, line: 1938, baseType: !952, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !945, file: !31, line: 1940, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !730, !112}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !945, file: !31, line: 1941, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!112, !730, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !945, file: !31, line: 1942, baseType: !967, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!112, !730}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !945, file: !31, line: 1943, baseType: !952, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !945, file: !31, line: 1944, baseType: !923, size: 64, offset: 448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !945, file: !31, line: 1945, baseType: !973, size: 64, offset: 512)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!112, !893, !112}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !945, file: !31, line: 1946, baseType: !977, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!112, !893}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !945, file: !31, line: 1947, baseType: !977, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !945, file: !31, line: 1948, baseType: !977, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !945, file: !31, line: 1949, baseType: !977, size: 64, offset: 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !945, file: !31, line: 1950, baseType: !984, size: 64, offset: 832)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!112, !691, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !945, file: !31, line: 1951, baseType: !990, size: 64, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!112, !893, !993, !383}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !945, file: !31, line: 1952, baseType: !923, size: 64, offset: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !945, file: !31, line: 1954, baseType: !996, size: 64, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!112, !999, !691}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1001, line: 16, size: 896, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1017, !1039, !1040, !1043}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1000, file: !1001, line: 17, baseType: !383, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !1001, line: 18, baseType: !631, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1000, file: !1001, line: 19, baseType: !631, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1000, file: !1001, line: 20, baseType: !631, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1000, file: !1001, line: 21, baseType: !631, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !1001, line: 22, baseType: !827, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1000, file: !1001, line: 23, baseType: !827, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1000, file: !1001, line: 24, baseType: !1011, size: 192, offset: 448)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1012, line: 53, size: 192, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1011, file: !1012, line: 54, baseType: !482, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1011, file: !1012, line: 55, baseType: !546, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1011, file: !1012, line: 59, baseType: !350, size: 128, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1000, file: !1001, line: 25, baseType: !1018, size: 64, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1001, line: 31, size: 256, elements: !1021)
!1021 = !{!1022, !1027, !1031, !1035}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1020, file: !1001, line: 32, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!332, !999, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1020, file: !1001, line: 33, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !999, !332}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1020, file: !1001, line: 34, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!332, !999, !332, !1026}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1020, file: !1001, line: 35, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!112, !999, !332}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1000, file: !1001, line: 26, baseType: !112, size: 32, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1000, file: !1001, line: 27, baseType: !1041, size: 64, offset: 768)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1000, file: !1001, line: 28, baseType: !332, size: 64, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !945, file: !31, line: 1955, baseType: !996, size: 64, offset: 1088)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !945, file: !31, line: 1956, baseType: !996, size: 64, offset: 1152)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !945, file: !31, line: 1957, baseType: !996, size: 64, offset: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !945, file: !31, line: 1963, baseType: !1048, size: 64, offset: 1280)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!112, !893, !1051, !330}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1053, line: 68, size: 512, align: 128, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !{!1055, !1056, !2550, !2557}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !1053, line: 69, baseType: !334, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 77, baseType: !1057, size: 320, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 77, size: 320, elements: !1058)
!1058 = !{!1059, !1237, !1242, !1270, !1278, !1284, !2542, !2549}
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 78, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 78, size: 320, elements: !1061)
!1061 = !{!1062, !1063, !1235, !1236}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1060, file: !1053, line: 84, baseType: !350, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1060, file: !1053, line: 86, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1066)
!1066 = !{!1067, !1068, !1075, !1076, !1081, !1096, !1105, !1106, !1107, !1108, !1228, !1229, !1232, !1233, !1234}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1065, file: !31, line: 452, baseType: !730, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1065, file: !31, line: 453, baseType: !1069, size: 128, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1070, line: 292, size: 128, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1069, file: !1070, line: 293, baseType: !546)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1069, file: !1070, line: 295, baseType: !330, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1069, file: !1070, line: 296, baseType: !332, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1065, file: !31, line: 454, baseType: !330, size: 32, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1065, file: !31, line: 455, baseType: !1077, size: 32, offset: 224)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !331, line: 168, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 166, size: 32, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1078, file: !331, line: 167, baseType: !112, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1065, file: !31, line: 460, baseType: !1082, size: 128, offset: 256)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1083, line: 125, size: 128, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !{!1085, !1095}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1082, file: !1083, line: 126, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1083, line: 31, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1086, file: !1083, line: 32, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1083, line: 24, size: 192, align: 64, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1090, file: !1083, line: 25, baseType: !334, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1090, file: !1083, line: 26, baseType: !1089, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1090, file: !1083, line: 27, baseType: !1089, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1082, file: !1083, line: 127, baseType: !1089, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1065, file: !31, line: 461, baseType: !1097, size: 256, offset: 384)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1098, line: 35, size: 256, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100, !1101, !1102, !1104}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1097, file: !1098, line: 36, baseType: !482, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1097, file: !1098, line: 42, baseType: !482, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1097, file: !1098, line: 46, baseType: !1103, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !547, line: 29, baseType: !554)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1097, file: !1098, line: 47, baseType: !350, size: 128, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1065, file: !31, line: 462, baseType: !334, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1065, file: !31, line: 463, baseType: !334, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1065, file: !31, line: 464, baseType: !334, size: 64, offset: 768)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1065, file: !31, line: 465, baseType: !1109, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1112)
!1112 = !{!1113, !1117, !1121, !1125, !1129, !1133, !1139, !1145, !1149, !1154, !1158, !1162, !1166, !1192, !1196, !1202, !1203, !1204, !1208, !1213, !1217, !1224}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1111, file: !31, line: 368, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!112, !1051, !964}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1111, file: !31, line: 369, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!112, !661, !1051}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1111, file: !31, line: 372, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!112, !1064, !964}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1111, file: !31, line: 375, baseType: !1126, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!112, !1051}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1111, file: !31, line: 381, baseType: !1130, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!112, !661, !1064, !349, !7}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1111, file: !31, line: 383, baseType: !1134, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1111, file: !31, line: 385, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!112, !661, !1064, !827, !7, !7, !1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1111, file: !31, line: 388, baseType: !1146, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!112, !661, !1064, !827, !7, !7, !1051, !332}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1111, file: !31, line: 393, baseType: !1150, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1153, !1064, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !331, line: 125, baseType: !344)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1111, file: !31, line: 394, baseType: !1155, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1051, !7, !7}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1111, file: !31, line: 395, baseType: !1159, size: 64, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!112, !1051, !330}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1111, file: !31, line: 396, baseType: !1163, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1051}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1111, file: !31, line: 397, baseType: !1167, size: 64, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!617, !1170, !1190}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1179, !1180, !1181, !1182, !1183}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1171, file: !31, line: 321, baseType: !661, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1171, file: !31, line: 326, baseType: !827, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1171, file: !31, line: 327, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1170, !298, !298}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1171, file: !31, line: 328, baseType: !332, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1171, file: !31, line: 329, baseType: !112, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1171, file: !31, line: 330, baseType: !390, size: 16, offset: 288)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1171, file: !31, line: 331, baseType: !390, size: 16, offset: 304)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !31, line: 332, baseType: !1184, size: 64, offset: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !31, line: 332, size: 64, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1184, file: !31, line: 333, baseType: !7, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1184, file: !31, line: 334, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1111, file: !31, line: 402, baseType: !1193, size: 64, offset: 832)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!112, !1064, !1051, !1051, !5}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1111, file: !31, line: 404, baseType: !1197, size: 64, offset: 896)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!470, !1051, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1201, line: 305, baseType: !7)
!1201 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1111, file: !31, line: 405, baseType: !1163, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1111, file: !31, line: 406, baseType: !1126, size: 64, offset: 1024)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1111, file: !31, line: 407, baseType: !1205, size: 64, offset: 1088)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!112, !1051, !334, !334}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1111, file: !31, line: 409, baseType: !1209, size: 64, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1051, !1212, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1111, file: !31, line: 410, baseType: !1214, size: 64, offset: 1216)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!112, !1064, !1051}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1111, file: !31, line: 413, baseType: !1218, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!112, !1221, !661, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1111, file: !31, line: 415, baseType: !1225, size: 64, offset: 1344)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !661}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !31, line: 466, baseType: !334, size: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1065, file: !31, line: 467, baseType: !1230, size: 32, offset: 960)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1231, line: 8, baseType: !340)
!1231 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1065, file: !31, line: 468, baseType: !546, offset: 992)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1065, file: !31, line: 469, baseType: !350, size: 128, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1065, file: !31, line: 470, baseType: !332, size: 64, offset: 1152)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1060, file: !1053, line: 87, baseType: !334, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1060, file: !1053, line: 94, baseType: !334, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 96, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 96, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1238, file: !1053, line: 101, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !331, line: 143, baseType: !344)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 103, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 103, size: 320, elements: !1244)
!1244 = !{!1245, !1255, !1258, !1259}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1053, line: 104, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1053, line: 104, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1246, file: !1053, line: 105, baseType: !350, size: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1053, line: 106, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !1053, line: 106, size: 128, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1250, file: !1053, line: 107, baseType: !1051, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1250, file: !1053, line: 109, baseType: !112, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1250, file: !1053, line: 110, baseType: !112, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1243, file: !1053, line: 117, baseType: !1256, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1053, line: 117, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1243, file: !1053, line: 119, baseType: !332, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1053, line: 120, baseType: !1260, size: 64, offset: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1053, line: 120, size: 64, elements: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1260, file: !1053, line: 121, baseType: !332, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1260, file: !1053, line: 122, baseType: !334, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1053, line: 123, baseType: !1265, size: 32)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1053, line: 123, size: 32, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1265, file: !1053, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1265, file: !1053, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1265, file: !1053, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 130, baseType: !1271, size: 192)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 130, size: 192, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1271, file: !1053, line: 131, baseType: !334, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1271, file: !1053, line: 134, baseType: !400, size: 8, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1271, file: !1053, line: 135, baseType: !400, size: 8, offset: 72)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1271, file: !1053, line: 136, baseType: !1077, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1271, file: !1053, line: 137, baseType: !7, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 139, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 139, size: 256, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1279, file: !1053, line: 140, baseType: !334, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1279, file: !1053, line: 141, baseType: !1077, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1279, file: !1053, line: 143, baseType: !350, size: 128, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 145, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 145, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1291, !1292, !2541}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1285, file: !1053, line: 146, baseType: !334, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1285, file: !1053, line: 147, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1290, line: 509, baseType: !1051)
!1290 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1285, file: !1053, line: 148, baseType: !334, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1053, line: 149, baseType: !1293, size: 64, offset: 192)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1053, line: 149, size: 64, elements: !1294)
!1294 = !{!1295, !2540}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1293, file: !1053, line: 150, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1053, line: 388, size: 7296, elements: !1298)
!1298 = !{!1299, !2536}
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1053, line: 389, baseType: !1300, size: 7296)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1297, file: !1053, line: 389, size: 7296, elements: !1301)
!1301 = !{!1302, !1340, !1341, !1342, !1346, !1347, !1348, !1349, !1350, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1391, !1399, !1402, !1442, !1443, !2520, !2521, !2524, !2525, !2526, !2529, !2530, !2531, !2534, !2535}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1300, file: !1053, line: 390, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1053, line: 305, size: 1472, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1320, !1321, !1326, !1327, !1330, !1334, !1335, !1336, !1337, !1338}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1304, file: !1053, line: 308, baseType: !334, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1304, file: !1053, line: 309, baseType: !334, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1304, file: !1053, line: 313, baseType: !1303, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1304, file: !1053, line: 313, baseType: !1303, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1304, file: !1053, line: 315, baseType: !1090, size: 192, align: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1304, file: !1053, line: 323, baseType: !334, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1304, file: !1053, line: 327, baseType: !1296, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1304, file: !1053, line: 333, baseType: !1314, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1290, line: 284, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1290, line: 284, size: 64, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1315, file: !1290, line: 284, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1319, line: 19, baseType: !334)
!1319 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1304, file: !1053, line: 334, baseType: !334, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1304, file: !1053, line: 343, baseType: !1322, size: 256, offset: 704)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1053, line: 340, size: 256, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1322, file: !1053, line: 341, baseType: !1090, size: 192, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1322, file: !1053, line: 342, baseType: !334, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1304, file: !1053, line: 351, baseType: !350, size: 128, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1304, file: !1053, line: 353, baseType: !1328, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1053, line: 353, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1304, file: !1053, line: 356, baseType: !1331, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1053, line: 356, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1304, file: !1053, line: 359, baseType: !334, size: 64, offset: 1216)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1304, file: !1053, line: 361, baseType: !661, size: 64, offset: 1280)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1304, file: !1053, line: 362, baseType: !332, size: 64, offset: 1344)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1304, file: !1053, line: 365, baseType: !482, size: 64, offset: 1408)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1304, file: !1053, line: 373, baseType: !1339, offset: 1472)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1053, line: 296, elements: !560)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1300, file: !1053, line: 391, baseType: !1086, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1300, file: !1053, line: 392, baseType: !344, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1300, file: !1053, line: 394, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!334, !661, !334, !334, !334, !334}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1300, file: !1053, line: 398, baseType: !334, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1300, file: !1053, line: 399, baseType: !334, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1300, file: !1053, line: 405, baseType: !334, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1300, file: !1053, line: 406, baseType: !334, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1300, file: !1053, line: 407, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1290, line: 286, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 286, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1353, file: !1290, line: 286, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1319, line: 18, baseType: !334)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1300, file: !1053, line: 416, baseType: !1077, size: 32, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1300, file: !1053, line: 428, baseType: !1077, size: 32, offset: 608)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1300, file: !1053, line: 437, baseType: !1077, size: 32, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1300, file: !1053, line: 447, baseType: !1077, size: 32, offset: 672)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1300, file: !1053, line: 450, baseType: !482, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1300, file: !1053, line: 452, baseType: !112, size: 32, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1300, file: !1053, line: 454, baseType: !546, offset: 800)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1300, file: !1053, line: 457, baseType: !1097, size: 256, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1300, file: !1053, line: 459, baseType: !350, size: 128, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1300, file: !1053, line: 466, baseType: !334, size: 64, offset: 1216)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1300, file: !1053, line: 467, baseType: !334, size: 64, offset: 1280)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1300, file: !1053, line: 469, baseType: !334, size: 64, offset: 1344)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1300, file: !1053, line: 470, baseType: !334, size: 64, offset: 1408)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1300, file: !1053, line: 471, baseType: !484, size: 64, offset: 1472)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1300, file: !1053, line: 472, baseType: !334, size: 64, offset: 1536)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1300, file: !1053, line: 473, baseType: !334, size: 64, offset: 1600)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1300, file: !1053, line: 474, baseType: !334, size: 64, offset: 1664)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1300, file: !1053, line: 475, baseType: !334, size: 64, offset: 1728)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1300, file: !1053, line: 477, baseType: !546, offset: 1792)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1300, file: !1053, line: 478, baseType: !334, size: 64, offset: 1792)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1300, file: !1053, line: 478, baseType: !334, size: 64, offset: 1856)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1300, file: !1053, line: 478, baseType: !334, size: 64, offset: 1920)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1300, file: !1053, line: 478, baseType: !334, size: 64, offset: 1984)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1300, file: !1053, line: 479, baseType: !334, size: 64, offset: 2048)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1300, file: !1053, line: 479, baseType: !334, size: 64, offset: 2112)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1300, file: !1053, line: 479, baseType: !334, size: 64, offset: 2176)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1300, file: !1053, line: 480, baseType: !334, size: 64, offset: 2240)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1300, file: !1053, line: 480, baseType: !334, size: 64, offset: 2304)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1300, file: !1053, line: 480, baseType: !334, size: 64, offset: 2368)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1300, file: !1053, line: 480, baseType: !334, size: 64, offset: 2432)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1300, file: !1053, line: 482, baseType: !1388, size: 2816, offset: 2496)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 2816, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 44)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1300, file: !1053, line: 488, baseType: !1392, size: 256, offset: 5312)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1393, line: 60, size: 256, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1392, file: !1393, line: 61, baseType: !1396, size: 256)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 256, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 4)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1300, file: !1053, line: 490, baseType: !1400, size: 64, offset: 5568)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1053, line: 490, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1300, file: !1053, line: 493, baseType: !1403, size: 896, offset: 5632)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1404, line: 53, baseType: !1405)
!1404 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 13, size: 896, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1413, !1414, !1415, !1416, !1436, !1437, !1438}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1405, file: !1404, line: 18, baseType: !344, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1405, file: !1404, line: 28, baseType: !484, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1405, file: !1404, line: 31, baseType: !1097, size: 256, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1405, file: !1404, line: 32, baseType: !1411, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1404, line: 32, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1405, file: !1404, line: 37, baseType: !392, size: 16, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !1404, line: 40, baseType: !1011, size: 192, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1405, file: !1404, line: 41, baseType: !332, size: 64, offset: 704)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1405, file: !1404, line: 42, baseType: !1417, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1420, line: 13, size: 896, elements: !1421)
!1420 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1419, file: !1420, line: 14, baseType: !332, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1419, file: !1420, line: 15, baseType: !334, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1419, file: !1420, line: 17, baseType: !334, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1419, file: !1420, line: 17, baseType: !334, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1419, file: !1420, line: 19, baseType: !298, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1419, file: !1420, line: 21, baseType: !298, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1419, file: !1420, line: 22, baseType: !298, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1419, file: !1420, line: 23, baseType: !298, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1419, file: !1420, line: 24, baseType: !298, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1419, file: !1420, line: 25, baseType: !298, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1419, file: !1420, line: 26, baseType: !298, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1419, file: !1420, line: 27, baseType: !298, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1419, file: !1420, line: 28, baseType: !298, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1419, file: !1420, line: 29, baseType: !298, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1405, file: !1404, line: 44, baseType: !1077, size: 32, offset: 832)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1405, file: !1404, line: 50, baseType: !390, size: 16, offset: 864)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1405, file: !1404, line: 51, baseType: !1439, size: 16, offset: 880)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !341, line: 18, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !343, line: 23, baseType: !1441)
!1441 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1300, file: !1053, line: 495, baseType: !334, size: 64, offset: 6528)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1300, file: !1053, line: 497, baseType: !1444, size: 64, offset: 6592)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1053, line: 381, size: 384, elements: !1446)
!1446 = !{!1447, !1448, !2519}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1445, file: !1053, line: 382, baseType: !1077, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1445, file: !1053, line: 383, baseType: !1449, size: 128, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1053, line: 376, size: 128, elements: !1450)
!1450 = !{!1451, !2517}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1449, file: !1053, line: 377, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1454, line: 640, size: 48640, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1462, !1463, !1464, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1481, !1499, !1510, !1593, !1594, !1595, !1606, !1607, !1609, !1610, !1611, !1612, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1691, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1729, !1731, !1732, !1733, !1745, !1746, !1747, !1748, !1749, !1750, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1774, !1779, !1963, !1964, !1965, !1966, !1970, !1973, !1976, !1979, !1982, !1986, !2087, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2131, !2132, !2133, !2134, !2135, !2140, !2141, !2142, !2145, !2146, !2149, !2152, !2155, !2158, !2190, !2193, !2194, !2273, !2274, !2277, !2278, !2281, !2282, !2283, !2287, !2288, !2289, !2302, !2303, !2304, !2314, !2319, !2322, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1453, file: !1454, line: 646, baseType: !1457, size: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1458, line: 56, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !1458, line: 57, baseType: !334, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1457, file: !1458, line: 58, baseType: !340, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1453, file: !1454, line: 649, baseType: !339, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1453, file: !1454, line: 657, baseType: !332, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1453, file: !1454, line: 658, baseType: !1465, size: 32, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1466, line: 113, baseType: !1467)
!1466 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1466, line: 111, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1467, file: !1466, line: 112, baseType: !1077, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1453, file: !1454, line: 660, baseType: !7, size: 32, offset: 288)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1453, file: !1454, line: 661, baseType: !7, size: 32, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1453, file: !1454, line: 684, baseType: !112, size: 32, offset: 352)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1453, file: !1454, line: 686, baseType: !112, size: 32, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1453, file: !1454, line: 687, baseType: !112, size: 32, offset: 416)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1453, file: !1454, line: 688, baseType: !112, size: 32, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1453, file: !1454, line: 689, baseType: !7, size: 32, offset: 480)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1453, file: !1454, line: 691, baseType: !1478, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1454, line: 691, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1453, file: !1454, line: 692, baseType: !1482, size: 832, offset: 576)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1454, line: 451, size: 832, elements: !1483)
!1483 = !{!1484, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1482, file: !1454, line: 453, baseType: !1485, size: 128)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1454, line: 325, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1485, file: !1454, line: 326, baseType: !334, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1485, file: !1454, line: 327, baseType: !340, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1482, file: !1454, line: 454, baseType: !1090, size: 192, align: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1482, file: !1454, line: 455, baseType: !350, size: 128, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1482, file: !1454, line: 456, baseType: !7, size: 32, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1482, file: !1454, line: 458, baseType: !344, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1482, file: !1454, line: 459, baseType: !344, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1482, file: !1454, line: 460, baseType: !344, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1482, file: !1454, line: 461, baseType: !344, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1482, file: !1454, line: 463, baseType: !344, size: 64, offset: 768)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1482, file: !1454, line: 465, baseType: !1498, offset: 832)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1454, line: 415, elements: !560)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1453, file: !1454, line: 693, baseType: !1500, size: 384, offset: 1408)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1454, line: 489, size: 384, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1500, file: !1454, line: 490, baseType: !350, size: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1500, file: !1454, line: 491, baseType: !334, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1500, file: !1454, line: 492, baseType: !334, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1500, file: !1454, line: 493, baseType: !7, size: 32, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1500, file: !1454, line: 494, baseType: !392, size: 16, offset: 288)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1500, file: !1454, line: 495, baseType: !392, size: 16, offset: 304)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1500, file: !1454, line: 497, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1453, file: !1454, line: 697, baseType: !1511, size: 1792, offset: 1792)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1454, line: 507, size: 1792, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1590, !1591}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1511, file: !1454, line: 508, baseType: !1090, size: 192, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1511, file: !1454, line: 515, baseType: !344, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1511, file: !1454, line: 516, baseType: !344, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1511, file: !1454, line: 517, baseType: !344, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1511, file: !1454, line: 518, baseType: !344, size: 64, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1511, file: !1454, line: 519, baseType: !344, size: 64, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1511, file: !1454, line: 526, baseType: !488, size: 64, offset: 512)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1511, file: !1454, line: 527, baseType: !344, size: 64, offset: 576)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !1454, line: 528, baseType: !7, size: 32, offset: 640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1511, file: !1454, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1511, file: !1454, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1511, file: !1454, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1511, file: !1454, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1511, file: !1454, line: 563, baseType: !1527, size: 512, offset: 704)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1528)
!1528 = !{!1529, !1537, !1538, !1543, !1586, !1587, !1588, !1589}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1527, file: !14, line: 119, baseType: !1530, size: 256)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1531, line: 9, size: 256, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1530, file: !1531, line: 10, baseType: !1090, size: 192, align: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1530, file: !1531, line: 11, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1536, line: 29, baseType: !488)
!1536 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1527, file: !14, line: 120, baseType: !1535, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1527, file: !14, line: 121, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!13, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1527, file: !14, line: 122, baseType: !1544, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1546)
!1546 = !{!1547, !1567, !1568, !1571, !1576, !1577, !1581, !1585}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1545, file: !14, line: 160, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !14, line: 215, baseType: !1103)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1549, file: !14, line: 216, baseType: !7, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1549, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1549, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1549, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1549, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1549, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1549, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1549, file: !14, line: 233, baseType: !1535, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1549, file: !14, line: 234, baseType: !1542, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1549, file: !14, line: 235, baseType: !1535, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1549, file: !14, line: 236, baseType: !1542, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1549, file: !14, line: 237, baseType: !1564, size: 4096, offset: 512)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, size: 4096, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 8)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1545, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1545, file: !14, line: 162, baseType: !1569, size: 32, offset: 96)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !331, line: 27, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !619, line: 96, baseType: !112)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1545, file: !14, line: 163, baseType: !1572, size: 32, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !697, line: 276, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !697, line: 276, size: 32, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1573, file: !697, line: 276, baseType: !701, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1545, file: !14, line: 164, baseType: !1542, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1545, file: !14, line: 165, baseType: !1578, size: 128, offset: 256)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1531, line: 14, size: 128, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1578, file: !1531, line: 15, baseType: !1082, size: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1545, file: !14, line: 166, baseType: !1582, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1535}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1545, file: !14, line: 167, baseType: !1535, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1527, file: !14, line: 123, baseType: !398, size: 8, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1527, file: !14, line: 124, baseType: !398, size: 8, offset: 456)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1527, file: !14, line: 125, baseType: !398, size: 8, offset: 464)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1527, file: !14, line: 126, baseType: !398, size: 8, offset: 472)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1511, file: !1454, line: 572, baseType: !1527, size: 512, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1511, file: !1454, line: 580, baseType: !1592, size: 64, offset: 1728)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1453, file: !1454, line: 721, baseType: !7, size: 32, offset: 3584)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1453, file: !1454, line: 722, baseType: !112, size: 32, offset: 3616)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1453, file: !1454, line: 723, baseType: !1596, size: 64, offset: 3648)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1599, line: 17, baseType: !1600)
!1599 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1599, line: 17, size: 64, elements: !1601)
!1601 = !{!1602}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1600, file: !1599, line: 17, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 64, elements: !1604)
!1604 = !{!1605}
!1605 = !DISubrange(count: 1)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1453, file: !1454, line: 724, baseType: !1598, size: 64, offset: 3712)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1453, file: !1454, line: 749, baseType: !1608, offset: 3776)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1454, line: 290, elements: !560)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1453, file: !1454, line: 751, baseType: !350, size: 128, offset: 3776)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1453, file: !1454, line: 757, baseType: !1296, size: 64, offset: 3904)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1453, file: !1454, line: 758, baseType: !1296, size: 64, offset: 3968)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1453, file: !1454, line: 761, baseType: !1613, size: 320, offset: 4032)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1393, line: 34, size: 320, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1613, file: !1393, line: 35, baseType: !344, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1613, file: !1393, line: 36, baseType: !1617, size: 256, offset: 64)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1303, size: 256, elements: !1397)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1453, file: !1454, line: 766, baseType: !112, size: 32, offset: 4352)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1453, file: !1454, line: 767, baseType: !112, size: 32, offset: 4384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1453, file: !1454, line: 768, baseType: !112, size: 32, offset: 4416)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1453, file: !1454, line: 770, baseType: !112, size: 32, offset: 4448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1453, file: !1454, line: 772, baseType: !334, size: 64, offset: 4480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1453, file: !1454, line: 775, baseType: !7, size: 32, offset: 4544)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1453, file: !1454, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1453, file: !1454, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1453, file: !1454, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1453, file: !1454, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1453, file: !1454, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1453, file: !1454, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1453, file: !1454, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1453, file: !1454, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1453, file: !1454, line: 831, baseType: !334, size: 64, offset: 4672)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1453, file: !1454, line: 833, baseType: !1634, size: 384, offset: 4736)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1635)
!1635 = !{!1636, !1641}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1634, file: !19, line: 26, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!298, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !19, line: 27, baseType: !1642, size: 320, offset: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !19, line: 27, size: 320, elements: !1643)
!1643 = !{!1644, !1654, !1681}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1642, file: !19, line: 36, baseType: !1645, size: 320)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !19, line: 29, size: 320, elements: !1646)
!1646 = !{!1647, !1649, !1650, !1651, !1652, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1645, file: !19, line: 30, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1645, file: !19, line: 31, baseType: !340, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1645, file: !19, line: 32, baseType: !340, size: 32, offset: 96)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1645, file: !19, line: 33, baseType: !340, size: 32, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1645, file: !19, line: 34, baseType: !344, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1645, file: !19, line: 35, baseType: !1648, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1642, file: !19, line: 46, baseType: !1655, size: 192)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !19, line: 38, size: 192, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1680}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1655, file: !19, line: 39, baseType: !1569, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1655, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !19, line: 41, baseType: !1660, size: 64, offset: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !19, line: 41, size: 64, elements: !1661)
!1661 = !{!1662, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1660, file: !19, line: 42, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1665, line: 7, size: 128, elements: !1666)
!1665 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1664, file: !1665, line: 8, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !619, line: 93, baseType: !490)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1664, file: !1665, line: 9, baseType: !490, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1660, file: !19, line: 43, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1673, line: 7, size: 64, elements: !1674)
!1673 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1679}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1672, file: !1673, line: 8, baseType: !1676, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1673, line: 5, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !341, line: 20, baseType: !1678)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !343, line: 26, baseType: !112)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1672, file: !1673, line: 9, baseType: !1677, size: 32, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1655, file: !19, line: 45, baseType: !344, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1642, file: !19, line: 54, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !19, line: 48, size: 256, elements: !1683)
!1683 = !{!1684, !1687, !1688, !1689, !1690}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1682, file: !19, line: 49, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1682, file: !19, line: 50, baseType: !112, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1682, file: !19, line: 51, baseType: !112, size: 32, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1682, file: !19, line: 52, baseType: !334, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1682, file: !19, line: 53, baseType: !334, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1453, file: !1454, line: 835, baseType: !1692, size: 32, offset: 5120)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !331, line: 22, baseType: !1693)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !619, line: 28, baseType: !112)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1453, file: !1454, line: 836, baseType: !1692, size: 32, offset: 5152)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1453, file: !1454, line: 840, baseType: !334, size: 64, offset: 5184)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1453, file: !1454, line: 849, baseType: !1452, size: 64, offset: 5248)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1453, file: !1454, line: 852, baseType: !1452, size: 64, offset: 5312)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1453, file: !1454, line: 857, baseType: !350, size: 128, offset: 5376)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1453, file: !1454, line: 858, baseType: !350, size: 128, offset: 5504)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1453, file: !1454, line: 859, baseType: !1452, size: 64, offset: 5632)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1453, file: !1454, line: 867, baseType: !350, size: 128, offset: 5696)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1453, file: !1454, line: 868, baseType: !350, size: 128, offset: 5824)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1453, file: !1454, line: 871, baseType: !1704, size: 64, offset: 5952)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1712, !1713, !1720, !1721}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1705, file: !40, line: 61, baseType: !1465, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1705, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !40, line: 63, baseType: !546, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1705, file: !40, line: 65, baseType: !1711, size: 256, offset: 64)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 256, elements: !1397)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1705, file: !40, line: 66, baseType: !929, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1705, file: !40, line: 68, baseType: !1714, size: 128, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1715, line: 40, baseType: !1716)
!1715 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1715, line: 36, size: 128, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1716, file: !1715, line: 37, baseType: !546)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1716, file: !1715, line: 38, baseType: !350, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1705, file: !40, line: 69, baseType: !674, size: 128, align: 64, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1705, file: !40, line: 70, baseType: !1722, size: 128, offset: 640)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1723, size: 128, elements: !1604)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1723, file: !40, line: 55, baseType: !112, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1723, file: !40, line: 56, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1453, file: !1454, line: 872, baseType: !1730, size: 512, offset: 6016)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 512, elements: !1397)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1453, file: !1454, line: 873, baseType: !350, size: 128, offset: 6528)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1453, file: !1454, line: 874, baseType: !350, size: 128, offset: 6656)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1453, file: !1454, line: 876, baseType: !1734, size: 64, offset: 6784)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1736, line: 26, size: 192, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1735, file: !1736, line: 27, baseType: !7, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1735, file: !1736, line: 28, baseType: !1740, size: 128, offset: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1741, line: 43, size: 128, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !1741, line: 44, baseType: !1103)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1740, file: !1741, line: 45, baseType: !350, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1453, file: !1454, line: 879, baseType: !993, size: 64, offset: 6848)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1453, file: !1454, line: 882, baseType: !993, size: 64, offset: 6912)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1453, file: !1454, line: 884, baseType: !344, size: 64, offset: 6976)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1453, file: !1454, line: 885, baseType: !344, size: 64, offset: 7040)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1453, file: !1454, line: 890, baseType: !344, size: 64, offset: 7104)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1453, file: !1454, line: 891, baseType: !1751, size: 128, offset: 7168)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1454, line: 242, size: 128, elements: !1752)
!1752 = !{!1753, !1754, !1755}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1751, file: !1454, line: 244, baseType: !344, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1751, file: !1454, line: 245, baseType: !344, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !1454, line: 246, baseType: !1103, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1453, file: !1454, line: 900, baseType: !334, size: 64, offset: 7296)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1453, file: !1454, line: 901, baseType: !334, size: 64, offset: 7360)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1453, file: !1454, line: 904, baseType: !344, size: 64, offset: 7424)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1453, file: !1454, line: 907, baseType: !344, size: 64, offset: 7488)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1453, file: !1454, line: 910, baseType: !334, size: 64, offset: 7552)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1453, file: !1454, line: 911, baseType: !334, size: 64, offset: 7616)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1453, file: !1454, line: 914, baseType: !1763, size: 640, offset: 7680)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1764, line: 123, size: 640, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !{!1766, !1772, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1763, file: !1764, line: 124, baseType: !1767, size: 576)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, size: 576, elements: !587)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1764, line: 108, size: 192, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1768, file: !1764, line: 109, baseType: !344, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1768, file: !1764, line: 110, baseType: !1578, size: 128, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1763, file: !1764, line: 125, baseType: !7, size: 32, offset: 576)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1763, file: !1764, line: 126, baseType: !7, size: 32, offset: 608)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1453, file: !1454, line: 917, baseType: !1775, size: 192, offset: 8320)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1764, line: 134, size: 192, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1775, file: !1764, line: 135, baseType: !674, size: 128, align: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1775, file: !1764, line: 136, baseType: !7, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1453, file: !1454, line: 923, baseType: !1780, size: 64, offset: 8512)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1783, line: 111, size: 1280, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1804, !1805, !1806, !1807, !1808, !1809, !1916, !1917, !1918, !1919, !1945, !1948, !1958}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1782, file: !1783, line: 112, baseType: !1077, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1782, file: !1783, line: 120, baseType: !736, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1782, file: !1783, line: 121, baseType: !744, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1782, file: !1783, line: 122, baseType: !736, size: 32, offset: 96)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1782, file: !1783, line: 123, baseType: !744, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1782, file: !1783, line: 124, baseType: !736, size: 32, offset: 160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1782, file: !1783, line: 125, baseType: !744, size: 32, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1782, file: !1783, line: 126, baseType: !736, size: 32, offset: 224)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1782, file: !1783, line: 127, baseType: !744, size: 32, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1782, file: !1783, line: 128, baseType: !7, size: 32, offset: 288)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1782, file: !1783, line: 129, baseType: !1796, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1797, line: 26, baseType: !1798)
!1797 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1797, line: 24, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1798, file: !1797, line: 25, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !1802)
!1802 = !{!1803}
!1803 = !DISubrange(count: 2)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1782, file: !1783, line: 130, baseType: !1796, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1782, file: !1783, line: 131, baseType: !1796, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1782, file: !1783, line: 132, baseType: !1796, size: 64, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1782, file: !1783, line: 133, baseType: !1796, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1782, file: !1783, line: 135, baseType: !400, size: 8, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1782, file: !1783, line: 137, baseType: !1810, size: 64, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1812, line: 189, size: 1664, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815, !1818, !1823, !1824, !1827, !1828, !1833, !1834, !1835, !1836, !1838, !1839, !1840, !1841, !1842, !1880, !1901}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1811, file: !1812, line: 190, baseType: !1465, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1811, file: !1812, line: 191, baseType: !1816, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1812, line: 28, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !331, line: 98, baseType: !1677)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1812, line: 192, baseType: !1819, size: 192, offset: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1812, line: 192, size: 192, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1819, file: !1812, line: 193, baseType: !350, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1819, file: !1812, line: 194, baseType: !1090, size: 192, align: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1811, file: !1812, line: 199, baseType: !1097, size: 256, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1811, file: !1812, line: 200, baseType: !1825, size: 64, offset: 512)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1812, line: 200, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1811, file: !1812, line: 201, baseType: !332, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1812, line: 202, baseType: !1829, size: 64, offset: 640)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1812, line: 202, size: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1829, file: !1812, line: 203, baseType: !834, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1829, file: !1812, line: 204, baseType: !834, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1811, file: !1812, line: 206, baseType: !834, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1811, file: !1812, line: 207, baseType: !736, size: 32, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1811, file: !1812, line: 208, baseType: !744, size: 32, offset: 800)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1811, file: !1812, line: 209, baseType: !1837, size: 32, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1812, line: 31, baseType: !853)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1811, file: !1812, line: 210, baseType: !392, size: 16, offset: 864)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1811, file: !1812, line: 211, baseType: !392, size: 16, offset: 880)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1811, file: !1812, line: 215, baseType: !1441, size: 16, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !1812, line: 222, baseType: !334, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1812, line: 239, baseType: !1843, size: 320, offset: 1024)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1812, line: 239, size: 320, elements: !1844)
!1844 = !{!1845, !1872}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1843, file: !1812, line: 240, baseType: !1846, size: 320)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1812, line: 108, size: 320, elements: !1847)
!1847 = !{!1848, !1849, !1861, !1864, !1871}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1846, file: !1812, line: 110, baseType: !334, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1812, line: 111, baseType: !1850, size: 64, offset: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !1812, line: 111, size: 64, elements: !1851)
!1851 = !{!1852, !1860}
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1812, line: 112, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1812, line: 112, size: 64, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1853, file: !1812, line: 114, baseType: !390, size: 16)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1853, file: !1812, line: 115, baseType: !1857, size: 48, offset: 16)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 48, elements: !1858)
!1858 = !{!1859}
!1859 = !DISubrange(count: 6)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1850, file: !1812, line: 121, baseType: !334, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1846, file: !1812, line: 123, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1812, line: 96, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1846, file: !1812, line: 124, baseType: !1865, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1812, line: 102, size: 192, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1866, file: !1812, line: 103, baseType: !674, size: 128, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1866, file: !1812, line: 104, baseType: !1465, size: 32, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1866, file: !1812, line: 105, baseType: !470, size: 8, offset: 160)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1846, file: !1812, line: 125, baseType: !362, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1812, line: 241, baseType: !1873, size: 320)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !1812, line: 241, size: 320, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1873, file: !1812, line: 242, baseType: !334, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1873, file: !1812, line: 243, baseType: !334, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1873, file: !1812, line: 244, baseType: !1862, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1873, file: !1812, line: 245, baseType: !1865, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1873, file: !1812, line: 246, baseType: !383, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1812, line: 254, baseType: !1881, size: 256, offset: 1344)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1812, line: 254, size: 256, elements: !1882)
!1882 = !{!1883, !1889}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1881, file: !1812, line: 255, baseType: !1884, size: 256)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1812, line: 128, size: 256, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1884, file: !1812, line: 129, baseType: !332, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1884, file: !1812, line: 130, baseType: !1888, size: 256)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !1397)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1812, line: 256, baseType: !1890, size: 256)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1812, line: 256, size: 256, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1890, file: !1812, line: 258, baseType: !350, size: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1890, file: !1812, line: 259, baseType: !1894, size: 128, offset: 128)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1895, line: 22, size: 128, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1894, file: !1895, line: 23, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1895, line: 23, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1894, file: !1895, line: 24, baseType: !334, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1811, file: !1812, line: 274, baseType: !1902, size: 64, offset: 1600)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1812, line: 170, size: 192, elements: !1904)
!1904 = !{!1905, !1914, !1915}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1903, file: !1812, line: 171, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1812, line: 165, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!112, !1810, !1910, !1912, !1810}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1903, file: !1812, line: 172, baseType: !1810, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1903, file: !1812, line: 173, baseType: !1862, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1782, file: !1783, line: 138, baseType: !1810, size: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1782, file: !1783, line: 139, baseType: !1810, size: 64, offset: 832)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1782, file: !1783, line: 140, baseType: !1810, size: 64, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1782, file: !1783, line: 145, baseType: !1920, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1922, line: 13, size: 896, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1921, file: !1922, line: 14, baseType: !1465, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1921, file: !1922, line: 15, baseType: !1077, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1921, file: !1922, line: 16, baseType: !1077, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1921, file: !1922, line: 21, baseType: !482, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1921, file: !1922, line: 27, baseType: !334, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1921, file: !1922, line: 28, baseType: !334, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1921, file: !1922, line: 29, baseType: !482, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1921, file: !1922, line: 32, baseType: !503, size: 128, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1921, file: !1922, line: 33, baseType: !736, size: 32, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1921, file: !1922, line: 37, baseType: !482, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1921, file: !1922, line: 44, baseType: !1935, size: 256, offset: 640)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1936, line: 15, size: 256, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 16, baseType: !1103)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1935, file: !1936, line: 18, baseType: !112, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1935, file: !1936, line: 19, baseType: !112, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1935, file: !1936, line: 20, baseType: !112, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1935, file: !1936, line: 21, baseType: !112, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1935, file: !1936, line: 22, baseType: !334, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1936, line: 23, baseType: !334, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1782, file: !1783, line: 146, baseType: !1946, size: 64, offset: 1024)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !737, line: 18, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1782, file: !1783, line: 147, baseType: !1949, size: 64, offset: 1088)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1783, line: 25, size: 64, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1950, file: !1783, line: 26, baseType: !1077, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1950, file: !1783, line: 27, baseType: !112, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1950, file: !1783, line: 28, baseType: !1955, offset: 64)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 0)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1783, line: 149, baseType: !1959, size: 128, offset: 1152)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1783, line: 149, size: 128, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1959, file: !1783, line: 150, baseType: !112, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1959, file: !1783, line: 151, baseType: !674, size: 128, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1453, file: !1454, line: 926, baseType: !1780, size: 64, offset: 8576)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1453, file: !1454, line: 929, baseType: !1780, size: 64, offset: 8640)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1453, file: !1454, line: 933, baseType: !1810, size: 64, offset: 8704)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1453, file: !1454, line: 943, baseType: !1967, size: 128, offset: 8768)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 128, elements: !1968)
!1968 = !{!1969}
!1969 = !DISubrange(count: 16)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1453, file: !1454, line: 945, baseType: !1971, size: 64, offset: 8896)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1454, line: 49, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1453, file: !1454, line: 956, baseType: !1974, size: 64, offset: 8960)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1454, line: 45, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1453, file: !1454, line: 959, baseType: !1977, size: 64, offset: 9024)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1454, line: 959, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1453, file: !1454, line: 962, baseType: !1980, size: 64, offset: 9088)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1454, line: 66, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1453, file: !1454, line: 966, baseType: !1983, size: 64, offset: 9152)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1985, line: 35, flags: DIFlagFwdDecl)
!1985 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1453, file: !1454, line: 969, baseType: !1987, size: 64, offset: 9216)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1989, line: 82, size: 7296, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2026, !2035, !2036, !2038, !2039, !2040, !2043, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2073, !2074, !2081, !2082, !2083, !2084, !2085, !2086}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1988, file: !1989, line: 83, baseType: !1465, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1988, file: !1989, line: 84, baseType: !1077, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1988, file: !1989, line: 85, baseType: !112, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1988, file: !1989, line: 86, baseType: !350, size: 128, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1988, file: !1989, line: 88, baseType: !1714, size: 128, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1988, file: !1989, line: 91, baseType: !1452, size: 64, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1988, file: !1989, line: 94, baseType: !1998, size: 192, offset: 448)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1999, line: 30, size: 192, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1998, file: !1999, line: 31, baseType: !350, size: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1998, file: !1999, line: 32, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2004, line: 25, baseType: !2005)
!2004 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2004, line: 23, size: 64, elements: !2006)
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2005, file: !2004, line: 24, baseType: !1603, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1988, file: !1989, line: 97, baseType: !929, size: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1988, file: !1989, line: 100, baseType: !112, size: 32, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1988, file: !1989, line: 106, baseType: !112, size: 32, offset: 736)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1988, file: !1989, line: 107, baseType: !1452, size: 64, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1988, file: !1989, line: 110, baseType: !112, size: 32, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !1989, line: 111, baseType: !7, size: 32, offset: 864)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1988, file: !1989, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1988, file: !1989, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1988, file: !1989, line: 128, baseType: !112, size: 32, offset: 928)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1988, file: !1989, line: 129, baseType: !350, size: 128, offset: 960)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1988, file: !1989, line: 132, baseType: !1527, size: 512, offset: 1088)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1988, file: !1989, line: 133, baseType: !1535, size: 64, offset: 1600)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1988, file: !1989, line: 140, baseType: !2021, size: 256, offset: 1664)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 256, elements: !1802)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1989, line: 38, size: 128, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2022, file: !1989, line: 39, baseType: !344, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2022, file: !1989, line: 40, baseType: !344, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1988, file: !1989, line: 146, baseType: !2027, size: 192, offset: 1920)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1989, line: 66, size: 192, elements: !2028)
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2027, file: !1989, line: 67, baseType: !2030, size: 192)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1989, line: 47, size: 192, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2030, file: !1989, line: 48, baseType: !484, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2030, file: !1989, line: 49, baseType: !484, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2030, file: !1989, line: 50, baseType: !484, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1988, file: !1989, line: 150, baseType: !1763, size: 640, offset: 2112)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1988, file: !1989, line: 153, baseType: !2037, size: 256, offset: 2752)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1704, size: 256, elements: !1397)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1988, file: !1989, line: 159, baseType: !1704, size: 64, offset: 3008)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1988, file: !1989, line: 162, baseType: !112, size: 32, offset: 3072)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1988, file: !1989, line: 164, baseType: !2041, size: 64, offset: 3136)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1989, line: 164, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1988, file: !1989, line: 175, baseType: !2044, size: 32, offset: 3200)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !697, line: 805, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 798, size: 32, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2045, file: !697, line: 803, baseType: !696, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2045, file: !697, line: 804, baseType: !546, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1988, file: !1989, line: 176, baseType: !344, size: 64, offset: 3264)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1988, file: !1989, line: 176, baseType: !344, size: 64, offset: 3328)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1988, file: !1989, line: 176, baseType: !344, size: 64, offset: 3392)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1988, file: !1989, line: 176, baseType: !344, size: 64, offset: 3456)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1988, file: !1989, line: 177, baseType: !344, size: 64, offset: 3520)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1988, file: !1989, line: 178, baseType: !344, size: 64, offset: 3584)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1988, file: !1989, line: 179, baseType: !1751, size: 128, offset: 3648)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1988, file: !1989, line: 180, baseType: !334, size: 64, offset: 3776)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1988, file: !1989, line: 180, baseType: !334, size: 64, offset: 3840)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1988, file: !1989, line: 180, baseType: !334, size: 64, offset: 3904)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1988, file: !1989, line: 180, baseType: !334, size: 64, offset: 3968)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1988, file: !1989, line: 181, baseType: !334, size: 64, offset: 4032)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1988, file: !1989, line: 181, baseType: !334, size: 64, offset: 4096)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1988, file: !1989, line: 181, baseType: !334, size: 64, offset: 4160)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1988, file: !1989, line: 181, baseType: !334, size: 64, offset: 4224)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1988, file: !1989, line: 182, baseType: !334, size: 64, offset: 4288)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1988, file: !1989, line: 182, baseType: !334, size: 64, offset: 4352)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1988, file: !1989, line: 182, baseType: !334, size: 64, offset: 4416)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1988, file: !1989, line: 182, baseType: !334, size: 64, offset: 4480)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1988, file: !1989, line: 183, baseType: !334, size: 64, offset: 4544)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1988, file: !1989, line: 183, baseType: !334, size: 64, offset: 4608)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1988, file: !1989, line: 184, baseType: !2071, offset: 4672)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2072, line: 12, elements: !560)
!2072 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1988, file: !1989, line: 192, baseType: !346, size: 64, offset: 4672)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1988, file: !1989, line: 203, baseType: !2075, size: 2048, offset: 4736)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2076, size: 2048, elements: !1968)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2077, line: 43, size: 128, elements: !2078)
!2077 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2076, file: !2077, line: 44, baseType: !633, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2076, file: !2077, line: 45, baseType: !633, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1988, file: !1989, line: 220, baseType: !470, size: 8, offset: 6784)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1988, file: !1989, line: 221, baseType: !1441, size: 16, offset: 6800)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1988, file: !1989, line: 222, baseType: !1441, size: 16, offset: 6816)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1988, file: !1989, line: 224, baseType: !1296, size: 64, offset: 6848)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1988, file: !1989, line: 227, baseType: !1011, size: 192, offset: 6912)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1988, file: !1989, line: 233, baseType: !1011, size: 192, offset: 7104)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1453, file: !1454, line: 970, baseType: !2088, size: 64, offset: 9280)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1989, line: 20, size: 16576, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2089, file: !1989, line: 21, baseType: !546)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2089, file: !1989, line: 22, baseType: !1465, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2089, file: !1989, line: 23, baseType: !1714, size: 128, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2089, file: !1989, line: 24, baseType: !2095, size: 16384, offset: 192)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2096, size: 16384, elements: !591)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1999, line: 49, size: 256, elements: !2097)
!2097 = !{!2098}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2096, file: !1999, line: 50, baseType: !2099, size: 256)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1999, line: 35, size: 256, elements: !2100)
!2100 = !{!2101, !2108, !2109, !2113}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2099, file: !1999, line: 37, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2103, line: 19, baseType: !2104)
!2103 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2103, line: 18, baseType: !2106)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !112}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2099, file: !1999, line: 38, baseType: !334, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2099, file: !1999, line: 44, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2103, line: 22, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2103, line: 21, baseType: !440)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2099, file: !1999, line: 46, baseType: !2003, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1453, file: !1454, line: 971, baseType: !2003, size: 64, offset: 9344)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1453, file: !1454, line: 972, baseType: !2003, size: 64, offset: 9408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1453, file: !1454, line: 974, baseType: !2003, size: 64, offset: 9472)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1453, file: !1454, line: 975, baseType: !1998, size: 192, offset: 9536)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1453, file: !1454, line: 976, baseType: !334, size: 64, offset: 9728)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1453, file: !1454, line: 977, baseType: !631, size: 64, offset: 9792)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1453, file: !1454, line: 978, baseType: !7, size: 32, offset: 9856)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1453, file: !1454, line: 980, baseType: !677, size: 64, offset: 9920)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1453, file: !1454, line: 989, baseType: !2123, size: 128, offset: 9984)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2124, line: 35, size: 128, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2123, file: !2124, line: 36, baseType: !112, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2123, file: !2124, line: 37, baseType: !1077, size: 32, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2123, file: !2124, line: 38, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2124, line: 23, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1453, file: !1454, line: 992, baseType: !344, size: 64, offset: 10112)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1453, file: !1454, line: 993, baseType: !344, size: 64, offset: 10176)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1453, file: !1454, line: 996, baseType: !546, offset: 10240)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1453, file: !1454, line: 999, baseType: !1103, offset: 10240)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1453, file: !1454, line: 1001, baseType: !2136, size: 64, offset: 10240)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1454, line: 636, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2136, file: !1454, line: 637, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1453, file: !1454, line: 1005, baseType: !1082, size: 128, offset: 10304)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1453, file: !1454, line: 1007, baseType: !1452, size: 64, offset: 10432)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1453, file: !1454, line: 1009, baseType: !2143, size: 64, offset: 10496)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1454, line: 1009, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1453, file: !1454, line: 1043, baseType: !332, size: 64, offset: 10560)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1453, file: !1454, line: 1046, baseType: !2147, size: 64, offset: 10624)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1454, line: 41, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1453, file: !1454, line: 1050, baseType: !2150, size: 64, offset: 10688)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1454, line: 42, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1453, file: !1454, line: 1054, baseType: !2153, size: 64, offset: 10752)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1454, line: 55, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1453, file: !1454, line: 1056, baseType: !2156, size: 64, offset: 10816)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1454, line: 40, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1453, file: !1454, line: 1058, baseType: !2159, size: 64, offset: 10880)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2161, line: 99, size: 704, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169, !2188, !2189}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2160, file: !2161, line: 100, baseType: !482, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2160, file: !2161, line: 101, baseType: !1077, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2160, file: !2161, line: 102, baseType: !1077, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2160, file: !2161, line: 105, baseType: !546, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2160, file: !2161, line: 107, baseType: !392, size: 16, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2160, file: !2161, line: 109, baseType: !1069, size: 128, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2160, file: !2161, line: 110, baseType: !2170, size: 64, offset: 320)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2161, line: 73, size: 448, elements: !2172)
!2172 = !{!2173, !2176, !2177, !2182, !2187}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2171, file: !2161, line: 74, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2161, line: 74, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2171, file: !2161, line: 75, baseType: !2159, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2161, line: 83, baseType: !2178, size: 128, offset: 128)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !2161, line: 83, size: 128, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2178, file: !2161, line: 84, baseType: !350, size: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2178, file: !2161, line: 85, baseType: !1256, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2161, line: 87, baseType: !2183, size: 128, offset: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !2161, line: 87, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2183, file: !2161, line: 88, baseType: !503, size: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2183, file: !2161, line: 89, baseType: !674, size: 128, align: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2171, file: !2161, line: 92, baseType: !7, size: 32, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2160, file: !2161, line: 111, baseType: !929, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2160, file: !2161, line: 113, baseType: !479, size: 256, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1453, file: !1454, line: 1061, baseType: !2191, size: 64, offset: 10944)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1454, line: 43, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1453, file: !1454, line: 1064, baseType: !334, size: 64, offset: 11008)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1453, file: !1454, line: 1065, baseType: !2195, size: 64, offset: 11072)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1999, line: 14, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1999, line: 12, size: 384, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !1999, line: 13, baseType: !2200, size: 384)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !1999, line: 13, size: 384, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2200, file: !1999, line: 13, baseType: !112, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2200, file: !1999, line: 13, baseType: !112, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2200, file: !1999, line: 13, baseType: !112, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2200, file: !1999, line: 13, baseType: !2206, size: 256, offset: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2207, line: 32, size: 256, elements: !2208)
!2207 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2214, !2227, !2233, !2242, !2262, !2267}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2206, file: !2207, line: 37, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 34, size: 64, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2210, file: !2207, line: 35, baseType: !1693, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2210, file: !2207, line: 36, baseType: !742, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2206, file: !2207, line: 45, baseType: !2215, size: 192)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 40, size: 192, elements: !2216)
!2216 = !{!2217, !2219, !2220, !2226}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2215, file: !2207, line: 41, baseType: !2218, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !619, line: 95, baseType: !112)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2215, file: !2207, line: 42, baseType: !112, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2215, file: !2207, line: 43, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2207, line: 11, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2207, line: 8, size: 64, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2222, file: !2207, line: 9, baseType: !112, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2222, file: !2207, line: 10, baseType: !332, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2215, file: !2207, line: 44, baseType: !112, size: 32, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2206, file: !2207, line: 52, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 48, size: 128, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2228, file: !2207, line: 49, baseType: !1693, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2228, file: !2207, line: 50, baseType: !742, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2228, file: !2207, line: 51, baseType: !2221, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2206, file: !2207, line: 61, baseType: !2234, size: 256)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 55, size: 256, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2241}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2234, file: !2207, line: 56, baseType: !1693, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2234, file: !2207, line: 57, baseType: !742, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2234, file: !2207, line: 58, baseType: !112, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2234, file: !2207, line: 59, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !619, line: 94, baseType: !620)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2234, file: !2207, line: 60, baseType: !2240, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2206, file: !2207, line: 95, baseType: !2243, size: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 64, size: 256, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2243, file: !2207, line: 65, baseType: !332, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2207, line: 77, baseType: !2247, size: 192, offset: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2207, line: 77, size: 192, elements: !2248)
!2248 = !{!2249, !2250, !2257}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2247, file: !2207, line: 82, baseType: !1441, size: 16)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2247, file: !2207, line: 88, baseType: !2251, size: 192)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !2207, line: 84, size: 192, elements: !2252)
!2252 = !{!2253, !2255, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2251, file: !2207, line: 85, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 64, elements: !1565)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2251, file: !2207, line: 86, baseType: !332, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2251, file: !2207, line: 87, baseType: !332, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2247, file: !2207, line: 93, baseType: !2258, size: 96)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !2207, line: 90, size: 96, elements: !2259)
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2258, file: !2207, line: 91, baseType: !2254, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2258, file: !2207, line: 92, baseType: !342, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2206, file: !2207, line: 101, baseType: !2263, size: 128)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 98, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2263, file: !2207, line: 99, baseType: !298, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2263, file: !2207, line: 100, baseType: !112, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2206, file: !2207, line: 108, baseType: !2268, size: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 104, size: 128, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2268, file: !2207, line: 105, baseType: !332, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2268, file: !2207, line: 106, baseType: !112, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2268, file: !2207, line: 107, baseType: !7, size: 32, offset: 96)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1453, file: !1454, line: 1067, baseType: !2071, offset: 11136)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1453, file: !1454, line: 1099, baseType: !2275, size: 64, offset: 11136)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1454, line: 56, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1453, file: !1454, line: 1103, baseType: !350, size: 128, offset: 11200)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1453, file: !1454, line: 1104, baseType: !2279, size: 64, offset: 11328)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1454, line: 46, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1453, file: !1454, line: 1105, baseType: !1011, size: 192, offset: 11392)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1453, file: !1454, line: 1106, baseType: !7, size: 32, offset: 11584)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1453, file: !1454, line: 1109, baseType: !2284, size: 128, offset: 11648)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 128, elements: !1802)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1454, line: 51, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1453, file: !1454, line: 1110, baseType: !1011, size: 192, offset: 11776)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1453, file: !1454, line: 1111, baseType: !350, size: 128, offset: 11968)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1453, file: !1454, line: 1173, baseType: !2290, size: 64, offset: 12096)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2292, line: 62, size: 256, align: 256, elements: !2293)
!2292 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2295, !2296, !2301}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2291, file: !2292, line: 75, baseType: !342, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2291, file: !2292, line: 90, baseType: !342, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2291, file: !2292, line: 124, baseType: !2297, size: 64, offset: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !2292, line: 109, size: 64, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2297, file: !2292, line: 110, baseType: !345, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2297, file: !2292, line: 112, baseType: !345, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2291, file: !2292, line: 144, baseType: !342, size: 32, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1453, file: !1454, line: 1174, baseType: !340, size: 32, offset: 12160)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1453, file: !1454, line: 1179, baseType: !334, size: 64, offset: 12224)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1453, file: !1454, line: 1182, baseType: !2305, size: 128, offset: 12288)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1393, line: 76, size: 128, elements: !2306)
!2306 = !{!2307, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2305, file: !1393, line: 85, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2309, line: 7, size: 64, elements: !2310)
!2309 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2308, file: !2309, line: 12, baseType: !1600, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2305, file: !1393, line: 88, baseType: !470, size: 8, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2305, file: !1393, line: 95, baseType: !470, size: 8, offset: 72)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 1184, baseType: !2315, size: 128, offset: 12416)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 1184, size: 128, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2315, file: !1454, line: 1185, baseType: !1465, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2315, file: !1454, line: 1186, baseType: !674, size: 128, align: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1453, file: !1454, line: 1190, baseType: !2320, size: 64, offset: 12544)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1454, line: 53, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1453, file: !1454, line: 1192, baseType: !2323, size: 128, offset: 12608)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1393, line: 64, size: 128, elements: !2324)
!2324 = !{!2325, !2326, !2327}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2323, file: !1393, line: 65, baseType: !1051, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2323, file: !1393, line: 67, baseType: !342, size: 32, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2323, file: !1393, line: 68, baseType: !342, size: 32, offset: 96)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1453, file: !1454, line: 1206, baseType: !112, size: 32, offset: 12736)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1453, file: !1454, line: 1207, baseType: !112, size: 32, offset: 12768)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1453, file: !1454, line: 1209, baseType: !334, size: 64, offset: 12800)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1453, file: !1454, line: 1219, baseType: !344, size: 64, offset: 12864)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1453, file: !1454, line: 1220, baseType: !344, size: 64, offset: 12928)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1453, file: !1454, line: 1317, baseType: !112, size: 32, offset: 12992)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1453, file: !1454, line: 1319, baseType: !1452, size: 64, offset: 13056)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1453, file: !1454, line: 1322, baseType: !2336, size: 64, offset: 13120)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1454, line: 1322, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1453, file: !1454, line: 1326, baseType: !1465, size: 32, offset: 13184)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1453, file: !1454, line: 1342, baseType: !332, size: 64, offset: 13248)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1453, file: !1454, line: 1343, baseType: !345, size: 64, offset: 13312)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1453, file: !1454, line: 1344, baseType: !344, size: 64, offset: 13376)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1453, file: !1454, line: 1345, baseType: !345, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1453, file: !1454, line: 1346, baseType: !345, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1453, file: !1454, line: 1347, baseType: !345, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1453, file: !1454, line: 1348, baseType: !674, size: 128, align: 64, offset: 13504)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1453, file: !1454, line: 1358, baseType: !2347, size: 34816, offset: 13824)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2348, line: 485, size: 34816, elements: !2349)
!2348 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2349 = !{!2350, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2379, !2380, !2381, !2382, !2383, !2384, !2387, !2388, !2389}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2347, file: !2348, line: 487, baseType: !2351, size: 192)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2352, size: 192, elements: !587)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2353, line: 16, size: 64, elements: !2354)
!2353 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2352, file: !2353, line: 17, baseType: !390, size: 16)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2352, file: !2353, line: 18, baseType: !390, size: 16, offset: 16)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2352, file: !2353, line: 19, baseType: !390, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2352, file: !2353, line: 19, baseType: !390, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2352, file: !2353, line: 19, baseType: !390, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2352, file: !2353, line: 19, baseType: !390, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2352, file: !2353, line: 19, baseType: !390, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2352, file: !2353, line: 20, baseType: !390, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2352, file: !2353, line: 20, baseType: !390, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2352, file: !2353, line: 20, baseType: !390, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2352, file: !2353, line: 20, baseType: !390, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2352, file: !2353, line: 20, baseType: !390, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2352, file: !2353, line: 20, baseType: !390, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2347, file: !2348, line: 491, baseType: !334, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2347, file: !2348, line: 495, baseType: !392, size: 16, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2347, file: !2348, line: 496, baseType: !392, size: 16, offset: 272)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2347, file: !2348, line: 497, baseType: !392, size: 16, offset: 288)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2347, file: !2348, line: 498, baseType: !392, size: 16, offset: 304)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2347, file: !2348, line: 502, baseType: !334, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2347, file: !2348, line: 503, baseType: !334, size: 64, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2347, file: !2348, line: 514, baseType: !2376, size: 256, offset: 448)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2377, size: 256, elements: !1397)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2348, line: 483, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2347, file: !2348, line: 516, baseType: !334, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2347, file: !2348, line: 518, baseType: !334, size: 64, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2347, file: !2348, line: 520, baseType: !334, size: 64, offset: 832)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2347, file: !2348, line: 521, baseType: !334, size: 64, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2347, file: !2348, line: 522, baseType: !334, size: 64, offset: 960)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2347, file: !2348, line: 528, baseType: !2385, size: 64, offset: 1024)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2348, line: 10, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2347, file: !2348, line: 535, baseType: !334, size: 64, offset: 1088)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2347, file: !2348, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2347, file: !2348, line: 540, baseType: !2390, size: 33280, offset: 1536)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2391, line: 317, size: 33280, elements: !2392)
!2391 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !{!2393, !2394, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2390, file: !2391, line: 330, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2390, file: !2391, line: 337, baseType: !334, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2390, file: !2391, line: 348, baseType: !2396, size: 32768, offset: 512)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2391, line: 304, size: 32768, elements: !2397)
!2397 = !{!2398, !2411, !2450, !2500, !2513}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2396, file: !2391, line: 305, baseType: !2399, size: 896)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2391, line: 12, size: 896, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2410}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2399, file: !2391, line: 13, baseType: !340, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2399, file: !2391, line: 14, baseType: !340, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2399, file: !2391, line: 15, baseType: !340, size: 32, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2399, file: !2391, line: 16, baseType: !340, size: 32, offset: 96)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2399, file: !2391, line: 17, baseType: !340, size: 32, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2399, file: !2391, line: 18, baseType: !340, size: 32, offset: 160)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2399, file: !2391, line: 19, baseType: !340, size: 32, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2399, file: !2391, line: 22, baseType: !2409, size: 640, offset: 224)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 640, elements: !527)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2399, file: !2391, line: 25, baseType: !340, size: 32, offset: 864)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2396, file: !2391, line: 306, baseType: !2412, size: 4096, align: 128)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2391, line: 34, size: 4096, align: 128, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2433, !2434, !2435, !2439, !2441, !2445}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2412, file: !2391, line: 35, baseType: !390, size: 16)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2412, file: !2391, line: 36, baseType: !390, size: 16, offset: 16)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2412, file: !2391, line: 37, baseType: !390, size: 16, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2412, file: !2391, line: 38, baseType: !390, size: 16, offset: 48)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !2391, line: 39, baseType: !2419, size: 128, offset: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !2391, line: 39, size: 128, elements: !2420)
!2420 = !{!2421, !2426}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !2391, line: 40, baseType: !2422, size: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2391, line: 40, size: 128, elements: !2423)
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2422, file: !2391, line: 41, baseType: !344, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2422, file: !2391, line: 42, baseType: !344, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !2391, line: 44, baseType: !2427, size: 128)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2391, line: 44, size: 128, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2427, file: !2391, line: 45, baseType: !340, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2427, file: !2391, line: 46, baseType: !340, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2427, file: !2391, line: 47, baseType: !340, size: 32, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2427, file: !2391, line: 48, baseType: !340, size: 32, offset: 96)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2412, file: !2391, line: 51, baseType: !340, size: 32, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2412, file: !2391, line: 52, baseType: !340, size: 32, offset: 224)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2412, file: !2391, line: 55, baseType: !2436, size: 1024, offset: 256)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !2437)
!2437 = !{!2438}
!2438 = !DISubrange(count: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2412, file: !2391, line: 58, baseType: !2440, size: 2048, offset: 1280)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !591)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2412, file: !2391, line: 60, baseType: !2442, size: 384, offset: 3328)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !2443)
!2443 = !{!2444}
!2444 = !DISubrange(count: 12)
!2445 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !2391, line: 62, baseType: !2446, size: 384, offset: 3712)
!2446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !2391, line: 62, size: 384, elements: !2447)
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2446, file: !2391, line: 63, baseType: !2442, size: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2446, file: !2391, line: 64, baseType: !2442, size: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2396, file: !2391, line: 307, baseType: !2451, size: 1088)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2391, line: 79, size: 1088, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2499}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2451, file: !2391, line: 80, baseType: !340, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2451, file: !2391, line: 81, baseType: !340, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2451, file: !2391, line: 82, baseType: !340, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2451, file: !2391, line: 83, baseType: !340, size: 32, offset: 96)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2451, file: !2391, line: 84, baseType: !340, size: 32, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2451, file: !2391, line: 85, baseType: !340, size: 32, offset: 160)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2451, file: !2391, line: 86, baseType: !340, size: 32, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2451, file: !2391, line: 88, baseType: !2409, size: 640, offset: 224)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2451, file: !2391, line: 89, baseType: !398, size: 8, offset: 864)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2451, file: !2391, line: 90, baseType: !398, size: 8, offset: 872)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2451, file: !2391, line: 91, baseType: !398, size: 8, offset: 880)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2451, file: !2391, line: 92, baseType: !398, size: 8, offset: 888)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2451, file: !2391, line: 93, baseType: !398, size: 8, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2451, file: !2391, line: 94, baseType: !398, size: 8, offset: 904)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2451, file: !2391, line: 95, baseType: !2468, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2470, line: 11, size: 128, elements: !2471)
!2470 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2473}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2469, file: !2470, line: 12, baseType: !298, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2469, file: !2470, line: 13, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2476, line: 56, size: 1344, elements: !2477)
!2476 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2475, file: !2476, line: 61, baseType: !334, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2475, file: !2476, line: 62, baseType: !334, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2475, file: !2476, line: 63, baseType: !334, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2475, file: !2476, line: 64, baseType: !334, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2475, file: !2476, line: 65, baseType: !334, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2475, file: !2476, line: 66, baseType: !334, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2475, file: !2476, line: 68, baseType: !334, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2475, file: !2476, line: 69, baseType: !334, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2475, file: !2476, line: 70, baseType: !334, size: 64, offset: 512)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2475, file: !2476, line: 71, baseType: !334, size: 64, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2475, file: !2476, line: 72, baseType: !334, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2475, file: !2476, line: 73, baseType: !334, size: 64, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2475, file: !2476, line: 74, baseType: !334, size: 64, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2475, file: !2476, line: 75, baseType: !334, size: 64, offset: 832)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2475, file: !2476, line: 76, baseType: !334, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2475, file: !2476, line: 81, baseType: !334, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2475, file: !2476, line: 83, baseType: !334, size: 64, offset: 1024)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2475, file: !2476, line: 84, baseType: !334, size: 64, offset: 1088)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2475, file: !2476, line: 85, baseType: !334, size: 64, offset: 1152)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2475, file: !2476, line: 86, baseType: !334, size: 64, offset: 1216)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2475, file: !2476, line: 87, baseType: !334, size: 64, offset: 1280)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2451, file: !2391, line: 96, baseType: !340, size: 32, offset: 1024)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2396, file: !2391, line: 308, baseType: !2501, size: 4608, align: 512)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2391, line: 289, size: 4608, align: 512, elements: !2502)
!2502 = !{!2503, !2504, !2511}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2501, file: !2391, line: 290, baseType: !2412, size: 4096, align: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2501, file: !2391, line: 291, baseType: !2505, size: 512, offset: 4096)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2391, line: 268, size: 512, elements: !2506)
!2506 = !{!2507, !2508, !2509}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2505, file: !2391, line: 269, baseType: !344, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2505, file: !2391, line: 270, baseType: !344, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2505, file: !2391, line: 271, baseType: !2510, size: 384, offset: 128)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !1858)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2501, file: !2391, line: 292, baseType: !2512, offset: 4608)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !1956)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2396, file: !2391, line: 309, baseType: !2514, size: 32768)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 32768, elements: !2515)
!2515 = !{!2516}
!2516 = !DISubrange(count: 4096)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1449, file: !1053, line: 378, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1445, file: !1053, line: 384, baseType: !1735, size: 192, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1300, file: !1053, line: 500, baseType: !546, offset: 6656)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1300, file: !1053, line: 501, baseType: !2522, size: 64, offset: 6656)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1053, line: 387, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1300, file: !1053, line: 516, baseType: !1946, size: 64, offset: 6720)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1300, file: !1053, line: 519, baseType: !661, size: 64, offset: 6784)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1300, file: !1053, line: 521, baseType: !2527, size: 64, offset: 6848)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1053, line: 521, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1300, file: !1053, line: 545, baseType: !1077, size: 32, offset: 6912)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1300, file: !1053, line: 548, baseType: !470, size: 8, offset: 6944)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1300, file: !1053, line: 550, baseType: !2532, offset: 6952)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2533, line: 142, elements: !560)
!2533 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1300, file: !1053, line: 554, baseType: !479, size: 256, offset: 6976)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1300, file: !1053, line: 557, baseType: !340, size: 32, offset: 7232)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1297, file: !1053, line: 565, baseType: !2537, offset: 7296)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, elements: !2538)
!2538 = !{!2539}
!2539 = !DISubrange(count: -1)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1293, file: !1053, line: 151, baseType: !1077, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1285, file: !1053, line: 156, baseType: !546, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 159, baseType: !2543, size: 128)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 159, size: 128, elements: !2544)
!2544 = !{!2545, !2548}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2543, file: !1053, line: 161, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1053, line: 161, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2543, file: !1053, line: 162, baseType: !332, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1057, file: !1053, line: 176, baseType: !674, size: 128, align: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 179, baseType: !2551, size: 32, offset: 384)
!2551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 179, size: 32, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2551, file: !1053, line: 184, baseType: !1077, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2551, file: !1053, line: 192, baseType: !7, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2551, file: !1053, line: 194, baseType: !7, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2551, file: !1053, line: 195, baseType: !112, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1052, file: !1053, line: 199, baseType: !1077, size: 32, offset: 416)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !945, file: !31, line: 1964, baseType: !2559, size: 64, offset: 1344)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!298, !893, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2564, line: 12, size: 256, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2565 = !{!2566, !2567, !2568, !2569, !2570}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2563, file: !2564, line: 13, baseType: !330, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2563, file: !2564, line: 16, baseType: !112, size: 32, offset: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2563, file: !2564, line: 23, baseType: !334, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2563, file: !2564, line: 30, baseType: !334, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2563, file: !2564, line: 33, baseType: !2571, size: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1053, line: 27, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !945, file: !31, line: 1966, baseType: !2559, size: 64, offset: 1408)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !894, file: !31, line: 1424, baseType: !2575, size: 64, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2577)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2578)
!2578 = !{!2579, !2625, !2629, !2633, !2634, !2635, !2636, !2637, !2642, !2647, !2651}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2577, file: !25, line: 323, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!112, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2610, !2611, !2612}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2584, file: !25, line: 295, baseType: !503, size: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2584, file: !25, line: 296, baseType: !350, size: 128, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2584, file: !25, line: 297, baseType: !350, size: 128, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2584, file: !25, line: 298, baseType: !350, size: 128, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2584, file: !25, line: 299, baseType: !1011, size: 192, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2584, file: !25, line: 300, baseType: !546, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2584, file: !25, line: 301, baseType: !1077, size: 32, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2584, file: !25, line: 302, baseType: !893, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2584, file: !25, line: 303, baseType: !2595, size: 64, offset: 832)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2596)
!2596 = !{!2597, !2609}
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !2595, file: !25, line: 69, baseType: !2598, size: 32)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2595, file: !25, line: 69, size: 32, elements: !2599)
!2599 = !{!2600, !2601, !2602}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2598, file: !25, line: 70, baseType: !736, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2598, file: !25, line: 71, baseType: !744, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2598, file: !25, line: 72, baseType: !2603, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2604, line: 24, baseType: !2605)
!2604 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2604, line: 22, size: 32, elements: !2606)
!2606 = !{!2607}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2605, file: !2604, line: 23, baseType: !2608, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2604, line: 20, baseType: !742)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2595, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2584, file: !25, line: 304, baseType: !827, size: 64, offset: 896)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2584, file: !25, line: 305, baseType: !334, size: 64, offset: 960)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2584, file: !25, line: 306, baseType: !2613, size: 576, offset: 1024)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2614)
!2614 = !{!2615, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2613, file: !25, line: 206, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !490)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2613, file: !25, line: 207, baseType: !2616, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2613, file: !25, line: 208, baseType: !2616, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2613, file: !25, line: 209, baseType: !2616, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2613, file: !25, line: 210, baseType: !2616, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2613, file: !25, line: 211, baseType: !2616, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2613, file: !25, line: 212, baseType: !2616, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2613, file: !25, line: 213, baseType: !834, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2613, file: !25, line: 214, baseType: !834, size: 64, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2577, file: !25, line: 324, baseType: !2626, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!2583, !893, !112}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2577, file: !25, line: 325, baseType: !2630, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !2583}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2577, file: !25, line: 326, baseType: !2580, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2577, file: !25, line: 327, baseType: !2580, size: 64, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2577, file: !25, line: 328, baseType: !2580, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2577, file: !25, line: 329, baseType: !973, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2577, file: !25, line: 332, baseType: !2638, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!2641, !730}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2577, file: !25, line: 333, baseType: !2643, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!112, !730, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2577, file: !25, line: 335, baseType: !2648, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!112, !730, !2641}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2577, file: !25, line: 337, baseType: !2652, size: 64, offset: 640)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!112, !893, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !894, file: !31, line: 1425, baseType: !2657, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2660)
!2660 = !{!2661, !2665, !2666, !2670, !2671, !2672, !2687, !2710, !2714, !2715, !2738}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2659, file: !25, line: 429, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!112, !893, !112, !112, !843}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2659, file: !25, line: 430, baseType: !973, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2659, file: !25, line: 431, baseType: !2667, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!112, !893, !7}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2659, file: !25, line: 432, baseType: !2667, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2659, file: !25, line: 433, baseType: !973, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2659, file: !25, line: 434, baseType: !2673, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!112, !893, !112, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2677, file: !25, line: 416, baseType: !112, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2677, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2677, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2677, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2677, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2677, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2677, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2677, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2659, file: !25, line: 435, baseType: !2688, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!112, !893, !2595, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2692, file: !25, line: 344, baseType: !112, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2692, file: !25, line: 345, baseType: !344, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2692, file: !25, line: 346, baseType: !344, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2692, file: !25, line: 347, baseType: !344, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2692, file: !25, line: 348, baseType: !344, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2692, file: !25, line: 349, baseType: !344, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2692, file: !25, line: 350, baseType: !344, size: 64, offset: 384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2692, file: !25, line: 351, baseType: !488, size: 64, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2692, file: !25, line: 353, baseType: !488, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2692, file: !25, line: 354, baseType: !112, size: 32, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2692, file: !25, line: 355, baseType: !112, size: 32, offset: 608)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2692, file: !25, line: 356, baseType: !344, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2692, file: !25, line: 357, baseType: !344, size: 64, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2692, file: !25, line: 358, baseType: !344, size: 64, offset: 768)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2692, file: !25, line: 359, baseType: !488, size: 64, offset: 832)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2692, file: !25, line: 360, baseType: !112, size: 32, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2659, file: !25, line: 436, baseType: !2711, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!112, !893, !2655, !2691}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2659, file: !25, line: 438, baseType: !2688, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2659, file: !25, line: 439, baseType: !2716, size: 64, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!112, !893, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2720, file: !25, line: 410, baseType: !7, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2720, file: !25, line: 411, baseType: !2724, size: 1344, offset: 64)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 1344, elements: !587)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2737}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2725, file: !25, line: 396, baseType: !7, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2725, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2725, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2725, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2725, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2725, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2725, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2725, file: !25, line: 404, baseType: !346, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2725, file: !25, line: 405, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !331, line: 126, baseType: !344)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2725, file: !25, line: 406, baseType: !2736, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2659, file: !25, line: 440, baseType: !2667, size: 64, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !894, file: !31, line: 1426, baseType: !2740, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !894, file: !31, line: 1427, baseType: !334, size: 64, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !894, file: !31, line: 1428, baseType: !334, size: 64, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !894, file: !31, line: 1429, baseType: !334, size: 64, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !894, file: !31, line: 1430, baseType: !691, size: 64, offset: 832)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !894, file: !31, line: 1431, baseType: !1097, size: 256, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !894, file: !31, line: 1432, baseType: !112, size: 32, offset: 1152)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !894, file: !31, line: 1433, baseType: !1077, size: 32, offset: 1184)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !894, file: !31, line: 1437, baseType: !2751, size: 64, offset: 1216)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !894, file: !31, line: 1449, baseType: !2756, size: 64, offset: 1280)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !707, line: 34, size: 64, elements: !2757)
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2756, file: !707, line: 35, baseType: !710, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !894, file: !31, line: 1450, baseType: !350, size: 128, offset: 1344)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !894, file: !31, line: 1451, baseType: !2761, size: 64, offset: 1472)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !894, file: !31, line: 1452, baseType: !2156, size: 64, offset: 1536)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !894, file: !31, line: 1453, baseType: !2765, size: 64, offset: 1600)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !894, file: !31, line: 1454, baseType: !503, size: 128, offset: 1664)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !894, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !894, file: !31, line: 1456, baseType: !2770, size: 2432, offset: 1856)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2776, !2808}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2770, file: !25, line: 519, baseType: !7, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2770, file: !25, line: 520, baseType: !1097, size: 256, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2770, file: !25, line: 521, baseType: !2775, size: 192, offset: 320)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 192, elements: !587)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2770, file: !25, line: 522, baseType: !2777, size: 1728, offset: 512)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 1728, elements: !587)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2779)
!2779 = !{!2780, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2778, file: !25, line: 223, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2783)
!2783 = !{!2784, !2785, !2798, !2799}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2782, file: !25, line: 444, baseType: !112, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2782, file: !25, line: 445, baseType: !2786, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2788, file: !25, line: 311, baseType: !973, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2788, file: !25, line: 312, baseType: !973, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2788, file: !25, line: 313, baseType: !973, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2788, file: !25, line: 314, baseType: !973, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2788, file: !25, line: 315, baseType: !2580, size: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2788, file: !25, line: 316, baseType: !2580, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2788, file: !25, line: 317, baseType: !2580, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2788, file: !25, line: 318, baseType: !2652, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2782, file: !25, line: 446, baseType: !365, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2782, file: !25, line: 447, baseType: !2781, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2778, file: !25, line: 224, baseType: !112, size: 32, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2778, file: !25, line: 226, baseType: !350, size: 128, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2778, file: !25, line: 227, baseType: !334, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2778, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2778, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2778, file: !25, line: 230, baseType: !2616, size: 64, offset: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2778, file: !25, line: 231, baseType: !2616, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2778, file: !25, line: 232, baseType: !332, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2770, file: !25, line: 523, baseType: !2809, size: 192, offset: 2240)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2786, size: 192, elements: !587)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !894, file: !31, line: 1458, baseType: !2811, size: 2112, offset: 4288)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2812)
!2812 = !{!2813, !2814, !2815}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2811, file: !31, line: 1411, baseType: !112, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2811, file: !31, line: 1412, baseType: !1714, size: 128, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2811, file: !31, line: 1413, baseType: !2816, size: 1920, offset: 192)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2817, size: 1920, elements: !587)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2818, line: 12, size: 640, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2819 = !{!2820, !2828, !2829, !2834, !2835}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2817, file: !2818, line: 13, baseType: !2821, size: 320)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2822, line: 17, size: 320, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2821, file: !2822, line: 18, baseType: !112, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2821, file: !2822, line: 19, baseType: !112, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2821, file: !2822, line: 20, baseType: !1714, size: 128, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2821, file: !2822, line: 22, baseType: !674, size: 128, align: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2817, file: !2818, line: 14, baseType: !420, size: 64, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2817, file: !2818, line: 15, baseType: !2830, size: 64, offset: 384)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2831, line: 16, size: 64, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2830, file: !2831, line: 17, baseType: !1452, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2817, file: !2818, line: 16, baseType: !1714, size: 128, offset: 448)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2817, file: !2818, line: 17, baseType: !1077, size: 32, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !894, file: !31, line: 1465, baseType: !332, size: 64, offset: 6400)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !894, file: !31, line: 1468, baseType: !340, size: 32, offset: 6464)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !894, file: !31, line: 1470, baseType: !834, size: 64, offset: 6528)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !894, file: !31, line: 1471, baseType: !834, size: 64, offset: 6592)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !894, file: !31, line: 1473, baseType: !342, size: 32, offset: 6656)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !894, file: !31, line: 1474, baseType: !2842, size: 64, offset: 6720)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !894, file: !31, line: 1477, baseType: !2845, size: 256, offset: 6784)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 256, elements: !2437)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !894, file: !31, line: 1478, baseType: !2847, size: 128, offset: 7040)
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2848, line: 18, baseType: !2849)
!2848 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2848, line: 16, size: 128, elements: !2850)
!2850 = !{!2851}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2849, file: !2848, line: 17, baseType: !2852, size: 128)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !1968)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !894, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !894, file: !31, line: 1481, baseType: !2855, size: 32, offset: 7200)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !331, line: 150, baseType: !7)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !894, file: !31, line: 1487, baseType: !1011, size: 192, offset: 7232)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !894, file: !31, line: 1493, baseType: !362, size: 64, offset: 7424)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !894, file: !31, line: 1495, baseType: !2859, size: 64, offset: 7488)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !689, line: 135, size: 1024, align: 512, elements: !2862)
!2862 = !{!2863, !2867, !2868, !2875, !2881, !2885, !2889, !2893, !2894, !2898, !2902, !2907, !2911}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2861, file: !689, line: 136, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!112, !691, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2861, file: !689, line: 137, baseType: !2864, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2861, file: !689, line: 138, baseType: !2869, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!112, !2872, !2874}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2861, file: !689, line: 139, baseType: !2876, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!112, !2872, !7, !362, !2879}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2861, file: !689, line: 141, baseType: !2882, size: 64, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!112, !2872}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2861, file: !689, line: 142, baseType: !2886, size: 64, offset: 320)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!112, !691}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2861, file: !689, line: 143, baseType: !2890, size: 64, offset: 384)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !691}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2861, file: !689, line: 144, baseType: !2890, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2861, file: !689, line: 145, baseType: !2895, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !691, !730}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2861, file: !689, line: 146, baseType: !2899, size: 64, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!383, !691, !383, !112}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2861, file: !689, line: 147, baseType: !2903, size: 64, offset: 640)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!687, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2861, file: !689, line: 148, baseType: !2908, size: 64, offset: 704)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!112, !843, !470}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2861, file: !689, line: 149, baseType: !2912, size: 64, offset: 768)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!691, !691, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !894, file: !31, line: 1500, baseType: !112, size: 32, offset: 7552)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !894, file: !31, line: 1502, baseType: !2919, size: 448, offset: 7616)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2564, line: 60, size: 448, elements: !2920)
!2920 = !{!2921, !2926, !2927, !2928, !2929, !2930, !2931}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2919, file: !2564, line: 61, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!334, !2925, !2562}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2919, file: !2564, line: 63, baseType: !2922, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2919, file: !2564, line: 66, baseType: !298, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2919, file: !2564, line: 67, baseType: !112, size: 32, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2919, file: !2564, line: 68, baseType: !7, size: 32, offset: 224)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2919, file: !2564, line: 71, baseType: !350, size: 128, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2919, file: !2564, line: 77, baseType: !2932, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !894, file: !31, line: 1505, baseType: !482, size: 64, offset: 8064)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !894, file: !31, line: 1508, baseType: !482, size: 64, offset: 8128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !894, file: !31, line: 1511, baseType: !112, size: 32, offset: 8192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !894, file: !31, line: 1514, baseType: !1230, size: 32, offset: 8224)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !894, file: !31, line: 1517, baseType: !517, size: 64, offset: 8256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !894, file: !31, line: 1518, baseType: !929, size: 64, offset: 8320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !894, file: !31, line: 1525, baseType: !1946, size: 64, offset: 8384)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !894, file: !31, line: 1532, baseType: !2941, size: 64, offset: 8448)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2942, line: 52, size: 64, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2941, file: !2942, line: 53, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2942, line: 40, size: 256, elements: !2947)
!2947 = !{!2948, !2949, !2954}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2946, file: !2942, line: 42, baseType: !546)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2946, file: !2942, line: 44, baseType: !2950, size: 192)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2942, line: 28, size: 192, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2950, file: !2942, line: 29, baseType: !350, size: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2950, file: !2942, line: 31, baseType: !298, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2946, file: !2942, line: 49, baseType: !298, size: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !894, file: !31, line: 1533, baseType: !2941, size: 64, offset: 8512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !894, file: !31, line: 1534, baseType: !674, size: 128, align: 64, offset: 8576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !894, file: !31, line: 1535, baseType: !479, size: 256, offset: 8704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !894, file: !31, line: 1537, baseType: !1011, size: 192, offset: 8960)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !894, file: !31, line: 1542, baseType: !112, size: 32, offset: 9152)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !894, file: !31, line: 1545, baseType: !546, offset: 9184)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !894, file: !31, line: 1546, baseType: !350, size: 128, offset: 9216)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !894, file: !31, line: 1548, baseType: !546, offset: 9344)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !894, file: !31, line: 1549, baseType: !350, size: 128, offset: 9344)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !731, file: !31, line: 624, baseType: !1064, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !731, file: !31, line: 631, baseType: !334, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !31, line: 639, baseType: !2967, size: 32, offset: 384)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !31, line: 639, size: 32, elements: !2968)
!2968 = !{!2969, !2971}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2967, file: !31, line: 640, baseType: !2970, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2967, file: !31, line: 641, baseType: !7, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !731, file: !31, line: 643, baseType: !809, size: 32, offset: 416)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !731, file: !31, line: 644, baseType: !827, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !731, file: !31, line: 645, baseType: !830, size: 128, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !731, file: !31, line: 646, baseType: !830, size: 128, offset: 640)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !731, file: !31, line: 647, baseType: !830, size: 128, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !731, file: !31, line: 648, baseType: !546, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !731, file: !31, line: 649, baseType: !392, size: 16, offset: 896)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !731, file: !31, line: 650, baseType: !398, size: 8, offset: 912)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !731, file: !31, line: 651, baseType: !398, size: 8, offset: 920)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !731, file: !31, line: 652, baseType: !2736, size: 64, offset: 960)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !731, file: !31, line: 659, baseType: !334, size: 64, offset: 1024)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !731, file: !31, line: 660, baseType: !1097, size: 256, offset: 1088)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !731, file: !31, line: 662, baseType: !334, size: 64, offset: 1344)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !731, file: !31, line: 663, baseType: !334, size: 64, offset: 1408)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !731, file: !31, line: 665, baseType: !503, size: 128, offset: 1472)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !731, file: !31, line: 666, baseType: !350, size: 128, offset: 1600)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !731, file: !31, line: 675, baseType: !350, size: 128, offset: 1728)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !731, file: !31, line: 676, baseType: !350, size: 128, offset: 1856)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !731, file: !31, line: 677, baseType: !350, size: 128, offset: 1984)
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !31, line: 678, baseType: !2992, size: 128, offset: 2112)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !31, line: 678, size: 128, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2992, file: !31, line: 679, baseType: !929, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2992, file: !31, line: 680, baseType: !674, size: 128, align: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !731, file: !31, line: 682, baseType: !484, size: 64, offset: 2240)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !731, file: !31, line: 683, baseType: !484, size: 64, offset: 2304)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !731, file: !31, line: 684, baseType: !1077, size: 32, offset: 2368)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !731, file: !31, line: 685, baseType: !1077, size: 32, offset: 2400)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !731, file: !31, line: 686, baseType: !1077, size: 32, offset: 2432)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !731, file: !31, line: 688, baseType: !1077, size: 32, offset: 2464)
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !31, line: 690, baseType: !3003, size: 64, offset: 2496)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !31, line: 690, size: 64, elements: !3004)
!3004 = !{!3005, !3227}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3003, file: !31, line: 691, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !3009)
!3009 = !{!3010, !3011, !3015, !3019, !3023, !3024, !3025, !3029, !3042, !3043, !3051, !3055, !3056, !3060, !3061, !3065, !3070, !3071, !3075, !3079, !3187, !3191, !3192, !3196, !3197, !3201, !3205, !3210, !3214, !3218, !3222, !3226}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3008, file: !31, line: 1823, baseType: !365, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3008, file: !31, line: 1824, baseType: !3012, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!827, !661, !827, !112}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3008, file: !31, line: 1825, baseType: !3016, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!617, !661, !383, !631, !1026}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3008, file: !31, line: 1826, baseType: !3020, size: 64, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!617, !661, !362, !631, !1026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3008, file: !31, line: 1827, baseType: !1167, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3008, file: !31, line: 1828, baseType: !1167, size: 64, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3008, file: !31, line: 1829, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!112, !1170, !470}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3008, file: !31, line: 1830, baseType: !3030, size: 64, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!112, !661, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !3035)
!3035 = !{!3036, !3041}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3034, file: !31, line: 1777, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !3038)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!112, !3033, !362, !112, !827, !344, !7}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3034, file: !31, line: 1778, baseType: !827, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3008, file: !31, line: 1831, baseType: !3030, size: 64, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3008, file: !31, line: 1832, baseType: !3044, size: 64, offset: 576)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!3047, !661, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3048, line: 52, baseType: !7)
!3048 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !913, line: 27, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3008, file: !31, line: 1833, baseType: !3052, size: 64, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!298, !661, !7, !334}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3008, file: !31, line: 1834, baseType: !3052, size: 64, offset: 704)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3008, file: !31, line: 1835, baseType: !3057, size: 64, offset: 768)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!112, !661, !1303}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3008, file: !31, line: 1836, baseType: !334, size: 64, offset: 832)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3008, file: !31, line: 1837, baseType: !3062, size: 64, offset: 896)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!112, !730, !661}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3008, file: !31, line: 1838, baseType: !3066, size: 64, offset: 960)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!112, !661, !3069}
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !332)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3008, file: !31, line: 1839, baseType: !3062, size: 64, offset: 1024)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3008, file: !31, line: 1840, baseType: !3072, size: 64, offset: 1088)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!112, !661, !827, !827, !112}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3008, file: !31, line: 1841, baseType: !3076, size: 64, offset: 1152)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!112, !112, !661, !112}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3008, file: !31, line: 1842, baseType: !3080, size: 64, offset: 1216)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!112, !661, !112, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3117, !3118, !3119, !3132, !3163}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3084, file: !31, line: 1063, baseType: !3083, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3084, file: !31, line: 1064, baseType: !350, size: 128, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3084, file: !31, line: 1065, baseType: !503, size: 128, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3084, file: !31, line: 1066, baseType: !350, size: 128, offset: 320)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3084, file: !31, line: 1069, baseType: !350, size: 128, offset: 448)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3084, file: !31, line: 1072, baseType: !3069, size: 64, offset: 576)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3084, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3084, file: !31, line: 1074, baseType: !400, size: 8, offset: 672)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3084, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3084, file: !31, line: 1076, baseType: !112, size: 32, offset: 736)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3084, file: !31, line: 1077, baseType: !1714, size: 128, offset: 768)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3084, file: !31, line: 1078, baseType: !661, size: 64, offset: 896)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3084, file: !31, line: 1079, baseType: !827, size: 64, offset: 960)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3084, file: !31, line: 1080, baseType: !827, size: 64, offset: 1024)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3084, file: !31, line: 1082, baseType: !3101, size: 64, offset: 1088)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !3103)
!3103 = !{!3104, !3112, !3113, !3114, !3115, !3116}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3102, file: !31, line: 1315, baseType: !3105)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3106, line: 20, baseType: !3107)
!3106 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3106, line: 11, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3107, file: !3106, line: 12, baseType: !3110)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !558, line: 33, baseType: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 31, elements: !560)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3102, file: !31, line: 1316, baseType: !112, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3102, file: !31, line: 1317, baseType: !112, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3102, file: !31, line: 1318, baseType: !3101, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3102, file: !31, line: 1319, baseType: !661, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3102, file: !31, line: 1320, baseType: !674, size: 128, align: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3084, file: !31, line: 1084, baseType: !334, size: 64, offset: 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3084, file: !31, line: 1085, baseType: !334, size: 64, offset: 1216)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3084, file: !31, line: 1087, baseType: !3120, size: 64, offset: 1280)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !3123)
!3123 = !{!3124, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3122, file: !31, line: 1012, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !3083, !3083}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3122, file: !31, line: 1013, baseType: !3129, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3083}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3084, file: !31, line: 1088, baseType: !3133, size: 64, offset: 1344)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !3136)
!3136 = !{!3137, !3141, !3145, !3146, !3150, !3154, !3158, !3162}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3135, file: !31, line: 1017, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!3069, !3069}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3135, file: !31, line: 1018, baseType: !3142, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !3069}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3135, file: !31, line: 1019, baseType: !3129, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3135, file: !31, line: 1020, baseType: !3147, size: 64, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!112, !3083, !112}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3135, file: !31, line: 1021, baseType: !3151, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!470, !3083}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3135, file: !31, line: 1022, baseType: !3155, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!112, !3083, !112, !349}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3135, file: !31, line: 1023, baseType: !3159, size: 64, offset: 384)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3083, !1144}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3135, file: !31, line: 1024, baseType: !3151, size: 64, offset: 448)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3084, file: !31, line: 1097, baseType: !3164, size: 256, offset: 1408)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3084, file: !31, line: 1089, size: 256, elements: !3165)
!3165 = !{!3166, !3175, !3181}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3164, file: !31, line: 1090, baseType: !3167, size: 256)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3168, line: 10, size: 256, elements: !3169)
!3168 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3169 = !{!3170, !3171, !3174}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3167, file: !3168, line: 11, baseType: !340, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3167, file: !3168, line: 12, baseType: !3172, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3168, line: 5, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3167, file: !3168, line: 13, baseType: !350, size: 128, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3164, file: !31, line: 1091, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3168, line: 17, size: 64, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3176, file: !3168, line: 18, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3168, line: 16, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3164, file: !31, line: 1096, baseType: !3182, size: 192)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !31, line: 1092, size: 192, elements: !3183)
!3183 = !{!3184, !3185, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3182, file: !31, line: 1093, baseType: !350, size: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3182, file: !31, line: 1094, baseType: !112, size: 32, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3182, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3008, file: !31, line: 1843, baseType: !3188, size: 64, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!617, !661, !1051, !112, !631, !1026, !112}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3008, file: !31, line: 1844, baseType: !1343, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3008, file: !31, line: 1845, baseType: !3193, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!112, !112}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3008, file: !31, line: 1846, baseType: !3080, size: 64, offset: 1472)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3008, file: !31, line: 1847, baseType: !3198, size: 64, offset: 1536)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!617, !2320, !661, !1026, !631, !7}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3008, file: !31, line: 1848, baseType: !3202, size: 64, offset: 1600)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!617, !661, !1026, !2320, !631, !7}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3008, file: !31, line: 1849, baseType: !3206, size: 64, offset: 1664)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!112, !661, !298, !3209, !1144}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3008, file: !31, line: 1850, baseType: !3211, size: 64, offset: 1728)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!298, !661, !112, !827, !827}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3008, file: !31, line: 1852, baseType: !3215, size: 64, offset: 1792)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !999, !661}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3008, file: !31, line: 1856, baseType: !3219, size: 64, offset: 1856)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!617, !661, !827, !661, !827, !631, !7}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3008, file: !31, line: 1858, baseType: !3223, size: 64, offset: 1920)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!827, !661, !827, !661, !827, !827, !7}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3008, file: !31, line: 1861, baseType: !3072, size: 64, offset: 1984)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3003, file: !31, line: 692, baseType: !952, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !731, file: !31, line: 694, baseType: !3229, size: 64, offset: 2560)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3230, file: !31, line: 1101, baseType: !546)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3230, file: !31, line: 1102, baseType: !350, size: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3230, file: !31, line: 1103, baseType: !350, size: 128, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3230, file: !31, line: 1104, baseType: !350, size: 128, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !731, file: !31, line: 695, baseType: !1065, size: 1216, align: 64, offset: 2624)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !731, file: !31, line: 696, baseType: !350, size: 128, offset: 3840)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !31, line: 697, baseType: !3239, size: 64, offset: 3968)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !31, line: 697, size: 64, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3246, !3247}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3239, file: !31, line: 698, baseType: !2320, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3239, file: !31, line: 699, baseType: !2761, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3239, file: !31, line: 700, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3239, file: !31, line: 701, baseType: !383, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3239, file: !31, line: 702, baseType: !7, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !731, file: !31, line: 705, baseType: !342, size: 32, offset: 4032)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !731, file: !31, line: 708, baseType: !342, size: 32, offset: 4064)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !731, file: !31, line: 709, baseType: !2842, size: 64, offset: 4096)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !731, file: !31, line: 720, baseType: !332, size: 64, offset: 4160)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !692, file: !689, line: 98, baseType: !3253, size: 256, offset: 448)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 256, elements: !2437)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !692, file: !689, line: 101, baseType: !3255, size: 32, offset: 704)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3256, line: 25, size: 32, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3257 = !{!3258}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !3256, line: 26, baseType: !3259, size: 32)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3255, file: !3256, line: 26, size: 32, elements: !3260)
!3260 = !{!3261}
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !3256, line: 30, baseType: !3262, size: 32)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3259, file: !3256, line: 30, size: 32, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3262, file: !3256, line: 31, baseType: !546)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3262, file: !3256, line: 32, baseType: !112, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !692, file: !689, line: 102, baseType: !2859, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !692, file: !689, line: 103, baseType: !893, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !692, file: !689, line: 104, baseType: !334, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !692, file: !689, line: 105, baseType: !332, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !689, line: 107, baseType: !3271, size: 128, offset: 1024)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !689, line: 107, size: 128, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3271, file: !689, line: 108, baseType: !350, size: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3271, file: !689, line: 109, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !692, file: !689, line: 111, baseType: !350, size: 128, offset: 1152)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !692, file: !689, line: 112, baseType: !350, size: 128, offset: 1280)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !692, file: !689, line: 120, baseType: !3279, size: 128, offset: 1408)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !689, line: 116, size: 128, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3279, file: !689, line: 117, baseType: !503, size: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3279, file: !689, line: 118, baseType: !706, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3279, file: !689, line: 119, baseType: !674, size: 128, align: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !662, file: !31, line: 922, baseType: !730, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !662, file: !31, line: 923, baseType: !3006, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !662, file: !31, line: 929, baseType: !546, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !662, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !662, file: !31, line: 931, baseType: !482, size: 64, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !662, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !662, file: !31, line: 933, baseType: !2855, size: 32, offset: 544)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !662, file: !31, line: 934, baseType: !1011, size: 192, offset: 576)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !662, file: !31, line: 935, baseType: !827, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !662, file: !31, line: 936, baseType: !3294, size: 192, offset: 832)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3294, file: !31, line: 886, baseType: !3105)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3294, file: !31, line: 887, baseType: !1704, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3294, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3294, file: !31, line: 889, baseType: !736, size: 32, offset: 96)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3294, file: !31, line: 889, baseType: !736, size: 32, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3294, file: !31, line: 890, baseType: !112, size: 32, offset: 160)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !662, file: !31, line: 937, baseType: !1780, size: 64, offset: 1024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !662, file: !31, line: 938, baseType: !3304, size: 256, offset: 1088)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3305)
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3304, file: !31, line: 897, baseType: !334, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3304, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3304, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3304, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3304, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3304, file: !31, line: 904, baseType: !827, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !662, file: !31, line: 940, baseType: !344, size: 64, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !662, file: !31, line: 945, baseType: !332, size: 64, offset: 1408)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !662, file: !31, line: 949, baseType: !350, size: 128, offset: 1472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !662, file: !31, line: 950, baseType: !350, size: 128, offset: 1600)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !662, file: !31, line: 952, baseType: !1064, size: 64, offset: 1728)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !662, file: !31, line: 953, baseType: !1230, size: 32, offset: 1792)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !662, file: !31, line: 954, baseType: !1230, size: 32, offset: 1824)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !652, file: !611, line: 174, baseType: !658, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !652, file: !611, line: 176, baseType: !3321, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!112, !661, !539, !651, !1303}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !640, file: !611, line: 90, baseType: !635, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !640, file: !611, line: 91, baseType: !3326, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !601, file: !534, line: 143, baseType: !3328, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!3331, !539}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3333)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3334)
!3334 = !{!3335, !3336, !3340, !3344, !3352, !3356}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3333, file: !48, line: 40, baseType: !47, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3333, file: !48, line: 41, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!470}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3333, file: !48, line: 42, baseType: !3341, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!332}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3333, file: !48, line: 43, baseType: !3345, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!3348, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3333, file: !48, line: 44, baseType: !3353, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!3348}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3333, file: !48, line: 45, baseType: !385, size: 64, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !601, file: !534, line: 144, baseType: !3358, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3348, !539}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !601, file: !534, line: 145, baseType: !3362, size: 64, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !539, !3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !533, file: !534, line: 70, baseType: !3368, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !913, line: 123, size: 1024, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3487, !3488, !3489, !3490, !3491}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3369, file: !913, line: 124, baseType: !1077, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3369, file: !913, line: 125, baseType: !1077, size: 32, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3369, file: !913, line: 135, baseType: !3368, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3369, file: !913, line: 136, baseType: !362, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3369, file: !913, line: 138, baseType: !1090, size: 192, align: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3369, file: !913, line: 140, baseType: !3348, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3369, file: !913, line: 141, baseType: !7, size: 32, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !913, line: 142, baseType: !3379, size: 256, offset: 512)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3369, file: !913, line: 142, size: 256, elements: !3380)
!3380 = !{!3381, !3427, !3431}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3379, file: !913, line: 143, baseType: !3382, size: 192)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !913, line: 91, size: 192, elements: !3383)
!3383 = !{!3384, !3385, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3382, file: !913, line: 92, baseType: !334, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3382, file: !913, line: 94, baseType: !1086, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3382, file: !913, line: 100, baseType: !3387, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !913, line: 180, size: 704, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3399, !3400, !3401, !3425, !3426}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3388, file: !913, line: 182, baseType: !3368, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3388, file: !913, line: 183, baseType: !7, size: 32, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3388, file: !913, line: 186, baseType: !3393, size: 192, offset: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3394, line: 19, size: 192, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3393, file: !3394, line: 20, baseType: !1069, size: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3393, file: !3394, line: 21, baseType: !7, size: 32, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3393, file: !3394, line: 22, baseType: !7, size: 32, offset: 160)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3388, file: !913, line: 187, baseType: !340, size: 32, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3388, file: !913, line: 188, baseType: !340, size: 32, offset: 352)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3388, file: !913, line: 189, baseType: !3402, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !913, line: 168, size: 320, elements: !3404)
!3404 = !{!3405, !3409, !3413, !3417, !3421}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3403, file: !913, line: 169, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!112, !999, !3387}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3403, file: !913, line: 171, baseType: !3410, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!112, !3368, !362, !626}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3403, file: !913, line: 173, baseType: !3414, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!112, !3368}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3403, file: !913, line: 174, baseType: !3418, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!112, !3368, !3368, !362}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3403, file: !913, line: 176, baseType: !3422, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!112, !999, !3368, !3387}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3388, file: !913, line: 192, baseType: !350, size: 128, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3388, file: !913, line: 194, baseType: !1714, size: 128, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3379, file: !913, line: 144, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !913, line: 103, size: 64, elements: !3429)
!3429 = !{!3430}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3428, file: !913, line: 104, baseType: !3368, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3379, file: !913, line: 145, baseType: !3432, size: 256)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !913, line: 107, size: 256, elements: !3433)
!3433 = !{!3434, !3482, !3485, !3486}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3432, file: !913, line: 108, baseType: !3435, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3437)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !913, line: 217, size: 768, elements: !3438)
!3438 = !{!3439, !3459, !3463, !3464, !3465, !3466, !3467, !3471, !3472, !3473, !3474, !3478}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3437, file: !913, line: 222, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!112, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !913, line: 197, size: 1088, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3444, file: !913, line: 199, baseType: !3368, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3444, file: !913, line: 200, baseType: !661, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3444, file: !913, line: 201, baseType: !999, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3444, file: !913, line: 202, baseType: !332, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3444, file: !913, line: 205, baseType: !1011, size: 192, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3444, file: !913, line: 206, baseType: !1011, size: 192, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3444, file: !913, line: 207, baseType: !112, size: 32, offset: 640)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3444, file: !913, line: 208, baseType: !350, size: 128, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3444, file: !913, line: 209, baseType: !383, size: 64, offset: 832)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3444, file: !913, line: 211, baseType: !631, size: 64, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3444, file: !913, line: 212, baseType: !470, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3444, file: !913, line: 213, baseType: !470, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3444, file: !913, line: 214, baseType: !1331, size: 64, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3437, file: !913, line: 223, baseType: !3460, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3443}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3437, file: !913, line: 236, baseType: !1036, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3437, file: !913, line: 238, baseType: !1023, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3437, file: !913, line: 239, baseType: !1032, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3437, file: !913, line: 240, baseType: !1028, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3437, file: !913, line: 242, baseType: !3468, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!617, !3443, !383, !631, !827}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3437, file: !913, line: 252, baseType: !631, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3437, file: !913, line: 259, baseType: !470, size: 8, offset: 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3437, file: !913, line: 260, baseType: !3468, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3437, file: !913, line: 263, baseType: !3475, size: 64, offset: 640)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!3047, !3443, !3049}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3437, file: !913, line: 266, baseType: !3479, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!112, !3443, !1303}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3432, file: !913, line: 109, baseType: !3483, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !913, line: 31, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3432, file: !913, line: 110, baseType: !827, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3432, file: !913, line: 111, baseType: !3368, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3369, file: !913, line: 148, baseType: !332, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3369, file: !913, line: 154, baseType: !344, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3369, file: !913, line: 156, baseType: !392, size: 16, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3369, file: !913, line: 157, baseType: !626, size: 16, offset: 912)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3369, file: !913, line: 158, baseType: !3492, size: 64, offset: 960)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !913, line: 32, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !533, file: !534, line: 71, baseType: !3495, size: 32, offset: 448)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3496, line: 19, size: 32, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3495, file: !3496, line: 20, baseType: !1465, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !533, file: !534, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !533, file: !534, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !533, file: !534, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !533, file: !534, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !533, file: !534, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !530, file: !60, line: 463, baseType: !3505, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !530, file: !60, line: 465, baseType: !3507, size: 64, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !530, file: !60, line: 467, baseType: !362, size: 64, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !60, line: 468, baseType: !3511, size: 64, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3521, !3526, !3530}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3513, file: !60, line: 88, baseType: !362, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3513, file: !60, line: 89, baseType: !637, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3513, file: !60, line: 90, baseType: !3518, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!112, !3505, !582}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3513, file: !60, line: 91, baseType: !3522, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!383, !3505, !3525, !3365, !3366}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3513, file: !60, line: 93, baseType: !3527, size: 64, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !3505}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3513, file: !60, line: 95, baseType: !3531, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3533)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3534)
!3534 = !{!3535, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3533, file: !67, line: 279, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!112, !3505}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3533, file: !67, line: 280, baseType: !3527, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3533, file: !67, line: 281, baseType: !3536, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3533, file: !67, line: 282, baseType: !3536, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3533, file: !67, line: 283, baseType: !3536, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3533, file: !67, line: 284, baseType: !3536, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3533, file: !67, line: 285, baseType: !3536, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3533, file: !67, line: 286, baseType: !3536, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3533, file: !67, line: 287, baseType: !3536, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3533, file: !67, line: 288, baseType: !3536, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3533, file: !67, line: 289, baseType: !3536, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3533, file: !67, line: 290, baseType: !3536, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3533, file: !67, line: 291, baseType: !3536, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3533, file: !67, line: 292, baseType: !3536, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3533, file: !67, line: 293, baseType: !3536, size: 64, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3533, file: !67, line: 294, baseType: !3536, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3533, file: !67, line: 295, baseType: !3536, size: 64, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3533, file: !67, line: 296, baseType: !3536, size: 64, offset: 1088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3533, file: !67, line: 297, baseType: !3536, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3533, file: !67, line: 298, baseType: !3536, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3533, file: !67, line: 299, baseType: !3536, size: 64, offset: 1280)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3533, file: !67, line: 300, baseType: !3536, size: 64, offset: 1344)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3533, file: !67, line: 301, baseType: !3536, size: 64, offset: 1408)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !530, file: !60, line: 470, baseType: !3562, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3564, line: 82, size: 1408, elements: !3565)
!3564 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3647, !3650, !3651}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3563, file: !3564, line: 83, baseType: !362, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3563, file: !3564, line: 84, baseType: !362, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3563, file: !3564, line: 85, baseType: !3505, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3563, file: !3564, line: 86, baseType: !637, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3563, file: !3564, line: 87, baseType: !637, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3563, file: !3564, line: 88, baseType: !637, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3563, file: !3564, line: 90, baseType: !3573, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!112, !3505, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3598, !3611, !3612, !3613, !3614, !3615, !3623, !3624, !3625, !3626, !3627, !3628}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3577, file: !54, line: 96, baseType: !362, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3577, file: !54, line: 97, baseType: !3562, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3577, file: !54, line: 99, baseType: !365, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3577, file: !54, line: 100, baseType: !362, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3577, file: !54, line: 102, baseType: !470, size: 8, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3577, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3577, file: !54, line: 105, baseType: !3586, size: 64, offset: 320)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3589, line: 262, size: 1600, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3590 = !{!3591, !3592, !3593, !3597}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3588, file: !3589, line: 263, baseType: !2845, size: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3588, file: !3589, line: 264, baseType: !2845, size: 256, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3588, file: !3589, line: 265, baseType: !3594, size: 1024, offset: 512)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1024, elements: !3595)
!3595 = !{!3596}
!3596 = !DISubrange(count: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3588, file: !3589, line: 266, baseType: !3348, size: 64, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3577, file: !54, line: 106, baseType: !3599, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3601)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3589, line: 210, size: 256, elements: !3602)
!3602 = !{!3603, !3607, !3609, !3610}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3601, file: !3589, line: 211, baseType: !3604, size: 72)
!3604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 72, elements: !3605)
!3605 = !{!3606}
!3606 = !DISubrange(count: 9)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3601, file: !3589, line: 212, baseType: !3608, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3589, line: 14, baseType: !334)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3601, file: !3589, line: 213, baseType: !342, size: 32, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3601, file: !3589, line: 214, baseType: !342, size: 32, offset: 224)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3577, file: !54, line: 108, baseType: !3536, size: 64, offset: 448)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3577, file: !54, line: 109, baseType: !3527, size: 64, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3577, file: !54, line: 110, baseType: !3536, size: 64, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3577, file: !54, line: 111, baseType: !3527, size: 64, offset: 640)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3577, file: !54, line: 112, baseType: !3616, size: 64, offset: 704)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!112, !3505, !3619}
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3621)
!3621 = !{!3622}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3620, file: !67, line: 51, baseType: !112, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3577, file: !54, line: 113, baseType: !3536, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3577, file: !54, line: 114, baseType: !637, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3577, file: !54, line: 115, baseType: !637, size: 64, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3577, file: !54, line: 117, baseType: !3531, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3577, file: !54, line: 118, baseType: !3527, size: 64, offset: 1024)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3577, file: !54, line: 120, baseType: !3629, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3563, file: !3564, line: 91, baseType: !3518, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3563, file: !3564, line: 92, baseType: !3536, size: 64, offset: 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3563, file: !3564, line: 93, baseType: !3527, size: 64, offset: 576)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3563, file: !3564, line: 94, baseType: !3536, size: 64, offset: 640)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3563, file: !3564, line: 95, baseType: !3527, size: 64, offset: 704)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3563, file: !3564, line: 97, baseType: !3536, size: 64, offset: 768)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3563, file: !3564, line: 98, baseType: !3536, size: 64, offset: 832)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3563, file: !3564, line: 100, baseType: !3616, size: 64, offset: 896)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3563, file: !3564, line: 101, baseType: !3536, size: 64, offset: 960)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3563, file: !3564, line: 103, baseType: !3536, size: 64, offset: 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3563, file: !3564, line: 105, baseType: !3536, size: 64, offset: 1088)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3563, file: !3564, line: 107, baseType: !3531, size: 64, offset: 1152)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3563, file: !3564, line: 109, baseType: !3644, size: 64, offset: 1216)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3646)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3564, line: 109, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3563, file: !3564, line: 111, baseType: !3648, size: 64, offset: 1280)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3564, line: 111, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3563, file: !3564, line: 112, baseType: !933, offset: 1344)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3563, file: !3564, line: 114, baseType: !470, size: 8, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !530, file: !60, line: 471, baseType: !3576, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !530, file: !60, line: 473, baseType: !332, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !530, file: !60, line: 475, baseType: !332, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !530, file: !60, line: 480, baseType: !1011, size: 192, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !530, file: !60, line: 484, baseType: !3657, size: 576, offset: 1216)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3657, file: !60, line: 362, baseType: !350, size: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3657, file: !60, line: 363, baseType: !350, size: 128, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3657, file: !60, line: 364, baseType: !350, size: 128, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3657, file: !60, line: 365, baseType: !350, size: 128, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3657, file: !60, line: 366, baseType: !470, size: 8, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3657, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !530, file: !60, line: 485, baseType: !3666, size: 2304, offset: 1792)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3752, !3756}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3666, file: !67, line: 566, baseType: !3619, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3666, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3666, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3666, file: !67, line: 569, baseType: !470, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3666, file: !67, line: 570, baseType: !470, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3666, file: !67, line: 571, baseType: !470, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3666, file: !67, line: 572, baseType: !470, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3666, file: !67, line: 573, baseType: !470, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3666, file: !67, line: 574, baseType: !470, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3666, file: !67, line: 575, baseType: !470, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3666, file: !67, line: 576, baseType: !470, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3666, file: !67, line: 577, baseType: !340, size: 32, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3666, file: !67, line: 578, baseType: !546, offset: 96)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3666, file: !67, line: 580, baseType: !350, size: 128, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3666, file: !67, line: 581, baseType: !1735, size: 192, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3666, file: !67, line: 582, baseType: !3684, size: 64, offset: 448)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3686, line: 43, size: 1472, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3685, file: !3686, line: 44, baseType: !362, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3685, file: !3686, line: 45, baseType: !112, size: 32, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3685, file: !3686, line: 46, baseType: !350, size: 128, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3685, file: !3686, line: 47, baseType: !546, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3685, file: !3686, line: 48, baseType: !3693, size: 64, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3685, file: !3686, line: 49, baseType: !499, size: 320, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3685, file: !3686, line: 50, baseType: !334, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3685, file: !3686, line: 51, baseType: !1535, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3685, file: !3686, line: 52, baseType: !1535, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3685, file: !3686, line: 53, baseType: !1535, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3685, file: !3686, line: 54, baseType: !1535, size: 64, offset: 896)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3685, file: !3686, line: 55, baseType: !1535, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3685, file: !3686, line: 56, baseType: !334, size: 64, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3685, file: !3686, line: 57, baseType: !334, size: 64, offset: 1088)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3685, file: !3686, line: 58, baseType: !334, size: 64, offset: 1152)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3685, file: !3686, line: 59, baseType: !334, size: 64, offset: 1216)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3685, file: !3686, line: 60, baseType: !334, size: 64, offset: 1280)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3685, file: !3686, line: 61, baseType: !3505, size: 64, offset: 1344)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3685, file: !3686, line: 62, baseType: !470, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3685, file: !3686, line: 63, baseType: !470, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3666, file: !67, line: 583, baseType: !470, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3666, file: !67, line: 584, baseType: !470, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3666, file: !67, line: 585, baseType: !470, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3666, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3666, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3666, file: !67, line: 592, baseType: !1527, size: 512, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3666, file: !67, line: 593, baseType: !344, size: 64, offset: 1088)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3666, file: !67, line: 594, baseType: !479, size: 256, offset: 1152)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3666, file: !67, line: 595, baseType: !1714, size: 128, offset: 1408)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3666, file: !67, line: 596, baseType: !3693, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3666, file: !67, line: 597, baseType: !1077, size: 32, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3666, file: !67, line: 598, baseType: !1077, size: 32, offset: 1632)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3666, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3666, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3666, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3666, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3666, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3666, file: !67, line: 604, baseType: !470, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3666, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3666, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3666, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3666, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3666, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3666, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3666, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3666, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3666, file: !67, line: 613, baseType: !112, size: 32, offset: 1792)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3666, file: !67, line: 614, baseType: !112, size: 32, offset: 1824)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3666, file: !67, line: 615, baseType: !344, size: 64, offset: 1856)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3666, file: !67, line: 616, baseType: !344, size: 64, offset: 1920)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3666, file: !67, line: 617, baseType: !344, size: 64, offset: 1984)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3666, file: !67, line: 618, baseType: !344, size: 64, offset: 2048)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3666, file: !67, line: 620, baseType: !3743, size: 64, offset: 2112)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3744, file: !67, line: 537, baseType: !546)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3744, file: !67, line: 538, baseType: !7, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3744, file: !67, line: 540, baseType: !350, size: 128, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3744, file: !67, line: 543, baseType: !3750, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3666, file: !67, line: 621, baseType: !3753, size: 64, offset: 2176)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3505, !1677}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3666, file: !67, line: 622, baseType: !3757, size: 64, offset: 2240)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !530, file: !60, line: 486, baseType: !3760, size: 64, offset: 4096)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3769, !3770, !3771}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3761, file: !67, line: 643, baseType: !3533, size: 1472)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3761, file: !67, line: 644, baseType: !3536, size: 64, offset: 1472)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3761, file: !67, line: 645, baseType: !3766, size: 64, offset: 1536)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3505, !470}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3761, file: !67, line: 646, baseType: !3536, size: 64, offset: 1600)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3761, file: !67, line: 647, baseType: !3527, size: 64, offset: 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3761, file: !67, line: 648, baseType: !3527, size: 64, offset: 1728)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !530, file: !60, line: 493, baseType: !3773, size: 64, offset: 4160)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !530, file: !60, line: 499, baseType: !350, size: 128, offset: 4224)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !530, file: !60, line: 502, baseType: !3777, size: 64, offset: 4352)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !530, file: !60, line: 504, baseType: !3781, size: 64, offset: 4416)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !530, file: !60, line: 505, baseType: !344, size: 64, offset: 4480)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !530, file: !60, line: 510, baseType: !344, size: 64, offset: 4544)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !530, file: !60, line: 511, baseType: !3785, size: 64, offset: 4608)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3787)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !530, file: !60, line: 513, baseType: !3789, size: 64, offset: 4672)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3791)
!3791 = !{!3792, !3793}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3790, file: !60, line: 293, baseType: !7, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3790, file: !60, line: 294, baseType: !334, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !530, file: !60, line: 515, baseType: !350, size: 128, offset: 4736)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !530, file: !60, line: 526, baseType: !3796, offset: 4864)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3797, line: 5, elements: !560)
!3797 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !530, file: !60, line: 528, baseType: !3799, size: 64, offset: 4864)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3801, line: 51, size: 1344, elements: !3802)
!3801 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3802 = !{!3803, !3804, !3806, !3807, !3897, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3800, file: !3801, line: 52, baseType: !362, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3800, file: !3801, line: 53, baseType: !3805, size: 32, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3801, line: 28, baseType: !340)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3800, file: !3801, line: 54, baseType: !362, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3800, file: !3801, line: 55, baseType: !3808, size: 192, offset: 192)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3809, line: 17, size: 192, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3810 = !{!3811, !3813, !3896}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3808, file: !3809, line: 18, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3808, file: !3809, line: 19, baseType: !3814, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3809, line: 110, size: 1152, elements: !3817)
!3817 = !{!3818, !3822, !3826, !3832, !3838, !3842, !3846, !3851, !3855, !3856, !3860, !3864, !3868, !3879, !3880, !3881, !3882, !3892}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3816, file: !3809, line: 111, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!3812, !3812}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3816, file: !3809, line: 112, baseType: !3823, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3812}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3816, file: !3809, line: 113, baseType: !3827, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!470, !3830}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3808)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3816, file: !3809, line: 114, baseType: !3833, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!3348, !3830, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3816, file: !3809, line: 116, baseType: !3839, size: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!470, !3830, !362}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3816, file: !3809, line: 118, baseType: !3843, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!112, !3830, !362, !7, !332, !631}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3816, file: !3809, line: 123, baseType: !3847, size: 64, offset: 384)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!112, !3830, !362, !3850, !631}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3816, file: !3809, line: 126, baseType: !3852, size: 64, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!362, !3830}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3816, file: !3809, line: 127, baseType: !3852, size: 64, offset: 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3816, file: !3809, line: 128, baseType: !3857, size: 64, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!3812, !3830}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3816, file: !3809, line: 130, baseType: !3861, size: 64, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!3812, !3830, !3812}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3816, file: !3809, line: 133, baseType: !3865, size: 64, offset: 704)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!3812, !3830, !362}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3816, file: !3809, line: 135, baseType: !3869, size: 64, offset: 768)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!112, !3830, !362, !362, !7, !7, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3809, line: 43, size: 640, elements: !3874)
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3873, file: !3809, line: 44, baseType: !3812, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3873, file: !3809, line: 45, baseType: !7, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3873, file: !3809, line: 46, baseType: !3878, size: 512, offset: 128)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 512, elements: !1565)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3816, file: !3809, line: 140, baseType: !3861, size: 64, offset: 832)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3816, file: !3809, line: 143, baseType: !3857, size: 64, offset: 896)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3816, file: !3809, line: 145, baseType: !3819, size: 64, offset: 960)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3816, file: !3809, line: 146, baseType: !3883, size: 64, offset: 1024)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!112, !3830, !3886}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3809, line: 29, size: 128, elements: !3888)
!3888 = !{!3889, !3890, !3891}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3887, file: !3809, line: 30, baseType: !7, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3887, file: !3809, line: 31, baseType: !7, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3887, file: !3809, line: 32, baseType: !3830, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3816, file: !3809, line: 148, baseType: !3893, size: 64, offset: 1088)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!112, !3830, !3505}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3808, file: !3809, line: 20, baseType: !3505, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3800, file: !3801, line: 57, baseType: !3898, size: 64, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3801, line: 31, size: 704, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3899, file: !3801, line: 32, baseType: !383, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3899, file: !3801, line: 33, baseType: !112, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3899, file: !3801, line: 34, baseType: !332, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3899, file: !3801, line: 35, baseType: !3898, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3899, file: !3801, line: 43, baseType: !652, size: 448, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3800, file: !3801, line: 58, baseType: !3898, size: 64, offset: 448)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3800, file: !3801, line: 59, baseType: !3799, size: 64, offset: 512)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3800, file: !3801, line: 60, baseType: !3799, size: 64, offset: 576)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3800, file: !3801, line: 61, baseType: !3799, size: 64, offset: 640)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3800, file: !3801, line: 63, baseType: !533, size: 512, offset: 704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3800, file: !3801, line: 65, baseType: !334, size: 64, offset: 1216)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3800, file: !3801, line: 66, baseType: !332, size: 64, offset: 1280)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !530, file: !60, line: 529, baseType: !3812, size: 64, offset: 4928)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !530, file: !60, line: 534, baseType: !809, size: 32, offset: 4992)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !530, file: !60, line: 535, baseType: !340, size: 32, offset: 5024)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !530, file: !60, line: 537, baseType: !546, offset: 5056)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !530, file: !60, line: 538, baseType: !350, size: 128, offset: 5056)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !530, file: !60, line: 540, baseType: !3919, size: 64, offset: 5184)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3921, line: 54, size: 960, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3929, !3933, !3937, !3938, !3939, !3940, !3944, !3948, !3949}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3920, file: !3921, line: 55, baseType: !362, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3920, file: !3921, line: 56, baseType: !365, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3920, file: !3921, line: 58, baseType: !637, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3920, file: !3921, line: 59, baseType: !637, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3920, file: !3921, line: 60, baseType: !539, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3920, file: !3921, line: 62, baseType: !3518, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3920, file: !3921, line: 63, baseType: !3930, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!383, !3505, !3525}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3920, file: !3921, line: 65, baseType: !3934, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3919}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3920, file: !3921, line: 66, baseType: !3527, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3920, file: !3921, line: 68, baseType: !3536, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3920, file: !3921, line: 70, baseType: !3331, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3920, file: !3921, line: 71, baseType: !3941, size: 64, offset: 704)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!3348, !3505}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3920, file: !3921, line: 73, baseType: !3945, size: 64, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3505, !3365, !3366}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3920, file: !3921, line: 75, baseType: !3531, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3920, file: !3921, line: 77, baseType: !3648, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !530, file: !60, line: 541, baseType: !637, size: 64, offset: 5248)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !530, file: !60, line: 543, baseType: !3527, size: 64, offset: 5312)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !530, file: !60, line: 544, baseType: !3953, size: 64, offset: 5376)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !530, file: !60, line: 545, baseType: !3956, size: 64, offset: 5440)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !530, file: !60, line: 547, baseType: !470, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !530, file: !60, line: 548, baseType: !470, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !530, file: !60, line: 549, baseType: !470, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !530, file: !60, line: 550, baseType: !470, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !522, file: !92, line: 154, baseType: !640, size: 320, offset: 5760)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !522, file: !92, line: 155, baseType: !3964, size: 64, offset: 6080)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !92, line: 38, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !522, file: !92, line: 156, baseType: !3964, size: 64, offset: 6144)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !522, file: !92, line: 157, baseType: !3964, size: 64, offset: 6208)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !522, file: !92, line: 158, baseType: !80, size: 32, offset: 6272)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !522, file: !92, line: 159, baseType: !332, size: 64, offset: 6336)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !522, file: !92, line: 160, baseType: !112, size: 32, offset: 6400)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !522, file: !92, line: 161, baseType: !334, size: 64, offset: 6464)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !522, file: !92, line: 162, baseType: !112, size: 32, offset: 6528)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !522, file: !92, line: 163, baseType: !112, size: 32, offset: 6560)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !522, file: !92, line: 164, baseType: !112, size: 32, offset: 6592)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !522, file: !92, line: 165, baseType: !112, size: 32, offset: 6624)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !522, file: !92, line: 166, baseType: !112, size: 32, offset: 6656)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !522, file: !92, line: 167, baseType: !112, size: 32, offset: 6688)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !522, file: !92, line: 168, baseType: !112, size: 32, offset: 6720)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !522, file: !92, line: 169, baseType: !112, size: 32, offset: 6752)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !522, file: !92, line: 170, baseType: !7, size: 32, offset: 6784)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !522, file: !92, line: 171, baseType: !1077, size: 32, offset: 6816)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !522, file: !92, line: 172, baseType: !3983, size: 64, offset: 6848)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !92, line: 61, size: 896, elements: !3985)
!3985 = !{!3986, !4029, !4030, !4034, !4038, !4042, !4047, !4051, !4052, !4053, !4054, !4055, !4059, !4064}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3984, file: !92, line: 62, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!112, !521, !3990}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !92, line: 93, size: 6528, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999, !4025, !4026, !4027, !4028}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3991, file: !92, line: 94, baseType: !112, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3991, file: !92, line: 95, baseType: !526, size: 160, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3991, file: !92, line: 96, baseType: !530, size: 5568, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !3991, file: !92, line: 97, baseType: !3799, size: 64, offset: 5760)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !3991, file: !92, line: 98, baseType: !332, size: 64, offset: 5824)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3991, file: !92, line: 99, baseType: !332, size: 64, offset: 5888)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3991, file: !92, line: 100, baseType: !4000, size: 64, offset: 5952)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4002)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !92, line: 84, size: 384, elements: !4003)
!4003 = !{!4004, !4008, !4009, !4013, !4017, !4021}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !4002, file: !92, line: 85, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!112, !3990, !333}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !4002, file: !92, line: 86, baseType: !4005, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !4002, file: !92, line: 87, baseType: !4010, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!112, !3990, !334}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !4002, file: !92, line: 88, baseType: !4014, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!112, !3990, !1648}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !4002, file: !92, line: 89, baseType: !4018, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!112, !3990, !334, !1648}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !4002, file: !92, line: 90, baseType: !4022, size: 64, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!112, !3990, !340, !333}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !3991, file: !92, line: 101, baseType: !470, size: 8, offset: 6016)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3991, file: !92, line: 102, baseType: !1011, size: 192, offset: 6080)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !3991, file: !92, line: 103, baseType: !350, size: 128, offset: 6272)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3991, file: !92, line: 104, baseType: !350, size: 128, offset: 6400)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !3984, file: !92, line: 64, baseType: !3987, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !3984, file: !92, line: 66, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!112, !521, !993}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !3984, file: !92, line: 67, baseType: !4035, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!112, !521, !112, !112}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !3984, file: !92, line: 68, baseType: !4039, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!112, !521, !80}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !3984, file: !92, line: 70, baseType: !4043, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!112, !521, !112, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !3984, file: !92, line: 72, baseType: !4048, size: 64, offset: 384)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!112, !521, !112, !993}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !3984, file: !92, line: 73, baseType: !4035, size: 64, offset: 448)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !3984, file: !92, line: 74, baseType: !4048, size: 64, offset: 512)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !3984, file: !92, line: 75, baseType: !4035, size: 64, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !3984, file: !92, line: 76, baseType: !4031, size: 64, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !3984, file: !92, line: 77, baseType: !4056, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!112, !521, !112}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !3984, file: !92, line: 78, baseType: !4060, size: 64, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!112, !521, !112, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3984, file: !92, line: 80, baseType: !4065, size: 64, offset: 832)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!112, !521, !112, !85}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !522, file: !92, line: 173, baseType: !4069, size: 64, offset: 6912)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !92, line: 240, size: 576, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !4070, file: !92, line: 241, baseType: !526, size: 160)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !4070, file: !92, line: 248, baseType: !470, size: 8, offset: 160)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !4070, file: !92, line: 250, baseType: !112, size: 32, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !4070, file: !92, line: 251, baseType: !4076, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !92, line: 205, size: 256, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4077, file: !92, line: 206, baseType: !3990, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4077, file: !92, line: 217, baseType: !112, size: 32, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !4077, file: !92, line: 224, baseType: !112, size: 32, offset: 96)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !4077, file: !92, line: 234, baseType: !333, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4077, file: !92, line: 235, baseType: !3987, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !4070, file: !92, line: 257, baseType: !340, size: 32, offset: 320)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !4070, file: !92, line: 263, baseType: !1677, size: 32, offset: 352)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !4070, file: !92, line: 269, baseType: !1677, size: 32, offset: 384)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !4070, file: !92, line: 272, baseType: !1677, size: 32, offset: 416)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !4070, file: !92, line: 275, baseType: !1677, size: 32, offset: 448)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !4070, file: !92, line: 278, baseType: !1677, size: 32, offset: 480)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !4070, file: !92, line: 284, baseType: !112, size: 32, offset: 512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4070, file: !92, line: 289, baseType: !112, size: 32, offset: 544)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !522, file: !92, line: 174, baseType: !4093, size: 64, offset: 6976)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !92, line: 196, size: 512, elements: !4095)
!4095 = !{!4096, !4097, !4101, !4105, !4106}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4094, file: !92, line: 197, baseType: !526, size: 160)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !4094, file: !92, line: 198, baseType: !4098, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!112, !521}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !4094, file: !92, line: 199, baseType: !4102, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !521}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4094, file: !92, line: 200, baseType: !4056, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !4094, file: !92, line: 201, baseType: !350, size: 128, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !522, file: !92, line: 175, baseType: !332, size: 64, offset: 7040)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !522, file: !92, line: 176, baseType: !350, size: 128, offset: 7104)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !522, file: !92, line: 177, baseType: !4110, size: 128, offset: 7232)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3394, line: 244, size: 128, elements: !4111)
!4111 = !{!4112}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4110, file: !3394, line: 245, baseType: !1069, size: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !92, line: 178, baseType: !1011, size: 192, offset: 7360)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !92, line: 179, baseType: !350, size: 128, offset: 7552)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !522, file: !92, line: 180, baseType: !476, size: 704, offset: 7680)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !522, file: !92, line: 181, baseType: !99, size: 32, offset: 8384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !466, file: !3, line: 54, baseType: !1600, size: 64, offset: 960)
!4118 = !DIGlobalVariableExpression(var: !4119, expr: !DIExpression())
!4119 = distinct !DIGlobalVariable(name: "pkg_thermal_hp_state", scope: !2, file: !3, line: 71, type: !110, isLocal: true, isDefinition: true)
!4120 = !DIGlobalVariableExpression(var: !4121, expr: !DIExpression())
!4121 = distinct !DIGlobalVariable(name: "debugfs", scope: !2, file: !3, line: 74, type: !691, isLocal: true, isDefinition: true)
!4122 = !DIGlobalVariableExpression(var: !4123, expr: !DIExpression())
!4123 = distinct !DIGlobalVariable(name: "notify_delay_ms", scope: !2, file: !3, line: 34, type: !112, isLocal: true, isDefinition: true)
!4124 = !DIGlobalVariableExpression(var: !4125, expr: !DIExpression())
!4125 = distinct !DIGlobalVariable(name: "pkg_temp_thermal_ids", scope: !2, file: !3, line: 486, type: !4126, isLocal: true, isDefinition: true)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4127, size: 384, elements: !1802)
!4127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !3589, line: 666, size: 192, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4128, file: !3589, line: 667, baseType: !391, size: 16)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !4128, file: !3589, line: 668, baseType: !391, size: 16, offset: 16)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4128, file: !3589, line: 669, baseType: !391, size: 16, offset: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !4128, file: !3589, line: 670, baseType: !391, size: 16, offset: 48)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !4128, file: !3589, line: 671, baseType: !391, size: 16, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4128, file: !3589, line: 672, baseType: !3608, size: 64, offset: 128)
!4136 = !DIGlobalVariableExpression(var: !4137, expr: !DIExpression())
!4137 = distinct !DIGlobalVariable(name: "max_id", scope: !2, file: !3, line: 62, type: !112, isLocal: true, isDefinition: true)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "thermal_zone_mutex", scope: !2, file: !3, line: 68, type: !1011, isLocal: true, isDefinition: true)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(name: "pkg_work_cnt", scope: !2, file: !3, line: 76, type: !7, isLocal: true, isDefinition: true)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "tzone_ops", scope: !2, file: !3, line: 221, type: !3984, isLocal: true, isDefinition: true)
!4144 = !DIGlobalVariableExpression(var: !4145, expr: !DIExpression())
!4145 = distinct !DIGlobalVariable(name: "pkg_temp_tz_params", scope: !2, file: !3, line: 57, type: !4070, isLocal: true, isDefinition: true)
!4146 = !DIGlobalVariableExpression(var: !4147, expr: !DIExpression())
!4147 = distinct !DIGlobalVariable(name: "pkg_temp_lock", scope: !2, file: !3, line: 66, type: !1103, isLocal: true, isDefinition: true)
!4148 = !DIGlobalVariableExpression(var: !4149, expr: !DIExpression())
!4149 = distinct !DIGlobalVariable(name: "pkg_interrupt_cnt", scope: !2, file: !3, line: 75, type: !7, isLocal: true, isDefinition: true)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 296, elements: !4151)
!4151 = !{!4152}
!4152 = !DISubrange(count: 37)
!4153 = !{!"rsp"}
!4154 = !{i32 7, !"Dwarf Version", i32 4}
!4155 = !{i32 2, !"Debug Info Version", i32 3}
!4156 = !{i32 1, !"wchar_size", i32 2}
!4157 = !{i32 1, !"Code Model", i32 2}
!4158 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4159 = distinct !DISubprogram(name: "pkg_temp_thermal_init", scope: !3, file: !3, line: 492, type: !4160, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!112}
!4162 = !DILocalVariable(name: "ret", scope: !4159, file: !3, line: 494, type: !112)
!4163 = !DILocation(line: 494, column: 6, scope: !4159)
!4164 = !DILocation(line: 496, column: 7, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 496, column: 6)
!4166 = !DILocation(line: 496, column: 6, scope: !4159)
!4167 = !DILocation(line: 497, column: 3, scope: !4165)
!4168 = !DILocation(line: 499, column: 37, scope: !4159)
!4169 = !DILocation(line: 499, column: 35, scope: !4159)
!4170 = !DILocation(line: 499, column: 9, scope: !4159)
!4171 = !DILocation(line: 500, column: 18, scope: !4159)
!4172 = !DILocation(line: 500, column: 10, scope: !4159)
!4173 = !DILocation(line: 500, column: 8, scope: !4159)
!4174 = !DILocation(line: 502, column: 7, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 502, column: 6)
!4176 = !DILocation(line: 502, column: 6, scope: !4159)
!4177 = !DILocation(line: 503, column: 3, scope: !4175)
!4178 = !DILocation(line: 505, column: 8, scope: !4159)
!4179 = !DILocation(line: 505, column: 6, scope: !4159)
!4180 = !DILocation(line: 507, column: 6, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 507, column: 6)
!4182 = !DILocation(line: 507, column: 10, scope: !4181)
!4183 = !DILocation(line: 507, column: 6, scope: !4159)
!4184 = !DILocation(line: 508, column: 3, scope: !4181)
!4185 = !DILocation(line: 511, column: 25, scope: !4159)
!4186 = !DILocation(line: 511, column: 23, scope: !4159)
!4187 = !DILocation(line: 513, column: 34, scope: !4159)
!4188 = !DILocation(line: 514, column: 40, scope: !4159)
!4189 = !DILocation(line: 517, column: 2, scope: !4159)
!4190 = !DILocation(line: 518, column: 2, scope: !4159)
!4191 = !DILabel(scope: !4159, name: "err", file: !3, line: 520)
!4192 = !DILocation(line: 520, column: 1, scope: !4159)
!4193 = !DILocation(line: 521, column: 8, scope: !4159)
!4194 = !DILocation(line: 521, column: 2, scope: !4159)
!4195 = !DILocation(line: 522, column: 9, scope: !4159)
!4196 = !DILocation(line: 522, column: 2, scope: !4159)
!4197 = !DILocation(line: 523, column: 1, scope: !4159)
!4198 = distinct !DISubprogram(name: "pkg_temp_thermal_exit", scope: !3, file: !3, line: 526, type: !440, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4199 = !DILocation(line: 528, column: 34, scope: !4198)
!4200 = !DILocation(line: 529, column: 40, scope: !4198)
!4201 = !DILocation(line: 531, column: 21, scope: !4198)
!4202 = !DILocation(line: 531, column: 2, scope: !4198)
!4203 = !DILocation(line: 532, column: 27, scope: !4198)
!4204 = !DILocation(line: 532, column: 2, scope: !4198)
!4205 = !DILocation(line: 533, column: 8, scope: !4198)
!4206 = !DILocation(line: 533, column: 2, scope: !4198)
!4207 = !DILocation(line: 534, column: 1, scope: !4198)
!4208 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !111, file: !111, line: 341, type: !4209, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !110}
!4211 = !DILocalVariable(name: "state", arg: 1, scope: !4208, file: !111, line: 341, type: !110)
!4212 = !DILocation(line: 341, column: 56, scope: !4208)
!4213 = !DILocation(line: 343, column: 23, scope: !4208)
!4214 = !DILocation(line: 343, column: 2, scope: !4208)
!4215 = !DILocation(line: 344, column: 1, scope: !4208)
!4216 = distinct !DISubprogram(name: "debugfs_remove_recursive", scope: !4217, file: !4217, line: 220, type: !2891, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4217 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/lizy2001/genbc/linux")
!4218 = !DILocalVariable(name: "dentry", arg: 1, scope: !4216, file: !4217, line: 220, type: !691)
!4219 = !DILocation(line: 220, column: 60, scope: !4216)
!4220 = !DILocation(line: 221, column: 3, scope: !4216)
!4221 = distinct !DISubprogram(name: "topology_max_die_per_package", scope: !4222, file: !4222, line: 150, type: !4160, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4222 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!4223 = !DILocation(line: 150, column: 56, scope: !4221)
!4224 = distinct !DISubprogram(name: "kcalloc", scope: !285, file: !285, line: 601, type: !4225, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!332, !631, !631, !330}
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4224, file: !285, line: 601, type: !631)
!4228 = !DILocation(line: 601, column: 36, scope: !4224)
!4229 = !DILocalVariable(name: "size", arg: 2, scope: !4224, file: !285, line: 601, type: !631)
!4230 = !DILocation(line: 601, column: 46, scope: !4224)
!4231 = !DILocalVariable(name: "flags", arg: 3, scope: !4224, file: !285, line: 601, type: !330)
!4232 = !DILocation(line: 601, column: 58, scope: !4224)
!4233 = !DILocation(line: 603, column: 23, scope: !4224)
!4234 = !DILocation(line: 603, column: 26, scope: !4224)
!4235 = !DILocation(line: 603, column: 32, scope: !4224)
!4236 = !DILocation(line: 603, column: 38, scope: !4224)
!4237 = !DILocation(line: 603, column: 9, scope: !4224)
!4238 = !DILocation(line: 603, column: 2, scope: !4224)
!4239 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !111, file: !111, line: 218, type: !4240, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!112, !110, !362, !4242, !4242}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!112, !7}
!4245 = !DILocalVariable(name: "state", arg: 1, scope: !4239, file: !111, line: 218, type: !110)
!4246 = !DILocation(line: 218, column: 54, scope: !4239)
!4247 = !DILocalVariable(name: "name", arg: 2, scope: !4239, file: !111, line: 219, type: !362)
!4248 = !DILocation(line: 219, column: 21, scope: !4239)
!4249 = !DILocalVariable(name: "startup", arg: 3, scope: !4239, file: !111, line: 220, type: !4242)
!4250 = !DILocation(line: 220, column: 15, scope: !4239)
!4251 = !DILocalVariable(name: "teardown", arg: 4, scope: !4239, file: !111, line: 221, type: !4242)
!4252 = !DILocation(line: 221, column: 15, scope: !4239)
!4253 = !DILocation(line: 223, column: 29, scope: !4239)
!4254 = !DILocation(line: 223, column: 36, scope: !4239)
!4255 = !DILocation(line: 223, column: 48, scope: !4239)
!4256 = !DILocation(line: 223, column: 57, scope: !4239)
!4257 = !DILocation(line: 223, column: 9, scope: !4239)
!4258 = !DILocation(line: 223, column: 2, scope: !4239)
!4259 = distinct !DISubprogram(name: "pkg_thermal_cpu_online", scope: !3, file: !3, line: 469, type: !4243, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4260 = !DILocalVariable(name: "cpu", arg: 1, scope: !4259, file: !3, line: 469, type: !7)
!4261 = !DILocation(line: 469, column: 48, scope: !4259)
!4262 = !DILocalVariable(name: "zonedev", scope: !4259, file: !3, line: 471, type: !465)
!4263 = !DILocation(line: 471, column: 22, scope: !4259)
!4264 = !DILocation(line: 471, column: 57, scope: !4259)
!4265 = !DILocation(line: 471, column: 32, scope: !4259)
!4266 = !DILocalVariable(name: "c", scope: !4259, file: !3, line: 472, type: !4267)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !2348, line: 81, size: 2048, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4273, !4274, !4275, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4289, !4290, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !4268, file: !2348, line: 82, baseType: !399, size: 8)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !4268, file: !2348, line: 83, baseType: !399, size: 8, offset: 8)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !4268, file: !2348, line: 84, baseType: !399, size: 8, offset: 16)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !4268, file: !2348, line: 85, baseType: !399, size: 8, offset: 24)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !4268, file: !2348, line: 88, baseType: !112, size: 32, offset: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !4268, file: !2348, line: 91, baseType: !4276, size: 96, offset: 64)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 96, elements: !587)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !4268, file: !2348, line: 93, baseType: !399, size: 8, offset: 160)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !4268, file: !2348, line: 94, baseType: !399, size: 8, offset: 168)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !4268, file: !2348, line: 96, baseType: !399, size: 8, offset: 176)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !4268, file: !2348, line: 97, baseType: !399, size: 8, offset: 184)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !4268, file: !2348, line: 99, baseType: !342, size: 32, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !4268, file: !2348, line: 101, baseType: !112, size: 32, offset: 224)
!4283 = !DIDerivedType(tag: DW_TAG_member, scope: !4268, file: !2348, line: 107, baseType: !4284, size: 640, offset: 256)
!4284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4268, file: !2348, line: 107, size: 640, elements: !4285)
!4285 = !{!4286, !4288}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !4284, file: !2348, line: 108, baseType: !4287, size: 640)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 640, elements: !527)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !4284, file: !2348, line: 109, baseType: !334, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !4268, file: !2348, line: 111, baseType: !1967, size: 128, offset: 896)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !4268, file: !2348, line: 112, baseType: !4291, size: 512, offset: 1024)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 512, elements: !591)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !4268, file: !2348, line: 114, baseType: !7, size: 32, offset: 1536)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !4268, file: !2348, line: 115, baseType: !112, size: 32, offset: 1568)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !4268, file: !2348, line: 117, baseType: !112, size: 32, offset: 1600)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !4268, file: !2348, line: 118, baseType: !112, size: 32, offset: 1632)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !4268, file: !2348, line: 119, baseType: !112, size: 32, offset: 1664)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !4268, file: !2348, line: 120, baseType: !112, size: 32, offset: 1696)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !4268, file: !2348, line: 121, baseType: !334, size: 64, offset: 1728)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !4268, file: !2348, line: 123, baseType: !390, size: 16, offset: 1792)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !4268, file: !2348, line: 124, baseType: !390, size: 16, offset: 1808)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !4268, file: !2348, line: 125, baseType: !390, size: 16, offset: 1824)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !4268, file: !2348, line: 126, baseType: !390, size: 16, offset: 1840)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !4268, file: !2348, line: 128, baseType: !390, size: 16, offset: 1856)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !4268, file: !2348, line: 130, baseType: !390, size: 16, offset: 1872)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !4268, file: !2348, line: 132, baseType: !390, size: 16, offset: 1888)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !4268, file: !2348, line: 134, baseType: !390, size: 16, offset: 1904)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !4268, file: !2348, line: 135, baseType: !390, size: 16, offset: 1920)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !4268, file: !2348, line: 136, baseType: !390, size: 16, offset: 1936)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !4268, file: !2348, line: 138, baseType: !390, size: 16, offset: 1952)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !4268, file: !2348, line: 139, baseType: !340, size: 32, offset: 1984)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !4268, file: !2348, line: 141, baseType: !398, size: 8, offset: 2016)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4268, file: !2348, line: 142, baseType: !7, size: 1, offset: 2024, flags: DIFlagBitField, extraData: i64 2024)
!4313 = !DILocation(line: 472, column: 22, scope: !4259)
!4314 = !DILocation(line: 475, column: 38, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 475, column: 6)
!4316 = !DILocation(line: 475, column: 7, scope: !4315)
!4317 = !DILocation(line: 475, column: 6, scope: !4259)
!4318 = !DILocation(line: 475, column: 42, scope: !4315)
!4319 = !DILocation(line: 476, column: 3, scope: !4315)
!4320 = !DILocation(line: 479, column: 6, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 479, column: 6)
!4322 = !DILocation(line: 479, column: 6, scope: !4259)
!4323 = !DILocation(line: 480, column: 19, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 479, column: 15)
!4325 = !DILocation(line: 480, column: 25, scope: !4324)
!4326 = !DILocation(line: 480, column: 34, scope: !4324)
!4327 = !DILocation(line: 480, column: 3, scope: !4324)
!4328 = !DILocation(line: 481, column: 3, scope: !4324)
!4329 = !DILocation(line: 483, column: 37, scope: !4259)
!4330 = !DILocation(line: 483, column: 9, scope: !4259)
!4331 = !DILocation(line: 483, column: 2, scope: !4259)
!4332 = !DILocation(line: 484, column: 1, scope: !4259)
!4333 = distinct !DISubprogram(name: "pkg_thermal_cpu_offline", scope: !3, file: !3, line: 383, type: !4243, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4334 = !DILocalVariable(name: "cpu", arg: 1, scope: !4333, file: !3, line: 383, type: !7)
!4335 = !DILocation(line: 383, column: 49, scope: !4333)
!4336 = !DILocalVariable(name: "zonedev", scope: !4333, file: !3, line: 385, type: !465)
!4337 = !DILocation(line: 385, column: 22, scope: !4333)
!4338 = !DILocation(line: 385, column: 57, scope: !4333)
!4339 = !DILocation(line: 385, column: 32, scope: !4333)
!4340 = !DILocalVariable(name: "lastcpu", scope: !4333, file: !3, line: 386, type: !470)
!4341 = !DILocation(line: 386, column: 7, scope: !4333)
!4342 = !DILocalVariable(name: "was_target", scope: !4333, file: !3, line: 386, type: !470)
!4343 = !DILocation(line: 386, column: 16, scope: !4333)
!4344 = !DILocalVariable(name: "target", scope: !4333, file: !3, line: 387, type: !112)
!4345 = !DILocation(line: 387, column: 6, scope: !4333)
!4346 = !DILocation(line: 389, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 389, column: 6)
!4348 = !DILocation(line: 389, column: 6, scope: !4333)
!4349 = !DILocation(line: 390, column: 3, scope: !4347)
!4350 = !DILocation(line: 392, column: 28, scope: !4333)
!4351 = !DILocation(line: 392, column: 37, scope: !4333)
!4352 = !DILocation(line: 392, column: 46, scope: !4333)
!4353 = !DILocation(line: 392, column: 11, scope: !4333)
!4354 = !DILocation(line: 392, column: 9, scope: !4333)
!4355 = !DILocation(line: 393, column: 20, scope: !4333)
!4356 = !DILocation(line: 393, column: 26, scope: !4333)
!4357 = !DILocation(line: 393, column: 35, scope: !4333)
!4358 = !DILocation(line: 393, column: 2, scope: !4333)
!4359 = !DILocation(line: 394, column: 12, scope: !4333)
!4360 = !DILocation(line: 394, column: 19, scope: !4333)
!4361 = !DILocation(line: 394, column: 10, scope: !4333)
!4362 = !DILocation(line: 399, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 399, column: 6)
!4364 = !DILocation(line: 399, column: 6, scope: !4333)
!4365 = !DILocalVariable(name: "tzone", scope: !4366, file: !3, line: 400, type: !521)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 399, column: 15)
!4367 = !DILocation(line: 400, column: 31, scope: !4366)
!4368 = !DILocation(line: 400, column: 39, scope: !4366)
!4369 = !DILocation(line: 400, column: 48, scope: !4366)
!4370 = !DILocation(line: 408, column: 3, scope: !4366)
!4371 = !DILocation(line: 409, column: 3, scope: !4366)
!4372 = !DILocation(line: 409, column: 12, scope: !4366)
!4373 = !DILocation(line: 409, column: 18, scope: !4366)
!4374 = !DILocation(line: 410, column: 3, scope: !4366)
!4375 = !DILocation(line: 412, column: 34, scope: !4366)
!4376 = !DILocation(line: 412, column: 3, scope: !4366)
!4377 = !DILocation(line: 413, column: 2, scope: !4366)
!4378 = !DILocation(line: 416, column: 2, scope: !4333)
!4379 = !DILocation(line: 416, column: 2, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 416, column: 2)
!4381 = !DILocation(line: 416, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 416, column: 2)
!4383 = !DILocation(line: 416, column: 2, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 416, column: 2)
!4385 = !{i32 -2142640757}
!4386 = !DILocation(line: 416, column: 2, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 416, column: 2)
!4388 = !DILocation(line: 423, column: 15, scope: !4333)
!4389 = !DILocation(line: 423, column: 24, scope: !4333)
!4390 = !DILocation(line: 423, column: 31, scope: !4333)
!4391 = !DILocation(line: 423, column: 28, scope: !4333)
!4392 = !DILocation(line: 423, column: 13, scope: !4333)
!4393 = !DILocation(line: 424, column: 17, scope: !4333)
!4394 = !DILocation(line: 424, column: 2, scope: !4333)
!4395 = !DILocation(line: 424, column: 11, scope: !4333)
!4396 = !DILocation(line: 424, column: 15, scope: !4333)
!4397 = !DILocation(line: 432, column: 6, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 432, column: 6)
!4399 = !DILocation(line: 432, column: 6, scope: !4333)
!4400 = !DILocation(line: 433, column: 3, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 432, column: 15)
!4402 = !DILocation(line: 433, column: 9, scope: !4401)
!4403 = !DILocation(line: 433, column: 39, scope: !4401)
!4404 = !DILocation(line: 435, column: 3, scope: !4401)
!4405 = !DILocation(line: 435, column: 3, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 435, column: 3)
!4407 = !DILocation(line: 437, column: 2, scope: !4401)
!4408 = !DILocation(line: 443, column: 6, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 443, column: 6)
!4410 = !DILocation(line: 443, column: 15, scope: !4409)
!4411 = !DILocation(line: 443, column: 30, scope: !4409)
!4412 = !DILocation(line: 443, column: 33, scope: !4409)
!4413 = !DILocation(line: 443, column: 6, scope: !4333)
!4414 = !DILocation(line: 448, column: 3, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 443, column: 45)
!4416 = !DILocation(line: 448, column: 3, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 448, column: 3)
!4418 = !DILocation(line: 448, column: 3, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 448, column: 3)
!4420 = !DILocation(line: 448, column: 3, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 448, column: 3)
!4422 = !{i32 -2142640143}
!4423 = !DILocation(line: 448, column: 3, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 448, column: 3)
!4425 = !DILocation(line: 449, column: 29, scope: !4415)
!4426 = !DILocation(line: 449, column: 38, scope: !4415)
!4427 = !DILocation(line: 449, column: 3, scope: !4415)
!4428 = !DILocation(line: 450, column: 3, scope: !4415)
!4429 = !DILocation(line: 450, column: 3, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 450, column: 3)
!4431 = !DILocation(line: 450, column: 3, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 450, column: 3)
!4433 = !DILocation(line: 450, column: 3, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 450, column: 3)
!4435 = !{i32 -2142639737}
!4436 = !DILocation(line: 450, column: 3, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 450, column: 3)
!4438 = !DILocation(line: 457, column: 8, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 457, column: 7)
!4440 = !DILocation(line: 457, column: 16, scope: !4439)
!4441 = !DILocation(line: 457, column: 19, scope: !4439)
!4442 = !DILocation(line: 457, column: 28, scope: !4439)
!4443 = !DILocation(line: 457, column: 7, scope: !4415)
!4444 = !DILocation(line: 458, column: 30, scope: !4439)
!4445 = !DILocation(line: 458, column: 39, scope: !4439)
!4446 = !DILocation(line: 458, column: 48, scope: !4439)
!4447 = !DILocation(line: 458, column: 4, scope: !4439)
!4448 = !DILocation(line: 459, column: 2, scope: !4415)
!4449 = !DILocation(line: 461, column: 2, scope: !4333)
!4450 = !DILocation(line: 461, column: 2, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 461, column: 2)
!4452 = !DILocation(line: 461, column: 2, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 461, column: 2)
!4454 = !DILocation(line: 461, column: 2, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 461, column: 2)
!4456 = !{i32 -2142639327}
!4457 = !DILocation(line: 461, column: 2, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 461, column: 2)
!4459 = !DILocation(line: 464, column: 6, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 464, column: 6)
!4461 = !DILocation(line: 464, column: 6, scope: !4333)
!4462 = !DILocation(line: 465, column: 9, scope: !4460)
!4463 = !DILocation(line: 465, column: 3, scope: !4460)
!4464 = !DILocation(line: 466, column: 2, scope: !4333)
!4465 = !DILocation(line: 467, column: 1, scope: !4333)
!4466 = distinct !DISubprogram(name: "pkg_thermal_notify", scope: !3, file: !3, line: 307, type: !4467, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!112, !344}
!4469 = !DILocalVariable(name: "msr_val", arg: 1, scope: !4466, file: !3, line: 307, type: !344)
!4470 = !DILocation(line: 307, column: 35, scope: !4466)
!4471 = !DILocalVariable(name: "cpu", scope: !4466, file: !3, line: 309, type: !112)
!4472 = !DILocation(line: 309, column: 6, scope: !4466)
!4473 = !DILocalVariable(name: "zonedev", scope: !4466, file: !3, line: 310, type: !465)
!4474 = !DILocation(line: 310, column: 22, scope: !4466)
!4475 = !DILocalVariable(name: "flags", scope: !4466, file: !3, line: 311, type: !334)
!4476 = !DILocation(line: 311, column: 16, scope: !4466)
!4477 = !DILocation(line: 313, column: 2, scope: !4466)
!4478 = !DILocalVariable(name: "__dummy", scope: !4479, file: !3, line: 313, type: !334)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 313, column: 2)
!4480 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 313, column: 2)
!4481 = !DILocation(line: 313, column: 2, scope: !4479)
!4482 = !DILocalVariable(name: "__dummy2", scope: !4479, file: !3, line: 313, type: !334)
!4483 = !DILocation(line: 313, column: 2, scope: !4480)
!4484 = !DILocation(line: 313, column: 2, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 313, column: 2)
!4486 = !DILocation(line: 313, column: 2, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 313, column: 2)
!4488 = !DILocalVariable(name: "__dummy", scope: !4489, file: !3, line: 313, type: !334)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 313, column: 2)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 313, column: 2)
!4491 = !DILocation(line: 313, column: 2, scope: !4489)
!4492 = !DILocalVariable(name: "__dummy2", scope: !4489, file: !3, line: 313, type: !334)
!4493 = !DILocation(line: 313, column: 2, scope: !4490)
!4494 = !DILocation(line: 313, column: 2, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 313, column: 2)
!4496 = !{i32 -2142659917}
!4497 = !DILocation(line: 313, column: 2, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 313, column: 2)
!4499 = !DILocation(line: 314, column: 2, scope: !4466)
!4500 = !DILocation(line: 316, column: 2, scope: !4466)
!4501 = !DILocation(line: 319, column: 37, scope: !4466)
!4502 = !DILocation(line: 319, column: 12, scope: !4466)
!4503 = !DILocation(line: 319, column: 10, scope: !4466)
!4504 = !DILocation(line: 320, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 320, column: 6)
!4506 = !DILocation(line: 320, column: 14, scope: !4505)
!4507 = !DILocation(line: 320, column: 18, scope: !4505)
!4508 = !DILocation(line: 320, column: 27, scope: !4505)
!4509 = !DILocation(line: 320, column: 6, scope: !4466)
!4510 = !DILocation(line: 321, column: 3, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 320, column: 43)
!4512 = !DILocation(line: 321, column: 12, scope: !4511)
!4513 = !DILocation(line: 321, column: 27, scope: !4511)
!4514 = !DILocation(line: 322, column: 29, scope: !4511)
!4515 = !DILocation(line: 322, column: 38, scope: !4511)
!4516 = !DILocation(line: 322, column: 44, scope: !4511)
!4517 = !DILocation(line: 322, column: 53, scope: !4511)
!4518 = !DILocation(line: 322, column: 3, scope: !4511)
!4519 = !DILocation(line: 323, column: 2, scope: !4511)
!4520 = !DILocation(line: 325, column: 2, scope: !4466)
!4521 = !DILocalVariable(name: "__dummy", scope: !4522, file: !3, line: 325, type: !334)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 325, column: 2)
!4523 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 325, column: 2)
!4524 = !DILocation(line: 325, column: 2, scope: !4522)
!4525 = !DILocalVariable(name: "__dummy2", scope: !4522, file: !3, line: 325, type: !334)
!4526 = !DILocation(line: 325, column: 2, scope: !4523)
!4527 = !DILocation(line: 325, column: 2, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 325, column: 2)
!4529 = !DILocation(line: 325, column: 2, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 325, column: 2)
!4531 = !DILocalVariable(name: "__dummy", scope: !4532, file: !3, line: 325, type: !334)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 325, column: 2)
!4533 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 325, column: 2)
!4534 = !DILocation(line: 325, column: 2, scope: !4532)
!4535 = !DILocalVariable(name: "__dummy2", scope: !4532, file: !3, line: 325, type: !334)
!4536 = !DILocation(line: 325, column: 2, scope: !4533)
!4537 = !DILocation(line: 325, column: 2, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 325, column: 2)
!4539 = !{i32 -2142659068}
!4540 = !DILocation(line: 325, column: 2, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 325, column: 2)
!4542 = !DILocation(line: 326, column: 2, scope: !4466)
!4543 = distinct !DISubprogram(name: "pkg_thermal_rate_control", scope: !3, file: !3, line: 228, type: !3338, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4544 = !DILocation(line: 230, column: 2, scope: !4543)
!4545 = distinct !DISubprogram(name: "pkg_temp_debugfs_init", scope: !3, file: !3, line: 78, type: !440, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4546 = !DILocation(line: 80, column: 12, scope: !4545)
!4547 = !DILocation(line: 80, column: 10, scope: !4545)
!4548 = !DILocation(line: 82, column: 53, scope: !4545)
!4549 = !DILocation(line: 82, column: 2, scope: !4545)
!4550 = !DILocation(line: 84, column: 48, scope: !4545)
!4551 = !DILocation(line: 84, column: 2, scope: !4545)
!4552 = !DILocation(line: 86, column: 1, scope: !4545)
!4553 = distinct !DISubprogram(name: "kmalloc_array", scope: !285, file: !285, line: 584, type: !4225, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4554 = !DILocalVariable(name: "s", arg: 1, scope: !4555, file: !285, line: 445, type: !1256)
!4555 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !285, file: !285, line: 445, type: !4556, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!332, !1256, !330, !631}
!4558 = !DILocation(line: 445, column: 72, scope: !4555, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 552, column: 10, scope: !4560, inlinedAt: !4565)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !285, line: 540, column: 34)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !285, line: 540, column: 6)
!4562 = distinct !DISubprogram(name: "kmalloc", scope: !285, file: !285, line: 538, type: !4563, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!332, !631, !330}
!4565 = distinct !DILocation(line: 591, column: 10, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4553, file: !285, line: 590, column: 6)
!4567 = !DILocalVariable(name: "flags", arg: 2, scope: !4555, file: !285, line: 446, type: !330)
!4568 = !DILocation(line: 446, column: 9, scope: !4555, inlinedAt: !4559)
!4569 = !DILocalVariable(name: "size", arg: 3, scope: !4555, file: !285, line: 446, type: !631)
!4570 = !DILocation(line: 446, column: 23, scope: !4555, inlinedAt: !4559)
!4571 = !DILocalVariable(name: "ret", scope: !4555, file: !285, line: 448, type: !332)
!4572 = !DILocation(line: 448, column: 8, scope: !4555, inlinedAt: !4559)
!4573 = !DILocalVariable(name: "flags", arg: 1, scope: !4574, file: !285, line: 318, type: !330)
!4574 = distinct !DISubprogram(name: "kmalloc_type", scope: !285, file: !285, line: 318, type: !4575, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!284, !330}
!4577 = !DILocation(line: 318, column: 67, scope: !4574, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 553, column: 20, scope: !4560, inlinedAt: !4565)
!4579 = !DILocalVariable(name: "size", arg: 1, scope: !4580, file: !285, line: 346, type: !631)
!4580 = distinct !DISubprogram(name: "kmalloc_index", scope: !285, file: !285, line: 346, type: !4581, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!7, !631}
!4583 = !DILocation(line: 346, column: 58, scope: !4580, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 547, column: 11, scope: !4560, inlinedAt: !4565)
!4585 = !DILocalVariable(name: "size", arg: 1, scope: !4586, file: !285, line: 472, type: !631)
!4586 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !285, file: !285, line: 472, type: !4587, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!332, !631, !330, !7}
!4589 = !DILocation(line: 472, column: 28, scope: !4586, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 481, column: 9, scope: !4591, inlinedAt: !4592)
!4591 = distinct !DISubprogram(name: "kmalloc_large", scope: !285, file: !285, line: 478, type: !4563, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4592 = distinct !DILocation(line: 545, column: 11, scope: !4593, inlinedAt: !4565)
!4593 = distinct !DILexicalBlock(scope: !4560, file: !285, line: 544, column: 7)
!4594 = !DILocalVariable(name: "flags", arg: 2, scope: !4586, file: !285, line: 472, type: !330)
!4595 = !DILocation(line: 472, column: 40, scope: !4586, inlinedAt: !4590)
!4596 = !DILocalVariable(name: "order", arg: 3, scope: !4586, file: !285, line: 472, type: !7)
!4597 = !DILocation(line: 472, column: 60, scope: !4586, inlinedAt: !4590)
!4598 = !DILocalVariable(name: "size", arg: 1, scope: !4591, file: !285, line: 478, type: !631)
!4599 = !DILocation(line: 478, column: 51, scope: !4591, inlinedAt: !4592)
!4600 = !DILocalVariable(name: "flags", arg: 2, scope: !4591, file: !285, line: 478, type: !330)
!4601 = !DILocation(line: 478, column: 63, scope: !4591, inlinedAt: !4592)
!4602 = !DILocalVariable(name: "order", scope: !4591, file: !285, line: 480, type: !7)
!4603 = !DILocation(line: 480, column: 15, scope: !4591, inlinedAt: !4592)
!4604 = !DILocalVariable(name: "size", arg: 1, scope: !4562, file: !285, line: 538, type: !631)
!4605 = !DILocation(line: 538, column: 45, scope: !4562, inlinedAt: !4565)
!4606 = !DILocalVariable(name: "flags", arg: 2, scope: !4562, file: !285, line: 538, type: !330)
!4607 = !DILocation(line: 538, column: 57, scope: !4562, inlinedAt: !4565)
!4608 = !DILocalVariable(name: "index", scope: !4560, file: !285, line: 542, type: !7)
!4609 = !DILocation(line: 542, column: 16, scope: !4560, inlinedAt: !4565)
!4610 = !DILocalVariable(name: "n", arg: 1, scope: !4553, file: !285, line: 584, type: !631)
!4611 = !DILocation(line: 584, column: 42, scope: !4553)
!4612 = !DILocalVariable(name: "size", arg: 2, scope: !4553, file: !285, line: 584, type: !631)
!4613 = !DILocation(line: 584, column: 52, scope: !4553)
!4614 = !DILocalVariable(name: "flags", arg: 3, scope: !4553, file: !285, line: 584, type: !330)
!4615 = !DILocation(line: 584, column: 64, scope: !4553)
!4616 = !DILocalVariable(name: "bytes", scope: !4553, file: !285, line: 586, type: !631)
!4617 = !DILocation(line: 586, column: 9, scope: !4553)
!4618 = !DILocalVariable(name: "__a", scope: !4619, file: !285, line: 588, type: !631)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !285, line: 588, column: 6)
!4620 = distinct !DILexicalBlock(scope: !4553, file: !285, line: 588, column: 6)
!4621 = !DILocation(line: 588, column: 6, scope: !4619)
!4622 = !DILocalVariable(name: "__b", scope: !4619, file: !285, line: 588, type: !631)
!4623 = !DILocalVariable(name: "__d", scope: !4619, file: !285, line: 588, type: !4624)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!4625 = !DILocation(line: 588, column: 6, scope: !4620)
!4626 = !DILocation(line: 588, column: 6, scope: !4553)
!4627 = !DILocation(line: 589, column: 3, scope: !4620)
!4628 = !DILocation(line: 590, column: 27, scope: !4566)
!4629 = !DILocation(line: 590, column: 6, scope: !4566)
!4630 = !DILocation(line: 590, column: 30, scope: !4566)
!4631 = !DILocation(line: 590, column: 54, scope: !4566)
!4632 = !DILocation(line: 590, column: 33, scope: !4566)
!4633 = !DILocation(line: 590, column: 6, scope: !4553)
!4634 = !DILocation(line: 591, column: 18, scope: !4566)
!4635 = !DILocation(line: 591, column: 25, scope: !4566)
!4636 = !DILocation(line: 540, column: 27, scope: !4561, inlinedAt: !4565)
!4637 = !DILocation(line: 540, column: 6, scope: !4561, inlinedAt: !4565)
!4638 = !DILocation(line: 540, column: 6, scope: !4562, inlinedAt: !4565)
!4639 = !DILocation(line: 544, column: 7, scope: !4593, inlinedAt: !4565)
!4640 = !DILocation(line: 544, column: 12, scope: !4593, inlinedAt: !4565)
!4641 = !DILocation(line: 544, column: 7, scope: !4560, inlinedAt: !4565)
!4642 = !DILocation(line: 545, column: 25, scope: !4593, inlinedAt: !4565)
!4643 = !DILocation(line: 545, column: 31, scope: !4593, inlinedAt: !4565)
!4644 = !DILocation(line: 480, column: 33, scope: !4591, inlinedAt: !4592)
!4645 = !DILocation(line: 480, column: 23, scope: !4591, inlinedAt: !4592)
!4646 = !DILocation(line: 481, column: 29, scope: !4591, inlinedAt: !4592)
!4647 = !DILocation(line: 481, column: 35, scope: !4591, inlinedAt: !4592)
!4648 = !DILocation(line: 481, column: 42, scope: !4591, inlinedAt: !4592)
!4649 = !DILocation(line: 474, column: 23, scope: !4586, inlinedAt: !4590)
!4650 = !DILocation(line: 474, column: 29, scope: !4586, inlinedAt: !4590)
!4651 = !DILocation(line: 474, column: 36, scope: !4586, inlinedAt: !4590)
!4652 = !DILocation(line: 474, column: 9, scope: !4586, inlinedAt: !4590)
!4653 = !DILocation(line: 545, column: 4, scope: !4593, inlinedAt: !4565)
!4654 = !DILocation(line: 547, column: 25, scope: !4560, inlinedAt: !4565)
!4655 = !DILocation(line: 348, column: 7, scope: !4656, inlinedAt: !4584)
!4656 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 348, column: 6)
!4657 = !DILocation(line: 348, column: 6, scope: !4580, inlinedAt: !4584)
!4658 = !DILocation(line: 349, column: 3, scope: !4656, inlinedAt: !4584)
!4659 = !DILocation(line: 351, column: 6, scope: !4660, inlinedAt: !4584)
!4660 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 351, column: 6)
!4661 = !DILocation(line: 351, column: 11, scope: !4660, inlinedAt: !4584)
!4662 = !DILocation(line: 351, column: 6, scope: !4580, inlinedAt: !4584)
!4663 = !DILocation(line: 352, column: 3, scope: !4660, inlinedAt: !4584)
!4664 = !DILocation(line: 354, column: 32, scope: !4665, inlinedAt: !4584)
!4665 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 354, column: 6)
!4666 = !DILocation(line: 354, column: 37, scope: !4665, inlinedAt: !4584)
!4667 = !DILocation(line: 354, column: 42, scope: !4665, inlinedAt: !4584)
!4668 = !DILocation(line: 354, column: 45, scope: !4665, inlinedAt: !4584)
!4669 = !DILocation(line: 354, column: 50, scope: !4665, inlinedAt: !4584)
!4670 = !DILocation(line: 354, column: 6, scope: !4580, inlinedAt: !4584)
!4671 = !DILocation(line: 355, column: 3, scope: !4665, inlinedAt: !4584)
!4672 = !DILocation(line: 356, column: 32, scope: !4673, inlinedAt: !4584)
!4673 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 356, column: 6)
!4674 = !DILocation(line: 356, column: 37, scope: !4673, inlinedAt: !4584)
!4675 = !DILocation(line: 356, column: 43, scope: !4673, inlinedAt: !4584)
!4676 = !DILocation(line: 356, column: 46, scope: !4673, inlinedAt: !4584)
!4677 = !DILocation(line: 356, column: 51, scope: !4673, inlinedAt: !4584)
!4678 = !DILocation(line: 356, column: 6, scope: !4580, inlinedAt: !4584)
!4679 = !DILocation(line: 357, column: 3, scope: !4673, inlinedAt: !4584)
!4680 = !DILocation(line: 358, column: 6, scope: !4681, inlinedAt: !4584)
!4681 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 358, column: 6)
!4682 = !DILocation(line: 358, column: 11, scope: !4681, inlinedAt: !4584)
!4683 = !DILocation(line: 358, column: 6, scope: !4580, inlinedAt: !4584)
!4684 = !DILocation(line: 358, column: 26, scope: !4681, inlinedAt: !4584)
!4685 = !DILocation(line: 359, column: 6, scope: !4686, inlinedAt: !4584)
!4686 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 359, column: 6)
!4687 = !DILocation(line: 359, column: 11, scope: !4686, inlinedAt: !4584)
!4688 = !DILocation(line: 359, column: 6, scope: !4580, inlinedAt: !4584)
!4689 = !DILocation(line: 359, column: 26, scope: !4686, inlinedAt: !4584)
!4690 = !DILocation(line: 360, column: 6, scope: !4691, inlinedAt: !4584)
!4691 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 360, column: 6)
!4692 = !DILocation(line: 360, column: 11, scope: !4691, inlinedAt: !4584)
!4693 = !DILocation(line: 360, column: 6, scope: !4580, inlinedAt: !4584)
!4694 = !DILocation(line: 360, column: 26, scope: !4691, inlinedAt: !4584)
!4695 = !DILocation(line: 361, column: 6, scope: !4696, inlinedAt: !4584)
!4696 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 361, column: 6)
!4697 = !DILocation(line: 361, column: 11, scope: !4696, inlinedAt: !4584)
!4698 = !DILocation(line: 361, column: 6, scope: !4580, inlinedAt: !4584)
!4699 = !DILocation(line: 361, column: 26, scope: !4696, inlinedAt: !4584)
!4700 = !DILocation(line: 362, column: 6, scope: !4701, inlinedAt: !4584)
!4701 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 362, column: 6)
!4702 = !DILocation(line: 362, column: 11, scope: !4701, inlinedAt: !4584)
!4703 = !DILocation(line: 362, column: 6, scope: !4580, inlinedAt: !4584)
!4704 = !DILocation(line: 362, column: 26, scope: !4701, inlinedAt: !4584)
!4705 = !DILocation(line: 363, column: 6, scope: !4706, inlinedAt: !4584)
!4706 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 363, column: 6)
!4707 = !DILocation(line: 363, column: 11, scope: !4706, inlinedAt: !4584)
!4708 = !DILocation(line: 363, column: 6, scope: !4580, inlinedAt: !4584)
!4709 = !DILocation(line: 363, column: 26, scope: !4706, inlinedAt: !4584)
!4710 = !DILocation(line: 364, column: 6, scope: !4711, inlinedAt: !4584)
!4711 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 364, column: 6)
!4712 = !DILocation(line: 364, column: 11, scope: !4711, inlinedAt: !4584)
!4713 = !DILocation(line: 364, column: 6, scope: !4580, inlinedAt: !4584)
!4714 = !DILocation(line: 364, column: 26, scope: !4711, inlinedAt: !4584)
!4715 = !DILocation(line: 365, column: 6, scope: !4716, inlinedAt: !4584)
!4716 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 365, column: 6)
!4717 = !DILocation(line: 365, column: 11, scope: !4716, inlinedAt: !4584)
!4718 = !DILocation(line: 365, column: 6, scope: !4580, inlinedAt: !4584)
!4719 = !DILocation(line: 365, column: 26, scope: !4716, inlinedAt: !4584)
!4720 = !DILocation(line: 366, column: 6, scope: !4721, inlinedAt: !4584)
!4721 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 366, column: 6)
!4722 = !DILocation(line: 366, column: 11, scope: !4721, inlinedAt: !4584)
!4723 = !DILocation(line: 366, column: 6, scope: !4580, inlinedAt: !4584)
!4724 = !DILocation(line: 366, column: 26, scope: !4721, inlinedAt: !4584)
!4725 = !DILocation(line: 367, column: 6, scope: !4726, inlinedAt: !4584)
!4726 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 367, column: 6)
!4727 = !DILocation(line: 367, column: 11, scope: !4726, inlinedAt: !4584)
!4728 = !DILocation(line: 367, column: 6, scope: !4580, inlinedAt: !4584)
!4729 = !DILocation(line: 367, column: 26, scope: !4726, inlinedAt: !4584)
!4730 = !DILocation(line: 368, column: 6, scope: !4731, inlinedAt: !4584)
!4731 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 368, column: 6)
!4732 = !DILocation(line: 368, column: 11, scope: !4731, inlinedAt: !4584)
!4733 = !DILocation(line: 368, column: 6, scope: !4580, inlinedAt: !4584)
!4734 = !DILocation(line: 368, column: 26, scope: !4731, inlinedAt: !4584)
!4735 = !DILocation(line: 369, column: 6, scope: !4736, inlinedAt: !4584)
!4736 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 369, column: 6)
!4737 = !DILocation(line: 369, column: 11, scope: !4736, inlinedAt: !4584)
!4738 = !DILocation(line: 369, column: 6, scope: !4580, inlinedAt: !4584)
!4739 = !DILocation(line: 369, column: 26, scope: !4736, inlinedAt: !4584)
!4740 = !DILocation(line: 370, column: 6, scope: !4741, inlinedAt: !4584)
!4741 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 370, column: 6)
!4742 = !DILocation(line: 370, column: 11, scope: !4741, inlinedAt: !4584)
!4743 = !DILocation(line: 370, column: 6, scope: !4580, inlinedAt: !4584)
!4744 = !DILocation(line: 370, column: 26, scope: !4741, inlinedAt: !4584)
!4745 = !DILocation(line: 371, column: 6, scope: !4746, inlinedAt: !4584)
!4746 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 371, column: 6)
!4747 = !DILocation(line: 371, column: 11, scope: !4746, inlinedAt: !4584)
!4748 = !DILocation(line: 371, column: 6, scope: !4580, inlinedAt: !4584)
!4749 = !DILocation(line: 371, column: 26, scope: !4746, inlinedAt: !4584)
!4750 = !DILocation(line: 372, column: 6, scope: !4751, inlinedAt: !4584)
!4751 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 372, column: 6)
!4752 = !DILocation(line: 372, column: 11, scope: !4751, inlinedAt: !4584)
!4753 = !DILocation(line: 372, column: 6, scope: !4580, inlinedAt: !4584)
!4754 = !DILocation(line: 372, column: 26, scope: !4751, inlinedAt: !4584)
!4755 = !DILocation(line: 373, column: 6, scope: !4756, inlinedAt: !4584)
!4756 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 373, column: 6)
!4757 = !DILocation(line: 373, column: 11, scope: !4756, inlinedAt: !4584)
!4758 = !DILocation(line: 373, column: 6, scope: !4580, inlinedAt: !4584)
!4759 = !DILocation(line: 373, column: 26, scope: !4756, inlinedAt: !4584)
!4760 = !DILocation(line: 374, column: 6, scope: !4761, inlinedAt: !4584)
!4761 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 374, column: 6)
!4762 = !DILocation(line: 374, column: 11, scope: !4761, inlinedAt: !4584)
!4763 = !DILocation(line: 374, column: 6, scope: !4580, inlinedAt: !4584)
!4764 = !DILocation(line: 374, column: 26, scope: !4761, inlinedAt: !4584)
!4765 = !DILocation(line: 375, column: 6, scope: !4766, inlinedAt: !4584)
!4766 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 375, column: 6)
!4767 = !DILocation(line: 375, column: 11, scope: !4766, inlinedAt: !4584)
!4768 = !DILocation(line: 375, column: 6, scope: !4580, inlinedAt: !4584)
!4769 = !DILocation(line: 375, column: 27, scope: !4766, inlinedAt: !4584)
!4770 = !DILocation(line: 376, column: 6, scope: !4771, inlinedAt: !4584)
!4771 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 376, column: 6)
!4772 = !DILocation(line: 376, column: 11, scope: !4771, inlinedAt: !4584)
!4773 = !DILocation(line: 376, column: 6, scope: !4580, inlinedAt: !4584)
!4774 = !DILocation(line: 376, column: 32, scope: !4771, inlinedAt: !4584)
!4775 = !DILocation(line: 377, column: 6, scope: !4776, inlinedAt: !4584)
!4776 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 377, column: 6)
!4777 = !DILocation(line: 377, column: 11, scope: !4776, inlinedAt: !4584)
!4778 = !DILocation(line: 377, column: 6, scope: !4580, inlinedAt: !4584)
!4779 = !DILocation(line: 377, column: 32, scope: !4776, inlinedAt: !4584)
!4780 = !DILocation(line: 378, column: 6, scope: !4781, inlinedAt: !4584)
!4781 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 378, column: 6)
!4782 = !DILocation(line: 378, column: 11, scope: !4781, inlinedAt: !4584)
!4783 = !DILocation(line: 378, column: 6, scope: !4580, inlinedAt: !4584)
!4784 = !DILocation(line: 378, column: 32, scope: !4781, inlinedAt: !4584)
!4785 = !DILocation(line: 379, column: 6, scope: !4786, inlinedAt: !4584)
!4786 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 379, column: 6)
!4787 = !DILocation(line: 379, column: 11, scope: !4786, inlinedAt: !4584)
!4788 = !DILocation(line: 379, column: 6, scope: !4580, inlinedAt: !4584)
!4789 = !DILocation(line: 379, column: 33, scope: !4786, inlinedAt: !4584)
!4790 = !DILocation(line: 380, column: 6, scope: !4791, inlinedAt: !4584)
!4791 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 380, column: 6)
!4792 = !DILocation(line: 380, column: 11, scope: !4791, inlinedAt: !4584)
!4793 = !DILocation(line: 380, column: 6, scope: !4580, inlinedAt: !4584)
!4794 = !DILocation(line: 380, column: 33, scope: !4791, inlinedAt: !4584)
!4795 = !DILocation(line: 381, column: 6, scope: !4796, inlinedAt: !4584)
!4796 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 381, column: 6)
!4797 = !DILocation(line: 381, column: 11, scope: !4796, inlinedAt: !4584)
!4798 = !DILocation(line: 381, column: 6, scope: !4580, inlinedAt: !4584)
!4799 = !DILocation(line: 381, column: 33, scope: !4796, inlinedAt: !4584)
!4800 = !DILocation(line: 382, column: 2, scope: !4801, inlinedAt: !4584)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !285, line: 382, column: 2)
!4802 = distinct !DILexicalBlock(scope: !4580, file: !285, line: 382, column: 2)
!4803 = !{i32 -2143510128, i32 -2143510099, i32 -2143510053, i32 -2143509995, i32 -2143509941, i32 -2143509887, i32 -2143509832, i32 -2143509801}
!4804 = !DILocation(line: 382, column: 2, scope: !4805, inlinedAt: !4584)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !285, line: 382, column: 2)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !285, line: 382, column: 2)
!4807 = !{i32 -2143509358, i32 -2143509351, i32 -2143509297, i32 -2143509266, i32 -2143509236}
!4808 = !DILocation(line: 382, column: 2, scope: !4806, inlinedAt: !4584)
!4809 = !DILocation(line: 386, column: 1, scope: !4580, inlinedAt: !4584)
!4810 = !DILocation(line: 547, column: 9, scope: !4560, inlinedAt: !4565)
!4811 = !DILocation(line: 549, column: 8, scope: !4812, inlinedAt: !4565)
!4812 = distinct !DILexicalBlock(scope: !4560, file: !285, line: 549, column: 7)
!4813 = !DILocation(line: 549, column: 7, scope: !4560, inlinedAt: !4565)
!4814 = !DILocation(line: 550, column: 4, scope: !4812, inlinedAt: !4565)
!4815 = !DILocation(line: 553, column: 33, scope: !4560, inlinedAt: !4565)
!4816 = !DILocation(line: 325, column: 6, scope: !4817, inlinedAt: !4578)
!4817 = distinct !DILexicalBlock(scope: !4574, file: !285, line: 325, column: 6)
!4818 = !DILocation(line: 325, column: 6, scope: !4574, inlinedAt: !4578)
!4819 = !DILocation(line: 326, column: 3, scope: !4817, inlinedAt: !4578)
!4820 = !DILocation(line: 332, column: 9, scope: !4574, inlinedAt: !4578)
!4821 = !DILocation(line: 332, column: 15, scope: !4574, inlinedAt: !4578)
!4822 = !DILocation(line: 332, column: 2, scope: !4574, inlinedAt: !4578)
!4823 = !DILocation(line: 336, column: 1, scope: !4574, inlinedAt: !4578)
!4824 = !DILocation(line: 553, column: 5, scope: !4560, inlinedAt: !4565)
!4825 = !DILocation(line: 553, column: 41, scope: !4560, inlinedAt: !4565)
!4826 = !DILocation(line: 554, column: 5, scope: !4560, inlinedAt: !4565)
!4827 = !DILocation(line: 554, column: 12, scope: !4560, inlinedAt: !4565)
!4828 = !DILocation(line: 448, column: 31, scope: !4555, inlinedAt: !4559)
!4829 = !DILocation(line: 448, column: 34, scope: !4555, inlinedAt: !4559)
!4830 = !DILocation(line: 448, column: 14, scope: !4555, inlinedAt: !4559)
!4831 = !DILocation(line: 450, column: 22, scope: !4555, inlinedAt: !4559)
!4832 = !DILocation(line: 450, column: 25, scope: !4555, inlinedAt: !4559)
!4833 = !DILocation(line: 450, column: 30, scope: !4555, inlinedAt: !4559)
!4834 = !DILocation(line: 450, column: 36, scope: !4555, inlinedAt: !4559)
!4835 = !DILocation(line: 450, column: 8, scope: !4555, inlinedAt: !4559)
!4836 = !DILocation(line: 450, column: 6, scope: !4555, inlinedAt: !4559)
!4837 = !DILocation(line: 451, column: 9, scope: !4555, inlinedAt: !4559)
!4838 = !DILocation(line: 552, column: 3, scope: !4560, inlinedAt: !4565)
!4839 = !DILocation(line: 557, column: 19, scope: !4562, inlinedAt: !4565)
!4840 = !DILocation(line: 557, column: 25, scope: !4562, inlinedAt: !4565)
!4841 = !DILocation(line: 557, column: 9, scope: !4562, inlinedAt: !4565)
!4842 = !DILocation(line: 557, column: 2, scope: !4562, inlinedAt: !4565)
!4843 = !DILocation(line: 558, column: 1, scope: !4562, inlinedAt: !4565)
!4844 = !DILocation(line: 591, column: 3, scope: !4566)
!4845 = !DILocation(line: 592, column: 19, scope: !4553)
!4846 = !DILocation(line: 592, column: 26, scope: !4553)
!4847 = !DILocation(line: 592, column: 9, scope: !4553)
!4848 = !DILocation(line: 592, column: 2, scope: !4553)
!4849 = !DILocation(line: 593, column: 1, scope: !4553)
!4850 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4851, file: !4851, line: 52, type: !4852, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4851 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!470, !470}
!4854 = !DILocalVariable(name: "overflow", arg: 1, scope: !4850, file: !4851, line: 52, type: !470)
!4855 = !DILocation(line: 52, column: 60, scope: !4850)
!4856 = !DILocation(line: 54, column: 9, scope: !4850)
!4857 = !DILocation(line: 54, column: 2, scope: !4850)
!4858 = distinct !DISubprogram(name: "get_order", scope: !4859, file: !4859, line: 29, type: !4860, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4859 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!112, !334}
!4862 = !DILocalVariable(name: "x", arg: 1, scope: !4863, file: !4864, line: 366, type: !345)
!4863 = distinct !DISubprogram(name: "fls64", scope: !4864, file: !4864, line: 366, type: !4865, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4864 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!112, !345}
!4867 = !DILocation(line: 366, column: 40, scope: !4863, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 46, column: 9, scope: !4858)
!4869 = !DILocalVariable(name: "bitpos", scope: !4863, file: !4864, line: 368, type: !112)
!4870 = !DILocation(line: 368, column: 6, scope: !4863, inlinedAt: !4868)
!4871 = !DILocalVariable(name: "size", arg: 1, scope: !4858, file: !4859, line: 29, type: !334)
!4872 = !DILocation(line: 29, column: 63, scope: !4858)
!4873 = !DILocation(line: 31, column: 27, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4858, file: !4859, line: 31, column: 6)
!4875 = !DILocation(line: 31, column: 6, scope: !4874)
!4876 = !DILocation(line: 31, column: 6, scope: !4858)
!4877 = !DILocation(line: 32, column: 8, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !4859, line: 32, column: 7)
!4879 = distinct !DILexicalBlock(scope: !4874, file: !4859, line: 31, column: 34)
!4880 = !DILocation(line: 32, column: 7, scope: !4879)
!4881 = !DILocation(line: 33, column: 4, scope: !4878)
!4882 = !DILocation(line: 35, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4879, file: !4859, line: 35, column: 7)
!4884 = !DILocation(line: 35, column: 12, scope: !4883)
!4885 = !DILocation(line: 35, column: 7, scope: !4879)
!4886 = !DILocation(line: 36, column: 4, scope: !4883)
!4887 = !DILocation(line: 38, column: 10, scope: !4879)
!4888 = !DILocation(line: 38, column: 28, scope: !4879)
!4889 = !DILocation(line: 38, column: 41, scope: !4879)
!4890 = !DILocation(line: 38, column: 3, scope: !4879)
!4891 = !DILocation(line: 41, column: 6, scope: !4858)
!4892 = !DILocation(line: 42, column: 7, scope: !4858)
!4893 = !DILocation(line: 46, column: 15, scope: !4858)
!4894 = !DILocation(line: 374, column: 2, scope: !4863, inlinedAt: !4868)
!4895 = !DILocation(line: 376, column: 14, scope: !4863, inlinedAt: !4868)
!4896 = !{i32 310781}
!4897 = !DILocation(line: 377, column: 9, scope: !4863, inlinedAt: !4868)
!4898 = !DILocation(line: 377, column: 16, scope: !4863, inlinedAt: !4868)
!4899 = !DILocation(line: 46, column: 2, scope: !4858)
!4900 = !DILocation(line: 48, column: 1, scope: !4858)
!4901 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4902, file: !4902, line: 30, type: !4467, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4902 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4903 = !DILocation(line: 366, column: 40, scope: !4863, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 32, column: 9, scope: !4901)
!4905 = !DILocation(line: 368, column: 6, scope: !4863, inlinedAt: !4904)
!4906 = !DILocalVariable(name: "n", arg: 1, scope: !4901, file: !4902, line: 30, type: !344)
!4907 = !DILocation(line: 30, column: 21, scope: !4901)
!4908 = !DILocation(line: 32, column: 15, scope: !4901)
!4909 = !DILocation(line: 374, column: 2, scope: !4863, inlinedAt: !4904)
!4910 = !DILocation(line: 376, column: 14, scope: !4863, inlinedAt: !4904)
!4911 = !DILocation(line: 377, column: 9, scope: !4863, inlinedAt: !4904)
!4912 = !DILocation(line: 377, column: 16, scope: !4863, inlinedAt: !4904)
!4913 = !DILocation(line: 32, column: 18, scope: !4901)
!4914 = !DILocation(line: 32, column: 2, scope: !4901)
!4915 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4916, file: !4916, line: 137, type: !4917, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4916 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!332, !1256, !3348, !631, !330}
!4919 = !DILocalVariable(name: "s", arg: 1, scope: !4915, file: !4916, line: 137, type: !1256)
!4920 = !DILocation(line: 137, column: 54, scope: !4915)
!4921 = !DILocalVariable(name: "object", arg: 2, scope: !4915, file: !4916, line: 137, type: !3348)
!4922 = !DILocation(line: 137, column: 69, scope: !4915)
!4923 = !DILocalVariable(name: "size", arg: 3, scope: !4915, file: !4916, line: 138, type: !631)
!4924 = !DILocation(line: 138, column: 12, scope: !4915)
!4925 = !DILocalVariable(name: "flags", arg: 4, scope: !4915, file: !4916, line: 138, type: !330)
!4926 = !DILocation(line: 138, column: 24, scope: !4915)
!4927 = !DILocation(line: 140, column: 17, scope: !4915)
!4928 = !DILocation(line: 140, column: 2, scope: !4915)
!4929 = distinct !DISubprogram(name: "pkg_temp_thermal_get_dev", scope: !3, file: !3, line: 96, type: !4930, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!465, !7}
!4932 = !DILocalVariable(name: "cpu", arg: 1, scope: !4929, file: !3, line: 96, type: !7)
!4933 = !DILocation(line: 96, column: 66, scope: !4929)
!4934 = !DILocalVariable(name: "id", scope: !4929, file: !3, line: 98, type: !112)
!4935 = !DILocation(line: 98, column: 6, scope: !4929)
!4936 = !DILocation(line: 98, column: 11, scope: !4929)
!4937 = !DILocation(line: 100, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 100, column: 6)
!4939 = !DILocation(line: 100, column: 9, scope: !4938)
!4940 = !DILocation(line: 100, column: 14, scope: !4938)
!4941 = !DILocation(line: 100, column: 17, scope: !4938)
!4942 = !DILocation(line: 100, column: 22, scope: !4938)
!4943 = !DILocation(line: 100, column: 20, scope: !4938)
!4944 = !DILocation(line: 100, column: 6, scope: !4929)
!4945 = !DILocation(line: 101, column: 10, scope: !4938)
!4946 = !DILocation(line: 101, column: 16, scope: !4938)
!4947 = !DILocation(line: 101, column: 3, scope: !4938)
!4948 = !DILocation(line: 102, column: 2, scope: !4929)
!4949 = !DILocation(line: 103, column: 1, scope: !4929)
!4950 = distinct !DISubprogram(name: "test_bit", scope: !4951, file: !4951, line: 132, type: !4952, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4951 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!470, !298, !4954}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4956)
!4956 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !334)
!4957 = !DILocalVariable(name: "nr", arg: 1, scope: !4958, file: !4864, line: 210, type: !298)
!4958 = distinct !DISubprogram(name: "variable_test_bit", scope: !4864, file: !4864, line: 210, type: !4952, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4959 = !DILocation(line: 210, column: 52, scope: !4958, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 135, column: 9, scope: !4950)
!4961 = !DILocalVariable(name: "addr", arg: 2, scope: !4958, file: !4864, line: 210, type: !4954)
!4962 = !DILocation(line: 210, column: 86, scope: !4958, inlinedAt: !4960)
!4963 = !DILocalVariable(name: "oldbit", scope: !4958, file: !4864, line: 212, type: !470)
!4964 = !DILocation(line: 212, column: 7, scope: !4958, inlinedAt: !4960)
!4965 = !DILocalVariable(name: "nr", arg: 1, scope: !4966, file: !4864, line: 204, type: !298)
!4966 = distinct !DISubprogram(name: "constant_test_bit", scope: !4864, file: !4864, line: 204, type: !4952, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4967 = !DILocation(line: 204, column: 52, scope: !4966, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 135, column: 9, scope: !4950)
!4969 = !DILocalVariable(name: "addr", arg: 2, scope: !4966, file: !4864, line: 204, type: !4954)
!4970 = !DILocation(line: 204, column: 86, scope: !4966, inlinedAt: !4968)
!4971 = !DILocalVariable(name: "v", arg: 1, scope: !4972, file: !4973, line: 69, type: !4976)
!4972 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4973, file: !4973, line: 69, type: !4974, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!4973 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4974 = !DISubroutineType(types: !4975)
!4975 = !{null, !4976, !631}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4978)
!4978 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4979 = !DILocation(line: 69, column: 73, scope: !4972, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 134, column: 2, scope: !4950)
!4981 = !DILocalVariable(name: "size", arg: 2, scope: !4972, file: !4973, line: 69, type: !631)
!4982 = !DILocation(line: 69, column: 83, scope: !4972, inlinedAt: !4980)
!4983 = !DILocalVariable(name: "nr", arg: 1, scope: !4950, file: !4951, line: 132, type: !298)
!4984 = !DILocation(line: 132, column: 34, scope: !4950)
!4985 = !DILocalVariable(name: "addr", arg: 2, scope: !4950, file: !4951, line: 132, type: !4954)
!4986 = !DILocation(line: 132, column: 68, scope: !4950)
!4987 = !DILocation(line: 134, column: 25, scope: !4950)
!4988 = !DILocation(line: 134, column: 32, scope: !4950)
!4989 = !DILocation(line: 134, column: 30, scope: !4950)
!4990 = !DILocation(line: 71, column: 19, scope: !4972, inlinedAt: !4980)
!4991 = !DILocation(line: 71, column: 22, scope: !4972, inlinedAt: !4980)
!4992 = !DILocation(line: 71, column: 2, scope: !4972, inlinedAt: !4980)
!4993 = !DILocation(line: 72, column: 2, scope: !4972, inlinedAt: !4980)
!4994 = !DILocation(line: 135, column: 9, scope: !4950)
!4995 = !DILocation(line: 206, column: 19, scope: !4966, inlinedAt: !4968)
!4996 = !DILocation(line: 206, column: 22, scope: !4966, inlinedAt: !4968)
!4997 = !DILocation(line: 206, column: 15, scope: !4966, inlinedAt: !4968)
!4998 = !DILocation(line: 207, column: 4, scope: !4966, inlinedAt: !4968)
!4999 = !DILocation(line: 207, column: 9, scope: !4966, inlinedAt: !4968)
!5000 = !DILocation(line: 207, column: 12, scope: !4966, inlinedAt: !4968)
!5001 = !DILocation(line: 206, column: 44, scope: !4966, inlinedAt: !4968)
!5002 = !DILocation(line: 207, column: 37, scope: !4966, inlinedAt: !4968)
!5003 = !DILocation(line: 217, column: 33, scope: !4958, inlinedAt: !4960)
!5004 = !DILocation(line: 217, column: 46, scope: !4958, inlinedAt: !4960)
!5005 = !DILocation(line: 214, column: 2, scope: !4958, inlinedAt: !4960)
!5006 = !{i32 -2147132192, i32 -2147132132}
!5007 = !DILocation(line: 219, column: 9, scope: !4958, inlinedAt: !4960)
!5008 = !DILocation(line: 135, column: 2, scope: !4950)
!5009 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !1599, file: !1599, line: 332, type: !5010, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !7, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!5013 = !DILocalVariable(name: "cpu", arg: 1, scope: !5009, file: !1599, line: 332, type: !7)
!5014 = !DILocation(line: 332, column: 49, scope: !5009)
!5015 = !DILocalVariable(name: "dstp", arg: 2, scope: !5009, file: !1599, line: 332, type: !5012)
!5016 = !DILocation(line: 332, column: 70, scope: !5009)
!5017 = !DILocation(line: 334, column: 24, scope: !5009)
!5018 = !DILocation(line: 334, column: 10, scope: !5009)
!5019 = !DILocation(line: 334, column: 30, scope: !5009)
!5020 = !DILocation(line: 334, column: 2, scope: !5009)
!5021 = !DILocation(line: 335, column: 1, scope: !5009)
!5022 = distinct !DISubprogram(name: "pkg_temp_thermal_device_add", scope: !3, file: !3, line: 329, type: !4243, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5023 = !DILocalVariable(name: "cpu", arg: 1, scope: !5022, file: !3, line: 329, type: !7)
!5024 = !DILocation(line: 329, column: 53, scope: !5022)
!5025 = !DILocalVariable(name: "id", scope: !5022, file: !3, line: 331, type: !112)
!5026 = !DILocation(line: 331, column: 6, scope: !5022)
!5027 = !DILocation(line: 331, column: 11, scope: !5022)
!5028 = !DILocalVariable(name: "tj_max", scope: !5022, file: !3, line: 332, type: !340)
!5029 = !DILocation(line: 332, column: 6, scope: !5022)
!5030 = !DILocalVariable(name: "eax", scope: !5022, file: !3, line: 332, type: !340)
!5031 = !DILocation(line: 332, column: 14, scope: !5022)
!5032 = !DILocalVariable(name: "ebx", scope: !5022, file: !3, line: 332, type: !340)
!5033 = !DILocation(line: 332, column: 19, scope: !5022)
!5034 = !DILocalVariable(name: "ecx", scope: !5022, file: !3, line: 332, type: !340)
!5035 = !DILocation(line: 332, column: 24, scope: !5022)
!5036 = !DILocalVariable(name: "edx", scope: !5022, file: !3, line: 332, type: !340)
!5037 = !DILocation(line: 332, column: 29, scope: !5022)
!5038 = !DILocalVariable(name: "zonedev", scope: !5022, file: !3, line: 333, type: !465)
!5039 = !DILocation(line: 333, column: 22, scope: !5022)
!5040 = !DILocalVariable(name: "thres_count", scope: !5022, file: !3, line: 334, type: !112)
!5041 = !DILocation(line: 334, column: 6, scope: !5022)
!5042 = !DILocalVariable(name: "err", scope: !5022, file: !3, line: 334, type: !112)
!5043 = !DILocation(line: 334, column: 19, scope: !5022)
!5044 = !DILocation(line: 336, column: 6, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 336, column: 6)
!5046 = !DILocation(line: 336, column: 12, scope: !5045)
!5047 = !DILocation(line: 336, column: 9, scope: !5045)
!5048 = !DILocation(line: 336, column: 6, scope: !5022)
!5049 = !DILocation(line: 337, column: 3, scope: !5045)
!5050 = !DILocation(line: 339, column: 2, scope: !5022)
!5051 = !DILocation(line: 340, column: 16, scope: !5022)
!5052 = !DILocation(line: 340, column: 20, scope: !5022)
!5053 = !DILocation(line: 340, column: 14, scope: !5022)
!5054 = !DILocation(line: 341, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 341, column: 6)
!5056 = !DILocation(line: 341, column: 6, scope: !5022)
!5057 = !DILocation(line: 342, column: 3, scope: !5055)
!5058 = !DILocalVariable(name: "__UNIQUE_ID___x209", scope: !5059, file: !3, line: 344, type: !112)
!5059 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 344, column: 16)
!5060 = !DILocation(line: 344, column: 16, scope: !5059)
!5061 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5062, file: !3, line: 344, type: !112)
!5062 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 344, column: 16)
!5063 = !DILocation(line: 344, column: 16, scope: !5062)
!5064 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5062, file: !3, line: 344, type: !112)
!5065 = !DILocalVariable(name: "__UNIQUE_ID___y210", scope: !5059, file: !3, line: 344, type: !112)
!5066 = !DILocation(line: 344, column: 14, scope: !5022)
!5067 = !DILocation(line: 346, column: 19, scope: !5022)
!5068 = !DILocation(line: 346, column: 8, scope: !5022)
!5069 = !DILocation(line: 346, column: 6, scope: !5022)
!5070 = !DILocation(line: 347, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 347, column: 6)
!5072 = !DILocation(line: 347, column: 6, scope: !5022)
!5073 = !DILocation(line: 348, column: 10, scope: !5071)
!5074 = !DILocation(line: 348, column: 3, scope: !5071)
!5075 = !DILocation(line: 350, column: 12, scope: !5022)
!5076 = !DILocation(line: 350, column: 10, scope: !5022)
!5077 = !DILocation(line: 351, column: 7, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 351, column: 6)
!5079 = !DILocation(line: 351, column: 6, scope: !5022)
!5080 = !DILocation(line: 352, column: 3, scope: !5078)
!5081 = !DILocation(line: 354, column: 2, scope: !5022)
!5082 = !DILocation(line: 354, column: 2, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 354, column: 2)
!5084 = !DILocation(line: 354, column: 2, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 354, column: 2)
!5086 = !DILocation(line: 355, column: 17, scope: !5022)
!5087 = !DILocation(line: 355, column: 2, scope: !5022)
!5088 = !DILocation(line: 355, column: 11, scope: !5022)
!5089 = !DILocation(line: 355, column: 15, scope: !5022)
!5090 = !DILocation(line: 356, column: 20, scope: !5022)
!5091 = !DILocation(line: 356, column: 2, scope: !5022)
!5092 = !DILocation(line: 356, column: 11, scope: !5022)
!5093 = !DILocation(line: 356, column: 18, scope: !5022)
!5094 = !DILocation(line: 358, column: 4, scope: !5022)
!5095 = !DILocation(line: 359, column: 5, scope: !5022)
!5096 = !DILocation(line: 359, column: 17, scope: !5022)
!5097 = !DILocation(line: 359, column: 4, scope: !5022)
!5098 = !DILocation(line: 360, column: 4, scope: !5022)
!5099 = !DILocation(line: 357, column: 19, scope: !5022)
!5100 = !DILocation(line: 357, column: 2, scope: !5022)
!5101 = !DILocation(line: 357, column: 11, scope: !5022)
!5102 = !DILocation(line: 357, column: 17, scope: !5022)
!5103 = !DILocation(line: 361, column: 13, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 361, column: 6)
!5105 = !DILocation(line: 361, column: 22, scope: !5104)
!5106 = !DILocation(line: 361, column: 6, scope: !5104)
!5107 = !DILocation(line: 361, column: 6, scope: !5022)
!5108 = !DILocation(line: 362, column: 17, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 361, column: 30)
!5110 = !DILocation(line: 362, column: 26, scope: !5109)
!5111 = !DILocation(line: 362, column: 9, scope: !5109)
!5112 = !DILocation(line: 362, column: 7, scope: !5109)
!5113 = !DILocation(line: 363, column: 9, scope: !5109)
!5114 = !DILocation(line: 363, column: 3, scope: !5109)
!5115 = !DILocation(line: 364, column: 10, scope: !5109)
!5116 = !DILocation(line: 364, column: 3, scope: !5109)
!5117 = !DILocation(line: 366, column: 35, scope: !5022)
!5118 = !DILocation(line: 366, column: 44, scope: !5022)
!5119 = !DILocation(line: 366, column: 8, scope: !5022)
!5120 = !DILocation(line: 366, column: 6, scope: !5022)
!5121 = !DILocation(line: 367, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 367, column: 6)
!5123 = !DILocation(line: 367, column: 6, scope: !5022)
!5124 = !DILocation(line: 368, column: 34, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 367, column: 11)
!5126 = !DILocation(line: 368, column: 43, scope: !5125)
!5127 = !DILocation(line: 368, column: 3, scope: !5125)
!5128 = !DILocation(line: 369, column: 9, scope: !5125)
!5129 = !DILocation(line: 369, column: 3, scope: !5125)
!5130 = !DILocation(line: 370, column: 10, scope: !5125)
!5131 = !DILocation(line: 370, column: 3, scope: !5125)
!5132 = !DILocation(line: 373, column: 2, scope: !5022)
!5133 = !DILocalVariable(name: "_l", scope: !5134, file: !3, line: 373, type: !344)
!5134 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 373, column: 2)
!5135 = !DILocation(line: 373, column: 2, scope: !5134)
!5136 = !DILocation(line: 376, column: 18, scope: !5022)
!5137 = !DILocation(line: 376, column: 24, scope: !5022)
!5138 = !DILocation(line: 376, column: 33, scope: !5022)
!5139 = !DILocation(line: 376, column: 2, scope: !5022)
!5140 = !DILocation(line: 377, column: 2, scope: !5022)
!5141 = !DILocation(line: 377, column: 2, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 377, column: 2)
!5143 = !DILocation(line: 377, column: 2, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 377, column: 2)
!5145 = !DILocation(line: 377, column: 2, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 377, column: 2)
!5147 = !{i32 -2142641588}
!5148 = !DILocation(line: 377, column: 2, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 377, column: 2)
!5150 = !DILocation(line: 378, column: 14, scope: !5022)
!5151 = !DILocation(line: 378, column: 2, scope: !5022)
!5152 = !DILocation(line: 378, column: 8, scope: !5022)
!5153 = !DILocation(line: 378, column: 12, scope: !5022)
!5154 = !DILocation(line: 379, column: 2, scope: !5022)
!5155 = !DILocation(line: 379, column: 2, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 379, column: 2)
!5157 = !DILocation(line: 379, column: 2, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 379, column: 2)
!5159 = !DILocation(line: 379, column: 2, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 379, column: 2)
!5161 = !{i32 -2142641178}
!5162 = !DILocation(line: 379, column: 2, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 379, column: 2)
!5164 = !DILocation(line: 380, column: 2, scope: !5022)
!5165 = !DILocation(line: 381, column: 1, scope: !5022)
!5166 = distinct !DISubprogram(name: "kasan_check_read", scope: !5167, file: !5167, line: 34, type: !5168, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5167 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!470, !4976, !7}
!5170 = !DILocalVariable(name: "p", arg: 1, scope: !5166, file: !5167, line: 34, type: !4976)
!5171 = !DILocation(line: 34, column: 58, scope: !5166)
!5172 = !DILocalVariable(name: "size", arg: 2, scope: !5166, file: !5167, line: 34, type: !7)
!5173 = !DILocation(line: 34, column: 74, scope: !5166)
!5174 = !DILocation(line: 36, column: 2, scope: !5166)
!5175 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5176, file: !5176, line: 178, type: !5177, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5176 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5177 = !DISubroutineType(types: !5178)
!5178 = !{null, !4976, !631, !112}
!5179 = !DILocalVariable(name: "ptr", arg: 1, scope: !5175, file: !5176, line: 178, type: !4976)
!5180 = !DILocation(line: 178, column: 60, scope: !5175)
!5181 = !DILocalVariable(name: "size", arg: 2, scope: !5175, file: !5176, line: 178, type: !631)
!5182 = !DILocation(line: 178, column: 72, scope: !5175)
!5183 = !DILocalVariable(name: "type", arg: 3, scope: !5175, file: !5176, line: 179, type: !112)
!5184 = !DILocation(line: 179, column: 15, scope: !5175)
!5185 = !DILocation(line: 179, column: 23, scope: !5175)
!5186 = distinct !DISubprogram(name: "set_bit", scope: !5187, file: !5187, line: 26, type: !5188, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5187 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5188 = !DISubroutineType(types: !5189)
!5189 = !{null, !298, !5190}
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!5191 = !DILocalVariable(name: "nr", arg: 1, scope: !5192, file: !4864, line: 52, type: !298)
!5192 = distinct !DISubprogram(name: "arch_set_bit", scope: !4864, file: !4864, line: 52, type: !5188, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5193 = !DILocation(line: 52, column: 19, scope: !5192, inlinedAt: !5194)
!5194 = distinct !DILocation(line: 29, column: 2, scope: !5186)
!5195 = !DILocalVariable(name: "addr", arg: 2, scope: !5192, file: !4864, line: 52, type: !5190)
!5196 = !DILocation(line: 52, column: 47, scope: !5192, inlinedAt: !5194)
!5197 = !DILocalVariable(name: "v", arg: 1, scope: !5198, file: !4973, line: 84, type: !4976)
!5198 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4973, file: !4973, line: 84, type: !4974, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5199 = !DILocation(line: 84, column: 74, scope: !5198, inlinedAt: !5200)
!5200 = distinct !DILocation(line: 28, column: 2, scope: !5186)
!5201 = !DILocalVariable(name: "size", arg: 2, scope: !5198, file: !4973, line: 84, type: !631)
!5202 = !DILocation(line: 84, column: 84, scope: !5198, inlinedAt: !5200)
!5203 = !DILocalVariable(name: "nr", arg: 1, scope: !5186, file: !5187, line: 26, type: !298)
!5204 = !DILocation(line: 26, column: 33, scope: !5186)
!5205 = !DILocalVariable(name: "addr", arg: 2, scope: !5186, file: !5187, line: 26, type: !5190)
!5206 = !DILocation(line: 26, column: 61, scope: !5186)
!5207 = !DILocation(line: 28, column: 26, scope: !5186)
!5208 = !DILocation(line: 28, column: 33, scope: !5186)
!5209 = !DILocation(line: 28, column: 31, scope: !5186)
!5210 = !DILocation(line: 86, column: 20, scope: !5198, inlinedAt: !5200)
!5211 = !DILocation(line: 86, column: 23, scope: !5198, inlinedAt: !5200)
!5212 = !DILocation(line: 86, column: 2, scope: !5198, inlinedAt: !5200)
!5213 = !DILocation(line: 87, column: 2, scope: !5198, inlinedAt: !5200)
!5214 = !DILocation(line: 29, column: 15, scope: !5186)
!5215 = !DILocation(line: 29, column: 19, scope: !5186)
!5216 = !DILocation(line: 54, column: 27, scope: !5217, inlinedAt: !5194)
!5217 = distinct !DILexicalBlock(scope: !5192, file: !4864, line: 54, column: 6)
!5218 = !DILocation(line: 54, column: 6, scope: !5217, inlinedAt: !5194)
!5219 = !DILocation(line: 54, column: 6, scope: !5192, inlinedAt: !5194)
!5220 = !DILocation(line: 56, column: 6, scope: !5221, inlinedAt: !5194)
!5221 = distinct !DILexicalBlock(scope: !5217, file: !4864, line: 54, column: 32)
!5222 = !DILocation(line: 57, column: 12, scope: !5221, inlinedAt: !5194)
!5223 = !DILocation(line: 55, column: 3, scope: !5221, inlinedAt: !5194)
!5224 = !{i32 -2147141440}
!5225 = !DILocation(line: 59, column: 2, scope: !5221, inlinedAt: !5194)
!5226 = !DILocation(line: 61, column: 8, scope: !5227, inlinedAt: !5194)
!5227 = distinct !DILexicalBlock(scope: !5217, file: !4864, line: 59, column: 9)
!5228 = !DILocation(line: 61, column: 32, scope: !5227, inlinedAt: !5194)
!5229 = !DILocation(line: 60, column: 3, scope: !5227, inlinedAt: !5194)
!5230 = !{i32 -2147141308}
!5231 = !DILocation(line: 30, column: 1, scope: !5186)
!5232 = distinct !DISubprogram(name: "cpumask_check", scope: !1599, file: !1599, line: 142, type: !5233, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!7, !7}
!5235 = !DILocalVariable(name: "cpu", arg: 1, scope: !5232, file: !1599, line: 142, type: !7)
!5236 = !DILocation(line: 142, column: 55, scope: !5232)
!5237 = !DILocation(line: 144, column: 20, scope: !5232)
!5238 = !DILocation(line: 144, column: 2, scope: !5232)
!5239 = !DILocation(line: 145, column: 9, scope: !5232)
!5240 = !DILocation(line: 145, column: 2, scope: !5232)
!5241 = distinct !DISubprogram(name: "kasan_check_write", scope: !5167, file: !5167, line: 38, type: !5168, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5242 = !DILocalVariable(name: "p", arg: 1, scope: !5241, file: !5167, line: 38, type: !4976)
!5243 = !DILocation(line: 38, column: 59, scope: !5241)
!5244 = !DILocalVariable(name: "size", arg: 2, scope: !5241, file: !5167, line: 38, type: !7)
!5245 = !DILocation(line: 38, column: 75, scope: !5241)
!5246 = !DILocation(line: 40, column: 2, scope: !5241)
!5247 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1599, file: !1599, line: 134, type: !5248, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{null, !7, !7}
!5250 = !DILocalVariable(name: "cpu", arg: 1, scope: !5247, file: !1599, line: 134, type: !7)
!5251 = !DILocation(line: 134, column: 51, scope: !5247)
!5252 = !DILocalVariable(name: "bits", arg: 2, scope: !5247, file: !1599, line: 134, type: !7)
!5253 = !DILocation(line: 134, column: 69, scope: !5247)
!5254 = !DILocation(line: 139, column: 1, scope: !5247)
!5255 = distinct !DISubprogram(name: "cpuid", scope: !2348, file: !2348, line: 615, type: !5256, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !7, !420, !420, !420, !420}
!5258 = !DILocalVariable(name: "op", arg: 1, scope: !5255, file: !2348, line: 615, type: !7)
!5259 = !DILocation(line: 615, column: 39, scope: !5255)
!5260 = !DILocalVariable(name: "eax", arg: 2, scope: !5255, file: !2348, line: 616, type: !420)
!5261 = !DILocation(line: 616, column: 19, scope: !5255)
!5262 = !DILocalVariable(name: "ebx", arg: 3, scope: !5255, file: !2348, line: 616, type: !420)
!5263 = !DILocation(line: 616, column: 38, scope: !5255)
!5264 = !DILocalVariable(name: "ecx", arg: 4, scope: !5255, file: !2348, line: 617, type: !420)
!5265 = !DILocation(line: 617, column: 19, scope: !5255)
!5266 = !DILocalVariable(name: "edx", arg: 5, scope: !5255, file: !2348, line: 617, type: !420)
!5267 = !DILocation(line: 617, column: 38, scope: !5255)
!5268 = !DILocation(line: 619, column: 9, scope: !5255)
!5269 = !DILocation(line: 619, column: 3, scope: !5255)
!5270 = !DILocation(line: 619, column: 7, scope: !5255)
!5271 = !DILocation(line: 620, column: 3, scope: !5255)
!5272 = !DILocation(line: 620, column: 7, scope: !5255)
!5273 = !DILocation(line: 621, column: 10, scope: !5255)
!5274 = !DILocation(line: 621, column: 15, scope: !5255)
!5275 = !DILocation(line: 621, column: 20, scope: !5255)
!5276 = !DILocation(line: 621, column: 25, scope: !5255)
!5277 = !DILocation(line: 621, column: 2, scope: !5255)
!5278 = !DILocation(line: 622, column: 1, scope: !5255)
!5279 = distinct !DISubprogram(name: "get_tj_max", scope: !3, file: !3, line: 109, type: !5280, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!112, !112, !1648}
!5282 = !DILocalVariable(name: "cpu", arg: 1, scope: !5279, file: !3, line: 109, type: !112)
!5283 = !DILocation(line: 109, column: 27, scope: !5279)
!5284 = !DILocalVariable(name: "tj_max", arg: 2, scope: !5279, file: !3, line: 109, type: !1648)
!5285 = !DILocation(line: 109, column: 37, scope: !5279)
!5286 = !DILocalVariable(name: "eax", scope: !5279, file: !3, line: 111, type: !340)
!5287 = !DILocation(line: 111, column: 6, scope: !5279)
!5288 = !DILocalVariable(name: "edx", scope: !5279, file: !3, line: 111, type: !340)
!5289 = !DILocation(line: 111, column: 11, scope: !5279)
!5290 = !DILocalVariable(name: "val", scope: !5279, file: !3, line: 111, type: !340)
!5291 = !DILocation(line: 111, column: 16, scope: !5279)
!5292 = !DILocalVariable(name: "err", scope: !5279, file: !3, line: 112, type: !112)
!5293 = !DILocation(line: 112, column: 6, scope: !5279)
!5294 = !DILocation(line: 114, column: 26, scope: !5279)
!5295 = !DILocation(line: 114, column: 8, scope: !5279)
!5296 = !DILocation(line: 114, column: 6, scope: !5279)
!5297 = !DILocation(line: 115, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 115, column: 6)
!5299 = !DILocation(line: 115, column: 6, scope: !5279)
!5300 = !DILocation(line: 116, column: 10, scope: !5298)
!5301 = !DILocation(line: 116, column: 3, scope: !5298)
!5302 = !DILocation(line: 118, column: 9, scope: !5279)
!5303 = !DILocation(line: 118, column: 13, scope: !5279)
!5304 = !DILocation(line: 118, column: 20, scope: !5279)
!5305 = !DILocation(line: 118, column: 6, scope: !5279)
!5306 = !DILocation(line: 119, column: 12, scope: !5279)
!5307 = !DILocation(line: 119, column: 16, scope: !5279)
!5308 = !DILocation(line: 119, column: 3, scope: !5279)
!5309 = !DILocation(line: 119, column: 10, scope: !5279)
!5310 = !DILocation(line: 121, column: 9, scope: !5279)
!5311 = !DILocation(line: 121, column: 2, scope: !5279)
!5312 = !DILocation(line: 122, column: 1, scope: !5279)
!5313 = distinct !DISubprogram(name: "kzalloc", scope: !285, file: !285, line: 662, type: !4563, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5314 = !DILocation(line: 445, column: 72, scope: !4555, inlinedAt: !5315)
!5315 = distinct !DILocation(line: 552, column: 10, scope: !4560, inlinedAt: !5316)
!5316 = distinct !DILocation(line: 664, column: 9, scope: !5313)
!5317 = !DILocation(line: 446, column: 9, scope: !4555, inlinedAt: !5315)
!5318 = !DILocation(line: 446, column: 23, scope: !4555, inlinedAt: !5315)
!5319 = !DILocation(line: 448, column: 8, scope: !4555, inlinedAt: !5315)
!5320 = !DILocation(line: 318, column: 67, scope: !4574, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 553, column: 20, scope: !4560, inlinedAt: !5316)
!5322 = !DILocation(line: 346, column: 58, scope: !4580, inlinedAt: !5323)
!5323 = distinct !DILocation(line: 547, column: 11, scope: !4560, inlinedAt: !5316)
!5324 = !DILocation(line: 472, column: 28, scope: !4586, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 481, column: 9, scope: !4591, inlinedAt: !5326)
!5326 = distinct !DILocation(line: 545, column: 11, scope: !4593, inlinedAt: !5316)
!5327 = !DILocation(line: 472, column: 40, scope: !4586, inlinedAt: !5325)
!5328 = !DILocation(line: 472, column: 60, scope: !4586, inlinedAt: !5325)
!5329 = !DILocation(line: 478, column: 51, scope: !4591, inlinedAt: !5326)
!5330 = !DILocation(line: 478, column: 63, scope: !4591, inlinedAt: !5326)
!5331 = !DILocation(line: 480, column: 15, scope: !4591, inlinedAt: !5326)
!5332 = !DILocation(line: 538, column: 45, scope: !4562, inlinedAt: !5316)
!5333 = !DILocation(line: 538, column: 57, scope: !4562, inlinedAt: !5316)
!5334 = !DILocation(line: 542, column: 16, scope: !4560, inlinedAt: !5316)
!5335 = !DILocalVariable(name: "size", arg: 1, scope: !5313, file: !285, line: 662, type: !631)
!5336 = !DILocation(line: 662, column: 36, scope: !5313)
!5337 = !DILocalVariable(name: "flags", arg: 2, scope: !5313, file: !285, line: 662, type: !330)
!5338 = !DILocation(line: 662, column: 48, scope: !5313)
!5339 = !DILocation(line: 664, column: 17, scope: !5313)
!5340 = !DILocation(line: 664, column: 23, scope: !5313)
!5341 = !DILocation(line: 664, column: 29, scope: !5313)
!5342 = !DILocation(line: 540, column: 27, scope: !4561, inlinedAt: !5316)
!5343 = !DILocation(line: 540, column: 6, scope: !4561, inlinedAt: !5316)
!5344 = !DILocation(line: 540, column: 6, scope: !4562, inlinedAt: !5316)
!5345 = !DILocation(line: 544, column: 7, scope: !4593, inlinedAt: !5316)
!5346 = !DILocation(line: 544, column: 12, scope: !4593, inlinedAt: !5316)
!5347 = !DILocation(line: 544, column: 7, scope: !4560, inlinedAt: !5316)
!5348 = !DILocation(line: 545, column: 25, scope: !4593, inlinedAt: !5316)
!5349 = !DILocation(line: 545, column: 31, scope: !4593, inlinedAt: !5316)
!5350 = !DILocation(line: 480, column: 33, scope: !4591, inlinedAt: !5326)
!5351 = !DILocation(line: 480, column: 23, scope: !4591, inlinedAt: !5326)
!5352 = !DILocation(line: 481, column: 29, scope: !4591, inlinedAt: !5326)
!5353 = !DILocation(line: 481, column: 35, scope: !4591, inlinedAt: !5326)
!5354 = !DILocation(line: 481, column: 42, scope: !4591, inlinedAt: !5326)
!5355 = !DILocation(line: 474, column: 23, scope: !4586, inlinedAt: !5325)
!5356 = !DILocation(line: 474, column: 29, scope: !4586, inlinedAt: !5325)
!5357 = !DILocation(line: 474, column: 36, scope: !4586, inlinedAt: !5325)
!5358 = !DILocation(line: 474, column: 9, scope: !4586, inlinedAt: !5325)
!5359 = !DILocation(line: 545, column: 4, scope: !4593, inlinedAt: !5316)
!5360 = !DILocation(line: 547, column: 25, scope: !4560, inlinedAt: !5316)
!5361 = !DILocation(line: 348, column: 7, scope: !4656, inlinedAt: !5323)
!5362 = !DILocation(line: 348, column: 6, scope: !4580, inlinedAt: !5323)
!5363 = !DILocation(line: 349, column: 3, scope: !4656, inlinedAt: !5323)
!5364 = !DILocation(line: 351, column: 6, scope: !4660, inlinedAt: !5323)
!5365 = !DILocation(line: 351, column: 11, scope: !4660, inlinedAt: !5323)
!5366 = !DILocation(line: 351, column: 6, scope: !4580, inlinedAt: !5323)
!5367 = !DILocation(line: 352, column: 3, scope: !4660, inlinedAt: !5323)
!5368 = !DILocation(line: 354, column: 32, scope: !4665, inlinedAt: !5323)
!5369 = !DILocation(line: 354, column: 37, scope: !4665, inlinedAt: !5323)
!5370 = !DILocation(line: 354, column: 42, scope: !4665, inlinedAt: !5323)
!5371 = !DILocation(line: 354, column: 45, scope: !4665, inlinedAt: !5323)
!5372 = !DILocation(line: 354, column: 50, scope: !4665, inlinedAt: !5323)
!5373 = !DILocation(line: 354, column: 6, scope: !4580, inlinedAt: !5323)
!5374 = !DILocation(line: 355, column: 3, scope: !4665, inlinedAt: !5323)
!5375 = !DILocation(line: 356, column: 32, scope: !4673, inlinedAt: !5323)
!5376 = !DILocation(line: 356, column: 37, scope: !4673, inlinedAt: !5323)
!5377 = !DILocation(line: 356, column: 43, scope: !4673, inlinedAt: !5323)
!5378 = !DILocation(line: 356, column: 46, scope: !4673, inlinedAt: !5323)
!5379 = !DILocation(line: 356, column: 51, scope: !4673, inlinedAt: !5323)
!5380 = !DILocation(line: 356, column: 6, scope: !4580, inlinedAt: !5323)
!5381 = !DILocation(line: 357, column: 3, scope: !4673, inlinedAt: !5323)
!5382 = !DILocation(line: 358, column: 6, scope: !4681, inlinedAt: !5323)
!5383 = !DILocation(line: 358, column: 11, scope: !4681, inlinedAt: !5323)
!5384 = !DILocation(line: 358, column: 6, scope: !4580, inlinedAt: !5323)
!5385 = !DILocation(line: 358, column: 26, scope: !4681, inlinedAt: !5323)
!5386 = !DILocation(line: 359, column: 6, scope: !4686, inlinedAt: !5323)
!5387 = !DILocation(line: 359, column: 11, scope: !4686, inlinedAt: !5323)
!5388 = !DILocation(line: 359, column: 6, scope: !4580, inlinedAt: !5323)
!5389 = !DILocation(line: 359, column: 26, scope: !4686, inlinedAt: !5323)
!5390 = !DILocation(line: 360, column: 6, scope: !4691, inlinedAt: !5323)
!5391 = !DILocation(line: 360, column: 11, scope: !4691, inlinedAt: !5323)
!5392 = !DILocation(line: 360, column: 6, scope: !4580, inlinedAt: !5323)
!5393 = !DILocation(line: 360, column: 26, scope: !4691, inlinedAt: !5323)
!5394 = !DILocation(line: 361, column: 6, scope: !4696, inlinedAt: !5323)
!5395 = !DILocation(line: 361, column: 11, scope: !4696, inlinedAt: !5323)
!5396 = !DILocation(line: 361, column: 6, scope: !4580, inlinedAt: !5323)
!5397 = !DILocation(line: 361, column: 26, scope: !4696, inlinedAt: !5323)
!5398 = !DILocation(line: 362, column: 6, scope: !4701, inlinedAt: !5323)
!5399 = !DILocation(line: 362, column: 11, scope: !4701, inlinedAt: !5323)
!5400 = !DILocation(line: 362, column: 6, scope: !4580, inlinedAt: !5323)
!5401 = !DILocation(line: 362, column: 26, scope: !4701, inlinedAt: !5323)
!5402 = !DILocation(line: 363, column: 6, scope: !4706, inlinedAt: !5323)
!5403 = !DILocation(line: 363, column: 11, scope: !4706, inlinedAt: !5323)
!5404 = !DILocation(line: 363, column: 6, scope: !4580, inlinedAt: !5323)
!5405 = !DILocation(line: 363, column: 26, scope: !4706, inlinedAt: !5323)
!5406 = !DILocation(line: 364, column: 6, scope: !4711, inlinedAt: !5323)
!5407 = !DILocation(line: 364, column: 11, scope: !4711, inlinedAt: !5323)
!5408 = !DILocation(line: 364, column: 6, scope: !4580, inlinedAt: !5323)
!5409 = !DILocation(line: 364, column: 26, scope: !4711, inlinedAt: !5323)
!5410 = !DILocation(line: 365, column: 6, scope: !4716, inlinedAt: !5323)
!5411 = !DILocation(line: 365, column: 11, scope: !4716, inlinedAt: !5323)
!5412 = !DILocation(line: 365, column: 6, scope: !4580, inlinedAt: !5323)
!5413 = !DILocation(line: 365, column: 26, scope: !4716, inlinedAt: !5323)
!5414 = !DILocation(line: 366, column: 6, scope: !4721, inlinedAt: !5323)
!5415 = !DILocation(line: 366, column: 11, scope: !4721, inlinedAt: !5323)
!5416 = !DILocation(line: 366, column: 6, scope: !4580, inlinedAt: !5323)
!5417 = !DILocation(line: 366, column: 26, scope: !4721, inlinedAt: !5323)
!5418 = !DILocation(line: 367, column: 6, scope: !4726, inlinedAt: !5323)
!5419 = !DILocation(line: 367, column: 11, scope: !4726, inlinedAt: !5323)
!5420 = !DILocation(line: 367, column: 6, scope: !4580, inlinedAt: !5323)
!5421 = !DILocation(line: 367, column: 26, scope: !4726, inlinedAt: !5323)
!5422 = !DILocation(line: 368, column: 6, scope: !4731, inlinedAt: !5323)
!5423 = !DILocation(line: 368, column: 11, scope: !4731, inlinedAt: !5323)
!5424 = !DILocation(line: 368, column: 6, scope: !4580, inlinedAt: !5323)
!5425 = !DILocation(line: 368, column: 26, scope: !4731, inlinedAt: !5323)
!5426 = !DILocation(line: 369, column: 6, scope: !4736, inlinedAt: !5323)
!5427 = !DILocation(line: 369, column: 11, scope: !4736, inlinedAt: !5323)
!5428 = !DILocation(line: 369, column: 6, scope: !4580, inlinedAt: !5323)
!5429 = !DILocation(line: 369, column: 26, scope: !4736, inlinedAt: !5323)
!5430 = !DILocation(line: 370, column: 6, scope: !4741, inlinedAt: !5323)
!5431 = !DILocation(line: 370, column: 11, scope: !4741, inlinedAt: !5323)
!5432 = !DILocation(line: 370, column: 6, scope: !4580, inlinedAt: !5323)
!5433 = !DILocation(line: 370, column: 26, scope: !4741, inlinedAt: !5323)
!5434 = !DILocation(line: 371, column: 6, scope: !4746, inlinedAt: !5323)
!5435 = !DILocation(line: 371, column: 11, scope: !4746, inlinedAt: !5323)
!5436 = !DILocation(line: 371, column: 6, scope: !4580, inlinedAt: !5323)
!5437 = !DILocation(line: 371, column: 26, scope: !4746, inlinedAt: !5323)
!5438 = !DILocation(line: 372, column: 6, scope: !4751, inlinedAt: !5323)
!5439 = !DILocation(line: 372, column: 11, scope: !4751, inlinedAt: !5323)
!5440 = !DILocation(line: 372, column: 6, scope: !4580, inlinedAt: !5323)
!5441 = !DILocation(line: 372, column: 26, scope: !4751, inlinedAt: !5323)
!5442 = !DILocation(line: 373, column: 6, scope: !4756, inlinedAt: !5323)
!5443 = !DILocation(line: 373, column: 11, scope: !4756, inlinedAt: !5323)
!5444 = !DILocation(line: 373, column: 6, scope: !4580, inlinedAt: !5323)
!5445 = !DILocation(line: 373, column: 26, scope: !4756, inlinedAt: !5323)
!5446 = !DILocation(line: 374, column: 6, scope: !4761, inlinedAt: !5323)
!5447 = !DILocation(line: 374, column: 11, scope: !4761, inlinedAt: !5323)
!5448 = !DILocation(line: 374, column: 6, scope: !4580, inlinedAt: !5323)
!5449 = !DILocation(line: 374, column: 26, scope: !4761, inlinedAt: !5323)
!5450 = !DILocation(line: 375, column: 6, scope: !4766, inlinedAt: !5323)
!5451 = !DILocation(line: 375, column: 11, scope: !4766, inlinedAt: !5323)
!5452 = !DILocation(line: 375, column: 6, scope: !4580, inlinedAt: !5323)
!5453 = !DILocation(line: 375, column: 27, scope: !4766, inlinedAt: !5323)
!5454 = !DILocation(line: 376, column: 6, scope: !4771, inlinedAt: !5323)
!5455 = !DILocation(line: 376, column: 11, scope: !4771, inlinedAt: !5323)
!5456 = !DILocation(line: 376, column: 6, scope: !4580, inlinedAt: !5323)
!5457 = !DILocation(line: 376, column: 32, scope: !4771, inlinedAt: !5323)
!5458 = !DILocation(line: 377, column: 6, scope: !4776, inlinedAt: !5323)
!5459 = !DILocation(line: 377, column: 11, scope: !4776, inlinedAt: !5323)
!5460 = !DILocation(line: 377, column: 6, scope: !4580, inlinedAt: !5323)
!5461 = !DILocation(line: 377, column: 32, scope: !4776, inlinedAt: !5323)
!5462 = !DILocation(line: 378, column: 6, scope: !4781, inlinedAt: !5323)
!5463 = !DILocation(line: 378, column: 11, scope: !4781, inlinedAt: !5323)
!5464 = !DILocation(line: 378, column: 6, scope: !4580, inlinedAt: !5323)
!5465 = !DILocation(line: 378, column: 32, scope: !4781, inlinedAt: !5323)
!5466 = !DILocation(line: 379, column: 6, scope: !4786, inlinedAt: !5323)
!5467 = !DILocation(line: 379, column: 11, scope: !4786, inlinedAt: !5323)
!5468 = !DILocation(line: 379, column: 6, scope: !4580, inlinedAt: !5323)
!5469 = !DILocation(line: 379, column: 33, scope: !4786, inlinedAt: !5323)
!5470 = !DILocation(line: 380, column: 6, scope: !4791, inlinedAt: !5323)
!5471 = !DILocation(line: 380, column: 11, scope: !4791, inlinedAt: !5323)
!5472 = !DILocation(line: 380, column: 6, scope: !4580, inlinedAt: !5323)
!5473 = !DILocation(line: 380, column: 33, scope: !4791, inlinedAt: !5323)
!5474 = !DILocation(line: 381, column: 6, scope: !4796, inlinedAt: !5323)
!5475 = !DILocation(line: 381, column: 11, scope: !4796, inlinedAt: !5323)
!5476 = !DILocation(line: 381, column: 6, scope: !4580, inlinedAt: !5323)
!5477 = !DILocation(line: 381, column: 33, scope: !4796, inlinedAt: !5323)
!5478 = !DILocation(line: 382, column: 2, scope: !4801, inlinedAt: !5323)
!5479 = !DILocation(line: 382, column: 2, scope: !4805, inlinedAt: !5323)
!5480 = !DILocation(line: 382, column: 2, scope: !4806, inlinedAt: !5323)
!5481 = !DILocation(line: 386, column: 1, scope: !4580, inlinedAt: !5323)
!5482 = !DILocation(line: 547, column: 9, scope: !4560, inlinedAt: !5316)
!5483 = !DILocation(line: 549, column: 8, scope: !4812, inlinedAt: !5316)
!5484 = !DILocation(line: 549, column: 7, scope: !4560, inlinedAt: !5316)
!5485 = !DILocation(line: 550, column: 4, scope: !4812, inlinedAt: !5316)
!5486 = !DILocation(line: 553, column: 33, scope: !4560, inlinedAt: !5316)
!5487 = !DILocation(line: 325, column: 6, scope: !4817, inlinedAt: !5321)
!5488 = !DILocation(line: 325, column: 6, scope: !4574, inlinedAt: !5321)
!5489 = !DILocation(line: 326, column: 3, scope: !4817, inlinedAt: !5321)
!5490 = !DILocation(line: 332, column: 9, scope: !4574, inlinedAt: !5321)
!5491 = !DILocation(line: 332, column: 15, scope: !4574, inlinedAt: !5321)
!5492 = !DILocation(line: 332, column: 2, scope: !4574, inlinedAt: !5321)
!5493 = !DILocation(line: 336, column: 1, scope: !4574, inlinedAt: !5321)
!5494 = !DILocation(line: 553, column: 5, scope: !4560, inlinedAt: !5316)
!5495 = !DILocation(line: 553, column: 41, scope: !4560, inlinedAt: !5316)
!5496 = !DILocation(line: 554, column: 5, scope: !4560, inlinedAt: !5316)
!5497 = !DILocation(line: 554, column: 12, scope: !4560, inlinedAt: !5316)
!5498 = !DILocation(line: 448, column: 31, scope: !4555, inlinedAt: !5315)
!5499 = !DILocation(line: 448, column: 34, scope: !4555, inlinedAt: !5315)
!5500 = !DILocation(line: 448, column: 14, scope: !4555, inlinedAt: !5315)
!5501 = !DILocation(line: 450, column: 22, scope: !4555, inlinedAt: !5315)
!5502 = !DILocation(line: 450, column: 25, scope: !4555, inlinedAt: !5315)
!5503 = !DILocation(line: 450, column: 30, scope: !4555, inlinedAt: !5315)
!5504 = !DILocation(line: 450, column: 36, scope: !4555, inlinedAt: !5315)
!5505 = !DILocation(line: 450, column: 8, scope: !4555, inlinedAt: !5315)
!5506 = !DILocation(line: 450, column: 6, scope: !4555, inlinedAt: !5315)
!5507 = !DILocation(line: 451, column: 9, scope: !4555, inlinedAt: !5315)
!5508 = !DILocation(line: 552, column: 3, scope: !4560, inlinedAt: !5316)
!5509 = !DILocation(line: 557, column: 19, scope: !4562, inlinedAt: !5316)
!5510 = !DILocation(line: 557, column: 25, scope: !4562, inlinedAt: !5316)
!5511 = !DILocation(line: 557, column: 9, scope: !4562, inlinedAt: !5316)
!5512 = !DILocation(line: 557, column: 2, scope: !4562, inlinedAt: !5316)
!5513 = !DILocation(line: 558, column: 1, scope: !4562, inlinedAt: !5316)
!5514 = !DILocation(line: 664, column: 2, scope: !5313)
!5515 = distinct !DISubprogram(name: "__init_work", scope: !297, file: !297, line: 215, type: !5516, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !497, !112}
!5518 = !DILocalVariable(name: "work", arg: 1, scope: !5515, file: !297, line: 215, type: !497)
!5519 = !DILocation(line: 215, column: 52, scope: !5515)
!5520 = !DILocalVariable(name: "onstack", arg: 2, scope: !5515, file: !297, line: 215, type: !112)
!5521 = !DILocation(line: 215, column: 62, scope: !5515)
!5522 = !DILocation(line: 215, column: 73, scope: !5515)
!5523 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5524, file: !5524, line: 33, type: !5525, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5524 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5525 = !DISubroutineType(types: !5526)
!5526 = !{null, !349}
!5527 = !DILocalVariable(name: "list", arg: 1, scope: !5523, file: !5524, line: 33, type: !349)
!5528 = !DILocation(line: 33, column: 53, scope: !5523)
!5529 = !DILocation(line: 35, column: 2, scope: !5523)
!5530 = !DILocation(line: 35, column: 2, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5523, file: !5524, line: 35, column: 2)
!5532 = !DILocation(line: 35, column: 2, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5531, file: !5524, line: 35, column: 2)
!5534 = !DILocation(line: 35, column: 2, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5531, file: !5524, line: 35, column: 2)
!5536 = !DILocation(line: 36, column: 15, scope: !5523)
!5537 = !DILocation(line: 36, column: 2, scope: !5523)
!5538 = !DILocation(line: 36, column: 8, scope: !5523)
!5539 = !DILocation(line: 36, column: 13, scope: !5523)
!5540 = !DILocation(line: 37, column: 1, scope: !5523)
!5541 = distinct !DISubprogram(name: "pkg_temp_thermal_threshold_work_fn", scope: !3, file: !3, line: 261, type: !495, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5542 = !DILocalVariable(name: "work", arg: 1, scope: !5541, file: !3, line: 261, type: !497)
!5543 = !DILocation(line: 261, column: 68, scope: !5541)
!5544 = !DILocalVariable(name: "tzone", scope: !5541, file: !3, line: 263, type: !521)
!5545 = !DILocation(line: 263, column: 30, scope: !5541)
!5546 = !DILocalVariable(name: "cpu", scope: !5541, file: !3, line: 264, type: !112)
!5547 = !DILocation(line: 264, column: 6, scope: !5541)
!5548 = !DILocalVariable(name: "zonedev", scope: !5541, file: !3, line: 265, type: !465)
!5549 = !DILocation(line: 265, column: 22, scope: !5541)
!5550 = !DILocalVariable(name: "msr_val", scope: !5541, file: !3, line: 266, type: !344)
!5551 = !DILocation(line: 266, column: 6, scope: !5541)
!5552 = !DILocalVariable(name: "wr_val", scope: !5541, file: !3, line: 266, type: !344)
!5553 = !DILocation(line: 266, column: 15, scope: !5541)
!5554 = !DILocation(line: 268, column: 2, scope: !5541)
!5555 = !DILocation(line: 269, column: 2, scope: !5541)
!5556 = !DILocation(line: 269, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 269, column: 2)
!5558 = !DILocation(line: 269, column: 2, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 269, column: 2)
!5560 = !DILocation(line: 269, column: 2, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 269, column: 2)
!5562 = !{i32 -2142661731}
!5563 = !DILocation(line: 269, column: 2, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 269, column: 2)
!5565 = !DILocation(line: 270, column: 2, scope: !5541)
!5566 = !DILocation(line: 272, column: 37, scope: !5541)
!5567 = !DILocation(line: 272, column: 12, scope: !5541)
!5568 = !DILocation(line: 272, column: 10, scope: !5541)
!5569 = !DILocation(line: 273, column: 7, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 273, column: 6)
!5571 = !DILocation(line: 273, column: 6, scope: !5541)
!5572 = !DILocation(line: 274, column: 3, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 273, column: 16)
!5574 = !DILocation(line: 274, column: 3, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 274, column: 3)
!5576 = !DILocation(line: 274, column: 3, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 274, column: 3)
!5578 = !DILocation(line: 274, column: 3, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 274, column: 3)
!5580 = !{i32 -2142661321}
!5581 = !DILocation(line: 274, column: 3, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 274, column: 3)
!5583 = !DILocation(line: 275, column: 3, scope: !5573)
!5584 = !DILocation(line: 276, column: 3, scope: !5573)
!5585 = !DILocation(line: 278, column: 2, scope: !5541)
!5586 = !DILocation(line: 278, column: 11, scope: !5541)
!5587 = !DILocation(line: 278, column: 26, scope: !5541)
!5588 = !DILocation(line: 280, column: 2, scope: !5541)
!5589 = !DILocation(line: 280, column: 2, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 280, column: 2)
!5591 = !DILocation(line: 281, column: 11, scope: !5541)
!5592 = !DILocation(line: 281, column: 19, scope: !5541)
!5593 = !DILocation(line: 281, column: 9, scope: !5541)
!5594 = !DILocation(line: 282, column: 6, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 282, column: 6)
!5596 = !DILocation(line: 282, column: 16, scope: !5595)
!5597 = !DILocation(line: 282, column: 13, scope: !5595)
!5598 = !DILocation(line: 282, column: 6, scope: !5541)
!5599 = !DILocation(line: 283, column: 41, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 282, column: 25)
!5601 = !DILocation(line: 283, column: 3, scope: !5600)
!5602 = !DILocation(line: 284, column: 11, scope: !5600)
!5603 = !DILocation(line: 284, column: 20, scope: !5600)
!5604 = !DILocation(line: 284, column: 9, scope: !5600)
!5605 = !DILocation(line: 285, column: 2, scope: !5600)
!5606 = !DILocation(line: 287, column: 2, scope: !5541)
!5607 = !DILocation(line: 288, column: 2, scope: !5541)
!5608 = !DILocation(line: 288, column: 2, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 288, column: 2)
!5610 = !DILocation(line: 288, column: 2, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 288, column: 2)
!5612 = !DILocation(line: 288, column: 2, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 288, column: 2)
!5614 = !{i32 -2142660792}
!5615 = !DILocation(line: 288, column: 2, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 288, column: 2)
!5617 = !DILocation(line: 294, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 294, column: 6)
!5619 = !DILocation(line: 294, column: 6, scope: !5541)
!5620 = !DILocation(line: 295, column: 30, scope: !5618)
!5621 = !DILocation(line: 295, column: 3, scope: !5618)
!5622 = !DILocation(line: 297, column: 2, scope: !5541)
!5623 = !DILocation(line: 298, column: 1, scope: !5541)
!5624 = distinct !DISubprogram(name: "IS_ERR", scope: !5625, file: !5625, line: 34, type: !5626, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5625 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5626 = !DISubroutineType(types: !5627)
!5627 = !{!470, !3348}
!5628 = !DILocalVariable(name: "ptr", arg: 1, scope: !5624, file: !5625, line: 34, type: !3348)
!5629 = !DILocation(line: 34, column: 60, scope: !5624)
!5630 = !DILocation(line: 36, column: 9, scope: !5624)
!5631 = !DILocation(line: 36, column: 2, scope: !5624)
!5632 = distinct !DISubprogram(name: "PTR_ERR", scope: !5625, file: !5625, line: 29, type: !5633, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!298, !3348}
!5635 = !DILocalVariable(name: "ptr", arg: 1, scope: !5632, file: !5625, line: 29, type: !3348)
!5636 = !DILocation(line: 29, column: 61, scope: !5632)
!5637 = !DILocation(line: 31, column: 16, scope: !5632)
!5638 = !DILocation(line: 31, column: 9, scope: !5632)
!5639 = !DILocation(line: 31, column: 2, scope: !5632)
!5640 = distinct !DISubprogram(name: "paravirt_read_msr", scope: !5641, file: !5641, line: 163, type: !5642, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5641 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!344, !7}
!5644 = !DILocalVariable(name: "msr", arg: 1, scope: !5640, file: !5641, line: 163, type: !7)
!5645 = !DILocation(line: 163, column: 46, scope: !5640)
!5646 = !DILocalVariable(name: "__ret", scope: !5647, file: !5641, line: 165, type: !344)
!5647 = distinct !DILexicalBlock(scope: !5640, file: !5641, line: 165, column: 9)
!5648 = !DILocation(line: 165, column: 9, scope: !5647)
!5649 = !DILocalVariable(name: "__edi", scope: !5647, file: !5641, line: 165, type: !334)
!5650 = !DILocalVariable(name: "__esi", scope: !5647, file: !5641, line: 165, type: !334)
!5651 = !DILocalVariable(name: "__edx", scope: !5647, file: !5641, line: 165, type: !334)
!5652 = !DILocalVariable(name: "__ecx", scope: !5647, file: !5641, line: 165, type: !334)
!5653 = !DILocalVariable(name: "__eax", scope: !5647, file: !5641, line: 165, type: !334)
!5654 = !DILocation(line: 165, column: 9, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5656, file: !5641, line: 165, column: 9)
!5656 = distinct !DILexicalBlock(scope: !5647, file: !5641, line: 165, column: 9)
!5657 = !{i32 -2145978204, i32 -2145975789, i32 -2145975555, i32 -2145975504, i32 -2145975476, i32 -2145975451, i32 -2145975767, i32 -2145975754, i32 -2145975316, i32 -2145975197, i32 -2145975662, i32 -2145975635, i32 -2145975607, i32 -2145975577}
!5658 = !DILocalVariable(name: "__mask", scope: !5659, file: !5641, line: 165, type: !334)
!5659 = distinct !DILexicalBlock(scope: !5655, file: !5641, line: 165, column: 9)
!5660 = !DILocation(line: 165, column: 9, scope: !5659)
!5661 = !DILocation(line: 165, column: 9, scope: !5656)
!5662 = !DILocation(line: 165, column: 2, scope: !5640)
!5663 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5641, file: !5641, line: 656, type: !440, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5664 = !DILocalVariable(name: "__edi", scope: !5665, file: !5641, line: 658, type: !334)
!5665 = distinct !DILexicalBlock(scope: !5663, file: !5641, line: 658, column: 2)
!5666 = !DILocation(line: 658, column: 2, scope: !5665)
!5667 = !DILocalVariable(name: "__esi", scope: !5665, file: !5641, line: 658, type: !334)
!5668 = !DILocalVariable(name: "__edx", scope: !5665, file: !5641, line: 658, type: !334)
!5669 = !DILocalVariable(name: "__ecx", scope: !5665, file: !5641, line: 658, type: !334)
!5670 = !DILocalVariable(name: "__eax", scope: !5665, file: !5641, line: 658, type: !334)
!5671 = !{i32 -2145770084, i32 -2145769352, i32 -2145769118, i32 -2145769067, i32 -2145769039, i32 -2145769014, i32 -2145769330, i32 -2145769317, i32 -2145768879, i32 -2145768760, i32 -2145769225, i32 -2145769198, i32 -2145769170, i32 -2145769140}
!5672 = !DILocation(line: 659, column: 1, scope: !5663)
!5673 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5641, file: !5641, line: 661, type: !440, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5674 = !DILocalVariable(name: "__edi", scope: !5675, file: !5641, line: 663, type: !334)
!5675 = distinct !DILexicalBlock(scope: !5673, file: !5641, line: 663, column: 2)
!5676 = !DILocation(line: 663, column: 2, scope: !5675)
!5677 = !DILocalVariable(name: "__esi", scope: !5675, file: !5641, line: 663, type: !334)
!5678 = !DILocalVariable(name: "__edx", scope: !5675, file: !5641, line: 663, type: !334)
!5679 = !DILocalVariable(name: "__ecx", scope: !5675, file: !5641, line: 663, type: !334)
!5680 = !DILocalVariable(name: "__eax", scope: !5675, file: !5641, line: 663, type: !334)
!5681 = !{i32 -2145767500, i32 -2145766770, i32 -2145766536, i32 -2145766485, i32 -2145766457, i32 -2145766432, i32 -2145766748, i32 -2145766735, i32 -2145766297, i32 -2145766178, i32 -2145766643, i32 -2145766616, i32 -2145766588, i32 -2145766558}
!5682 = !DILocation(line: 664, column: 1, scope: !5673)
!5683 = distinct !DISubprogram(name: "__cpuid", scope: !5641, file: !5641, line: 94, type: !5684, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{null, !420, !420, !420, !420}
!5686 = !DILocalVariable(name: "eax", arg: 1, scope: !5683, file: !5641, line: 94, type: !420)
!5687 = !DILocation(line: 94, column: 42, scope: !5683)
!5688 = !DILocalVariable(name: "ebx", arg: 2, scope: !5683, file: !5641, line: 94, type: !420)
!5689 = !DILocation(line: 94, column: 61, scope: !5683)
!5690 = !DILocalVariable(name: "ecx", arg: 3, scope: !5683, file: !5641, line: 95, type: !420)
!5691 = !DILocation(line: 95, column: 21, scope: !5683)
!5692 = !DILocalVariable(name: "edx", arg: 4, scope: !5683, file: !5641, line: 95, type: !420)
!5693 = !DILocation(line: 95, column: 40, scope: !5683)
!5694 = !DILocalVariable(name: "__edi", scope: !5695, file: !5641, line: 97, type: !334)
!5695 = distinct !DILexicalBlock(scope: !5683, file: !5641, line: 97, column: 2)
!5696 = !DILocation(line: 97, column: 2, scope: !5695)
!5697 = !DILocalVariable(name: "__esi", scope: !5695, file: !5641, line: 97, type: !334)
!5698 = !DILocalVariable(name: "__edx", scope: !5695, file: !5641, line: 97, type: !334)
!5699 = !DILocalVariable(name: "__ecx", scope: !5695, file: !5641, line: 97, type: !334)
!5700 = !DILocalVariable(name: "__eax", scope: !5695, file: !5641, line: 97, type: !334)
!5701 = !{i32 -2146025343, i32 -2146024363, i32 -2146024129, i32 -2146024078, i32 -2146024050, i32 -2146024025, i32 -2146024341, i32 -2146024328, i32 -2146023890, i32 -2146023771, i32 -2146024236, i32 -2146024209, i32 -2146024181, i32 -2146024151}
!5702 = !DILocation(line: 98, column: 1, scope: !5683)
!5703 = distinct !DISubprogram(name: "rdmsr_safe_on_cpu", scope: !5704, file: !5704, line: 380, type: !5705, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5704 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/lizy2001/genbc/linux")
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!112, !7, !340, !1648, !1648}
!5707 = !DILocalVariable(name: "cpu", arg: 1, scope: !5703, file: !5704, line: 380, type: !7)
!5708 = !DILocation(line: 380, column: 50, scope: !5703)
!5709 = !DILocalVariable(name: "msr_no", arg: 2, scope: !5703, file: !5704, line: 380, type: !340)
!5710 = !DILocation(line: 380, column: 59, scope: !5703)
!5711 = !DILocalVariable(name: "l", arg: 3, scope: !5703, file: !5704, line: 381, type: !1648)
!5712 = !DILocation(line: 381, column: 14, scope: !5703)
!5713 = !DILocalVariable(name: "h", arg: 4, scope: !5703, file: !5704, line: 381, type: !1648)
!5714 = !DILocation(line: 381, column: 22, scope: !5703)
!5715 = !DILocalVariable(name: "_err", scope: !5716, file: !5704, line: 383, type: !112)
!5716 = distinct !DILexicalBlock(scope: !5703, file: !5704, line: 383, column: 9)
!5717 = !DILocation(line: 383, column: 9, scope: !5716)
!5718 = !DILocalVariable(name: "_l", scope: !5716, file: !5704, line: 383, type: !344)
!5719 = !DILocation(line: 383, column: 2, scope: !5703)
!5720 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !5641, file: !5641, line: 174, type: !5721, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!344, !7, !993}
!5723 = !DILocalVariable(name: "msr", arg: 1, scope: !5720, file: !5641, line: 174, type: !7)
!5724 = !DILocation(line: 174, column: 51, scope: !5720)
!5725 = !DILocalVariable(name: "err", arg: 2, scope: !5720, file: !5641, line: 174, type: !993)
!5726 = !DILocation(line: 174, column: 61, scope: !5720)
!5727 = !DILocalVariable(name: "__ret", scope: !5728, file: !5641, line: 176, type: !344)
!5728 = distinct !DILexicalBlock(scope: !5720, file: !5641, line: 176, column: 9)
!5729 = !DILocation(line: 176, column: 9, scope: !5728)
!5730 = !DILocalVariable(name: "__edi", scope: !5728, file: !5641, line: 176, type: !334)
!5731 = !DILocalVariable(name: "__esi", scope: !5728, file: !5641, line: 176, type: !334)
!5732 = !DILocalVariable(name: "__edx", scope: !5728, file: !5641, line: 176, type: !334)
!5733 = !DILocalVariable(name: "__ecx", scope: !5728, file: !5641, line: 176, type: !334)
!5734 = !DILocalVariable(name: "__eax", scope: !5728, file: !5641, line: 176, type: !334)
!5735 = !DILocation(line: 176, column: 9, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !5641, line: 176, column: 9)
!5737 = distinct !DILexicalBlock(scope: !5728, file: !5641, line: 176, column: 9)
!5738 = !{i32 -2145965582, i32 -2145963071, i32 -2145962837, i32 -2145962786, i32 -2145962758, i32 -2145962733, i32 -2145963049, i32 -2145963036, i32 -2145962598, i32 -2145962479, i32 -2145962944, i32 -2145962917, i32 -2145962889, i32 -2145962859}
!5739 = !DILocalVariable(name: "__mask", scope: !5740, file: !5641, line: 176, type: !334)
!5740 = distinct !DILexicalBlock(scope: !5736, file: !5641, line: 176, column: 9)
!5741 = !DILocation(line: 176, column: 9, scope: !5740)
!5742 = !DILocation(line: 176, column: 9, scope: !5737)
!5743 = !DILocation(line: 176, column: 2, scope: !5720)
!5744 = distinct !DISubprogram(name: "wrmsrl", scope: !5641, file: !5641, line: 202, type: !5745, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{null, !7, !344}
!5747 = !DILocalVariable(name: "msr", arg: 1, scope: !5744, file: !5641, line: 202, type: !7)
!5748 = !DILocation(line: 202, column: 36, scope: !5744)
!5749 = !DILocalVariable(name: "val", arg: 2, scope: !5744, file: !5641, line: 202, type: !344)
!5750 = !DILocation(line: 202, column: 45, scope: !5744)
!5751 = !DILocation(line: 204, column: 2, scope: !5744)
!5752 = !DILocation(line: 204, column: 2, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5744, file: !5641, line: 204, column: 2)
!5754 = !DILocation(line: 205, column: 1, scope: !5744)
!5755 = distinct !DISubprogram(name: "enable_pkg_thres_interrupt", scope: !3, file: !3, line: 234, type: !440, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5756 = !DILocalVariable(name: "thres_0", scope: !5755, file: !3, line: 236, type: !398)
!5757 = !DILocation(line: 236, column: 5, scope: !5755)
!5758 = !DILocalVariable(name: "thres_1", scope: !5755, file: !3, line: 236, type: !398)
!5759 = !DILocation(line: 236, column: 14, scope: !5755)
!5760 = !DILocalVariable(name: "l", scope: !5755, file: !3, line: 237, type: !340)
!5761 = !DILocation(line: 237, column: 6, scope: !5755)
!5762 = !DILocalVariable(name: "h", scope: !5755, file: !3, line: 237, type: !340)
!5763 = !DILocation(line: 237, column: 9, scope: !5755)
!5764 = !DILocation(line: 239, column: 2, scope: !5755)
!5765 = !DILocalVariable(name: "_l", scope: !5766, file: !3, line: 239, type: !344)
!5766 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 239, column: 2)
!5767 = !DILocation(line: 239, column: 2, scope: !5766)
!5768 = !DILocation(line: 241, column: 13, scope: !5755)
!5769 = !DILocation(line: 241, column: 15, scope: !5755)
!5770 = !DILocation(line: 241, column: 40, scope: !5755)
!5771 = !DILocation(line: 241, column: 12, scope: !5755)
!5772 = !DILocation(line: 241, column: 10, scope: !5755)
!5773 = !DILocation(line: 242, column: 13, scope: !5755)
!5774 = !DILocation(line: 242, column: 15, scope: !5755)
!5775 = !DILocation(line: 242, column: 40, scope: !5755)
!5776 = !DILocation(line: 242, column: 12, scope: !5755)
!5777 = !DILocation(line: 242, column: 10, scope: !5755)
!5778 = !DILocation(line: 243, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 243, column: 6)
!5780 = !DILocation(line: 243, column: 6, scope: !5755)
!5781 = !DILocation(line: 244, column: 5, scope: !5779)
!5782 = !DILocation(line: 244, column: 3, scope: !5779)
!5783 = !DILocation(line: 245, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 245, column: 6)
!5785 = !DILocation(line: 245, column: 6, scope: !5755)
!5786 = !DILocation(line: 246, column: 5, scope: !5784)
!5787 = !DILocation(line: 246, column: 3, scope: !5784)
!5788 = !DILocation(line: 247, column: 2, scope: !5755)
!5789 = !DILocation(line: 247, column: 2, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 247, column: 2)
!5791 = !DILocation(line: 248, column: 1, scope: !5755)
!5792 = distinct !DISubprogram(name: "paravirt_write_msr", scope: !5641, file: !5641, line: 168, type: !5793, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{null, !7, !7, !7}
!5795 = !DILocalVariable(name: "msr", arg: 1, scope: !5792, file: !5641, line: 168, type: !7)
!5796 = !DILocation(line: 168, column: 48, scope: !5792)
!5797 = !DILocalVariable(name: "low", arg: 2, scope: !5792, file: !5641, line: 169, type: !7)
!5798 = !DILocation(line: 169, column: 20, scope: !5792)
!5799 = !DILocalVariable(name: "high", arg: 3, scope: !5792, file: !5641, line: 169, type: !7)
!5800 = !DILocation(line: 169, column: 34, scope: !5792)
!5801 = !DILocalVariable(name: "__edi", scope: !5802, file: !5641, line: 171, type: !334)
!5802 = distinct !DILexicalBlock(scope: !5792, file: !5641, line: 171, column: 2)
!5803 = !DILocation(line: 171, column: 2, scope: !5802)
!5804 = !DILocalVariable(name: "__esi", scope: !5802, file: !5641, line: 171, type: !334)
!5805 = !DILocalVariable(name: "__edx", scope: !5802, file: !5641, line: 171, type: !334)
!5806 = !DILocalVariable(name: "__ecx", scope: !5802, file: !5641, line: 171, type: !334)
!5807 = !DILocalVariable(name: "__eax", scope: !5802, file: !5641, line: 171, type: !334)
!5808 = !{i32 -2145973565, i32 -2145968536, i32 -2145968302, i32 -2145968251, i32 -2145968223, i32 -2145968198, i32 -2145968514, i32 -2145968501, i32 -2145968063, i32 -2145967944, i32 -2145968409, i32 -2145968382, i32 -2145968354, i32 -2145968324}
!5809 = !DILocation(line: 172, column: 1, scope: !5792)
!5810 = distinct !DISubprogram(name: "sys_get_curr_temp", scope: !3, file: !3, line: 124, type: !4032, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5811 = !DILocalVariable(name: "tzd", arg: 1, scope: !5810, file: !3, line: 124, type: !521)
!5812 = !DILocation(line: 124, column: 58, scope: !5810)
!5813 = !DILocalVariable(name: "temp", arg: 2, scope: !5810, file: !3, line: 124, type: !993)
!5814 = !DILocation(line: 124, column: 68, scope: !5810)
!5815 = !DILocalVariable(name: "zonedev", scope: !5810, file: !3, line: 126, type: !465)
!5816 = !DILocation(line: 126, column: 22, scope: !5810)
!5817 = !DILocation(line: 126, column: 32, scope: !5810)
!5818 = !DILocation(line: 126, column: 37, scope: !5810)
!5819 = !DILocalVariable(name: "eax", scope: !5810, file: !3, line: 127, type: !340)
!5820 = !DILocation(line: 127, column: 6, scope: !5810)
!5821 = !DILocalVariable(name: "edx", scope: !5810, file: !3, line: 127, type: !340)
!5822 = !DILocation(line: 127, column: 11, scope: !5810)
!5823 = !DILocation(line: 129, column: 15, scope: !5810)
!5824 = !DILocation(line: 129, column: 24, scope: !5810)
!5825 = !DILocation(line: 129, column: 2, scope: !5810)
!5826 = !DILocation(line: 131, column: 6, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 131, column: 6)
!5828 = !DILocation(line: 131, column: 10, scope: !5827)
!5829 = !DILocation(line: 131, column: 6, scope: !5810)
!5830 = !DILocation(line: 132, column: 11, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 131, column: 24)
!5832 = !DILocation(line: 132, column: 20, scope: !5831)
!5833 = !DILocation(line: 132, column: 31, scope: !5831)
!5834 = !DILocation(line: 132, column: 35, scope: !5831)
!5835 = !DILocation(line: 132, column: 42, scope: !5831)
!5836 = !DILocation(line: 132, column: 50, scope: !5831)
!5837 = !DILocation(line: 132, column: 27, scope: !5831)
!5838 = !DILocation(line: 132, column: 4, scope: !5831)
!5839 = !DILocation(line: 132, column: 9, scope: !5831)
!5840 = !DILocation(line: 133, column: 3, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 133, column: 3)
!5842 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 133, column: 3)
!5843 = !DILocation(line: 133, column: 3, scope: !5842)
!5844 = !DILocation(line: 134, column: 3, scope: !5831)
!5845 = !DILocation(line: 136, column: 2, scope: !5810)
!5846 = !DILocation(line: 137, column: 1, scope: !5810)
!5847 = distinct !DISubprogram(name: "sys_get_trip_type", scope: !3, file: !3, line: 213, type: !4044, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5848 = !DILocalVariable(name: "thermal", arg: 1, scope: !5847, file: !3, line: 213, type: !521)
!5849 = !DILocation(line: 213, column: 58, scope: !5847)
!5850 = !DILocalVariable(name: "trip", arg: 2, scope: !5847, file: !3, line: 213, type: !112)
!5851 = !DILocation(line: 213, column: 71, scope: !5847)
!5852 = !DILocalVariable(name: "type", arg: 3, scope: !5847, file: !3, line: 214, type: !4046)
!5853 = !DILocation(line: 214, column: 33, scope: !5847)
!5854 = !DILocation(line: 216, column: 3, scope: !5847)
!5855 = !DILocation(line: 216, column: 8, scope: !5847)
!5856 = !DILocation(line: 217, column: 2, scope: !5847)
!5857 = distinct !DISubprogram(name: "sys_get_trip_temp", scope: !3, file: !3, line: 139, type: !4049, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5858 = !DILocalVariable(name: "tzd", arg: 1, scope: !5857, file: !3, line: 139, type: !521)
!5859 = !DILocation(line: 139, column: 58, scope: !5857)
!5860 = !DILocalVariable(name: "trip", arg: 2, scope: !5857, file: !3, line: 140, type: !112)
!5861 = !DILocation(line: 140, column: 13, scope: !5857)
!5862 = !DILocalVariable(name: "temp", arg: 3, scope: !5857, file: !3, line: 140, type: !993)
!5863 = !DILocation(line: 140, column: 24, scope: !5857)
!5864 = !DILocalVariable(name: "zonedev", scope: !5857, file: !3, line: 142, type: !465)
!5865 = !DILocation(line: 142, column: 22, scope: !5857)
!5866 = !DILocation(line: 142, column: 32, scope: !5857)
!5867 = !DILocation(line: 142, column: 37, scope: !5857)
!5868 = !DILocalVariable(name: "thres_reg_value", scope: !5857, file: !3, line: 143, type: !334)
!5869 = !DILocation(line: 143, column: 16, scope: !5857)
!5870 = !DILocalVariable(name: "mask", scope: !5857, file: !3, line: 144, type: !340)
!5871 = !DILocation(line: 144, column: 6, scope: !5857)
!5872 = !DILocalVariable(name: "shift", scope: !5857, file: !3, line: 144, type: !340)
!5873 = !DILocation(line: 144, column: 12, scope: !5857)
!5874 = !DILocalVariable(name: "eax", scope: !5857, file: !3, line: 144, type: !340)
!5875 = !DILocation(line: 144, column: 19, scope: !5857)
!5876 = !DILocalVariable(name: "edx", scope: !5857, file: !3, line: 144, type: !340)
!5877 = !DILocation(line: 144, column: 24, scope: !5857)
!5878 = !DILocalVariable(name: "ret", scope: !5857, file: !3, line: 145, type: !112)
!5879 = !DILocation(line: 145, column: 6, scope: !5857)
!5880 = !DILocation(line: 147, column: 6, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 147, column: 6)
!5882 = !DILocation(line: 147, column: 11, scope: !5881)
!5883 = !DILocation(line: 147, column: 6, scope: !5857)
!5884 = !DILocation(line: 148, column: 3, scope: !5881)
!5885 = !DILocation(line: 150, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 150, column: 6)
!5887 = !DILocation(line: 150, column: 6, scope: !5857)
!5888 = !DILocation(line: 151, column: 8, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 150, column: 12)
!5890 = !DILocation(line: 152, column: 9, scope: !5889)
!5891 = !DILocation(line: 153, column: 2, scope: !5889)
!5892 = !DILocation(line: 154, column: 8, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 153, column: 9)
!5894 = !DILocation(line: 155, column: 9, scope: !5893)
!5895 = !DILocation(line: 158, column: 21, scope: !5857)
!5896 = !DILocation(line: 158, column: 30, scope: !5857)
!5897 = !DILocation(line: 158, column: 8, scope: !5857)
!5898 = !DILocation(line: 158, column: 6, scope: !5857)
!5899 = !DILocation(line: 160, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 160, column: 6)
!5901 = !DILocation(line: 160, column: 10, scope: !5900)
!5902 = !DILocation(line: 160, column: 6, scope: !5857)
!5903 = !DILocation(line: 161, column: 10, scope: !5900)
!5904 = !DILocation(line: 161, column: 3, scope: !5900)
!5905 = !DILocation(line: 163, column: 21, scope: !5857)
!5906 = !DILocation(line: 163, column: 27, scope: !5857)
!5907 = !DILocation(line: 163, column: 25, scope: !5857)
!5908 = !DILocation(line: 163, column: 36, scope: !5857)
!5909 = !DILocation(line: 163, column: 33, scope: !5857)
!5910 = !DILocation(line: 163, column: 20, scope: !5857)
!5911 = !DILocation(line: 163, column: 18, scope: !5857)
!5912 = !DILocation(line: 164, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 164, column: 6)
!5914 = !DILocation(line: 164, column: 6, scope: !5857)
!5915 = !DILocation(line: 165, column: 11, scope: !5913)
!5916 = !DILocation(line: 165, column: 20, scope: !5913)
!5917 = !DILocation(line: 165, column: 29, scope: !5913)
!5918 = !DILocation(line: 165, column: 45, scope: !5913)
!5919 = !DILocation(line: 165, column: 27, scope: !5913)
!5920 = !DILocation(line: 165, column: 4, scope: !5913)
!5921 = !DILocation(line: 165, column: 9, scope: !5913)
!5922 = !DILocation(line: 165, column: 3, scope: !5913)
!5923 = !DILocation(line: 167, column: 4, scope: !5913)
!5924 = !DILocation(line: 167, column: 9, scope: !5913)
!5925 = !DILocation(line: 168, column: 2, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 168, column: 2)
!5927 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 168, column: 2)
!5928 = !DILocation(line: 168, column: 2, scope: !5927)
!5929 = !DILocation(line: 170, column: 2, scope: !5857)
!5930 = !DILocation(line: 171, column: 1, scope: !5857)
!5931 = distinct !DISubprogram(name: "sys_set_trip_temp", scope: !3, file: !3, line: 174, type: !4036, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!5932 = !DILocalVariable(name: "tzd", arg: 1, scope: !5931, file: !3, line: 174, type: !521)
!5933 = !DILocation(line: 174, column: 47, scope: !5931)
!5934 = !DILocalVariable(name: "trip", arg: 2, scope: !5931, file: !3, line: 174, type: !112)
!5935 = !DILocation(line: 174, column: 56, scope: !5931)
!5936 = !DILocalVariable(name: "temp", arg: 3, scope: !5931, file: !3, line: 174, type: !112)
!5937 = !DILocation(line: 174, column: 66, scope: !5931)
!5938 = !DILocalVariable(name: "zonedev", scope: !5931, file: !3, line: 176, type: !465)
!5939 = !DILocation(line: 176, column: 22, scope: !5931)
!5940 = !DILocation(line: 176, column: 32, scope: !5931)
!5941 = !DILocation(line: 176, column: 37, scope: !5931)
!5942 = !DILocalVariable(name: "l", scope: !5931, file: !3, line: 177, type: !340)
!5943 = !DILocation(line: 177, column: 6, scope: !5931)
!5944 = !DILocalVariable(name: "h", scope: !5931, file: !3, line: 177, type: !340)
!5945 = !DILocation(line: 177, column: 9, scope: !5931)
!5946 = !DILocalVariable(name: "mask", scope: !5931, file: !3, line: 177, type: !340)
!5947 = !DILocation(line: 177, column: 12, scope: !5931)
!5948 = !DILocalVariable(name: "shift", scope: !5931, file: !3, line: 177, type: !340)
!5949 = !DILocation(line: 177, column: 18, scope: !5931)
!5950 = !DILocalVariable(name: "intr", scope: !5931, file: !3, line: 177, type: !340)
!5951 = !DILocation(line: 177, column: 25, scope: !5931)
!5952 = !DILocalVariable(name: "ret", scope: !5931, file: !3, line: 178, type: !112)
!5953 = !DILocation(line: 178, column: 6, scope: !5931)
!5954 = !DILocation(line: 180, column: 6, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 180, column: 6)
!5956 = !DILocation(line: 180, column: 11, scope: !5955)
!5957 = !DILocation(line: 180, column: 34, scope: !5955)
!5958 = !DILocation(line: 180, column: 37, scope: !5955)
!5959 = !DILocation(line: 180, column: 45, scope: !5955)
!5960 = !DILocation(line: 180, column: 54, scope: !5955)
!5961 = !DILocation(line: 180, column: 42, scope: !5955)
!5962 = !DILocation(line: 180, column: 6, scope: !5931)
!5963 = !DILocation(line: 181, column: 3, scope: !5955)
!5964 = !DILocation(line: 183, column: 21, scope: !5931)
!5965 = !DILocation(line: 183, column: 30, scope: !5931)
!5966 = !DILocation(line: 183, column: 8, scope: !5931)
!5967 = !DILocation(line: 183, column: 6, scope: !5931)
!5968 = !DILocation(line: 185, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 185, column: 6)
!5970 = !DILocation(line: 185, column: 10, scope: !5969)
!5971 = !DILocation(line: 185, column: 6, scope: !5931)
!5972 = !DILocation(line: 186, column: 10, scope: !5969)
!5973 = !DILocation(line: 186, column: 3, scope: !5969)
!5974 = !DILocation(line: 188, column: 6, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 188, column: 6)
!5976 = !DILocation(line: 188, column: 6, scope: !5931)
!5977 = !DILocation(line: 189, column: 8, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 188, column: 12)
!5979 = !DILocation(line: 190, column: 9, scope: !5978)
!5980 = !DILocation(line: 191, column: 8, scope: !5978)
!5981 = !DILocation(line: 192, column: 2, scope: !5978)
!5982 = !DILocation(line: 193, column: 8, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 192, column: 9)
!5984 = !DILocation(line: 194, column: 9, scope: !5983)
!5985 = !DILocation(line: 195, column: 8, scope: !5983)
!5986 = !DILocation(line: 197, column: 8, scope: !5931)
!5987 = !DILocation(line: 197, column: 7, scope: !5931)
!5988 = !DILocation(line: 197, column: 4, scope: !5931)
!5989 = !DILocation(line: 202, column: 7, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 202, column: 6)
!5991 = !DILocation(line: 202, column: 6, scope: !5931)
!5992 = !DILocation(line: 203, column: 9, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 202, column: 13)
!5994 = !DILocation(line: 203, column: 8, scope: !5993)
!5995 = !DILocation(line: 203, column: 5, scope: !5993)
!5996 = !DILocation(line: 204, column: 2, scope: !5993)
!5997 = !DILocation(line: 205, column: 9, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 204, column: 9)
!5999 = !DILocation(line: 205, column: 18, scope: !5998)
!6000 = !DILocation(line: 205, column: 27, scope: !5998)
!6001 = !DILocation(line: 205, column: 25, scope: !5998)
!6002 = !DILocation(line: 205, column: 32, scope: !5998)
!6003 = !DILocation(line: 205, column: 41, scope: !5998)
!6004 = !DILocation(line: 205, column: 38, scope: !5998)
!6005 = !DILocation(line: 205, column: 5, scope: !5998)
!6006 = !DILocation(line: 206, column: 8, scope: !5998)
!6007 = !DILocation(line: 206, column: 5, scope: !5998)
!6008 = !DILocation(line: 209, column: 22, scope: !5931)
!6009 = !DILocation(line: 209, column: 31, scope: !5931)
!6010 = !DILocation(line: 210, column: 4, scope: !5931)
!6011 = !DILocation(line: 210, column: 7, scope: !5931)
!6012 = !DILocation(line: 209, column: 9, scope: !5931)
!6013 = !DILocation(line: 209, column: 2, scope: !5931)
!6014 = !DILocation(line: 211, column: 1, scope: !5931)
!6015 = distinct !DISubprogram(name: "rdmsr_on_cpu", scope: !5704, file: !5704, line: 350, type: !5705, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6016 = !DILocalVariable(name: "cpu", arg: 1, scope: !6015, file: !5704, line: 350, type: !7)
!6017 = !DILocation(line: 350, column: 45, scope: !6015)
!6018 = !DILocalVariable(name: "msr_no", arg: 2, scope: !6015, file: !5704, line: 350, type: !340)
!6019 = !DILocation(line: 350, column: 54, scope: !6015)
!6020 = !DILocalVariable(name: "l", arg: 3, scope: !6015, file: !5704, line: 350, type: !1648)
!6021 = !DILocation(line: 350, column: 67, scope: !6015)
!6022 = !DILocalVariable(name: "h", arg: 4, scope: !6015, file: !5704, line: 350, type: !1648)
!6023 = !DILocation(line: 350, column: 75, scope: !6015)
!6024 = !DILocation(line: 352, column: 2, scope: !6015)
!6025 = !DILocalVariable(name: "_l", scope: !6026, file: !5704, line: 352, type: !344)
!6026 = distinct !DILexicalBlock(scope: !6015, file: !5704, line: 352, column: 2)
!6027 = !DILocation(line: 352, column: 2, scope: !6026)
!6028 = !DILocation(line: 353, column: 2, scope: !6015)
!6029 = distinct !DISubprogram(name: "wrmsr_on_cpu", scope: !5704, file: !5704, line: 355, type: !6030, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!112, !7, !340, !340, !340}
!6032 = !DILocalVariable(name: "cpu", arg: 1, scope: !6029, file: !5704, line: 355, type: !7)
!6033 = !DILocation(line: 355, column: 45, scope: !6029)
!6034 = !DILocalVariable(name: "msr_no", arg: 2, scope: !6029, file: !5704, line: 355, type: !340)
!6035 = !DILocation(line: 355, column: 54, scope: !6029)
!6036 = !DILocalVariable(name: "l", arg: 3, scope: !6029, file: !5704, line: 355, type: !340)
!6037 = !DILocation(line: 355, column: 66, scope: !6029)
!6038 = !DILocalVariable(name: "h", arg: 4, scope: !6029, file: !5704, line: 355, type: !340)
!6039 = !DILocation(line: 355, column: 73, scope: !6029)
!6040 = !DILocation(line: 357, column: 2, scope: !6029)
!6041 = !DILocation(line: 357, column: 2, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6029, file: !5704, line: 357, column: 2)
!6043 = !DILocation(line: 358, column: 2, scope: !6029)
!6044 = distinct !DISubprogram(name: "cpumask_any_but", scope: !1599, file: !1599, line: 186, type: !6045, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!7, !6047, !7}
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6048, size: 64)
!6048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!6049 = !DILocalVariable(name: "mask", arg: 1, scope: !6044, file: !1599, line: 186, type: !6047)
!6050 = !DILocation(line: 186, column: 66, scope: !6044)
!6051 = !DILocalVariable(name: "cpu", arg: 2, scope: !6044, file: !1599, line: 187, type: !7)
!6052 = !DILocation(line: 187, column: 22, scope: !6044)
!6053 = !DILocation(line: 189, column: 2, scope: !6044)
!6054 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !1599, file: !1599, line: 348, type: !6055, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{null, !112, !5012}
!6057 = !DILocalVariable(name: "cpu", arg: 1, scope: !6054, file: !1599, line: 348, type: !112)
!6058 = !DILocation(line: 348, column: 42, scope: !6054)
!6059 = !DILocalVariable(name: "dstp", arg: 2, scope: !6054, file: !1599, line: 348, type: !5012)
!6060 = !DILocation(line: 348, column: 63, scope: !6054)
!6061 = !DILocation(line: 350, column: 26, scope: !6054)
!6062 = !DILocation(line: 350, column: 12, scope: !6054)
!6063 = !DILocation(line: 350, column: 32, scope: !6054)
!6064 = !DILocation(line: 350, column: 2, scope: !6054)
!6065 = !DILocation(line: 351, column: 1, scope: !6054)
!6066 = distinct !DISubprogram(name: "pkg_thermal_schedule_work", scope: !3, file: !3, line: 300, type: !6067, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{null, !112, !6069}
!6069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!6070 = !DILocalVariable(name: "m", arg: 1, scope: !6071, file: !6072, line: 363, type: !2970)
!6071 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6072, file: !6072, line: 363, type: !6073, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6072 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!334, !2970}
!6075 = !DILocation(line: 363, column: 74, scope: !6071, inlinedAt: !6076)
!6076 = distinct !DILocation(line: 302, column: 21, scope: !6066)
!6077 = !DILocalVariable(name: "cpu", arg: 1, scope: !6066, file: !3, line: 300, type: !112)
!6078 = !DILocation(line: 300, column: 43, scope: !6066)
!6079 = !DILocalVariable(name: "work", arg: 2, scope: !6066, file: !3, line: 300, type: !6069)
!6080 = !DILocation(line: 300, column: 69, scope: !6066)
!6081 = !DILocalVariable(name: "ms", scope: !6066, file: !3, line: 302, type: !334)
!6082 = !DILocation(line: 302, column: 16, scope: !6066)
!6083 = !DILocation(line: 302, column: 38, scope: !6066)
!6084 = !DILocation(line: 365, column: 27, scope: !6085, inlinedAt: !6076)
!6085 = distinct !DILexicalBlock(scope: !6071, file: !6072, line: 365, column: 6)
!6086 = !DILocation(line: 365, column: 6, scope: !6085, inlinedAt: !6076)
!6087 = !DILocation(line: 365, column: 6, scope: !6071, inlinedAt: !6076)
!6088 = !DILocation(line: 366, column: 12, scope: !6089, inlinedAt: !6076)
!6089 = distinct !DILexicalBlock(scope: !6090, file: !6072, line: 366, column: 7)
!6090 = distinct !DILexicalBlock(scope: !6085, file: !6072, line: 365, column: 31)
!6091 = !DILocation(line: 366, column: 14, scope: !6089, inlinedAt: !6076)
!6092 = !DILocation(line: 366, column: 7, scope: !6090, inlinedAt: !6076)
!6093 = !DILocation(line: 367, column: 4, scope: !6089, inlinedAt: !6076)
!6094 = !DILocation(line: 368, column: 28, scope: !6090, inlinedAt: !6076)
!6095 = !DILocation(line: 368, column: 10, scope: !6090, inlinedAt: !6076)
!6096 = !DILocation(line: 368, column: 3, scope: !6090, inlinedAt: !6076)
!6097 = !DILocation(line: 370, column: 29, scope: !6098, inlinedAt: !6076)
!6098 = distinct !DILexicalBlock(scope: !6085, file: !6072, line: 369, column: 9)
!6099 = !DILocation(line: 370, column: 10, scope: !6098, inlinedAt: !6076)
!6100 = !DILocation(line: 370, column: 3, scope: !6098, inlinedAt: !6076)
!6101 = !DILocation(line: 372, column: 1, scope: !6071, inlinedAt: !6076)
!6102 = !DILocation(line: 304, column: 27, scope: !6066)
!6103 = !DILocation(line: 304, column: 32, scope: !6066)
!6104 = !DILocation(line: 304, column: 38, scope: !6066)
!6105 = !DILocation(line: 304, column: 2, scope: !6066)
!6106 = !DILocation(line: 305, column: 1, scope: !6066)
!6107 = distinct !DISubprogram(name: "clear_bit", scope: !5187, file: !5187, line: 39, type: !5188, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6108 = !DILocalVariable(name: "nr", arg: 1, scope: !6109, file: !4864, line: 72, type: !298)
!6109 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4864, file: !4864, line: 72, type: !5188, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6110 = !DILocation(line: 72, column: 21, scope: !6109, inlinedAt: !6111)
!6111 = distinct !DILocation(line: 42, column: 2, scope: !6107)
!6112 = !DILocalVariable(name: "addr", arg: 2, scope: !6109, file: !4864, line: 72, type: !5190)
!6113 = !DILocation(line: 72, column: 49, scope: !6109, inlinedAt: !6111)
!6114 = !DILocation(line: 84, column: 74, scope: !5198, inlinedAt: !6115)
!6115 = distinct !DILocation(line: 41, column: 2, scope: !6107)
!6116 = !DILocation(line: 84, column: 84, scope: !5198, inlinedAt: !6115)
!6117 = !DILocalVariable(name: "nr", arg: 1, scope: !6107, file: !5187, line: 39, type: !298)
!6118 = !DILocation(line: 39, column: 35, scope: !6107)
!6119 = !DILocalVariable(name: "addr", arg: 2, scope: !6107, file: !5187, line: 39, type: !5190)
!6120 = !DILocation(line: 39, column: 63, scope: !6107)
!6121 = !DILocation(line: 41, column: 26, scope: !6107)
!6122 = !DILocation(line: 41, column: 33, scope: !6107)
!6123 = !DILocation(line: 41, column: 31, scope: !6107)
!6124 = !DILocation(line: 86, column: 20, scope: !5198, inlinedAt: !6115)
!6125 = !DILocation(line: 86, column: 23, scope: !5198, inlinedAt: !6115)
!6126 = !DILocation(line: 86, column: 2, scope: !5198, inlinedAt: !6115)
!6127 = !DILocation(line: 87, column: 2, scope: !5198, inlinedAt: !6115)
!6128 = !DILocation(line: 42, column: 17, scope: !6107)
!6129 = !DILocation(line: 42, column: 21, scope: !6107)
!6130 = !DILocation(line: 74, column: 27, scope: !6131, inlinedAt: !6111)
!6131 = distinct !DILexicalBlock(scope: !6109, file: !4864, line: 74, column: 6)
!6132 = !DILocation(line: 74, column: 6, scope: !6131, inlinedAt: !6111)
!6133 = !DILocation(line: 74, column: 6, scope: !6109, inlinedAt: !6111)
!6134 = !DILocation(line: 76, column: 6, scope: !6135, inlinedAt: !6111)
!6135 = distinct !DILexicalBlock(scope: !6131, file: !4864, line: 74, column: 32)
!6136 = !DILocation(line: 77, column: 13, scope: !6135, inlinedAt: !6111)
!6137 = !DILocation(line: 77, column: 12, scope: !6135, inlinedAt: !6111)
!6138 = !DILocation(line: 75, column: 3, scope: !6135, inlinedAt: !6111)
!6139 = !{i32 -2147140486}
!6140 = !DILocation(line: 78, column: 2, scope: !6135, inlinedAt: !6111)
!6141 = !DILocation(line: 80, column: 8, scope: !6142, inlinedAt: !6111)
!6142 = distinct !DILexicalBlock(scope: !6131, file: !4864, line: 78, column: 9)
!6143 = !DILocation(line: 80, column: 32, scope: !6142, inlinedAt: !6111)
!6144 = !DILocation(line: 79, column: 3, scope: !6142, inlinedAt: !6111)
!6145 = !{i32 -2147140354}
!6146 = !DILocation(line: 43, column: 1, scope: !6107)
!6147 = distinct !DISubprogram(name: "schedule_delayed_work_on", scope: !297, file: !297, line: 609, type: !6148, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!470, !112, !6069, !334}
!6150 = !DILocalVariable(name: "cpu", arg: 1, scope: !6147, file: !297, line: 609, type: !112)
!6151 = !DILocation(line: 609, column: 49, scope: !6147)
!6152 = !DILocalVariable(name: "dwork", arg: 2, scope: !6147, file: !297, line: 609, type: !6069)
!6153 = !DILocation(line: 609, column: 75, scope: !6147)
!6154 = !DILocalVariable(name: "delay", arg: 3, scope: !6147, file: !297, line: 610, type: !334)
!6155 = !DILocation(line: 610, column: 24, scope: !6147)
!6156 = !DILocation(line: 612, column: 31, scope: !6147)
!6157 = !DILocation(line: 612, column: 36, scope: !6147)
!6158 = !DILocation(line: 612, column: 47, scope: !6147)
!6159 = !DILocation(line: 612, column: 54, scope: !6147)
!6160 = !DILocation(line: 612, column: 9, scope: !6147)
!6161 = !DILocation(line: 612, column: 2, scope: !6147)
!6162 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6072, file: !6072, line: 308, type: !6073, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6163 = !DILocalVariable(name: "m", arg: 1, scope: !6162, file: !6072, line: 308, type: !2970)
!6164 = !DILocation(line: 308, column: 66, scope: !6162)
!6165 = !DILocation(line: 310, column: 10, scope: !6162)
!6166 = !DILocation(line: 310, column: 12, scope: !6162)
!6167 = !DILocation(line: 310, column: 34, scope: !6162)
!6168 = !DILocation(line: 310, column: 39, scope: !6162)
!6169 = !DILocation(line: 310, column: 2, scope: !6162)
!6170 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5641, file: !5641, line: 666, type: !6171, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{!334}
!6173 = !DILocalVariable(name: "f", scope: !6170, file: !5641, line: 668, type: !334)
!6174 = !DILocation(line: 668, column: 16, scope: !6170)
!6175 = !DILocation(line: 670, column: 6, scope: !6170)
!6176 = !DILocation(line: 670, column: 4, scope: !6170)
!6177 = !DILocation(line: 671, column: 2, scope: !6170)
!6178 = !DILocation(line: 672, column: 9, scope: !6170)
!6179 = !DILocation(line: 672, column: 2, scope: !6170)
!6180 = distinct !DISubprogram(name: "disable_pkg_thres_interrupt", scope: !3, file: !3, line: 251, type: !440, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6181 = !DILocalVariable(name: "l", scope: !6180, file: !3, line: 253, type: !340)
!6182 = !DILocation(line: 253, column: 6, scope: !6180)
!6183 = !DILocalVariable(name: "h", scope: !6180, file: !3, line: 253, type: !340)
!6184 = !DILocation(line: 253, column: 9, scope: !6180)
!6185 = !DILocation(line: 255, column: 2, scope: !6180)
!6186 = !DILocalVariable(name: "_l", scope: !6187, file: !3, line: 255, type: !344)
!6187 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 255, column: 2)
!6188 = !DILocation(line: 255, column: 2, scope: !6187)
!6189 = !DILocation(line: 257, column: 4, scope: !6180)
!6190 = !DILocation(line: 258, column: 2, scope: !6180)
!6191 = !DILocation(line: 258, column: 2, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 258, column: 2)
!6193 = !DILocation(line: 259, column: 1, scope: !6180)
!6194 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5641, file: !5641, line: 651, type: !6195, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{null, !334}
!6197 = !DILocalVariable(name: "f", arg: 1, scope: !6194, file: !5641, line: 651, type: !334)
!6198 = !DILocation(line: 651, column: 65, scope: !6194)
!6199 = !DILocalVariable(name: "__edi", scope: !6200, file: !5641, line: 653, type: !334)
!6200 = distinct !DILexicalBlock(scope: !6194, file: !5641, line: 653, column: 2)
!6201 = !DILocation(line: 653, column: 2, scope: !6200)
!6202 = !DILocalVariable(name: "__esi", scope: !6200, file: !5641, line: 653, type: !334)
!6203 = !DILocalVariable(name: "__edx", scope: !6200, file: !5641, line: 653, type: !334)
!6204 = !DILocalVariable(name: "__ecx", scope: !6200, file: !5641, line: 653, type: !334)
!6205 = !DILocalVariable(name: "__eax", scope: !6200, file: !5641, line: 653, type: !334)
!6206 = !{i32 -2145772711, i32 -2145771961, i32 -2145771727, i32 -2145771676, i32 -2145771648, i32 -2145771623, i32 -2145771939, i32 -2145771926, i32 -2145771488, i32 -2145771369, i32 -2145771834, i32 -2145771807, i32 -2145771779, i32 -2145771749}
!6207 = !DILocation(line: 654, column: 1, scope: !6194)
!6208 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5641, file: !5641, line: 646, type: !6171, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6209 = !DILocalVariable(name: "__ret", scope: !6210, file: !5641, line: 648, type: !334)
!6210 = distinct !DILexicalBlock(scope: !6208, file: !5641, line: 648, column: 9)
!6211 = !DILocation(line: 648, column: 9, scope: !6210)
!6212 = !DILocalVariable(name: "__edi", scope: !6210, file: !5641, line: 648, type: !334)
!6213 = !DILocalVariable(name: "__esi", scope: !6210, file: !5641, line: 648, type: !334)
!6214 = !DILocalVariable(name: "__edx", scope: !6210, file: !5641, line: 648, type: !334)
!6215 = !DILocalVariable(name: "__ecx", scope: !6210, file: !5641, line: 648, type: !334)
!6216 = !DILocalVariable(name: "__eax", scope: !6210, file: !5641, line: 648, type: !334)
!6217 = !DILocation(line: 648, column: 9, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !5641, line: 648, column: 9)
!6219 = distinct !DILexicalBlock(scope: !6210, file: !5641, line: 648, column: 9)
!6220 = !{i32 -2145777178, i32 -2145774863, i32 -2145774629, i32 -2145774578, i32 -2145774550, i32 -2145774525, i32 -2145774841, i32 -2145774828, i32 -2145774390, i32 -2145774271, i32 -2145774736, i32 -2145774709, i32 -2145774681, i32 -2145774651}
!6221 = !DILocalVariable(name: "__mask", scope: !6222, file: !5641, line: 648, type: !334)
!6222 = distinct !DILexicalBlock(scope: !6218, file: !5641, line: 648, column: 9)
!6223 = !DILocation(line: 648, column: 9, scope: !6222)
!6224 = !DILocation(line: 648, column: 9, scope: !6219)
!6225 = !DILocation(line: 648, column: 2, scope: !6208)
!6226 = distinct !DISubprogram(name: "debugfs_create_dir", scope: !4217, file: !4217, line: 196, type: !6227, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6227 = !DISubroutineType(types: !6228)
!6228 = !{!691, !362, !691}
!6229 = !DILocalVariable(name: "name", arg: 1, scope: !6226, file: !4217, line: 196, type: !362)
!6230 = !DILocation(line: 196, column: 61, scope: !6226)
!6231 = !DILocalVariable(name: "parent", arg: 2, scope: !6226, file: !4217, line: 197, type: !691)
!6232 = !DILocation(line: 197, column: 22, scope: !6226)
!6233 = !DILocation(line: 199, column: 9, scope: !6226)
!6234 = !DILocation(line: 199, column: 2, scope: !6226)
!6235 = distinct !DISubprogram(name: "debugfs_create_u32", scope: !4217, file: !4217, line: 258, type: !6236, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{null, !362, !626, !691, !1648}
!6238 = !DILocalVariable(name: "name", arg: 1, scope: !6235, file: !4217, line: 258, type: !362)
!6239 = !DILocation(line: 258, column: 51, scope: !6235)
!6240 = !DILocalVariable(name: "mode", arg: 2, scope: !6235, file: !4217, line: 258, type: !626)
!6241 = !DILocation(line: 258, column: 65, scope: !6235)
!6242 = !DILocalVariable(name: "parent", arg: 3, scope: !6235, file: !4217, line: 259, type: !691)
!6243 = !DILocation(line: 259, column: 26, scope: !6235)
!6244 = !DILocalVariable(name: "value", arg: 4, scope: !6235, file: !4217, line: 259, type: !1648)
!6245 = !DILocation(line: 259, column: 39, scope: !6235)
!6246 = !DILocation(line: 259, column: 48, scope: !6235)
!6247 = distinct !DISubprogram(name: "ERR_PTR", scope: !5625, file: !5625, line: 24, type: !6248, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !560)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!332, !298}
!6250 = !DILocalVariable(name: "error", arg: 1, scope: !6247, file: !5625, line: 24, type: !298)
!6251 = !DILocation(line: 24, column: 48, scope: !6247)
!6252 = !DILocation(line: 26, column: 18, scope: !6247)
!6253 = !DILocation(line: 26, column: 9, scope: !6247)
!6254 = !DILocation(line: 26, column: 2, scope: !6247)
