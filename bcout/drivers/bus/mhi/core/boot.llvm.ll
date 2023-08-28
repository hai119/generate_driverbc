; ModuleID = '../bcout/drivers/bus/mhi/core/boot.llvm.bc'
source_filename = "drivers/bus/mhi/core/boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.anon.69 = type { i8*, i32 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.1, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
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
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.55 = type { %struct.atomic_t }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.mhi_controller = type { %struct.device*, %struct.mhi_device*, %struct.dentry*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i64, i64, i64, %struct.image_info*, %struct.image_info*, %struct.mhi_chan*, %struct.list_head, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], %struct.mhi_event*, %struct.mhi_cmd*, %struct.mhi_ctxt*, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, %struct.wait_queue_head, void (%struct.mhi_controller*, i32)*, void (%struct.mhi_controller*, i1)*, void (%struct.mhi_controller*, i1)*, void (%struct.mhi_controller*)*, i32 (%struct.mhi_controller*)*, void (%struct.mhi_controller*)*, i32 (%struct.mhi_controller*, %struct.mhi_buf_info*)*, void (%struct.mhi_controller*, %struct.mhi_buf_info*)*, i32 (%struct.mhi_controller*, i8*, i32*)*, void (%struct.mhi_controller*, i8*, i32)*, i64, i8, i8, i8, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mhi_device = type { %struct.mhi_device_id*, i8*, %struct.mhi_controller*, %struct.mhi_chan*, %struct.mhi_chan*, %struct.device, i32, i32, i32, i32 }
%struct.mhi_device_id = type opaque
%struct.mhi_chan = type { i8*, %struct.mhi_ring, %struct.mhi_ring, i32, i32, i32, i32, i32, %struct.db_cfg, i32, i32, i32, %struct.mhi_device*, void (%struct.mhi_device*, %struct.mhi_result*)*, %struct.mutex, %struct.completion, %struct.rwlock_t, %struct.list_head, i8, i8, i8, i8, i8, i8 }
%struct.mhi_ring = type { i64, i64, i64*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8* }
%struct.db_cfg = type { i8, i8, i32, i32, i64, void (%struct.mhi_controller*, %struct.db_cfg*, i8*, i64)* }
%struct.mhi_result = type { i8*, i64, i32, i32 }
%struct.mhi_event = type { %struct.mhi_controller*, %struct.mhi_chan*, i32, i32, i32, i32, i32, i32, %struct.mhi_ring, %struct.db_cfg, %struct.tasklet_struct, %struct.spinlock, i32 (%struct.mhi_controller*, %struct.mhi_event*, i32)*, i8, i8, i8 }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.68, i64 }
%union.anon.68 = type { void (i64)* }
%struct.mhi_cmd = type { %struct.mhi_ring, %struct.spinlock }
%struct.mhi_ctxt = type { %struct.mhi_event_ctxt*, %struct.mhi_chan_ctxt*, %struct.mhi_cmd_ctxt*, i64, i64, i64 }
%struct.mhi_event_ctxt = type <{ i32, i32, i32, i64, i64, i64, i64 }>
%struct.mhi_chan_ctxt = type <{ i32, i32, i32, i64, i64, i64, i64 }>
%struct.mhi_cmd_ctxt = type <{ i32, i32, i32, i64, i64, i64, i64 }>
%struct.mhi_link_info = type { i32, i32 }
%struct.mhi_buf_info = type { i8*, i8*, i8*, i8*, i64, i64, i32, i8, i8 }
%struct.image_info = type { %struct.mhi_buf*, %struct.bhi_vec_entry*, i32 }
%struct.mhi_buf = type { i8*, i8*, i64, i64 }
%struct.bhi_vec_entry = type { i64, i64 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.firmware = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Device MHI is not in valid state\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not capture serial number via BHI\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not capture OEM PK HASH via BHI\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"No firmware image defined or !sbl_size || !seg_len\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Error loading firmware: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"MHI did not load SBL, ret:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"MHI did not enter READY state\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MHI did not enter SBL\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"MHI did not load AMSS, ret:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Did not complete RDDM transfer\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Current EE: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"INVALID_EE\00", align 1
@mhi_ee_str = external dso_local constant [9 x i8*], align 16
@.str.12 = private unnamed_addr constant [20 x i8] c"RXVEC_STATUS: 0x%x\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ERROR_CODE\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ERROR_DBG1\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ERROR_DBG2\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"ERROR_DBG3\00", align 1
@__const.mhi_fw_load_sbl.error_reg = private unnamed_addr constant [5 x %struct.anon.69] [%struct.anon.69 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 48 }, %struct.anon.69 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 52 }, %struct.anon.69 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 56 }, %struct.anon.69 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 60 }, %struct.anon.69 zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [23 x i8] c"Image transfer failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Reg: %s value: 0x%x\0A\00", align 1
@__preempt_count = external dso_local global i32, section ".data", align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mhi_rddm_prepare(%struct.mhi_controller* %mhi_cntrl, %struct.image_info* %img_info) #0 !dbg !209 {
entry:
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %img_info.addr = alloca %struct.image_info*, align 8
  %mhi_buf = alloca %struct.mhi_buf*, align 8
  %bhi_vec = alloca %struct.bhi_vec_entry*, align 8
  %base = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %sequence_id = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4180, metadata !DIExpression()), !dbg !4181
  store %struct.image_info* %img_info, %struct.image_info** %img_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.image_info** %img_info.addr, metadata !4182, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata %struct.mhi_buf** %mhi_buf, metadata !4184, metadata !DIExpression()), !dbg !4185
  %0 = load %struct.image_info*, %struct.image_info** %img_info.addr, align 8, !dbg !4186
  %mhi_buf1 = getelementptr inbounds %struct.image_info, %struct.image_info* %0, i32 0, i32 0, !dbg !4187
  %1 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf1, align 8, !dbg !4187
  store %struct.mhi_buf* %1, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4185
  call void @llvm.dbg.declare(metadata %struct.bhi_vec_entry** %bhi_vec, metadata !4188, metadata !DIExpression()), !dbg !4189
  %2 = load %struct.image_info*, %struct.image_info** %img_info.addr, align 8, !dbg !4190
  %bhi_vec2 = getelementptr inbounds %struct.image_info, %struct.image_info* %2, i32 0, i32 1, !dbg !4191
  %3 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec2, align 8, !dbg !4191
  store %struct.bhi_vec_entry* %3, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !4189
  call void @llvm.dbg.declare(metadata i8** %base, metadata !4192, metadata !DIExpression()), !dbg !4193
  %4 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4194
  %bhie = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %4, i32 0, i32 5, !dbg !4195
  %5 = load i8*, i8** %bhie, align 8, !dbg !4195
  store i8* %5, i8** %base, align 8, !dbg !4193
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4196, metadata !DIExpression()), !dbg !4197
  %6 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4198
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %6, i32 0, i32 1, !dbg !4199
  %7 = load %struct.mhi_device*, %struct.mhi_device** %mhi_dev, align 8, !dbg !4199
  %dev3 = getelementptr inbounds %struct.mhi_device, %struct.mhi_device* %7, i32 0, i32 5, !dbg !4200
  store %struct.device* %dev3, %struct.device** %dev, align 8, !dbg !4197
  call void @llvm.dbg.declare(metadata i32* %sequence_id, metadata !4201, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i32 0, i32* %i, align 4, !dbg !4205
  br label %for.cond, !dbg !4207

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !4208
  %9 = load %struct.image_info*, %struct.image_info** %img_info.addr, align 8, !dbg !4210
  %entries = getelementptr inbounds %struct.image_info, %struct.image_info* %9, i32 0, i32 2, !dbg !4211
  %10 = load i32, i32* %entries, align 8, !dbg !4211
  %sub = sub i32 %10, 1, !dbg !4212
  %cmp = icmp ult i32 %8, %sub, !dbg !4213
  br i1 %cmp, label %for.body, label %for.end, !dbg !4214

for.body:                                         ; preds = %for.cond
  %11 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4215
  %dma_addr = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %11, i32 0, i32 2, !dbg !4217
  %12 = load i64, i64* %dma_addr, align 8, !dbg !4217
  %13 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !4218
  %dma_addr4 = getelementptr inbounds %struct.bhi_vec_entry, %struct.bhi_vec_entry* %13, i32 0, i32 0, !dbg !4219
  store i64 %12, i64* %dma_addr4, align 8, !dbg !4220
  %14 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4221
  %len = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %14, i32 0, i32 3, !dbg !4222
  %15 = load i64, i64* %len, align 8, !dbg !4222
  %16 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !4223
  %size = getelementptr inbounds %struct.bhi_vec_entry, %struct.bhi_vec_entry* %16, i32 0, i32 1, !dbg !4224
  store i64 %15, i64* %size, align 8, !dbg !4225
  br label %for.inc, !dbg !4226

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !4227
  %inc = add i32 %17, 1, !dbg !4227
  store i32 %inc, i32* %i, align 4, !dbg !4227
  %18 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4228
  %incdec.ptr = getelementptr %struct.mhi_buf, %struct.mhi_buf* %18, i32 1, !dbg !4228
  store %struct.mhi_buf* %incdec.ptr, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4228
  %19 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !4229
  %incdec.ptr5 = getelementptr %struct.bhi_vec_entry, %struct.bhi_vec_entry* %19, i32 1, !dbg !4229
  store %struct.bhi_vec_entry* %incdec.ptr5, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !4229
  br label %for.cond, !dbg !4230, !llvm.loop !4231

for.end:                                          ; preds = %for.cond
  %20 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4233
  %21 = load i8*, i8** %base, align 8, !dbg !4234
  %22 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4235
  %dma_addr6 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %22, i32 0, i32 2, !dbg !4235
  %23 = load i64, i64* %dma_addr6, align 8, !dbg !4235
  %shr = lshr i64 %23, 16, !dbg !4235
  %shr7 = lshr i64 %shr, 16, !dbg !4235
  %conv = trunc i64 %shr7 to i32, !dbg !4235
  call void @mhi_write_reg(%struct.mhi_controller* %20, i8* %21, i32 100, i32 %conv) #10, !dbg !4236
  %24 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4237
  %25 = load i8*, i8** %base, align 8, !dbg !4238
  %26 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4239
  %dma_addr8 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %26, i32 0, i32 2, !dbg !4239
  %27 = load i64, i64* %dma_addr8, align 8, !dbg !4239
  %and = and i64 %27, 4294967295, !dbg !4239
  %conv9 = trunc i64 %and to i32, !dbg !4239
  call void @mhi_write_reg(%struct.mhi_controller* %24, i8* %25, i32 96, i32 %conv9) #10, !dbg !4240
  %28 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4241
  %29 = load i8*, i8** %base, align 8, !dbg !4242
  %30 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4243
  %len10 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %30, i32 0, i32 3, !dbg !4244
  %31 = load i64, i64* %len10, align 8, !dbg !4244
  %conv11 = trunc i64 %31 to i32, !dbg !4243
  call void @mhi_write_reg(%struct.mhi_controller* %28, i8* %29, i32 104, i32 %conv11) #10, !dbg !4245
  %call = call i32 @prandom_u32_max(i32 1073741823) #10, !dbg !4246
  %add = add i32 %call, 1, !dbg !4246
  store i32 %add, i32* %sequence_id, align 4, !dbg !4247
  %32 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4248
  %33 = load i8*, i8** %base, align 8, !dbg !4249
  %34 = load i32, i32* %sequence_id, align 4, !dbg !4250
  call void @mhi_write_reg_field(%struct.mhi_controller* %32, i8* %33, i32 112, i32 1073741823, i32 0, i32 %34) #10, !dbg !4251
  ret void, !dbg !4252
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mhi_write_reg(%struct.mhi_controller*, i8*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @prandom_u32_max(i32 %ep_ro) #0 !dbg !4253 {
entry:
  %ep_ro.addr = alloca i32, align 4
  store i32 %ep_ro, i32* %ep_ro.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep_ro.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  %call = call i32 @prandom_u32() #10, !dbg !4259
  %conv = zext i32 %call to i64, !dbg !4260
  %0 = load i32, i32* %ep_ro.addr, align 4, !dbg !4261
  %conv1 = zext i32 %0 to i64, !dbg !4261
  %mul = mul i64 %conv, %conv1, !dbg !4262
  %shr = lshr i64 %mul, 32, !dbg !4263
  %conv2 = trunc i64 %shr to i32, !dbg !4264
  ret i32 %conv2, !dbg !4265
}

; Function Attrs: noredzone
declare dso_local void @mhi_write_reg_field(%struct.mhi_controller*, i8*, i32, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mhi_download_rddm_img(%struct.mhi_controller* %mhi_cntrl, i1 zeroext %in_panic) #0 !dbg !4266 {
entry:
  %retval.i51 = alloca i64, align 8
  %m.addr.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i52, metadata !4269, metadata !DIExpression()), !dbg !4274
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4269, metadata !DIExpression()), !dbg !4279
  %retval = alloca i32, align 4
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %in_panic.addr = alloca i8, align 1
  %base = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %rx_status = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret19 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond23 = alloca i8, align 1
  %tmp36 = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %tmp50 = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4281, metadata !DIExpression()), !dbg !4282
  %frombool = zext i1 %in_panic to i8
  store i8 %frombool, i8* %in_panic.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %in_panic.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.declare(metadata i8** %base, metadata !4285, metadata !DIExpression()), !dbg !4286
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4287
  %bhie = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 5, !dbg !4288
  %1 = load i8*, i8** %bhie, align 8, !dbg !4288
  store i8* %1, i8** %base, align 8, !dbg !4286
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4289, metadata !DIExpression()), !dbg !4290
  %2 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4291
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %2, i32 0, i32 1, !dbg !4292
  %3 = load %struct.mhi_device*, %struct.mhi_device** %mhi_dev, align 8, !dbg !4292
  %dev1 = getelementptr inbounds %struct.mhi_device, %struct.mhi_device* %3, i32 0, i32 5, !dbg !4293
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !4290
  call void @llvm.dbg.declare(metadata i32* %rx_status, metadata !4294, metadata !DIExpression()), !dbg !4295
  %4 = load i8, i8* %in_panic.addr, align 1, !dbg !4296
  %tobool = trunc i8 %4 to i1, !dbg !4296
  br i1 %tobool, label %if.then, label %if.end, !dbg !4298

if.then:                                          ; preds = %entry
  %5 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4299
  %call = call i32 @__mhi_download_rddm_in_panic(%struct.mhi_controller* %5) #10, !dbg !4300
  store i32 %call, i32* %retval, align 4, !dbg !4301
  br label %return, !dbg !4301

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4302, metadata !DIExpression()), !dbg !4303
  %6 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4303
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %6, i32 0, i32 35, !dbg !4303
  %7 = load i32, i32* %timeout_ms, align 8, !dbg !4303
  store i32 %7, i32* %m.addr.i, align 4
  %8 = load i32, i32* %m.addr.i, align 4, !dbg !4304
  %9 = call i1 @llvm.is.constant.i32(i32 %8) #9, !dbg !4306
  br i1 %9, label %if.then.i, label %if.else.i, !dbg !4307

if.then.i:                                        ; preds = %if.end
  %10 = load i32, i32* %m.addr.i, align 4, !dbg !4308
  %cmp.i = icmp slt i32 %10, 0, !dbg !4311
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4312

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4313
  br label %msecs_to_jiffies.exit, !dbg !4313

if.end.i:                                         ; preds = %if.then.i
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !4314
  %call.i = call i64 @_msecs_to_jiffies(i32 %11) #11, !dbg !4315
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4316
  br label %msecs_to_jiffies.exit, !dbg !4316

if.else.i:                                        ; preds = %if.end
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !4317
  %call2.i = call i64 @__msecs_to_jiffies(i32 %12) #11, !dbg !4319
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4320
  br label %msecs_to_jiffies.exit, !dbg !4320

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %13 = load i64, i64* %retval.i, align 8, !dbg !4321
  store i64 %13, i64* %__ret, align 8, !dbg !4303
  br label %do.body, !dbg !4303

do.body:                                          ; preds = %msecs_to_jiffies.exit
  br label %do.body3, !dbg !4322

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !4324

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !4322

do.end4:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4326, metadata !DIExpression()), !dbg !4328
  %14 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4328
  %15 = load i8*, i8** %base, align 8, !dbg !4328
  %call5 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %14, i8* %15, i32 120, i32 -1073741824, i32 30, i32* %rx_status) #10, !dbg !4328
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4328
  br i1 %tobool6, label %lor.end, label %lor.rhs, !dbg !4328

lor.rhs:                                          ; preds = %do.end4
  %16 = load i32, i32* %rx_status, align 4, !dbg !4328
  %tobool7 = icmp ne i32 %16, 0, !dbg !4328
  br label %lor.end, !dbg !4328

lor.end:                                          ; preds = %lor.rhs, %do.end4
  %17 = phi i1 [ true, %do.end4 ], [ %tobool7, %lor.rhs ]
  %frombool8 = zext i1 %17 to i8, !dbg !4328
  store i8 %frombool8, i8* %__cond, align 1, !dbg !4328
  %18 = load i8, i8* %__cond, align 1, !dbg !4329
  %tobool9 = trunc i8 %18 to i1, !dbg !4329
  br i1 %tobool9, label %land.lhs.true, label %if.end12, !dbg !4329

land.lhs.true:                                    ; preds = %lor.end
  %19 = load i64, i64* %__ret, align 8, !dbg !4329
  %tobool10 = icmp ne i64 %19, 0, !dbg !4329
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4328

if.then11:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !4329
  br label %if.end12, !dbg !4329

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %lor.end
  %20 = load i8, i8* %__cond, align 1, !dbg !4328
  %tobool13 = trunc i8 %20 to i1, !dbg !4328
  br i1 %tobool13, label %lor.end16, label %lor.rhs14, !dbg !4328

lor.rhs14:                                        ; preds = %if.end12
  %21 = load i64, i64* %__ret, align 8, !dbg !4328
  %tobool15 = icmp ne i64 %21, 0, !dbg !4328
  %lnot = xor i1 %tobool15, true, !dbg !4328
  br label %lor.end16, !dbg !4328

lor.end16:                                        ; preds = %lor.rhs14, %if.end12
  %22 = phi i1 [ true, %if.end12 ], [ %lnot, %lor.rhs14 ]
  %lor.ext = zext i1 %22 to i32, !dbg !4328
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !4329
  %23 = load i32, i32* %tmp, align 4, !dbg !4328
  %tobool17 = icmp ne i32 %23, 0, !dbg !4331
  br i1 %tobool17, label %if.end49, label %if.then18, !dbg !4303

if.then18:                                        ; preds = %lor.end16
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4332, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.declare(metadata i64* %__ret19, metadata !4345, metadata !DIExpression()), !dbg !4344
  %24 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4344
  %timeout_ms20 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %24, i32 0, i32 35, !dbg !4344
  %25 = load i32, i32* %timeout_ms20, align 8, !dbg !4344
  store i32 %25, i32* %m.addr.i52, align 4
  %26 = load i32, i32* %m.addr.i52, align 4, !dbg !4346
  %27 = call i1 @llvm.is.constant.i32(i32 %26) #9, !dbg !4347
  br i1 %27, label %if.then.i54, label %if.else.i59, !dbg !4348

if.then.i54:                                      ; preds = %if.then18
  %28 = load i32, i32* %m.addr.i52, align 4, !dbg !4349
  %cmp.i53 = icmp slt i32 %28, 0, !dbg !4350
  br i1 %cmp.i53, label %if.then1.i55, label %if.end.i57, !dbg !4351

if.then1.i55:                                     ; preds = %if.then.i54
  store i64 4611686018427387902, i64* %retval.i51, align 8, !dbg !4352
  br label %msecs_to_jiffies.exit60, !dbg !4352

if.end.i57:                                       ; preds = %if.then.i54
  %29 = load i32, i32* %m.addr.i52, align 4, !dbg !4353
  %call.i56 = call i64 @_msecs_to_jiffies(i32 %29) #11, !dbg !4354
  store i64 %call.i56, i64* %retval.i51, align 8, !dbg !4355
  br label %msecs_to_jiffies.exit60, !dbg !4355

if.else.i59:                                      ; preds = %if.then18
  %30 = load i32, i32* %m.addr.i52, align 4, !dbg !4356
  %call2.i58 = call i64 @__msecs_to_jiffies(i32 %30) #11, !dbg !4357
  store i64 %call2.i58, i64* %retval.i51, align 8, !dbg !4358
  br label %msecs_to_jiffies.exit60, !dbg !4358

msecs_to_jiffies.exit60:                          ; preds = %if.then1.i55, %if.end.i57, %if.else.i59
  %31 = load i64, i64* %retval.i51, align 8, !dbg !4359
  store i64 %31, i64* %__ret19, align 8, !dbg !4344
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !4344
  br label %for.cond, !dbg !4344

for.cond:                                         ; preds = %if.end45, %msecs_to_jiffies.exit60
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4360, metadata !DIExpression()), !dbg !4364
  %32 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4364
  %state_event = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %32, i32 0, i32 50, !dbg !4364
  %call22 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %state_event, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !4364
  store i64 %call22, i64* %__int, align 8, !dbg !4364
  call void @llvm.dbg.declare(metadata i8* %__cond23, metadata !4365, metadata !DIExpression()), !dbg !4368
  %33 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4368
  %34 = load i8*, i8** %base, align 8, !dbg !4368
  %call24 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %33, i8* %34, i32 120, i32 -1073741824, i32 30, i32* %rx_status) #10, !dbg !4368
  %tobool25 = icmp ne i32 %call24, 0, !dbg !4368
  br i1 %tobool25, label %lor.end28, label %lor.rhs26, !dbg !4368

lor.rhs26:                                        ; preds = %for.cond
  %35 = load i32, i32* %rx_status, align 4, !dbg !4368
  %tobool27 = icmp ne i32 %35, 0, !dbg !4368
  br label %lor.end28, !dbg !4368

lor.end28:                                        ; preds = %lor.rhs26, %for.cond
  %36 = phi i1 [ true, %for.cond ], [ %tobool27, %lor.rhs26 ]
  %frombool30 = zext i1 %36 to i8, !dbg !4368
  store i8 %frombool30, i8* %__cond23, align 1, !dbg !4368
  %37 = load i8, i8* %__cond23, align 1, !dbg !4369
  %tobool31 = trunc i8 %37 to i1, !dbg !4369
  br i1 %tobool31, label %land.lhs.true32, label %if.end35, !dbg !4369

land.lhs.true32:                                  ; preds = %lor.end28
  %38 = load i64, i64* %__ret19, align 8, !dbg !4369
  %tobool33 = icmp ne i64 %38, 0, !dbg !4369
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !4368

if.then34:                                        ; preds = %land.lhs.true32
  store i64 1, i64* %__ret19, align 8, !dbg !4369
  br label %if.end35, !dbg !4369

if.end35:                                         ; preds = %if.then34, %land.lhs.true32, %lor.end28
  %39 = load i8, i8* %__cond23, align 1, !dbg !4368
  %tobool37 = trunc i8 %39 to i1, !dbg !4368
  br i1 %tobool37, label %lor.end41, label %lor.rhs38, !dbg !4368

lor.rhs38:                                        ; preds = %if.end35
  %40 = load i64, i64* %__ret19, align 8, !dbg !4368
  %tobool39 = icmp ne i64 %40, 0, !dbg !4368
  %lnot40 = xor i1 %tobool39, true, !dbg !4368
  br label %lor.end41, !dbg !4368

lor.end41:                                        ; preds = %lor.rhs38, %if.end35
  %41 = phi i1 [ true, %if.end35 ], [ %lnot40, %lor.rhs38 ]
  %lor.ext42 = zext i1 %41 to i32, !dbg !4368
  store i32 %lor.ext42, i32* %tmp36, align 4, !dbg !4369
  %42 = load i32, i32* %tmp36, align 4, !dbg !4368
  %tobool43 = icmp ne i32 %42, 0, !dbg !4371
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !4364

if.then44:                                        ; preds = %lor.end41
  br label %for.end, !dbg !4371

if.end45:                                         ; preds = %lor.end41
  %43 = load i64, i64* %__ret19, align 8, !dbg !4364
  %call46 = call i64 @schedule_timeout(i64 %43) #10, !dbg !4364
  store i64 %call46, i64* %__ret19, align 8, !dbg !4364
  br label %for.cond, !dbg !4372, !llvm.loop !4373

for.end:                                          ; preds = %if.then44
  %44 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4344
  %state_event47 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %44, i32 0, i32 50, !dbg !4344
  call void @finish_wait(%struct.wait_queue_head* %state_event47, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !4344
  br label %__out, !dbg !4344

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !4375), !dbg !4344
  %45 = load i64, i64* %__ret19, align 8, !dbg !4344
  store i64 %45, i64* %tmp48, align 8, !dbg !4344
  %46 = load i64, i64* %tmp48, align 8, !dbg !4344
  store i64 %46, i64* %__ret, align 8, !dbg !4331
  br label %if.end49, !dbg !4331

if.end49:                                         ; preds = %__out, %lor.end16
  %47 = load i64, i64* %__ret, align 8, !dbg !4303
  store i64 %47, i64* %tmp50, align 8, !dbg !4331
  %48 = load i64, i64* %tmp50, align 8, !dbg !4303
  %49 = load i32, i32* %rx_status, align 4, !dbg !4376
  %cmp = icmp eq i32 %49, 2, !dbg !4377
  %50 = zext i1 %cmp to i64, !dbg !4378
  %cond = select i1 %cmp, i32 0, i32 -5, !dbg !4378
  store i32 %cond, i32* %retval, align 4, !dbg !4379
  br label %return, !dbg !4379

return:                                           ; preds = %if.end49, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !4380
  ret i32 %51, !dbg !4380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mhi_download_rddm_in_panic(%struct.mhi_controller* %mhi_cntrl) #0 !dbg !4381 {
entry:
  %retval = alloca i32, align 4
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %ret = alloca i32, align 4
  %rx_status = alloca i32, align 4
  %ee = alloca i32, align 4
  %delayus = alloca i32, align 4
  %retry = alloca i32, align 4
  %rddm_timeout_us = alloca i32, align 4
  %rddm_retry = alloca i32, align 4
  %base = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4384, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.declare(metadata i32* %rx_status, metadata !4386, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.declare(metadata i32* %ee, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.declare(metadata i32* %delayus, metadata !4390, metadata !DIExpression()), !dbg !4392
  store i32 2000, i32* %delayus, align 4, !dbg !4392
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !4393, metadata !DIExpression()), !dbg !4394
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4395
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 35, !dbg !4396
  %1 = load i32, i32* %timeout_ms, align 8, !dbg !4396
  %mul = mul i32 %1, 1000, !dbg !4397
  %div = udiv i32 %mul, 2000, !dbg !4398
  store i32 %div, i32* %retry, align 4, !dbg !4394
  call void @llvm.dbg.declare(metadata i32* %rddm_timeout_us, metadata !4399, metadata !DIExpression()), !dbg !4400
  store i32 200000, i32* %rddm_timeout_us, align 4, !dbg !4400
  call void @llvm.dbg.declare(metadata i32* %rddm_retry, metadata !4401, metadata !DIExpression()), !dbg !4402
  store i32 100, i32* %rddm_retry, align 4, !dbg !4402
  call void @llvm.dbg.declare(metadata i8** %base, metadata !4403, metadata !DIExpression()), !dbg !4404
  %2 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4405
  %bhie = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %2, i32 0, i32 5, !dbg !4406
  %3 = load i8*, i8** %bhie, align 8, !dbg !4406
  store i8* %3, i8** %base, align 8, !dbg !4404
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4407, metadata !DIExpression()), !dbg !4408
  %4 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4409
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %4, i32 0, i32 1, !dbg !4410
  %5 = load %struct.mhi_device*, %struct.mhi_device** %mhi_dev, align 8, !dbg !4410
  %dev1 = getelementptr inbounds %struct.mhi_device, %struct.mhi_device* %5, i32 0, i32 5, !dbg !4411
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !4408
  %6 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4412
  %pm_state = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %6, i32 0, i32 36, !dbg !4413
  store i32 2048, i32* %pm_state, align 4, !dbg !4414
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4415, !srcloc !4416
  %7 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4417
  %call = call i32 @mhi_get_exec_env(%struct.mhi_controller* %7) #10, !dbg !4418
  store i32 %call, i32* %ee, align 4, !dbg !4419
  %8 = load i32, i32* %ee, align 4, !dbg !4420
  %cmp = icmp ne i32 %8, 3, !dbg !4422
  br i1 %cmp, label %if.then, label %if.end9, !dbg !4423

if.then:                                          ; preds = %entry
  %9 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4424
  call void @mhi_set_mhi_state(%struct.mhi_controller* %9, i32 255) #10, !dbg !4426
  br label %while.cond, !dbg !4427

while.cond:                                       ; preds = %if.end, %if.then
  %10 = load i32, i32* %rddm_retry, align 4, !dbg !4428
  %dec = add i32 %10, -1, !dbg !4428
  store i32 %dec, i32* %rddm_retry, align 4, !dbg !4428
  %tobool = icmp ne i32 %10, 0, !dbg !4427
  br i1 %tobool, label %while.body, label %while.end, !dbg !4427

while.body:                                       ; preds = %while.cond
  %11 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4429
  %call2 = call i32 @mhi_get_exec_env(%struct.mhi_controller* %11) #10, !dbg !4431
  store i32 %call2, i32* %ee, align 4, !dbg !4432
  %12 = load i32, i32* %ee, align 4, !dbg !4433
  %cmp3 = icmp eq i32 %12, 3, !dbg !4435
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4436

if.then4:                                         ; preds = %while.body
  br label %while.end, !dbg !4437

if.end:                                           ; preds = %while.body
  call void @__const_udelay(i64 8590000) #10, !dbg !4438
  br label %while.cond, !dbg !4427, !llvm.loop !4443

while.end:                                        ; preds = %if.then4, %while.cond
  %13 = load i32, i32* %rddm_retry, align 4, !dbg !4445
  %cmp5 = icmp sle i32 %13, 0, !dbg !4447
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4448

if.then6:                                         ; preds = %while.end
  %14 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4449
  %15 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4451
  %regs = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %15, i32 0, i32 3, !dbg !4452
  %16 = load i8*, i8** %regs, align 8, !dbg !4452
  call void @mhi_write_reg(%struct.mhi_controller* %14, i8* %16, i32 176, i32 1) #10, !dbg !4453
  call void @__const_udelay(i64 8590000) #10, !dbg !4454
  br label %if.end7, !dbg !4459

if.end7:                                          ; preds = %if.then6, %while.end
  %17 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4460
  %call8 = call i32 @mhi_get_exec_env(%struct.mhi_controller* %17) #10, !dbg !4461
  store i32 %call8, i32* %ee, align 4, !dbg !4462
  br label %if.end9, !dbg !4463

if.end9:                                          ; preds = %if.end7, %entry
  br label %while.cond10, !dbg !4464

while.cond10:                                     ; preds = %if.end20, %if.end9
  %18 = load i32, i32* %retry, align 4, !dbg !4465
  %dec11 = add i32 %18, -1, !dbg !4465
  store i32 %dec11, i32* %retry, align 4, !dbg !4465
  %tobool12 = icmp ne i32 %18, 0, !dbg !4464
  br i1 %tobool12, label %while.body13, label %while.end21, !dbg !4464

while.body13:                                     ; preds = %while.cond10
  %19 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4466
  %20 = load i8*, i8** %base, align 8, !dbg !4468
  %call14 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %19, i8* %20, i32 120, i32 -1073741824, i32 30, i32* %rx_status) #10, !dbg !4469
  store i32 %call14, i32* %ret, align 4, !dbg !4470
  %21 = load i32, i32* %ret, align 4, !dbg !4471
  %tobool15 = icmp ne i32 %21, 0, !dbg !4471
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4473

if.then16:                                        ; preds = %while.body13
  store i32 -5, i32* %retval, align 4, !dbg !4474
  br label %return, !dbg !4474

if.end17:                                         ; preds = %while.body13
  %22 = load i32, i32* %rx_status, align 4, !dbg !4475
  %cmp18 = icmp eq i32 %22, 2, !dbg !4477
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4478

if.then19:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !4479
  br label %return, !dbg !4479

if.end20:                                         ; preds = %if.end17
  call void @__const_udelay(i64 8590000) #10, !dbg !4480
  br label %while.cond10, !dbg !4464, !llvm.loop !4485

while.end21:                                      ; preds = %while.cond10
  %23 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4487
  %call22 = call i32 @mhi_get_exec_env(%struct.mhi_controller* %23) #10, !dbg !4488
  store i32 %call22, i32* %ee, align 4, !dbg !4489
  %24 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4490
  %25 = load i8*, i8** %base, align 8, !dbg !4491
  %call23 = call i32 @mhi_read_reg(%struct.mhi_controller* %24, i8* %25, i32 120, i32* %rx_status) #10, !dbg !4492
  store i32 %call23, i32* %ret, align 4, !dbg !4493
  %26 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4494
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !4494
  %27 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4495
  %28 = load i32, i32* %ee, align 4, !dbg !4495
  %cmp24 = icmp uge i32 %28, 9, !dbg !4495
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !4495

cond.true:                                        ; preds = %while.end21
  br label %cond.end, !dbg !4495

cond.false:                                       ; preds = %while.end21
  %29 = load i32, i32* %ee, align 4, !dbg !4495
  %idxprom = zext i32 %29 to i64, !dbg !4495
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @mhi_ee_str, i64 0, i64 %idxprom, !dbg !4495
  %30 = load i8*, i8** %arrayidx, align 8, !dbg !4495
  br label %cond.end, !dbg !4495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %cond.true ], [ %30, %cond.false ], !dbg !4495
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %cond) #12, !dbg !4495
  %31 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4496
  %32 = load i32, i32* %rx_status, align 4, !dbg !4496
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %32) #12, !dbg !4496
  store i32 -5, i32* %retval, align 4, !dbg !4497
  br label %return, !dbg !4497

return:                                           ; preds = %cond.end, %if.then19, %if.then16
  %33 = load i32, i32* %retval, align 4, !dbg !4498
  ret i32 %33, !dbg !4498
}

; Function Attrs: noredzone
declare dso_local i32 @mhi_read_reg_field(%struct.mhi_controller*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mhi_free_bhie_table(%struct.mhi_controller* %mhi_cntrl, %struct.image_info* %image_info) #0 !dbg !4499 {
entry:
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %image_info.addr = alloca %struct.image_info*, align 8
  %i = alloca i32, align 4
  %mhi_buf = alloca %struct.mhi_buf*, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  store %struct.image_info* %image_info, %struct.image_info** %image_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.image_info** %image_info.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata %struct.mhi_buf** %mhi_buf, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load %struct.image_info*, %struct.image_info** %image_info.addr, align 8, !dbg !4508
  %mhi_buf1 = getelementptr inbounds %struct.image_info, %struct.image_info* %0, i32 0, i32 0, !dbg !4509
  %1 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf1, align 8, !dbg !4509
  store %struct.mhi_buf* %1, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4507
  store i32 0, i32* %i, align 4, !dbg !4510
  br label %for.cond, !dbg !4512

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4513
  %3 = load %struct.image_info*, %struct.image_info** %image_info.addr, align 8, !dbg !4515
  %entries = getelementptr inbounds %struct.image_info, %struct.image_info* %3, i32 0, i32 2, !dbg !4516
  %4 = load i32, i32* %entries, align 8, !dbg !4516
  %cmp = icmp ult i32 %2, %4, !dbg !4517
  br i1 %cmp, label %for.body, label %for.end, !dbg !4518

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4519
  %6 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4520
  %len = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %6, i32 0, i32 3, !dbg !4521
  %7 = load i64, i64* %len, align 8, !dbg !4521
  %8 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4522
  %buf = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %8, i32 0, i32 0, !dbg !4523
  %9 = load i8*, i8** %buf, align 8, !dbg !4523
  %10 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4524
  %dma_addr = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %10, i32 0, i32 2, !dbg !4525
  %11 = load i64, i64* %dma_addr, align 8, !dbg !4525
  call void @mhi_free_coherent(%struct.mhi_controller* %5, i64 %7, i8* %9, i64 %11) #10, !dbg !4526
  br label %for.inc, !dbg !4526

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !4527
  %inc = add i32 %12, 1, !dbg !4527
  store i32 %inc, i32* %i, align 4, !dbg !4527
  %13 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4528
  %incdec.ptr = getelementptr %struct.mhi_buf, %struct.mhi_buf* %13, i32 1, !dbg !4528
  store %struct.mhi_buf* %incdec.ptr, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4528
  br label %for.cond, !dbg !4529, !llvm.loop !4530

for.end:                                          ; preds = %for.cond
  %14 = load %struct.image_info*, %struct.image_info** %image_info.addr, align 8, !dbg !4532
  %mhi_buf2 = getelementptr inbounds %struct.image_info, %struct.image_info* %14, i32 0, i32 0, !dbg !4533
  %15 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf2, align 8, !dbg !4533
  %16 = bitcast %struct.mhi_buf* %15 to i8*, !dbg !4532
  call void @kfree(i8* %16) #10, !dbg !4534
  %17 = load %struct.image_info*, %struct.image_info** %image_info.addr, align 8, !dbg !4535
  %18 = bitcast %struct.image_info* %17 to i8*, !dbg !4535
  call void @kfree(i8* %18) #10, !dbg !4536
  ret void, !dbg !4537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mhi_free_coherent(%struct.mhi_controller* %mhi_cntrl, i64 %size, i8* %vaddr, i64 %dma_handle) #0 !dbg !4538 {
entry:
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %size.addr = alloca i64, align 8
  %vaddr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !4545, metadata !DIExpression()), !dbg !4546
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4549
  %cntrl_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 0, !dbg !4550
  %1 = load %struct.device*, %struct.device** %cntrl_dev, align 8, !dbg !4550
  %2 = load i64, i64* %size.addr, align 8, !dbg !4551
  %3 = load i8*, i8** %vaddr.addr, align 8, !dbg !4552
  %4 = load i64, i64* %dma_handle.addr, align 8, !dbg !4553
  call void @dma_free_coherent(%struct.device* %1, i64 %2, i8* %3, i64 %4) #10, !dbg !4554
  ret void, !dbg !4555
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mhi_alloc_bhie_table(%struct.mhi_controller* %mhi_cntrl, %struct.image_info** %image_info, i64 %alloc_size) #0 !dbg !4556 {
entry:
  %retval = alloca i32, align 4
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %image_info.addr = alloca %struct.image_info**, align 8
  %alloc_size.addr = alloca i64, align 8
  %seg_size = alloca i64, align 8
  %segments = alloca i32, align 4
  %i = alloca i32, align 4
  %img_info = alloca %struct.image_info*, align 8
  %mhi_buf = alloca %struct.mhi_buf*, align 8
  %vec_size = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  store %struct.image_info** %image_info, %struct.image_info*** %image_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.image_info*** %image_info.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  store i64 %alloc_size, i64* %alloc_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alloc_size.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.declare(metadata i64* %seg_size, metadata !4566, metadata !DIExpression()), !dbg !4567
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4568
  %seg_len = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 13, !dbg !4569
  %1 = load i64, i64* %seg_len, align 8, !dbg !4569
  store i64 %1, i64* %seg_size, align 8, !dbg !4567
  call void @llvm.dbg.declare(metadata i32* %segments, metadata !4570, metadata !DIExpression()), !dbg !4571
  %2 = load i64, i64* %alloc_size.addr, align 8, !dbg !4572
  %3 = load i64, i64* %seg_size, align 8, !dbg !4572
  %add = add i64 %2, %3, !dbg !4572
  %sub = sub i64 %add, 1, !dbg !4572
  %4 = load i64, i64* %seg_size, align 8, !dbg !4572
  %div = udiv i64 %sub, %4, !dbg !4572
  %add1 = add i64 %div, 1, !dbg !4573
  %conv = trunc i64 %add1 to i32, !dbg !4572
  store i32 %conv, i32* %segments, align 4, !dbg !4571
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.declare(metadata %struct.image_info** %img_info, metadata !4576, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.declare(metadata %struct.mhi_buf** %mhi_buf, metadata !4578, metadata !DIExpression()), !dbg !4579
  %call = call i8* @kzalloc(i64 24, i32 3264) #10, !dbg !4580
  %5 = bitcast i8* %call to %struct.image_info*, !dbg !4580
  store %struct.image_info* %5, %struct.image_info** %img_info, align 8, !dbg !4581
  %6 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4582
  %tobool = icmp ne %struct.image_info* %6, null, !dbg !4582
  br i1 %tobool, label %if.end, label %if.then, !dbg !4584

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %segments, align 4, !dbg !4586
  %conv2 = sext i32 %7 to i64, !dbg !4586
  %call3 = call i8* @kcalloc(i64 %conv2, i64 32, i32 3264) #10, !dbg !4587
  %8 = bitcast i8* %call3 to %struct.mhi_buf*, !dbg !4587
  %9 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4588
  %mhi_buf4 = getelementptr inbounds %struct.image_info, %struct.image_info* %9, i32 0, i32 0, !dbg !4589
  store %struct.mhi_buf* %8, %struct.mhi_buf** %mhi_buf4, align 8, !dbg !4590
  %10 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4591
  %mhi_buf5 = getelementptr inbounds %struct.image_info, %struct.image_info* %10, i32 0, i32 0, !dbg !4593
  %11 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf5, align 8, !dbg !4593
  %tobool6 = icmp ne %struct.mhi_buf* %11, null, !dbg !4591
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4594

if.then7:                                         ; preds = %if.end
  br label %error_alloc_mhi_buf, !dbg !4595

if.end8:                                          ; preds = %if.end
  %12 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4596
  %mhi_buf9 = getelementptr inbounds %struct.image_info, %struct.image_info* %12, i32 0, i32 0, !dbg !4597
  %13 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf9, align 8, !dbg !4597
  store %struct.mhi_buf* %13, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4598
  store i32 0, i32* %i, align 4, !dbg !4599
  br label %for.cond, !dbg !4601

for.cond:                                         ; preds = %for.inc, %if.end8
  %14 = load i32, i32* %i, align 4, !dbg !4602
  %15 = load i32, i32* %segments, align 4, !dbg !4604
  %cmp = icmp slt i32 %14, %15, !dbg !4605
  br i1 %cmp, label %for.body, label %for.end, !dbg !4606

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %vec_size, metadata !4607, metadata !DIExpression()), !dbg !4609
  %16 = load i64, i64* %seg_size, align 8, !dbg !4610
  store i64 %16, i64* %vec_size, align 8, !dbg !4609
  %17 = load i32, i32* %i, align 4, !dbg !4611
  %18 = load i32, i32* %segments, align 4, !dbg !4613
  %sub11 = sub i32 %18, 1, !dbg !4614
  %cmp12 = icmp eq i32 %17, %sub11, !dbg !4615
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !4616

if.then14:                                        ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !4617
  %conv15 = sext i32 %19 to i64, !dbg !4617
  %mul = mul i64 16, %conv15, !dbg !4618
  store i64 %mul, i64* %vec_size, align 8, !dbg !4619
  br label %if.end16, !dbg !4620

if.end16:                                         ; preds = %if.then14, %for.body
  %20 = load i64, i64* %vec_size, align 8, !dbg !4621
  %21 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4622
  %len = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %21, i32 0, i32 3, !dbg !4623
  store i64 %20, i64* %len, align 8, !dbg !4624
  %22 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4625
  %23 = load i64, i64* %vec_size, align 8, !dbg !4626
  %24 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4627
  %dma_addr = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %24, i32 0, i32 2, !dbg !4628
  %call17 = call i8* @mhi_alloc_coherent(%struct.mhi_controller* %22, i64 %23, i64* %dma_addr, i32 3264) #10, !dbg !4629
  %25 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4630
  %buf = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %25, i32 0, i32 0, !dbg !4631
  store i8* %call17, i8** %buf, align 8, !dbg !4632
  %26 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4633
  %buf18 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %26, i32 0, i32 0, !dbg !4635
  %27 = load i8*, i8** %buf18, align 8, !dbg !4635
  %tobool19 = icmp ne i8* %27, null, !dbg !4633
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !4636

if.then20:                                        ; preds = %if.end16
  br label %error_alloc_segment, !dbg !4637

if.end21:                                         ; preds = %if.end16
  br label %for.inc, !dbg !4638

for.inc:                                          ; preds = %if.end21
  %28 = load i32, i32* %i, align 4, !dbg !4639
  %inc = add i32 %28, 1, !dbg !4639
  store i32 %inc, i32* %i, align 4, !dbg !4639
  %29 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4640
  %incdec.ptr = getelementptr %struct.mhi_buf, %struct.mhi_buf* %29, i32 1, !dbg !4640
  store %struct.mhi_buf* %incdec.ptr, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4640
  br label %for.cond, !dbg !4641, !llvm.loop !4642

for.end:                                          ; preds = %for.cond
  %30 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4644
  %mhi_buf22 = getelementptr inbounds %struct.image_info, %struct.image_info* %30, i32 0, i32 0, !dbg !4645
  %31 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf22, align 8, !dbg !4645
  %32 = load i32, i32* %segments, align 4, !dbg !4646
  %sub23 = sub i32 %32, 1, !dbg !4647
  %idxprom = sext i32 %sub23 to i64, !dbg !4644
  %arrayidx = getelementptr %struct.mhi_buf, %struct.mhi_buf* %31, i64 %idxprom, !dbg !4644
  %buf24 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %arrayidx, i32 0, i32 0, !dbg !4648
  %33 = load i8*, i8** %buf24, align 8, !dbg !4648
  %34 = bitcast i8* %33 to %struct.bhi_vec_entry*, !dbg !4644
  %35 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4649
  %bhi_vec = getelementptr inbounds %struct.image_info, %struct.image_info* %35, i32 0, i32 1, !dbg !4650
  store %struct.bhi_vec_entry* %34, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !4651
  %36 = load i32, i32* %segments, align 4, !dbg !4652
  %37 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4653
  %entries = getelementptr inbounds %struct.image_info, %struct.image_info* %37, i32 0, i32 2, !dbg !4654
  store i32 %36, i32* %entries, align 8, !dbg !4655
  %38 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4656
  %39 = load %struct.image_info**, %struct.image_info*** %image_info.addr, align 8, !dbg !4657
  store %struct.image_info* %38, %struct.image_info** %39, align 8, !dbg !4658
  store i32 0, i32* %retval, align 4, !dbg !4659
  br label %return, !dbg !4659

error_alloc_segment:                              ; preds = %if.then20
  call void @llvm.dbg.label(metadata !4660), !dbg !4661
  %40 = load i32, i32* %i, align 4, !dbg !4662
  %dec = add i32 %40, -1, !dbg !4662
  store i32 %dec, i32* %i, align 4, !dbg !4662
  %41 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4664
  %incdec.ptr25 = getelementptr %struct.mhi_buf, %struct.mhi_buf* %41, i32 -1, !dbg !4664
  store %struct.mhi_buf* %incdec.ptr25, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4664
  br label %for.cond26, !dbg !4662

for.cond26:                                       ; preds = %for.inc33, %error_alloc_segment
  %42 = load i32, i32* %i, align 4, !dbg !4665
  %cmp27 = icmp sge i32 %42, 0, !dbg !4667
  br i1 %cmp27, label %for.body29, label %for.end36, !dbg !4668

for.body29:                                       ; preds = %for.cond26
  %43 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4669
  %44 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4670
  %len30 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %44, i32 0, i32 3, !dbg !4671
  %45 = load i64, i64* %len30, align 8, !dbg !4671
  %46 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4672
  %buf31 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %46, i32 0, i32 0, !dbg !4673
  %47 = load i8*, i8** %buf31, align 8, !dbg !4673
  %48 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4674
  %dma_addr32 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %48, i32 0, i32 2, !dbg !4675
  %49 = load i64, i64* %dma_addr32, align 8, !dbg !4675
  call void @mhi_free_coherent(%struct.mhi_controller* %43, i64 %45, i8* %47, i64 %49) #10, !dbg !4676
  br label %for.inc33, !dbg !4676

for.inc33:                                        ; preds = %for.body29
  %50 = load i32, i32* %i, align 4, !dbg !4677
  %dec34 = add i32 %50, -1, !dbg !4677
  store i32 %dec34, i32* %i, align 4, !dbg !4677
  %51 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4678
  %incdec.ptr35 = getelementptr %struct.mhi_buf, %struct.mhi_buf* %51, i32 -1, !dbg !4678
  store %struct.mhi_buf* %incdec.ptr35, %struct.mhi_buf** %mhi_buf, align 8, !dbg !4678
  br label %for.cond26, !dbg !4679, !llvm.loop !4680

for.end36:                                        ; preds = %for.cond26
  br label %error_alloc_mhi_buf, !dbg !4681

error_alloc_mhi_buf:                              ; preds = %for.end36, %if.then7
  call void @llvm.dbg.label(metadata !4682), !dbg !4683
  %52 = load %struct.image_info*, %struct.image_info** %img_info, align 8, !dbg !4684
  %53 = bitcast %struct.image_info* %52 to i8*, !dbg !4684
  call void @kfree(i8* %53) #10, !dbg !4685
  store i32 -12, i32* %retval, align 4, !dbg !4686
  br label %return, !dbg !4686

return:                                           ; preds = %error_alloc_mhi_buf, %for.end, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !4687
  ret i32 %54, !dbg !4687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4688 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4691, metadata !DIExpression()), !dbg !4695
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4701, metadata !DIExpression()), !dbg !4702
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4703, metadata !DIExpression()), !dbg !4704
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4705, metadata !DIExpression()), !dbg !4706
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4707, metadata !DIExpression()), !dbg !4711
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4713, metadata !DIExpression()), !dbg !4717
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4719, metadata !DIExpression()), !dbg !4723
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4728, metadata !DIExpression()), !dbg !4729
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4730, metadata !DIExpression()), !dbg !4731
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4732, metadata !DIExpression()), !dbg !4733
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4734, metadata !DIExpression()), !dbg !4735
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4736, metadata !DIExpression()), !dbg !4737
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4738, metadata !DIExpression()), !dbg !4739
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4740, metadata !DIExpression()), !dbg !4741
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4742, metadata !DIExpression()), !dbg !4743
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4746, metadata !DIExpression()), !dbg !4747
  %0 = load i64, i64* %size.addr, align 8, !dbg !4748
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4749
  %or = or i32 %1, 256, !dbg !4750
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4751
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4752
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4753

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4754
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4755
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4756

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4757
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4758
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4759
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4760
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4737
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4761
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4762
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4763
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4764
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4765
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4766
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4767
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4767
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4767
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4767
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4767
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4768
  br label %kmalloc.exit, !dbg !4768

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4769
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4770
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4772

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4773
  br label %kmalloc_index.exit.i, !dbg !4773

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4774
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4776
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4777

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4778
  br label %kmalloc_index.exit.i, !dbg !4778

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4781
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4782

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4784
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4785

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4786
  br label %kmalloc_index.exit.i, !dbg !4786

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4789
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4790

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4791
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4792
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4793

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4794
  br label %kmalloc_index.exit.i, !dbg !4794

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4795
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4797
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4798

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4799
  br label %kmalloc_index.exit.i, !dbg !4799

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4800
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4802
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4803

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4804
  br label %kmalloc_index.exit.i, !dbg !4804

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4805
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4807
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4808

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4809
  br label %kmalloc_index.exit.i, !dbg !4809

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4810
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4812
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4813

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4814
  br label %kmalloc_index.exit.i, !dbg !4814

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4815
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4817
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4818

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4819
  br label %kmalloc_index.exit.i, !dbg !4819

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4820
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4822
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4823

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4824
  br label %kmalloc_index.exit.i, !dbg !4824

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4825
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4827
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4828

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4829
  br label %kmalloc_index.exit.i, !dbg !4829

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4830
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4832
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4833

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4834
  br label %kmalloc_index.exit.i, !dbg !4834

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4835
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4837
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4838

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4839
  br label %kmalloc_index.exit.i, !dbg !4839

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4840
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4842
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4843

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4844
  br label %kmalloc_index.exit.i, !dbg !4844

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4845
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4847
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4848

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4849
  br label %kmalloc_index.exit.i, !dbg !4849

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4850
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4852
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4853

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4854
  br label %kmalloc_index.exit.i, !dbg !4854

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4855
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4857
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4858

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4859
  br label %kmalloc_index.exit.i, !dbg !4859

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4860
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4862
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4863

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4864
  br label %kmalloc_index.exit.i, !dbg !4864

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4865
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4867
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4868

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4869
  br label %kmalloc_index.exit.i, !dbg !4869

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4870
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4872
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4873

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4874
  br label %kmalloc_index.exit.i, !dbg !4874

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4875
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4877
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4878

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4879
  br label %kmalloc_index.exit.i, !dbg !4879

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4880
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4882
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4883

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4884
  br label %kmalloc_index.exit.i, !dbg !4884

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4885
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4887
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4888

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4889
  br label %kmalloc_index.exit.i, !dbg !4889

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4890
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4892
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4893

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4894
  br label %kmalloc_index.exit.i, !dbg !4894

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4895
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4897
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4898

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4899
  br label %kmalloc_index.exit.i, !dbg !4899

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4900
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4902
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4903

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4904
  br label %kmalloc_index.exit.i, !dbg !4904

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4905
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4907
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4908

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4909
  br label %kmalloc_index.exit.i, !dbg !4909

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4910
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4912
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4913

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4914
  br label %kmalloc_index.exit.i, !dbg !4914

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4915, !srcloc !4918
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 233) #9, !dbg !4919, !srcloc !4922
  unreachable, !dbg !4923

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4924
  store i32 %45, i32* %index.i, align 4, !dbg !4925
  %46 = load i32, i32* %index.i, align 4, !dbg !4926
  %tobool.i = icmp ne i32 %46, 0, !dbg !4926
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4928

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4929
  br label %kmalloc.exit, !dbg !4929

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4930
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4931
  %and.i.i = and i32 %48, 17, !dbg !4931
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4931
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4931
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4931
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4931
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4933

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4934
  br label %kmalloc_type.exit.i, !dbg !4934

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4935
  %and2.i.i = and i32 %49, 1, !dbg !4936
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4935
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4935
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4935
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4937
  br label %kmalloc_type.exit.i, !dbg !4937

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4938
  %idxprom.i = zext i32 %51 to i64, !dbg !4939
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4939
  %52 = load i32, i32* %index.i, align 4, !dbg !4940
  %idxprom6.i = zext i32 %52 to i64, !dbg !4939
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4939
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4939
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4941
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4942
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4943
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4944
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4945
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4945
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4945
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4945
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4945
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4706
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4946
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4947
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4948
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4949
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4950
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4951
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4952
  store i8* %62, i8** %retval.i, align 8, !dbg !4953
  br label %kmalloc.exit, !dbg !4953

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4954
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4955
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4956
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4956
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4956
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4956
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4956
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4957
  br label %kmalloc.exit, !dbg !4957

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4958
  ret i8* %65, !dbg !4959
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4960 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  %0 = load i64, i64* %n.addr, align 8, !dbg !4969
  %1 = load i64, i64* %size.addr, align 8, !dbg !4970
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4971
  %or = or i32 %2, 256, !dbg !4972
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4973
  ret i8* %call, !dbg !4974
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @mhi_alloc_coherent(%struct.mhi_controller* %mhi_cntrl, i64 %size, i64* %dma_handle, i32 %gfp) #0 !dbg !4975 {
entry:
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %gfp.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4987, metadata !DIExpression()), !dbg !4988
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !4989
  %cntrl_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 0, !dbg !4990
  %1 = load %struct.device*, %struct.device** %cntrl_dev, align 8, !dbg !4990
  %2 = load i64, i64* %size.addr, align 8, !dbg !4991
  %3 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4992
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !4993
  %call = call i8* @dma_alloc_coherent(%struct.device* %1, i64 %2, i64* %3, i32 %4) #10, !dbg !4994
  store i8* %call, i8** %buf, align 8, !dbg !4988
  %5 = load i8*, i8** %buf, align 8, !dbg !4995
  ret i8* %5, !dbg !4996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mhi_fw_load_handler(%struct.mhi_controller* %mhi_cntrl) #0 !dbg !4997 {
entry:
  %retval.i186 = alloca i64, align 8
  %m.addr.i187 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i187, metadata !4269, metadata !DIExpression()), !dbg !4998
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4269, metadata !DIExpression()), !dbg !5003
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %firmware = alloca %struct.firmware*, align 8
  %image_info = alloca %struct.image_info*, align 8
  %dev = alloca %struct.device*, align 8
  %fw_name = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %dma_addr = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret128 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond133 = alloca i8, align 1
  %tmp151 = alloca i32, align 4
  %tmp165 = alloca i64, align 8
  %tmp167 = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.declare(metadata %struct.firmware** %firmware, metadata !5007, metadata !DIExpression()), !dbg !5018
  store %struct.firmware* null, %struct.firmware** %firmware, align 8, !dbg !5018
  call void @llvm.dbg.declare(metadata %struct.image_info** %image_info, metadata !5019, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5021, metadata !DIExpression()), !dbg !5022
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5023
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 1, !dbg !5024
  %1 = load %struct.mhi_device*, %struct.mhi_device** %mhi_dev, align 8, !dbg !5024
  %dev1 = getelementptr inbounds %struct.mhi_device, %struct.mhi_device* %1, i32 0, i32 5, !dbg !5025
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5022
  call void @llvm.dbg.declare(metadata i8** %fw_name, metadata !5026, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata i64* %dma_addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i64* %size, metadata !5032, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5034, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5036, metadata !DIExpression()), !dbg !5037
  %2 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5038
  %pm_state = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %2, i32 0, i32 36, !dbg !5038
  %3 = load i32, i32* %pm_state, align 4, !dbg !5038
  %conv = zext i32 %3 to i64, !dbg !5038
  %cmp = icmp uge i64 %conv, 128, !dbg !5038
  br i1 %cmp, label %if.then, label %if.end, !dbg !5040

if.then:                                          ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5041
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #12, !dbg !5041
  br label %return, !dbg !5043

if.end:                                           ; preds = %entry
  %5 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5044
  %6 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5045
  %bhi = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %6, i32 0, i32 4, !dbg !5046
  %7 = load i8*, i8** %bhi, align 8, !dbg !5046
  %8 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5047
  %serial_number = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %8, i32 0, i32 28, !dbg !5048
  %call = call i32 @mhi_read_reg(%struct.mhi_controller* %5, i8* %7, i32 64, i32* %serial_number) #10, !dbg !5049
  store i32 %call, i32* %ret, align 4, !dbg !5050
  %9 = load i32, i32* %ret, align 4, !dbg !5051
  %tobool = icmp ne i32 %9, 0, !dbg !5051
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !5053

if.then3:                                         ; preds = %if.end
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5054
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !5054
  br label %if.end4, !dbg !5054

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %i, align 4, !dbg !5055
  br label %for.cond, !dbg !5057

for.cond:                                         ; preds = %for.inc, %if.end4
  %11 = load i32, i32* %i, align 4, !dbg !5058
  %conv5 = sext i32 %11 to i64, !dbg !5058
  %cmp6 = icmp ult i64 %conv5, 16, !dbg !5060
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5061

for.body:                                         ; preds = %for.cond
  %12 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5062
  %13 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5064
  %bhi8 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %13, i32 0, i32 4, !dbg !5065
  %14 = load i8*, i8** %bhi8, align 8, !dbg !5065
  %15 = load i32, i32* %i, align 4, !dbg !5066
  %mul = mul i32 4, %15, !dbg !5066
  %add = add i32 100, %mul, !dbg !5066
  %16 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5067
  %oem_pk_hash = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %16, i32 0, i32 29, !dbg !5068
  %17 = load i32, i32* %i, align 4, !dbg !5069
  %idxprom = sext i32 %17 to i64, !dbg !5067
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %oem_pk_hash, i64 0, i64 %idxprom, !dbg !5067
  %call9 = call i32 @mhi_read_reg(%struct.mhi_controller* %12, i8* %14, i32 %add, i32* %arrayidx) #10, !dbg !5070
  store i32 %call9, i32* %ret, align 4, !dbg !5071
  %18 = load i32, i32* %ret, align 4, !dbg !5072
  %tobool10 = icmp ne i32 %18, 0, !dbg !5072
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5074

if.then11:                                        ; preds = %for.body
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5075
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !5075
  br label %for.end, !dbg !5077

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !5078

for.inc:                                          ; preds = %if.end12
  %20 = load i32, i32* %i, align 4, !dbg !5079
  %inc = add i32 %20, 1, !dbg !5079
  store i32 %inc, i32* %i, align 4, !dbg !5079
  br label %for.cond, !dbg !5080, !llvm.loop !5081

for.end:                                          ; preds = %if.then11, %for.cond
  %21 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5083
  %ee = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %21, i32 0, i32 38, !dbg !5085
  %22 = load i32, i32* %ee, align 4, !dbg !5085
  %cmp13 = icmp eq i32 %22, 5, !dbg !5086
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5087

if.then15:                                        ; preds = %for.end
  br label %fw_load_ee_pthru, !dbg !5088

if.end16:                                         ; preds = %for.end
  %23 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5089
  %ee17 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %23, i32 0, i32 38, !dbg !5090
  %24 = load i32, i32* %ee17, align 4, !dbg !5090
  %cmp18 = icmp eq i32 %24, 6, !dbg !5091
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !5092

cond.true:                                        ; preds = %if.end16
  %25 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5093
  %edl_image = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %25, i32 0, i32 10, !dbg !5094
  %26 = load i8*, i8** %edl_image, align 8, !dbg !5094
  br label %cond.end, !dbg !5092

cond.false:                                       ; preds = %if.end16
  %27 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5095
  %fw_image = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %27, i32 0, i32 9, !dbg !5096
  %28 = load i8*, i8** %fw_image, align 8, !dbg !5096
  br label %cond.end, !dbg !5092

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %26, %cond.true ], [ %28, %cond.false ], !dbg !5092
  store i8* %cond, i8** %fw_name, align 8, !dbg !5097
  %29 = load i8*, i8** %fw_name, align 8, !dbg !5098
  %tobool20 = icmp ne i8* %29, null, !dbg !5098
  br i1 %tobool20, label %lor.lhs.false, label %if.then26, !dbg !5100

lor.lhs.false:                                    ; preds = %cond.end
  %30 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5101
  %fbc_download = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %30, i32 0, i32 63, !dbg !5102
  %31 = load i8, i8* %fbc_download, align 1, !dbg !5102
  %tobool21 = trunc i8 %31 to i1, !dbg !5102
  br i1 %tobool21, label %land.lhs.true, label %if.end27, !dbg !5103

land.lhs.true:                                    ; preds = %lor.lhs.false
  %32 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5104
  %sbl_size = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %32, i32 0, i32 12, !dbg !5105
  %33 = load i64, i64* %sbl_size, align 8, !dbg !5105
  %tobool23 = icmp ne i64 %33, 0, !dbg !5104
  br i1 %tobool23, label %lor.lhs.false24, label %if.then26, !dbg !5106

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %34 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5107
  %seg_len = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %34, i32 0, i32 13, !dbg !5108
  %35 = load i64, i64* %seg_len, align 8, !dbg !5108
  %tobool25 = icmp ne i64 %35, 0, !dbg !5107
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5109

if.then26:                                        ; preds = %lor.lhs.false24, %land.lhs.true, %cond.end
  %36 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5110
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !5110
  br label %return, !dbg !5112

if.end27:                                         ; preds = %lor.lhs.false24, %lor.lhs.false
  %37 = load i8*, i8** %fw_name, align 8, !dbg !5113
  %38 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5114
  %call28 = call i32 @request_firmware(%struct.firmware** %firmware, i8* %37, %struct.device* %38) #10, !dbg !5115
  store i32 %call28, i32* %ret, align 4, !dbg !5116
  %39 = load i32, i32* %ret, align 4, !dbg !5117
  %tobool29 = icmp ne i32 %39, 0, !dbg !5117
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5119

if.then30:                                        ; preds = %if.end27
  %40 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5120
  %41 = load i32, i32* %ret, align 4, !dbg !5120
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %41) #12, !dbg !5120
  br label %return, !dbg !5122

if.end31:                                         ; preds = %if.end27
  %42 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5123
  %fbc_download32 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %42, i32 0, i32 63, !dbg !5124
  %43 = load i8, i8* %fbc_download32, align 1, !dbg !5124
  %tobool33 = trunc i8 %43 to i1, !dbg !5124
  br i1 %tobool33, label %cond.true35, label %cond.false37, !dbg !5125

cond.true35:                                      ; preds = %if.end31
  %44 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5126
  %sbl_size36 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %44, i32 0, i32 12, !dbg !5127
  %45 = load i64, i64* %sbl_size36, align 8, !dbg !5127
  br label %cond.end39, !dbg !5125

cond.false37:                                     ; preds = %if.end31
  %46 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5128
  %size38 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0, !dbg !5129
  %47 = load i64, i64* %size38, align 8, !dbg !5129
  br label %cond.end39, !dbg !5125

cond.end39:                                       ; preds = %cond.false37, %cond.true35
  %cond40 = phi i64 [ %45, %cond.true35 ], [ %47, %cond.false37 ], !dbg !5125
  store i64 %cond40, i64* %size, align 8, !dbg !5130
  %48 = load i64, i64* %size, align 8, !dbg !5131
  %49 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5133
  %size41 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 0, !dbg !5134
  %50 = load i64, i64* %size41, align 8, !dbg !5134
  %cmp42 = icmp ugt i64 %48, %50, !dbg !5135
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !5136

if.then44:                                        ; preds = %cond.end39
  %51 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5137
  %size45 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0, !dbg !5138
  %52 = load i64, i64* %size45, align 8, !dbg !5138
  store i64 %52, i64* %size, align 8, !dbg !5139
  br label %if.end46, !dbg !5140

if.end46:                                         ; preds = %if.then44, %cond.end39
  %53 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5141
  %54 = load i64, i64* %size, align 8, !dbg !5142
  %call47 = call i8* @mhi_alloc_coherent(%struct.mhi_controller* %53, i64 %54, i64* %dma_addr, i32 3264) #10, !dbg !5143
  store i8* %call47, i8** %buf, align 8, !dbg !5144
  %55 = load i8*, i8** %buf, align 8, !dbg !5145
  %tobool48 = icmp ne i8* %55, null, !dbg !5145
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !5147

if.then49:                                        ; preds = %if.end46
  %56 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5148
  call void @release_firmware(%struct.firmware* %56) #10, !dbg !5150
  br label %return, !dbg !5151

if.end50:                                         ; preds = %if.end46
  %57 = load i8*, i8** %buf, align 8, !dbg !5152
  %58 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5153
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 1, !dbg !5154
  %59 = load i8*, i8** %data, align 8, !dbg !5154
  %60 = load i64, i64* %size, align 8, !dbg !5155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %57, i8* align 1 %59, i64 %60, i1 false), !dbg !5156
  %61 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5157
  %62 = load i64, i64* %dma_addr, align 8, !dbg !5158
  %63 = load i64, i64* %size, align 8, !dbg !5159
  %call51 = call i32 @mhi_fw_load_sbl(%struct.mhi_controller* %61, i64 %62, i64 %63) #10, !dbg !5160
  store i32 %call51, i32* %ret, align 4, !dbg !5161
  %64 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5162
  %65 = load i64, i64* %size, align 8, !dbg !5163
  %66 = load i8*, i8** %buf, align 8, !dbg !5164
  %67 = load i64, i64* %dma_addr, align 8, !dbg !5165
  call void @mhi_free_coherent(%struct.mhi_controller* %64, i64 %65, i8* %66, i64 %67) #10, !dbg !5166
  %68 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5167
  %fbc_download52 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %68, i32 0, i32 63, !dbg !5169
  %69 = load i8, i8* %fbc_download52, align 1, !dbg !5169
  %tobool53 = trunc i8 %69 to i1, !dbg !5169
  br i1 %tobool53, label %lor.lhs.false54, label %if.then60, !dbg !5170

lor.lhs.false54:                                  ; preds = %if.end50
  %70 = load i32, i32* %ret, align 4, !dbg !5171
  %tobool55 = icmp ne i32 %70, 0, !dbg !5171
  br i1 %tobool55, label %if.then60, label %lor.lhs.false56, !dbg !5172

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %71 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5173
  %ee57 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %71, i32 0, i32 38, !dbg !5174
  %72 = load i32, i32* %ee57, align 4, !dbg !5174
  %cmp58 = icmp eq i32 %72, 6, !dbg !5175
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5176

if.then60:                                        ; preds = %lor.lhs.false56, %lor.lhs.false54, %if.end50
  %73 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5177
  call void @release_firmware(%struct.firmware* %73) #10, !dbg !5178
  br label %if.end61, !dbg !5178

if.end61:                                         ; preds = %if.then60, %lor.lhs.false56
  %74 = load i32, i32* %ret, align 4, !dbg !5179
  %tobool62 = icmp ne i32 %74, 0, !dbg !5179
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !5181

if.then63:                                        ; preds = %if.end61
  %75 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5182
  %76 = load i32, i32* %ret, align 4, !dbg !5182
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %76) #12, !dbg !5182
  br label %return, !dbg !5184

if.end64:                                         ; preds = %if.end61
  %77 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5185
  %ee65 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %77, i32 0, i32 38, !dbg !5187
  %78 = load i32, i32* %ee65, align 4, !dbg !5187
  %cmp66 = icmp eq i32 %78, 6, !dbg !5188
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !5189

if.then68:                                        ; preds = %if.end64
  br label %return, !dbg !5190

if.end69:                                         ; preds = %if.end64
  br label %do.body, !dbg !5191

do.body:                                          ; preds = %if.end69
  br label %do.body70, !dbg !5192

do.body70:                                        ; preds = %do.body
  call void @arch_local_irq_disable() #10, !dbg !5194
  br label %do.end, !dbg !5194

do.end:                                           ; preds = %do.body70
  br label %do.body71, !dbg !5192

do.body71:                                        ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5196, !srcloc !5198
  br label %do.body72, !dbg !5196

do.body72:                                        ; preds = %do.body71
  %79 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5199
  %pm_lock = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %79, i32 0, i32 34, !dbg !5199
  br label %do.end73, !dbg !5199

do.end73:                                         ; preds = %do.body72
  br label %do.end74, !dbg !5196

do.end74:                                         ; preds = %do.end73
  br label %do.end75, !dbg !5192

do.end75:                                         ; preds = %do.end74
  %80 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5201
  %dev_state = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %80, i32 0, i32 39, !dbg !5202
  store i32 0, i32* %dev_state, align 8, !dbg !5203
  br label %do.body76, !dbg !5204

do.body76:                                        ; preds = %do.end75
  br label %do.body77, !dbg !5205

do.body77:                                        ; preds = %do.body76
  call void @arch_local_irq_enable() #10, !dbg !5207
  br label %do.end78, !dbg !5207

do.end78:                                         ; preds = %do.body77
  br label %do.body79, !dbg !5205

do.body79:                                        ; preds = %do.end78
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5209, !srcloc !5211
  br label %do.body80, !dbg !5209

do.body80:                                        ; preds = %do.body79
  %81 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5212
  %pm_lock81 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %81, i32 0, i32 34, !dbg !5212
  br label %do.end82, !dbg !5212

do.end82:                                         ; preds = %do.body80
  br label %do.end83, !dbg !5209

do.end83:                                         ; preds = %do.end82
  br label %do.end84, !dbg !5205

do.end84:                                         ; preds = %do.end83
  %82 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5214
  %fbc_download85 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %82, i32 0, i32 63, !dbg !5216
  %83 = load i8, i8* %fbc_download85, align 1, !dbg !5216
  %tobool86 = trunc i8 %83 to i1, !dbg !5216
  br i1 %tobool86, label %if.then87, label %if.end94, !dbg !5217

if.then87:                                        ; preds = %do.end84
  %84 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5218
  %85 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5220
  %fbc_image = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %85, i32 0, i32 14, !dbg !5221
  %86 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5222
  %size88 = getelementptr inbounds %struct.firmware, %struct.firmware* %86, i32 0, i32 0, !dbg !5223
  %87 = load i64, i64* %size88, align 8, !dbg !5223
  %call89 = call i32 @mhi_alloc_bhie_table(%struct.mhi_controller* %84, %struct.image_info** %fbc_image, i64 %87) #10, !dbg !5224
  store i32 %call89, i32* %ret, align 4, !dbg !5225
  %88 = load i32, i32* %ret, align 4, !dbg !5226
  %tobool90 = icmp ne i32 %88, 0, !dbg !5226
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !5228

if.then91:                                        ; preds = %if.then87
  br label %error_alloc_fw_table, !dbg !5229

if.end92:                                         ; preds = %if.then87
  %89 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5230
  %90 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5231
  %91 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5232
  %fbc_image93 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %91, i32 0, i32 14, !dbg !5233
  %92 = load %struct.image_info*, %struct.image_info** %fbc_image93, align 8, !dbg !5233
  call void @mhi_firmware_copy(%struct.mhi_controller* %89, %struct.firmware* %90, %struct.image_info* %92) #10, !dbg !5234
  br label %if.end94, !dbg !5235

if.end94:                                         ; preds = %if.end92, %do.end84
  br label %fw_load_ee_pthru, !dbg !5216

fw_load_ee_pthru:                                 ; preds = %if.end94, %if.then15
  call void @llvm.dbg.label(metadata !5236), !dbg !5237
  %93 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5238
  %call95 = call i32 @mhi_ready_state_transition(%struct.mhi_controller* %93) #10, !dbg !5239
  store i32 %call95, i32* %ret, align 4, !dbg !5240
  %94 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5241
  %fbc_download96 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %94, i32 0, i32 63, !dbg !5243
  %95 = load i8, i8* %fbc_download96, align 1, !dbg !5243
  %tobool97 = trunc i8 %95 to i1, !dbg !5243
  br i1 %tobool97, label %if.end99, label %if.then98, !dbg !5244

if.then98:                                        ; preds = %fw_load_ee_pthru
  br label %return, !dbg !5245

if.end99:                                         ; preds = %fw_load_ee_pthru
  %96 = load i32, i32* %ret, align 4, !dbg !5246
  %tobool100 = icmp ne i32 %96, 0, !dbg !5246
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !5248

if.then101:                                       ; preds = %if.end99
  %97 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5249
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !5249
  br label %error_read, !dbg !5251

if.end102:                                        ; preds = %if.end99
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5252, metadata !DIExpression()), !dbg !5253
  %98 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5253
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %98, i32 0, i32 35, !dbg !5253
  %99 = load i32, i32* %timeout_ms, align 8, !dbg !5253
  store i32 %99, i32* %m.addr.i, align 4
  %100 = load i32, i32* %m.addr.i, align 4, !dbg !5254
  %101 = call i1 @llvm.is.constant.i32(i32 %100) #9, !dbg !5255
  br i1 %101, label %if.then.i, label %if.else.i, !dbg !5256

if.then.i:                                        ; preds = %if.end102
  %102 = load i32, i32* %m.addr.i, align 4, !dbg !5257
  %cmp.i = icmp slt i32 %102, 0, !dbg !5258
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5259

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5260
  br label %msecs_to_jiffies.exit, !dbg !5260

if.end.i:                                         ; preds = %if.then.i
  %103 = load i32, i32* %m.addr.i, align 4, !dbg !5261
  %call.i = call i64 @_msecs_to_jiffies(i32 %103) #11, !dbg !5262
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5263
  br label %msecs_to_jiffies.exit, !dbg !5263

if.else.i:                                        ; preds = %if.end102
  %104 = load i32, i32* %m.addr.i, align 4, !dbg !5264
  %call2.i = call i64 @__msecs_to_jiffies(i32 %104) #11, !dbg !5265
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5266
  br label %msecs_to_jiffies.exit, !dbg !5266

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %105 = load i64, i64* %retval.i, align 8, !dbg !5267
  store i64 %105, i64* %__ret, align 8, !dbg !5253
  br label %do.body104, !dbg !5253

do.body104:                                       ; preds = %msecs_to_jiffies.exit
  br label %do.body105, !dbg !5268

do.body105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !5270

do.end106:                                        ; preds = %do.body105
  br label %do.end107, !dbg !5268

do.end107:                                        ; preds = %do.end106
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !5272, metadata !DIExpression()), !dbg !5274
  %106 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5274
  %ee108 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %106, i32 0, i32 38, !dbg !5274
  %107 = load i32, i32* %ee108, align 4, !dbg !5274
  %cmp109 = icmp eq i32 %107, 1, !dbg !5274
  br i1 %cmp109, label %lor.end, label %lor.rhs, !dbg !5274

lor.rhs:                                          ; preds = %do.end107
  %108 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5274
  %pm_state111 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %108, i32 0, i32 36, !dbg !5274
  %109 = load i32, i32* %pm_state111, align 4, !dbg !5274
  %conv112 = zext i32 %109 to i64, !dbg !5274
  %cmp113 = icmp uge i64 %conv112, 128, !dbg !5274
  br label %lor.end, !dbg !5274

lor.end:                                          ; preds = %lor.rhs, %do.end107
  %110 = phi i1 [ true, %do.end107 ], [ %cmp113, %lor.rhs ]
  %frombool = zext i1 %110 to i8, !dbg !5274
  store i8 %frombool, i8* %__cond, align 1, !dbg !5274
  %111 = load i8, i8* %__cond, align 1, !dbg !5275
  %tobool115 = trunc i8 %111 to i1, !dbg !5275
  br i1 %tobool115, label %land.lhs.true117, label %if.end120, !dbg !5275

land.lhs.true117:                                 ; preds = %lor.end
  %112 = load i64, i64* %__ret, align 8, !dbg !5275
  %tobool118 = icmp ne i64 %112, 0, !dbg !5275
  br i1 %tobool118, label %if.end120, label %if.then119, !dbg !5274

if.then119:                                       ; preds = %land.lhs.true117
  store i64 1, i64* %__ret, align 8, !dbg !5275
  br label %if.end120, !dbg !5275

if.end120:                                        ; preds = %if.then119, %land.lhs.true117, %lor.end
  %113 = load i8, i8* %__cond, align 1, !dbg !5274
  %tobool121 = trunc i8 %113 to i1, !dbg !5274
  br i1 %tobool121, label %lor.end125, label %lor.rhs123, !dbg !5274

lor.rhs123:                                       ; preds = %if.end120
  %114 = load i64, i64* %__ret, align 8, !dbg !5274
  %tobool124 = icmp ne i64 %114, 0, !dbg !5274
  %lnot = xor i1 %tobool124, true, !dbg !5274
  br label %lor.end125, !dbg !5274

lor.end125:                                       ; preds = %lor.rhs123, %if.end120
  %115 = phi i1 [ true, %if.end120 ], [ %lnot, %lor.rhs123 ]
  %lor.ext = zext i1 %115 to i32, !dbg !5274
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !5275
  %116 = load i32, i32* %tmp, align 4, !dbg !5274
  %tobool126 = icmp ne i32 %116, 0, !dbg !5277
  br i1 %tobool126, label %if.end166, label %if.then127, !dbg !5253

if.then127:                                       ; preds = %lor.end125
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata i64* %__ret128, metadata !5280, metadata !DIExpression()), !dbg !5279
  %117 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5279
  %timeout_ms129 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %117, i32 0, i32 35, !dbg !5279
  %118 = load i32, i32* %timeout_ms129, align 8, !dbg !5279
  store i32 %118, i32* %m.addr.i187, align 4
  %119 = load i32, i32* %m.addr.i187, align 4, !dbg !5281
  %120 = call i1 @llvm.is.constant.i32(i32 %119) #9, !dbg !5282
  br i1 %120, label %if.then.i189, label %if.else.i194, !dbg !5283

if.then.i189:                                     ; preds = %if.then127
  %121 = load i32, i32* %m.addr.i187, align 4, !dbg !5284
  %cmp.i188 = icmp slt i32 %121, 0, !dbg !5285
  br i1 %cmp.i188, label %if.then1.i190, label %if.end.i192, !dbg !5286

if.then1.i190:                                    ; preds = %if.then.i189
  store i64 4611686018427387902, i64* %retval.i186, align 8, !dbg !5287
  br label %msecs_to_jiffies.exit195, !dbg !5287

if.end.i192:                                      ; preds = %if.then.i189
  %122 = load i32, i32* %m.addr.i187, align 4, !dbg !5288
  %call.i191 = call i64 @_msecs_to_jiffies(i32 %122) #11, !dbg !5289
  store i64 %call.i191, i64* %retval.i186, align 8, !dbg !5290
  br label %msecs_to_jiffies.exit195, !dbg !5290

if.else.i194:                                     ; preds = %if.then127
  %123 = load i32, i32* %m.addr.i187, align 4, !dbg !5291
  %call2.i193 = call i64 @__msecs_to_jiffies(i32 %123) #11, !dbg !5292
  store i64 %call2.i193, i64* %retval.i186, align 8, !dbg !5293
  br label %msecs_to_jiffies.exit195, !dbg !5293

msecs_to_jiffies.exit195:                         ; preds = %if.then1.i190, %if.end.i192, %if.else.i194
  %124 = load i64, i64* %retval.i186, align 8, !dbg !5294
  store i64 %124, i64* %__ret128, align 8, !dbg !5279
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5279
  br label %for.cond131, !dbg !5279

for.cond131:                                      ; preds = %if.end161, %msecs_to_jiffies.exit195
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5295, metadata !DIExpression()), !dbg !5299
  %125 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5299
  %state_event = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %125, i32 0, i32 50, !dbg !5299
  %call132 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %state_event, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !5299
  store i64 %call132, i64* %__int, align 8, !dbg !5299
  call void @llvm.dbg.declare(metadata i8* %__cond133, metadata !5300, metadata !DIExpression()), !dbg !5303
  %126 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5303
  %ee134 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %126, i32 0, i32 38, !dbg !5303
  %127 = load i32, i32* %ee134, align 4, !dbg !5303
  %cmp135 = icmp eq i32 %127, 1, !dbg !5303
  br i1 %cmp135, label %lor.end142, label %lor.rhs137, !dbg !5303

lor.rhs137:                                       ; preds = %for.cond131
  %128 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5303
  %pm_state138 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %128, i32 0, i32 36, !dbg !5303
  %129 = load i32, i32* %pm_state138, align 4, !dbg !5303
  %conv139 = zext i32 %129 to i64, !dbg !5303
  %cmp140 = icmp uge i64 %conv139, 128, !dbg !5303
  br label %lor.end142, !dbg !5303

lor.end142:                                       ; preds = %lor.rhs137, %for.cond131
  %130 = phi i1 [ true, %for.cond131 ], [ %cmp140, %lor.rhs137 ]
  %frombool144 = zext i1 %130 to i8, !dbg !5303
  store i8 %frombool144, i8* %__cond133, align 1, !dbg !5303
  %131 = load i8, i8* %__cond133, align 1, !dbg !5304
  %tobool145 = trunc i8 %131 to i1, !dbg !5304
  br i1 %tobool145, label %land.lhs.true147, label %if.end150, !dbg !5304

land.lhs.true147:                                 ; preds = %lor.end142
  %132 = load i64, i64* %__ret128, align 8, !dbg !5304
  %tobool148 = icmp ne i64 %132, 0, !dbg !5304
  br i1 %tobool148, label %if.end150, label %if.then149, !dbg !5303

if.then149:                                       ; preds = %land.lhs.true147
  store i64 1, i64* %__ret128, align 8, !dbg !5304
  br label %if.end150, !dbg !5304

if.end150:                                        ; preds = %if.then149, %land.lhs.true147, %lor.end142
  %133 = load i8, i8* %__cond133, align 1, !dbg !5303
  %tobool152 = trunc i8 %133 to i1, !dbg !5303
  br i1 %tobool152, label %lor.end157, label %lor.rhs154, !dbg !5303

lor.rhs154:                                       ; preds = %if.end150
  %134 = load i64, i64* %__ret128, align 8, !dbg !5303
  %tobool155 = icmp ne i64 %134, 0, !dbg !5303
  %lnot156 = xor i1 %tobool155, true, !dbg !5303
  br label %lor.end157, !dbg !5303

lor.end157:                                       ; preds = %lor.rhs154, %if.end150
  %135 = phi i1 [ true, %if.end150 ], [ %lnot156, %lor.rhs154 ]
  %lor.ext158 = zext i1 %135 to i32, !dbg !5303
  store i32 %lor.ext158, i32* %tmp151, align 4, !dbg !5304
  %136 = load i32, i32* %tmp151, align 4, !dbg !5303
  %tobool159 = icmp ne i32 %136, 0, !dbg !5306
  br i1 %tobool159, label %if.then160, label %if.end161, !dbg !5299

if.then160:                                       ; preds = %lor.end157
  br label %for.end163, !dbg !5306

if.end161:                                        ; preds = %lor.end157
  %137 = load i64, i64* %__ret128, align 8, !dbg !5299
  %call162 = call i64 @schedule_timeout(i64 %137) #10, !dbg !5299
  store i64 %call162, i64* %__ret128, align 8, !dbg !5299
  br label %for.cond131, !dbg !5307, !llvm.loop !5308

for.end163:                                       ; preds = %if.then160
  %138 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5279
  %state_event164 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %138, i32 0, i32 50, !dbg !5279
  call void @finish_wait(%struct.wait_queue_head* %state_event164, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5279
  br label %__out, !dbg !5279

__out:                                            ; preds = %for.end163
  call void @llvm.dbg.label(metadata !5310), !dbg !5279
  %139 = load i64, i64* %__ret128, align 8, !dbg !5279
  store i64 %139, i64* %tmp165, align 8, !dbg !5279
  %140 = load i64, i64* %tmp165, align 8, !dbg !5279
  store i64 %140, i64* %__ret, align 8, !dbg !5277
  br label %if.end166, !dbg !5277

if.end166:                                        ; preds = %__out, %lor.end125
  %141 = load i64, i64* %__ret, align 8, !dbg !5253
  store i64 %141, i64* %tmp167, align 8, !dbg !5277
  %142 = load i64, i64* %tmp167, align 8, !dbg !5253
  %conv168 = trunc i64 %142 to i32, !dbg !5311
  store i32 %conv168, i32* %ret, align 4, !dbg !5312
  %143 = load i32, i32* %ret, align 4, !dbg !5313
  %tobool169 = icmp ne i32 %143, 0, !dbg !5313
  br i1 %tobool169, label %lor.lhs.false170, label %if.then175, !dbg !5315

lor.lhs.false170:                                 ; preds = %if.end166
  %144 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5316
  %pm_state171 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %144, i32 0, i32 36, !dbg !5316
  %145 = load i32, i32* %pm_state171, align 4, !dbg !5316
  %conv172 = zext i32 %145 to i64, !dbg !5316
  %cmp173 = icmp uge i64 %conv172, 128, !dbg !5316
  br i1 %cmp173, label %if.then175, label %if.end176, !dbg !5317

if.then175:                                       ; preds = %lor.lhs.false170, %if.end166
  %146 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5318
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !5318
  br label %error_read, !dbg !5320

if.end176:                                        ; preds = %lor.lhs.false170
  %147 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5321
  %fbc_image177 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %147, i32 0, i32 14, !dbg !5322
  %148 = load %struct.image_info*, %struct.image_info** %fbc_image177, align 8, !dbg !5322
  store %struct.image_info* %148, %struct.image_info** %image_info, align 8, !dbg !5323
  %149 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5324
  %150 = load %struct.image_info*, %struct.image_info** %image_info, align 8, !dbg !5325
  %mhi_buf = getelementptr inbounds %struct.image_info, %struct.image_info* %150, i32 0, i32 0, !dbg !5326
  %151 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5326
  %152 = load %struct.image_info*, %struct.image_info** %image_info, align 8, !dbg !5327
  %entries = getelementptr inbounds %struct.image_info, %struct.image_info* %152, i32 0, i32 2, !dbg !5328
  %153 = load i32, i32* %entries, align 8, !dbg !5328
  %sub = sub i32 %153, 1, !dbg !5329
  %idxprom178 = zext i32 %sub to i64, !dbg !5325
  %arrayidx179 = getelementptr %struct.mhi_buf, %struct.mhi_buf* %151, i64 %idxprom178, !dbg !5325
  %call180 = call i32 @mhi_fw_load_amss(%struct.mhi_controller* %149, %struct.mhi_buf* %arrayidx179) #10, !dbg !5330
  store i32 %call180, i32* %ret, align 4, !dbg !5331
  %154 = load i32, i32* %ret, align 4, !dbg !5332
  %tobool181 = icmp ne i32 %154, 0, !dbg !5332
  br i1 %tobool181, label %if.then182, label %if.end183, !dbg !5334

if.then182:                                       ; preds = %if.end176
  %155 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5335
  %156 = load i32, i32* %ret, align 4, !dbg !5335
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %156) #12, !dbg !5335
  br label %if.end183, !dbg !5335

if.end183:                                        ; preds = %if.then182, %if.end176
  %157 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5336
  call void @release_firmware(%struct.firmware* %157) #10, !dbg !5337
  br label %return, !dbg !5338

error_read:                                       ; preds = %if.then175, %if.then101
  call void @llvm.dbg.label(metadata !5339), !dbg !5340
  %158 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5341
  %159 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5342
  %fbc_image184 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %159, i32 0, i32 14, !dbg !5343
  %160 = load %struct.image_info*, %struct.image_info** %fbc_image184, align 8, !dbg !5343
  call void @mhi_free_bhie_table(%struct.mhi_controller* %158, %struct.image_info* %160) #10, !dbg !5344
  %161 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5345
  %fbc_image185 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %161, i32 0, i32 14, !dbg !5346
  store %struct.image_info* null, %struct.image_info** %fbc_image185, align 8, !dbg !5347
  br label %error_alloc_fw_table, !dbg !5345

error_alloc_fw_table:                             ; preds = %error_read, %if.then91
  call void @llvm.dbg.label(metadata !5348), !dbg !5349
  %162 = load %struct.firmware*, %struct.firmware** %firmware, align 8, !dbg !5350
  call void @release_firmware(%struct.firmware* %162) #10, !dbg !5351
  br label %return, !dbg !5352

return:                                           ; preds = %error_alloc_fw_table, %if.end183, %if.then98, %if.then68, %if.then63, %if.then49, %if.then30, %if.then26, %if.then
  ret void, !dbg !5352
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @mhi_read_reg(%struct.mhi_controller*, i8*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mhi_fw_load_sbl(%struct.mhi_controller* %mhi_cntrl, i64 %dma_addr, i64 %size) #0 !dbg !5353 {
entry:
  %val.addr.i.i138 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr.i.i138, metadata !5356, metadata !DIExpression()), !dbg !5359
  %pao_ID__.i.i139 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pao_ID__.i.i139, metadata !5369, metadata !DIExpression()), !dbg !5372
  %pto_val__.i.i140 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pto_val__.i.i140, metadata !5373, metadata !DIExpression()), !dbg !5377
  %ip.addr.i141 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ip.addr.i141, metadata !5378, metadata !DIExpression()), !dbg !5379
  %cnt.addr.i142 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %cnt.addr.i142, metadata !5380, metadata !DIExpression()), !dbg !5381
  %retval.i128 = alloca i64, align 8
  %m.addr.i129 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i129, metadata !4269, metadata !DIExpression()), !dbg !5382
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4269, metadata !DIExpression()), !dbg !5387
  %val.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr.i.i, metadata !5356, metadata !DIExpression()), !dbg !5389
  %pao_ID__.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pao_ID__.i.i, metadata !5369, metadata !DIExpression()), !dbg !5393
  %pto_val__.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pto_val__.i.i, metadata !5373, metadata !DIExpression()), !dbg !5394
  %ip.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ip.addr.i, metadata !5378, metadata !DIExpression()), !dbg !5395
  %cnt.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %cnt.addr.i, metadata !5380, metadata !DIExpression()), !dbg !5396
  %retval = alloca i32, align 4
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %dma_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %tx_status = alloca i32, align 4
  %val = alloca i32, align 4
  %session_id = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %base = alloca i8*, align 8
  %pm_lock = alloca %struct.rwlock_t*, align 8
  %dev = alloca %struct.device*, align 8
  %error_reg = alloca [5 x %struct.anon.69], align 16
  %tmp = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp18 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp38 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret46 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond50 = alloca i8, align 1
  %tmp69 = alloca i32, align 4
  %tmp82 = alloca i64, align 8
  %tmp84 = alloca i64, align 8
  %tmp97 = alloca i64, align 8
  %tmp121 = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.declare(metadata i32* %tx_status, metadata !5403, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5405, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.declare(metadata i32* %session_id, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5409, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5411, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.declare(metadata i8** %base, metadata !5413, metadata !DIExpression()), !dbg !5414
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5415
  %bhi = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 4, !dbg !5416
  %1 = load i8*, i8** %bhi, align 8, !dbg !5416
  store i8* %1, i8** %base, align 8, !dbg !5414
  call void @llvm.dbg.declare(metadata %struct.rwlock_t** %pm_lock, metadata !5417, metadata !DIExpression()), !dbg !5419
  %2 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5420
  %pm_lock1 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %2, i32 0, i32 34, !dbg !5421
  store %struct.rwlock_t* %pm_lock1, %struct.rwlock_t** %pm_lock, align 8, !dbg !5419
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5422, metadata !DIExpression()), !dbg !5423
  %3 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5424
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %3, i32 0, i32 1, !dbg !5425
  %4 = load %struct.mhi_device*, %struct.mhi_device** %mhi_dev, align 8, !dbg !5425
  %dev2 = getelementptr inbounds %struct.mhi_device, %struct.mhi_device* %4, i32 0, i32 5, !dbg !5426
  store %struct.device* %dev2, %struct.device** %dev, align 8, !dbg !5423
  call void @llvm.dbg.declare(metadata [5 x %struct.anon.69]* %error_reg, metadata !5427, metadata !DIExpression()), !dbg !5435
  %5 = bitcast [5 x %struct.anon.69]* %error_reg to i8*, !dbg !5435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([5 x %struct.anon.69]* @__const.mhi_fw_load_sbl.error_reg to i8*), i64 80, i1 false), !dbg !5435
  br label %do.body, !dbg !5436

do.body:                                          ; preds = %entry
  br label %__here, !dbg !5437

__here:                                           ; preds = %indirectgoto, %do.body
  call void @llvm.dbg.label(metadata !5439), !dbg !5437
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_sbl, %__here) to i64), i64* %tmp, align 8, !dbg !5437
  %6 = load i64, i64* %tmp, align 8, !dbg !5437
  store i64 %6, i64* %ip.addr.i, align 8
  store i32 512, i32* %cnt.addr.i, align 4
  %7 = load i32, i32* %cnt.addr.i, align 4, !dbg !5440
  store i32 %7, i32* %val.addr.i.i, align 4
  %8 = load i32, i32* %val.addr.i.i, align 4, !dbg !5393
  %9 = call i1 @llvm.is.constant.i32(i32 %8) #9, !dbg !5393
  br i1 %9, label %land.lhs.true.i.i, label %cond.false.i.i, !dbg !5393

land.lhs.true.i.i:                                ; preds = %__here
  %10 = load i32, i32* %val.addr.i.i, align 4, !dbg !5393
  %cmp.i.i = icmp eq i32 %10, 1, !dbg !5393
  br i1 %cmp.i.i, label %cond.true.i.i, label %lor.lhs.false.i.i, !dbg !5393

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %11 = load i32, i32* %val.addr.i.i, align 4, !dbg !5393
  %cmp1.i.i = icmp eq i32 %11, -1, !dbg !5393
  br i1 %cmp1.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !5393

cond.true.i.i:                                    ; preds = %lor.lhs.false.i.i, %land.lhs.true.i.i
  %12 = load i32, i32* %val.addr.i.i, align 4, !dbg !5393
  br label %__local_bh_disable_ip.exit, !dbg !5393

cond.false.i.i:                                   ; preds = %lor.lhs.false.i.i, %__here
  br label %__local_bh_disable_ip.exit, !dbg !5393

__local_bh_disable_ip.exit:                       ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %12, %cond.true.i.i ], [ 0, %cond.false.i.i ], !dbg !5393
  store i32 %cond.i.i, i32* %pao_ID__.i.i, align 4, !dbg !5393
  %13 = load i32, i32* %val.addr.i.i, align 4, !dbg !5394
  %conv.i.i = sext i32 %13 to i64, !dbg !5394
  %and.i.i = and i64 %conv.i.i, 4294967295, !dbg !5394
  %conv3.i.i = trunc i64 %and.i.i to i32, !dbg !5394
  store i32 %conv3.i.i, i32* %pto_val__.i.i, align 4, !dbg !5394
  %14 = load i32, i32* %pto_val__.i.i, align 4, !dbg !5394
  call void asm "addl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count, i32 %14, i32* @__preempt_count) #9, !dbg !5394, !srcloc !5441
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5442, !srcloc !5443
  br label %do.body3, !dbg !5444

do.body3:                                         ; preds = %__local_bh_disable_ip.exit
  %15 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5445
  br label %do.end, !dbg !5445

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !5444

do.end4:                                          ; preds = %do.end
  %16 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5447
  %pm_state = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %16, i32 0, i32 36, !dbg !5447
  %17 = load i32, i32* %pm_state, align 4, !dbg !5447
  %conv = zext i32 %17 to i64, !dbg !5447
  %and = and i64 %conv, 2014, !dbg !5447
  %tobool = icmp ne i64 %and, 0, !dbg !5447
  br i1 %tobool, label %if.end, label %if.then, !dbg !5449

if.then:                                          ; preds = %do.end4
  br label %do.body5, !dbg !5450

do.body5:                                         ; preds = %if.then
  br label %__here6, !dbg !5452

__here6:                                          ; preds = %indirectgoto, %do.body5
  call void @llvm.dbg.label(metadata !5455), !dbg !5452
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_sbl, %__here6) to i64), i64* %tmp7, align 8, !dbg !5452
  %18 = load i64, i64* %tmp7, align 8, !dbg !5452
  call void @__local_bh_enable_ip(i64 %18, i32 512) #10, !dbg !5456
  br label %do.body8, !dbg !5456

do.body8:                                         ; preds = %__here6
  %19 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5457
  br label %do.end9, !dbg !5457

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5456

do.end10:                                         ; preds = %do.end9
  br label %invalid_pm_state, !dbg !5459

if.end:                                           ; preds = %do.end4
  %call = call i32 @prandom_u32_max(i32 1073741823) #10, !dbg !5460
  %add = add i32 %call, 1, !dbg !5460
  store i32 %add, i32* %session_id, align 4, !dbg !5461
  %20 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5462
  %21 = load i8*, i8** %base, align 8, !dbg !5463
  call void @mhi_write_reg(%struct.mhi_controller* %20, i8* %21, i32 44, i32 0) #10, !dbg !5464
  %22 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5465
  %23 = load i8*, i8** %base, align 8, !dbg !5466
  %24 = load i64, i64* %dma_addr.addr, align 8, !dbg !5467
  %shr = lshr i64 %24, 16, !dbg !5467
  %shr11 = lshr i64 %shr, 16, !dbg !5467
  %conv12 = trunc i64 %shr11 to i32, !dbg !5467
  call void @mhi_write_reg(%struct.mhi_controller* %22, i8* %23, i32 12, i32 %conv12) #10, !dbg !5468
  %25 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5469
  %26 = load i8*, i8** %base, align 8, !dbg !5470
  %27 = load i64, i64* %dma_addr.addr, align 8, !dbg !5471
  %and13 = and i64 %27, 4294967295, !dbg !5471
  %conv14 = trunc i64 %and13 to i32, !dbg !5471
  call void @mhi_write_reg(%struct.mhi_controller* %25, i8* %26, i32 8, i32 %conv14) #10, !dbg !5472
  %28 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5473
  %29 = load i8*, i8** %base, align 8, !dbg !5474
  %30 = load i64, i64* %size.addr, align 8, !dbg !5475
  %conv15 = trunc i64 %30 to i32, !dbg !5475
  call void @mhi_write_reg(%struct.mhi_controller* %28, i8* %29, i32 16, i32 %conv15) #10, !dbg !5476
  %31 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5477
  %32 = load i8*, i8** %base, align 8, !dbg !5478
  %33 = load i32, i32* %session_id, align 4, !dbg !5479
  call void @mhi_write_reg(%struct.mhi_controller* %31, i8* %32, i32 24, i32 %33) #10, !dbg !5480
  br label %do.body16, !dbg !5481

do.body16:                                        ; preds = %if.end
  br label %__here17, !dbg !5482

__here17:                                         ; preds = %indirectgoto, %do.body16
  call void @llvm.dbg.label(metadata !5485), !dbg !5482
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_sbl, %__here17) to i64), i64* %tmp18, align 8, !dbg !5482
  %34 = load i64, i64* %tmp18, align 8, !dbg !5482
  call void @__local_bh_enable_ip(i64 %34, i32 512) #10, !dbg !5486
  br label %do.body19, !dbg !5486

do.body19:                                        ; preds = %__here17
  %35 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5487
  br label %do.end20, !dbg !5487

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !5486

do.end21:                                         ; preds = %do.end20
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5489, metadata !DIExpression()), !dbg !5490
  %36 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5490
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %36, i32 0, i32 35, !dbg !5490
  %37 = load i32, i32* %timeout_ms, align 8, !dbg !5490
  store i32 %37, i32* %m.addr.i, align 4
  %38 = load i32, i32* %m.addr.i, align 4, !dbg !5491
  %39 = call i1 @llvm.is.constant.i32(i32 %38) #9, !dbg !5492
  br i1 %39, label %if.then.i, label %if.else.i, !dbg !5493

if.then.i:                                        ; preds = %do.end21
  %40 = load i32, i32* %m.addr.i, align 4, !dbg !5494
  %cmp.i = icmp slt i32 %40, 0, !dbg !5495
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5496

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5497
  br label %msecs_to_jiffies.exit, !dbg !5497

if.end.i:                                         ; preds = %if.then.i
  %41 = load i32, i32* %m.addr.i, align 4, !dbg !5498
  %call.i = call i64 @_msecs_to_jiffies(i32 %41) #11, !dbg !5499
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5500
  br label %msecs_to_jiffies.exit, !dbg !5500

if.else.i:                                        ; preds = %do.end21
  %42 = load i32, i32* %m.addr.i, align 4, !dbg !5501
  %call2.i = call i64 @__msecs_to_jiffies(i32 %42) #11, !dbg !5502
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5503
  br label %msecs_to_jiffies.exit, !dbg !5503

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %43 = load i64, i64* %retval.i, align 8, !dbg !5504
  store i64 %43, i64* %__ret, align 8, !dbg !5490
  br label %do.body23, !dbg !5490

do.body23:                                        ; preds = %msecs_to_jiffies.exit
  br label %do.body24, !dbg !5505

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5507

do.end25:                                         ; preds = %do.body24
  br label %do.end26, !dbg !5505

do.end26:                                         ; preds = %do.end25
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !5509, metadata !DIExpression()), !dbg !5511
  %44 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5511
  %pm_state27 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %44, i32 0, i32 36, !dbg !5511
  %45 = load i32, i32* %pm_state27, align 4, !dbg !5511
  %conv28 = zext i32 %45 to i64, !dbg !5511
  %cmp = icmp uge i64 %conv28, 128, !dbg !5511
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5511

lor.lhs.false:                                    ; preds = %do.end26
  %46 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5511
  %47 = load i8*, i8** %base, align 8, !dbg !5511
  %call30 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %46, i8* %47, i32 44, i32 -1073741824, i32 30, i32* %tx_status) #10, !dbg !5511
  %tobool31 = icmp ne i32 %call30, 0, !dbg !5511
  br i1 %tobool31, label %lor.end, label %lor.rhs, !dbg !5511

lor.rhs:                                          ; preds = %lor.lhs.false
  %48 = load i32, i32* %tx_status, align 4, !dbg !5511
  %tobool32 = icmp ne i32 %48, 0, !dbg !5511
  br label %lor.end, !dbg !5511

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.end26
  %49 = phi i1 [ true, %lor.lhs.false ], [ true, %do.end26 ], [ %tobool32, %lor.rhs ]
  %frombool = zext i1 %49 to i8, !dbg !5511
  store i8 %frombool, i8* %__cond, align 1, !dbg !5511
  %50 = load i8, i8* %__cond, align 1, !dbg !5512
  %tobool33 = trunc i8 %50 to i1, !dbg !5512
  br i1 %tobool33, label %land.lhs.true, label %if.end37, !dbg !5512

land.lhs.true:                                    ; preds = %lor.end
  %51 = load i64, i64* %__ret, align 8, !dbg !5512
  %tobool35 = icmp ne i64 %51, 0, !dbg !5512
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !5511

if.then36:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !5512
  br label %if.end37, !dbg !5512

if.end37:                                         ; preds = %if.then36, %land.lhs.true, %lor.end
  %52 = load i8, i8* %__cond, align 1, !dbg !5511
  %tobool39 = trunc i8 %52 to i1, !dbg !5511
  br i1 %tobool39, label %lor.end43, label %lor.rhs41, !dbg !5511

lor.rhs41:                                        ; preds = %if.end37
  %53 = load i64, i64* %__ret, align 8, !dbg !5511
  %tobool42 = icmp ne i64 %53, 0, !dbg !5511
  %lnot = xor i1 %tobool42, true, !dbg !5511
  br label %lor.end43, !dbg !5511

lor.end43:                                        ; preds = %lor.rhs41, %if.end37
  %54 = phi i1 [ true, %if.end37 ], [ %lnot, %lor.rhs41 ]
  %lor.ext = zext i1 %54 to i32, !dbg !5511
  store i32 %lor.ext, i32* %tmp38, align 4, !dbg !5512
  %55 = load i32, i32* %tmp38, align 4, !dbg !5511
  %tobool44 = icmp ne i32 %55, 0, !dbg !5514
  br i1 %tobool44, label %if.end83, label %if.then45, !dbg !5490

if.then45:                                        ; preds = %lor.end43
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5515, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.declare(metadata i64* %__ret46, metadata !5517, metadata !DIExpression()), !dbg !5516
  %56 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5516
  %timeout_ms47 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %56, i32 0, i32 35, !dbg !5516
  %57 = load i32, i32* %timeout_ms47, align 8, !dbg !5516
  store i32 %57, i32* %m.addr.i129, align 4
  %58 = load i32, i32* %m.addr.i129, align 4, !dbg !5518
  %59 = call i1 @llvm.is.constant.i32(i32 %58) #9, !dbg !5519
  br i1 %59, label %if.then.i131, label %if.else.i136, !dbg !5520

if.then.i131:                                     ; preds = %if.then45
  %60 = load i32, i32* %m.addr.i129, align 4, !dbg !5521
  %cmp.i130 = icmp slt i32 %60, 0, !dbg !5522
  br i1 %cmp.i130, label %if.then1.i132, label %if.end.i134, !dbg !5523

if.then1.i132:                                    ; preds = %if.then.i131
  store i64 4611686018427387902, i64* %retval.i128, align 8, !dbg !5524
  br label %msecs_to_jiffies.exit137, !dbg !5524

if.end.i134:                                      ; preds = %if.then.i131
  %61 = load i32, i32* %m.addr.i129, align 4, !dbg !5525
  %call.i133 = call i64 @_msecs_to_jiffies(i32 %61) #11, !dbg !5526
  store i64 %call.i133, i64* %retval.i128, align 8, !dbg !5527
  br label %msecs_to_jiffies.exit137, !dbg !5527

if.else.i136:                                     ; preds = %if.then45
  %62 = load i32, i32* %m.addr.i129, align 4, !dbg !5528
  %call2.i135 = call i64 @__msecs_to_jiffies(i32 %62) #11, !dbg !5529
  store i64 %call2.i135, i64* %retval.i128, align 8, !dbg !5530
  br label %msecs_to_jiffies.exit137, !dbg !5530

msecs_to_jiffies.exit137:                         ; preds = %if.then1.i132, %if.end.i134, %if.else.i136
  %63 = load i64, i64* %retval.i128, align 8, !dbg !5531
  store i64 %63, i64* %__ret46, align 8, !dbg !5516
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5516
  br label %for.cond, !dbg !5516

for.cond:                                         ; preds = %if.end79, %msecs_to_jiffies.exit137
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5532, metadata !DIExpression()), !dbg !5536
  %64 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5536
  %state_event = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %64, i32 0, i32 50, !dbg !5536
  %call49 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %state_event, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !5536
  store i64 %call49, i64* %__int, align 8, !dbg !5536
  call void @llvm.dbg.declare(metadata i8* %__cond50, metadata !5537, metadata !DIExpression()), !dbg !5540
  %65 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5540
  %pm_state51 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %65, i32 0, i32 36, !dbg !5540
  %66 = load i32, i32* %pm_state51, align 4, !dbg !5540
  %conv52 = zext i32 %66 to i64, !dbg !5540
  %cmp53 = icmp uge i64 %conv52, 128, !dbg !5540
  br i1 %cmp53, label %lor.end60, label %lor.lhs.false55, !dbg !5540

lor.lhs.false55:                                  ; preds = %for.cond
  %67 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5540
  %68 = load i8*, i8** %base, align 8, !dbg !5540
  %call56 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %67, i8* %68, i32 44, i32 -1073741824, i32 30, i32* %tx_status) #10, !dbg !5540
  %tobool57 = icmp ne i32 %call56, 0, !dbg !5540
  br i1 %tobool57, label %lor.end60, label %lor.rhs58, !dbg !5540

lor.rhs58:                                        ; preds = %lor.lhs.false55
  %69 = load i32, i32* %tx_status, align 4, !dbg !5540
  %tobool59 = icmp ne i32 %69, 0, !dbg !5540
  br label %lor.end60, !dbg !5540

lor.end60:                                        ; preds = %lor.rhs58, %lor.lhs.false55, %for.cond
  %70 = phi i1 [ true, %lor.lhs.false55 ], [ true, %for.cond ], [ %tobool59, %lor.rhs58 ]
  %frombool62 = zext i1 %70 to i8, !dbg !5540
  store i8 %frombool62, i8* %__cond50, align 1, !dbg !5540
  %71 = load i8, i8* %__cond50, align 1, !dbg !5541
  %tobool63 = trunc i8 %71 to i1, !dbg !5541
  br i1 %tobool63, label %land.lhs.true65, label %if.end68, !dbg !5541

land.lhs.true65:                                  ; preds = %lor.end60
  %72 = load i64, i64* %__ret46, align 8, !dbg !5541
  %tobool66 = icmp ne i64 %72, 0, !dbg !5541
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !5540

if.then67:                                        ; preds = %land.lhs.true65
  store i64 1, i64* %__ret46, align 8, !dbg !5541
  br label %if.end68, !dbg !5541

if.end68:                                         ; preds = %if.then67, %land.lhs.true65, %lor.end60
  %73 = load i8, i8* %__cond50, align 1, !dbg !5540
  %tobool70 = trunc i8 %73 to i1, !dbg !5540
  br i1 %tobool70, label %lor.end75, label %lor.rhs72, !dbg !5540

lor.rhs72:                                        ; preds = %if.end68
  %74 = load i64, i64* %__ret46, align 8, !dbg !5540
  %tobool73 = icmp ne i64 %74, 0, !dbg !5540
  %lnot74 = xor i1 %tobool73, true, !dbg !5540
  br label %lor.end75, !dbg !5540

lor.end75:                                        ; preds = %lor.rhs72, %if.end68
  %75 = phi i1 [ true, %if.end68 ], [ %lnot74, %lor.rhs72 ]
  %lor.ext76 = zext i1 %75 to i32, !dbg !5540
  store i32 %lor.ext76, i32* %tmp69, align 4, !dbg !5541
  %76 = load i32, i32* %tmp69, align 4, !dbg !5540
  %tobool77 = icmp ne i32 %76, 0, !dbg !5543
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !5536

if.then78:                                        ; preds = %lor.end75
  br label %for.end, !dbg !5543

if.end79:                                         ; preds = %lor.end75
  %77 = load i64, i64* %__ret46, align 8, !dbg !5536
  %call80 = call i64 @schedule_timeout(i64 %77) #10, !dbg !5536
  store i64 %call80, i64* %__ret46, align 8, !dbg !5536
  br label %for.cond, !dbg !5544, !llvm.loop !5545

for.end:                                          ; preds = %if.then78
  %78 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5516
  %state_event81 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %78, i32 0, i32 50, !dbg !5516
  call void @finish_wait(%struct.wait_queue_head* %state_event81, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5516
  br label %__out, !dbg !5516

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5547), !dbg !5516
  %79 = load i64, i64* %__ret46, align 8, !dbg !5516
  store i64 %79, i64* %tmp82, align 8, !dbg !5516
  %80 = load i64, i64* %tmp82, align 8, !dbg !5516
  store i64 %80, i64* %__ret, align 8, !dbg !5514
  br label %if.end83, !dbg !5514

if.end83:                                         ; preds = %__out, %lor.end43
  %81 = load i64, i64* %__ret, align 8, !dbg !5490
  store i64 %81, i64* %tmp84, align 8, !dbg !5514
  %82 = load i64, i64* %tmp84, align 8, !dbg !5490
  %conv85 = trunc i64 %82 to i32, !dbg !5548
  store i32 %conv85, i32* %ret, align 4, !dbg !5549
  %83 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5550
  %pm_state86 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %83, i32 0, i32 36, !dbg !5550
  %84 = load i32, i32* %pm_state86, align 4, !dbg !5550
  %conv87 = zext i32 %84 to i64, !dbg !5550
  %cmp88 = icmp uge i64 %conv87, 128, !dbg !5550
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !5552

if.then90:                                        ; preds = %if.end83
  br label %invalid_pm_state, !dbg !5553

if.end91:                                         ; preds = %if.end83
  %85 = load i32, i32* %tx_status, align 4, !dbg !5554
  %cmp92 = icmp eq i32 %85, 3, !dbg !5555
  br i1 %cmp92, label %if.then94, label %if.end125, !dbg !5556

if.then94:                                        ; preds = %if.end91
  %86 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5557
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !5557
  br label %do.body95, !dbg !5558

do.body95:                                        ; preds = %if.then94
  br label %__here96, !dbg !5559

__here96:                                         ; preds = %indirectgoto, %do.body95
  call void @llvm.dbg.label(metadata !5561), !dbg !5559
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_sbl, %__here96) to i64), i64* %tmp97, align 8, !dbg !5559
  %87 = load i64, i64* %tmp97, align 8, !dbg !5559
  store i64 %87, i64* %ip.addr.i141, align 8
  store i32 512, i32* %cnt.addr.i142, align 4
  %88 = load i32, i32* %cnt.addr.i142, align 4, !dbg !5562
  store i32 %88, i32* %val.addr.i.i138, align 4
  %89 = load i32, i32* %val.addr.i.i138, align 4, !dbg !5372
  %90 = call i1 @llvm.is.constant.i32(i32 %89) #9, !dbg !5372
  br i1 %90, label %land.lhs.true.i.i144, label %cond.false.i.i148, !dbg !5372

land.lhs.true.i.i144:                             ; preds = %__here96
  %91 = load i32, i32* %val.addr.i.i138, align 4, !dbg !5372
  %cmp.i.i143 = icmp eq i32 %91, 1, !dbg !5372
  br i1 %cmp.i.i143, label %cond.true.i.i147, label %lor.lhs.false.i.i146, !dbg !5372

lor.lhs.false.i.i146:                             ; preds = %land.lhs.true.i.i144
  %92 = load i32, i32* %val.addr.i.i138, align 4, !dbg !5372
  %cmp1.i.i145 = icmp eq i32 %92, -1, !dbg !5372
  br i1 %cmp1.i.i145, label %cond.true.i.i147, label %cond.false.i.i148, !dbg !5372

cond.true.i.i147:                                 ; preds = %lor.lhs.false.i.i146, %land.lhs.true.i.i144
  %93 = load i32, i32* %val.addr.i.i138, align 4, !dbg !5372
  br label %__local_bh_disable_ip.exit153, !dbg !5372

cond.false.i.i148:                                ; preds = %lor.lhs.false.i.i146, %__here96
  br label %__local_bh_disable_ip.exit153, !dbg !5372

__local_bh_disable_ip.exit153:                    ; preds = %cond.true.i.i147, %cond.false.i.i148
  %cond.i.i149 = phi i32 [ %93, %cond.true.i.i147 ], [ 0, %cond.false.i.i148 ], !dbg !5372
  store i32 %cond.i.i149, i32* %pao_ID__.i.i139, align 4, !dbg !5372
  %94 = load i32, i32* %val.addr.i.i138, align 4, !dbg !5377
  %conv.i.i150 = sext i32 %94 to i64, !dbg !5377
  %and.i.i151 = and i64 %conv.i.i150, 4294967295, !dbg !5377
  %conv3.i.i152 = trunc i64 %and.i.i151 to i32, !dbg !5377
  store i32 %conv3.i.i152, i32* %pto_val__.i.i140, align 4, !dbg !5377
  %95 = load i32, i32* %pto_val__.i.i140, align 4, !dbg !5377
  call void asm "addl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count, i32 %95, i32* @__preempt_count) #9, !dbg !5377, !srcloc !5441
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5563, !srcloc !5443
  br label %do.body98, !dbg !5564

do.body98:                                        ; preds = %__local_bh_disable_ip.exit153
  %96 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5565
  br label %do.end99, !dbg !5565

do.end99:                                         ; preds = %do.body98
  br label %do.end100, !dbg !5564

do.end100:                                        ; preds = %do.end99
  %97 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5567
  %pm_state101 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %97, i32 0, i32 36, !dbg !5567
  %98 = load i32, i32* %pm_state101, align 4, !dbg !5567
  %conv102 = zext i32 %98 to i64, !dbg !5567
  %and103 = and i64 %conv102, 2014, !dbg !5567
  %tobool104 = icmp ne i64 %and103, 0, !dbg !5567
  br i1 %tobool104, label %if.then105, label %if.end118, !dbg !5569

if.then105:                                       ; preds = %do.end100
  store i32 0, i32* %i, align 4, !dbg !5570
  br label %for.cond106, !dbg !5573

for.cond106:                                      ; preds = %for.inc, %if.then105
  %99 = load i32, i32* %i, align 4, !dbg !5574
  %idxprom = sext i32 %99 to i64, !dbg !5576
  %arrayidx = getelementptr [5 x %struct.anon.69], [5 x %struct.anon.69]* %error_reg, i64 0, i64 %idxprom, !dbg !5576
  %name = getelementptr inbounds %struct.anon.69, %struct.anon.69* %arrayidx, i32 0, i32 0, !dbg !5577
  %100 = load i8*, i8** %name, align 16, !dbg !5577
  %tobool107 = icmp ne i8* %100, null, !dbg !5578
  br i1 %tobool107, label %for.body, label %for.end117, !dbg !5578

for.body:                                         ; preds = %for.cond106
  %101 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5579
  %102 = load i8*, i8** %base, align 8, !dbg !5581
  %103 = load i32, i32* %i, align 4, !dbg !5582
  %idxprom108 = sext i32 %103 to i64, !dbg !5583
  %arrayidx109 = getelementptr [5 x %struct.anon.69], [5 x %struct.anon.69]* %error_reg, i64 0, i64 %idxprom108, !dbg !5583
  %offset = getelementptr inbounds %struct.anon.69, %struct.anon.69* %arrayidx109, i32 0, i32 1, !dbg !5584
  %104 = load i32, i32* %offset, align 8, !dbg !5584
  %call110 = call i32 @mhi_read_reg(%struct.mhi_controller* %101, i8* %102, i32 %104, i32* %val) #10, !dbg !5585
  store i32 %call110, i32* %ret, align 4, !dbg !5586
  %105 = load i32, i32* %ret, align 4, !dbg !5587
  %tobool111 = icmp ne i32 %105, 0, !dbg !5587
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !5589

if.then112:                                       ; preds = %for.body
  br label %for.end117, !dbg !5590

if.end113:                                        ; preds = %for.body
  %106 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5591
  %107 = load i32, i32* %i, align 4, !dbg !5591
  %idxprom114 = sext i32 %107 to i64, !dbg !5591
  %arrayidx115 = getelementptr [5 x %struct.anon.69], [5 x %struct.anon.69]* %error_reg, i64 0, i64 %idxprom114, !dbg !5591
  %name116 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %arrayidx115, i32 0, i32 0, !dbg !5591
  %108 = load i8*, i8** %name116, align 16, !dbg !5591
  %109 = load i32, i32* %val, align 4, !dbg !5591
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %108, i32 %109) #12, !dbg !5591
  br label %for.inc, !dbg !5592

for.inc:                                          ; preds = %if.end113
  %110 = load i32, i32* %i, align 4, !dbg !5593
  %inc = add i32 %110, 1, !dbg !5593
  store i32 %inc, i32* %i, align 4, !dbg !5593
  br label %for.cond106, !dbg !5594, !llvm.loop !5595

for.end117:                                       ; preds = %if.then112, %for.cond106
  br label %if.end118, !dbg !5597

if.end118:                                        ; preds = %for.end117, %do.end100
  br label %do.body119, !dbg !5598

do.body119:                                       ; preds = %if.end118
  br label %__here120, !dbg !5599

__here120:                                        ; preds = %indirectgoto, %do.body119
  call void @llvm.dbg.label(metadata !5602), !dbg !5599
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_sbl, %__here120) to i64), i64* %tmp121, align 8, !dbg !5599
  %111 = load i64, i64* %tmp121, align 8, !dbg !5599
  call void @__local_bh_enable_ip(i64 %111, i32 512) #10, !dbg !5603
  br label %do.body122, !dbg !5603

do.body122:                                       ; preds = %__here120
  %112 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5604
  br label %do.end123, !dbg !5604

do.end123:                                        ; preds = %do.body122
  br label %do.end124, !dbg !5603

do.end124:                                        ; preds = %do.end123
  br label %invalid_pm_state, !dbg !5606

if.end125:                                        ; preds = %if.end91
  %113 = load i32, i32* %ret, align 4, !dbg !5607
  %tobool126 = icmp ne i32 %113, 0, !dbg !5608
  %lnot127 = xor i1 %tobool126, true, !dbg !5608
  %114 = zext i1 %lnot127 to i64, !dbg !5609
  %cond = select i1 %lnot127, i32 -110, i32 0, !dbg !5609
  store i32 %cond, i32* %retval, align 4, !dbg !5610
  br label %return, !dbg !5610

invalid_pm_state:                                 ; preds = %do.end124, %if.then90, %do.end10
  call void @llvm.dbg.label(metadata !5611), !dbg !5612
  store i32 -5, i32* %retval, align 4, !dbg !5613
  br label %return, !dbg !5613

return:                                           ; preds = %invalid_pm_state, %if.end125
  %115 = load i32, i32* %retval, align 4, !dbg !5614
  ret i32 %115, !dbg !5614

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %__here, label %__here6, label %__here17, label %__here96, label %__here120]
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5615 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5617, metadata !DIExpression()), !dbg !5619
  %0 = load i64, i64* %__edi, align 8, !dbg !5619
  store i64 %0, i64* %__edi, align 8, !dbg !5619
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5620, metadata !DIExpression()), !dbg !5619
  %1 = load i64, i64* %__esi, align 8, !dbg !5619
  store i64 %1, i64* %__esi, align 8, !dbg !5619
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5621, metadata !DIExpression()), !dbg !5619
  %2 = load i64, i64* %__edx, align 8, !dbg !5619
  store i64 %2, i64* %__edx, align 8, !dbg !5619
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5622, metadata !DIExpression()), !dbg !5619
  %3 = load i64, i64* %__ecx, align 8, !dbg !5619
  store i64 %3, i64* %__ecx, align 8, !dbg !5619
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5623, metadata !DIExpression()), !dbg !5619
  %4 = load i64, i64* %__eax, align 8, !dbg !5619
  store i64 %4, i64* %__eax, align 8, !dbg !5619
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5619
  %6 = call i64 @llvm.read_register.i64(metadata !203), !dbg !5619
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !5619, !srcloc !5624
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5619
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5619
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5619
  call void @llvm.write_register.i64(metadata !203, i64 %asmresult1), !dbg !5619
  ret void, !dbg !5625
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5626 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5627, metadata !DIExpression()), !dbg !5629
  %0 = load i64, i64* %__edi, align 8, !dbg !5629
  store i64 %0, i64* %__edi, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5630, metadata !DIExpression()), !dbg !5629
  %1 = load i64, i64* %__esi, align 8, !dbg !5629
  store i64 %1, i64* %__esi, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5631, metadata !DIExpression()), !dbg !5629
  %2 = load i64, i64* %__edx, align 8, !dbg !5629
  store i64 %2, i64* %__edx, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5632, metadata !DIExpression()), !dbg !5629
  %3 = load i64, i64* %__ecx, align 8, !dbg !5629
  store i64 %3, i64* %__ecx, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5633, metadata !DIExpression()), !dbg !5629
  %4 = load i64, i64* %__eax, align 8, !dbg !5629
  store i64 %4, i64* %__eax, align 8, !dbg !5629
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5629
  %6 = call i64 @llvm.read_register.i64(metadata !203), !dbg !5629
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #9, !dbg !5629, !srcloc !5634
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5629
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5629
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5629
  call void @llvm.write_register.i64(metadata !203, i64 %asmresult1), !dbg !5629
  ret void, !dbg !5635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mhi_firmware_copy(%struct.mhi_controller* %mhi_cntrl, %struct.firmware* %firmware, %struct.image_info* %img_info) #0 !dbg !5636 {
entry:
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %firmware.addr = alloca %struct.firmware*, align 8
  %img_info.addr = alloca %struct.image_info*, align 8
  %remainder = alloca i64, align 8
  %to_cpy = alloca i64, align 8
  %buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %mhi_buf = alloca %struct.mhi_buf*, align 8
  %bhi_vec = alloca %struct.bhi_vec_entry*, align 8
  %__UNIQUE_ID___x272 = alloca i64, align 8
  %__UNIQUE_ID___y273 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  store %struct.firmware* %firmware, %struct.firmware** %firmware.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %firmware.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  store %struct.image_info* %img_info, %struct.image_info** %img_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.image_info** %img_info.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  call void @llvm.dbg.declare(metadata i64* %remainder, metadata !5645, metadata !DIExpression()), !dbg !5646
  %0 = load %struct.firmware*, %struct.firmware** %firmware.addr, align 8, !dbg !5647
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %0, i32 0, i32 0, !dbg !5648
  %1 = load i64, i64* %size, align 8, !dbg !5648
  store i64 %1, i64* %remainder, align 8, !dbg !5646
  call void @llvm.dbg.declare(metadata i64* %to_cpy, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5651, metadata !DIExpression()), !dbg !5652
  %2 = load %struct.firmware*, %struct.firmware** %firmware.addr, align 8, !dbg !5653
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %2, i32 0, i32 1, !dbg !5654
  %3 = load i8*, i8** %data, align 8, !dbg !5654
  store i8* %3, i8** %buf, align 8, !dbg !5652
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i32 0, i32* %i, align 4, !dbg !5656
  call void @llvm.dbg.declare(metadata %struct.mhi_buf** %mhi_buf, metadata !5657, metadata !DIExpression()), !dbg !5658
  %4 = load %struct.image_info*, %struct.image_info** %img_info.addr, align 8, !dbg !5659
  %mhi_buf1 = getelementptr inbounds %struct.image_info, %struct.image_info* %4, i32 0, i32 0, !dbg !5660
  %5 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf1, align 8, !dbg !5660
  store %struct.mhi_buf* %5, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata %struct.bhi_vec_entry** %bhi_vec, metadata !5661, metadata !DIExpression()), !dbg !5662
  %6 = load %struct.image_info*, %struct.image_info** %img_info.addr, align 8, !dbg !5663
  %bhi_vec2 = getelementptr inbounds %struct.image_info, %struct.image_info* %6, i32 0, i32 1, !dbg !5664
  %7 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec2, align 8, !dbg !5664
  store %struct.bhi_vec_entry* %7, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !5662
  br label %while.cond, !dbg !5665

while.cond:                                       ; preds = %cond.end, %entry
  %8 = load i64, i64* %remainder, align 8, !dbg !5666
  %tobool = icmp ne i64 %8, 0, !dbg !5665
  br i1 %tobool, label %while.body, label %while.end, !dbg !5665

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x272, metadata !5667, metadata !DIExpression()), !dbg !5670
  %9 = load i64, i64* %remainder, align 8, !dbg !5670
  store i64 %9, i64* %__UNIQUE_ID___x272, align 8, !dbg !5670
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y273, metadata !5671, metadata !DIExpression()), !dbg !5670
  %10 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5670
  %len = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %10, i32 0, i32 3, !dbg !5670
  %11 = load i64, i64* %len, align 8, !dbg !5670
  store i64 %11, i64* %__UNIQUE_ID___y273, align 8, !dbg !5670
  %12 = load i64, i64* %__UNIQUE_ID___x272, align 8, !dbg !5670
  %13 = load i64, i64* %__UNIQUE_ID___y273, align 8, !dbg !5670
  %cmp = icmp ult i64 %12, %13, !dbg !5670
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5670

cond.true:                                        ; preds = %while.body
  %14 = load i64, i64* %__UNIQUE_ID___x272, align 8, !dbg !5670
  br label %cond.end, !dbg !5670

cond.false:                                       ; preds = %while.body
  %15 = load i64, i64* %__UNIQUE_ID___y273, align 8, !dbg !5670
  br label %cond.end, !dbg !5670

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !5670
  store i64 %cond, i64* %tmp, align 8, !dbg !5670
  %16 = load i64, i64* %tmp, align 8, !dbg !5670
  store i64 %16, i64* %to_cpy, align 8, !dbg !5672
  %17 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5673
  %buf3 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %17, i32 0, i32 0, !dbg !5674
  %18 = load i8*, i8** %buf3, align 8, !dbg !5674
  %19 = load i8*, i8** %buf, align 8, !dbg !5675
  %20 = load i64, i64* %to_cpy, align 8, !dbg !5676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %19, i64 %20, i1 false), !dbg !5677
  %21 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5678
  %dma_addr = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %21, i32 0, i32 2, !dbg !5679
  %22 = load i64, i64* %dma_addr, align 8, !dbg !5679
  %23 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !5680
  %dma_addr4 = getelementptr inbounds %struct.bhi_vec_entry, %struct.bhi_vec_entry* %23, i32 0, i32 0, !dbg !5681
  store i64 %22, i64* %dma_addr4, align 8, !dbg !5682
  %24 = load i64, i64* %to_cpy, align 8, !dbg !5683
  %25 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !5684
  %size5 = getelementptr inbounds %struct.bhi_vec_entry, %struct.bhi_vec_entry* %25, i32 0, i32 1, !dbg !5685
  store i64 %24, i64* %size5, align 8, !dbg !5686
  %26 = load i64, i64* %to_cpy, align 8, !dbg !5687
  %27 = load i8*, i8** %buf, align 8, !dbg !5688
  %add.ptr = getelementptr i8, i8* %27, i64 %26, !dbg !5688
  store i8* %add.ptr, i8** %buf, align 8, !dbg !5688
  %28 = load i64, i64* %to_cpy, align 8, !dbg !5689
  %29 = load i64, i64* %remainder, align 8, !dbg !5690
  %sub = sub i64 %29, %28, !dbg !5690
  store i64 %sub, i64* %remainder, align 8, !dbg !5690
  %30 = load i32, i32* %i, align 4, !dbg !5691
  %inc = add i32 %30, 1, !dbg !5691
  store i32 %inc, i32* %i, align 4, !dbg !5691
  %31 = load %struct.bhi_vec_entry*, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !5692
  %incdec.ptr = getelementptr %struct.bhi_vec_entry, %struct.bhi_vec_entry* %31, i32 1, !dbg !5692
  store %struct.bhi_vec_entry* %incdec.ptr, %struct.bhi_vec_entry** %bhi_vec, align 8, !dbg !5692
  %32 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5693
  %incdec.ptr6 = getelementptr %struct.mhi_buf, %struct.mhi_buf* %32, i32 1, !dbg !5693
  store %struct.mhi_buf* %incdec.ptr6, %struct.mhi_buf** %mhi_buf, align 8, !dbg !5693
  br label %while.cond, !dbg !5665, !llvm.loop !5694

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5696
}

; Function Attrs: noredzone
declare dso_local i32 @mhi_ready_state_transition(%struct.mhi_controller*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mhi_fw_load_amss(%struct.mhi_controller* %mhi_cntrl, %struct.mhi_buf* %mhi_buf) #0 !dbg !5697 {
entry:
  %retval.i98 = alloca i64, align 8
  %m.addr.i99 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i99, metadata !4269, metadata !DIExpression()), !dbg !5702
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4269, metadata !DIExpression()), !dbg !5707
  %val.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr.i.i, metadata !5356, metadata !DIExpression()), !dbg !5709
  %pao_ID__.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pao_ID__.i.i, metadata !5369, metadata !DIExpression()), !dbg !5713
  %pto_val__.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pto_val__.i.i, metadata !5373, metadata !DIExpression()), !dbg !5714
  %ip.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ip.addr.i, metadata !5378, metadata !DIExpression()), !dbg !5715
  %cnt.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %cnt.addr.i, metadata !5380, metadata !DIExpression()), !dbg !5716
  %retval = alloca i32, align 4
  %mhi_cntrl.addr = alloca %struct.mhi_controller*, align 8
  %mhi_buf.addr = alloca %struct.mhi_buf*, align 8
  %base = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %pm_lock = alloca %struct.rwlock_t*, align 8
  %tx_status = alloca i32, align 4
  %sequence_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp39 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret47 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond51 = alloca i8, align 1
  %tmp70 = alloca i32, align 4
  %tmp83 = alloca i64, align 8
  %tmp85 = alloca i64, align 8
  store %struct.mhi_controller* %mhi_cntrl, %struct.mhi_controller** %mhi_cntrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_controller** %mhi_cntrl.addr, metadata !5717, metadata !DIExpression()), !dbg !5718
  store %struct.mhi_buf* %mhi_buf, %struct.mhi_buf** %mhi_buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mhi_buf** %mhi_buf.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  call void @llvm.dbg.declare(metadata i8** %base, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5723
  %bhie = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %0, i32 0, i32 5, !dbg !5724
  %1 = load i8*, i8** %bhie, align 8, !dbg !5724
  store i8* %1, i8** %base, align 8, !dbg !5722
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5725, metadata !DIExpression()), !dbg !5726
  %2 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5727
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %2, i32 0, i32 1, !dbg !5728
  %3 = load %struct.mhi_device*, %struct.mhi_device** %mhi_dev, align 8, !dbg !5728
  %dev1 = getelementptr inbounds %struct.mhi_device, %struct.mhi_device* %3, i32 0, i32 5, !dbg !5729
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5726
  call void @llvm.dbg.declare(metadata %struct.rwlock_t** %pm_lock, metadata !5730, metadata !DIExpression()), !dbg !5731
  %4 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5732
  %pm_lock2 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %4, i32 0, i32 34, !dbg !5733
  store %struct.rwlock_t* %pm_lock2, %struct.rwlock_t** %pm_lock, align 8, !dbg !5731
  call void @llvm.dbg.declare(metadata i32* %tx_status, metadata !5734, metadata !DIExpression()), !dbg !5735
  call void @llvm.dbg.declare(metadata i32* %sequence_id, metadata !5736, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5738, metadata !DIExpression()), !dbg !5739
  br label %do.body, !dbg !5740

do.body:                                          ; preds = %entry
  br label %__here, !dbg !5741

__here:                                           ; preds = %indirectgoto, %do.body
  call void @llvm.dbg.label(metadata !5743), !dbg !5741
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_amss, %__here) to i64), i64* %tmp, align 8, !dbg !5741
  %5 = load i64, i64* %tmp, align 8, !dbg !5741
  store i64 %5, i64* %ip.addr.i, align 8
  store i32 512, i32* %cnt.addr.i, align 4
  %6 = load i32, i32* %cnt.addr.i, align 4, !dbg !5744
  store i32 %6, i32* %val.addr.i.i, align 4
  %7 = load i32, i32* %val.addr.i.i, align 4, !dbg !5713
  %8 = call i1 @llvm.is.constant.i32(i32 %7) #9, !dbg !5713
  br i1 %8, label %land.lhs.true.i.i, label %cond.false.i.i, !dbg !5713

land.lhs.true.i.i:                                ; preds = %__here
  %9 = load i32, i32* %val.addr.i.i, align 4, !dbg !5713
  %cmp.i.i = icmp eq i32 %9, 1, !dbg !5713
  br i1 %cmp.i.i, label %cond.true.i.i, label %lor.lhs.false.i.i, !dbg !5713

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %10 = load i32, i32* %val.addr.i.i, align 4, !dbg !5713
  %cmp1.i.i = icmp eq i32 %10, -1, !dbg !5713
  br i1 %cmp1.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !5713

cond.true.i.i:                                    ; preds = %lor.lhs.false.i.i, %land.lhs.true.i.i
  %11 = load i32, i32* %val.addr.i.i, align 4, !dbg !5713
  br label %__local_bh_disable_ip.exit, !dbg !5713

cond.false.i.i:                                   ; preds = %lor.lhs.false.i.i, %__here
  br label %__local_bh_disable_ip.exit, !dbg !5713

__local_bh_disable_ip.exit:                       ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %11, %cond.true.i.i ], [ 0, %cond.false.i.i ], !dbg !5713
  store i32 %cond.i.i, i32* %pao_ID__.i.i, align 4, !dbg !5713
  %12 = load i32, i32* %val.addr.i.i, align 4, !dbg !5714
  %conv.i.i = sext i32 %12 to i64, !dbg !5714
  %and.i.i = and i64 %conv.i.i, 4294967295, !dbg !5714
  %conv3.i.i = trunc i64 %and.i.i to i32, !dbg !5714
  store i32 %conv3.i.i, i32* %pto_val__.i.i, align 4, !dbg !5714
  %13 = load i32, i32* %pto_val__.i.i, align 4, !dbg !5714
  call void asm "addl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count, i32 %13, i32* @__preempt_count) #9, !dbg !5714, !srcloc !5441
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5745, !srcloc !5443
  br label %do.body3, !dbg !5746

do.body3:                                         ; preds = %__local_bh_disable_ip.exit
  %14 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5747
  br label %do.end, !dbg !5747

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !5746

do.end4:                                          ; preds = %do.end
  %15 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5749
  %pm_state = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %15, i32 0, i32 36, !dbg !5749
  %16 = load i32, i32* %pm_state, align 4, !dbg !5749
  %conv = zext i32 %16 to i64, !dbg !5749
  %and = and i64 %conv, 2014, !dbg !5749
  %tobool = icmp ne i64 %and, 0, !dbg !5749
  br i1 %tobool, label %if.end, label %if.then, !dbg !5751

if.then:                                          ; preds = %do.end4
  br label %do.body5, !dbg !5752

do.body5:                                         ; preds = %if.then
  br label %__here6, !dbg !5754

__here6:                                          ; preds = %indirectgoto, %do.body5
  call void @llvm.dbg.label(metadata !5757), !dbg !5754
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_amss, %__here6) to i64), i64* %tmp7, align 8, !dbg !5754
  %17 = load i64, i64* %tmp7, align 8, !dbg !5754
  call void @__local_bh_enable_ip(i64 %17, i32 512) #10, !dbg !5758
  br label %do.body8, !dbg !5758

do.body8:                                         ; preds = %__here6
  %18 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5759
  br label %do.end9, !dbg !5759

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5758

do.end10:                                         ; preds = %do.end9
  store i32 -5, i32* %retval, align 4, !dbg !5761
  br label %return, !dbg !5761

if.end:                                           ; preds = %do.end4
  %call = call i32 @prandom_u32_max(i32 1073741823) #10, !dbg !5762
  %add = add i32 %call, 1, !dbg !5762
  store i32 %add, i32* %sequence_id, align 4, !dbg !5763
  %19 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5764
  %20 = load i8*, i8** %base, align 8, !dbg !5765
  %21 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf.addr, align 8, !dbg !5766
  %dma_addr = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %21, i32 0, i32 2, !dbg !5766
  %22 = load i64, i64* %dma_addr, align 8, !dbg !5766
  %shr = lshr i64 %22, 16, !dbg !5766
  %shr11 = lshr i64 %shr, 16, !dbg !5766
  %conv12 = trunc i64 %shr11 to i32, !dbg !5766
  call void @mhi_write_reg(%struct.mhi_controller* %19, i8* %20, i32 48, i32 %conv12) #10, !dbg !5767
  %23 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5768
  %24 = load i8*, i8** %base, align 8, !dbg !5769
  %25 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf.addr, align 8, !dbg !5770
  %dma_addr13 = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %25, i32 0, i32 2, !dbg !5770
  %26 = load i64, i64* %dma_addr13, align 8, !dbg !5770
  %and14 = and i64 %26, 4294967295, !dbg !5770
  %conv15 = trunc i64 %and14 to i32, !dbg !5770
  call void @mhi_write_reg(%struct.mhi_controller* %23, i8* %24, i32 44, i32 %conv15) #10, !dbg !5771
  %27 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5772
  %28 = load i8*, i8** %base, align 8, !dbg !5773
  %29 = load %struct.mhi_buf*, %struct.mhi_buf** %mhi_buf.addr, align 8, !dbg !5774
  %len = getelementptr inbounds %struct.mhi_buf, %struct.mhi_buf* %29, i32 0, i32 3, !dbg !5775
  %30 = load i64, i64* %len, align 8, !dbg !5775
  %conv16 = trunc i64 %30 to i32, !dbg !5774
  call void @mhi_write_reg(%struct.mhi_controller* %27, i8* %28, i32 52, i32 %conv16) #10, !dbg !5776
  %31 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5777
  %32 = load i8*, i8** %base, align 8, !dbg !5778
  %33 = load i32, i32* %sequence_id, align 4, !dbg !5779
  call void @mhi_write_reg_field(%struct.mhi_controller* %31, i8* %32, i32 60, i32 1073741823, i32 0, i32 %33) #10, !dbg !5780
  br label %do.body17, !dbg !5781

do.body17:                                        ; preds = %if.end
  br label %__here18, !dbg !5782

__here18:                                         ; preds = %indirectgoto, %do.body17
  call void @llvm.dbg.label(metadata !5785), !dbg !5782
  store i64 ptrtoint (i8* blockaddress(@mhi_fw_load_amss, %__here18) to i64), i64* %tmp19, align 8, !dbg !5782
  %34 = load i64, i64* %tmp19, align 8, !dbg !5782
  call void @__local_bh_enable_ip(i64 %34, i32 512) #10, !dbg !5786
  br label %do.body20, !dbg !5786

do.body20:                                        ; preds = %__here18
  %35 = load %struct.rwlock_t*, %struct.rwlock_t** %pm_lock, align 8, !dbg !5787
  br label %do.end21, !dbg !5787

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !5786

do.end22:                                         ; preds = %do.end21
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5789, metadata !DIExpression()), !dbg !5790
  %36 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5790
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %36, i32 0, i32 35, !dbg !5790
  %37 = load i32, i32* %timeout_ms, align 8, !dbg !5790
  store i32 %37, i32* %m.addr.i, align 4
  %38 = load i32, i32* %m.addr.i, align 4, !dbg !5791
  %39 = call i1 @llvm.is.constant.i32(i32 %38) #9, !dbg !5792
  br i1 %39, label %if.then.i, label %if.else.i, !dbg !5793

if.then.i:                                        ; preds = %do.end22
  %40 = load i32, i32* %m.addr.i, align 4, !dbg !5794
  %cmp.i = icmp slt i32 %40, 0, !dbg !5795
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5796

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5797
  br label %msecs_to_jiffies.exit, !dbg !5797

if.end.i:                                         ; preds = %if.then.i
  %41 = load i32, i32* %m.addr.i, align 4, !dbg !5798
  %call.i = call i64 @_msecs_to_jiffies(i32 %41) #11, !dbg !5799
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5800
  br label %msecs_to_jiffies.exit, !dbg !5800

if.else.i:                                        ; preds = %do.end22
  %42 = load i32, i32* %m.addr.i, align 4, !dbg !5801
  %call2.i = call i64 @__msecs_to_jiffies(i32 %42) #11, !dbg !5802
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5803
  br label %msecs_to_jiffies.exit, !dbg !5803

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %43 = load i64, i64* %retval.i, align 8, !dbg !5804
  store i64 %43, i64* %__ret, align 8, !dbg !5790
  br label %do.body24, !dbg !5790

do.body24:                                        ; preds = %msecs_to_jiffies.exit
  br label %do.body25, !dbg !5805

do.body25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5807

do.end26:                                         ; preds = %do.body25
  br label %do.end27, !dbg !5805

do.end27:                                         ; preds = %do.end26
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !5809, metadata !DIExpression()), !dbg !5811
  %44 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5811
  %pm_state28 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %44, i32 0, i32 36, !dbg !5811
  %45 = load i32, i32* %pm_state28, align 4, !dbg !5811
  %conv29 = zext i32 %45 to i64, !dbg !5811
  %cmp = icmp uge i64 %conv29, 128, !dbg !5811
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5811

lor.lhs.false:                                    ; preds = %do.end27
  %46 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5811
  %47 = load i8*, i8** %base, align 8, !dbg !5811
  %call31 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %46, i8* %47, i32 68, i32 -1073741824, i32 30, i32* %tx_status) #10, !dbg !5811
  %tobool32 = icmp ne i32 %call31, 0, !dbg !5811
  br i1 %tobool32, label %lor.end, label %lor.rhs, !dbg !5811

lor.rhs:                                          ; preds = %lor.lhs.false
  %48 = load i32, i32* %tx_status, align 4, !dbg !5811
  %tobool33 = icmp ne i32 %48, 0, !dbg !5811
  br label %lor.end, !dbg !5811

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.end27
  %49 = phi i1 [ true, %lor.lhs.false ], [ true, %do.end27 ], [ %tobool33, %lor.rhs ]
  %frombool = zext i1 %49 to i8, !dbg !5811
  store i8 %frombool, i8* %__cond, align 1, !dbg !5811
  %50 = load i8, i8* %__cond, align 1, !dbg !5812
  %tobool34 = trunc i8 %50 to i1, !dbg !5812
  br i1 %tobool34, label %land.lhs.true, label %if.end38, !dbg !5812

land.lhs.true:                                    ; preds = %lor.end
  %51 = load i64, i64* %__ret, align 8, !dbg !5812
  %tobool36 = icmp ne i64 %51, 0, !dbg !5812
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5811

if.then37:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !5812
  br label %if.end38, !dbg !5812

if.end38:                                         ; preds = %if.then37, %land.lhs.true, %lor.end
  %52 = load i8, i8* %__cond, align 1, !dbg !5811
  %tobool40 = trunc i8 %52 to i1, !dbg !5811
  br i1 %tobool40, label %lor.end44, label %lor.rhs42, !dbg !5811

lor.rhs42:                                        ; preds = %if.end38
  %53 = load i64, i64* %__ret, align 8, !dbg !5811
  %tobool43 = icmp ne i64 %53, 0, !dbg !5811
  %lnot = xor i1 %tobool43, true, !dbg !5811
  br label %lor.end44, !dbg !5811

lor.end44:                                        ; preds = %lor.rhs42, %if.end38
  %54 = phi i1 [ true, %if.end38 ], [ %lnot, %lor.rhs42 ]
  %lor.ext = zext i1 %54 to i32, !dbg !5811
  store i32 %lor.ext, i32* %tmp39, align 4, !dbg !5812
  %55 = load i32, i32* %tmp39, align 4, !dbg !5811
  %tobool45 = icmp ne i32 %55, 0, !dbg !5814
  br i1 %tobool45, label %if.end84, label %if.then46, !dbg !5790

if.then46:                                        ; preds = %lor.end44
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5815, metadata !DIExpression()), !dbg !5816
  call void @llvm.dbg.declare(metadata i64* %__ret47, metadata !5817, metadata !DIExpression()), !dbg !5816
  %56 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5816
  %timeout_ms48 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %56, i32 0, i32 35, !dbg !5816
  %57 = load i32, i32* %timeout_ms48, align 8, !dbg !5816
  store i32 %57, i32* %m.addr.i99, align 4
  %58 = load i32, i32* %m.addr.i99, align 4, !dbg !5818
  %59 = call i1 @llvm.is.constant.i32(i32 %58) #9, !dbg !5819
  br i1 %59, label %if.then.i101, label %if.else.i106, !dbg !5820

if.then.i101:                                     ; preds = %if.then46
  %60 = load i32, i32* %m.addr.i99, align 4, !dbg !5821
  %cmp.i100 = icmp slt i32 %60, 0, !dbg !5822
  br i1 %cmp.i100, label %if.then1.i102, label %if.end.i104, !dbg !5823

if.then1.i102:                                    ; preds = %if.then.i101
  store i64 4611686018427387902, i64* %retval.i98, align 8, !dbg !5824
  br label %msecs_to_jiffies.exit107, !dbg !5824

if.end.i104:                                      ; preds = %if.then.i101
  %61 = load i32, i32* %m.addr.i99, align 4, !dbg !5825
  %call.i103 = call i64 @_msecs_to_jiffies(i32 %61) #11, !dbg !5826
  store i64 %call.i103, i64* %retval.i98, align 8, !dbg !5827
  br label %msecs_to_jiffies.exit107, !dbg !5827

if.else.i106:                                     ; preds = %if.then46
  %62 = load i32, i32* %m.addr.i99, align 4, !dbg !5828
  %call2.i105 = call i64 @__msecs_to_jiffies(i32 %62) #11, !dbg !5829
  store i64 %call2.i105, i64* %retval.i98, align 8, !dbg !5830
  br label %msecs_to_jiffies.exit107, !dbg !5830

msecs_to_jiffies.exit107:                         ; preds = %if.then1.i102, %if.end.i104, %if.else.i106
  %63 = load i64, i64* %retval.i98, align 8, !dbg !5831
  store i64 %63, i64* %__ret47, align 8, !dbg !5816
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5816
  br label %for.cond, !dbg !5816

for.cond:                                         ; preds = %if.end80, %msecs_to_jiffies.exit107
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5832, metadata !DIExpression()), !dbg !5836
  %64 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5836
  %state_event = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %64, i32 0, i32 50, !dbg !5836
  %call50 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %state_event, %struct.wait_queue_entry* %__wq_entry, i32 2) #10, !dbg !5836
  store i64 %call50, i64* %__int, align 8, !dbg !5836
  call void @llvm.dbg.declare(metadata i8* %__cond51, metadata !5837, metadata !DIExpression()), !dbg !5840
  %65 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5840
  %pm_state52 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %65, i32 0, i32 36, !dbg !5840
  %66 = load i32, i32* %pm_state52, align 4, !dbg !5840
  %conv53 = zext i32 %66 to i64, !dbg !5840
  %cmp54 = icmp uge i64 %conv53, 128, !dbg !5840
  br i1 %cmp54, label %lor.end61, label %lor.lhs.false56, !dbg !5840

lor.lhs.false56:                                  ; preds = %for.cond
  %67 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5840
  %68 = load i8*, i8** %base, align 8, !dbg !5840
  %call57 = call i32 @mhi_read_reg_field(%struct.mhi_controller* %67, i8* %68, i32 68, i32 -1073741824, i32 30, i32* %tx_status) #10, !dbg !5840
  %tobool58 = icmp ne i32 %call57, 0, !dbg !5840
  br i1 %tobool58, label %lor.end61, label %lor.rhs59, !dbg !5840

lor.rhs59:                                        ; preds = %lor.lhs.false56
  %69 = load i32, i32* %tx_status, align 4, !dbg !5840
  %tobool60 = icmp ne i32 %69, 0, !dbg !5840
  br label %lor.end61, !dbg !5840

lor.end61:                                        ; preds = %lor.rhs59, %lor.lhs.false56, %for.cond
  %70 = phi i1 [ true, %lor.lhs.false56 ], [ true, %for.cond ], [ %tobool60, %lor.rhs59 ]
  %frombool63 = zext i1 %70 to i8, !dbg !5840
  store i8 %frombool63, i8* %__cond51, align 1, !dbg !5840
  %71 = load i8, i8* %__cond51, align 1, !dbg !5841
  %tobool64 = trunc i8 %71 to i1, !dbg !5841
  br i1 %tobool64, label %land.lhs.true66, label %if.end69, !dbg !5841

land.lhs.true66:                                  ; preds = %lor.end61
  %72 = load i64, i64* %__ret47, align 8, !dbg !5841
  %tobool67 = icmp ne i64 %72, 0, !dbg !5841
  br i1 %tobool67, label %if.end69, label %if.then68, !dbg !5840

if.then68:                                        ; preds = %land.lhs.true66
  store i64 1, i64* %__ret47, align 8, !dbg !5841
  br label %if.end69, !dbg !5841

if.end69:                                         ; preds = %if.then68, %land.lhs.true66, %lor.end61
  %73 = load i8, i8* %__cond51, align 1, !dbg !5840
  %tobool71 = trunc i8 %73 to i1, !dbg !5840
  br i1 %tobool71, label %lor.end76, label %lor.rhs73, !dbg !5840

lor.rhs73:                                        ; preds = %if.end69
  %74 = load i64, i64* %__ret47, align 8, !dbg !5840
  %tobool74 = icmp ne i64 %74, 0, !dbg !5840
  %lnot75 = xor i1 %tobool74, true, !dbg !5840
  br label %lor.end76, !dbg !5840

lor.end76:                                        ; preds = %lor.rhs73, %if.end69
  %75 = phi i1 [ true, %if.end69 ], [ %lnot75, %lor.rhs73 ]
  %lor.ext77 = zext i1 %75 to i32, !dbg !5840
  store i32 %lor.ext77, i32* %tmp70, align 4, !dbg !5841
  %76 = load i32, i32* %tmp70, align 4, !dbg !5840
  %tobool78 = icmp ne i32 %76, 0, !dbg !5843
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !5836

if.then79:                                        ; preds = %lor.end76
  br label %for.end, !dbg !5843

if.end80:                                         ; preds = %lor.end76
  %77 = load i64, i64* %__ret47, align 8, !dbg !5836
  %call81 = call i64 @schedule_timeout(i64 %77) #10, !dbg !5836
  store i64 %call81, i64* %__ret47, align 8, !dbg !5836
  br label %for.cond, !dbg !5844, !llvm.loop !5845

for.end:                                          ; preds = %if.then79
  %78 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5816
  %state_event82 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %78, i32 0, i32 50, !dbg !5816
  call void @finish_wait(%struct.wait_queue_head* %state_event82, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5816
  br label %__out, !dbg !5816

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5847), !dbg !5816
  %79 = load i64, i64* %__ret47, align 8, !dbg !5816
  store i64 %79, i64* %tmp83, align 8, !dbg !5816
  %80 = load i64, i64* %tmp83, align 8, !dbg !5816
  store i64 %80, i64* %__ret, align 8, !dbg !5814
  br label %if.end84, !dbg !5814

if.end84:                                         ; preds = %__out, %lor.end44
  %81 = load i64, i64* %__ret, align 8, !dbg !5790
  store i64 %81, i64* %tmp85, align 8, !dbg !5814
  %82 = load i64, i64* %tmp85, align 8, !dbg !5790
  %conv86 = trunc i64 %82 to i32, !dbg !5848
  store i32 %conv86, i32* %ret, align 4, !dbg !5849
  %83 = load %struct.mhi_controller*, %struct.mhi_controller** %mhi_cntrl.addr, align 8, !dbg !5850
  %pm_state87 = getelementptr inbounds %struct.mhi_controller, %struct.mhi_controller* %83, i32 0, i32 36, !dbg !5850
  %84 = load i32, i32* %pm_state87, align 4, !dbg !5850
  %conv88 = zext i32 %84 to i64, !dbg !5850
  %cmp89 = icmp uge i64 %conv88, 128, !dbg !5850
  br i1 %cmp89, label %if.then94, label %lor.lhs.false91, !dbg !5852

lor.lhs.false91:                                  ; preds = %if.end84
  %85 = load i32, i32* %tx_status, align 4, !dbg !5853
  %cmp92 = icmp ne i32 %85, 2, !dbg !5854
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !5855

if.then94:                                        ; preds = %lor.lhs.false91, %if.end84
  store i32 -5, i32* %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

if.end95:                                         ; preds = %lor.lhs.false91
  %86 = load i32, i32* %ret, align 4, !dbg !5857
  %tobool96 = icmp ne i32 %86, 0, !dbg !5858
  %lnot97 = xor i1 %tobool96, true, !dbg !5858
  %87 = zext i1 %lnot97 to i64, !dbg !5859
  %cond = select i1 %lnot97, i32 -110, i32 0, !dbg !5859
  store i32 %cond, i32* %retval, align 4, !dbg !5860
  br label %return, !dbg !5860

return:                                           ; preds = %if.end95, %if.then94, %do.end10
  %88 = load i32, i32* %retval, align 4, !dbg !5861
  ret i32 %88, !dbg !5861

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %__here, label %__here6, label %__here18]
}

; Function Attrs: noredzone
declare dso_local i32 @prandom_u32() #2

; Function Attrs: noredzone
declare dso_local i32 @mhi_get_exec_env(%struct.mhi_controller*) #2

; Function Attrs: noredzone
declare dso_local void @mhi_set_mhi_state(%struct.mhi_controller*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5862 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  %0 = load i32, i32* %m.addr, align 4, !dbg !5865
  %conv = zext i32 %0 to i64, !dbg !5865
  %add = add i64 %conv, 4, !dbg !5866
  %sub = sub i64 %add, 1, !dbg !5867
  %div = sdiv i64 %sub, 4, !dbg !5868
  ret i64 %div, !dbg !5869
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_free_coherent(%struct.device* %dev, i64 %size, i8* %cpu_addr, i64 %dma_handle) #0 !dbg !5870 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5874, metadata !DIExpression()), !dbg !5875
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5876, metadata !DIExpression()), !dbg !5877
  store i8* %cpu_addr, i8** %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpu_addr.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5882
  %1 = load i64, i64* %size.addr, align 8, !dbg !5883
  %2 = load i8*, i8** %cpu_addr.addr, align 8, !dbg !5884
  %3 = load i64, i64* %dma_handle.addr, align 8, !dbg !5885
  call void @dma_free_attrs(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 0) #10, !dbg !5886
  ret void, !dbg !5887
}

; Function Attrs: noredzone
declare dso_local void @dma_free_attrs(%struct.device*, i64, i8*, i64, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5888 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5892, metadata !DIExpression()), !dbg !5897
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5899, metadata !DIExpression()), !dbg !5900
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load i64, i64* %size.addr, align 8, !dbg !5903
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5905
  br i1 %1, label %if.then, label %if.end447, !dbg !5906

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5907
  %tobool = icmp ne i64 %2, 0, !dbg !5907
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5910

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5912
  %cmp = icmp ult i64 %3, 4096, !dbg !5914
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5915

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5916
  br label %return, !dbg !5916

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub = sub i64 %4, 1, !dbg !5917
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5917
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5917

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub4 = sub i64 %6, 1, !dbg !5917
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5917
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5917

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub6 = sub i64 %8, 1, !dbg !5917
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5917
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5917

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5917

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub9 = sub i64 %9, 1, !dbg !5917
  %and = and i64 %sub9, -9223372036854775808, !dbg !5917
  %tobool10 = icmp ne i64 %and, 0, !dbg !5917
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5917

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5917

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub13 = sub i64 %10, 1, !dbg !5917
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5917
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5917
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5917

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5917

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub18 = sub i64 %11, 1, !dbg !5917
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5917
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5917
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5917

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5917

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub23 = sub i64 %12, 1, !dbg !5917
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5917
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5917
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5917

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5917

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub28 = sub i64 %13, 1, !dbg !5917
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5917
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5917
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5917

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5917

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub33 = sub i64 %14, 1, !dbg !5917
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5917
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5917
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5917

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5917

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub38 = sub i64 %15, 1, !dbg !5917
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5917
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5917
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5917

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5917

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub43 = sub i64 %16, 1, !dbg !5917
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5917
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5917
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5917

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5917

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub48 = sub i64 %17, 1, !dbg !5917
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5917
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5917
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5917

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5917

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub53 = sub i64 %18, 1, !dbg !5917
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5917
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5917
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5917

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5917

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub58 = sub i64 %19, 1, !dbg !5917
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5917
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5917
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5917

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5917

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub63 = sub i64 %20, 1, !dbg !5917
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5917
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5917
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5917

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5917

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub68 = sub i64 %21, 1, !dbg !5917
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5917
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5917
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5917

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5917

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub73 = sub i64 %22, 1, !dbg !5917
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5917
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5917
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5917

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5917

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub78 = sub i64 %23, 1, !dbg !5917
  %and79 = and i64 %sub78, 562949953421312, !dbg !5917
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5917
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5917

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5917

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub83 = sub i64 %24, 1, !dbg !5917
  %and84 = and i64 %sub83, 281474976710656, !dbg !5917
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5917
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5917

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5917

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub88 = sub i64 %25, 1, !dbg !5917
  %and89 = and i64 %sub88, 140737488355328, !dbg !5917
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5917
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5917

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5917

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub93 = sub i64 %26, 1, !dbg !5917
  %and94 = and i64 %sub93, 70368744177664, !dbg !5917
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5917
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5917

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5917

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub98 = sub i64 %27, 1, !dbg !5917
  %and99 = and i64 %sub98, 35184372088832, !dbg !5917
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5917
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5917

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5917

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub103 = sub i64 %28, 1, !dbg !5917
  %and104 = and i64 %sub103, 17592186044416, !dbg !5917
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5917
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5917

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5917

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub108 = sub i64 %29, 1, !dbg !5917
  %and109 = and i64 %sub108, 8796093022208, !dbg !5917
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5917
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5917

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5917

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub113 = sub i64 %30, 1, !dbg !5917
  %and114 = and i64 %sub113, 4398046511104, !dbg !5917
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5917
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5917

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5917

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub118 = sub i64 %31, 1, !dbg !5917
  %and119 = and i64 %sub118, 2199023255552, !dbg !5917
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5917
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5917

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5917

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub123 = sub i64 %32, 1, !dbg !5917
  %and124 = and i64 %sub123, 1099511627776, !dbg !5917
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5917
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5917

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5917

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub128 = sub i64 %33, 1, !dbg !5917
  %and129 = and i64 %sub128, 549755813888, !dbg !5917
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5917
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5917

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5917

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub133 = sub i64 %34, 1, !dbg !5917
  %and134 = and i64 %sub133, 274877906944, !dbg !5917
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5917
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5917

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5917

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub138 = sub i64 %35, 1, !dbg !5917
  %and139 = and i64 %sub138, 137438953472, !dbg !5917
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5917
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5917

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5917

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub143 = sub i64 %36, 1, !dbg !5917
  %and144 = and i64 %sub143, 68719476736, !dbg !5917
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5917
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5917

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5917

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub148 = sub i64 %37, 1, !dbg !5917
  %and149 = and i64 %sub148, 34359738368, !dbg !5917
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5917
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5917

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5917

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub153 = sub i64 %38, 1, !dbg !5917
  %and154 = and i64 %sub153, 17179869184, !dbg !5917
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5917
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5917

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5917

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub158 = sub i64 %39, 1, !dbg !5917
  %and159 = and i64 %sub158, 8589934592, !dbg !5917
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5917
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5917

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5917

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub163 = sub i64 %40, 1, !dbg !5917
  %and164 = and i64 %sub163, 4294967296, !dbg !5917
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5917
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5917

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5917

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub168 = sub i64 %41, 1, !dbg !5917
  %and169 = and i64 %sub168, 2147483648, !dbg !5917
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5917
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5917

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5917

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub173 = sub i64 %42, 1, !dbg !5917
  %and174 = and i64 %sub173, 1073741824, !dbg !5917
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5917
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5917

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5917

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub178 = sub i64 %43, 1, !dbg !5917
  %and179 = and i64 %sub178, 536870912, !dbg !5917
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5917
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5917

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5917

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub183 = sub i64 %44, 1, !dbg !5917
  %and184 = and i64 %sub183, 268435456, !dbg !5917
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5917
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5917

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5917

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub188 = sub i64 %45, 1, !dbg !5917
  %and189 = and i64 %sub188, 134217728, !dbg !5917
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5917
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5917

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5917

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub193 = sub i64 %46, 1, !dbg !5917
  %and194 = and i64 %sub193, 67108864, !dbg !5917
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5917
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5917

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5917

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub198 = sub i64 %47, 1, !dbg !5917
  %and199 = and i64 %sub198, 33554432, !dbg !5917
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5917
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5917

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5917

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub203 = sub i64 %48, 1, !dbg !5917
  %and204 = and i64 %sub203, 16777216, !dbg !5917
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5917
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5917

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5917

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub208 = sub i64 %49, 1, !dbg !5917
  %and209 = and i64 %sub208, 8388608, !dbg !5917
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5917
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5917

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5917

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub213 = sub i64 %50, 1, !dbg !5917
  %and214 = and i64 %sub213, 4194304, !dbg !5917
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5917
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5917

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5917

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub218 = sub i64 %51, 1, !dbg !5917
  %and219 = and i64 %sub218, 2097152, !dbg !5917
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5917
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5917

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5917

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub223 = sub i64 %52, 1, !dbg !5917
  %and224 = and i64 %sub223, 1048576, !dbg !5917
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5917
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5917

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5917

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub228 = sub i64 %53, 1, !dbg !5917
  %and229 = and i64 %sub228, 524288, !dbg !5917
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5917
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5917

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5917

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub233 = sub i64 %54, 1, !dbg !5917
  %and234 = and i64 %sub233, 262144, !dbg !5917
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5917
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5917

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5917

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub238 = sub i64 %55, 1, !dbg !5917
  %and239 = and i64 %sub238, 131072, !dbg !5917
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5917
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5917

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5917

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub243 = sub i64 %56, 1, !dbg !5917
  %and244 = and i64 %sub243, 65536, !dbg !5917
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5917
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5917

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5917

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub248 = sub i64 %57, 1, !dbg !5917
  %and249 = and i64 %sub248, 32768, !dbg !5917
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5917
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5917

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5917

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub253 = sub i64 %58, 1, !dbg !5917
  %and254 = and i64 %sub253, 16384, !dbg !5917
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5917
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5917

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5917

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub258 = sub i64 %59, 1, !dbg !5917
  %and259 = and i64 %sub258, 8192, !dbg !5917
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5917
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5917

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5917

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub263 = sub i64 %60, 1, !dbg !5917
  %and264 = and i64 %sub263, 4096, !dbg !5917
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5917
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5917

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5917

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub268 = sub i64 %61, 1, !dbg !5917
  %and269 = and i64 %sub268, 2048, !dbg !5917
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5917
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5917

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5917

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub273 = sub i64 %62, 1, !dbg !5917
  %and274 = and i64 %sub273, 1024, !dbg !5917
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5917
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5917

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5917

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub278 = sub i64 %63, 1, !dbg !5917
  %and279 = and i64 %sub278, 512, !dbg !5917
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5917
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5917

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5917

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub283 = sub i64 %64, 1, !dbg !5917
  %and284 = and i64 %sub283, 256, !dbg !5917
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5917
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5917

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5917

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub288 = sub i64 %65, 1, !dbg !5917
  %and289 = and i64 %sub288, 128, !dbg !5917
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5917
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5917

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5917

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub293 = sub i64 %66, 1, !dbg !5917
  %and294 = and i64 %sub293, 64, !dbg !5917
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5917
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5917

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5917

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub298 = sub i64 %67, 1, !dbg !5917
  %and299 = and i64 %sub298, 32, !dbg !5917
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5917
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5917

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5917

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub303 = sub i64 %68, 1, !dbg !5917
  %and304 = and i64 %sub303, 16, !dbg !5917
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5917
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5917

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5917

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub308 = sub i64 %69, 1, !dbg !5917
  %and309 = and i64 %sub308, 8, !dbg !5917
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5917
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5917

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5917

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub313 = sub i64 %70, 1, !dbg !5917
  %and314 = and i64 %sub313, 4, !dbg !5917
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5917
  %71 = zext i1 %tobool315 to i64, !dbg !5917
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5917
  br label %cond.end, !dbg !5917

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5917
  br label %cond.end317, !dbg !5917

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5917
  br label %cond.end319, !dbg !5917

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5917
  br label %cond.end321, !dbg !5917

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5917
  br label %cond.end323, !dbg !5917

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5917
  br label %cond.end325, !dbg !5917

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5917
  br label %cond.end327, !dbg !5917

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5917
  br label %cond.end329, !dbg !5917

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5917
  br label %cond.end331, !dbg !5917

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5917
  br label %cond.end333, !dbg !5917

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5917
  br label %cond.end335, !dbg !5917

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5917
  br label %cond.end337, !dbg !5917

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5917
  br label %cond.end339, !dbg !5917

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5917
  br label %cond.end341, !dbg !5917

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5917
  br label %cond.end343, !dbg !5917

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5917
  br label %cond.end345, !dbg !5917

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5917
  br label %cond.end347, !dbg !5917

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5917
  br label %cond.end349, !dbg !5917

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5917
  br label %cond.end351, !dbg !5917

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5917
  br label %cond.end353, !dbg !5917

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5917
  br label %cond.end355, !dbg !5917

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5917
  br label %cond.end357, !dbg !5917

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5917
  br label %cond.end359, !dbg !5917

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5917
  br label %cond.end361, !dbg !5917

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5917
  br label %cond.end363, !dbg !5917

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5917
  br label %cond.end365, !dbg !5917

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5917
  br label %cond.end367, !dbg !5917

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5917
  br label %cond.end369, !dbg !5917

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5917
  br label %cond.end371, !dbg !5917

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5917
  br label %cond.end373, !dbg !5917

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5917
  br label %cond.end375, !dbg !5917

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5917
  br label %cond.end377, !dbg !5917

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5917
  br label %cond.end379, !dbg !5917

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5917
  br label %cond.end381, !dbg !5917

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5917
  br label %cond.end383, !dbg !5917

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5917
  br label %cond.end385, !dbg !5917

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5917
  br label %cond.end387, !dbg !5917

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5917
  br label %cond.end389, !dbg !5917

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5917
  br label %cond.end391, !dbg !5917

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5917
  br label %cond.end393, !dbg !5917

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5917
  br label %cond.end395, !dbg !5917

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5917
  br label %cond.end397, !dbg !5917

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5917
  br label %cond.end399, !dbg !5917

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5917
  br label %cond.end401, !dbg !5917

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5917
  br label %cond.end403, !dbg !5917

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5917
  br label %cond.end405, !dbg !5917

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5917
  br label %cond.end407, !dbg !5917

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5917
  br label %cond.end409, !dbg !5917

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5917
  br label %cond.end411, !dbg !5917

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5917
  br label %cond.end413, !dbg !5917

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5917
  br label %cond.end415, !dbg !5917

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5917
  br label %cond.end417, !dbg !5917

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5917
  br label %cond.end419, !dbg !5917

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5917
  br label %cond.end421, !dbg !5917

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5917
  br label %cond.end423, !dbg !5917

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5917
  br label %cond.end425, !dbg !5917

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5917
  br label %cond.end427, !dbg !5917

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5917
  br label %cond.end429, !dbg !5917

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5917
  br label %cond.end431, !dbg !5917

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5917
  br label %cond.end433, !dbg !5917

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5917
  br label %cond.end435, !dbg !5917

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5917
  br label %cond.end437, !dbg !5917

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5917
  br label %cond.end440, !dbg !5917

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5917

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5917
  br label %cond.end444, !dbg !5917

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5917
  %sub443 = sub i64 %72, 1, !dbg !5917
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5917
  br label %cond.end444, !dbg !5917

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5917
  %sub446 = sub i32 %cond445, 12, !dbg !5918
  %add = add i32 %sub446, 1, !dbg !5919
  store i32 %add, i32* %retval, align 4, !dbg !5920
  br label %return, !dbg !5920

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5921
  %dec = add i64 %73, -1, !dbg !5921
  store i64 %dec, i64* %size.addr, align 8, !dbg !5921
  %74 = load i64, i64* %size.addr, align 8, !dbg !5922
  %shr = lshr i64 %74, 12, !dbg !5922
  store i64 %shr, i64* %size.addr, align 8, !dbg !5922
  %75 = load i64, i64* %size.addr, align 8, !dbg !5923
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5900
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5924
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5925
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !5924, !srcloc !5926
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5924
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5927
  %add.i = add i32 %79, 1, !dbg !5928
  store i32 %add.i, i32* %retval, align 4, !dbg !5929
  br label %return, !dbg !5929

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5930
  ret i32 %80, !dbg !5930
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5931 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5892, metadata !DIExpression()), !dbg !5935
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5899, metadata !DIExpression()), !dbg !5937
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load i64, i64* %n.addr, align 8, !dbg !5940
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5937
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5941
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5942
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !5941, !srcloc !5926
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5941
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5943
  %add.i = add i32 %4, 1, !dbg !5944
  %sub = sub i32 %add.i, 1, !dbg !5945
  ret i32 %sub, !dbg !5946
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5947 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5951, metadata !DIExpression()), !dbg !5952
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5959
  ret i8* %0, !dbg !5960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5961 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4691, metadata !DIExpression()), !dbg !5962
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4701, metadata !DIExpression()), !dbg !5966
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4703, metadata !DIExpression()), !dbg !5967
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4705, metadata !DIExpression()), !dbg !5968
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4707, metadata !DIExpression()), !dbg !5969
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4713, metadata !DIExpression()), !dbg !5971
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4719, metadata !DIExpression()), !dbg !5973
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4728, metadata !DIExpression()), !dbg !5976
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4730, metadata !DIExpression()), !dbg !5977
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4732, metadata !DIExpression()), !dbg !5978
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4734, metadata !DIExpression()), !dbg !5979
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4736, metadata !DIExpression()), !dbg !5980
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4738, metadata !DIExpression()), !dbg !5981
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4740, metadata !DIExpression()), !dbg !5982
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4742, metadata !DIExpression()), !dbg !5983
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5986, metadata !DIExpression()), !dbg !5987
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5990, metadata !DIExpression()), !dbg !5991
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5992, metadata !DIExpression()), !dbg !5995
  %0 = load i64, i64* %n.addr, align 8, !dbg !5995
  store i64 %0, i64* %__a, align 8, !dbg !5995
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5996, metadata !DIExpression()), !dbg !5995
  %1 = load i64, i64* %size.addr, align 8, !dbg !5995
  store i64 %1, i64* %__b, align 8, !dbg !5995
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5997, metadata !DIExpression()), !dbg !5995
  store i64* %bytes, i64** %__d, align 8, !dbg !5995
  %cmp = icmp eq i64* %__a, %__b, !dbg !5995
  %conv = zext i1 %cmp to i32, !dbg !5995
  %2 = load i64*, i64** %__d, align 8, !dbg !5995
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5995
  %conv2 = zext i1 %cmp1 to i32, !dbg !5995
  %3 = load i64, i64* %__a, align 8, !dbg !5995
  %4 = load i64, i64* %__b, align 8, !dbg !5995
  %5 = load i64*, i64** %__d, align 8, !dbg !5995
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5995
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5995
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5995
  store i64 %8, i64* %5, align 8, !dbg !5995
  %frombool = zext i1 %7 to i8, !dbg !5995
  store i8 %frombool, i8* %tmp, align 1, !dbg !5995
  %9 = load i8, i8* %tmp, align 1, !dbg !5995
  %tobool = trunc i8 %9 to i1, !dbg !5995
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !5999
  %lnot = xor i1 %call, true, !dbg !5999
  %lnot3 = xor i1 %lnot, true, !dbg !5999
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5999
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5999
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5999
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6000

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !6001
  br label %return, !dbg !6001

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !6002
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6003
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !6004

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !6005
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6006
  br i1 %13, label %if.then6, label %if.end8, !dbg !6007

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !6008
  %15 = load i32, i32* %flags.addr, align 4, !dbg !6009
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !6010
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !6011
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !6012

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !6013
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !6014
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6015

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !6016
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !6017
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !6018
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !6019
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5980
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !6020
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6021
  %24 = load i32, i32* %order.i.i, align 4, !dbg !6022
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6023
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6024
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6025
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !6026
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6026
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6026
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6026
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !6026
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6027
  br label %kmalloc.exit, !dbg !6027

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6028
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6029
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6029
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6030

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6031
  br label %kmalloc_index.exit.i, !dbg !6031

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6032
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6033
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6034

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6035
  br label %kmalloc_index.exit.i, !dbg !6035

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6036
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6037
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6038

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6039
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6040
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6041

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6042
  br label %kmalloc_index.exit.i, !dbg !6042

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6043
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6044
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6045

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6046
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6047
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6048

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6049
  br label %kmalloc_index.exit.i, !dbg !6049

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6050
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6051
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6052

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6053
  br label %kmalloc_index.exit.i, !dbg !6053

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6054
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6055
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6056

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6057
  br label %kmalloc_index.exit.i, !dbg !6057

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6058
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6059
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6060

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6061
  br label %kmalloc_index.exit.i, !dbg !6061

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6062
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6063
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6064

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6065
  br label %kmalloc_index.exit.i, !dbg !6065

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6066
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6067
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6068

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6069
  br label %kmalloc_index.exit.i, !dbg !6069

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6070
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6071
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6072

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6073
  br label %kmalloc_index.exit.i, !dbg !6073

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6074
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6075
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6076

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6077
  br label %kmalloc_index.exit.i, !dbg !6077

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6078
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6079
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6080

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6081
  br label %kmalloc_index.exit.i, !dbg !6081

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6082
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !6083
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6084

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6085
  br label %kmalloc_index.exit.i, !dbg !6085

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6086
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !6087
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6088

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6089
  br label %kmalloc_index.exit.i, !dbg !6089

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6090
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !6091
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6092

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6093
  br label %kmalloc_index.exit.i, !dbg !6093

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6094
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !6095
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6096

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6097
  br label %kmalloc_index.exit.i, !dbg !6097

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6098
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !6099
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6100

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6101
  br label %kmalloc_index.exit.i, !dbg !6101

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6102
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !6103
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6104

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6105
  br label %kmalloc_index.exit.i, !dbg !6105

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6106
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !6107
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6108

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6109
  br label %kmalloc_index.exit.i, !dbg !6109

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6110
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !6111
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6112

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6113
  br label %kmalloc_index.exit.i, !dbg !6113

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6114
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !6115
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6116

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6117
  br label %kmalloc_index.exit.i, !dbg !6117

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6118
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !6119
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6120

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6121
  br label %kmalloc_index.exit.i, !dbg !6121

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6122
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !6123
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6124

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6125
  br label %kmalloc_index.exit.i, !dbg !6125

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6126
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !6127
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6128

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6129
  br label %kmalloc_index.exit.i, !dbg !6129

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6130
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !6131
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6132

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6133
  br label %kmalloc_index.exit.i, !dbg !6133

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6134
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !6135
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6136

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6137
  br label %kmalloc_index.exit.i, !dbg !6137

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6138
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !6139
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6140

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6141
  br label %kmalloc_index.exit.i, !dbg !6141

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6142
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !6143
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6144

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6145
  br label %kmalloc_index.exit.i, !dbg !6145

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !6146, !srcloc !4918
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 233) #9, !dbg !6147, !srcloc !4922
  unreachable, !dbg !6148

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !6149
  store i32 %59, i32* %index.i, align 4, !dbg !6150
  %60 = load i32, i32* %index.i, align 4, !dbg !6151
  %tobool.i = icmp ne i32 %60, 0, !dbg !6151
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6152

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6153
  br label %kmalloc.exit, !dbg !6153

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !6154
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6155
  %and.i.i = and i32 %62, 17, !dbg !6155
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6155
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6155
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6155
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6155
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6156

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6157
  br label %kmalloc_type.exit.i, !dbg !6157

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6158
  %and2.i.i = and i32 %63, 1, !dbg !6159
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6158
  %64 = zext i1 %tobool3.i.i to i64, !dbg !6158
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6158
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6160
  br label %kmalloc_type.exit.i, !dbg !6160

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !6161
  %idxprom.i = zext i32 %65 to i64, !dbg !6162
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6162
  %66 = load i32, i32* %index.i, align 4, !dbg !6163
  %idxprom6.i = zext i32 %66 to i64, !dbg !6162
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6162
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6162
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !6164
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !6165
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6166
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6167
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !6168
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6168
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6168
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6168
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !6168
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5968
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6169
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !6170
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6171
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6172
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !6173
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6174
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !6175
  store i8* %76, i8** %retval.i, align 8, !dbg !6176
  br label %kmalloc.exit, !dbg !6176

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !6177
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !6178
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !6179
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6179
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6179
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6179
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !6179
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6180
  br label %kmalloc.exit, !dbg !6180

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !6181
  store i8* %79, i8** %retval, align 8, !dbg !6182
  br label %return, !dbg !6182

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !6183
  %81 = load i32, i32* %flags.addr, align 4, !dbg !6184
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !6185
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !6185
  %maskedptr = and i64 %ptrint, 7, !dbg !6185
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !6185
  call void @llvm.assume(i1 %maskcond), !dbg !6185
  store i8* %call9, i8** %retval, align 8, !dbg !6186
  br label %return, !dbg !6186

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !6187
  ret i8* %82, !dbg !6187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !6188 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !6194
  %tobool = trunc i8 %0 to i1, !dbg !6194
  %lnot = xor i1 %tobool, true, !dbg !6194
  %lnot1 = xor i1 %lnot, true, !dbg !6194
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6194
  %conv = sext i32 %lnot.ext to i64, !dbg !6194
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6194
  ret i1 %tobool2, !dbg !6195
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_alloc_coherent(%struct.device* %dev, i64 %size, i64* %dma_handle, i32 %gfp) #0 !dbg !6196 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6199, metadata !DIExpression()), !dbg !6200
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6207
  %1 = load i64, i64* %size.addr, align 8, !dbg !6208
  %2 = load i64*, i64** %dma_handle.addr, align 8, !dbg !6209
  %3 = load i32, i32* %gfp.addr, align 4, !dbg !6210
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !6211
  %and = and i32 %4, 8192, !dbg !6212
  %tobool = icmp ne i32 %and, 0, !dbg !6213
  %5 = zext i1 %tobool to i64, !dbg !6213
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !6213
  %call = call i8* @dma_alloc_attrs(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %cond) #10, !dbg !6214
  ret i8* %call, !dbg !6215
}

; Function Attrs: noredzone
declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i64*, i32, i64) #2

; Function Attrs: noredzone
declare dso_local void @__local_bh_enable_ip(i64, i32) #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!203}
!llvm.module.flags = !{!204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !189, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/bus/mhi/core/boot.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !98, !105, !109, !118, !127, !138, !142, !146, !159, !171, !182}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_ch_type", file: !92, line: 81, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/mhi.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "MHI_CH_TYPE_INVALID", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "MHI_CH_TYPE_OUTBOUND", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "MHI_CH_TYPE_INBOUND", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "MHI_CH_TYPE_INBOUND_COALESCED", value: 3, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !99, line: 5, baseType: !5, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_db_brst_mode", file: !92, line: 195, baseType: !5, size: 32, elements: !106)
!106 = !{!107, !108}
!107 = !DIEnumerator(name: "MHI_DB_BRST_DISABLE", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "MHI_DB_BRST_ENABLE", value: 3, isUnsigned: true)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_ch_ee_mask", file: !92, line: 170, baseType: !5, size: 32, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117}
!111 = !DIEnumerator(name: "MHI_CH_EE_PBL", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "MHI_CH_EE_SBL", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "MHI_CH_EE_AMSS", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "MHI_CH_EE_RDDM", value: 8, isUnsigned: true)
!115 = !DIEnumerator(name: "MHI_CH_EE_PTHRU", value: 32, isUnsigned: true)
!116 = !DIEnumerator(name: "MHI_CH_EE_WFW", value: 16, isUnsigned: true)
!117 = !DIEnumerator(name: "MHI_CH_EE_EDL", value: 64, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_ch_state", file: !119, line: 363, baseType: !5, size: 32, elements: !120)
!119 = !DIFile(filename: "drivers/bus/mhi/core/internal.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIEnumerator(name: "MHI_CH_STATE_DISABLED", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "MHI_CH_STATE_ENABLED", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "MHI_CH_STATE_RUNNING", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "MHI_CH_STATE_SUSPENDED", value: 3, isUnsigned: true)
!125 = !DIEnumerator(name: "MHI_CH_STATE_STOP", value: 4, isUnsigned: true)
!126 = !DIEnumerator(name: "MHI_CH_STATE_ERROR", value: 5, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_ev_ccs", file: !119, line: 351, baseType: !5, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137}
!129 = !DIEnumerator(name: "MHI_EV_CC_INVALID", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MHI_EV_CC_SUCCESS", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "MHI_EV_CC_EOT", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "MHI_EV_CC_OVERFLOW", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "MHI_EV_CC_EOB", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "MHI_EV_CC_OOB", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "MHI_EV_CC_DB_MODE", value: 6, isUnsigned: true)
!136 = !DIEnumerator(name: "MHI_EV_CC_UNDEFINED_ERR", value: 16, isUnsigned: true)
!137 = !DIEnumerator(name: "MHI_EV_CC_BAD_TRE", value: 17, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_device_type", file: !92, line: 67, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "MHI_DEVICE_XFER", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "MHI_DEVICE_CONTROLLER", value: 1, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_er_data_type", file: !92, line: 185, baseType: !5, size: 32, elements: !143)
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "MHI_ER_DATA", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "MHI_ER_CTRL", value: 1, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_ee_type", file: !92, line: 121, baseType: !5, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!148 = !DIEnumerator(name: "MHI_EE_PBL", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "MHI_EE_SBL", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "MHI_EE_AMSS", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "MHI_EE_RDDM", value: 3, isUnsigned: true)
!152 = !DIEnumerator(name: "MHI_EE_WFW", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "MHI_EE_PTHRU", value: 5, isUnsigned: true)
!154 = !DIEnumerator(name: "MHI_EE_EDL", value: 6, isUnsigned: true)
!155 = !DIEnumerator(name: "MHI_EE_MAX_SUPPORTED", value: 6, isUnsigned: true)
!156 = !DIEnumerator(name: "MHI_EE_DISABLE_TRANSITION", value: 7, isUnsigned: true)
!157 = !DIEnumerator(name: "MHI_EE_NOT_SUPPORTED", value: 8, isUnsigned: true)
!158 = !DIEnumerator(name: "MHI_EE_MAX", value: 9, isUnsigned: true)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_state", file: !92, line: 147, baseType: !5, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!161 = !DIEnumerator(name: "MHI_STATE_RESET", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MHI_STATE_READY", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "MHI_STATE_M0", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "MHI_STATE_M1", value: 3, isUnsigned: true)
!165 = !DIEnumerator(name: "MHI_STATE_M2", value: 4, isUnsigned: true)
!166 = !DIEnumerator(name: "MHI_STATE_M3", value: 5, isUnsigned: true)
!167 = !DIEnumerator(name: "MHI_STATE_M3_FAST", value: 6, isUnsigned: true)
!168 = !DIEnumerator(name: "MHI_STATE_BHI", value: 7, isUnsigned: true)
!169 = !DIEnumerator(name: "MHI_STATE_SYS_ERR", value: 255, isUnsigned: true)
!170 = !DIEnumerator(name: "MHI_STATE_MAX", value: 256, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mhi_callback", file: !92, line: 38, baseType: !5, size: 32, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181}
!173 = !DIEnumerator(name: "MHI_CB_IDLE", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "MHI_CB_PENDING_DATA", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "MHI_CB_LPM_ENTER", value: 2, isUnsigned: true)
!176 = !DIEnumerator(name: "MHI_CB_LPM_EXIT", value: 3, isUnsigned: true)
!177 = !DIEnumerator(name: "MHI_CB_EE_RDDM", value: 4, isUnsigned: true)
!178 = !DIEnumerator(name: "MHI_CB_EE_MISSION_MODE", value: 5, isUnsigned: true)
!179 = !DIEnumerator(name: "MHI_CB_SYS_ERROR", value: 6, isUnsigned: true)
!180 = !DIEnumerator(name: "MHI_CB_FATAL_ERROR", value: 7, isUnsigned: true)
!181 = !DIEnumerator(name: "MHI_CB_BW_REQ", value: 8, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !183, line: 305, baseType: !5, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!184 = !{!185, !186, !187, !188}
!185 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!189 = !{!190, !194, !196, !197, !200, !201, !202}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !191, line: 21, baseType: !192)
!191 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !193, line: 27, baseType: !5)
!193 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !195, line: 148, baseType: !5)
!195 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!196 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !191, line: 23, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !193, line: 31, baseType: !199)
!199 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!202 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!203 = !{!"rsp"}
!204 = !{i32 7, !"Dwarf Version", i32 4}
!205 = !{i32 2, !"Debug Info Version", i32 3}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"Code Model", i32 2}
!208 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!209 = distinct !DISubprogram(name: "mhi_rddm_prepare", scope: !1, file: !1, line: 22, type: !210, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !255)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212, !3984}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_controller", file: !92, line: 370, size: 4160, elements: !214)
!214 = !{!215, !3891, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4018, !4061, !4067, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4127, !4128, !4129, !4133, !4137, !4138, !4142, !4146, !4147, !4163, !4167, !4171, !4175, !4176, !4177, !4178, !4179}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl_dev", scope: !213, file: !92, line: 371, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !218)
!218 = !{!219, !3463, !3464, !3467, !3468, !3519, !3592, !3593, !3594, !3595, !3596, !3605, !3710, !3723, !3726, !3727, !3731, !3733, !3734, !3735, !3739, !3745, !3746, !3749, !3753, !3843, !3844, !3845, !3846, !3847, !3879, !3880, !3881, !3884, !3887, !3888, !3889, !3890}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !217, file: !71, line: 462, baseType: !220, size: 512)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !221, line: 64, size: 512, elements: !222)
!221 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!222 = !{!223, !227, !233, !235, !295, !3314, !3453, !3458, !3459, !3460, !3461, !3462}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !221, line: 65, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !220, file: !221, line: 66, baseType: !228, size: 128, offset: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !195, line: 178, size: 128, elements: !229)
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !195, line: 179, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !195, line: 179, baseType: !231, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !221, line: 67, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !220, file: !221, line: 68, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !221, line: 192, size: 704, elements: !238)
!238 = !{!239, !240, !256, !257}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !221, line: 193, baseType: !228, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !237, file: !221, line: 194, baseType: !241, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !242, line: 83, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !242, line: 71, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !242, line: 72, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 72, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !246, file: !242, line: 73, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !242, line: 20, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !249, file: !242, line: 21, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !253, line: 25, baseType: !254)
!253 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 25, elements: !255)
!255 = !{}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !221, line: 195, baseType: !220, size: 512, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !237, file: !221, line: 196, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !221, line: 156, size: 192, elements: !261)
!261 = !{!262, !267, !272}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !221, line: 157, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!196, !236, !234}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !221, line: 158, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!224, !236, !234}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !221, line: 159, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!196, !236, !234, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !221, line: 148, size: 20736, elements: !279)
!279 = !{!280, !285, !289, !290, !294}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !278, file: !221, line: 149, baseType: !281, size: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 192, elements: !283)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !278, file: !221, line: 150, baseType: !286, size: 4096, offset: 192)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 4096, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !278, file: !221, line: 151, baseType: !196, size: 32, offset: 4288)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !278, file: !221, line: 152, baseType: !291, size: 16384, offset: 4320)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 16384, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 2048)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !278, file: !221, line: 153, baseType: !196, size: 32, offset: 20704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !220, file: !221, line: 69, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !221, line: 138, size: 448, elements: !298)
!298 = !{!299, !303, !331, !333, !3276, !3304, !3308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !297, file: !221, line: 139, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !234}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !297, file: !221, line: 140, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !307, line: 230, size: 128, elements: !308)
!307 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !324}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !306, file: !307, line: 231, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !234, !317, !282}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !195, line: 60, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !315, line: 73, baseType: !316)
!315 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !315, line: 15, baseType: !200)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !307, line: 30, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !307, line: 31, baseType: !224, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !318, file: !307, line: 32, baseType: !322, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !195, line: 19, baseType: !323)
!323 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !306, file: !307, line: 232, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!313, !234, !317, !224, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 55, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !315, line: 72, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !315, line: 16, baseType: !202)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !297, file: !221, line: 141, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !297, file: !221, line: 142, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !307, line: 84, size: 320, elements: !338)
!338 = !{!339, !340, !344, !3273, !3274}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !307, line: 85, baseType: !224, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !337, file: !307, line: 86, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!322, !234, !317, !196}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !337, file: !307, line: 88, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!322, !234, !348, !196}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !307, line: 168, size: 448, elements: !350)
!350 = !{!351, !352, !353, !354, !3268, !3269}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !349, file: !307, line: 169, baseType: !318, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !307, line: 170, baseType: !328, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !349, file: !307, line: 171, baseType: !201, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !307, line: 172, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!313, !358, !234, !348, !282, !530, !328}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !360)
!360 = !{!361, !379, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3251, !3252, !3261, !3262, !3263, !3264, !3265, !3266, !3267}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !359, file: !42, line: 920, baseType: !362, size: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !42, line: 917, size: 128, elements: !363)
!363 = !{!364, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !362, file: !42, line: 918, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !366, line: 58, size: 64, elements: !367)
!366 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !366, line: 59, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !362, file: !42, line: 919, baseType: !371, size: 128, align: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !195, line: 216, size: 128, align: 64, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !195, line: 217, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !371, file: !195, line: 218, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !374}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !359, file: !42, line: 921, baseType: !380, size: 128, offset: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !381, line: 8, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !380, file: !381, line: 9, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !386, line: 18, flags: DIFlagFwdDecl)
!386 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !380, file: !381, line: 10, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !386, line: 89, size: 1536, elements: !390)
!390 = !{!391, !392, !402, !410, !411, !427, !3201, !3203, !3215, !3216, !3217, !3218, !3219, !3225, !3226, !3227}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !389, file: !386, line: 91, baseType: !5, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !389, file: !386, line: 92, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !394, line: 277, baseType: !395)
!394 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !394, line: 277, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !395, file: !394, line: 277, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !394, line: 70, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !394, line: 65, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !399, file: !394, line: 66, baseType: !5, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !389, file: !386, line: 93, baseType: !403, size: 128, offset: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !404, line: 38, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !404, line: 39, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !403, file: !404, line: 39, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !389, file: !386, line: 94, baseType: !388, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !389, file: !386, line: 95, baseType: !412, size: 128, offset: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !386, line: 47, size: 128, elements: !413)
!413 = !{!414, !423}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !386, line: 48, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !386, line: 48, size: 64, elements: !416)
!416 = !{!417, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !386, line: 49, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !386, line: 49, size: 64, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !418, file: !386, line: 50, baseType: !190, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !418, file: !386, line: 50, baseType: !190, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !415, file: !386, line: 52, baseType: !197, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !386, line: 54, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !389, file: !386, line: 96, baseType: !428, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !430)
!430 = !{!431, !432, !433, !441, !448, !449, !597, !2928, !2929, !2930, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !3177, !3185, !3186, !3187, !3197, !3198, !3199, !3200}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !429, file: !42, line: 611, baseType: !322, size: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !429, file: !42, line: 612, baseType: !323, size: 16, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !429, file: !42, line: 613, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !435, line: 23, baseType: !436)
!435 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 21, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !436, file: !435, line: 22, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !195, line: 32, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !315, line: 49, baseType: !5)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !429, file: !42, line: 614, baseType: !442, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !435, line: 28, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 26, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !443, file: !435, line: 27, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 33, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !315, line: 50, baseType: !5)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !429, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !429, file: !42, line: 622, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !453)
!453 = !{!454, !458, !471, !475, !481, !485, !491, !495, !499, !503, !507, !508, !514, !518, !544, !573, !577, !583, !588, !592, !593}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !452, file: !42, line: 1865, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!388, !428, !388, !5}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !452, file: !42, line: 1866, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!224, !388, !428, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !464, line: 10, size: 128, elements: !465)
!464 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !463, file: !464, line: 11, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !201}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !463, file: !464, line: 12, baseType: !201, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !452, file: !42, line: 1867, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!196, !428, !196}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !452, file: !42, line: 1868, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !428, !196}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !452, file: !42, line: 1870, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!196, !388, !282, !196}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !452, file: !42, line: 1872, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!196, !428, !388, !322, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !195, line: 30, baseType: !490)
!490 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !452, file: !42, line: 1873, baseType: !492, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!196, !388, !428, !388}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !452, file: !42, line: 1874, baseType: !496, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!196, !428, !388}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !452, file: !42, line: 1875, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!196, !428, !388, !224}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !452, file: !42, line: 1876, baseType: !504, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!196, !428, !388, !322}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !452, file: !42, line: 1877, baseType: !496, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !452, file: !42, line: 1878, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!196, !428, !388, !322, !512}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !195, line: 16, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !195, line: 13, baseType: !190)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !452, file: !42, line: 1879, baseType: !515, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!196, !428, !388, !428, !388, !5}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !452, file: !42, line: 1881, baseType: !519, size: 64, offset: 832)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!196, !388, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !533, !541, !542, !543}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !523, file: !42, line: 220, baseType: !5, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !523, file: !42, line: 221, baseType: !322, size: 16, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !523, file: !42, line: 222, baseType: !434, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !523, file: !42, line: 223, baseType: !442, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !523, file: !42, line: 224, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !195, line: 46, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !315, line: 88, baseType: !532)
!532 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !523, file: !42, line: 225, baseType: !534, size: 128, offset: 192)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !535, line: 13, size: 128, elements: !536)
!535 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !534, file: !535, line: 14, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !535, line: 8, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !193, line: 30, baseType: !532)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !534, file: !535, line: 15, baseType: !200, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !523, file: !42, line: 226, baseType: !534, size: 128, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !523, file: !42, line: 227, baseType: !534, size: 128, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !523, file: !42, line: 234, baseType: !358, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !452, file: !42, line: 1882, baseType: !545, size: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!196, !548, !550, !190, !5}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !552, line: 22, size: 1152, elements: !553)
!552 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !555, !556, !557, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !551, file: !552, line: 23, baseType: !190, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !551, file: !552, line: 24, baseType: !322, size: 16, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !551, file: !552, line: 25, baseType: !5, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !551, file: !552, line: 26, baseType: !558, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !195, line: 104, baseType: !190)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !551, file: !552, line: 27, baseType: !197, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !551, file: !552, line: 28, baseType: !197, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !551, file: !552, line: 37, baseType: !197, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !551, file: !552, line: 38, baseType: !512, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !551, file: !552, line: 39, baseType: !512, size: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !551, file: !552, line: 40, baseType: !434, size: 32, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !551, file: !552, line: 41, baseType: !442, size: 32, offset: 416)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !552, line: 42, baseType: !530, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !551, file: !552, line: 43, baseType: !534, size: 128, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !551, file: !552, line: 44, baseType: !534, size: 128, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !551, file: !552, line: 45, baseType: !534, size: 128, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !551, file: !552, line: 46, baseType: !534, size: 128, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !551, file: !552, line: 47, baseType: !197, size: 64, offset: 1024)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !551, file: !552, line: 48, baseType: !197, size: 64, offset: 1088)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !452, file: !42, line: 1883, baseType: !574, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!313, !388, !282, !328}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !452, file: !42, line: 1884, baseType: !578, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!196, !428, !581, !197, !197}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !452, file: !42, line: 1886, baseType: !584, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!196, !428, !587, !196}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !452, file: !42, line: 1887, baseType: !589, size: 64, offset: 1152)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!196, !428, !388, !358, !5, !322}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !452, file: !42, line: 1890, baseType: !504, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !452, file: !42, line: 1891, baseType: !594, size: 64, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!196, !428, !479, !196}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !429, file: !42, line: 623, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !656, !2535, !2617, !2700, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2716, !2720, !2721, !2724, !2725, !2728, !2729, !2730, !2771, !2798, !2799, !2800, !2801, !2802, !2803, !2806, !2808, !2815, !2816, !2818, !2819, !2820, !2879, !2880, !2895, !2896, !2897, !2898, !2899, !2902, !2903, !2904, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !599, file: !42, line: 1417, baseType: !228, size: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !599, file: !42, line: 1418, baseType: !512, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !599, file: !42, line: 1419, baseType: !426, size: 8, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !599, file: !42, line: 1420, baseType: !202, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !599, file: !42, line: 1421, baseType: !530, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !599, file: !42, line: 1422, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !609)
!609 = !{!610, !611, !612, !619, !623, !627, !631, !635, !636, !646, !649, !650, !651, !653, !654, !655}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !42, line: 2229, baseType: !224, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !608, file: !42, line: 2230, baseType: !196, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !608, file: !42, line: 2238, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!196, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !618, line: 28, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !608, file: !42, line: 2239, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !608, file: !42, line: 2240, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!388, !607, !196, !224, !201}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !608, file: !42, line: 2242, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !598}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !608, file: !42, line: 2243, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !634, line: 76, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !42, line: 2244, baseType: !607, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !608, file: !42, line: 2245, baseType: !637, size: 64, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !195, line: 182, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !637, file: !195, line: 183, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !195, line: 186, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !195, line: 187, baseType: !640, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !641, file: !195, line: 187, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !608, file: !42, line: 2247, baseType: !647, offset: 576)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !648, line: 187, elements: !255)
!648 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !608, file: !42, line: 2248, baseType: !647, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !608, file: !42, line: 2249, baseType: !647, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !608, file: !42, line: 2250, baseType: !652, offset: 576)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, elements: !283)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !608, file: !42, line: 2252, baseType: !647, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !608, file: !42, line: 2253, baseType: !647, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !608, file: !42, line: 2254, baseType: !647, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !599, file: !42, line: 1423, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !660)
!660 = !{!661, !665, !669, !670, !674, !680, !684, !685, !686, !690, !694, !695, !696, !697, !703, !708, !709, !716, !717, !718, !719, !2519, !2534}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !659, file: !42, line: 1936, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!428, !598}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !659, file: !42, line: 1937, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !428}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !659, file: !42, line: 1938, baseType: !666, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !659, file: !42, line: 1940, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !428, !196}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !659, file: !42, line: 1941, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!196, !428, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !659, file: !42, line: 1942, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!196, !428}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !659, file: !42, line: 1943, baseType: !666, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !659, file: !42, line: 1944, baseType: !628, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !659, file: !42, line: 1945, baseType: !687, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!196, !598, !196}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !659, file: !42, line: 1946, baseType: !691, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!196, !598}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !659, file: !42, line: 1947, baseType: !691, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !659, file: !42, line: 1948, baseType: !691, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !659, file: !42, line: 1949, baseType: !691, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !659, file: !42, line: 1950, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!196, !388, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !659, file: !42, line: 1951, baseType: !704, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!196, !598, !707, !282}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !659, file: !42, line: 1952, baseType: !628, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !659, file: !42, line: 1954, baseType: !710, size: 64, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!196, !713, !388}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !715, line: 539, flags: DIFlagFwdDecl)
!715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !659, file: !42, line: 1955, baseType: !710, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !659, file: !42, line: 1956, baseType: !710, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !659, file: !42, line: 1957, baseType: !710, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !659, file: !42, line: 1963, baseType: !720, size: 64, offset: 1280)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!196, !598, !723, !194}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !725, line: 68, size: 512, align: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !728, !2511, !2518}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !725, line: 69, baseType: !202, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 77, baseType: !729, size: 320, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 77, size: 320, elements: !730)
!730 = !{!731, !1066, !1071, !1099, !1107, !1113, !2442, !2510}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 78, baseType: !732, size: 320)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 78, size: 320, elements: !733)
!733 = !{!734, !735, !1064, !1065}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !732, file: !725, line: 84, baseType: !228, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !732, file: !725, line: 86, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !738)
!738 = !{!739, !740, !747, !748, !753, !768, !784, !785, !786, !787, !1057, !1058, !1061, !1062, !1063}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !737, file: !42, line: 452, baseType: !428, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !737, file: !42, line: 453, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !742, line: 292, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !741, file: !742, line: 293, baseType: !241)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !741, file: !742, line: 295, baseType: !194, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !741, file: !742, line: 296, baseType: !201, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !737, file: !42, line: 454, baseType: !194, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !737, file: !42, line: 455, baseType: !749, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !195, line: 168, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 166, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !195, line: 167, baseType: !196, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !737, file: !42, line: 460, baseType: !754, size: 128, offset: 256)
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
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !755, line: 25, baseType: !202, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !755, line: 26, baseType: !761, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !755, line: 27, baseType: !761, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !754, file: !755, line: 127, baseType: !761, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !737, file: !42, line: 461, baseType: !769, size: 256, offset: 384)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 35, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !780, !781, !783}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 36, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !774, line: 13, baseType: !775)
!774 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !195, line: 175, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 173, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !776, file: !195, line: 174, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !191, line: 22, baseType: !539)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 42, baseType: !773, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 46, baseType: !782, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !242, line: 29, baseType: !249)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 47, baseType: !228, size: 128, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !737, file: !42, line: 462, baseType: !202, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !737, file: !42, line: 463, baseType: !202, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !737, file: !42, line: 464, baseType: !202, size: 64, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !737, file: !42, line: 465, baseType: !788, size: 64, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !791)
!791 = !{!792, !796, !800, !804, !808, !812, !818, !824, !828, !833, !837, !841, !845, !1021, !1025, !1031, !1032, !1033, !1037, !1042, !1046, !1053}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !790, file: !42, line: 368, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!196, !723, !678}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !790, file: !42, line: 369, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!196, !358, !723}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !790, file: !42, line: 372, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!196, !736, !678}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !790, file: !42, line: 375, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!196, !723}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !790, file: !42, line: 381, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!196, !358, !736, !231, !5}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !790, file: !42, line: 383, baseType: !813, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !790, file: !42, line: 385, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!196, !358, !736, !530, !5, !5, !822, !823}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !790, file: !42, line: 388, baseType: !825, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!196, !358, !736, !530, !5, !5, !723, !201}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !790, file: !42, line: 393, baseType: !829, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !736, !832}
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !195, line: 125, baseType: !197)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !790, file: !42, line: 394, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !723, !5, !5}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !790, file: !42, line: 395, baseType: !838, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!196, !723, !194}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !790, file: !42, line: 396, baseType: !842, size: 64, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !723}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !790, file: !42, line: 397, baseType: !846, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!313, !849, !871}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !851)
!851 = !{!852, !853, !854, !858, !859, !860, !863, !864}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !850, file: !42, line: 321, baseType: !358, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !850, file: !42, line: 326, baseType: !530, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !850, file: !42, line: 327, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !849, !200, !200}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !850, file: !42, line: 328, baseType: !201, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !850, file: !42, line: 329, baseType: !196, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !850, file: !42, line: 330, baseType: !861, size: 16, offset: 288)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !191, line: 19, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !193, line: 24, baseType: !323)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !850, file: !42, line: 331, baseType: !861, size: 16, offset: 304)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !42, line: 332, baseType: !865, size: 64, offset: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !42, line: 332, size: 64, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !865, file: !42, line: 333, baseType: !5, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !865, file: !42, line: 334, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !873, line: 29, size: 320, elements: !874)
!873 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !876, !877, !878, !1012}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !873, line: 35, baseType: !5, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !872, file: !873, line: 36, baseType: !328, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !872, file: !873, line: 37, baseType: !328, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !873, line: 38, baseType: !879, size: 64, offset: 192)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !873, line: 38, size: 64, elements: !880)
!880 = !{!881, !889, !896, !905}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !879, file: !873, line: 39, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !885, line: 17, size: 128, elements: !886)
!885 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !884, file: !885, line: 19, baseType: !201, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !884, file: !885, line: 20, baseType: !329, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !879, file: !873, line: 40, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !873, line: 15, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !892, file: !873, line: 16, baseType: !201, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !892, file: !873, line: 17, baseType: !328, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !879, file: !873, line: 41, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !900, line: 31, size: 128, elements: !901)
!900 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !899, file: !900, line: 32, baseType: !723, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !899, file: !900, line: 33, baseType: !5, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !899, file: !900, line: 34, baseType: !5, size: 32, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !879, file: !873, line: 42, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !908, line: 57, size: 1088, elements: !909)
!908 = !DIFile(filename: "./include/linux/pipe_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!909 = !{!910, !917, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !953, !954, !981}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !907, file: !908, line: 58, baseType: !911, size: 192)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !912, line: 53, size: 192, elements: !913)
!912 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !911, file: !912, line: 54, baseType: !773, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !911, file: !912, line: 55, baseType: !241, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !911, file: !912, line: 59, baseType: !228, size: 128, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rd_wait", scope: !907, file: !908, line: 59, baseType: !918, size: 128, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !919, line: 40, baseType: !920)
!919 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !919, line: 36, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !920, file: !919, line: 37, baseType: !241)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !920, file: !919, line: 38, baseType: !228, size: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "wr_wait", scope: !907, file: !908, line: 59, baseType: !918, size: 128, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !907, file: !908, line: 60, baseType: !5, size: 32, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !907, file: !908, line: 61, baseType: !5, size: 32, offset: 480)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "max_usage", scope: !907, file: !908, line: 62, baseType: !5, size: 32, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size", scope: !907, file: !908, line: 63, baseType: !5, size: 32, offset: 544)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_accounted", scope: !907, file: !908, line: 67, baseType: !5, size: 32, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !907, file: !908, line: 68, baseType: !5, size: 32, offset: 608)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !907, file: !908, line: 69, baseType: !5, size: 32, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !907, file: !908, line: 70, baseType: !5, size: 32, offset: 672)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "r_counter", scope: !907, file: !908, line: 71, baseType: !5, size: 32, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "w_counter", scope: !907, file: !908, line: 72, baseType: !5, size: 32, offset: 736)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_page", scope: !907, file: !908, line: 73, baseType: !723, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "fasync_readers", scope: !907, file: !908, line: 74, baseType: !937, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !939)
!939 = !{!940, !948, !949, !950, !951, !952}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !938, file: !42, line: 1315, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !942, line: 20, baseType: !943)
!942 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !942, line: 11, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !943, file: !942, line: 12, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !253, line: 33, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 31, elements: !255)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !938, file: !42, line: 1316, baseType: !196, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !938, file: !42, line: 1317, baseType: !196, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !938, file: !42, line: 1318, baseType: !937, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !938, file: !42, line: 1319, baseType: !358, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !938, file: !42, line: 1320, baseType: !371, size: 128, align: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "fasync_writers", scope: !907, file: !908, line: 75, baseType: !937, size: 64, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !907, file: !908, line: 76, baseType: !955, size: 64, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_buffer", file: !908, line: 26, size: 320, elements: !957)
!957 = !{!958, !959, !960, !961, !979, !980}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !956, file: !908, line: 27, baseType: !723, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !956, file: !908, line: 28, baseType: !5, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !956, file: !908, line: 28, baseType: !5, size: 32, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !956, file: !908, line: 29, baseType: !962, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_buf_operations", file: !908, line: 93, size: 256, elements: !965)
!965 = !{!966, !970, !974, !978}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "confirm", scope: !964, file: !908, line: 101, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!196, !906, !955}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !964, file: !908, line: 107, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !906, !955}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "try_steal", scope: !964, file: !908, line: 117, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!489, !906, !955}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !964, file: !908, line: 122, baseType: !975, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !908, line: 30, baseType: !5, size: 32, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !956, file: !908, line: 31, baseType: !202, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !907, file: !908, line: 77, baseType: !982, size: 64, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !984, line: 13, size: 896, elements: !985)
!984 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!985 = !{!986, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !983, file: !984, line: 14, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !988, line: 113, baseType: !989)
!988 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !988, line: 111, size: 32, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !989, file: !988, line: 112, baseType: !749, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !983, file: !984, line: 15, baseType: !749, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !983, file: !984, line: 16, baseType: !749, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !983, file: !984, line: 21, baseType: !773, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !983, file: !984, line: 27, baseType: !202, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !983, file: !984, line: 28, baseType: !202, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !983, file: !984, line: 29, baseType: !773, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !983, file: !984, line: 32, baseType: !641, size: 128, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !983, file: !984, line: 33, baseType: !434, size: 32, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !983, file: !984, line: 37, baseType: !773, size: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !983, file: !984, line: 44, baseType: !1002, size: 256, offset: 640)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1003, line: 15, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1002, file: !1003, line: 16, baseType: !782)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1002, file: !1003, line: 18, baseType: !196, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1002, file: !1003, line: 19, baseType: !196, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1002, file: !1003, line: 20, baseType: !196, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1002, file: !1003, line: 21, baseType: !196, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1002, file: !1003, line: 22, baseType: !202, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !1003, line: 23, baseType: !202, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !873, line: 44, baseType: !1013, size: 64, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !873, line: 44, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1013, file: !873, line: 45, baseType: !202, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !873, line: 46, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !873, line: 46, size: 64, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1017, file: !873, line: 47, baseType: !5, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !1017, file: !873, line: 48, baseType: !5, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !790, file: !42, line: 402, baseType: !1022, size: 64, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!196, !736, !723, !723, !3}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !790, file: !42, line: 404, baseType: !1026, size: 64, offset: 896)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!489, !723, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1030, line: 305, baseType: !5)
!1030 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !790, file: !42, line: 405, baseType: !842, size: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !790, file: !42, line: 406, baseType: !805, size: 64, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !790, file: !42, line: 407, baseType: !1034, size: 64, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!196, !723, !202, !202}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !790, file: !42, line: 409, baseType: !1038, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !723, !1041, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !790, file: !42, line: 410, baseType: !1043, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!196, !736, !723}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !790, file: !42, line: 413, baseType: !1047, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!196, !1050, !358, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !790, file: !42, line: 415, baseType: !1054, size: 64, offset: 1344)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !358}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !42, line: 466, baseType: !202, size: 64, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !737, file: !42, line: 467, baseType: !1059, size: 32, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1060, line: 8, baseType: !190)
!1060 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !737, file: !42, line: 468, baseType: !241, offset: 992)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !737, file: !42, line: 469, baseType: !228, size: 128, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !737, file: !42, line: 470, baseType: !201, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !732, file: !725, line: 87, baseType: !202, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !732, file: !725, line: 94, baseType: !202, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 96, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 96, size: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1067, file: !725, line: 101, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !195, line: 143, baseType: !197)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 103, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 103, size: 320, elements: !1073)
!1073 = !{!1074, !1084, !1087, !1088}
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !725, line: 104, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !725, line: 104, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1075, file: !725, line: 105, baseType: !228, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !725, line: 106, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !725, line: 106, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !725, line: 107, baseType: !723, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1079, file: !725, line: 109, baseType: !196, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1079, file: !725, line: 110, baseType: !196, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1072, file: !725, line: 117, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !725, line: 117, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1072, file: !725, line: 119, baseType: !201, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !725, line: 120, baseType: !1089, size: 64, offset: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !725, line: 120, size: 64, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1089, file: !725, line: 121, baseType: !201, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1089, file: !725, line: 122, baseType: !202, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !725, line: 123, baseType: !1094, size: 32)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !725, line: 123, size: 32, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1094, file: !725, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1094, file: !725, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1094, file: !725, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 130, baseType: !1100, size: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 130, size: 192, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1100, file: !725, line: 131, baseType: !202, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1100, file: !725, line: 134, baseType: !426, size: 8, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1100, file: !725, line: 135, baseType: !426, size: 8, offset: 72)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1100, file: !725, line: 136, baseType: !749, size: 32, offset: 96)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1100, file: !725, line: 137, baseType: !5, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 139, baseType: !1108, size: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 139, size: 256, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1108, file: !725, line: 140, baseType: !202, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1108, file: !725, line: 141, baseType: !749, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1108, file: !725, line: 143, baseType: !228, size: 128, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 145, baseType: !1114, size: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 145, size: 256, elements: !1115)
!1115 = !{!1116, !1117, !1119, !1120, !2441}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1114, file: !725, line: 146, baseType: !202, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1114, file: !725, line: 147, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !715, line: 509, baseType: !723)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1114, file: !725, line: 148, baseType: !202, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !725, line: 149, baseType: !1121, size: 64, offset: 192)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !725, line: 149, size: 64, elements: !1122)
!1122 = !{!1123, !2440}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1121, file: !725, line: 150, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !725, line: 388, size: 7296, elements: !1126)
!1126 = !{!1127, !2436}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !725, line: 389, baseType: !1128, size: 7296)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1125, file: !725, line: 389, size: 7296, elements: !1129)
!1129 = !{!1130, !1248, !1249, !1250, !1254, !1255, !1256, !1257, !1258, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1299, !1307, !1310, !1350, !1351, !2420, !2421, !2424, !2425, !2426, !2429, !2430, !2431, !2434, !2435}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1128, file: !725, line: 390, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !725, line: 305, size: 1472, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1148, !1149, !1154, !1155, !1158, !1242, !1243, !1244, !1245, !1246}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1132, file: !725, line: 308, baseType: !202, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1132, file: !725, line: 309, baseType: !202, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1132, file: !725, line: 313, baseType: !1131, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1132, file: !725, line: 313, baseType: !1131, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1132, file: !725, line: 315, baseType: !762, size: 192, align: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1132, file: !725, line: 323, baseType: !202, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1132, file: !725, line: 327, baseType: !1124, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1132, file: !725, line: 333, baseType: !1142, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !715, line: 284, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !715, line: 284, size: 64, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1143, file: !715, line: 284, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1147, line: 19, baseType: !202)
!1147 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1132, file: !725, line: 334, baseType: !202, size: 64, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1132, file: !725, line: 343, baseType: !1150, size: 256, offset: 704)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1132, file: !725, line: 340, size: 256, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1150, file: !725, line: 341, baseType: !762, size: 192, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1150, file: !725, line: 342, baseType: !202, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1132, file: !725, line: 351, baseType: !228, size: 128, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1132, file: !725, line: 353, baseType: !1156, size: 64, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !725, line: 353, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1132, file: !725, line: 356, baseType: !1159, size: 64, offset: 1152)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1162)
!1162 = !{!1163, !1167, !1168, !1172, !1176, !1216, !1220, !1224, !1228, !1229, !1230, !1234, !1238}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1161, file: !12, line: 558, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !1131}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1161, file: !12, line: 559, baseType: !1164, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1161, file: !12, line: 560, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!196, !1131, !202}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1161, file: !12, line: 561, baseType: !1173, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!196, !1131}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1161, file: !12, line: 562, baseType: !1177, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !725, line: 682, baseType: !5)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1196, !1203, !1209, !1210, !1211, !1213, !1215}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1182, file: !12, line: 509, baseType: !1131, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1182, file: !12, line: 511, baseType: !194, size: 32, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1182, file: !12, line: 512, baseType: !202, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1182, file: !12, line: 513, baseType: !202, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1182, file: !12, line: 514, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !715, line: 385, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 385, size: 64, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1192, file: !715, line: 385, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1147, line: 15, baseType: !202)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1182, file: !12, line: 516, baseType: !1197, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !715, line: 359, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 359, size: 64, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1199, file: !715, line: 359, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1147, line: 16, baseType: !202)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1182, file: !12, line: 519, baseType: !1204, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1147, line: 21, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 21, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1205, file: !1147, line: 21, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1147, line: 14, baseType: !202)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1182, file: !12, line: 521, baseType: !723, size: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1182, file: !12, line: 522, baseType: !723, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1182, file: !12, line: 528, baseType: !1212, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1182, file: !12, line: 532, baseType: !1214, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1182, file: !12, line: 536, baseType: !1118, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1161, file: !12, line: 563, baseType: !1217, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1180, !1181, !11}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1161, file: !12, line: 565, baseType: !1221, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1181, !202, !202}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1161, file: !12, line: 567, baseType: !1225, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!202, !1131}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1161, file: !12, line: 571, baseType: !1177, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1161, file: !12, line: 574, baseType: !1177, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1161, file: !12, line: 579, baseType: !1231, size: 64, offset: 640)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!196, !1131, !202, !201, !196, !196}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1161, file: !12, line: 585, baseType: !1235, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!224, !1131}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1161, file: !12, line: 615, baseType: !1239, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!723, !1131, !202}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1132, file: !725, line: 359, baseType: !202, size: 64, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1132, file: !725, line: 361, baseType: !358, size: 64, offset: 1280)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1132, file: !725, line: 362, baseType: !201, size: 64, offset: 1344)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1132, file: !725, line: 365, baseType: !773, size: 64, offset: 1408)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1132, file: !725, line: 373, baseType: !1247, offset: 1472)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !725, line: 296, elements: !255)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1128, file: !725, line: 391, baseType: !758, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1128, file: !725, line: 392, baseType: !197, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1128, file: !725, line: 394, baseType: !1251, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!202, !358, !202, !202, !202, !202}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1128, file: !725, line: 398, baseType: !202, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1128, file: !725, line: 399, baseType: !202, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1128, file: !725, line: 405, baseType: !202, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1128, file: !725, line: 406, baseType: !202, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1128, file: !725, line: 407, baseType: !1259, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !715, line: 286, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 286, size: 64, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1261, file: !715, line: 286, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1147, line: 18, baseType: !202)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1128, file: !725, line: 416, baseType: !749, size: 32, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1128, file: !725, line: 428, baseType: !749, size: 32, offset: 608)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1128, file: !725, line: 437, baseType: !749, size: 32, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1128, file: !725, line: 447, baseType: !749, size: 32, offset: 672)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1128, file: !725, line: 450, baseType: !773, size: 64, offset: 704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1128, file: !725, line: 452, baseType: !196, size: 32, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1128, file: !725, line: 454, baseType: !241, offset: 800)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1128, file: !725, line: 457, baseType: !769, size: 256, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1128, file: !725, line: 459, baseType: !228, size: 128, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1128, file: !725, line: 466, baseType: !202, size: 64, offset: 1216)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1128, file: !725, line: 467, baseType: !202, size: 64, offset: 1280)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1128, file: !725, line: 469, baseType: !202, size: 64, offset: 1344)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1128, file: !725, line: 470, baseType: !202, size: 64, offset: 1408)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1128, file: !725, line: 471, baseType: !775, size: 64, offset: 1472)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1128, file: !725, line: 472, baseType: !202, size: 64, offset: 1536)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1128, file: !725, line: 473, baseType: !202, size: 64, offset: 1600)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1128, file: !725, line: 474, baseType: !202, size: 64, offset: 1664)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1128, file: !725, line: 475, baseType: !202, size: 64, offset: 1728)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1128, file: !725, line: 477, baseType: !241, offset: 1792)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1128, file: !725, line: 478, baseType: !202, size: 64, offset: 1792)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1128, file: !725, line: 478, baseType: !202, size: 64, offset: 1856)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1128, file: !725, line: 478, baseType: !202, size: 64, offset: 1920)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1128, file: !725, line: 478, baseType: !202, size: 64, offset: 1984)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1128, file: !725, line: 479, baseType: !202, size: 64, offset: 2048)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1128, file: !725, line: 479, baseType: !202, size: 64, offset: 2112)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1128, file: !725, line: 479, baseType: !202, size: 64, offset: 2176)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1128, file: !725, line: 480, baseType: !202, size: 64, offset: 2240)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1128, file: !725, line: 480, baseType: !202, size: 64, offset: 2304)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1128, file: !725, line: 480, baseType: !202, size: 64, offset: 2368)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1128, file: !725, line: 480, baseType: !202, size: 64, offset: 2432)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1128, file: !725, line: 482, baseType: !1296, size: 2816, offset: 2496)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2816, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 44)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1128, file: !725, line: 488, baseType: !1300, size: 256, offset: 5312)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1301, line: 60, size: 256, elements: !1302)
!1301 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1300, file: !1301, line: 61, baseType: !1304, size: 256)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 256, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 4)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1128, file: !725, line: 490, baseType: !1308, size: 64, offset: 5568)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !725, line: 490, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1128, file: !725, line: 493, baseType: !1311, size: 896, offset: 5632)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1312, line: 53, baseType: !1313)
!1312 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1312, line: 13, size: 896, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1321, !1322, !1323, !1324, !1344, !1345, !1346}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1313, file: !1312, line: 18, baseType: !197, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1313, file: !1312, line: 28, baseType: !775, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1313, file: !1312, line: 31, baseType: !769, size: 256, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1313, file: !1312, line: 32, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1312, line: 32, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1313, file: !1312, line: 37, baseType: !323, size: 16, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1313, file: !1312, line: 40, baseType: !911, size: 192, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1313, file: !1312, line: 41, baseType: !201, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1313, file: !1312, line: 42, baseType: !1325, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1328, line: 13, size: 896, elements: !1329)
!1328 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1327, file: !1328, line: 14, baseType: !201, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1327, file: !1328, line: 15, baseType: !202, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1327, file: !1328, line: 17, baseType: !202, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1327, file: !1328, line: 17, baseType: !202, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1327, file: !1328, line: 19, baseType: !200, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1327, file: !1328, line: 21, baseType: !200, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1327, file: !1328, line: 22, baseType: !200, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1327, file: !1328, line: 23, baseType: !200, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1327, file: !1328, line: 24, baseType: !200, size: 64, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1327, file: !1328, line: 25, baseType: !200, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1327, file: !1328, line: 26, baseType: !200, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1327, file: !1328, line: 27, baseType: !200, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1327, file: !1328, line: 28, baseType: !200, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1327, file: !1328, line: 29, baseType: !200, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1313, file: !1312, line: 44, baseType: !749, size: 32, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1313, file: !1312, line: 50, baseType: !861, size: 16, offset: 864)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1313, file: !1312, line: 51, baseType: !1347, size: 16, offset: 880)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !191, line: 18, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !193, line: 23, baseType: !1349)
!1349 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !725, line: 495, baseType: !202, size: 64, offset: 6528)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1128, file: !725, line: 497, baseType: !1352, size: 64, offset: 6592)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !725, line: 381, size: 384, elements: !1354)
!1354 = !{!1355, !1356, !2419}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1353, file: !725, line: 382, baseType: !749, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1353, file: !725, line: 383, baseType: !1357, size: 128, offset: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !725, line: 376, size: 128, elements: !1358)
!1358 = !{!1359, !2417}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1357, file: !725, line: 377, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1362, line: 640, size: 48640, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1370, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1385, !1403, !1414, !1499, !1500, !1501, !1512, !1513, !1515, !1516, !1517, !1518, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1597, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1629, !1631, !1632, !1633, !1645, !1646, !1647, !1648, !1649, !1650, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1674, !1679, !1838, !1839, !1840, !1841, !1845, !1848, !1851, !1854, !1857, !1860, !1961, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !2007, !2008, !2009, !2010, !2011, !2016, !2017, !2018, !2021, !2022, !2025, !2028, !2031, !2034, !2077, !2080, !2081, !2160, !2161, !2164, !2165, !2168, !2169, !2170, !2174, !2175, !2176, !2189, !2190, !2191, !2201, !2206, !2207, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1361, file: !1362, line: 646, baseType: !1365, size: 128)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1366, line: 56, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1365, file: !1366, line: 57, baseType: !202, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1365, file: !1366, line: 58, baseType: !190, size: 32, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1361, file: !1362, line: 649, baseType: !1371, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !200)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1361, file: !1362, line: 657, baseType: !201, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1361, file: !1362, line: 658, baseType: !987, size: 32, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1362, line: 660, baseType: !5, size: 32, offset: 288)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1361, file: !1362, line: 661, baseType: !5, size: 32, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1361, file: !1362, line: 684, baseType: !196, size: 32, offset: 352)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1361, file: !1362, line: 686, baseType: !196, size: 32, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1361, file: !1362, line: 687, baseType: !196, size: 32, offset: 416)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1361, file: !1362, line: 688, baseType: !196, size: 32, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1361, file: !1362, line: 689, baseType: !5, size: 32, offset: 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1361, file: !1362, line: 691, baseType: !1382, size: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1362, line: 691, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1361, file: !1362, line: 692, baseType: !1386, size: 832, offset: 576)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1362, line: 451, size: 832, elements: !1387)
!1387 = !{!1388, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1386, file: !1362, line: 453, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1362, line: 325, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1389, file: !1362, line: 326, baseType: !202, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1389, file: !1362, line: 327, baseType: !190, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1386, file: !1362, line: 454, baseType: !762, size: 192, align: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1386, file: !1362, line: 455, baseType: !228, size: 128, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1386, file: !1362, line: 456, baseType: !5, size: 32, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1386, file: !1362, line: 458, baseType: !197, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1386, file: !1362, line: 459, baseType: !197, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1386, file: !1362, line: 460, baseType: !197, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1386, file: !1362, line: 461, baseType: !197, size: 64, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1386, file: !1362, line: 463, baseType: !197, size: 64, offset: 768)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1386, file: !1362, line: 465, baseType: !1402, offset: 832)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1362, line: 415, elements: !255)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1361, file: !1362, line: 693, baseType: !1404, size: 384, offset: 1408)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1362, line: 489, size: 384, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1404, file: !1362, line: 490, baseType: !228, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1404, file: !1362, line: 491, baseType: !202, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1404, file: !1362, line: 492, baseType: !202, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1404, file: !1362, line: 493, baseType: !5, size: 32, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1404, file: !1362, line: 494, baseType: !323, size: 16, offset: 288)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1404, file: !1362, line: 495, baseType: !323, size: 16, offset: 304)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1404, file: !1362, line: 497, baseType: !1413, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1361, file: !1362, line: 697, baseType: !1415, size: 1792, offset: 1792)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1362, line: 507, size: 1792, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1496, !1497}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1415, file: !1362, line: 508, baseType: !762, size: 192, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1415, file: !1362, line: 515, baseType: !197, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1415, file: !1362, line: 516, baseType: !197, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1415, file: !1362, line: 517, baseType: !197, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1415, file: !1362, line: 518, baseType: !197, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1415, file: !1362, line: 519, baseType: !197, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1415, file: !1362, line: 526, baseType: !779, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1415, file: !1362, line: 527, baseType: !197, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1362, line: 528, baseType: !5, size: 32, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1415, file: !1362, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1415, file: !1362, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1415, file: !1362, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1415, file: !1362, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1415, file: !1362, line: 563, baseType: !1431, size: 512, offset: 704)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1432)
!1432 = !{!1433, !1441, !1442, !1447, !1490, !1493, !1494, !1495}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1431, file: !18, line: 119, baseType: !1434, size: 256)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1435, line: 9, size: 256, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1434, file: !1435, line: 10, baseType: !762, size: 192, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1434, file: !1435, line: 11, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1440, line: 29, baseType: !779)
!1440 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1431, file: !18, line: 120, baseType: !1439, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1431, file: !18, line: 121, baseType: !1443, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!17, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1431, file: !18, line: 122, baseType: !1448, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1450)
!1450 = !{!1451, !1471, !1472, !1475, !1480, !1481, !1485, !1489}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1449, file: !18, line: 160, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1453, file: !18, line: 215, baseType: !782)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1453, file: !18, line: 216, baseType: !5, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1453, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1453, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1453, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1453, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1453, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1453, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1453, file: !18, line: 233, baseType: !1439, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1453, file: !18, line: 234, baseType: !1446, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1453, file: !18, line: 235, baseType: !1439, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1453, file: !18, line: 236, baseType: !1446, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1453, file: !18, line: 237, baseType: !1468, size: 4096, offset: 512)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 4096, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 8)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1449, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1449, file: !18, line: 162, baseType: !1473, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !195, line: 27, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !315, line: 96, baseType: !196)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1449, file: !18, line: 163, baseType: !1476, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !394, line: 276, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !394, line: 276, size: 32, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1477, file: !394, line: 276, baseType: !398, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1449, file: !18, line: 164, baseType: !1446, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1449, file: !18, line: 165, baseType: !1482, size: 128, offset: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1435, line: 14, size: 128, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1482, file: !1435, line: 15, baseType: !754, size: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1449, file: !18, line: 166, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1439}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1449, file: !18, line: 167, baseType: !1439, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1431, file: !18, line: 123, baseType: !1491, size: 8, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !191, line: 17, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !193, line: 21, baseType: !426)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1431, file: !18, line: 124, baseType: !1491, size: 8, offset: 456)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1431, file: !18, line: 125, baseType: !1491, size: 8, offset: 464)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1431, file: !18, line: 126, baseType: !1491, size: 8, offset: 472)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1415, file: !1362, line: 572, baseType: !1431, size: 512, offset: 1216)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1415, file: !1362, line: 580, baseType: !1498, size: 64, offset: 1728)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1361, file: !1362, line: 721, baseType: !5, size: 32, offset: 3584)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1361, file: !1362, line: 722, baseType: !196, size: 32, offset: 3616)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1361, file: !1362, line: 723, baseType: !1502, size: 64, offset: 3648)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1505, line: 17, baseType: !1506)
!1505 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1505, line: 17, size: 64, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1506, file: !1505, line: 17, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !1510)
!1510 = !{!1511}
!1511 = !DISubrange(count: 1)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1361, file: !1362, line: 724, baseType: !1504, size: 64, offset: 3712)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1361, file: !1362, line: 749, baseType: !1514, offset: 3776)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1362, line: 290, elements: !255)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1361, file: !1362, line: 751, baseType: !228, size: 128, offset: 3776)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1361, file: !1362, line: 757, baseType: !1124, size: 64, offset: 3904)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1361, file: !1362, line: 758, baseType: !1124, size: 64, offset: 3968)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1361, file: !1362, line: 761, baseType: !1519, size: 320, offset: 4032)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1301, line: 34, size: 320, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1519, file: !1301, line: 35, baseType: !197, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1519, file: !1301, line: 36, baseType: !1523, size: 256, offset: 64)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 256, elements: !1305)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1361, file: !1362, line: 766, baseType: !196, size: 32, offset: 4352)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1361, file: !1362, line: 767, baseType: !196, size: 32, offset: 4384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1361, file: !1362, line: 768, baseType: !196, size: 32, offset: 4416)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1361, file: !1362, line: 770, baseType: !196, size: 32, offset: 4448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1361, file: !1362, line: 772, baseType: !202, size: 64, offset: 4480)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1361, file: !1362, line: 775, baseType: !5, size: 32, offset: 4544)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1361, file: !1362, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1361, file: !1362, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1361, file: !1362, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1361, file: !1362, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1361, file: !1362, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1361, file: !1362, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1361, file: !1362, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1361, file: !1362, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1361, file: !1362, line: 831, baseType: !202, size: 64, offset: 4672)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1361, file: !1362, line: 833, baseType: !1540, size: 384, offset: 4736)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1541)
!1541 = !{!1542, !1547}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1540, file: !23, line: 26, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!200, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !23, line: 27, baseType: !1548, size: 320, offset: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1540, file: !23, line: 27, size: 320, elements: !1549)
!1549 = !{!1550, !1560, !1587}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1548, file: !23, line: 36, baseType: !1551, size: 320)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !23, line: 29, size: 320, elements: !1552)
!1552 = !{!1553, !1555, !1556, !1557, !1558, !1559}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1551, file: !23, line: 30, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1551, file: !23, line: 31, baseType: !190, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1551, file: !23, line: 32, baseType: !190, size: 32, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1551, file: !23, line: 33, baseType: !190, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1551, file: !23, line: 34, baseType: !197, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1551, file: !23, line: 35, baseType: !1554, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1548, file: !23, line: 46, baseType: !1561, size: 192)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !23, line: 38, size: 192, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1586}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1561, file: !23, line: 39, baseType: !1473, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1561, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !23, line: 41, baseType: !1566, size: 64, offset: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !23, line: 41, size: 64, elements: !1567)
!1567 = !{!1568, !1576}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1566, file: !23, line: 42, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1571, line: 7, size: 128, elements: !1572)
!1571 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1570, file: !1571, line: 8, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !315, line: 93, baseType: !532)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1570, file: !1571, line: 9, baseType: !532, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1566, file: !23, line: 43, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1579, line: 7, size: 64, elements: !1580)
!1579 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1585}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1578, file: !1579, line: 8, baseType: !1582, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1579, line: 5, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !191, line: 20, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !193, line: 26, baseType: !196)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1578, file: !1579, line: 9, baseType: !1583, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1561, file: !23, line: 45, baseType: !197, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1548, file: !23, line: 54, baseType: !1588, size: 256)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !23, line: 48, size: 256, elements: !1589)
!1589 = !{!1590, !1593, !1594, !1595, !1596}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1588, file: !23, line: 49, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1588, file: !23, line: 50, baseType: !196, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1588, file: !23, line: 51, baseType: !196, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1588, file: !23, line: 52, baseType: !202, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1588, file: !23, line: 53, baseType: !202, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1361, file: !1362, line: 835, baseType: !1598, size: 32, offset: 5120)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !195, line: 22, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !315, line: 28, baseType: !196)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1361, file: !1362, line: 836, baseType: !1598, size: 32, offset: 5152)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1361, file: !1362, line: 840, baseType: !202, size: 64, offset: 5184)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1361, file: !1362, line: 849, baseType: !1360, size: 64, offset: 5248)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1361, file: !1362, line: 852, baseType: !1360, size: 64, offset: 5312)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1361, file: !1362, line: 857, baseType: !228, size: 128, offset: 5376)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1361, file: !1362, line: 858, baseType: !228, size: 128, offset: 5504)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1361, file: !1362, line: 859, baseType: !1360, size: 64, offset: 5632)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1361, file: !1362, line: 867, baseType: !228, size: 128, offset: 5696)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1361, file: !1362, line: 868, baseType: !228, size: 128, offset: 5824)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1361, file: !1362, line: 871, baseType: !1610, size: 64, offset: 5952)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1618, !1619, !1620, !1621}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1611, file: !51, line: 61, baseType: !987, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1611, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1611, file: !51, line: 63, baseType: !241, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1611, file: !51, line: 65, baseType: !1617, size: 256, offset: 64)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !1305)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1611, file: !51, line: 66, baseType: !637, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1611, file: !51, line: 68, baseType: !918, size: 128, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1611, file: !51, line: 69, baseType: !371, size: 128, align: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1611, file: !51, line: 70, baseType: !1622, size: 128, offset: 640)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, size: 128, elements: !1510)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1623, file: !51, line: 55, baseType: !196, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1623, file: !51, line: 56, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1361, file: !1362, line: 872, baseType: !1630, size: 512, offset: 6016)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 512, elements: !1305)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1361, file: !1362, line: 873, baseType: !228, size: 128, offset: 6528)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1361, file: !1362, line: 874, baseType: !228, size: 128, offset: 6656)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1361, file: !1362, line: 876, baseType: !1634, size: 64, offset: 6784)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1636, line: 26, size: 192, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1635, file: !1636, line: 27, baseType: !5, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1635, file: !1636, line: 28, baseType: !1640, size: 128, offset: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1641, line: 43, size: 128, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !1641, line: 44, baseType: !782)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1640, file: !1641, line: 45, baseType: !228, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1361, file: !1362, line: 879, baseType: !707, size: 64, offset: 6848)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1361, file: !1362, line: 882, baseType: !707, size: 64, offset: 6912)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1361, file: !1362, line: 884, baseType: !197, size: 64, offset: 6976)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1361, file: !1362, line: 885, baseType: !197, size: 64, offset: 7040)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1361, file: !1362, line: 890, baseType: !197, size: 64, offset: 7104)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1361, file: !1362, line: 891, baseType: !1651, size: 128, offset: 7168)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1362, line: 242, size: 128, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1651, file: !1362, line: 244, baseType: !197, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1651, file: !1362, line: 245, baseType: !197, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1651, file: !1362, line: 246, baseType: !782, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1361, file: !1362, line: 900, baseType: !202, size: 64, offset: 7296)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1361, file: !1362, line: 901, baseType: !202, size: 64, offset: 7360)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1361, file: !1362, line: 904, baseType: !197, size: 64, offset: 7424)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1361, file: !1362, line: 907, baseType: !197, size: 64, offset: 7488)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1361, file: !1362, line: 910, baseType: !202, size: 64, offset: 7552)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1361, file: !1362, line: 911, baseType: !202, size: 64, offset: 7616)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1361, file: !1362, line: 914, baseType: !1663, size: 640, offset: 7680)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1664, line: 123, size: 640, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1672, !1673}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1663, file: !1664, line: 124, baseType: !1667, size: 576)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1668, size: 576, elements: !283)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1664, line: 108, size: 192, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1668, file: !1664, line: 109, baseType: !197, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1668, file: !1664, line: 110, baseType: !1482, size: 128, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1663, file: !1664, line: 125, baseType: !5, size: 32, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1663, file: !1664, line: 126, baseType: !5, size: 32, offset: 608)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1361, file: !1362, line: 917, baseType: !1675, size: 192, offset: 8320)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1664, line: 134, size: 192, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1675, file: !1664, line: 135, baseType: !371, size: 128, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1675, file: !1664, line: 136, baseType: !5, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1361, file: !1362, line: 923, baseType: !1680, size: 64, offset: 8512)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1683, line: 111, size: 1280, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1704, !1705, !1706, !1707, !1708, !1709, !1816, !1817, !1818, !1819, !1820, !1823, !1833}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1682, file: !1683, line: 112, baseType: !749, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1682, file: !1683, line: 120, baseType: !434, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1682, file: !1683, line: 121, baseType: !442, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1682, file: !1683, line: 122, baseType: !434, size: 32, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1682, file: !1683, line: 123, baseType: !442, size: 32, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1682, file: !1683, line: 124, baseType: !434, size: 32, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1682, file: !1683, line: 125, baseType: !442, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1682, file: !1683, line: 126, baseType: !434, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1682, file: !1683, line: 127, baseType: !442, size: 32, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1682, file: !1683, line: 128, baseType: !5, size: 32, offset: 288)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1682, file: !1683, line: 129, baseType: !1696, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1697, line: 26, baseType: !1698)
!1697 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1697, line: 24, size: 64, elements: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1698, file: !1697, line: 25, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DISubrange(count: 2)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1682, file: !1683, line: 130, baseType: !1696, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1682, file: !1683, line: 131, baseType: !1696, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1682, file: !1683, line: 132, baseType: !1696, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1682, file: !1683, line: 133, baseType: !1696, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1682, file: !1683, line: 135, baseType: !426, size: 8, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1682, file: !1683, line: 137, baseType: !1710, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1712, line: 189, size: 1664, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !{!1714, !1715, !1718, !1723, !1724, !1727, !1728, !1733, !1734, !1735, !1736, !1738, !1739, !1740, !1741, !1742, !1780, !1801}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1711, file: !1712, line: 190, baseType: !987, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1711, file: !1712, line: 191, baseType: !1716, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1712, line: 28, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !195, line: 98, baseType: !1583)
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 192, baseType: !1719, size: 192, offset: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 192, size: 192, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1719, file: !1712, line: 193, baseType: !228, size: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1719, file: !1712, line: 194, baseType: !762, size: 192, align: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1711, file: !1712, line: 199, baseType: !769, size: 256, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1711, file: !1712, line: 200, baseType: !1725, size: 64, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1712, line: 200, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1711, file: !1712, line: 201, baseType: !201, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 202, baseType: !1729, size: 64, offset: 640)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 202, size: 64, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1729, file: !1712, line: 203, baseType: !538, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1729, file: !1712, line: 204, baseType: !538, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1711, file: !1712, line: 206, baseType: !538, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1711, file: !1712, line: 207, baseType: !434, size: 32, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1711, file: !1712, line: 208, baseType: !442, size: 32, offset: 800)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1711, file: !1712, line: 209, baseType: !1737, size: 32, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1712, line: 31, baseType: !558)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1711, file: !1712, line: 210, baseType: !323, size: 16, offset: 864)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1711, file: !1712, line: 211, baseType: !323, size: 16, offset: 880)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1711, file: !1712, line: 215, baseType: !1349, size: 16, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1712, line: 222, baseType: !202, size: 64, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 239, baseType: !1743, size: 320, offset: 1024)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 239, size: 320, elements: !1744)
!1744 = !{!1745, !1772}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1743, file: !1712, line: 240, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1712, line: 108, size: 320, elements: !1747)
!1747 = !{!1748, !1749, !1761, !1764, !1771}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1746, file: !1712, line: 110, baseType: !202, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !1712, line: 111, baseType: !1750, size: 64, offset: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !1712, line: 111, size: 64, elements: !1751)
!1751 = !{!1752, !1760}
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !1712, line: 112, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !1712, line: 112, size: 64, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1753, file: !1712, line: 114, baseType: !861, size: 16)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1753, file: !1712, line: 115, baseType: !1757, size: 48, offset: 16)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 6)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1750, file: !1712, line: 121, baseType: !202, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1746, file: !1712, line: 123, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1712, line: 96, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1746, file: !1712, line: 124, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1712, line: 102, size: 192, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1766, file: !1712, line: 103, baseType: !371, size: 128, align: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1766, file: !1712, line: 104, baseType: !987, size: 32, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1766, file: !1712, line: 105, baseType: !489, size: 8, offset: 160)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1746, file: !1712, line: 125, baseType: !224, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1712, line: 241, baseType: !1773, size: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !1712, line: 241, size: 320, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1773, file: !1712, line: 242, baseType: !202, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1773, file: !1712, line: 243, baseType: !202, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1773, file: !1712, line: 244, baseType: !1762, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1773, file: !1712, line: 245, baseType: !1765, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1773, file: !1712, line: 246, baseType: !282, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 254, baseType: !1781, size: 256, offset: 1344)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 254, size: 256, elements: !1782)
!1782 = !{!1783, !1789}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1781, file: !1712, line: 255, baseType: !1784, size: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1712, line: 128, size: 256, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1784, file: !1712, line: 129, baseType: !201, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1784, file: !1712, line: 130, baseType: !1788, size: 256)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !1305)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1712, line: 256, baseType: !1790, size: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !1712, line: 256, size: 256, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1790, file: !1712, line: 258, baseType: !228, size: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1790, file: !1712, line: 259, baseType: !1794, size: 128, offset: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1795, line: 22, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1800}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1794, file: !1795, line: 23, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1795, line: 23, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1794, file: !1795, line: 24, baseType: !202, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1711, file: !1712, line: 274, baseType: !1802, size: 64, offset: 1600)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1712, line: 170, size: 192, elements: !1804)
!1804 = !{!1805, !1814, !1815}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1803, file: !1712, line: 171, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1712, line: 165, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!196, !1710, !1810, !1812, !1710}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1803, file: !1712, line: 172, baseType: !1710, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1803, file: !1712, line: 173, baseType: !1762, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1682, file: !1683, line: 138, baseType: !1710, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1682, file: !1683, line: 139, baseType: !1710, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1682, file: !1683, line: 140, baseType: !1710, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1682, file: !1683, line: 145, baseType: !982, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1682, file: !1683, line: 146, baseType: !1821, size: 64, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !435, line: 18, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1682, file: !1683, line: 147, baseType: !1824, size: 64, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1683, line: 25, size: 64, elements: !1826)
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1825, file: !1683, line: 26, baseType: !749, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1825, file: !1683, line: 27, baseType: !196, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1825, file: !1683, line: 28, baseType: !1830, offset: 64)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 149, baseType: !1834, size: 128, offset: 1152)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 149, size: 128, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1834, file: !1683, line: 150, baseType: !196, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1834, file: !1683, line: 151, baseType: !371, size: 128, align: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1361, file: !1362, line: 926, baseType: !1680, size: 64, offset: 8576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1361, file: !1362, line: 929, baseType: !1680, size: 64, offset: 8640)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1361, file: !1362, line: 933, baseType: !1710, size: 64, offset: 8704)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1361, file: !1362, line: 943, baseType: !1842, size: 128, offset: 8768)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 16)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1361, file: !1362, line: 945, baseType: !1846, size: 64, offset: 8896)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1362, line: 49, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1361, file: !1362, line: 956, baseType: !1849, size: 64, offset: 8960)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1362, line: 45, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1361, file: !1362, line: 959, baseType: !1852, size: 64, offset: 9024)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1362, line: 959, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1361, file: !1362, line: 962, baseType: !1855, size: 64, offset: 9088)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1362, line: 66, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1361, file: !1362, line: 966, baseType: !1858, size: 64, offset: 9152)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1362, line: 50, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1361, file: !1362, line: 969, baseType: !1861, size: 64, offset: 9216)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1863, line: 82, size: 7296, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1900, !1909, !1910, !1912, !1913, !1914, !1917, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1947, !1948, !1955, !1956, !1957, !1958, !1959, !1960}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1862, file: !1863, line: 83, baseType: !987, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1862, file: !1863, line: 84, baseType: !749, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1862, file: !1863, line: 85, baseType: !196, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1862, file: !1863, line: 86, baseType: !228, size: 128, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1862, file: !1863, line: 88, baseType: !918, size: 128, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1862, file: !1863, line: 91, baseType: !1360, size: 64, offset: 384)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1862, file: !1863, line: 94, baseType: !1872, size: 192, offset: 448)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1873, line: 30, size: 192, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1872, file: !1873, line: 31, baseType: !228, size: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1872, file: !1873, line: 32, baseType: !1877, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1878, line: 25, baseType: !1879)
!1878 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1878, line: 23, size: 64, elements: !1880)
!1880 = !{!1881}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1879, file: !1878, line: 24, baseType: !1509, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1862, file: !1863, line: 97, baseType: !637, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1862, file: !1863, line: 100, baseType: !196, size: 32, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1862, file: !1863, line: 106, baseType: !196, size: 32, offset: 736)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1862, file: !1863, line: 107, baseType: !1360, size: 64, offset: 768)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1862, file: !1863, line: 110, baseType: !196, size: 32, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !1863, line: 111, baseType: !5, size: 32, offset: 864)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1862, file: !1863, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1862, file: !1863, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1862, file: !1863, line: 128, baseType: !196, size: 32, offset: 928)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1862, file: !1863, line: 129, baseType: !228, size: 128, offset: 960)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1862, file: !1863, line: 132, baseType: !1431, size: 512, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1862, file: !1863, line: 133, baseType: !1439, size: 64, offset: 1600)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1862, file: !1863, line: 140, baseType: !1895, size: 256, offset: 1664)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 256, elements: !1702)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1863, line: 38, size: 128, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1896, file: !1863, line: 39, baseType: !197, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1896, file: !1863, line: 40, baseType: !197, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1862, file: !1863, line: 146, baseType: !1901, size: 192, offset: 1920)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1863, line: 66, size: 192, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1901, file: !1863, line: 67, baseType: !1904, size: 192)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1863, line: 47, size: 192, elements: !1905)
!1905 = !{!1906, !1907, !1908}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1904, file: !1863, line: 48, baseType: !775, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1904, file: !1863, line: 49, baseType: !775, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1904, file: !1863, line: 50, baseType: !775, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1862, file: !1863, line: 150, baseType: !1663, size: 640, offset: 2112)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1862, file: !1863, line: 153, baseType: !1911, size: 256, offset: 2752)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 256, elements: !1305)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1862, file: !1863, line: 159, baseType: !1610, size: 64, offset: 3008)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1862, file: !1863, line: 162, baseType: !196, size: 32, offset: 3072)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1862, file: !1863, line: 164, baseType: !1915, size: 64, offset: 3136)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1863, line: 164, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1862, file: !1863, line: 175, baseType: !1918, size: 32, offset: 3200)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !394, line: 805, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 798, size: 32, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1919, file: !394, line: 803, baseType: !393, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1919, file: !394, line: 804, baseType: !241, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1862, file: !1863, line: 176, baseType: !197, size: 64, offset: 3264)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1862, file: !1863, line: 176, baseType: !197, size: 64, offset: 3328)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1862, file: !1863, line: 176, baseType: !197, size: 64, offset: 3392)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1862, file: !1863, line: 176, baseType: !197, size: 64, offset: 3456)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1862, file: !1863, line: 177, baseType: !197, size: 64, offset: 3520)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1862, file: !1863, line: 178, baseType: !197, size: 64, offset: 3584)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1862, file: !1863, line: 179, baseType: !1651, size: 128, offset: 3648)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1862, file: !1863, line: 180, baseType: !202, size: 64, offset: 3776)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1862, file: !1863, line: 180, baseType: !202, size: 64, offset: 3840)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1862, file: !1863, line: 180, baseType: !202, size: 64, offset: 3904)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1862, file: !1863, line: 180, baseType: !202, size: 64, offset: 3968)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1862, file: !1863, line: 181, baseType: !202, size: 64, offset: 4032)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1862, file: !1863, line: 181, baseType: !202, size: 64, offset: 4096)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1862, file: !1863, line: 181, baseType: !202, size: 64, offset: 4160)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1862, file: !1863, line: 181, baseType: !202, size: 64, offset: 4224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1862, file: !1863, line: 182, baseType: !202, size: 64, offset: 4288)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1862, file: !1863, line: 182, baseType: !202, size: 64, offset: 4352)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1862, file: !1863, line: 182, baseType: !202, size: 64, offset: 4416)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1862, file: !1863, line: 182, baseType: !202, size: 64, offset: 4480)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1862, file: !1863, line: 183, baseType: !202, size: 64, offset: 4544)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1862, file: !1863, line: 183, baseType: !202, size: 64, offset: 4608)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1862, file: !1863, line: 184, baseType: !1945, offset: 4672)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1946, line: 12, elements: !255)
!1946 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1862, file: !1863, line: 192, baseType: !199, size: 64, offset: 4672)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1862, file: !1863, line: 203, baseType: !1949, size: 2048, offset: 4736)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 2048, elements: !1843)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1951, line: 43, size: 128, elements: !1952)
!1951 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1950, file: !1951, line: 44, baseType: !330, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1950, file: !1951, line: 45, baseType: !330, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1862, file: !1863, line: 220, baseType: !489, size: 8, offset: 6784)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1862, file: !1863, line: 221, baseType: !1349, size: 16, offset: 6800)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1862, file: !1863, line: 222, baseType: !1349, size: 16, offset: 6816)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1862, file: !1863, line: 224, baseType: !1124, size: 64, offset: 6848)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1862, file: !1863, line: 227, baseType: !911, size: 192, offset: 6912)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1862, file: !1863, line: 233, baseType: !911, size: 192, offset: 7104)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1361, file: !1362, line: 970, baseType: !1962, size: 64, offset: 9280)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1863, line: 20, size: 16576, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1963, file: !1863, line: 21, baseType: !241)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1963, file: !1863, line: 22, baseType: !987, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1963, file: !1863, line: 23, baseType: !918, size: 128, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1963, file: !1863, line: 24, baseType: !1969, size: 16384, offset: 192)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 16384, elements: !287)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1873, line: 49, size: 256, elements: !1971)
!1971 = !{!1972}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1970, file: !1873, line: 50, baseType: !1973, size: 256)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1873, line: 35, size: 256, elements: !1974)
!1974 = !{!1975, !1982, !1983, !1989}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1973, file: !1873, line: 37, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1977, line: 19, baseType: !1978)
!1977 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1977, line: 18, baseType: !1980)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !196}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1973, file: !1873, line: 38, baseType: !202, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1973, file: !1873, line: 44, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1977, line: 22, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1977, line: 21, baseType: !1987)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1973, file: !1873, line: 46, baseType: !1877, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1361, file: !1362, line: 971, baseType: !1877, size: 64, offset: 9344)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1361, file: !1362, line: 972, baseType: !1877, size: 64, offset: 9408)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1361, file: !1362, line: 974, baseType: !1877, size: 64, offset: 9472)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1361, file: !1362, line: 975, baseType: !1872, size: 192, offset: 9536)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1361, file: !1362, line: 976, baseType: !202, size: 64, offset: 9728)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1361, file: !1362, line: 977, baseType: !328, size: 64, offset: 9792)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1361, file: !1362, line: 978, baseType: !5, size: 32, offset: 9856)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1361, file: !1362, line: 980, baseType: !374, size: 64, offset: 9920)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1361, file: !1362, line: 989, baseType: !1999, size: 128, offset: 9984)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2000, line: 35, size: 128, elements: !2001)
!2000 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1999, file: !2000, line: 36, baseType: !196, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1999, file: !2000, line: 37, baseType: !749, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1999, file: !2000, line: 38, baseType: !2005, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2000, line: 23, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1361, file: !1362, line: 992, baseType: !197, size: 64, offset: 10112)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1361, file: !1362, line: 993, baseType: !197, size: 64, offset: 10176)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1361, file: !1362, line: 996, baseType: !241, offset: 10240)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1361, file: !1362, line: 999, baseType: !782, offset: 10240)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1361, file: !1362, line: 1001, baseType: !2012, size: 64, offset: 10240)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1362, line: 636, size: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2012, file: !1362, line: 637, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1361, file: !1362, line: 1005, baseType: !754, size: 128, offset: 10304)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1361, file: !1362, line: 1007, baseType: !1360, size: 64, offset: 10432)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1361, file: !1362, line: 1009, baseType: !2019, size: 64, offset: 10496)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1362, line: 1009, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1361, file: !1362, line: 1043, baseType: !201, size: 64, offset: 10560)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1361, file: !1362, line: 1046, baseType: !2023, size: 64, offset: 10624)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1362, line: 41, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1361, file: !1362, line: 1050, baseType: !2026, size: 64, offset: 10688)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1362, line: 42, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1361, file: !1362, line: 1054, baseType: !2029, size: 64, offset: 10752)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1362, line: 55, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1361, file: !1362, line: 1056, baseType: !2032, size: 64, offset: 10816)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1362, line: 40, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1361, file: !1362, line: 1058, baseType: !2035, size: 64, offset: 10880)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2037, line: 99, size: 704, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2064, !2065}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2036, file: !2037, line: 100, baseType: !773, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2036, file: !2037, line: 101, baseType: !749, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2036, file: !2037, line: 102, baseType: !749, size: 32, offset: 96)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !2037, line: 105, baseType: !241, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2036, file: !2037, line: 107, baseType: !323, size: 16, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2036, file: !2037, line: 109, baseType: !741, size: 128, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2036, file: !2037, line: 110, baseType: !2046, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2037, line: 73, size: 448, elements: !2048)
!2048 = !{!2049, !2052, !2053, !2058, !2063}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2047, file: !2037, line: 74, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2037, line: 74, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2047, file: !2037, line: 75, baseType: !2035, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !2037, line: 83, baseType: !2054, size: 128, offset: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2047, file: !2037, line: 83, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2054, file: !2037, line: 84, baseType: !228, size: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2054, file: !2037, line: 85, baseType: !1085, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !2037, line: 87, baseType: !2059, size: 128, offset: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2047, file: !2037, line: 87, size: 128, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2059, file: !2037, line: 88, baseType: !641, size: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2059, file: !2037, line: 89, baseType: !371, size: 128, align: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2047, file: !2037, line: 92, baseType: !5, size: 32, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2036, file: !2037, line: 111, baseType: !637, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2036, file: !2037, line: 113, baseType: !2066, size: 256, offset: 448)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2067, line: 102, size: 256, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2066, file: !2067, line: 103, baseType: !773, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2066, file: !2067, line: 104, baseType: !228, size: 128, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2066, file: !2067, line: 105, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2067, line: 21, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1361, file: !1362, line: 1061, baseType: !2078, size: 64, offset: 10944)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1362, line: 43, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1361, file: !1362, line: 1064, baseType: !202, size: 64, offset: 11008)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1361, file: !1362, line: 1065, baseType: !2082, size: 64, offset: 11072)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1873, line: 14, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1873, line: 12, size: 384, elements: !2085)
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !1873, line: 13, baseType: !2087, size: 384)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !1873, line: 13, size: 384, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2087, file: !1873, line: 13, baseType: !196, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2087, file: !1873, line: 13, baseType: !196, size: 32, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2087, file: !1873, line: 13, baseType: !196, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2087, file: !1873, line: 13, baseType: !2093, size: 256, offset: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2094, line: 32, size: 256, elements: !2095)
!2094 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096, !2101, !2114, !2120, !2129, !2149, !2154}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2093, file: !2094, line: 37, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 34, size: 64, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2097, file: !2094, line: 35, baseType: !1599, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2097, file: !2094, line: 36, baseType: !440, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2093, file: !2094, line: 45, baseType: !2102, size: 192)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 40, size: 192, elements: !2103)
!2103 = !{!2104, !2106, !2107, !2113}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2102, file: !2094, line: 41, baseType: !2105, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !315, line: 95, baseType: !196)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2102, file: !2094, line: 42, baseType: !196, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2102, file: !2094, line: 43, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2094, line: 11, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2094, line: 8, size: 64, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2109, file: !2094, line: 9, baseType: !196, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2109, file: !2094, line: 10, baseType: !201, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2102, file: !2094, line: 44, baseType: !196, size: 32, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2093, file: !2094, line: 52, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 48, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2115, file: !2094, line: 49, baseType: !1599, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2115, file: !2094, line: 50, baseType: !440, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2115, file: !2094, line: 51, baseType: !2108, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2093, file: !2094, line: 61, baseType: !2121, size: 256)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 55, size: 256, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2128}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2121, file: !2094, line: 56, baseType: !1599, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2121, file: !2094, line: 57, baseType: !440, size: 32, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2121, file: !2094, line: 58, baseType: !196, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2121, file: !2094, line: 59, baseType: !2127, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !315, line: 94, baseType: !316)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2121, file: !2094, line: 60, baseType: !2127, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2093, file: !2094, line: 95, baseType: !2130, size: 256)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 64, size: 256, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2130, file: !2094, line: 65, baseType: !201, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2094, line: 77, baseType: !2134, size: 192, offset: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !2094, line: 77, size: 192, elements: !2135)
!2135 = !{!2136, !2137, !2144}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2134, file: !2094, line: 82, baseType: !1349, size: 16)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2134, file: !2094, line: 88, baseType: !2138, size: 192)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2094, line: 84, size: 192, elements: !2139)
!2139 = !{!2140, !2142, !2143}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2138, file: !2094, line: 85, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !1469)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2138, file: !2094, line: 86, baseType: !201, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2138, file: !2094, line: 87, baseType: !201, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2134, file: !2094, line: 93, baseType: !2145, size: 96)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2094, line: 90, size: 96, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2145, file: !2094, line: 91, baseType: !2141, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2145, file: !2094, line: 92, baseType: !192, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2093, file: !2094, line: 101, baseType: !2150, size: 128)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 98, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2150, file: !2094, line: 99, baseType: !200, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2150, file: !2094, line: 100, baseType: !196, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2093, file: !2094, line: 108, baseType: !2155, size: 128)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2094, line: 104, size: 128, elements: !2156)
!2156 = !{!2157, !2158, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2155, file: !2094, line: 105, baseType: !201, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2155, file: !2094, line: 106, baseType: !196, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2155, file: !2094, line: 107, baseType: !5, size: 32, offset: 96)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1361, file: !1362, line: 1067, baseType: !1945, offset: 11136)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1361, file: !1362, line: 1099, baseType: !2162, size: 64, offset: 11136)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1362, line: 56, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1361, file: !1362, line: 1103, baseType: !228, size: 128, offset: 11200)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1361, file: !1362, line: 1104, baseType: !2166, size: 64, offset: 11328)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1362, line: 46, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1361, file: !1362, line: 1105, baseType: !911, size: 192, offset: 11392)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1361, file: !1362, line: 1106, baseType: !5, size: 32, offset: 11584)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1361, file: !1362, line: 1109, baseType: !2171, size: 128, offset: 11648)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2172, size: 128, elements: !1702)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1362, line: 51, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1361, file: !1362, line: 1110, baseType: !911, size: 192, offset: 11776)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1361, file: !1362, line: 1111, baseType: !228, size: 128, offset: 11968)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1361, file: !1362, line: 1173, baseType: !2177, size: 64, offset: 12096)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2179, line: 62, size: 256, align: 256, elements: !2180)
!2179 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183, !2188}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2178, file: !2179, line: 75, baseType: !192, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2178, file: !2179, line: 90, baseType: !192, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2178, file: !2179, line: 124, baseType: !2184, size: 64, offset: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2178, file: !2179, line: 109, size: 64, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2184, file: !2179, line: 110, baseType: !198, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2184, file: !2179, line: 112, baseType: !198, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2179, line: 144, baseType: !192, size: 32, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1361, file: !1362, line: 1174, baseType: !190, size: 32, offset: 12160)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1361, file: !1362, line: 1179, baseType: !202, size: 64, offset: 12224)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1361, file: !1362, line: 1182, baseType: !2192, size: 128, offset: 12288)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1301, line: 76, size: 128, elements: !2193)
!2193 = !{!2194, !2199, !2200}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2192, file: !1301, line: 85, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2196, line: 7, size: 64, elements: !2197)
!2196 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !{!2198}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2195, file: !2196, line: 12, baseType: !1506, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2192, file: !1301, line: 88, baseType: !489, size: 8, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2192, file: !1301, line: 95, baseType: !489, size: 8, offset: 72)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1362, line: 1184, baseType: !2202, size: 128, offset: 12416)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1362, line: 1184, size: 128, elements: !2203)
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2202, file: !1362, line: 1185, baseType: !987, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2202, file: !1362, line: 1186, baseType: !371, size: 128, align: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1361, file: !1362, line: 1190, baseType: !906, size: 64, offset: 12544)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1361, file: !1362, line: 1192, baseType: !2208, size: 128, offset: 12608)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1301, line: 64, size: 128, elements: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2208, file: !1301, line: 65, baseType: !723, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2208, file: !1301, line: 67, baseType: !192, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2208, file: !1301, line: 68, baseType: !192, size: 32, offset: 96)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1361, file: !1362, line: 1206, baseType: !196, size: 32, offset: 12736)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1361, file: !1362, line: 1207, baseType: !196, size: 32, offset: 12768)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1361, file: !1362, line: 1209, baseType: !202, size: 64, offset: 12800)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1361, file: !1362, line: 1219, baseType: !197, size: 64, offset: 12864)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1361, file: !1362, line: 1220, baseType: !197, size: 64, offset: 12928)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1361, file: !1362, line: 1317, baseType: !196, size: 32, offset: 12992)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1361, file: !1362, line: 1319, baseType: !1360, size: 64, offset: 13056)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1361, file: !1362, line: 1322, baseType: !2221, size: 64, offset: 13120)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2223, line: 56, size: 512, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2233}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2222, file: !2223, line: 57, baseType: !2221, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2222, file: !2223, line: 58, baseType: !201, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2222, file: !2223, line: 59, baseType: !202, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2223, line: 60, baseType: !202, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2222, file: !2223, line: 61, baseType: !822, size: 64, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2222, file: !2223, line: 62, baseType: !5, size: 32, offset: 320)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2222, file: !2223, line: 63, baseType: !2232, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !195, line: 153, baseType: !197)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2222, file: !2223, line: 64, baseType: !2234, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1361, file: !1362, line: 1326, baseType: !987, size: 32, offset: 13184)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1361, file: !1362, line: 1342, baseType: !201, size: 64, offset: 13248)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1361, file: !1362, line: 1343, baseType: !198, size: 64, offset: 13312)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1361, file: !1362, line: 1344, baseType: !197, size: 64, offset: 13376)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1361, file: !1362, line: 1345, baseType: !198, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1361, file: !1362, line: 1346, baseType: !198, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1361, file: !1362, line: 1347, baseType: !198, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1361, file: !1362, line: 1348, baseType: !371, size: 128, align: 64, offset: 13504)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1361, file: !1362, line: 1358, baseType: !2245, size: 34816, offset: 13824)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2246, line: 485, size: 34816, elements: !2247)
!2246 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2277, !2278, !2279, !2280, !2281, !2282, !2285, !2286, !2287}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2245, file: !2246, line: 487, baseType: !2249, size: 192)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2250, size: 192, elements: !283)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2251, line: 16, size: 64, elements: !2252)
!2251 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2250, file: !2251, line: 17, baseType: !861, size: 16)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2250, file: !2251, line: 18, baseType: !861, size: 16, offset: 16)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2250, file: !2251, line: 19, baseType: !861, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2250, file: !2251, line: 19, baseType: !861, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2250, file: !2251, line: 19, baseType: !861, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2250, file: !2251, line: 19, baseType: !861, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2250, file: !2251, line: 19, baseType: !861, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2250, file: !2251, line: 20, baseType: !861, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2250, file: !2251, line: 20, baseType: !861, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2250, file: !2251, line: 20, baseType: !861, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2250, file: !2251, line: 20, baseType: !861, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2250, file: !2251, line: 20, baseType: !861, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2250, file: !2251, line: 20, baseType: !861, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2245, file: !2246, line: 491, baseType: !202, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2245, file: !2246, line: 495, baseType: !323, size: 16, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2245, file: !2246, line: 496, baseType: !323, size: 16, offset: 272)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2245, file: !2246, line: 497, baseType: !323, size: 16, offset: 288)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2245, file: !2246, line: 498, baseType: !323, size: 16, offset: 304)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2245, file: !2246, line: 502, baseType: !202, size: 64, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2245, file: !2246, line: 503, baseType: !202, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2245, file: !2246, line: 514, baseType: !2274, size: 256, offset: 448)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, size: 256, elements: !1305)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2246, line: 483, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2245, file: !2246, line: 516, baseType: !202, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2245, file: !2246, line: 518, baseType: !202, size: 64, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2245, file: !2246, line: 520, baseType: !202, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2245, file: !2246, line: 521, baseType: !202, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2245, file: !2246, line: 522, baseType: !202, size: 64, offset: 960)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2245, file: !2246, line: 528, baseType: !2283, size: 64, offset: 1024)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2246, line: 10, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2245, file: !2246, line: 535, baseType: !202, size: 64, offset: 1088)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2245, file: !2246, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2245, file: !2246, line: 540, baseType: !2288, size: 33280, offset: 1536)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2289, line: 317, size: 33280, elements: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2292, !2293}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2288, file: !2289, line: 330, baseType: !5, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2288, file: !2289, line: 337, baseType: !202, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2288, file: !2289, line: 348, baseType: !2294, size: 32768, offset: 512)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2289, line: 304, size: 32768, elements: !2295)
!2295 = !{!2296, !2311, !2350, !2400, !2413}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2294, file: !2289, line: 305, baseType: !2297, size: 896)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2289, line: 12, size: 896, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2310}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2297, file: !2289, line: 13, baseType: !190, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2297, file: !2289, line: 14, baseType: !190, size: 32, offset: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2297, file: !2289, line: 15, baseType: !190, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2297, file: !2289, line: 16, baseType: !190, size: 32, offset: 96)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2297, file: !2289, line: 17, baseType: !190, size: 32, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2297, file: !2289, line: 18, baseType: !190, size: 32, offset: 160)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2297, file: !2289, line: 19, baseType: !190, size: 32, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2297, file: !2289, line: 22, baseType: !2307, size: 640, offset: 224)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 640, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: 20)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2297, file: !2289, line: 25, baseType: !190, size: 32, offset: 864)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2294, file: !2289, line: 306, baseType: !2312, size: 4096, align: 128)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2289, line: 34, size: 4096, align: 128, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2333, !2334, !2335, !2339, !2341, !2345}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2312, file: !2289, line: 35, baseType: !861, size: 16)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2312, file: !2289, line: 36, baseType: !861, size: 16, offset: 16)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2312, file: !2289, line: 37, baseType: !861, size: 16, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2312, file: !2289, line: 38, baseType: !861, size: 16, offset: 48)
!2318 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !2289, line: 39, baseType: !2319, size: 128, offset: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !2289, line: 39, size: 128, elements: !2320)
!2320 = !{!2321, !2326}
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !2289, line: 40, baseType: !2322, size: 128)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !2289, line: 40, size: 128, elements: !2323)
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2322, file: !2289, line: 41, baseType: !197, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2322, file: !2289, line: 42, baseType: !197, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !2289, line: 44, baseType: !2327, size: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !2289, line: 44, size: 128, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2332}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2327, file: !2289, line: 45, baseType: !190, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2327, file: !2289, line: 46, baseType: !190, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2327, file: !2289, line: 47, baseType: !190, size: 32, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2327, file: !2289, line: 48, baseType: !190, size: 32, offset: 96)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2312, file: !2289, line: 51, baseType: !190, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2312, file: !2289, line: 52, baseType: !190, size: 32, offset: 224)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2312, file: !2289, line: 55, baseType: !2336, size: 1024, offset: 256)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 1024, elements: !2337)
!2337 = !{!2338}
!2338 = !DISubrange(count: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2312, file: !2289, line: 58, baseType: !2340, size: 2048, offset: 1280)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !287)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2312, file: !2289, line: 60, baseType: !2342, size: 384, offset: 3328)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 384, elements: !2343)
!2343 = !{!2344}
!2344 = !DISubrange(count: 12)
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !2289, line: 62, baseType: !2346, size: 384, offset: 3712)
!2346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !2289, line: 62, size: 384, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2346, file: !2289, line: 63, baseType: !2342, size: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2346, file: !2289, line: 64, baseType: !2342, size: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2294, file: !2289, line: 307, baseType: !2351, size: 1088)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2289, line: 79, size: 1088, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2399}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2351, file: !2289, line: 80, baseType: !190, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2351, file: !2289, line: 81, baseType: !190, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2351, file: !2289, line: 82, baseType: !190, size: 32, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2351, file: !2289, line: 83, baseType: !190, size: 32, offset: 96)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2351, file: !2289, line: 84, baseType: !190, size: 32, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2351, file: !2289, line: 85, baseType: !190, size: 32, offset: 160)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2351, file: !2289, line: 86, baseType: !190, size: 32, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2351, file: !2289, line: 88, baseType: !2307, size: 640, offset: 224)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2351, file: !2289, line: 89, baseType: !1491, size: 8, offset: 864)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2351, file: !2289, line: 90, baseType: !1491, size: 8, offset: 872)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2351, file: !2289, line: 91, baseType: !1491, size: 8, offset: 880)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2351, file: !2289, line: 92, baseType: !1491, size: 8, offset: 888)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2351, file: !2289, line: 93, baseType: !1491, size: 8, offset: 896)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2351, file: !2289, line: 94, baseType: !1491, size: 8, offset: 904)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2351, file: !2289, line: 95, baseType: !2368, size: 64, offset: 960)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2370, line: 11, size: 128, elements: !2371)
!2370 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !{!2372, !2373}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2369, file: !2370, line: 12, baseType: !200, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2369, file: !2370, line: 13, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2376, line: 56, size: 1344, elements: !2377)
!2376 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2375, file: !2376, line: 61, baseType: !202, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2375, file: !2376, line: 62, baseType: !202, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2375, file: !2376, line: 63, baseType: !202, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2375, file: !2376, line: 64, baseType: !202, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2375, file: !2376, line: 65, baseType: !202, size: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2375, file: !2376, line: 66, baseType: !202, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2375, file: !2376, line: 68, baseType: !202, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2375, file: !2376, line: 69, baseType: !202, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2375, file: !2376, line: 70, baseType: !202, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2375, file: !2376, line: 71, baseType: !202, size: 64, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2375, file: !2376, line: 72, baseType: !202, size: 64, offset: 640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2375, file: !2376, line: 73, baseType: !202, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2375, file: !2376, line: 74, baseType: !202, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2375, file: !2376, line: 75, baseType: !202, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2375, file: !2376, line: 76, baseType: !202, size: 64, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2375, file: !2376, line: 81, baseType: !202, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2375, file: !2376, line: 83, baseType: !202, size: 64, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2375, file: !2376, line: 84, baseType: !202, size: 64, offset: 1088)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2375, file: !2376, line: 85, baseType: !202, size: 64, offset: 1152)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2375, file: !2376, line: 86, baseType: !202, size: 64, offset: 1216)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2375, file: !2376, line: 87, baseType: !202, size: 64, offset: 1280)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2351, file: !2289, line: 96, baseType: !190, size: 32, offset: 1024)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2294, file: !2289, line: 308, baseType: !2401, size: 4608, align: 512)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2289, line: 289, size: 4608, align: 512, elements: !2402)
!2402 = !{!2403, !2404, !2411}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2401, file: !2289, line: 290, baseType: !2312, size: 4096, align: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2401, file: !2289, line: 291, baseType: !2405, size: 512, offset: 4096)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2289, line: 268, size: 512, elements: !2406)
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2405, file: !2289, line: 269, baseType: !197, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2405, file: !2289, line: 270, baseType: !197, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2405, file: !2289, line: 271, baseType: !2410, size: 384, offset: 128)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !1758)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2401, file: !2289, line: 292, baseType: !2412, offset: 4608)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1491, elements: !1831)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2294, file: !2289, line: 309, baseType: !2414, size: 32768)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1491, size: 32768, elements: !2415)
!2415 = !{!2416}
!2416 = !DISubrange(count: 4096)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1357, file: !725, line: 378, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1353, file: !725, line: 384, baseType: !1635, size: 192, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1128, file: !725, line: 500, baseType: !241, offset: 6656)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1128, file: !725, line: 501, baseType: !2422, size: 64, offset: 6656)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !725, line: 387, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1128, file: !725, line: 516, baseType: !1821, size: 64, offset: 6720)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1128, file: !725, line: 519, baseType: !358, size: 64, offset: 6784)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1128, file: !725, line: 521, baseType: !2427, size: 64, offset: 6848)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !725, line: 521, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1128, file: !725, line: 545, baseType: !749, size: 32, offset: 6912)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1128, file: !725, line: 548, baseType: !489, size: 8, offset: 6944)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1128, file: !725, line: 550, baseType: !2432, offset: 6952)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2433, line: 142, elements: !255)
!2433 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1128, file: !725, line: 554, baseType: !2066, size: 256, offset: 6976)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1128, file: !725, line: 557, baseType: !190, size: 32, offset: 7232)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1125, file: !725, line: 565, baseType: !2437, offset: 7296)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !2438)
!2438 = !{!2439}
!2439 = !DISubrange(count: -1)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1121, file: !725, line: 151, baseType: !749, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1114, file: !725, line: 156, baseType: !241, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 159, baseType: !2443, size: 128)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 159, size: 128, elements: !2444)
!2444 = !{!2445, !2509}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2443, file: !725, line: 161, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2448)
!2448 = !{!2449, !2459, !2480, !2481, !2482, !2483, !2484, !2496, !2497, !2498}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2447, file: !29, line: 111, baseType: !2450, size: 384)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2451)
!2451 = !{!2452, !2454, !2455, !2456, !2457, !2458}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2450, file: !29, line: 20, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2450, file: !29, line: 21, baseType: !2453, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2450, file: !29, line: 22, baseType: !2453, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2450, file: !29, line: 23, baseType: !202, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2450, file: !29, line: 24, baseType: !202, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2450, file: !29, line: 25, baseType: !202, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2447, file: !29, line: 112, baseType: !2460, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2462, line: 105, size: 128, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2461, file: !2462, line: 110, baseType: !202, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2461, file: !2462, line: 118, baseType: !2466, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2462, line: 95, size: 448, elements: !2468)
!2468 = !{!2469, !2470, !2475, !2476, !2477, !2478, !2479}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2467, file: !2462, line: 96, baseType: !773, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2467, file: !2462, line: 97, baseType: !2471, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2462, line: 60, baseType: !2473)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !2460}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2467, file: !2462, line: 98, baseType: !2471, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2467, file: !2462, line: 99, baseType: !489, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2467, file: !2462, line: 100, baseType: !489, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2467, file: !2462, line: 101, baseType: !371, size: 128, align: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2467, file: !2462, line: 102, baseType: !2460, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2447, file: !29, line: 113, baseType: !2461, size: 128, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2447, file: !29, line: 114, baseType: !1635, size: 192, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2447, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2447, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2447, file: !29, line: 117, baseType: !2485, size: 64, offset: 832)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2487)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2488)
!2488 = !{!2489, !2490, !2494, !2495}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2487, file: !29, line: 73, baseType: !842, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2487, file: !29, line: 78, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2446}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2487, file: !29, line: 83, baseType: !2491, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2487, file: !29, line: 89, baseType: !1177, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2447, file: !29, line: 118, baseType: !201, size: 64, offset: 896)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2447, file: !29, line: 119, baseType: !196, size: 32, offset: 960)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2447, file: !29, line: 120, baseType: !2499, size: 128, offset: 1024)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2447, file: !29, line: 120, size: 128, elements: !2500)
!2500 = !{!2501, !2507}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2499, file: !29, line: 121, baseType: !2502, size: 128)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2503, line: 6, size: 128, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2502, file: !2503, line: 7, baseType: !197, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2502, file: !2503, line: 8, baseType: !197, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2499, file: !29, line: 122, baseType: !2508)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2502, elements: !1831)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2443, file: !725, line: 162, baseType: !201, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !729, file: !725, line: 176, baseType: !371, size: 128, align: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 179, baseType: !2512, size: 32, offset: 384)
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 179, size: 32, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2512, file: !725, line: 184, baseType: !749, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2512, file: !725, line: 192, baseType: !5, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2512, file: !725, line: 194, baseType: !5, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2512, file: !725, line: 195, baseType: !196, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !724, file: !725, line: 199, baseType: !749, size: 32, offset: 416)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !659, file: !42, line: 1964, baseType: !2520, size: 64, offset: 1344)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!200, !598, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2525, line: 12, size: 256, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2528, !2529, !2530, !2531}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2524, file: !2525, line: 13, baseType: !194, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2524, file: !2525, line: 16, baseType: !196, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2524, file: !2525, line: 23, baseType: !202, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2524, file: !2525, line: 30, baseType: !202, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2524, file: !2525, line: 33, baseType: !2532, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !725, line: 27, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !659, file: !42, line: 1966, baseType: !2520, size: 64, offset: 1408)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !599, file: !42, line: 1424, baseType: !2536, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2539)
!2539 = !{!2540, !2586, !2590, !2594, !2595, !2596, !2597, !2598, !2603, !2608, !2612}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2538, file: !36, line: 323, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!196, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2571, !2572, !2573}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2545, file: !36, line: 295, baseType: !641, size: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2545, file: !36, line: 296, baseType: !228, size: 128, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2545, file: !36, line: 297, baseType: !228, size: 128, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2545, file: !36, line: 298, baseType: !228, size: 128, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2545, file: !36, line: 299, baseType: !911, size: 192, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2545, file: !36, line: 300, baseType: !241, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2545, file: !36, line: 301, baseType: !749, size: 32, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2545, file: !36, line: 302, baseType: !598, size: 64, offset: 768)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2545, file: !36, line: 303, baseType: !2556, size: 64, offset: 832)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2557)
!2557 = !{!2558, !2570}
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !36, line: 69, baseType: !2559, size: 32)
!2559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2556, file: !36, line: 69, size: 32, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2559, file: !36, line: 70, baseType: !434, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2559, file: !36, line: 71, baseType: !442, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2559, file: !36, line: 72, baseType: !2564, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2565, line: 24, baseType: !2566)
!2565 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2565, line: 22, size: 32, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2566, file: !2565, line: 23, baseType: !2569, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2565, line: 20, baseType: !440)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2556, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2545, file: !36, line: 304, baseType: !530, size: 64, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2545, file: !36, line: 305, baseType: !202, size: 64, offset: 960)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2545, file: !36, line: 306, baseType: !2574, size: 576, offset: 1024)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2575)
!2575 = !{!2576, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2574, file: !36, line: 206, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !532)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2574, file: !36, line: 207, baseType: !2577, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2574, file: !36, line: 208, baseType: !2577, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2574, file: !36, line: 209, baseType: !2577, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2574, file: !36, line: 210, baseType: !2577, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2574, file: !36, line: 211, baseType: !2577, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2574, file: !36, line: 212, baseType: !2577, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2574, file: !36, line: 213, baseType: !538, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2574, file: !36, line: 214, baseType: !538, size: 64, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2538, file: !36, line: 324, baseType: !2587, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!2544, !598, !196}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2538, file: !36, line: 325, baseType: !2591, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2544}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2538, file: !36, line: 326, baseType: !2541, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2538, file: !36, line: 327, baseType: !2541, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2538, file: !36, line: 328, baseType: !2541, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2538, file: !36, line: 329, baseType: !687, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2538, file: !36, line: 332, baseType: !2599, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!2602, !428}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2538, file: !36, line: 333, baseType: !2604, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!196, !428, !2607}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2538, file: !36, line: 335, baseType: !2609, size: 64, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!196, !428, !2602}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2538, file: !36, line: 337, baseType: !2613, size: 64, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!196, !598, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !599, file: !42, line: 1425, baseType: !2618, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2620)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2621)
!2621 = !{!2622, !2626, !2627, !2631, !2632, !2633, !2648, !2671, !2675, !2676, !2699}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2620, file: !36, line: 429, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!196, !598, !196, !196, !548}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2620, file: !36, line: 430, baseType: !687, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2620, file: !36, line: 431, baseType: !2628, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!196, !598, !5}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2620, file: !36, line: 432, baseType: !2628, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2620, file: !36, line: 433, baseType: !687, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2620, file: !36, line: 434, baseType: !2634, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!196, !598, !196, !2637}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2638, file: !36, line: 416, baseType: !196, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2638, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2638, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2638, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2638, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2638, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2638, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2638, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2620, file: !36, line: 435, baseType: !2649, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!196, !598, !2556, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2653, file: !36, line: 344, baseType: !196, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2653, file: !36, line: 345, baseType: !197, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2653, file: !36, line: 346, baseType: !197, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2653, file: !36, line: 347, baseType: !197, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2653, file: !36, line: 348, baseType: !197, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2653, file: !36, line: 349, baseType: !197, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2653, file: !36, line: 350, baseType: !197, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2653, file: !36, line: 351, baseType: !779, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2653, file: !36, line: 353, baseType: !779, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2653, file: !36, line: 354, baseType: !196, size: 32, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2653, file: !36, line: 355, baseType: !196, size: 32, offset: 608)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2653, file: !36, line: 356, baseType: !197, size: 64, offset: 640)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2653, file: !36, line: 357, baseType: !197, size: 64, offset: 704)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2653, file: !36, line: 358, baseType: !197, size: 64, offset: 768)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2653, file: !36, line: 359, baseType: !779, size: 64, offset: 832)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2653, file: !36, line: 360, baseType: !196, size: 32, offset: 896)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2620, file: !36, line: 436, baseType: !2672, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!196, !598, !2616, !2652}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2620, file: !36, line: 438, baseType: !2649, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2620, file: !36, line: 439, baseType: !2677, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!196, !598, !2680}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2682)
!2682 = !{!2683, !2684}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2681, file: !36, line: 410, baseType: !5, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2681, file: !36, line: 411, baseType: !2685, size: 1344, offset: 64)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2686, size: 1344, elements: !283)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2698}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2686, file: !36, line: 396, baseType: !5, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2686, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2686, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2686, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2686, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2686, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2686, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2686, file: !36, line: 404, baseType: !199, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2686, file: !36, line: 405, baseType: !2697, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !195, line: 126, baseType: !197)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2686, file: !36, line: 406, baseType: !2697, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2620, file: !36, line: 440, baseType: !2628, size: 64, offset: 640)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !599, file: !42, line: 1426, baseType: !2701, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !599, file: !42, line: 1427, baseType: !202, size: 64, offset: 640)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !599, file: !42, line: 1428, baseType: !202, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !599, file: !42, line: 1429, baseType: !202, size: 64, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !599, file: !42, line: 1430, baseType: !388, size: 64, offset: 832)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !599, file: !42, line: 1431, baseType: !769, size: 256, offset: 896)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !599, file: !42, line: 1432, baseType: !196, size: 32, offset: 1152)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !599, file: !42, line: 1433, baseType: !749, size: 32, offset: 1184)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !599, file: !42, line: 1437, baseType: !2712, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !599, file: !42, line: 1449, baseType: !2717, size: 64, offset: 1280)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !404, line: 34, size: 64, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2717, file: !404, line: 35, baseType: !407, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !599, file: !42, line: 1450, baseType: !228, size: 128, offset: 1344)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !599, file: !42, line: 1451, baseType: !2722, size: 64, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !599, file: !42, line: 1452, baseType: !2032, size: 64, offset: 1536)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !599, file: !42, line: 1453, baseType: !2726, size: 64, offset: 1600)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !599, file: !42, line: 1454, baseType: !641, size: 128, offset: 1664)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !599, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !599, file: !42, line: 1456, baseType: !2731, size: 2432, offset: 1856)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2737, !2769}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2731, file: !36, line: 519, baseType: !5, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2731, file: !36, line: 520, baseType: !769, size: 256, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2731, file: !36, line: 521, baseType: !2736, size: 192, offset: 320)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 192, elements: !283)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2731, file: !36, line: 522, baseType: !2738, size: 1728, offset: 512)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2739, size: 1728, elements: !283)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2740)
!2740 = !{!2741, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2739, file: !36, line: 223, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2744)
!2744 = !{!2745, !2746, !2759, !2760}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2743, file: !36, line: 444, baseType: !196, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2743, file: !36, line: 445, baseType: !2747, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2749, file: !36, line: 311, baseType: !687, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2749, file: !36, line: 312, baseType: !687, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2749, file: !36, line: 313, baseType: !687, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2749, file: !36, line: 314, baseType: !687, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2749, file: !36, line: 315, baseType: !2541, size: 64, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2749, file: !36, line: 316, baseType: !2541, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2749, file: !36, line: 317, baseType: !2541, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2749, file: !36, line: 318, baseType: !2613, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2743, file: !36, line: 446, baseType: !632, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2743, file: !36, line: 447, baseType: !2742, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2739, file: !36, line: 224, baseType: !196, size: 32, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2739, file: !36, line: 226, baseType: !228, size: 128, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2739, file: !36, line: 227, baseType: !202, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2739, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2739, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2739, file: !36, line: 230, baseType: !2577, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2739, file: !36, line: 231, baseType: !2577, size: 64, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2739, file: !36, line: 232, baseType: !201, size: 64, offset: 512)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2731, file: !36, line: 523, baseType: !2770, size: 192, offset: 2240)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2747, size: 192, elements: !283)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !599, file: !42, line: 1458, baseType: !2772, size: 2112, offset: 4288)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2773)
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2772, file: !42, line: 1411, baseType: !196, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2772, file: !42, line: 1412, baseType: !918, size: 128, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2772, file: !42, line: 1413, baseType: !2777, size: 1920, offset: 192)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 1920, elements: !283)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2779, line: 12, size: 640, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2780 = !{!2781, !2789, !2791, !2796, !2797}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2778, file: !2779, line: 13, baseType: !2782, size: 320)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2783, line: 17, size: 320, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2784 = !{!2785, !2786, !2787, !2788}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2782, file: !2783, line: 18, baseType: !196, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2782, file: !2783, line: 19, baseType: !196, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2782, file: !2783, line: 20, baseType: !918, size: 128, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2782, file: !2783, line: 22, baseType: !371, size: 128, align: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2778, file: !2779, line: 14, baseType: !2790, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2778, file: !2779, line: 15, baseType: !2792, size: 64, offset: 384)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2793, line: 16, size: 64, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2794 = !{!2795}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2792, file: !2793, line: 17, baseType: !1360, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2778, file: !2779, line: 16, baseType: !918, size: 128, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2778, file: !2779, line: 17, baseType: !749, size: 32, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !599, file: !42, line: 1465, baseType: !201, size: 64, offset: 6400)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !599, file: !42, line: 1468, baseType: !190, size: 32, offset: 6464)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !599, file: !42, line: 1470, baseType: !538, size: 64, offset: 6528)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !599, file: !42, line: 1471, baseType: !538, size: 64, offset: 6592)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !599, file: !42, line: 1473, baseType: !192, size: 32, offset: 6656)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !599, file: !42, line: 1474, baseType: !2804, size: 64, offset: 6720)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !599, file: !42, line: 1477, baseType: !2807, size: 256, offset: 6784)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !2337)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !599, file: !42, line: 1478, baseType: !2809, size: 128, offset: 7040)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2810, line: 18, baseType: !2811)
!2810 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2810, line: 16, size: 128, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2811, file: !2810, line: 17, baseType: !2814, size: 128)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 128, elements: !1843)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !599, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !599, file: !42, line: 1481, baseType: !2817, size: 32, offset: 7200)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !195, line: 150, baseType: !5)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !599, file: !42, line: 1487, baseType: !911, size: 192, offset: 7232)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !599, file: !42, line: 1493, baseType: !224, size: 64, offset: 7424)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !599, file: !42, line: 1495, baseType: !2821, size: 64, offset: 7488)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2823)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !386, line: 135, size: 1024, align: 512, elements: !2824)
!2824 = !{!2825, !2829, !2830, !2837, !2843, !2847, !2851, !2855, !2856, !2860, !2864, !2869, !2873}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2823, file: !386, line: 136, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!196, !388, !5}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2823, file: !386, line: 137, baseType: !2826, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2823, file: !386, line: 138, baseType: !2831, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!196, !2834, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2823, file: !386, line: 139, baseType: !2838, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!196, !2834, !5, !224, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2823, file: !386, line: 141, baseType: !2844, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!196, !2834}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2823, file: !386, line: 142, baseType: !2848, size: 64, offset: 320)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!196, !388}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2823, file: !386, line: 143, baseType: !2852, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !388}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2823, file: !386, line: 144, baseType: !2852, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2823, file: !386, line: 145, baseType: !2857, size: 64, offset: 512)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !388, !428}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2823, file: !386, line: 146, baseType: !2861, size: 64, offset: 576)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!282, !388, !282, !196}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2823, file: !386, line: 147, baseType: !2865, size: 64, offset: 640)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!384, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2823, file: !386, line: 148, baseType: !2870, size: 64, offset: 704)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!196, !548, !489}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2823, file: !386, line: 149, baseType: !2874, size: 64, offset: 768)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!388, !388, !2877}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !599, file: !42, line: 1500, baseType: !196, size: 32, offset: 7552)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !599, file: !42, line: 1502, baseType: !2881, size: 448, offset: 7616)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2525, line: 60, size: 448, elements: !2882)
!2882 = !{!2883, !2888, !2889, !2890, !2891, !2892, !2893}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2881, file: !2525, line: 61, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!202, !2887, !2523}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2881, file: !2525, line: 63, baseType: !2884, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2881, file: !2525, line: 66, baseType: !200, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2881, file: !2525, line: 67, baseType: !196, size: 32, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2881, file: !2525, line: 68, baseType: !5, size: 32, offset: 224)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2881, file: !2525, line: 71, baseType: !228, size: 128, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2881, file: !2525, line: 77, baseType: !2894, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !599, file: !42, line: 1505, baseType: !773, size: 64, offset: 8064)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !599, file: !42, line: 1508, baseType: !773, size: 64, offset: 8128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !599, file: !42, line: 1511, baseType: !196, size: 32, offset: 8192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !599, file: !42, line: 1514, baseType: !1059, size: 32, offset: 8224)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !599, file: !42, line: 1517, baseType: !2900, size: 64, offset: 8256)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2067, line: 18, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !599, file: !42, line: 1518, baseType: !637, size: 64, offset: 8320)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !599, file: !42, line: 1525, baseType: !1821, size: 64, offset: 8384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !599, file: !42, line: 1532, baseType: !2905, size: 64, offset: 8448)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2906, line: 52, size: 64, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2907 = !{!2908}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2905, file: !2906, line: 53, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2906, line: 40, size: 256, elements: !2911)
!2911 = !{!2912, !2913, !2918}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2910, file: !2906, line: 42, baseType: !241)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2910, file: !2906, line: 44, baseType: !2914, size: 192)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2906, line: 28, size: 192, elements: !2915)
!2915 = !{!2916, !2917}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2914, file: !2906, line: 29, baseType: !228, size: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2914, file: !2906, line: 31, baseType: !200, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2910, file: !2906, line: 49, baseType: !200, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !599, file: !42, line: 1533, baseType: !2905, size: 64, offset: 8512)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !599, file: !42, line: 1534, baseType: !371, size: 128, align: 64, offset: 8576)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !599, file: !42, line: 1535, baseType: !2066, size: 256, offset: 8704)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !599, file: !42, line: 1537, baseType: !911, size: 192, offset: 8960)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !599, file: !42, line: 1542, baseType: !196, size: 32, offset: 9152)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !599, file: !42, line: 1545, baseType: !241, offset: 9184)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !599, file: !42, line: 1546, baseType: !228, size: 128, offset: 9216)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !599, file: !42, line: 1548, baseType: !241, offset: 9344)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !599, file: !42, line: 1549, baseType: !228, size: 128, offset: 9344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !429, file: !42, line: 624, baseType: !736, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !429, file: !42, line: 631, baseType: !202, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !42, line: 639, baseType: !2931, size: 32, offset: 384)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !42, line: 639, size: 32, elements: !2932)
!2932 = !{!2933, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2931, file: !42, line: 640, baseType: !2934, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2931, file: !42, line: 641, baseType: !5, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !429, file: !42, line: 643, baseType: !512, size: 32, offset: 416)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !429, file: !42, line: 644, baseType: !530, size: 64, offset: 448)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !429, file: !42, line: 645, baseType: !534, size: 128, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !429, file: !42, line: 646, baseType: !534, size: 128, offset: 640)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !429, file: !42, line: 647, baseType: !534, size: 128, offset: 768)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !429, file: !42, line: 648, baseType: !241, offset: 896)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !429, file: !42, line: 649, baseType: !323, size: 16, offset: 896)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !429, file: !42, line: 650, baseType: !1491, size: 8, offset: 912)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !429, file: !42, line: 651, baseType: !1491, size: 8, offset: 920)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !429, file: !42, line: 652, baseType: !2697, size: 64, offset: 960)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !429, file: !42, line: 659, baseType: !202, size: 64, offset: 1024)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !429, file: !42, line: 660, baseType: !769, size: 256, offset: 1088)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !429, file: !42, line: 662, baseType: !202, size: 64, offset: 1344)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !429, file: !42, line: 663, baseType: !202, size: 64, offset: 1408)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !429, file: !42, line: 665, baseType: !641, size: 128, offset: 1472)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !429, file: !42, line: 666, baseType: !228, size: 128, offset: 1600)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !429, file: !42, line: 675, baseType: !228, size: 128, offset: 1728)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !429, file: !42, line: 676, baseType: !228, size: 128, offset: 1856)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !429, file: !42, line: 677, baseType: !228, size: 128, offset: 1984)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !42, line: 678, baseType: !2956, size: 128, offset: 2112)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !42, line: 678, size: 128, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2956, file: !42, line: 679, baseType: !637, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2956, file: !42, line: 680, baseType: !371, size: 128, align: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !429, file: !42, line: 682, baseType: !775, size: 64, offset: 2240)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !429, file: !42, line: 683, baseType: !775, size: 64, offset: 2304)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !429, file: !42, line: 684, baseType: !749, size: 32, offset: 2368)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !429, file: !42, line: 685, baseType: !749, size: 32, offset: 2400)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !429, file: !42, line: 686, baseType: !749, size: 32, offset: 2432)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !429, file: !42, line: 688, baseType: !749, size: 32, offset: 2464)
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !42, line: 690, baseType: !2967, size: 64, offset: 2496)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !42, line: 690, size: 64, elements: !2968)
!2968 = !{!2969, !3176}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2967, file: !42, line: 691, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2973)
!2973 = !{!2974, !2975, !2979, !2984, !2988, !2989, !2990, !2994, !3007, !3008, !3016, !3020, !3021, !3025, !3026, !3030, !3035, !3036, !3040, !3044, !3136, !3140, !3141, !3145, !3146, !3150, !3154, !3159, !3163, !3167, !3171, !3175}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2972, file: !42, line: 1823, baseType: !632, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2972, file: !42, line: 1824, baseType: !2976, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!530, !358, !530, !196}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2972, file: !42, line: 1825, baseType: !2980, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!313, !358, !282, !328, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2972, file: !42, line: 1826, baseType: !2985, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!313, !358, !224, !328, !2983}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2972, file: !42, line: 1827, baseType: !846, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2972, file: !42, line: 1828, baseType: !846, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2972, file: !42, line: 1829, baseType: !2991, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!196, !849, !489}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2972, file: !42, line: 1830, baseType: !2995, size: 64, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!196, !358, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !3000)
!3000 = !{!3001, !3006}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2999, file: !42, line: 1777, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !3003)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!196, !2998, !224, !196, !530, !197, !5}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2999, file: !42, line: 1778, baseType: !530, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2972, file: !42, line: 1831, baseType: !2995, size: 64, offset: 512)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2972, file: !42, line: 1832, baseType: !3009, size: 64, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!3012, !358, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3013, line: 52, baseType: !5)
!3013 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !618, line: 27, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2972, file: !42, line: 1833, baseType: !3017, size: 64, offset: 640)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!200, !358, !5, !202}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2972, file: !42, line: 1834, baseType: !3017, size: 64, offset: 704)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2972, file: !42, line: 1835, baseType: !3022, size: 64, offset: 768)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!196, !358, !1131}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2972, file: !42, line: 1836, baseType: !202, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2972, file: !42, line: 1837, baseType: !3027, size: 64, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!196, !428, !358}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2972, file: !42, line: 1838, baseType: !3031, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!196, !358, !3034}
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !201)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2972, file: !42, line: 1839, baseType: !3027, size: 64, offset: 1024)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2972, file: !42, line: 1840, baseType: !3037, size: 64, offset: 1088)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!196, !358, !530, !530, !196}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2972, file: !42, line: 1841, baseType: !3041, size: 64, offset: 1152)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!196, !196, !358, !196}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2972, file: !42, line: 1842, baseType: !3045, size: 64, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!196, !358, !196, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3081, !3112}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3049, file: !42, line: 1063, baseType: !3048, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3049, file: !42, line: 1064, baseType: !228, size: 128, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3049, file: !42, line: 1065, baseType: !641, size: 128, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3049, file: !42, line: 1066, baseType: !228, size: 128, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3049, file: !42, line: 1069, baseType: !228, size: 128, offset: 448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3049, file: !42, line: 1072, baseType: !3034, size: 64, offset: 576)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3049, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3049, file: !42, line: 1074, baseType: !426, size: 8, offset: 672)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3049, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3049, file: !42, line: 1076, baseType: !196, size: 32, offset: 736)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3049, file: !42, line: 1077, baseType: !918, size: 128, offset: 768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3049, file: !42, line: 1078, baseType: !358, size: 64, offset: 896)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3049, file: !42, line: 1079, baseType: !530, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3049, file: !42, line: 1080, baseType: !530, size: 64, offset: 1024)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3049, file: !42, line: 1082, baseType: !937, size: 64, offset: 1088)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3049, file: !42, line: 1084, baseType: !202, size: 64, offset: 1152)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3049, file: !42, line: 1085, baseType: !202, size: 64, offset: 1216)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3049, file: !42, line: 1087, baseType: !3069, size: 64, offset: 1280)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3072)
!3072 = !{!3073, !3077}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3071, file: !42, line: 1012, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !3048, !3048}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3071, file: !42, line: 1013, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3048}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3049, file: !42, line: 1088, baseType: !3082, size: 64, offset: 1344)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3085)
!3085 = !{!3086, !3090, !3094, !3095, !3099, !3103, !3107, !3111}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3084, file: !42, line: 1017, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!3034, !3034}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3084, file: !42, line: 1018, baseType: !3091, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3034}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3084, file: !42, line: 1019, baseType: !3078, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3084, file: !42, line: 1020, baseType: !3096, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!196, !3048, !196}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3084, file: !42, line: 1021, baseType: !3100, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!489, !3048}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3084, file: !42, line: 1022, baseType: !3104, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!196, !3048, !196, !231}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3084, file: !42, line: 1023, baseType: !3108, size: 64, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3048, !823}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3084, file: !42, line: 1024, baseType: !3100, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3049, file: !42, line: 1097, baseType: !3113, size: 256, offset: 1408)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3049, file: !42, line: 1089, size: 256, elements: !3114)
!3114 = !{!3115, !3124, !3130}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3113, file: !42, line: 1090, baseType: !3116, size: 256)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3117, line: 10, size: 256, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3118 = !{!3119, !3120, !3123}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3116, file: !3117, line: 11, baseType: !190, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3116, file: !3117, line: 12, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3117, line: 5, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3116, file: !3117, line: 13, baseType: !228, size: 128, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3113, file: !42, line: 1091, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3117, line: 17, size: 64, elements: !3126)
!3126 = !{!3127}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3125, file: !3117, line: 18, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3117, line: 16, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3113, file: !42, line: 1096, baseType: !3131, size: 192)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !42, line: 1092, size: 192, elements: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3131, file: !42, line: 1093, baseType: !228, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3131, file: !42, line: 1094, baseType: !196, size: 32, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3131, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2972, file: !42, line: 1843, baseType: !3137, size: 64, offset: 1280)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!313, !358, !723, !196, !328, !2983, !196}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2972, file: !42, line: 1844, baseType: !1251, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2972, file: !42, line: 1845, baseType: !3142, size: 64, offset: 1408)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!196, !196}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2972, file: !42, line: 1846, baseType: !3045, size: 64, offset: 1472)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2972, file: !42, line: 1847, baseType: !3147, size: 64, offset: 1536)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!313, !906, !358, !2983, !328, !5}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2972, file: !42, line: 1848, baseType: !3151, size: 64, offset: 1600)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!313, !358, !2983, !906, !328, !5}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2972, file: !42, line: 1849, baseType: !3155, size: 64, offset: 1664)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!196, !358, !200, !3158, !823}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2972, file: !42, line: 1850, baseType: !3160, size: 64, offset: 1728)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!200, !358, !196, !530, !530}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2972, file: !42, line: 1852, baseType: !3164, size: 64, offset: 1792)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !713, !358}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2972, file: !42, line: 1856, baseType: !3168, size: 64, offset: 1856)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!313, !358, !530, !358, !530, !328, !5}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2972, file: !42, line: 1858, baseType: !3172, size: 64, offset: 1920)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!530, !358, !530, !358, !530, !530, !5}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2972, file: !42, line: 1861, baseType: !3037, size: 64, offset: 1984)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2967, file: !42, line: 692, baseType: !666, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !429, file: !42, line: 694, baseType: !3178, size: 64, offset: 2560)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3179, file: !42, line: 1101, baseType: !241)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3179, file: !42, line: 1102, baseType: !228, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3179, file: !42, line: 1103, baseType: !228, size: 128, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3179, file: !42, line: 1104, baseType: !228, size: 128, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !429, file: !42, line: 695, baseType: !737, size: 1216, align: 64, offset: 2624)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !429, file: !42, line: 696, baseType: !228, size: 128, offset: 3840)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !42, line: 697, baseType: !3188, size: 64, offset: 3968)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !42, line: 697, size: 64, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3195, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3188, file: !42, line: 698, baseType: !906, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3188, file: !42, line: 699, baseType: !2722, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3188, file: !42, line: 700, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3188, file: !42, line: 701, baseType: !282, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3188, file: !42, line: 702, baseType: !5, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !429, file: !42, line: 705, baseType: !192, size: 32, offset: 4032)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !429, file: !42, line: 708, baseType: !192, size: 32, offset: 4064)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !429, file: !42, line: 709, baseType: !2804, size: 64, offset: 4096)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !429, file: !42, line: 720, baseType: !201, size: 64, offset: 4160)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !389, file: !386, line: 98, baseType: !3202, size: 256, offset: 448)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 256, elements: !2337)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !389, file: !386, line: 101, baseType: !3204, size: 32, offset: 704)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3205, line: 25, size: 32, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !3205, line: 26, baseType: !3208, size: 32)
!3208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3204, file: !3205, line: 26, size: 32, elements: !3209)
!3209 = !{!3210}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3205, line: 30, baseType: !3211, size: 32)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3208, file: !3205, line: 30, size: 32, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3211, file: !3205, line: 31, baseType: !241)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3211, file: !3205, line: 32, baseType: !196, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !389, file: !386, line: 102, baseType: !2821, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !389, file: !386, line: 103, baseType: !598, size: 64, offset: 832)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !389, file: !386, line: 104, baseType: !202, size: 64, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !389, file: !386, line: 105, baseType: !201, size: 64, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !386, line: 107, baseType: !3220, size: 128, offset: 1024)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 107, size: 128, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3220, file: !386, line: 108, baseType: !228, size: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3220, file: !386, line: 109, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !389, file: !386, line: 111, baseType: !228, size: 128, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !389, file: !386, line: 112, baseType: !228, size: 128, offset: 1280)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !389, file: !386, line: 120, baseType: !3228, size: 128, offset: 1408)
!3228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 116, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3228, file: !386, line: 117, baseType: !641, size: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3228, file: !386, line: 118, baseType: !403, size: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3228, file: !386, line: 119, baseType: !371, size: 128, align: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !359, file: !42, line: 922, baseType: !428, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !359, file: !42, line: 923, baseType: !2970, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !359, file: !42, line: 929, baseType: !241, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !359, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !359, file: !42, line: 931, baseType: !773, size: 64, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !359, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !359, file: !42, line: 933, baseType: !2817, size: 32, offset: 544)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !359, file: !42, line: 934, baseType: !911, size: 192, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !359, file: !42, line: 935, baseType: !530, size: 64, offset: 768)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !359, file: !42, line: 936, baseType: !3243, size: 192, offset: 832)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3243, file: !42, line: 886, baseType: !941)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3243, file: !42, line: 887, baseType: !1610, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3243, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3243, file: !42, line: 889, baseType: !434, size: 32, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3243, file: !42, line: 889, baseType: !434, size: 32, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3243, file: !42, line: 890, baseType: !196, size: 32, offset: 160)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !359, file: !42, line: 937, baseType: !1680, size: 64, offset: 1024)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !359, file: !42, line: 938, baseType: !3253, size: 256, offset: 1088)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3253, file: !42, line: 897, baseType: !202, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3253, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3253, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3253, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3253, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3253, file: !42, line: 904, baseType: !530, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !359, file: !42, line: 940, baseType: !197, size: 64, offset: 1344)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !359, file: !42, line: 945, baseType: !201, size: 64, offset: 1408)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !359, file: !42, line: 949, baseType: !228, size: 128, offset: 1472)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !359, file: !42, line: 950, baseType: !228, size: 128, offset: 1600)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !42, line: 952, baseType: !736, size: 64, offset: 1728)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !359, file: !42, line: 953, baseType: !1059, size: 32, offset: 1792)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !359, file: !42, line: 954, baseType: !1059, size: 32, offset: 1824)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !307, line: 174, baseType: !355, size: 64, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !307, line: 176, baseType: !3270, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!196, !358, !234, !348, !1131}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !337, file: !307, line: 90, baseType: !332, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !337, file: !307, line: 91, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !297, file: !221, line: 143, baseType: !3277, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!3280, !234}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3283)
!3283 = !{!3284, !3285, !3289, !3293, !3299, !3303}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3282, file: !59, line: 40, baseType: !58, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3282, file: !59, line: 41, baseType: !3286, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!489}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3282, file: !59, line: 42, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!201}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3282, file: !59, line: 43, baseType: !3294, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!2234, !3297}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3282, file: !59, line: 44, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!2234}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3282, file: !59, line: 45, baseType: !467, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !297, file: !221, line: 144, baseType: !3305, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!2234, !234}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !297, file: !221, line: 145, baseType: !3309, size: 64, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !234, !3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !220, file: !221, line: 70, baseType: !3315, size: 64, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !618, line: 123, size: 1024, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3446, !3447, !3448, !3449, !3450}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3316, file: !618, line: 124, baseType: !749, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3316, file: !618, line: 125, baseType: !749, size: 32, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3316, file: !618, line: 135, baseType: !3315, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !618, line: 136, baseType: !224, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3316, file: !618, line: 138, baseType: !762, size: 192, align: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3316, file: !618, line: 140, baseType: !2234, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3316, file: !618, line: 141, baseType: !5, size: 32, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !618, line: 142, baseType: !3326, size: 256, offset: 512)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !618, line: 142, size: 256, elements: !3327)
!3327 = !{!3328, !3374, !3378}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3326, file: !618, line: 143, baseType: !3329, size: 192)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !618, line: 91, size: 192, elements: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3329, file: !618, line: 92, baseType: !202, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3329, file: !618, line: 94, baseType: !758, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3329, file: !618, line: 100, baseType: !3334, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !618, line: 180, size: 704, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3346, !3347, !3348, !3372, !3373}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3335, file: !618, line: 182, baseType: !3315, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3335, file: !618, line: 183, baseType: !5, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3335, file: !618, line: 186, baseType: !3340, size: 192, offset: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3341, line: 19, size: 192, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3342 = !{!3343, !3344, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3340, file: !3341, line: 20, baseType: !741, size: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3340, file: !3341, line: 21, baseType: !5, size: 32, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3340, file: !3341, line: 22, baseType: !5, size: 32, offset: 160)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3335, file: !618, line: 187, baseType: !190, size: 32, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3335, file: !618, line: 188, baseType: !190, size: 32, offset: 352)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3335, file: !618, line: 189, baseType: !3349, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !618, line: 168, size: 320, elements: !3351)
!3351 = !{!3352, !3356, !3360, !3364, !3368}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3350, file: !618, line: 169, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!196, !713, !3334}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3350, file: !618, line: 171, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!196, !3315, !224, !322}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3350, file: !618, line: 173, baseType: !3361, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!196, !3315}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3350, file: !618, line: 174, baseType: !3365, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!196, !3315, !3315, !224}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3350, file: !618, line: 176, baseType: !3369, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!196, !713, !3315, !3334}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3335, file: !618, line: 192, baseType: !228, size: 128, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3335, file: !618, line: 194, baseType: !918, size: 128, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3326, file: !618, line: 144, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !618, line: 103, size: 64, elements: !3376)
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3375, file: !618, line: 104, baseType: !3315, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3326, file: !618, line: 145, baseType: !3379, size: 256)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !618, line: 107, size: 256, elements: !3380)
!3380 = !{!3381, !3441, !3444, !3445}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3379, file: !618, line: 108, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !618, line: 217, size: 768, elements: !3385)
!3385 = !{!3386, !3406, !3410, !3414, !3418, !3422, !3426, !3430, !3431, !3432, !3433, !3437}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3384, file: !618, line: 222, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!196, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !618, line: 197, size: 1088, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3391, file: !618, line: 199, baseType: !3315, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3391, file: !618, line: 200, baseType: !358, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3391, file: !618, line: 201, baseType: !713, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3391, file: !618, line: 202, baseType: !201, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3391, file: !618, line: 205, baseType: !911, size: 192, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3391, file: !618, line: 206, baseType: !911, size: 192, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3391, file: !618, line: 207, baseType: !196, size: 32, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3391, file: !618, line: 208, baseType: !228, size: 128, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3391, file: !618, line: 209, baseType: !282, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3391, file: !618, line: 211, baseType: !328, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3391, file: !618, line: 212, baseType: !489, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3391, file: !618, line: 213, baseType: !489, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3391, file: !618, line: 214, baseType: !1159, size: 64, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3384, file: !618, line: 223, baseType: !3407, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !3390}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3384, file: !618, line: 236, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!196, !713, !201}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3384, file: !618, line: 238, baseType: !3415, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!201, !713, !2983}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3384, file: !618, line: 239, baseType: !3419, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!201, !713, !201, !2983}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3384, file: !618, line: 240, baseType: !3423, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !713, !201}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3384, file: !618, line: 242, baseType: !3427, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!313, !3390, !282, !328, !530}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3384, file: !618, line: 252, baseType: !328, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3384, file: !618, line: 259, baseType: !489, size: 8, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3384, file: !618, line: 260, baseType: !3427, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3384, file: !618, line: 263, baseType: !3434, size: 64, offset: 640)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!3012, !3390, !3014}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3384, file: !618, line: 266, baseType: !3438, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!196, !3390, !1131}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3379, file: !618, line: 109, baseType: !3442, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !618, line: 31, flags: DIFlagFwdDecl)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3379, file: !618, line: 110, baseType: !530, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3379, file: !618, line: 111, baseType: !3315, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3316, file: !618, line: 148, baseType: !201, size: 64, offset: 768)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3316, file: !618, line: 154, baseType: !197, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3316, file: !618, line: 156, baseType: !323, size: 16, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3316, file: !618, line: 157, baseType: !322, size: 16, offset: 912)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3316, file: !618, line: 158, baseType: !3451, size: 64, offset: 960)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !618, line: 32, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !220, file: !221, line: 71, baseType: !3454, size: 32, offset: 448)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3455, line: 19, size: 32, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3456 = !{!3457}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3454, file: !3455, line: 20, baseType: !987, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !220, file: !221, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !220, file: !221, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !220, file: !221, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !220, file: !221, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !220, file: !221, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !71, line: 463, baseType: !216, size: 64, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !217, file: !71, line: 465, baseType: !3465, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !217, file: !71, line: 467, baseType: !224, size: 64, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !71, line: 468, baseType: !3469, size: 64, offset: 704)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3479, !3484, !3488}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3471, file: !71, line: 88, baseType: !224, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3471, file: !71, line: 89, baseType: !334, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3471, file: !71, line: 90, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!196, !216, !277}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3471, file: !71, line: 91, baseType: !3480, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!282, !216, !3483, !3312, !3313}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3471, file: !71, line: 93, baseType: !3485, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !216}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3471, file: !71, line: 95, baseType: !3489, size: 64, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3492)
!3492 = !{!3493, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3491, file: !78, line: 279, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!196, !216}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3491, file: !78, line: 280, baseType: !3485, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3491, file: !78, line: 281, baseType: !3494, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3491, file: !78, line: 282, baseType: !3494, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3491, file: !78, line: 283, baseType: !3494, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3491, file: !78, line: 284, baseType: !3494, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3491, file: !78, line: 285, baseType: !3494, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3491, file: !78, line: 286, baseType: !3494, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3491, file: !78, line: 287, baseType: !3494, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3491, file: !78, line: 288, baseType: !3494, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3491, file: !78, line: 289, baseType: !3494, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3491, file: !78, line: 290, baseType: !3494, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3491, file: !78, line: 291, baseType: !3494, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3491, file: !78, line: 292, baseType: !3494, size: 64, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3491, file: !78, line: 293, baseType: !3494, size: 64, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3491, file: !78, line: 294, baseType: !3494, size: 64, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3491, file: !78, line: 295, baseType: !3494, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3491, file: !78, line: 296, baseType: !3494, size: 64, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3491, file: !78, line: 297, baseType: !3494, size: 64, offset: 1152)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3491, file: !78, line: 298, baseType: !3494, size: 64, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3491, file: !78, line: 299, baseType: !3494, size: 64, offset: 1280)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3491, file: !78, line: 300, baseType: !3494, size: 64, offset: 1344)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3491, file: !78, line: 301, baseType: !3494, size: 64, offset: 1408)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !217, file: !71, line: 470, baseType: !3520, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3522, line: 82, size: 1408, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3529, !3530, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3587, !3590, !3591}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !3522, line: 83, baseType: !224, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3521, file: !3522, line: 84, baseType: !224, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3521, file: !3522, line: 85, baseType: !216, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3521, file: !3522, line: 86, baseType: !334, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3521, file: !3522, line: 87, baseType: !334, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3521, file: !3522, line: 88, baseType: !334, size: 64, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3521, file: !3522, line: 90, baseType: !3531, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!196, !216, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3547, !3551, !3552, !3553, !3554, !3555, !3563, !3564, !3565, !3566, !3567, !3568}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !65, line: 96, baseType: !224, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3535, file: !65, line: 97, baseType: !3520, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3535, file: !65, line: 99, baseType: !632, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3535, file: !65, line: 100, baseType: !224, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3535, file: !65, line: 102, baseType: !489, size: 8, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3535, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3535, file: !65, line: 105, baseType: !3544, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3546)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !65, line: 105, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3535, file: !65, line: 106, baseType: !3548, size: 64, offset: 384)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !65, line: 106, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3535, file: !65, line: 108, baseType: !3494, size: 64, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3535, file: !65, line: 109, baseType: !3485, size: 64, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3535, file: !65, line: 110, baseType: !3494, size: 64, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3535, file: !65, line: 111, baseType: !3485, size: 64, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3535, file: !65, line: 112, baseType: !3556, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!196, !216, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3560)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3561)
!3561 = !{!3562}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3560, file: !78, line: 51, baseType: !196, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3535, file: !65, line: 113, baseType: !3494, size: 64, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3535, file: !65, line: 114, baseType: !334, size: 64, offset: 832)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3535, file: !65, line: 115, baseType: !334, size: 64, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3535, file: !65, line: 117, baseType: !3489, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3535, file: !65, line: 118, baseType: !3485, size: 64, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3535, file: !65, line: 120, baseType: !3569, size: 64, offset: 1088)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3521, file: !3522, line: 91, baseType: !3476, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3521, file: !3522, line: 92, baseType: !3494, size: 64, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3521, file: !3522, line: 93, baseType: !3485, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3521, file: !3522, line: 94, baseType: !3494, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3521, file: !3522, line: 95, baseType: !3485, size: 64, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3521, file: !3522, line: 97, baseType: !3494, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3521, file: !3522, line: 98, baseType: !3494, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3521, file: !3522, line: 100, baseType: !3556, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3521, file: !3522, line: 101, baseType: !3494, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3521, file: !3522, line: 103, baseType: !3494, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3521, file: !3522, line: 105, baseType: !3494, size: 64, offset: 1088)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3521, file: !3522, line: 107, baseType: !3489, size: 64, offset: 1152)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3521, file: !3522, line: 109, baseType: !3584, size: 64, offset: 1216)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3586)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3522, line: 109, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3521, file: !3522, line: 111, baseType: !3588, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3522, line: 111, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3521, file: !3522, line: 112, baseType: !647, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3521, file: !3522, line: 114, baseType: !489, size: 8, offset: 1344)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !217, file: !71, line: 471, baseType: !3534, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !217, file: !71, line: 473, baseType: !201, size: 64, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !217, file: !71, line: 475, baseType: !201, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !217, file: !71, line: 480, baseType: !911, size: 192, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !217, file: !71, line: 484, baseType: !3597, size: 576, offset: 1216)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3597, file: !71, line: 362, baseType: !228, size: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3597, file: !71, line: 363, baseType: !228, size: 128, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3597, file: !71, line: 364, baseType: !228, size: 128, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3597, file: !71, line: 365, baseType: !228, size: 128, offset: 384)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3597, file: !71, line: 366, baseType: !489, size: 8, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3597, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !217, file: !71, line: 485, baseType: !3606, size: 2304, offset: 1792)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3703, !3707}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3606, file: !78, line: 566, baseType: !3559, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3606, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3606, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3606, file: !78, line: 569, baseType: !489, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3606, file: !78, line: 570, baseType: !489, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3606, file: !78, line: 571, baseType: !489, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3606, file: !78, line: 572, baseType: !489, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3606, file: !78, line: 573, baseType: !489, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3606, file: !78, line: 574, baseType: !489, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3606, file: !78, line: 575, baseType: !489, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3606, file: !78, line: 576, baseType: !489, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3606, file: !78, line: 577, baseType: !190, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3606, file: !78, line: 578, baseType: !241, offset: 96)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3606, file: !78, line: 580, baseType: !228, size: 128, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3606, file: !78, line: 581, baseType: !1635, size: 192, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3606, file: !78, line: 582, baseType: !3624, size: 64, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3626, line: 43, size: 1472, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3635, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3625, file: !3626, line: 44, baseType: !224, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3625, file: !3626, line: 45, baseType: !196, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3625, file: !3626, line: 46, baseType: !228, size: 128, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3625, file: !3626, line: 47, baseType: !241, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3625, file: !3626, line: 48, baseType: !3633, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3625, file: !3626, line: 49, baseType: !3636, size: 320, offset: 320)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3637, line: 11, size: 320, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3638 = !{!3639, !3640, !3641, !3646}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3636, file: !3637, line: 16, baseType: !641, size: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3636, file: !3637, line: 17, baseType: !202, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3636, file: !3637, line: 18, baseType: !3642, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3636, file: !3637, line: 19, baseType: !190, size: 32, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3625, file: !3626, line: 50, baseType: !202, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3625, file: !3626, line: 51, baseType: !1439, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3625, file: !3626, line: 52, baseType: !1439, size: 64, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3625, file: !3626, line: 53, baseType: !1439, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3625, file: !3626, line: 54, baseType: !1439, size: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3625, file: !3626, line: 55, baseType: !1439, size: 64, offset: 960)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3625, file: !3626, line: 56, baseType: !202, size: 64, offset: 1024)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3625, file: !3626, line: 57, baseType: !202, size: 64, offset: 1088)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3625, file: !3626, line: 58, baseType: !202, size: 64, offset: 1152)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3625, file: !3626, line: 59, baseType: !202, size: 64, offset: 1216)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3625, file: !3626, line: 60, baseType: !202, size: 64, offset: 1280)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3625, file: !3626, line: 61, baseType: !216, size: 64, offset: 1344)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3625, file: !3626, line: 62, baseType: !489, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3625, file: !3626, line: 63, baseType: !489, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3606, file: !78, line: 583, baseType: !489, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3606, file: !78, line: 584, baseType: !489, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3606, file: !78, line: 585, baseType: !489, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3606, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3606, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3606, file: !78, line: 592, baseType: !1431, size: 512, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3606, file: !78, line: 593, baseType: !197, size: 64, offset: 1088)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3606, file: !78, line: 594, baseType: !2066, size: 256, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3606, file: !78, line: 595, baseType: !918, size: 128, offset: 1408)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3606, file: !78, line: 596, baseType: !3633, size: 64, offset: 1536)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3606, file: !78, line: 597, baseType: !749, size: 32, offset: 1600)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3606, file: !78, line: 598, baseType: !749, size: 32, offset: 1632)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3606, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3606, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3606, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3606, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3606, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3606, file: !78, line: 604, baseType: !489, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3606, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3606, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3606, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3606, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3606, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3606, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3606, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3606, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3606, file: !78, line: 613, baseType: !196, size: 32, offset: 1792)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3606, file: !78, line: 614, baseType: !196, size: 32, offset: 1824)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3606, file: !78, line: 615, baseType: !197, size: 64, offset: 1856)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3606, file: !78, line: 616, baseType: !197, size: 64, offset: 1920)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3606, file: !78, line: 617, baseType: !197, size: 64, offset: 1984)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3606, file: !78, line: 618, baseType: !197, size: 64, offset: 2048)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3606, file: !78, line: 620, baseType: !3694, size: 64, offset: 2112)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3695, file: !78, line: 537, baseType: !241)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3695, file: !78, line: 538, baseType: !5, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3695, file: !78, line: 540, baseType: !228, size: 128, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3695, file: !78, line: 543, baseType: !3701, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3606, file: !78, line: 621, baseType: !3704, size: 64, offset: 2176)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !216, !1583}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3606, file: !78, line: 622, baseType: !3708, size: 64, offset: 2240)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !217, file: !71, line: 486, baseType: !3711, size: 64, offset: 4096)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3720, !3721, !3722}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3712, file: !78, line: 643, baseType: !3491, size: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3712, file: !78, line: 644, baseType: !3494, size: 64, offset: 1472)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3712, file: !78, line: 645, baseType: !3717, size: 64, offset: 1536)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !216, !489}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3712, file: !78, line: 646, baseType: !3494, size: 64, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3712, file: !78, line: 647, baseType: !3485, size: 64, offset: 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3712, file: !78, line: 648, baseType: !3485, size: 64, offset: 1728)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !217, file: !71, line: 493, baseType: !3724, size: 64, offset: 4160)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !217, file: !71, line: 499, baseType: !228, size: 128, offset: 4224)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !217, file: !71, line: 502, baseType: !3728, size: 64, offset: 4352)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3730)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !217, file: !71, line: 504, baseType: !3732, size: 64, offset: 4416)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !217, file: !71, line: 505, baseType: !197, size: 64, offset: 4480)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !217, file: !71, line: 510, baseType: !197, size: 64, offset: 4544)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !217, file: !71, line: 511, baseType: !3736, size: 64, offset: 4608)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !217, file: !71, line: 513, baseType: !3740, size: 64, offset: 4672)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3741, file: !71, line: 293, baseType: !5, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3741, file: !71, line: 294, baseType: !202, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !217, file: !71, line: 515, baseType: !228, size: 128, offset: 4736)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !217, file: !71, line: 526, baseType: !3747, offset: 4864)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3748, line: 5, elements: !255)
!3748 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !217, file: !71, line: 528, baseType: !3750, size: 64, offset: 4864)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3752, line: 14, flags: DIFlagFwdDecl)
!3752 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !217, file: !71, line: 529, baseType: !3754, size: 64, offset: 4928)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3756, line: 17, size: 192, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3757 = !{!3758, !3759, !3842}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3755, file: !3756, line: 18, baseType: !3754, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3755, file: !3756, line: 19, baseType: !3760, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3762)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3756, line: 110, size: 1152, elements: !3763)
!3763 = !{!3764, !3768, !3772, !3778, !3784, !3788, !3792, !3797, !3801, !3802, !3806, !3810, !3814, !3825, !3826, !3827, !3828, !3838}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3762, file: !3756, line: 111, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!3754, !3754}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3762, file: !3756, line: 112, baseType: !3769, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !3754}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3762, file: !3756, line: 113, baseType: !3773, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!489, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3755)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3762, file: !3756, line: 114, baseType: !3779, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!2234, !3776, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3762, file: !3756, line: 116, baseType: !3785, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!489, !3776, !224}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3762, file: !3756, line: 118, baseType: !3789, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!196, !3776, !224, !5, !201, !328}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3762, file: !3756, line: 123, baseType: !3793, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!196, !3776, !224, !3796, !328}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3762, file: !3756, line: 126, baseType: !3798, size: 64, offset: 448)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!224, !3776}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3762, file: !3756, line: 127, baseType: !3798, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3762, file: !3756, line: 128, baseType: !3803, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3754, !3776}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3762, file: !3756, line: 130, baseType: !3807, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!3754, !3776, !3754}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3762, file: !3756, line: 133, baseType: !3811, size: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!3754, !3776, !224}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3762, file: !3756, line: 135, baseType: !3815, size: 64, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!196, !3776, !224, !224, !5, !5, !3818}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3756, line: 43, size: 640, elements: !3820)
!3820 = !{!3821, !3822, !3823}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3819, file: !3756, line: 44, baseType: !3754, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3819, file: !3756, line: 45, baseType: !5, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3819, file: !3756, line: 46, baseType: !3824, size: 512, offset: 128)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 512, elements: !1469)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3762, file: !3756, line: 140, baseType: !3807, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3762, file: !3756, line: 143, baseType: !3803, size: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3762, file: !3756, line: 145, baseType: !3765, size: 64, offset: 960)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3762, file: !3756, line: 146, baseType: !3829, size: 64, offset: 1024)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!196, !3776, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3756, line: 29, size: 128, elements: !3834)
!3834 = !{!3835, !3836, !3837}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3833, file: !3756, line: 30, baseType: !5, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3833, file: !3756, line: 31, baseType: !5, size: 32, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3833, file: !3756, line: 32, baseType: !3776, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3762, file: !3756, line: 148, baseType: !3839, size: 64, offset: 1088)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!196, !3776, !216}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3755, file: !3756, line: 20, baseType: !216, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !217, file: !71, line: 534, baseType: !512, size: 32, offset: 4992)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !217, file: !71, line: 535, baseType: !190, size: 32, offset: 5024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !217, file: !71, line: 537, baseType: !241, offset: 5056)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !217, file: !71, line: 538, baseType: !228, size: 128, offset: 5056)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !217, file: !71, line: 540, baseType: !3848, size: 64, offset: 5184)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3850, line: 54, size: 960, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3862, !3866, !3867, !3868, !3869, !3873, !3877, !3878}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3849, file: !3850, line: 55, baseType: !224, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3849, file: !3850, line: 56, baseType: !632, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3849, file: !3850, line: 58, baseType: !334, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3849, file: !3850, line: 59, baseType: !334, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3849, file: !3850, line: 60, baseType: !234, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3849, file: !3850, line: 62, baseType: !3476, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3849, file: !3850, line: 63, baseType: !3859, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!282, !216, !3483}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3849, file: !3850, line: 65, baseType: !3863, size: 64, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3848}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3849, file: !3850, line: 66, baseType: !3485, size: 64, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3849, file: !3850, line: 68, baseType: !3494, size: 64, offset: 576)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3849, file: !3850, line: 70, baseType: !3280, size: 64, offset: 640)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3849, file: !3850, line: 71, baseType: !3870, size: 64, offset: 704)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!2234, !216}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3849, file: !3850, line: 73, baseType: !3874, size: 64, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !216, !3312, !3313}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3849, file: !3850, line: 75, baseType: !3489, size: 64, offset: 832)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3849, file: !3850, line: 77, baseType: !3588, size: 64, offset: 896)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !217, file: !71, line: 541, baseType: !334, size: 64, offset: 5248)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !217, file: !71, line: 543, baseType: !3485, size: 64, offset: 5312)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !217, file: !71, line: 544, baseType: !3882, size: 64, offset: 5376)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !217, file: !71, line: 545, baseType: !3885, size: 64, offset: 5440)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !217, file: !71, line: 547, baseType: !489, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !217, file: !71, line: 548, baseType: !489, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !217, file: !71, line: 549, baseType: !489, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !217, file: !71, line: 550, baseType: !489, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_dev", scope: !213, file: !92, line: 372, baseType: !3892, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_device", file: !92, line: 461, size: 6016, elements: !3894)
!3894 = !{!3895, !3899, !3900, !3901, !3965, !3966, !3967, !3968, !3969, !3970}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3893, file: !92, line: 462, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3898)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_device_id", file: !92, line: 462, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3893, file: !92, line: 463, baseType: !224, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_cntrl", scope: !3893, file: !92, line: 464, baseType: !212, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ul_chan", scope: !3893, file: !92, line: 465, baseType: !3902, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_chan", file: !119, line: 538, size: 2880, elements: !3904)
!3904 = !{!3905, !3906, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3940, !3941, !3942, !3943, !3944, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3903, file: !119, line: 539, baseType: !224, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "buf_ring", scope: !3903, file: !119, line: 545, baseType: !3907, size: 768, offset: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_ring", file: !119, line: 485, size: 768, elements: !3908)
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_handle", scope: !3907, file: !119, line: 486, baseType: !1070, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_base", scope: !3907, file: !119, line: 487, baseType: !1070, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt_wp", scope: !3907, file: !119, line: 488, baseType: !3732, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pre_aligned", scope: !3907, file: !119, line: 489, baseType: !201, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3907, file: !119, line: 490, baseType: !201, size: 64, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !3907, file: !119, line: 491, baseType: !201, size: 64, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3907, file: !119, line: 492, baseType: !201, size: 64, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "el_size", scope: !3907, file: !119, line: 493, baseType: !328, size: 64, offset: 448)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3907, file: !119, line: 494, baseType: !328, size: 64, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3907, file: !119, line: 495, baseType: !328, size: 64, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_size", scope: !3907, file: !119, line: 496, baseType: !328, size: 64, offset: 640)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "db_addr", scope: !3907, file: !119, line: 497, baseType: !201, size: 64, offset: 704)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "tre_ring", scope: !3903, file: !119, line: 546, baseType: !3907, size: 768, offset: 832)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !3903, file: !119, line: 547, baseType: !190, size: 32, offset: 1600)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "er_index", scope: !3903, file: !119, line: 548, baseType: !190, size: 32, offset: 1632)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "intmod", scope: !3903, file: !119, line: 549, baseType: !190, size: 32, offset: 1664)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3903, file: !119, line: 550, baseType: !91, size: 32, offset: 1696)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3903, file: !119, line: 551, baseType: !98, size: 32, offset: 1728)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "db_cfg", scope: !3903, file: !119, line: 552, baseType: !3928, size: 256, offset: 1792)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_cfg", file: !119, line: 464, size: 256, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "reset_req", scope: !3928, file: !119, line: 465, baseType: !489, size: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "db_mode", scope: !3928, file: !119, line: 466, baseType: !489, size: 8, offset: 8)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "pollcfg", scope: !3928, file: !119, line: 467, baseType: !190, size: 32, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "brstmode", scope: !3928, file: !119, line: 468, baseType: !105, size: 32, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "db_val", scope: !3928, file: !119, line: 469, baseType: !1070, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "process_db", scope: !3928, file: !119, line: 470, baseType: !3936, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !212, !3939, !201, !1070}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ee_mask", scope: !3903, file: !119, line: 553, baseType: !109, size: 32, offset: 2048)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ch_state", scope: !3903, file: !119, line: 554, baseType: !118, size: 32, offset: 2080)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ccs", scope: !3903, file: !119, line: 555, baseType: !127, size: 32, offset: 2112)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_dev", scope: !3903, file: !119, line: 556, baseType: !3892, size: 64, offset: 2176)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_cb", scope: !3903, file: !119, line: 557, baseType: !3945, size: 64, offset: 2240)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3892, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_result", file: !92, line: 481, size: 192, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "buf_addr", scope: !3949, file: !92, line: 482, baseType: !201, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xferd", scope: !3949, file: !92, line: 483, baseType: !328, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3949, file: !92, line: 484, baseType: !98, size: 32, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "transaction_status", scope: !3949, file: !92, line: 485, baseType: !196, size: 32, offset: 160)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3903, file: !119, line: 558, baseType: !911, size: 192, offset: 2304)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3903, file: !119, line: 559, baseType: !1635, size: 192, offset: 2496)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3903, file: !119, line: 560, baseType: !941, offset: 2688)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3903, file: !119, line: 561, baseType: !228, size: 128, offset: 2688)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_notify", scope: !3903, file: !119, line: 562, baseType: !489, size: 8, offset: 2816)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "configured", scope: !3903, file: !119, line: 563, baseType: !489, size: 8, offset: 2824)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "offload_ch", scope: !3903, file: !119, line: 564, baseType: !489, size: 8, offset: 2832)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pre_alloc", scope: !3903, file: !119, line: 565, baseType: !489, size: 8, offset: 2840)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "auto_start", scope: !3903, file: !119, line: 566, baseType: !489, size: 8, offset: 2848)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !3903, file: !119, line: 567, baseType: !489, size: 8, offset: 2856)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_chan", scope: !3893, file: !92, line: 466, baseType: !3902, size: 64, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3893, file: !92, line: 467, baseType: !217, size: 5568, offset: 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !3893, file: !92, line: 468, baseType: !138, size: 32, offset: 5888)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "ul_chan_id", scope: !3893, file: !92, line: 469, baseType: !196, size: 32, offset: 5920)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dl_chan_id", scope: !3893, file: !92, line: 470, baseType: !196, size: 32, offset: 5952)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dev_wake", scope: !3893, file: !92, line: 471, baseType: !190, size: 32, offset: 5984)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dentry", scope: !213, file: !92, line: 373, baseType: !388, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !213, file: !92, line: 374, baseType: !201, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bhi", scope: !213, file: !92, line: 375, baseType: !201, size: 64, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bhie", scope: !213, file: !92, line: 376, baseType: !201, size: 64, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "wake_db", scope: !213, file: !92, line: 377, baseType: !201, size: 64, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "iova_start", scope: !213, file: !92, line: 379, baseType: !1070, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "iova_stop", scope: !213, file: !92, line: 380, baseType: !1070, size: 64, offset: 512)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "fw_image", scope: !213, file: !92, line: 381, baseType: !224, size: 64, offset: 576)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "edl_image", scope: !213, file: !92, line: 382, baseType: !224, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "rddm_size", scope: !213, file: !92, line: 383, baseType: !328, size: 64, offset: 704)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "sbl_size", scope: !213, file: !92, line: 384, baseType: !328, size: 64, offset: 768)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "seg_len", scope: !213, file: !92, line: 385, baseType: !328, size: 64, offset: 832)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fbc_image", scope: !213, file: !92, line: 386, baseType: !3984, size: 64, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_info", file: !92, line: 93, size: 192, elements: !3986)
!3986 = !{!3987, !3995, !4001}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_buf", scope: !3985, file: !92, line: 94, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_buf", file: !92, line: 497, size: 256, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3989, file: !92, line: 498, baseType: !201, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !92, line: 499, baseType: !224, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3989, file: !92, line: 500, baseType: !1070, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3989, file: !92, line: 501, baseType: !328, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bhi_vec", scope: !3985, file: !92, line: 96, baseType: !3996, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bhi_vec_entry", file: !119, line: 265, size: 128, elements: !3998)
!3998 = !{!3999, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3997, file: !119, line: 266, baseType: !197, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3997, file: !119, line: 267, baseType: !197, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3985, file: !92, line: 98, baseType: !190, size: 32, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "rddm_image", scope: !213, file: !92, line: 387, baseType: !3984, size: 64, offset: 960)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_chan", scope: !213, file: !92, line: 388, baseType: !3902, size: 64, offset: 1024)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_chans", scope: !213, file: !92, line: 389, baseType: !228, size: 128, offset: 1088)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !213, file: !92, line: 390, baseType: !707, size: 64, offset: 1216)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "max_chan", scope: !213, file: !92, line: 391, baseType: !190, size: 32, offset: 1280)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "total_ev_rings", scope: !213, file: !92, line: 392, baseType: !190, size: 32, offset: 1312)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ev_rings", scope: !213, file: !92, line: 393, baseType: !190, size: 32, offset: 1344)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "sw_ev_rings", scope: !213, file: !92, line: 394, baseType: !190, size: 32, offset: 1376)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_irqs", scope: !213, file: !92, line: 395, baseType: !190, size: 32, offset: 1408)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "family_number", scope: !213, file: !92, line: 396, baseType: !190, size: 32, offset: 1440)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "device_number", scope: !213, file: !92, line: 397, baseType: !190, size: 32, offset: 1472)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !213, file: !92, line: 398, baseType: !190, size: 32, offset: 1504)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !213, file: !92, line: 399, baseType: !190, size: 32, offset: 1536)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !213, file: !92, line: 400, baseType: !190, size: 32, offset: 1568)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "oem_pk_hash", scope: !213, file: !92, line: 401, baseType: !4017, size: 512, offset: 1600)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 512, elements: !1843)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_event", scope: !213, file: !92, line: 403, baseType: !4019, size: 64, offset: 2112)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_event", file: !119, line: 517, size: 1792, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4053, !4054, !4058, !4059, !4060}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_cntrl", scope: !4020, file: !119, line: 518, baseType: !212, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_chan", scope: !4020, file: !119, line: 519, baseType: !3902, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "er_index", scope: !4020, file: !119, line: 520, baseType: !190, size: 32, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "intmod", scope: !4020, file: !119, line: 521, baseType: !190, size: 32, offset: 160)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4020, file: !119, line: 522, baseType: !190, size: 32, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4020, file: !119, line: 523, baseType: !196, size: 32, offset: 224)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4020, file: !119, line: 524, baseType: !190, size: 32, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !4020, file: !119, line: 525, baseType: !142, size: 32, offset: 288)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ring", scope: !4020, file: !119, line: 526, baseType: !3907, size: 768, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "db_cfg", scope: !4020, file: !119, line: 527, baseType: !3928, size: 256, offset: 1088)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4020, file: !119, line: 528, baseType: !4033, size: 320, offset: 1344)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4034, line: 609, size: 320, elements: !4035)
!4034 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4035 = !{!4036, !4038, !4039, !4040, !4041, !4052}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4033, file: !4034, line: 611, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4033, file: !4034, line: 612, baseType: !202, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4033, file: !4034, line: 613, baseType: !749, size: 32, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4033, file: !4034, line: 614, baseType: !489, size: 8, offset: 160)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !4034, line: 615, baseType: !4042, size: 64, offset: 192)
!4042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4033, file: !4034, line: 615, size: 64, elements: !4043)
!4043 = !{!4044, !4048}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4042, file: !4034, line: 616, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !202}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4042, file: !4034, line: 617, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !4037}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4033, file: !4034, line: 619, baseType: !202, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4020, file: !119, line: 529, baseType: !241, offset: 1664)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "process_event", scope: !4020, file: !119, line: 530, baseType: !4055, size: 64, offset: 1664)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!196, !212, !4019, !190}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ring", scope: !4020, file: !119, line: 533, baseType: !489, size: 8, offset: 1728)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cl_manage", scope: !4020, file: !119, line: 534, baseType: !489, size: 8, offset: 1736)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "offload_ev", scope: !4020, file: !119, line: 535, baseType: !489, size: 8, offset: 1744)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_cmd", scope: !213, file: !92, line: 404, baseType: !4062, size: 64, offset: 2176)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_cmd", file: !119, line: 500, size: 768, elements: !4064)
!4064 = !{!4065, !4066}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ring", scope: !4063, file: !119, line: 501, baseType: !3907, size: 768)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4063, file: !119, line: 502, baseType: !241, offset: 768)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_ctxt", scope: !213, file: !92, line: 405, baseType: !4068, size: 64, offset: 2240)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_ctxt", file: !119, line: 251, size: 384, elements: !4070)
!4070 = !{!4071, !4082, !4093, !4104, !4105, !4106}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "er_ctxt", scope: !4069, file: !119, line: 252, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_event_ctxt", file: !119, line: 211, size: 352, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "intmod", scope: !4073, file: !119, line: 212, baseType: !192, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ertype", scope: !4073, file: !119, line: 213, baseType: !192, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "msivec", scope: !4073, file: !119, line: 214, baseType: !192, size: 32, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "rbase", scope: !4073, file: !119, line: 216, baseType: !198, size: 64, align: 32, offset: 96)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !4073, file: !119, line: 217, baseType: !198, size: 64, align: 32, offset: 160)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4073, file: !119, line: 218, baseType: !198, size: 64, align: 32, offset: 224)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4073, file: !119, line: 219, baseType: !198, size: 64, align: 32, offset: 288)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ctxt", scope: !4069, file: !119, line: 253, baseType: !4083, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_chan_ctxt", file: !119, line: 229, size: 352, elements: !4085)
!4085 = !{!4086, !4087, !4088, !4089, !4090, !4091, !4092}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "chcfg", scope: !4084, file: !119, line: 230, baseType: !192, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "chtype", scope: !4084, file: !119, line: 231, baseType: !192, size: 32, offset: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "erindex", scope: !4084, file: !119, line: 232, baseType: !192, size: 32, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "rbase", scope: !4084, file: !119, line: 234, baseType: !198, size: 64, align: 32, offset: 96)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !4084, file: !119, line: 235, baseType: !198, size: 64, align: 32, offset: 160)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4084, file: !119, line: 236, baseType: !198, size: 64, align: 32, offset: 224)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4084, file: !119, line: 237, baseType: !198, size: 64, align: 32, offset: 288)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctxt", scope: !4069, file: !119, line: 254, baseType: !4094, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_cmd_ctxt", file: !119, line: 240, size: 352, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !4095, file: !119, line: 241, baseType: !192, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !4095, file: !119, line: 242, baseType: !192, size: 32, offset: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !4095, file: !119, line: 243, baseType: !192, size: 32, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rbase", scope: !4095, file: !119, line: 245, baseType: !198, size: 64, align: 32, offset: 96)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !4095, file: !119, line: 246, baseType: !198, size: 64, align: 32, offset: 160)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4095, file: !119, line: 247, baseType: !198, size: 64, align: 32, offset: 224)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4095, file: !119, line: 248, baseType: !198, size: 64, align: 32, offset: 288)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "er_ctxt_addr", scope: !4069, file: !119, line: 255, baseType: !1070, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ctxt_addr", scope: !4069, file: !119, line: 256, baseType: !1070, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctxt_addr", scope: !4069, file: !119, line: 257, baseType: !1070, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pm_mutex", scope: !213, file: !92, line: 407, baseType: !911, size: 192, offset: 2304)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pm_lock", scope: !213, file: !92, line: 408, baseType: !941, offset: 2496)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !213, file: !92, line: 409, baseType: !190, size: 32, offset: 2496)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !213, file: !92, line: 410, baseType: !190, size: 32, offset: 2528)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "db_access", scope: !213, file: !92, line: 411, baseType: !190, size: 32, offset: 2560)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !213, file: !92, line: 412, baseType: !146, size: 32, offset: 2592)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dev_state", scope: !213, file: !92, line: 413, baseType: !159, size: 32, offset: 2624)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dev_wake", scope: !213, file: !92, line: 414, baseType: !749, size: 32, offset: 2656)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "pending_pkts", scope: !213, file: !92, line: 415, baseType: !749, size: 32, offset: 2688)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "M0", scope: !213, file: !92, line: 416, baseType: !190, size: 32, offset: 2720)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "M2", scope: !213, file: !92, line: 416, baseType: !190, size: 32, offset: 2752)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "M3", scope: !213, file: !92, line: 416, baseType: !190, size: 32, offset: 2784)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "transition_list", scope: !213, file: !92, line: 417, baseType: !228, size: 128, offset: 2816)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !213, file: !92, line: 418, baseType: !241, offset: 2944)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "wlock", scope: !213, file: !92, line: 419, baseType: !241, offset: 2944)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "mhi_link_info", scope: !213, file: !92, line: 420, baseType: !4123, size: 64, offset: 2944)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_link_info", file: !92, line: 106, size: 64, elements: !4124)
!4124 = !{!4125, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "target_link_speed", scope: !4123, file: !92, line: 107, baseType: !5, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "target_link_width", scope: !4123, file: !92, line: 108, baseType: !5, size: 32, offset: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "st_worker", scope: !213, file: !92, line: 421, baseType: !2066, size: 256, offset: 3008)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "state_event", scope: !213, file: !92, line: 422, baseType: !918, size: 128, offset: 3264)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "status_cb", scope: !213, file: !92, line: 424, baseType: !4130, size: 64, offset: 3392)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !212, !171}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "wake_get", scope: !213, file: !92, line: 426, baseType: !4134, size: 64, offset: 3456)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !212, !489}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "wake_put", scope: !213, file: !92, line: 427, baseType: !4134, size: 64, offset: 3520)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "wake_toggle", scope: !213, file: !92, line: 428, baseType: !4139, size: 64, offset: 3584)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !212}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_get", scope: !213, file: !92, line: 429, baseType: !4143, size: 64, offset: 3648)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!196, !212}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_put", scope: !213, file: !92, line: 430, baseType: !4139, size: 64, offset: 3712)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "map_single", scope: !213, file: !92, line: 431, baseType: !4148, size: 64, offset: 3776)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!196, !212, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mhi_buf_info", file: !119, line: 505, size: 448, elements: !4153)
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "v_addr", scope: !4152, file: !119, line: 506, baseType: !201, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bb_addr", scope: !4152, file: !119, line: 507, baseType: !201, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4152, file: !119, line: 508, baseType: !201, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "cb_buf", scope: !4152, file: !119, line: 509, baseType: !201, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "p_addr", scope: !4152, file: !119, line: 510, baseType: !1070, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4152, file: !119, line: 511, baseType: !328, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4152, file: !119, line: 512, baseType: !98, size: 32, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4152, file: !119, line: 513, baseType: !489, size: 8, offset: 416)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "pre_mapped", scope: !4152, file: !119, line: 514, baseType: !489, size: 8, offset: 424)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_single", scope: !213, file: !92, line: 433, baseType: !4164, size: 64, offset: 3840)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !212, !4151}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "read_reg", scope: !213, file: !92, line: 435, baseType: !4168, size: 64, offset: 3904)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!196, !212, !201, !1554}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write_reg", scope: !213, file: !92, line: 437, baseType: !4172, size: 64, offset: 3968)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !212, !201, !190}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_len", scope: !213, file: !92, line: 440, baseType: !328, size: 64, offset: 4032)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_buf", scope: !213, file: !92, line: 441, baseType: !489, size: 8, offset: 4096)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "fbc_download", scope: !213, file: !92, line: 442, baseType: !489, size: 8, offset: 4104)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "pre_init", scope: !213, file: !92, line: 443, baseType: !489, size: 8, offset: 4112)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "wake_set", scope: !213, file: !92, line: 444, baseType: !489, size: 8, offset: 4120)
!4180 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !209, file: !1, line: 22, type: !212)
!4181 = !DILocation(line: 22, column: 46, scope: !209)
!4182 = !DILocalVariable(name: "img_info", arg: 2, scope: !209, file: !1, line: 23, type: !3984)
!4183 = !DILocation(line: 23, column: 28, scope: !209)
!4184 = !DILocalVariable(name: "mhi_buf", scope: !209, file: !1, line: 25, type: !3988)
!4185 = !DILocation(line: 25, column: 18, scope: !209)
!4186 = !DILocation(line: 25, column: 28, scope: !209)
!4187 = !DILocation(line: 25, column: 38, scope: !209)
!4188 = !DILocalVariable(name: "bhi_vec", scope: !209, file: !1, line: 26, type: !3996)
!4189 = !DILocation(line: 26, column: 24, scope: !209)
!4190 = !DILocation(line: 26, column: 34, scope: !209)
!4191 = !DILocation(line: 26, column: 44, scope: !209)
!4192 = !DILocalVariable(name: "base", scope: !209, file: !1, line: 27, type: !201)
!4193 = !DILocation(line: 27, column: 16, scope: !209)
!4194 = !DILocation(line: 27, column: 23, scope: !209)
!4195 = !DILocation(line: 27, column: 34, scope: !209)
!4196 = !DILocalVariable(name: "dev", scope: !209, file: !1, line: 28, type: !216)
!4197 = !DILocation(line: 28, column: 17, scope: !209)
!4198 = !DILocation(line: 28, column: 24, scope: !209)
!4199 = !DILocation(line: 28, column: 35, scope: !209)
!4200 = !DILocation(line: 28, column: 44, scope: !209)
!4201 = !DILocalVariable(name: "sequence_id", scope: !209, file: !1, line: 29, type: !190)
!4202 = !DILocation(line: 29, column: 6, scope: !209)
!4203 = !DILocalVariable(name: "i", scope: !209, file: !1, line: 30, type: !5)
!4204 = !DILocation(line: 30, column: 15, scope: !209)
!4205 = !DILocation(line: 32, column: 9, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !209, file: !1, line: 32, column: 2)
!4207 = !DILocation(line: 32, column: 7, scope: !4206)
!4208 = !DILocation(line: 32, column: 14, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4206, file: !1, line: 32, column: 2)
!4210 = !DILocation(line: 32, column: 18, scope: !4209)
!4211 = !DILocation(line: 32, column: 28, scope: !4209)
!4212 = !DILocation(line: 32, column: 36, scope: !4209)
!4213 = !DILocation(line: 32, column: 16, scope: !4209)
!4214 = !DILocation(line: 32, column: 2, scope: !4206)
!4215 = !DILocation(line: 33, column: 23, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 32, column: 68)
!4217 = !DILocation(line: 33, column: 32, scope: !4216)
!4218 = !DILocation(line: 33, column: 3, scope: !4216)
!4219 = !DILocation(line: 33, column: 12, scope: !4216)
!4220 = !DILocation(line: 33, column: 21, scope: !4216)
!4221 = !DILocation(line: 34, column: 19, scope: !4216)
!4222 = !DILocation(line: 34, column: 28, scope: !4216)
!4223 = !DILocation(line: 34, column: 3, scope: !4216)
!4224 = !DILocation(line: 34, column: 12, scope: !4216)
!4225 = !DILocation(line: 34, column: 17, scope: !4216)
!4226 = !DILocation(line: 35, column: 2, scope: !4216)
!4227 = !DILocation(line: 32, column: 42, scope: !4209)
!4228 = !DILocation(line: 32, column: 53, scope: !4209)
!4229 = !DILocation(line: 32, column: 64, scope: !4209)
!4230 = !DILocation(line: 32, column: 2, scope: !4209)
!4231 = distinct !{!4231, !4214, !4232}
!4232 = !DILocation(line: 35, column: 2, scope: !4206)
!4233 = !DILocation(line: 39, column: 16, scope: !209)
!4234 = !DILocation(line: 39, column: 27, scope: !209)
!4235 = !DILocation(line: 40, column: 9, scope: !209)
!4236 = !DILocation(line: 39, column: 2, scope: !209)
!4237 = !DILocation(line: 42, column: 16, scope: !209)
!4238 = !DILocation(line: 42, column: 27, scope: !209)
!4239 = !DILocation(line: 43, column: 9, scope: !209)
!4240 = !DILocation(line: 42, column: 2, scope: !209)
!4241 = !DILocation(line: 45, column: 16, scope: !209)
!4242 = !DILocation(line: 45, column: 27, scope: !209)
!4243 = !DILocation(line: 45, column: 54, scope: !209)
!4244 = !DILocation(line: 45, column: 63, scope: !209)
!4245 = !DILocation(line: 45, column: 2, scope: !209)
!4246 = !DILocation(line: 46, column: 16, scope: !209)
!4247 = !DILocation(line: 46, column: 14, scope: !209)
!4248 = !DILocation(line: 48, column: 22, scope: !209)
!4249 = !DILocation(line: 48, column: 33, scope: !209)
!4250 = !DILocation(line: 50, column: 8, scope: !209)
!4251 = !DILocation(line: 48, column: 2, scope: !209)
!4252 = !DILocation(line: 54, column: 1, scope: !209)
!4253 = distinct !DISubprogram(name: "prandom_u32_max", scope: !4254, file: !4254, line: 94, type: !4255, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4254 = !DIFile(filename: "./include/linux/prandom.h", directory: "/home/lizy2001/genbc/linux")
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!190, !190}
!4257 = !DILocalVariable(name: "ep_ro", arg: 1, scope: !4253, file: !4254, line: 94, type: !190)
!4258 = !DILocation(line: 94, column: 39, scope: !4253)
!4259 = !DILocation(line: 96, column: 22, scope: !4253)
!4260 = !DILocation(line: 96, column: 16, scope: !4253)
!4261 = !DILocation(line: 96, column: 38, scope: !4253)
!4262 = !DILocation(line: 96, column: 36, scope: !4253)
!4263 = !DILocation(line: 96, column: 45, scope: !4253)
!4264 = !DILocation(line: 96, column: 9, scope: !4253)
!4265 = !DILocation(line: 96, column: 2, scope: !4253)
!4266 = distinct !DISubprogram(name: "mhi_download_rddm_img", scope: !1, file: !1, line: 150, type: !4267, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!196, !212, !489}
!4269 = !DILocalVariable(name: "m", arg: 1, scope: !4270, file: !4271, line: 363, type: !2934)
!4270 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4271, file: !4271, line: 363, type: !4272, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4271 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!202, !2934}
!4274 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 162, column: 2, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !1, line: 162, column: 2)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !1, line: 162, column: 2)
!4278 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 162, column: 2)
!4279 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 162, column: 2, scope: !4278)
!4281 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4266, file: !1, line: 150, type: !212)
!4282 = !DILocation(line: 150, column: 50, scope: !4266)
!4283 = !DILocalVariable(name: "in_panic", arg: 2, scope: !4266, file: !1, line: 150, type: !489)
!4284 = !DILocation(line: 150, column: 66, scope: !4266)
!4285 = !DILocalVariable(name: "base", scope: !4266, file: !1, line: 152, type: !201)
!4286 = !DILocation(line: 152, column: 16, scope: !4266)
!4287 = !DILocation(line: 152, column: 23, scope: !4266)
!4288 = !DILocation(line: 152, column: 34, scope: !4266)
!4289 = !DILocalVariable(name: "dev", scope: !4266, file: !1, line: 153, type: !216)
!4290 = !DILocation(line: 153, column: 17, scope: !4266)
!4291 = !DILocation(line: 153, column: 24, scope: !4266)
!4292 = !DILocation(line: 153, column: 35, scope: !4266)
!4293 = !DILocation(line: 153, column: 44, scope: !4266)
!4294 = !DILocalVariable(name: "rx_status", scope: !4266, file: !1, line: 154, type: !190)
!4295 = !DILocation(line: 154, column: 6, scope: !4266)
!4296 = !DILocation(line: 156, column: 6, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 156, column: 6)
!4298 = !DILocation(line: 156, column: 6, scope: !4266)
!4299 = !DILocation(line: 157, column: 39, scope: !4297)
!4300 = !DILocation(line: 157, column: 10, scope: !4297)
!4301 = !DILocation(line: 157, column: 3, scope: !4297)
!4302 = !DILocalVariable(name: "__ret", scope: !4278, file: !1, line: 162, type: !200)
!4303 = !DILocation(line: 162, column: 2, scope: !4278)
!4304 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !4280)
!4305 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 365, column: 6)
!4306 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !4280)
!4307 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !4280)
!4308 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !4280)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !4271, line: 366, column: 7)
!4310 = distinct !DILexicalBlock(scope: !4305, file: !4271, line: 365, column: 31)
!4311 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !4280)
!4312 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !4280)
!4313 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !4280)
!4314 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !4280)
!4315 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !4280)
!4316 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !4280)
!4317 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !4280)
!4318 = distinct !DILexicalBlock(scope: !4305, file: !4271, line: 369, column: 9)
!4319 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !4280)
!4320 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !4280)
!4321 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !4280)
!4322 = !DILocation(line: 162, column: 2, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4278, file: !1, line: 162, column: 2)
!4324 = !DILocation(line: 162, column: 2, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4323, file: !1, line: 162, column: 2)
!4326 = !DILocalVariable(name: "__cond", scope: !4327, file: !1, line: 162, type: !489)
!4327 = distinct !DILexicalBlock(scope: !4277, file: !1, line: 162, column: 2)
!4328 = !DILocation(line: 162, column: 2, scope: !4327)
!4329 = !DILocation(line: 162, column: 2, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !1, line: 162, column: 2)
!4331 = !DILocation(line: 162, column: 2, scope: !4277)
!4332 = !DILocalVariable(name: "__wq_entry", scope: !4276, file: !1, line: 162, type: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !919, line: 29, size: 320, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4343}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4333, file: !919, line: 30, baseType: !5, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4333, file: !919, line: 31, baseType: !201, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4333, file: !919, line: 32, baseType: !4338, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !919, line: 16, baseType: !4339)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!196, !4342, !5, !196, !201}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4333, file: !919, line: 33, baseType: !228, size: 128, offset: 192)
!4344 = !DILocation(line: 162, column: 2, scope: !4276)
!4345 = !DILocalVariable(name: "__ret", scope: !4276, file: !1, line: 162, type: !200)
!4346 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !4275)
!4347 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !4275)
!4348 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !4275)
!4349 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !4275)
!4350 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !4275)
!4351 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !4275)
!4352 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !4275)
!4353 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !4275)
!4354 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !4275)
!4355 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !4275)
!4356 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !4275)
!4357 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !4275)
!4358 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !4275)
!4359 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !4275)
!4360 = !DILocalVariable(name: "__int", scope: !4361, file: !1, line: 162, type: !200)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !1, line: 162, column: 2)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !1, line: 162, column: 2)
!4363 = distinct !DILexicalBlock(scope: !4276, file: !1, line: 162, column: 2)
!4364 = !DILocation(line: 162, column: 2, scope: !4361)
!4365 = !DILocalVariable(name: "__cond", scope: !4366, file: !1, line: 162, type: !489)
!4366 = distinct !DILexicalBlock(scope: !4367, file: !1, line: 162, column: 2)
!4367 = distinct !DILexicalBlock(scope: !4361, file: !1, line: 162, column: 2)
!4368 = !DILocation(line: 162, column: 2, scope: !4366)
!4369 = !DILocation(line: 162, column: 2, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4366, file: !1, line: 162, column: 2)
!4371 = !DILocation(line: 162, column: 2, scope: !4367)
!4372 = !DILocation(line: 162, column: 2, scope: !4362)
!4373 = distinct !{!4373, !4374, !4374}
!4374 = !DILocation(line: 162, column: 2, scope: !4363)
!4375 = !DILabel(scope: !4276, name: "__out", file: !1, line: 162)
!4376 = !DILocation(line: 170, column: 10, scope: !4266)
!4377 = !DILocation(line: 170, column: 20, scope: !4266)
!4378 = !DILocation(line: 170, column: 9, scope: !4266)
!4379 = !DILocation(line: 170, column: 2, scope: !4266)
!4380 = !DILocation(line: 171, column: 1, scope: !4266)
!4381 = distinct !DISubprogram(name: "__mhi_download_rddm_in_panic", scope: !1, file: !1, line: 57, type: !4144, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4382 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4381, file: !1, line: 57, type: !212)
!4383 = !DILocation(line: 57, column: 64, scope: !4381)
!4384 = !DILocalVariable(name: "ret", scope: !4381, file: !1, line: 59, type: !196)
!4385 = !DILocation(line: 59, column: 6, scope: !4381)
!4386 = !DILocalVariable(name: "rx_status", scope: !4381, file: !1, line: 60, type: !190)
!4387 = !DILocation(line: 60, column: 6, scope: !4381)
!4388 = !DILocalVariable(name: "ee", scope: !4381, file: !1, line: 61, type: !146)
!4389 = !DILocation(line: 61, column: 19, scope: !4381)
!4390 = !DILocalVariable(name: "delayus", scope: !4381, file: !1, line: 62, type: !4391)
!4391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4392 = !DILocation(line: 62, column: 12, scope: !4381)
!4393 = !DILocalVariable(name: "retry", scope: !4381, file: !1, line: 63, type: !190)
!4394 = !DILocation(line: 63, column: 6, scope: !4381)
!4395 = !DILocation(line: 63, column: 15, scope: !4381)
!4396 = !DILocation(line: 63, column: 26, scope: !4381)
!4397 = !DILocation(line: 63, column: 37, scope: !4381)
!4398 = !DILocation(line: 63, column: 45, scope: !4381)
!4399 = !DILocalVariable(name: "rddm_timeout_us", scope: !4381, file: !1, line: 64, type: !4391)
!4400 = !DILocation(line: 64, column: 12, scope: !4381)
!4401 = !DILocalVariable(name: "rddm_retry", scope: !4381, file: !1, line: 65, type: !196)
!4402 = !DILocation(line: 65, column: 6, scope: !4381)
!4403 = !DILocalVariable(name: "base", scope: !4381, file: !1, line: 66, type: !201)
!4404 = !DILocation(line: 66, column: 16, scope: !4381)
!4405 = !DILocation(line: 66, column: 23, scope: !4381)
!4406 = !DILocation(line: 66, column: 34, scope: !4381)
!4407 = !DILocalVariable(name: "dev", scope: !4381, file: !1, line: 67, type: !216)
!4408 = !DILocation(line: 67, column: 17, scope: !4381)
!4409 = !DILocation(line: 67, column: 24, scope: !4381)
!4410 = !DILocation(line: 67, column: 35, scope: !4381)
!4411 = !DILocation(line: 67, column: 44, scope: !4381)
!4412 = !DILocation(line: 84, column: 2, scope: !4381)
!4413 = !DILocation(line: 84, column: 13, scope: !4381)
!4414 = !DILocation(line: 84, column: 22, scope: !4381)
!4415 = !DILocation(line: 86, column: 2, scope: !4381)
!4416 = !{i32 -2141519350}
!4417 = !DILocation(line: 94, column: 24, scope: !4381)
!4418 = !DILocation(line: 94, column: 7, scope: !4381)
!4419 = !DILocation(line: 94, column: 5, scope: !4381)
!4420 = !DILocation(line: 95, column: 6, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4381, file: !1, line: 95, column: 6)
!4422 = !DILocation(line: 95, column: 9, scope: !4421)
!4423 = !DILocation(line: 95, column: 6, scope: !4381)
!4424 = !DILocation(line: 97, column: 21, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4421, file: !1, line: 95, column: 25)
!4426 = !DILocation(line: 97, column: 3, scope: !4425)
!4427 = !DILocation(line: 100, column: 3, scope: !4425)
!4428 = !DILocation(line: 100, column: 20, scope: !4425)
!4429 = !DILocation(line: 101, column: 26, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !1, line: 100, column: 24)
!4431 = !DILocation(line: 101, column: 9, scope: !4430)
!4432 = !DILocation(line: 101, column: 7, scope: !4430)
!4433 = !DILocation(line: 102, column: 8, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !1, line: 102, column: 8)
!4435 = !DILocation(line: 102, column: 11, scope: !4434)
!4436 = !DILocation(line: 102, column: 8, scope: !4430)
!4437 = !DILocation(line: 103, column: 5, scope: !4434)
!4438 = !DILocation(line: 105, column: 4, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !1, line: 105, column: 4)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !1, line: 105, column: 4)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !1, line: 105, column: 4)
!4442 = distinct !DILexicalBlock(scope: !4430, file: !1, line: 105, column: 4)
!4443 = distinct !{!4443, !4427, !4444}
!4444 = !DILocation(line: 106, column: 3, scope: !4425)
!4445 = !DILocation(line: 108, column: 7, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4425, file: !1, line: 108, column: 7)
!4447 = !DILocation(line: 108, column: 18, scope: !4446)
!4448 = !DILocation(line: 108, column: 7, scope: !4425)
!4449 = !DILocation(line: 112, column: 18, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !1, line: 108, column: 24)
!4451 = !DILocation(line: 112, column: 29, scope: !4450)
!4452 = !DILocation(line: 112, column: 40, scope: !4450)
!4453 = !DILocation(line: 112, column: 4, scope: !4450)
!4454 = !DILocation(line: 115, column: 4, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !1, line: 115, column: 4)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !1, line: 115, column: 4)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !1, line: 115, column: 4)
!4458 = distinct !DILexicalBlock(scope: !4450, file: !1, line: 115, column: 4)
!4459 = !DILocation(line: 116, column: 3, scope: !4450)
!4460 = !DILocation(line: 118, column: 25, scope: !4425)
!4461 = !DILocation(line: 118, column: 8, scope: !4425)
!4462 = !DILocation(line: 118, column: 6, scope: !4425)
!4463 = !DILocation(line: 119, column: 2, scope: !4425)
!4464 = !DILocation(line: 125, column: 2, scope: !4381)
!4465 = !DILocation(line: 125, column: 14, scope: !4381)
!4466 = !DILocation(line: 126, column: 28, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4381, file: !1, line: 125, column: 18)
!4468 = !DILocation(line: 126, column: 39, scope: !4467)
!4469 = !DILocation(line: 126, column: 9, scope: !4467)
!4470 = !DILocation(line: 126, column: 7, scope: !4467)
!4471 = !DILocation(line: 130, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4467, file: !1, line: 130, column: 7)
!4473 = !DILocation(line: 130, column: 7, scope: !4467)
!4474 = !DILocation(line: 131, column: 4, scope: !4472)
!4475 = !DILocation(line: 133, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4467, file: !1, line: 133, column: 7)
!4477 = !DILocation(line: 133, column: 17, scope: !4476)
!4478 = !DILocation(line: 133, column: 7, scope: !4467)
!4479 = !DILocation(line: 134, column: 4, scope: !4476)
!4480 = !DILocation(line: 136, column: 3, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 136, column: 3)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !1, line: 136, column: 3)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !1, line: 136, column: 3)
!4484 = distinct !DILexicalBlock(scope: !4467, file: !1, line: 136, column: 3)
!4485 = distinct !{!4485, !4464, !4486}
!4486 = !DILocation(line: 137, column: 2, scope: !4381)
!4487 = !DILocation(line: 139, column: 24, scope: !4381)
!4488 = !DILocation(line: 139, column: 7, scope: !4381)
!4489 = !DILocation(line: 139, column: 5, scope: !4381)
!4490 = !DILocation(line: 140, column: 21, scope: !4381)
!4491 = !DILocation(line: 140, column: 32, scope: !4381)
!4492 = !DILocation(line: 140, column: 8, scope: !4381)
!4493 = !DILocation(line: 140, column: 6, scope: !4381)
!4494 = !DILocation(line: 142, column: 2, scope: !4381)
!4495 = !DILocation(line: 143, column: 2, scope: !4381)
!4496 = !DILocation(line: 144, column: 2, scope: !4381)
!4497 = !DILocation(line: 146, column: 2, scope: !4381)
!4498 = !DILocation(line: 147, column: 1, scope: !4381)
!4499 = distinct !DISubprogram(name: "mhi_free_bhie_table", scope: !1, file: !1, line: 293, type: !210, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4500 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4499, file: !1, line: 293, type: !212)
!4501 = !DILocation(line: 293, column: 49, scope: !4499)
!4502 = !DILocalVariable(name: "image_info", arg: 2, scope: !4499, file: !1, line: 294, type: !3984)
!4503 = !DILocation(line: 294, column: 24, scope: !4499)
!4504 = !DILocalVariable(name: "i", scope: !4499, file: !1, line: 296, type: !196)
!4505 = !DILocation(line: 296, column: 6, scope: !4499)
!4506 = !DILocalVariable(name: "mhi_buf", scope: !4499, file: !1, line: 297, type: !3988)
!4507 = !DILocation(line: 297, column: 18, scope: !4499)
!4508 = !DILocation(line: 297, column: 28, scope: !4499)
!4509 = !DILocation(line: 297, column: 40, scope: !4499)
!4510 = !DILocation(line: 299, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4499, file: !1, line: 299, column: 2)
!4512 = !DILocation(line: 299, column: 7, scope: !4511)
!4513 = !DILocation(line: 299, column: 14, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4511, file: !1, line: 299, column: 2)
!4515 = !DILocation(line: 299, column: 18, scope: !4514)
!4516 = !DILocation(line: 299, column: 30, scope: !4514)
!4517 = !DILocation(line: 299, column: 16, scope: !4514)
!4518 = !DILocation(line: 299, column: 2, scope: !4511)
!4519 = !DILocation(line: 300, column: 21, scope: !4514)
!4520 = !DILocation(line: 300, column: 32, scope: !4514)
!4521 = !DILocation(line: 300, column: 41, scope: !4514)
!4522 = !DILocation(line: 300, column: 46, scope: !4514)
!4523 = !DILocation(line: 300, column: 55, scope: !4514)
!4524 = !DILocation(line: 301, column: 7, scope: !4514)
!4525 = !DILocation(line: 301, column: 16, scope: !4514)
!4526 = !DILocation(line: 300, column: 3, scope: !4514)
!4527 = !DILocation(line: 299, column: 40, scope: !4514)
!4528 = !DILocation(line: 299, column: 51, scope: !4514)
!4529 = !DILocation(line: 299, column: 2, scope: !4514)
!4530 = distinct !{!4530, !4518, !4531}
!4531 = !DILocation(line: 301, column: 24, scope: !4511)
!4532 = !DILocation(line: 303, column: 8, scope: !4499)
!4533 = !DILocation(line: 303, column: 20, scope: !4499)
!4534 = !DILocation(line: 303, column: 2, scope: !4499)
!4535 = !DILocation(line: 304, column: 8, scope: !4499)
!4536 = !DILocation(line: 304, column: 2, scope: !4499)
!4537 = !DILocation(line: 305, column: 1, scope: !4499)
!4538 = distinct !DISubprogram(name: "mhi_free_coherent", scope: !119, file: !119, line: 690, type: !4539, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !212, !328, !201, !1070}
!4541 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4538, file: !119, line: 690, type: !212)
!4542 = !DILocation(line: 690, column: 61, scope: !4538)
!4543 = !DILocalVariable(name: "size", arg: 2, scope: !4538, file: !119, line: 691, type: !328)
!4544 = !DILocation(line: 691, column: 17, scope: !4538)
!4545 = !DILocalVariable(name: "vaddr", arg: 3, scope: !4538, file: !119, line: 692, type: !201)
!4546 = !DILocation(line: 692, column: 16, scope: !4538)
!4547 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !4538, file: !119, line: 693, type: !1070)
!4548 = !DILocation(line: 693, column: 21, scope: !4538)
!4549 = !DILocation(line: 695, column: 20, scope: !4538)
!4550 = !DILocation(line: 695, column: 31, scope: !4538)
!4551 = !DILocation(line: 695, column: 42, scope: !4538)
!4552 = !DILocation(line: 695, column: 48, scope: !4538)
!4553 = !DILocation(line: 695, column: 55, scope: !4538)
!4554 = !DILocation(line: 695, column: 2, scope: !4538)
!4555 = !DILocation(line: 696, column: 1, scope: !4538)
!4556 = distinct !DISubprogram(name: "mhi_alloc_bhie_table", scope: !1, file: !1, line: 307, type: !4557, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!196, !212, !4559, !328}
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!4560 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4556, file: !1, line: 307, type: !212)
!4561 = !DILocation(line: 307, column: 49, scope: !4556)
!4562 = !DILocalVariable(name: "image_info", arg: 2, scope: !4556, file: !1, line: 308, type: !4559)
!4563 = !DILocation(line: 308, column: 25, scope: !4556)
!4564 = !DILocalVariable(name: "alloc_size", arg: 3, scope: !4556, file: !1, line: 309, type: !328)
!4565 = !DILocation(line: 309, column: 12, scope: !4556)
!4566 = !DILocalVariable(name: "seg_size", scope: !4556, file: !1, line: 311, type: !328)
!4567 = !DILocation(line: 311, column: 9, scope: !4556)
!4568 = !DILocation(line: 311, column: 20, scope: !4556)
!4569 = !DILocation(line: 311, column: 31, scope: !4556)
!4570 = !DILocalVariable(name: "segments", scope: !4556, file: !1, line: 312, type: !196)
!4571 = !DILocation(line: 312, column: 6, scope: !4556)
!4572 = !DILocation(line: 312, column: 17, scope: !4556)
!4573 = !DILocation(line: 312, column: 52, scope: !4556)
!4574 = !DILocalVariable(name: "i", scope: !4556, file: !1, line: 313, type: !196)
!4575 = !DILocation(line: 313, column: 6, scope: !4556)
!4576 = !DILocalVariable(name: "img_info", scope: !4556, file: !1, line: 314, type: !3984)
!4577 = !DILocation(line: 314, column: 21, scope: !4556)
!4578 = !DILocalVariable(name: "mhi_buf", scope: !4556, file: !1, line: 315, type: !3988)
!4579 = !DILocation(line: 315, column: 18, scope: !4556)
!4580 = !DILocation(line: 317, column: 13, scope: !4556)
!4581 = !DILocation(line: 317, column: 11, scope: !4556)
!4582 = !DILocation(line: 318, column: 7, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4556, file: !1, line: 318, column: 6)
!4584 = !DILocation(line: 318, column: 6, scope: !4556)
!4585 = !DILocation(line: 319, column: 3, scope: !4583)
!4586 = !DILocation(line: 322, column: 30, scope: !4556)
!4587 = !DILocation(line: 322, column: 22, scope: !4556)
!4588 = !DILocation(line: 322, column: 2, scope: !4556)
!4589 = !DILocation(line: 322, column: 12, scope: !4556)
!4590 = !DILocation(line: 322, column: 20, scope: !4556)
!4591 = !DILocation(line: 324, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4556, file: !1, line: 324, column: 6)
!4593 = !DILocation(line: 324, column: 17, scope: !4592)
!4594 = !DILocation(line: 324, column: 6, scope: !4556)
!4595 = !DILocation(line: 325, column: 3, scope: !4592)
!4596 = !DILocation(line: 328, column: 12, scope: !4556)
!4597 = !DILocation(line: 328, column: 22, scope: !4556)
!4598 = !DILocation(line: 328, column: 10, scope: !4556)
!4599 = !DILocation(line: 329, column: 9, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4556, file: !1, line: 329, column: 2)
!4601 = !DILocation(line: 329, column: 7, scope: !4600)
!4602 = !DILocation(line: 329, column: 14, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !1, line: 329, column: 2)
!4604 = !DILocation(line: 329, column: 18, scope: !4603)
!4605 = !DILocation(line: 329, column: 16, scope: !4603)
!4606 = !DILocation(line: 329, column: 2, scope: !4600)
!4607 = !DILocalVariable(name: "vec_size", scope: !4608, file: !1, line: 330, type: !328)
!4608 = distinct !DILexicalBlock(scope: !4603, file: !1, line: 329, column: 44)
!4609 = !DILocation(line: 330, column: 10, scope: !4608)
!4610 = !DILocation(line: 330, column: 21, scope: !4608)
!4611 = !DILocation(line: 333, column: 7, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 333, column: 7)
!4613 = !DILocation(line: 333, column: 12, scope: !4612)
!4614 = !DILocation(line: 333, column: 21, scope: !4612)
!4615 = !DILocation(line: 333, column: 9, scope: !4612)
!4616 = !DILocation(line: 333, column: 7, scope: !4608)
!4617 = !DILocation(line: 334, column: 46, scope: !4612)
!4618 = !DILocation(line: 334, column: 44, scope: !4612)
!4619 = !DILocation(line: 334, column: 13, scope: !4612)
!4620 = !DILocation(line: 334, column: 4, scope: !4612)
!4621 = !DILocation(line: 336, column: 18, scope: !4608)
!4622 = !DILocation(line: 336, column: 3, scope: !4608)
!4623 = !DILocation(line: 336, column: 12, scope: !4608)
!4624 = !DILocation(line: 336, column: 16, scope: !4608)
!4625 = !DILocation(line: 337, column: 37, scope: !4608)
!4626 = !DILocation(line: 337, column: 48, scope: !4608)
!4627 = !DILocation(line: 338, column: 10, scope: !4608)
!4628 = !DILocation(line: 338, column: 19, scope: !4608)
!4629 = !DILocation(line: 337, column: 18, scope: !4608)
!4630 = !DILocation(line: 337, column: 3, scope: !4608)
!4631 = !DILocation(line: 337, column: 12, scope: !4608)
!4632 = !DILocation(line: 337, column: 16, scope: !4608)
!4633 = !DILocation(line: 340, column: 8, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 340, column: 7)
!4635 = !DILocation(line: 340, column: 17, scope: !4634)
!4636 = !DILocation(line: 340, column: 7, scope: !4608)
!4637 = !DILocation(line: 341, column: 4, scope: !4634)
!4638 = !DILocation(line: 342, column: 2, scope: !4608)
!4639 = !DILocation(line: 329, column: 29, scope: !4603)
!4640 = !DILocation(line: 329, column: 40, scope: !4603)
!4641 = !DILocation(line: 329, column: 2, scope: !4603)
!4642 = distinct !{!4642, !4606, !4643}
!4643 = !DILocation(line: 342, column: 2, scope: !4600)
!4644 = !DILocation(line: 344, column: 22, scope: !4556)
!4645 = !DILocation(line: 344, column: 32, scope: !4556)
!4646 = !DILocation(line: 344, column: 40, scope: !4556)
!4647 = !DILocation(line: 344, column: 49, scope: !4556)
!4648 = !DILocation(line: 344, column: 54, scope: !4556)
!4649 = !DILocation(line: 344, column: 2, scope: !4556)
!4650 = !DILocation(line: 344, column: 12, scope: !4556)
!4651 = !DILocation(line: 344, column: 20, scope: !4556)
!4652 = !DILocation(line: 345, column: 22, scope: !4556)
!4653 = !DILocation(line: 345, column: 2, scope: !4556)
!4654 = !DILocation(line: 345, column: 12, scope: !4556)
!4655 = !DILocation(line: 345, column: 20, scope: !4556)
!4656 = !DILocation(line: 346, column: 16, scope: !4556)
!4657 = !DILocation(line: 346, column: 3, scope: !4556)
!4658 = !DILocation(line: 346, column: 14, scope: !4556)
!4659 = !DILocation(line: 348, column: 2, scope: !4556)
!4660 = !DILabel(scope: !4556, name: "error_alloc_segment", file: !1, line: 350)
!4661 = !DILocation(line: 350, column: 1, scope: !4556)
!4662 = !DILocation(line: 351, column: 7, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4556, file: !1, line: 351, column: 2)
!4664 = !DILocation(line: 351, column: 12, scope: !4663)
!4665 = !DILocation(line: 351, column: 23, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4663, file: !1, line: 351, column: 2)
!4667 = !DILocation(line: 351, column: 25, scope: !4666)
!4668 = !DILocation(line: 351, column: 2, scope: !4663)
!4669 = !DILocation(line: 352, column: 21, scope: !4666)
!4670 = !DILocation(line: 352, column: 32, scope: !4666)
!4671 = !DILocation(line: 352, column: 41, scope: !4666)
!4672 = !DILocation(line: 352, column: 46, scope: !4666)
!4673 = !DILocation(line: 352, column: 55, scope: !4666)
!4674 = !DILocation(line: 353, column: 7, scope: !4666)
!4675 = !DILocation(line: 353, column: 16, scope: !4666)
!4676 = !DILocation(line: 352, column: 3, scope: !4666)
!4677 = !DILocation(line: 351, column: 32, scope: !4666)
!4678 = !DILocation(line: 351, column: 43, scope: !4666)
!4679 = !DILocation(line: 351, column: 2, scope: !4666)
!4680 = distinct !{!4680, !4668, !4681}
!4681 = !DILocation(line: 353, column: 24, scope: !4663)
!4682 = !DILabel(scope: !4556, name: "error_alloc_mhi_buf", file: !1, line: 355)
!4683 = !DILocation(line: 355, column: 1, scope: !4556)
!4684 = !DILocation(line: 356, column: 8, scope: !4556)
!4685 = !DILocation(line: 356, column: 2, scope: !4556)
!4686 = !DILocation(line: 358, column: 2, scope: !4556)
!4687 = !DILocation(line: 359, column: 1, scope: !4556)
!4688 = distinct !DISubprogram(name: "kzalloc", scope: !183, file: !183, line: 662, type: !4689, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!201, !328, !194}
!4691 = !DILocalVariable(name: "s", arg: 1, scope: !4692, file: !183, line: 445, type: !1085)
!4692 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !183, file: !183, line: 445, type: !4693, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!201, !1085, !194, !328}
!4695 = !DILocation(line: 445, column: 72, scope: !4692, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 552, column: 10, scope: !4697, inlinedAt: !4700)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !183, line: 540, column: 34)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !183, line: 540, column: 6)
!4699 = distinct !DISubprogram(name: "kmalloc", scope: !183, file: !183, line: 538, type: !4689, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4700 = distinct !DILocation(line: 664, column: 9, scope: !4688)
!4701 = !DILocalVariable(name: "flags", arg: 2, scope: !4692, file: !183, line: 446, type: !194)
!4702 = !DILocation(line: 446, column: 9, scope: !4692, inlinedAt: !4696)
!4703 = !DILocalVariable(name: "size", arg: 3, scope: !4692, file: !183, line: 446, type: !328)
!4704 = !DILocation(line: 446, column: 23, scope: !4692, inlinedAt: !4696)
!4705 = !DILocalVariable(name: "ret", scope: !4692, file: !183, line: 448, type: !201)
!4706 = !DILocation(line: 448, column: 8, scope: !4692, inlinedAt: !4696)
!4707 = !DILocalVariable(name: "flags", arg: 1, scope: !4708, file: !183, line: 318, type: !194)
!4708 = distinct !DISubprogram(name: "kmalloc_type", scope: !183, file: !183, line: 318, type: !4709, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!182, !194}
!4711 = !DILocation(line: 318, column: 67, scope: !4708, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 553, column: 20, scope: !4697, inlinedAt: !4700)
!4713 = !DILocalVariable(name: "size", arg: 1, scope: !4714, file: !183, line: 346, type: !328)
!4714 = distinct !DISubprogram(name: "kmalloc_index", scope: !183, file: !183, line: 346, type: !4715, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!5, !328}
!4717 = !DILocation(line: 346, column: 58, scope: !4714, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 547, column: 11, scope: !4697, inlinedAt: !4700)
!4719 = !DILocalVariable(name: "size", arg: 1, scope: !4720, file: !183, line: 472, type: !328)
!4720 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !183, file: !183, line: 472, type: !4721, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!201, !328, !194, !5}
!4723 = !DILocation(line: 472, column: 28, scope: !4720, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 481, column: 9, scope: !4725, inlinedAt: !4726)
!4725 = distinct !DISubprogram(name: "kmalloc_large", scope: !183, file: !183, line: 478, type: !4689, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4726 = distinct !DILocation(line: 545, column: 11, scope: !4727, inlinedAt: !4700)
!4727 = distinct !DILexicalBlock(scope: !4697, file: !183, line: 544, column: 7)
!4728 = !DILocalVariable(name: "flags", arg: 2, scope: !4720, file: !183, line: 472, type: !194)
!4729 = !DILocation(line: 472, column: 40, scope: !4720, inlinedAt: !4724)
!4730 = !DILocalVariable(name: "order", arg: 3, scope: !4720, file: !183, line: 472, type: !5)
!4731 = !DILocation(line: 472, column: 60, scope: !4720, inlinedAt: !4724)
!4732 = !DILocalVariable(name: "size", arg: 1, scope: !4725, file: !183, line: 478, type: !328)
!4733 = !DILocation(line: 478, column: 51, scope: !4725, inlinedAt: !4726)
!4734 = !DILocalVariable(name: "flags", arg: 2, scope: !4725, file: !183, line: 478, type: !194)
!4735 = !DILocation(line: 478, column: 63, scope: !4725, inlinedAt: !4726)
!4736 = !DILocalVariable(name: "order", scope: !4725, file: !183, line: 480, type: !5)
!4737 = !DILocation(line: 480, column: 15, scope: !4725, inlinedAt: !4726)
!4738 = !DILocalVariable(name: "size", arg: 1, scope: !4699, file: !183, line: 538, type: !328)
!4739 = !DILocation(line: 538, column: 45, scope: !4699, inlinedAt: !4700)
!4740 = !DILocalVariable(name: "flags", arg: 2, scope: !4699, file: !183, line: 538, type: !194)
!4741 = !DILocation(line: 538, column: 57, scope: !4699, inlinedAt: !4700)
!4742 = !DILocalVariable(name: "index", scope: !4697, file: !183, line: 542, type: !5)
!4743 = !DILocation(line: 542, column: 16, scope: !4697, inlinedAt: !4700)
!4744 = !DILocalVariable(name: "size", arg: 1, scope: !4688, file: !183, line: 662, type: !328)
!4745 = !DILocation(line: 662, column: 36, scope: !4688)
!4746 = !DILocalVariable(name: "flags", arg: 2, scope: !4688, file: !183, line: 662, type: !194)
!4747 = !DILocation(line: 662, column: 48, scope: !4688)
!4748 = !DILocation(line: 664, column: 17, scope: !4688)
!4749 = !DILocation(line: 664, column: 23, scope: !4688)
!4750 = !DILocation(line: 664, column: 29, scope: !4688)
!4751 = !DILocation(line: 540, column: 27, scope: !4698, inlinedAt: !4700)
!4752 = !DILocation(line: 540, column: 6, scope: !4698, inlinedAt: !4700)
!4753 = !DILocation(line: 540, column: 6, scope: !4699, inlinedAt: !4700)
!4754 = !DILocation(line: 544, column: 7, scope: !4727, inlinedAt: !4700)
!4755 = !DILocation(line: 544, column: 12, scope: !4727, inlinedAt: !4700)
!4756 = !DILocation(line: 544, column: 7, scope: !4697, inlinedAt: !4700)
!4757 = !DILocation(line: 545, column: 25, scope: !4727, inlinedAt: !4700)
!4758 = !DILocation(line: 545, column: 31, scope: !4727, inlinedAt: !4700)
!4759 = !DILocation(line: 480, column: 33, scope: !4725, inlinedAt: !4726)
!4760 = !DILocation(line: 480, column: 23, scope: !4725, inlinedAt: !4726)
!4761 = !DILocation(line: 481, column: 29, scope: !4725, inlinedAt: !4726)
!4762 = !DILocation(line: 481, column: 35, scope: !4725, inlinedAt: !4726)
!4763 = !DILocation(line: 481, column: 42, scope: !4725, inlinedAt: !4726)
!4764 = !DILocation(line: 474, column: 23, scope: !4720, inlinedAt: !4724)
!4765 = !DILocation(line: 474, column: 29, scope: !4720, inlinedAt: !4724)
!4766 = !DILocation(line: 474, column: 36, scope: !4720, inlinedAt: !4724)
!4767 = !DILocation(line: 474, column: 9, scope: !4720, inlinedAt: !4724)
!4768 = !DILocation(line: 545, column: 4, scope: !4727, inlinedAt: !4700)
!4769 = !DILocation(line: 547, column: 25, scope: !4697, inlinedAt: !4700)
!4770 = !DILocation(line: 348, column: 7, scope: !4771, inlinedAt: !4718)
!4771 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 348, column: 6)
!4772 = !DILocation(line: 348, column: 6, scope: !4714, inlinedAt: !4718)
!4773 = !DILocation(line: 349, column: 3, scope: !4771, inlinedAt: !4718)
!4774 = !DILocation(line: 351, column: 6, scope: !4775, inlinedAt: !4718)
!4775 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 351, column: 6)
!4776 = !DILocation(line: 351, column: 11, scope: !4775, inlinedAt: !4718)
!4777 = !DILocation(line: 351, column: 6, scope: !4714, inlinedAt: !4718)
!4778 = !DILocation(line: 352, column: 3, scope: !4775, inlinedAt: !4718)
!4779 = !DILocation(line: 354, column: 32, scope: !4780, inlinedAt: !4718)
!4780 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 354, column: 6)
!4781 = !DILocation(line: 354, column: 37, scope: !4780, inlinedAt: !4718)
!4782 = !DILocation(line: 354, column: 42, scope: !4780, inlinedAt: !4718)
!4783 = !DILocation(line: 354, column: 45, scope: !4780, inlinedAt: !4718)
!4784 = !DILocation(line: 354, column: 50, scope: !4780, inlinedAt: !4718)
!4785 = !DILocation(line: 354, column: 6, scope: !4714, inlinedAt: !4718)
!4786 = !DILocation(line: 355, column: 3, scope: !4780, inlinedAt: !4718)
!4787 = !DILocation(line: 356, column: 32, scope: !4788, inlinedAt: !4718)
!4788 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 356, column: 6)
!4789 = !DILocation(line: 356, column: 37, scope: !4788, inlinedAt: !4718)
!4790 = !DILocation(line: 356, column: 43, scope: !4788, inlinedAt: !4718)
!4791 = !DILocation(line: 356, column: 46, scope: !4788, inlinedAt: !4718)
!4792 = !DILocation(line: 356, column: 51, scope: !4788, inlinedAt: !4718)
!4793 = !DILocation(line: 356, column: 6, scope: !4714, inlinedAt: !4718)
!4794 = !DILocation(line: 357, column: 3, scope: !4788, inlinedAt: !4718)
!4795 = !DILocation(line: 358, column: 6, scope: !4796, inlinedAt: !4718)
!4796 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 358, column: 6)
!4797 = !DILocation(line: 358, column: 11, scope: !4796, inlinedAt: !4718)
!4798 = !DILocation(line: 358, column: 6, scope: !4714, inlinedAt: !4718)
!4799 = !DILocation(line: 358, column: 26, scope: !4796, inlinedAt: !4718)
!4800 = !DILocation(line: 359, column: 6, scope: !4801, inlinedAt: !4718)
!4801 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 359, column: 6)
!4802 = !DILocation(line: 359, column: 11, scope: !4801, inlinedAt: !4718)
!4803 = !DILocation(line: 359, column: 6, scope: !4714, inlinedAt: !4718)
!4804 = !DILocation(line: 359, column: 26, scope: !4801, inlinedAt: !4718)
!4805 = !DILocation(line: 360, column: 6, scope: !4806, inlinedAt: !4718)
!4806 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 360, column: 6)
!4807 = !DILocation(line: 360, column: 11, scope: !4806, inlinedAt: !4718)
!4808 = !DILocation(line: 360, column: 6, scope: !4714, inlinedAt: !4718)
!4809 = !DILocation(line: 360, column: 26, scope: !4806, inlinedAt: !4718)
!4810 = !DILocation(line: 361, column: 6, scope: !4811, inlinedAt: !4718)
!4811 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 361, column: 6)
!4812 = !DILocation(line: 361, column: 11, scope: !4811, inlinedAt: !4718)
!4813 = !DILocation(line: 361, column: 6, scope: !4714, inlinedAt: !4718)
!4814 = !DILocation(line: 361, column: 26, scope: !4811, inlinedAt: !4718)
!4815 = !DILocation(line: 362, column: 6, scope: !4816, inlinedAt: !4718)
!4816 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 362, column: 6)
!4817 = !DILocation(line: 362, column: 11, scope: !4816, inlinedAt: !4718)
!4818 = !DILocation(line: 362, column: 6, scope: !4714, inlinedAt: !4718)
!4819 = !DILocation(line: 362, column: 26, scope: !4816, inlinedAt: !4718)
!4820 = !DILocation(line: 363, column: 6, scope: !4821, inlinedAt: !4718)
!4821 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 363, column: 6)
!4822 = !DILocation(line: 363, column: 11, scope: !4821, inlinedAt: !4718)
!4823 = !DILocation(line: 363, column: 6, scope: !4714, inlinedAt: !4718)
!4824 = !DILocation(line: 363, column: 26, scope: !4821, inlinedAt: !4718)
!4825 = !DILocation(line: 364, column: 6, scope: !4826, inlinedAt: !4718)
!4826 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 364, column: 6)
!4827 = !DILocation(line: 364, column: 11, scope: !4826, inlinedAt: !4718)
!4828 = !DILocation(line: 364, column: 6, scope: !4714, inlinedAt: !4718)
!4829 = !DILocation(line: 364, column: 26, scope: !4826, inlinedAt: !4718)
!4830 = !DILocation(line: 365, column: 6, scope: !4831, inlinedAt: !4718)
!4831 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 365, column: 6)
!4832 = !DILocation(line: 365, column: 11, scope: !4831, inlinedAt: !4718)
!4833 = !DILocation(line: 365, column: 6, scope: !4714, inlinedAt: !4718)
!4834 = !DILocation(line: 365, column: 26, scope: !4831, inlinedAt: !4718)
!4835 = !DILocation(line: 366, column: 6, scope: !4836, inlinedAt: !4718)
!4836 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 366, column: 6)
!4837 = !DILocation(line: 366, column: 11, scope: !4836, inlinedAt: !4718)
!4838 = !DILocation(line: 366, column: 6, scope: !4714, inlinedAt: !4718)
!4839 = !DILocation(line: 366, column: 26, scope: !4836, inlinedAt: !4718)
!4840 = !DILocation(line: 367, column: 6, scope: !4841, inlinedAt: !4718)
!4841 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 367, column: 6)
!4842 = !DILocation(line: 367, column: 11, scope: !4841, inlinedAt: !4718)
!4843 = !DILocation(line: 367, column: 6, scope: !4714, inlinedAt: !4718)
!4844 = !DILocation(line: 367, column: 26, scope: !4841, inlinedAt: !4718)
!4845 = !DILocation(line: 368, column: 6, scope: !4846, inlinedAt: !4718)
!4846 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 368, column: 6)
!4847 = !DILocation(line: 368, column: 11, scope: !4846, inlinedAt: !4718)
!4848 = !DILocation(line: 368, column: 6, scope: !4714, inlinedAt: !4718)
!4849 = !DILocation(line: 368, column: 26, scope: !4846, inlinedAt: !4718)
!4850 = !DILocation(line: 369, column: 6, scope: !4851, inlinedAt: !4718)
!4851 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 369, column: 6)
!4852 = !DILocation(line: 369, column: 11, scope: !4851, inlinedAt: !4718)
!4853 = !DILocation(line: 369, column: 6, scope: !4714, inlinedAt: !4718)
!4854 = !DILocation(line: 369, column: 26, scope: !4851, inlinedAt: !4718)
!4855 = !DILocation(line: 370, column: 6, scope: !4856, inlinedAt: !4718)
!4856 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 370, column: 6)
!4857 = !DILocation(line: 370, column: 11, scope: !4856, inlinedAt: !4718)
!4858 = !DILocation(line: 370, column: 6, scope: !4714, inlinedAt: !4718)
!4859 = !DILocation(line: 370, column: 26, scope: !4856, inlinedAt: !4718)
!4860 = !DILocation(line: 371, column: 6, scope: !4861, inlinedAt: !4718)
!4861 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 371, column: 6)
!4862 = !DILocation(line: 371, column: 11, scope: !4861, inlinedAt: !4718)
!4863 = !DILocation(line: 371, column: 6, scope: !4714, inlinedAt: !4718)
!4864 = !DILocation(line: 371, column: 26, scope: !4861, inlinedAt: !4718)
!4865 = !DILocation(line: 372, column: 6, scope: !4866, inlinedAt: !4718)
!4866 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 372, column: 6)
!4867 = !DILocation(line: 372, column: 11, scope: !4866, inlinedAt: !4718)
!4868 = !DILocation(line: 372, column: 6, scope: !4714, inlinedAt: !4718)
!4869 = !DILocation(line: 372, column: 26, scope: !4866, inlinedAt: !4718)
!4870 = !DILocation(line: 373, column: 6, scope: !4871, inlinedAt: !4718)
!4871 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 373, column: 6)
!4872 = !DILocation(line: 373, column: 11, scope: !4871, inlinedAt: !4718)
!4873 = !DILocation(line: 373, column: 6, scope: !4714, inlinedAt: !4718)
!4874 = !DILocation(line: 373, column: 26, scope: !4871, inlinedAt: !4718)
!4875 = !DILocation(line: 374, column: 6, scope: !4876, inlinedAt: !4718)
!4876 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 374, column: 6)
!4877 = !DILocation(line: 374, column: 11, scope: !4876, inlinedAt: !4718)
!4878 = !DILocation(line: 374, column: 6, scope: !4714, inlinedAt: !4718)
!4879 = !DILocation(line: 374, column: 26, scope: !4876, inlinedAt: !4718)
!4880 = !DILocation(line: 375, column: 6, scope: !4881, inlinedAt: !4718)
!4881 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 375, column: 6)
!4882 = !DILocation(line: 375, column: 11, scope: !4881, inlinedAt: !4718)
!4883 = !DILocation(line: 375, column: 6, scope: !4714, inlinedAt: !4718)
!4884 = !DILocation(line: 375, column: 27, scope: !4881, inlinedAt: !4718)
!4885 = !DILocation(line: 376, column: 6, scope: !4886, inlinedAt: !4718)
!4886 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 376, column: 6)
!4887 = !DILocation(line: 376, column: 11, scope: !4886, inlinedAt: !4718)
!4888 = !DILocation(line: 376, column: 6, scope: !4714, inlinedAt: !4718)
!4889 = !DILocation(line: 376, column: 32, scope: !4886, inlinedAt: !4718)
!4890 = !DILocation(line: 377, column: 6, scope: !4891, inlinedAt: !4718)
!4891 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 377, column: 6)
!4892 = !DILocation(line: 377, column: 11, scope: !4891, inlinedAt: !4718)
!4893 = !DILocation(line: 377, column: 6, scope: !4714, inlinedAt: !4718)
!4894 = !DILocation(line: 377, column: 32, scope: !4891, inlinedAt: !4718)
!4895 = !DILocation(line: 378, column: 6, scope: !4896, inlinedAt: !4718)
!4896 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 378, column: 6)
!4897 = !DILocation(line: 378, column: 11, scope: !4896, inlinedAt: !4718)
!4898 = !DILocation(line: 378, column: 6, scope: !4714, inlinedAt: !4718)
!4899 = !DILocation(line: 378, column: 32, scope: !4896, inlinedAt: !4718)
!4900 = !DILocation(line: 379, column: 6, scope: !4901, inlinedAt: !4718)
!4901 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 379, column: 6)
!4902 = !DILocation(line: 379, column: 11, scope: !4901, inlinedAt: !4718)
!4903 = !DILocation(line: 379, column: 6, scope: !4714, inlinedAt: !4718)
!4904 = !DILocation(line: 379, column: 33, scope: !4901, inlinedAt: !4718)
!4905 = !DILocation(line: 380, column: 6, scope: !4906, inlinedAt: !4718)
!4906 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 380, column: 6)
!4907 = !DILocation(line: 380, column: 11, scope: !4906, inlinedAt: !4718)
!4908 = !DILocation(line: 380, column: 6, scope: !4714, inlinedAt: !4718)
!4909 = !DILocation(line: 380, column: 33, scope: !4906, inlinedAt: !4718)
!4910 = !DILocation(line: 381, column: 6, scope: !4911, inlinedAt: !4718)
!4911 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 381, column: 6)
!4912 = !DILocation(line: 381, column: 11, scope: !4911, inlinedAt: !4718)
!4913 = !DILocation(line: 381, column: 6, scope: !4714, inlinedAt: !4718)
!4914 = !DILocation(line: 381, column: 33, scope: !4911, inlinedAt: !4718)
!4915 = !DILocation(line: 382, column: 2, scope: !4916, inlinedAt: !4718)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !183, line: 382, column: 2)
!4917 = distinct !DILexicalBlock(scope: !4714, file: !183, line: 382, column: 2)
!4918 = !{i32 -2141904845, i32 -2141904816, i32 -2141904770, i32 -2141904712, i32 -2141904658, i32 -2141904604, i32 -2141904549, i32 -2141904518}
!4919 = !DILocation(line: 382, column: 2, scope: !4920, inlinedAt: !4718)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !183, line: 382, column: 2)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !183, line: 382, column: 2)
!4922 = !{i32 -2141904075, i32 -2141904068, i32 -2141904014, i32 -2141903983, i32 -2141903953}
!4923 = !DILocation(line: 382, column: 2, scope: !4921, inlinedAt: !4718)
!4924 = !DILocation(line: 386, column: 1, scope: !4714, inlinedAt: !4718)
!4925 = !DILocation(line: 547, column: 9, scope: !4697, inlinedAt: !4700)
!4926 = !DILocation(line: 549, column: 8, scope: !4927, inlinedAt: !4700)
!4927 = distinct !DILexicalBlock(scope: !4697, file: !183, line: 549, column: 7)
!4928 = !DILocation(line: 549, column: 7, scope: !4697, inlinedAt: !4700)
!4929 = !DILocation(line: 550, column: 4, scope: !4927, inlinedAt: !4700)
!4930 = !DILocation(line: 553, column: 33, scope: !4697, inlinedAt: !4700)
!4931 = !DILocation(line: 325, column: 6, scope: !4932, inlinedAt: !4712)
!4932 = distinct !DILexicalBlock(scope: !4708, file: !183, line: 325, column: 6)
!4933 = !DILocation(line: 325, column: 6, scope: !4708, inlinedAt: !4712)
!4934 = !DILocation(line: 326, column: 3, scope: !4932, inlinedAt: !4712)
!4935 = !DILocation(line: 332, column: 9, scope: !4708, inlinedAt: !4712)
!4936 = !DILocation(line: 332, column: 15, scope: !4708, inlinedAt: !4712)
!4937 = !DILocation(line: 332, column: 2, scope: !4708, inlinedAt: !4712)
!4938 = !DILocation(line: 336, column: 1, scope: !4708, inlinedAt: !4712)
!4939 = !DILocation(line: 553, column: 5, scope: !4697, inlinedAt: !4700)
!4940 = !DILocation(line: 553, column: 41, scope: !4697, inlinedAt: !4700)
!4941 = !DILocation(line: 554, column: 5, scope: !4697, inlinedAt: !4700)
!4942 = !DILocation(line: 554, column: 12, scope: !4697, inlinedAt: !4700)
!4943 = !DILocation(line: 448, column: 31, scope: !4692, inlinedAt: !4696)
!4944 = !DILocation(line: 448, column: 34, scope: !4692, inlinedAt: !4696)
!4945 = !DILocation(line: 448, column: 14, scope: !4692, inlinedAt: !4696)
!4946 = !DILocation(line: 450, column: 22, scope: !4692, inlinedAt: !4696)
!4947 = !DILocation(line: 450, column: 25, scope: !4692, inlinedAt: !4696)
!4948 = !DILocation(line: 450, column: 30, scope: !4692, inlinedAt: !4696)
!4949 = !DILocation(line: 450, column: 36, scope: !4692, inlinedAt: !4696)
!4950 = !DILocation(line: 450, column: 8, scope: !4692, inlinedAt: !4696)
!4951 = !DILocation(line: 450, column: 6, scope: !4692, inlinedAt: !4696)
!4952 = !DILocation(line: 451, column: 9, scope: !4692, inlinedAt: !4696)
!4953 = !DILocation(line: 552, column: 3, scope: !4697, inlinedAt: !4700)
!4954 = !DILocation(line: 557, column: 19, scope: !4699, inlinedAt: !4700)
!4955 = !DILocation(line: 557, column: 25, scope: !4699, inlinedAt: !4700)
!4956 = !DILocation(line: 557, column: 9, scope: !4699, inlinedAt: !4700)
!4957 = !DILocation(line: 557, column: 2, scope: !4699, inlinedAt: !4700)
!4958 = !DILocation(line: 558, column: 1, scope: !4699, inlinedAt: !4700)
!4959 = !DILocation(line: 664, column: 2, scope: !4688)
!4960 = distinct !DISubprogram(name: "kcalloc", scope: !183, file: !183, line: 601, type: !4961, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!201, !328, !328, !194}
!4963 = !DILocalVariable(name: "n", arg: 1, scope: !4960, file: !183, line: 601, type: !328)
!4964 = !DILocation(line: 601, column: 36, scope: !4960)
!4965 = !DILocalVariable(name: "size", arg: 2, scope: !4960, file: !183, line: 601, type: !328)
!4966 = !DILocation(line: 601, column: 46, scope: !4960)
!4967 = !DILocalVariable(name: "flags", arg: 3, scope: !4960, file: !183, line: 601, type: !194)
!4968 = !DILocation(line: 601, column: 58, scope: !4960)
!4969 = !DILocation(line: 603, column: 23, scope: !4960)
!4970 = !DILocation(line: 603, column: 26, scope: !4960)
!4971 = !DILocation(line: 603, column: 32, scope: !4960)
!4972 = !DILocation(line: 603, column: 38, scope: !4960)
!4973 = !DILocation(line: 603, column: 9, scope: !4960)
!4974 = !DILocation(line: 603, column: 2, scope: !4960)
!4975 = distinct !DISubprogram(name: "mhi_alloc_coherent", scope: !119, file: !119, line: 679, type: !4976, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!201, !212, !328, !4978, !194}
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!4979 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4975, file: !119, line: 679, type: !212)
!4980 = !DILocation(line: 679, column: 63, scope: !4975)
!4981 = !DILocalVariable(name: "size", arg: 2, scope: !4975, file: !119, line: 680, type: !328)
!4982 = !DILocation(line: 680, column: 19, scope: !4975)
!4983 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !4975, file: !119, line: 681, type: !4978)
!4984 = !DILocation(line: 681, column: 24, scope: !4975)
!4985 = !DILocalVariable(name: "gfp", arg: 4, scope: !4975, file: !119, line: 682, type: !194)
!4986 = !DILocation(line: 682, column: 18, scope: !4975)
!4987 = !DILocalVariable(name: "buf", scope: !4975, file: !119, line: 684, type: !201)
!4988 = !DILocation(line: 684, column: 8, scope: !4975)
!4989 = !DILocation(line: 684, column: 33, scope: !4975)
!4990 = !DILocation(line: 684, column: 44, scope: !4975)
!4991 = !DILocation(line: 684, column: 55, scope: !4975)
!4992 = !DILocation(line: 684, column: 61, scope: !4975)
!4993 = !DILocation(line: 685, column: 12, scope: !4975)
!4994 = !DILocation(line: 684, column: 14, scope: !4975)
!4995 = !DILocation(line: 687, column: 9, scope: !4975)
!4996 = !DILocation(line: 687, column: 2, scope: !4975)
!4997 = distinct !DISubprogram(name: "mhi_fw_load_handler", scope: !1, file: !1, line: 386, type: !4140, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !255)
!4998 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !4999)
!4999 = distinct !DILocation(line: 497, column: 8, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !1, line: 497, column: 8)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !1, line: 497, column: 8)
!5002 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 497, column: 8)
!5003 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 497, column: 8, scope: !5002)
!5005 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !4997, file: !1, line: 386, type: !212)
!5006 = !DILocation(line: 386, column: 49, scope: !4997)
!5007 = !DILocalVariable(name: "firmware", scope: !4997, file: !1, line: 388, type: !5008)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5010)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5011, line: 12, size: 192, elements: !5012)
!5011 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!5012 = !{!5013, !5014, !5017}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5010, file: !5011, line: 13, baseType: !328, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5010, file: !5011, line: 14, baseType: !5015, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5010, file: !5011, line: 17, baseType: !201, size: 64, offset: 128)
!5018 = !DILocation(line: 388, column: 25, scope: !4997)
!5019 = !DILocalVariable(name: "image_info", scope: !4997, file: !1, line: 389, type: !3984)
!5020 = !DILocation(line: 389, column: 21, scope: !4997)
!5021 = !DILocalVariable(name: "dev", scope: !4997, file: !1, line: 390, type: !216)
!5022 = !DILocation(line: 390, column: 17, scope: !4997)
!5023 = !DILocation(line: 390, column: 24, scope: !4997)
!5024 = !DILocation(line: 390, column: 35, scope: !4997)
!5025 = !DILocation(line: 390, column: 44, scope: !4997)
!5026 = !DILocalVariable(name: "fw_name", scope: !4997, file: !1, line: 391, type: !224)
!5027 = !DILocation(line: 391, column: 14, scope: !4997)
!5028 = !DILocalVariable(name: "buf", scope: !4997, file: !1, line: 392, type: !201)
!5029 = !DILocation(line: 392, column: 8, scope: !4997)
!5030 = !DILocalVariable(name: "dma_addr", scope: !4997, file: !1, line: 393, type: !1070)
!5031 = !DILocation(line: 393, column: 13, scope: !4997)
!5032 = !DILocalVariable(name: "size", scope: !4997, file: !1, line: 394, type: !328)
!5033 = !DILocation(line: 394, column: 9, scope: !4997)
!5034 = !DILocalVariable(name: "i", scope: !4997, file: !1, line: 395, type: !196)
!5035 = !DILocation(line: 395, column: 6, scope: !4997)
!5036 = !DILocalVariable(name: "ret", scope: !4997, file: !1, line: 395, type: !196)
!5037 = !DILocation(line: 395, column: 9, scope: !4997)
!5038 = !DILocation(line: 397, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 397, column: 6)
!5040 = !DILocation(line: 397, column: 6, scope: !4997)
!5041 = !DILocation(line: 398, column: 3, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5039, file: !1, line: 397, column: 50)
!5043 = !DILocation(line: 399, column: 3, scope: !5042)
!5044 = !DILocation(line: 403, column: 21, scope: !4997)
!5045 = !DILocation(line: 403, column: 32, scope: !4997)
!5046 = !DILocation(line: 403, column: 43, scope: !4997)
!5047 = !DILocation(line: 404, column: 8, scope: !4997)
!5048 = !DILocation(line: 404, column: 19, scope: !4997)
!5049 = !DILocation(line: 403, column: 8, scope: !4997)
!5050 = !DILocation(line: 403, column: 6, scope: !4997)
!5051 = !DILocation(line: 405, column: 6, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 405, column: 6)
!5053 = !DILocation(line: 405, column: 6, scope: !4997)
!5054 = !DILocation(line: 406, column: 3, scope: !5052)
!5055 = !DILocation(line: 408, column: 9, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 408, column: 2)
!5057 = !DILocation(line: 408, column: 7, scope: !5056)
!5058 = !DILocation(line: 408, column: 14, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5056, file: !1, line: 408, column: 2)
!5060 = !DILocation(line: 408, column: 16, scope: !5059)
!5061 = !DILocation(line: 408, column: 2, scope: !5056)
!5062 = !DILocation(line: 409, column: 22, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !1, line: 408, column: 59)
!5064 = !DILocation(line: 409, column: 33, scope: !5063)
!5065 = !DILocation(line: 409, column: 44, scope: !5063)
!5066 = !DILocation(line: 409, column: 49, scope: !5063)
!5067 = !DILocation(line: 410, column: 9, scope: !5063)
!5068 = !DILocation(line: 410, column: 20, scope: !5063)
!5069 = !DILocation(line: 410, column: 32, scope: !5063)
!5070 = !DILocation(line: 409, column: 9, scope: !5063)
!5071 = !DILocation(line: 409, column: 7, scope: !5063)
!5072 = !DILocation(line: 411, column: 7, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5063, file: !1, line: 411, column: 7)
!5074 = !DILocation(line: 411, column: 7, scope: !5063)
!5075 = !DILocation(line: 412, column: 4, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 411, column: 12)
!5077 = !DILocation(line: 413, column: 4, scope: !5076)
!5078 = !DILocation(line: 415, column: 2, scope: !5063)
!5079 = !DILocation(line: 408, column: 55, scope: !5059)
!5080 = !DILocation(line: 408, column: 2, scope: !5059)
!5081 = distinct !{!5081, !5061, !5082}
!5082 = !DILocation(line: 415, column: 2, scope: !5056)
!5083 = !DILocation(line: 418, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 418, column: 6)
!5085 = !DILocation(line: 418, column: 17, scope: !5084)
!5086 = !DILocation(line: 418, column: 20, scope: !5084)
!5087 = !DILocation(line: 418, column: 6, scope: !4997)
!5088 = !DILocation(line: 419, column: 3, scope: !5084)
!5089 = !DILocation(line: 421, column: 13, scope: !4997)
!5090 = !DILocation(line: 421, column: 24, scope: !4997)
!5091 = !DILocation(line: 421, column: 27, scope: !4997)
!5092 = !DILocation(line: 421, column: 12, scope: !4997)
!5093 = !DILocation(line: 422, column: 3, scope: !4997)
!5094 = !DILocation(line: 422, column: 14, scope: !4997)
!5095 = !DILocation(line: 422, column: 26, scope: !4997)
!5096 = !DILocation(line: 422, column: 37, scope: !4997)
!5097 = !DILocation(line: 421, column: 10, scope: !4997)
!5098 = !DILocation(line: 424, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 424, column: 6)
!5100 = !DILocation(line: 424, column: 15, scope: !5099)
!5101 = !DILocation(line: 424, column: 19, scope: !5099)
!5102 = !DILocation(line: 424, column: 30, scope: !5099)
!5103 = !DILocation(line: 424, column: 43, scope: !5099)
!5104 = !DILocation(line: 424, column: 48, scope: !5099)
!5105 = !DILocation(line: 424, column: 59, scope: !5099)
!5106 = !DILocation(line: 424, column: 68, scope: !5099)
!5107 = !DILocation(line: 425, column: 13, scope: !5099)
!5108 = !DILocation(line: 425, column: 24, scope: !5099)
!5109 = !DILocation(line: 424, column: 6, scope: !4997)
!5110 = !DILocation(line: 426, column: 3, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5099, file: !1, line: 425, column: 35)
!5112 = !DILocation(line: 428, column: 3, scope: !5111)
!5113 = !DILocation(line: 431, column: 36, scope: !4997)
!5114 = !DILocation(line: 431, column: 45, scope: !4997)
!5115 = !DILocation(line: 431, column: 8, scope: !4997)
!5116 = !DILocation(line: 431, column: 6, scope: !4997)
!5117 = !DILocation(line: 432, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 432, column: 6)
!5119 = !DILocation(line: 432, column: 6, scope: !4997)
!5120 = !DILocation(line: 433, column: 3, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5118, file: !1, line: 432, column: 11)
!5122 = !DILocation(line: 434, column: 3, scope: !5121)
!5123 = !DILocation(line: 437, column: 10, scope: !4997)
!5124 = !DILocation(line: 437, column: 21, scope: !4997)
!5125 = !DILocation(line: 437, column: 9, scope: !4997)
!5126 = !DILocation(line: 437, column: 37, scope: !4997)
!5127 = !DILocation(line: 437, column: 48, scope: !4997)
!5128 = !DILocation(line: 437, column: 59, scope: !4997)
!5129 = !DILocation(line: 437, column: 69, scope: !4997)
!5130 = !DILocation(line: 437, column: 7, scope: !4997)
!5131 = !DILocation(line: 440, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 440, column: 6)
!5133 = !DILocation(line: 440, column: 13, scope: !5132)
!5134 = !DILocation(line: 440, column: 23, scope: !5132)
!5135 = !DILocation(line: 440, column: 11, scope: !5132)
!5136 = !DILocation(line: 440, column: 6, scope: !4997)
!5137 = !DILocation(line: 441, column: 10, scope: !5132)
!5138 = !DILocation(line: 441, column: 20, scope: !5132)
!5139 = !DILocation(line: 441, column: 8, scope: !5132)
!5140 = !DILocation(line: 441, column: 3, scope: !5132)
!5141 = !DILocation(line: 443, column: 27, scope: !4997)
!5142 = !DILocation(line: 443, column: 38, scope: !4997)
!5143 = !DILocation(line: 443, column: 8, scope: !4997)
!5144 = !DILocation(line: 443, column: 6, scope: !4997)
!5145 = !DILocation(line: 444, column: 7, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 444, column: 6)
!5147 = !DILocation(line: 444, column: 6, scope: !4997)
!5148 = !DILocation(line: 445, column: 20, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5146, file: !1, line: 444, column: 12)
!5150 = !DILocation(line: 445, column: 3, scope: !5149)
!5151 = !DILocation(line: 446, column: 3, scope: !5149)
!5152 = !DILocation(line: 450, column: 9, scope: !4997)
!5153 = !DILocation(line: 450, column: 14, scope: !4997)
!5154 = !DILocation(line: 450, column: 24, scope: !4997)
!5155 = !DILocation(line: 450, column: 30, scope: !4997)
!5156 = !DILocation(line: 450, column: 2, scope: !4997)
!5157 = !DILocation(line: 451, column: 24, scope: !4997)
!5158 = !DILocation(line: 451, column: 35, scope: !4997)
!5159 = !DILocation(line: 451, column: 45, scope: !4997)
!5160 = !DILocation(line: 451, column: 8, scope: !4997)
!5161 = !DILocation(line: 451, column: 6, scope: !4997)
!5162 = !DILocation(line: 452, column: 20, scope: !4997)
!5163 = !DILocation(line: 452, column: 31, scope: !4997)
!5164 = !DILocation(line: 452, column: 37, scope: !4997)
!5165 = !DILocation(line: 452, column: 42, scope: !4997)
!5166 = !DILocation(line: 452, column: 2, scope: !4997)
!5167 = !DILocation(line: 454, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 454, column: 6)
!5169 = !DILocation(line: 454, column: 18, scope: !5168)
!5170 = !DILocation(line: 454, column: 31, scope: !5168)
!5171 = !DILocation(line: 454, column: 34, scope: !5168)
!5172 = !DILocation(line: 454, column: 38, scope: !5168)
!5173 = !DILocation(line: 454, column: 41, scope: !5168)
!5174 = !DILocation(line: 454, column: 52, scope: !5168)
!5175 = !DILocation(line: 454, column: 55, scope: !5168)
!5176 = !DILocation(line: 454, column: 6, scope: !4997)
!5177 = !DILocation(line: 455, column: 20, scope: !5168)
!5178 = !DILocation(line: 455, column: 3, scope: !5168)
!5179 = !DILocation(line: 458, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 458, column: 6)
!5181 = !DILocation(line: 458, column: 6, scope: !4997)
!5182 = !DILocation(line: 459, column: 3, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5180, file: !1, line: 458, column: 11)
!5184 = !DILocation(line: 460, column: 3, scope: !5183)
!5185 = !DILocation(line: 463, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 463, column: 6)
!5187 = !DILocation(line: 463, column: 17, scope: !5186)
!5188 = !DILocation(line: 463, column: 20, scope: !5186)
!5189 = !DILocation(line: 463, column: 6, scope: !4997)
!5190 = !DILocation(line: 464, column: 3, scope: !5186)
!5191 = !DILocation(line: 466, column: 2, scope: !4997)
!5192 = !DILocation(line: 466, column: 2, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 466, column: 2)
!5194 = !DILocation(line: 466, column: 2, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5193, file: !1, line: 466, column: 2)
!5196 = !DILocation(line: 466, column: 2, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5193, file: !1, line: 466, column: 2)
!5198 = !{i32 -2141496365}
!5199 = !DILocation(line: 466, column: 2, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !1, line: 466, column: 2)
!5201 = !DILocation(line: 467, column: 2, scope: !4997)
!5202 = !DILocation(line: 467, column: 13, scope: !4997)
!5203 = !DILocation(line: 467, column: 23, scope: !4997)
!5204 = !DILocation(line: 468, column: 2, scope: !4997)
!5205 = !DILocation(line: 468, column: 2, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 468, column: 2)
!5207 = !DILocation(line: 468, column: 2, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5206, file: !1, line: 468, column: 2)
!5209 = !DILocation(line: 468, column: 2, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5206, file: !1, line: 468, column: 2)
!5211 = !{i32 -2141495924}
!5212 = !DILocation(line: 468, column: 2, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5210, file: !1, line: 468, column: 2)
!5214 = !DILocation(line: 474, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 474, column: 6)
!5216 = !DILocation(line: 474, column: 17, scope: !5215)
!5217 = !DILocation(line: 474, column: 6, scope: !4997)
!5218 = !DILocation(line: 475, column: 30, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5215, file: !1, line: 474, column: 31)
!5220 = !DILocation(line: 475, column: 42, scope: !5219)
!5221 = !DILocation(line: 475, column: 53, scope: !5219)
!5222 = !DILocation(line: 476, column: 9, scope: !5219)
!5223 = !DILocation(line: 476, column: 19, scope: !5219)
!5224 = !DILocation(line: 475, column: 9, scope: !5219)
!5225 = !DILocation(line: 475, column: 7, scope: !5219)
!5226 = !DILocation(line: 477, column: 7, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5219, file: !1, line: 477, column: 7)
!5228 = !DILocation(line: 477, column: 7, scope: !5219)
!5229 = !DILocation(line: 478, column: 4, scope: !5227)
!5230 = !DILocation(line: 481, column: 21, scope: !5219)
!5231 = !DILocation(line: 481, column: 32, scope: !5219)
!5232 = !DILocation(line: 481, column: 42, scope: !5219)
!5233 = !DILocation(line: 481, column: 53, scope: !5219)
!5234 = !DILocation(line: 481, column: 3, scope: !5219)
!5235 = !DILocation(line: 482, column: 2, scope: !5219)
!5236 = !DILabel(scope: !4997, name: "fw_load_ee_pthru", file: !1, line: 484)
!5237 = !DILocation(line: 484, column: 1, scope: !4997)
!5238 = !DILocation(line: 486, column: 35, scope: !4997)
!5239 = !DILocation(line: 486, column: 8, scope: !4997)
!5240 = !DILocation(line: 486, column: 6, scope: !4997)
!5241 = !DILocation(line: 488, column: 7, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 488, column: 6)
!5243 = !DILocation(line: 488, column: 18, scope: !5242)
!5244 = !DILocation(line: 488, column: 6, scope: !4997)
!5245 = !DILocation(line: 489, column: 3, scope: !5242)
!5246 = !DILocation(line: 491, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 491, column: 6)
!5248 = !DILocation(line: 491, column: 6, scope: !4997)
!5249 = !DILocation(line: 492, column: 3, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5247, file: !1, line: 491, column: 11)
!5251 = !DILocation(line: 493, column: 3, scope: !5250)
!5252 = !DILocalVariable(name: "__ret", scope: !5002, file: !1, line: 497, type: !200)
!5253 = !DILocation(line: 497, column: 8, scope: !5002)
!5254 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !5004)
!5255 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !5004)
!5256 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !5004)
!5257 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !5004)
!5258 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !5004)
!5259 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !5004)
!5260 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !5004)
!5261 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !5004)
!5262 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !5004)
!5263 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !5004)
!5264 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !5004)
!5265 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !5004)
!5266 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !5004)
!5267 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !5004)
!5268 = !DILocation(line: 497, column: 8, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5002, file: !1, line: 497, column: 8)
!5270 = !DILocation(line: 497, column: 8, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5269, file: !1, line: 497, column: 8)
!5272 = !DILocalVariable(name: "__cond", scope: !5273, file: !1, line: 497, type: !489)
!5273 = distinct !DILexicalBlock(scope: !5001, file: !1, line: 497, column: 8)
!5274 = !DILocation(line: 497, column: 8, scope: !5273)
!5275 = !DILocation(line: 497, column: 8, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5273, file: !1, line: 497, column: 8)
!5277 = !DILocation(line: 497, column: 8, scope: !5001)
!5278 = !DILocalVariable(name: "__wq_entry", scope: !5000, file: !1, line: 497, type: !4333)
!5279 = !DILocation(line: 497, column: 8, scope: !5000)
!5280 = !DILocalVariable(name: "__ret", scope: !5000, file: !1, line: 497, type: !200)
!5281 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !4999)
!5282 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !4999)
!5283 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !4999)
!5284 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !4999)
!5285 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !4999)
!5286 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !4999)
!5287 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !4999)
!5288 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !4999)
!5289 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !4999)
!5290 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !4999)
!5291 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !4999)
!5292 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !4999)
!5293 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !4999)
!5294 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !4999)
!5295 = !DILocalVariable(name: "__int", scope: !5296, file: !1, line: 497, type: !200)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !1, line: 497, column: 8)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !1, line: 497, column: 8)
!5298 = distinct !DILexicalBlock(scope: !5000, file: !1, line: 497, column: 8)
!5299 = !DILocation(line: 497, column: 8, scope: !5296)
!5300 = !DILocalVariable(name: "__cond", scope: !5301, file: !1, line: 497, type: !489)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !1, line: 497, column: 8)
!5302 = distinct !DILexicalBlock(scope: !5296, file: !1, line: 497, column: 8)
!5303 = !DILocation(line: 497, column: 8, scope: !5301)
!5304 = !DILocation(line: 497, column: 8, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !1, line: 497, column: 8)
!5306 = !DILocation(line: 497, column: 8, scope: !5302)
!5307 = !DILocation(line: 497, column: 8, scope: !5297)
!5308 = distinct !{!5308, !5309, !5309}
!5309 = !DILocation(line: 497, column: 8, scope: !5298)
!5310 = !DILabel(scope: !5000, name: "__out", file: !1, line: 497)
!5311 = !DILocation(line: 497, column: 8, scope: !4997)
!5312 = !DILocation(line: 497, column: 6, scope: !4997)
!5313 = !DILocation(line: 502, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 502, column: 6)
!5315 = !DILocation(line: 502, column: 11, scope: !5314)
!5316 = !DILocation(line: 502, column: 14, scope: !5314)
!5317 = !DILocation(line: 502, column: 6, scope: !4997)
!5318 = !DILocation(line: 503, column: 3, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5314, file: !1, line: 502, column: 58)
!5320 = !DILocation(line: 504, column: 3, scope: !5319)
!5321 = !DILocation(line: 508, column: 15, scope: !4997)
!5322 = !DILocation(line: 508, column: 26, scope: !4997)
!5323 = !DILocation(line: 508, column: 13, scope: !4997)
!5324 = !DILocation(line: 509, column: 25, scope: !4997)
!5325 = !DILocation(line: 511, column: 12, scope: !4997)
!5326 = !DILocation(line: 511, column: 24, scope: !4997)
!5327 = !DILocation(line: 511, column: 32, scope: !4997)
!5328 = !DILocation(line: 511, column: 44, scope: !4997)
!5329 = !DILocation(line: 511, column: 52, scope: !4997)
!5330 = !DILocation(line: 509, column: 8, scope: !4997)
!5331 = !DILocation(line: 509, column: 6, scope: !4997)
!5332 = !DILocation(line: 512, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 512, column: 6)
!5334 = !DILocation(line: 512, column: 6, scope: !4997)
!5335 = !DILocation(line: 513, column: 3, scope: !5333)
!5336 = !DILocation(line: 515, column: 19, scope: !4997)
!5337 = !DILocation(line: 515, column: 2, scope: !4997)
!5338 = !DILocation(line: 517, column: 2, scope: !4997)
!5339 = !DILabel(scope: !4997, name: "error_read", file: !1, line: 519)
!5340 = !DILocation(line: 519, column: 1, scope: !4997)
!5341 = !DILocation(line: 520, column: 22, scope: !4997)
!5342 = !DILocation(line: 520, column: 33, scope: !4997)
!5343 = !DILocation(line: 520, column: 44, scope: !4997)
!5344 = !DILocation(line: 520, column: 2, scope: !4997)
!5345 = !DILocation(line: 521, column: 2, scope: !4997)
!5346 = !DILocation(line: 521, column: 13, scope: !4997)
!5347 = !DILocation(line: 521, column: 23, scope: !4997)
!5348 = !DILabel(scope: !4997, name: "error_alloc_fw_table", file: !1, line: 523)
!5349 = !DILocation(line: 523, column: 1, scope: !4997)
!5350 = !DILocation(line: 524, column: 19, scope: !4997)
!5351 = !DILocation(line: 524, column: 2, scope: !4997)
!5352 = !DILocation(line: 525, column: 1, scope: !4997)
!5353 = distinct !DISubprogram(name: "mhi_fw_load_sbl", scope: !1, file: !1, line: 221, type: !5354, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!196, !212, !1070, !328}
!5356 = !DILocalVariable(name: "val", arg: 1, scope: !5357, file: !5358, line: 77, type: !196)
!5357 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5358, file: !5358, line: 77, type: !1980, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5358 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!5359 = !DILocation(line: 77, column: 53, scope: !5357, inlinedAt: !5360)
!5360 = distinct !DILocation(line: 12, column: 2, scope: !5361, inlinedAt: !5365)
!5361 = distinct !DISubprogram(name: "__local_bh_disable_ip", scope: !5362, file: !5362, line: 10, type: !5363, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5362 = !DIFile(filename: "./include/linux/bottom_half.h", directory: "/home/lizy2001/genbc/linux")
!5363 = !DISubroutineType(types: !5364)
!5364 = !{null, !202, !5}
!5365 = distinct !DILocation(line: 271, column: 3, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !1, line: 271, column: 3)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !1, line: 269, column: 37)
!5368 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 269, column: 6)
!5369 = !DILocalVariable(name: "pao_ID__", scope: !5370, file: !5358, line: 79, type: !5371)
!5370 = distinct !DILexicalBlock(scope: !5357, file: !5358, line: 79, column: 2)
!5371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5372 = !DILocation(line: 79, column: 2, scope: !5370, inlinedAt: !5360)
!5373 = !DILocalVariable(name: "pto_val__", scope: !5374, file: !5358, line: 79, type: !190)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !5358, line: 79, column: 2)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !5358, line: 79, column: 2)
!5376 = distinct !DILexicalBlock(scope: !5370, file: !5358, line: 79, column: 2)
!5377 = !DILocation(line: 79, column: 2, scope: !5374, inlinedAt: !5360)
!5378 = !DILocalVariable(name: "ip", arg: 1, scope: !5361, file: !5362, line: 10, type: !202)
!5379 = !DILocation(line: 10, column: 65, scope: !5361, inlinedAt: !5365)
!5380 = !DILocalVariable(name: "cnt", arg: 2, scope: !5361, file: !5362, line: 10, type: !5)
!5381 = !DILocation(line: 10, column: 82, scope: !5361, inlinedAt: !5365)
!5382 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !5383)
!5383 = distinct !DILocation(line: 260, column: 8, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5385, file: !1, line: 260, column: 8)
!5385 = distinct !DILexicalBlock(scope: !5386, file: !1, line: 260, column: 8)
!5386 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 260, column: 8)
!5387 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !5388)
!5388 = distinct !DILocation(line: 260, column: 8, scope: !5386)
!5389 = !DILocation(line: 77, column: 53, scope: !5357, inlinedAt: !5390)
!5390 = distinct !DILocation(line: 12, column: 2, scope: !5361, inlinedAt: !5391)
!5391 = distinct !DILocation(line: 241, column: 2, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 241, column: 2)
!5393 = !DILocation(line: 79, column: 2, scope: !5370, inlinedAt: !5390)
!5394 = !DILocation(line: 79, column: 2, scope: !5374, inlinedAt: !5390)
!5395 = !DILocation(line: 10, column: 65, scope: !5361, inlinedAt: !5391)
!5396 = !DILocation(line: 10, column: 82, scope: !5361, inlinedAt: !5391)
!5397 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !5353, file: !1, line: 221, type: !212)
!5398 = !DILocation(line: 221, column: 51, scope: !5353)
!5399 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5353, file: !1, line: 222, type: !1070)
!5400 = !DILocation(line: 222, column: 18, scope: !5353)
!5401 = !DILocalVariable(name: "size", arg: 3, scope: !5353, file: !1, line: 223, type: !328)
!5402 = !DILocation(line: 223, column: 14, scope: !5353)
!5403 = !DILocalVariable(name: "tx_status", scope: !5353, file: !1, line: 225, type: !190)
!5404 = !DILocation(line: 225, column: 6, scope: !5353)
!5405 = !DILocalVariable(name: "val", scope: !5353, file: !1, line: 225, type: !190)
!5406 = !DILocation(line: 225, column: 17, scope: !5353)
!5407 = !DILocalVariable(name: "session_id", scope: !5353, file: !1, line: 225, type: !190)
!5408 = !DILocation(line: 225, column: 22, scope: !5353)
!5409 = !DILocalVariable(name: "i", scope: !5353, file: !1, line: 226, type: !196)
!5410 = !DILocation(line: 226, column: 6, scope: !5353)
!5411 = !DILocalVariable(name: "ret", scope: !5353, file: !1, line: 226, type: !196)
!5412 = !DILocation(line: 226, column: 9, scope: !5353)
!5413 = !DILocalVariable(name: "base", scope: !5353, file: !1, line: 227, type: !201)
!5414 = !DILocation(line: 227, column: 16, scope: !5353)
!5415 = !DILocation(line: 227, column: 23, scope: !5353)
!5416 = !DILocation(line: 227, column: 34, scope: !5353)
!5417 = !DILocalVariable(name: "pm_lock", scope: !5353, file: !1, line: 228, type: !5418)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!5419 = !DILocation(line: 228, column: 12, scope: !5353)
!5420 = !DILocation(line: 228, column: 23, scope: !5353)
!5421 = !DILocation(line: 228, column: 34, scope: !5353)
!5422 = !DILocalVariable(name: "dev", scope: !5353, file: !1, line: 229, type: !216)
!5423 = !DILocation(line: 229, column: 17, scope: !5353)
!5424 = !DILocation(line: 229, column: 24, scope: !5353)
!5425 = !DILocation(line: 229, column: 35, scope: !5353)
!5426 = !DILocation(line: 229, column: 44, scope: !5353)
!5427 = !DILocalVariable(name: "error_reg", scope: !5353, file: !1, line: 233, type: !5428)
!5428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5429, size: 640, elements: !5433)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5353, file: !1, line: 230, size: 128, elements: !5430)
!5430 = !{!5431, !5432}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5429, file: !1, line: 231, baseType: !282, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5429, file: !1, line: 232, baseType: !190, size: 32, offset: 64)
!5433 = !{!5434}
!5434 = !DISubrange(count: 5)
!5435 = !DILocation(line: 233, column: 4, scope: !5353)
!5436 = !DILocation(line: 241, column: 2, scope: !5353)
!5437 = !DILocation(line: 241, column: 2, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5392, file: !1, line: 241, column: 2)
!5439 = !DILabel(scope: !5438, name: "__here", file: !1, line: 241)
!5440 = !DILocation(line: 12, column: 2, scope: !5361, inlinedAt: !5391)
!5441 = !{i32 -2145518346}
!5442 = !DILocation(line: 13, column: 2, scope: !5361, inlinedAt: !5391)
!5443 = !{i32 -2145508744}
!5444 = !DILocation(line: 241, column: 2, scope: !5392)
!5445 = !DILocation(line: 241, column: 2, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5392, file: !1, line: 241, column: 2)
!5447 = !DILocation(line: 242, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 242, column: 6)
!5449 = !DILocation(line: 242, column: 6, scope: !5353)
!5450 = !DILocation(line: 243, column: 3, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5448, file: !1, line: 242, column: 50)
!5452 = !DILocation(line: 243, column: 3, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 243, column: 3)
!5454 = distinct !DILexicalBlock(scope: !5451, file: !1, line: 243, column: 3)
!5455 = !DILabel(scope: !5453, name: "__here", file: !1, line: 243)
!5456 = !DILocation(line: 243, column: 3, scope: !5454)
!5457 = !DILocation(line: 243, column: 3, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 243, column: 3)
!5459 = !DILocation(line: 244, column: 3, scope: !5451)
!5460 = !DILocation(line: 247, column: 15, scope: !5353)
!5461 = !DILocation(line: 247, column: 13, scope: !5353)
!5462 = !DILocation(line: 250, column: 16, scope: !5353)
!5463 = !DILocation(line: 250, column: 27, scope: !5353)
!5464 = !DILocation(line: 250, column: 2, scope: !5353)
!5465 = !DILocation(line: 251, column: 16, scope: !5353)
!5466 = !DILocation(line: 251, column: 27, scope: !5353)
!5467 = !DILocation(line: 252, column: 9, scope: !5353)
!5468 = !DILocation(line: 251, column: 2, scope: !5353)
!5469 = !DILocation(line: 253, column: 16, scope: !5353)
!5470 = !DILocation(line: 253, column: 27, scope: !5353)
!5471 = !DILocation(line: 254, column: 9, scope: !5353)
!5472 = !DILocation(line: 253, column: 2, scope: !5353)
!5473 = !DILocation(line: 255, column: 16, scope: !5353)
!5474 = !DILocation(line: 255, column: 27, scope: !5353)
!5475 = !DILocation(line: 255, column: 46, scope: !5353)
!5476 = !DILocation(line: 255, column: 2, scope: !5353)
!5477 = !DILocation(line: 256, column: 16, scope: !5353)
!5478 = !DILocation(line: 256, column: 27, scope: !5353)
!5479 = !DILocation(line: 256, column: 46, scope: !5353)
!5480 = !DILocation(line: 256, column: 2, scope: !5353)
!5481 = !DILocation(line: 257, column: 2, scope: !5353)
!5482 = !DILocation(line: 257, column: 2, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !1, line: 257, column: 2)
!5484 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 257, column: 2)
!5485 = !DILabel(scope: !5483, name: "__here", file: !1, line: 257)
!5486 = !DILocation(line: 257, column: 2, scope: !5484)
!5487 = !DILocation(line: 257, column: 2, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5484, file: !1, line: 257, column: 2)
!5489 = !DILocalVariable(name: "__ret", scope: !5386, file: !1, line: 260, type: !200)
!5490 = !DILocation(line: 260, column: 8, scope: !5386)
!5491 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !5388)
!5492 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !5388)
!5493 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !5388)
!5494 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !5388)
!5495 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !5388)
!5496 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !5388)
!5497 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !5388)
!5498 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !5388)
!5499 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !5388)
!5500 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !5388)
!5501 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !5388)
!5502 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !5388)
!5503 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !5388)
!5504 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !5388)
!5505 = !DILocation(line: 260, column: 8, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5386, file: !1, line: 260, column: 8)
!5507 = !DILocation(line: 260, column: 8, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5506, file: !1, line: 260, column: 8)
!5509 = !DILocalVariable(name: "__cond", scope: !5510, file: !1, line: 260, type: !489)
!5510 = distinct !DILexicalBlock(scope: !5385, file: !1, line: 260, column: 8)
!5511 = !DILocation(line: 260, column: 8, scope: !5510)
!5512 = !DILocation(line: 260, column: 8, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !1, line: 260, column: 8)
!5514 = !DILocation(line: 260, column: 8, scope: !5385)
!5515 = !DILocalVariable(name: "__wq_entry", scope: !5384, file: !1, line: 260, type: !4333)
!5516 = !DILocation(line: 260, column: 8, scope: !5384)
!5517 = !DILocalVariable(name: "__ret", scope: !5384, file: !1, line: 260, type: !200)
!5518 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !5383)
!5519 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !5383)
!5520 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !5383)
!5521 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !5383)
!5522 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !5383)
!5523 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !5383)
!5524 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !5383)
!5525 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !5383)
!5526 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !5383)
!5527 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !5383)
!5528 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !5383)
!5529 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !5383)
!5530 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !5383)
!5531 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !5383)
!5532 = !DILocalVariable(name: "__int", scope: !5533, file: !1, line: 260, type: !200)
!5533 = distinct !DILexicalBlock(scope: !5534, file: !1, line: 260, column: 8)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !1, line: 260, column: 8)
!5535 = distinct !DILexicalBlock(scope: !5384, file: !1, line: 260, column: 8)
!5536 = !DILocation(line: 260, column: 8, scope: !5533)
!5537 = !DILocalVariable(name: "__cond", scope: !5538, file: !1, line: 260, type: !489)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !1, line: 260, column: 8)
!5539 = distinct !DILexicalBlock(scope: !5533, file: !1, line: 260, column: 8)
!5540 = !DILocation(line: 260, column: 8, scope: !5538)
!5541 = !DILocation(line: 260, column: 8, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5538, file: !1, line: 260, column: 8)
!5543 = !DILocation(line: 260, column: 8, scope: !5539)
!5544 = !DILocation(line: 260, column: 8, scope: !5534)
!5545 = distinct !{!5545, !5546, !5546}
!5546 = !DILocation(line: 260, column: 8, scope: !5535)
!5547 = !DILabel(scope: !5384, name: "__out", file: !1, line: 260)
!5548 = !DILocation(line: 260, column: 8, scope: !5353)
!5549 = !DILocation(line: 260, column: 6, scope: !5353)
!5550 = !DILocation(line: 266, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5353, file: !1, line: 266, column: 6)
!5552 = !DILocation(line: 266, column: 6, scope: !5353)
!5553 = !DILocation(line: 267, column: 3, scope: !5551)
!5554 = !DILocation(line: 269, column: 6, scope: !5368)
!5555 = !DILocation(line: 269, column: 16, scope: !5368)
!5556 = !DILocation(line: 269, column: 6, scope: !5353)
!5557 = !DILocation(line: 270, column: 3, scope: !5367)
!5558 = !DILocation(line: 271, column: 3, scope: !5367)
!5559 = !DILocation(line: 271, column: 3, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 271, column: 3)
!5561 = !DILabel(scope: !5560, name: "__here", file: !1, line: 271)
!5562 = !DILocation(line: 12, column: 2, scope: !5361, inlinedAt: !5365)
!5563 = !DILocation(line: 13, column: 2, scope: !5361, inlinedAt: !5365)
!5564 = !DILocation(line: 271, column: 3, scope: !5366)
!5565 = !DILocation(line: 271, column: 3, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 271, column: 3)
!5567 = !DILocation(line: 272, column: 7, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5367, file: !1, line: 272, column: 7)
!5569 = !DILocation(line: 272, column: 7, scope: !5367)
!5570 = !DILocation(line: 273, column: 11, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !1, line: 273, column: 4)
!5572 = distinct !DILexicalBlock(scope: !5568, file: !1, line: 272, column: 50)
!5573 = !DILocation(line: 273, column: 9, scope: !5571)
!5574 = !DILocation(line: 273, column: 26, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5571, file: !1, line: 273, column: 4)
!5576 = !DILocation(line: 273, column: 16, scope: !5575)
!5577 = !DILocation(line: 273, column: 29, scope: !5575)
!5578 = !DILocation(line: 273, column: 4, scope: !5571)
!5579 = !DILocation(line: 274, column: 24, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5575, file: !1, line: 273, column: 40)
!5581 = !DILocation(line: 274, column: 35, scope: !5580)
!5582 = !DILocation(line: 275, column: 20, scope: !5580)
!5583 = !DILocation(line: 275, column: 10, scope: !5580)
!5584 = !DILocation(line: 275, column: 23, scope: !5580)
!5585 = !DILocation(line: 274, column: 11, scope: !5580)
!5586 = !DILocation(line: 274, column: 9, scope: !5580)
!5587 = !DILocation(line: 276, column: 9, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5580, file: !1, line: 276, column: 9)
!5589 = !DILocation(line: 276, column: 9, scope: !5580)
!5590 = !DILocation(line: 277, column: 6, scope: !5588)
!5591 = !DILocation(line: 278, column: 5, scope: !5580)
!5592 = !DILocation(line: 280, column: 4, scope: !5580)
!5593 = !DILocation(line: 273, column: 36, scope: !5575)
!5594 = !DILocation(line: 273, column: 4, scope: !5575)
!5595 = distinct !{!5595, !5578, !5596}
!5596 = !DILocation(line: 280, column: 4, scope: !5571)
!5597 = !DILocation(line: 281, column: 3, scope: !5572)
!5598 = !DILocation(line: 282, column: 3, scope: !5367)
!5599 = !DILocation(line: 282, column: 3, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5601, file: !1, line: 282, column: 3)
!5601 = distinct !DILexicalBlock(scope: !5367, file: !1, line: 282, column: 3)
!5602 = !DILabel(scope: !5600, name: "__here", file: !1, line: 282)
!5603 = !DILocation(line: 282, column: 3, scope: !5601)
!5604 = !DILocation(line: 282, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5601, file: !1, line: 282, column: 3)
!5606 = !DILocation(line: 283, column: 3, scope: !5367)
!5607 = !DILocation(line: 286, column: 11, scope: !5353)
!5608 = !DILocation(line: 286, column: 10, scope: !5353)
!5609 = !DILocation(line: 286, column: 9, scope: !5353)
!5610 = !DILocation(line: 286, column: 2, scope: !5353)
!5611 = !DILabel(scope: !5353, name: "invalid_pm_state", file: !1, line: 288)
!5612 = !DILocation(line: 288, column: 1, scope: !5353)
!5613 = !DILocation(line: 290, column: 2, scope: !5353)
!5614 = !DILocation(line: 291, column: 1, scope: !5353)
!5615 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5616, file: !5616, line: 656, type: !1987, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5616 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5617 = !DILocalVariable(name: "__edi", scope: !5618, file: !5616, line: 658, type: !202)
!5618 = distinct !DILexicalBlock(scope: !5615, file: !5616, line: 658, column: 2)
!5619 = !DILocation(line: 658, column: 2, scope: !5618)
!5620 = !DILocalVariable(name: "__esi", scope: !5618, file: !5616, line: 658, type: !202)
!5621 = !DILocalVariable(name: "__edx", scope: !5618, file: !5616, line: 658, type: !202)
!5622 = !DILocalVariable(name: "__ecx", scope: !5618, file: !5616, line: 658, type: !202)
!5623 = !DILocalVariable(name: "__eax", scope: !5618, file: !5616, line: 658, type: !202)
!5624 = !{i32 -2145748871, i32 -2145748139, i32 -2145747905, i32 -2145747854, i32 -2145747826, i32 -2145747801, i32 -2145748117, i32 -2145748104, i32 -2145747666, i32 -2145747547, i32 -2145748012, i32 -2145747985, i32 -2145747957, i32 -2145747927}
!5625 = !DILocation(line: 659, column: 1, scope: !5615)
!5626 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5616, file: !5616, line: 661, type: !1987, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5627 = !DILocalVariable(name: "__edi", scope: !5628, file: !5616, line: 663, type: !202)
!5628 = distinct !DILexicalBlock(scope: !5626, file: !5616, line: 663, column: 2)
!5629 = !DILocation(line: 663, column: 2, scope: !5628)
!5630 = !DILocalVariable(name: "__esi", scope: !5628, file: !5616, line: 663, type: !202)
!5631 = !DILocalVariable(name: "__edx", scope: !5628, file: !5616, line: 663, type: !202)
!5632 = !DILocalVariable(name: "__ecx", scope: !5628, file: !5616, line: 663, type: !202)
!5633 = !DILocalVariable(name: "__eax", scope: !5628, file: !5616, line: 663, type: !202)
!5634 = !{i32 -2145746287, i32 -2145745557, i32 -2145745323, i32 -2145745272, i32 -2145745244, i32 -2145745219, i32 -2145745535, i32 -2145745522, i32 -2145745084, i32 -2145744965, i32 -2145745430, i32 -2145745403, i32 -2145745375, i32 -2145745345}
!5635 = !DILocation(line: 664, column: 1, scope: !5626)
!5636 = distinct !DISubprogram(name: "mhi_firmware_copy", scope: !1, file: !1, line: 361, type: !5637, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{null, !212, !5008, !3984}
!5639 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !5636, file: !1, line: 361, type: !212)
!5640 = !DILocation(line: 361, column: 54, scope: !5636)
!5641 = !DILocalVariable(name: "firmware", arg: 2, scope: !5636, file: !1, line: 362, type: !5008)
!5642 = !DILocation(line: 362, column: 33, scope: !5636)
!5643 = !DILocalVariable(name: "img_info", arg: 3, scope: !5636, file: !1, line: 363, type: !3984)
!5644 = !DILocation(line: 363, column: 29, scope: !5636)
!5645 = !DILocalVariable(name: "remainder", scope: !5636, file: !1, line: 365, type: !328)
!5646 = !DILocation(line: 365, column: 9, scope: !5636)
!5647 = !DILocation(line: 365, column: 21, scope: !5636)
!5648 = !DILocation(line: 365, column: 31, scope: !5636)
!5649 = !DILocalVariable(name: "to_cpy", scope: !5636, file: !1, line: 366, type: !328)
!5650 = !DILocation(line: 366, column: 9, scope: !5636)
!5651 = !DILocalVariable(name: "buf", scope: !5636, file: !1, line: 367, type: !5015)
!5652 = !DILocation(line: 367, column: 12, scope: !5636)
!5653 = !DILocation(line: 367, column: 18, scope: !5636)
!5654 = !DILocation(line: 367, column: 28, scope: !5636)
!5655 = !DILocalVariable(name: "i", scope: !5636, file: !1, line: 368, type: !196)
!5656 = !DILocation(line: 368, column: 6, scope: !5636)
!5657 = !DILocalVariable(name: "mhi_buf", scope: !5636, file: !1, line: 369, type: !3988)
!5658 = !DILocation(line: 369, column: 18, scope: !5636)
!5659 = !DILocation(line: 369, column: 28, scope: !5636)
!5660 = !DILocation(line: 369, column: 38, scope: !5636)
!5661 = !DILocalVariable(name: "bhi_vec", scope: !5636, file: !1, line: 370, type: !3996)
!5662 = !DILocation(line: 370, column: 24, scope: !5636)
!5663 = !DILocation(line: 370, column: 34, scope: !5636)
!5664 = !DILocation(line: 370, column: 44, scope: !5636)
!5665 = !DILocation(line: 372, column: 2, scope: !5636)
!5666 = !DILocation(line: 372, column: 9, scope: !5636)
!5667 = !DILocalVariable(name: "__UNIQUE_ID___x272", scope: !5668, file: !1, line: 373, type: !328)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !1, line: 373, column: 12)
!5669 = distinct !DILexicalBlock(scope: !5636, file: !1, line: 372, column: 20)
!5670 = !DILocation(line: 373, column: 12, scope: !5668)
!5671 = !DILocalVariable(name: "__UNIQUE_ID___y273", scope: !5668, file: !1, line: 373, type: !328)
!5672 = !DILocation(line: 373, column: 10, scope: !5669)
!5673 = !DILocation(line: 374, column: 10, scope: !5669)
!5674 = !DILocation(line: 374, column: 19, scope: !5669)
!5675 = !DILocation(line: 374, column: 24, scope: !5669)
!5676 = !DILocation(line: 374, column: 29, scope: !5669)
!5677 = !DILocation(line: 374, column: 3, scope: !5669)
!5678 = !DILocation(line: 375, column: 23, scope: !5669)
!5679 = !DILocation(line: 375, column: 32, scope: !5669)
!5680 = !DILocation(line: 375, column: 3, scope: !5669)
!5681 = !DILocation(line: 375, column: 12, scope: !5669)
!5682 = !DILocation(line: 375, column: 21, scope: !5669)
!5683 = !DILocation(line: 376, column: 19, scope: !5669)
!5684 = !DILocation(line: 376, column: 3, scope: !5669)
!5685 = !DILocation(line: 376, column: 12, scope: !5669)
!5686 = !DILocation(line: 376, column: 17, scope: !5669)
!5687 = !DILocation(line: 378, column: 10, scope: !5669)
!5688 = !DILocation(line: 378, column: 7, scope: !5669)
!5689 = !DILocation(line: 379, column: 16, scope: !5669)
!5690 = !DILocation(line: 379, column: 13, scope: !5669)
!5691 = !DILocation(line: 380, column: 4, scope: !5669)
!5692 = !DILocation(line: 381, column: 10, scope: !5669)
!5693 = !DILocation(line: 382, column: 10, scope: !5669)
!5694 = distinct !{!5694, !5665, !5695}
!5695 = !DILocation(line: 383, column: 2, scope: !5636)
!5696 = !DILocation(line: 384, column: 1, scope: !5636)
!5697 = distinct !DISubprogram(name: "mhi_fw_load_amss", scope: !1, file: !1, line: 174, type: !5698, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!196, !212, !5700}
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3989)
!5702 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !5703)
!5703 = distinct !DILocation(line: 206, column: 8, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5705, file: !1, line: 206, column: 8)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !1, line: 206, column: 8)
!5706 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 206, column: 8)
!5707 = !DILocation(line: 363, column: 74, scope: !4270, inlinedAt: !5708)
!5708 = distinct !DILocation(line: 206, column: 8, scope: !5706)
!5709 = !DILocation(line: 77, column: 53, scope: !5357, inlinedAt: !5710)
!5710 = distinct !DILocation(line: 12, column: 2, scope: !5361, inlinedAt: !5711)
!5711 = distinct !DILocation(line: 183, column: 2, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 183, column: 2)
!5713 = !DILocation(line: 79, column: 2, scope: !5370, inlinedAt: !5710)
!5714 = !DILocation(line: 79, column: 2, scope: !5374, inlinedAt: !5710)
!5715 = !DILocation(line: 10, column: 65, scope: !5361, inlinedAt: !5711)
!5716 = !DILocation(line: 10, column: 82, scope: !5361, inlinedAt: !5711)
!5717 = !DILocalVariable(name: "mhi_cntrl", arg: 1, scope: !5697, file: !1, line: 174, type: !212)
!5718 = !DILocation(line: 174, column: 52, scope: !5697)
!5719 = !DILocalVariable(name: "mhi_buf", arg: 2, scope: !5697, file: !1, line: 175, type: !5700)
!5720 = !DILocation(line: 175, column: 30, scope: !5697)
!5721 = !DILocalVariable(name: "base", scope: !5697, file: !1, line: 177, type: !201)
!5722 = !DILocation(line: 177, column: 16, scope: !5697)
!5723 = !DILocation(line: 177, column: 23, scope: !5697)
!5724 = !DILocation(line: 177, column: 34, scope: !5697)
!5725 = !DILocalVariable(name: "dev", scope: !5697, file: !1, line: 178, type: !216)
!5726 = !DILocation(line: 178, column: 17, scope: !5697)
!5727 = !DILocation(line: 178, column: 24, scope: !5697)
!5728 = !DILocation(line: 178, column: 35, scope: !5697)
!5729 = !DILocation(line: 178, column: 44, scope: !5697)
!5730 = !DILocalVariable(name: "pm_lock", scope: !5697, file: !1, line: 179, type: !5418)
!5731 = !DILocation(line: 179, column: 12, scope: !5697)
!5732 = !DILocation(line: 179, column: 23, scope: !5697)
!5733 = !DILocation(line: 179, column: 34, scope: !5697)
!5734 = !DILocalVariable(name: "tx_status", scope: !5697, file: !1, line: 180, type: !190)
!5735 = !DILocation(line: 180, column: 6, scope: !5697)
!5736 = !DILocalVariable(name: "sequence_id", scope: !5697, file: !1, line: 180, type: !190)
!5737 = !DILocation(line: 180, column: 17, scope: !5697)
!5738 = !DILocalVariable(name: "ret", scope: !5697, file: !1, line: 181, type: !196)
!5739 = !DILocation(line: 181, column: 6, scope: !5697)
!5740 = !DILocation(line: 183, column: 2, scope: !5697)
!5741 = !DILocation(line: 183, column: 2, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5712, file: !1, line: 183, column: 2)
!5743 = !DILabel(scope: !5742, name: "__here", file: !1, line: 183)
!5744 = !DILocation(line: 12, column: 2, scope: !5361, inlinedAt: !5711)
!5745 = !DILocation(line: 13, column: 2, scope: !5361, inlinedAt: !5711)
!5746 = !DILocation(line: 183, column: 2, scope: !5712)
!5747 = !DILocation(line: 183, column: 2, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5712, file: !1, line: 183, column: 2)
!5749 = !DILocation(line: 184, column: 7, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 184, column: 6)
!5751 = !DILocation(line: 184, column: 6, scope: !5697)
!5752 = !DILocation(line: 185, column: 3, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5750, file: !1, line: 184, column: 50)
!5754 = !DILocation(line: 185, column: 3, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !1, line: 185, column: 3)
!5756 = distinct !DILexicalBlock(scope: !5753, file: !1, line: 185, column: 3)
!5757 = !DILabel(scope: !5755, name: "__here", file: !1, line: 185)
!5758 = !DILocation(line: 185, column: 3, scope: !5756)
!5759 = !DILocation(line: 185, column: 3, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5756, file: !1, line: 185, column: 3)
!5761 = !DILocation(line: 186, column: 3, scope: !5753)
!5762 = !DILocation(line: 189, column: 16, scope: !5697)
!5763 = !DILocation(line: 189, column: 14, scope: !5697)
!5764 = !DILocation(line: 192, column: 16, scope: !5697)
!5765 = !DILocation(line: 192, column: 27, scope: !5697)
!5766 = !DILocation(line: 193, column: 9, scope: !5697)
!5767 = !DILocation(line: 192, column: 2, scope: !5697)
!5768 = !DILocation(line: 195, column: 16, scope: !5697)
!5769 = !DILocation(line: 195, column: 27, scope: !5697)
!5770 = !DILocation(line: 196, column: 9, scope: !5697)
!5771 = !DILocation(line: 195, column: 2, scope: !5697)
!5772 = !DILocation(line: 198, column: 16, scope: !5697)
!5773 = !DILocation(line: 198, column: 27, scope: !5697)
!5774 = !DILocation(line: 198, column: 54, scope: !5697)
!5775 = !DILocation(line: 198, column: 63, scope: !5697)
!5776 = !DILocation(line: 198, column: 2, scope: !5697)
!5777 = !DILocation(line: 200, column: 22, scope: !5697)
!5778 = !DILocation(line: 200, column: 33, scope: !5697)
!5779 = !DILocation(line: 202, column: 8, scope: !5697)
!5780 = !DILocation(line: 200, column: 2, scope: !5697)
!5781 = !DILocation(line: 203, column: 2, scope: !5697)
!5782 = !DILocation(line: 203, column: 2, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 203, column: 2)
!5784 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 203, column: 2)
!5785 = !DILabel(scope: !5783, name: "__here", file: !1, line: 203)
!5786 = !DILocation(line: 203, column: 2, scope: !5784)
!5787 = !DILocation(line: 203, column: 2, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 203, column: 2)
!5789 = !DILocalVariable(name: "__ret", scope: !5706, file: !1, line: 206, type: !200)
!5790 = !DILocation(line: 206, column: 8, scope: !5706)
!5791 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !5708)
!5792 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !5708)
!5793 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !5708)
!5794 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !5708)
!5795 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !5708)
!5796 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !5708)
!5797 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !5708)
!5798 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !5708)
!5799 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !5708)
!5800 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !5708)
!5801 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !5708)
!5802 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !5708)
!5803 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !5708)
!5804 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !5708)
!5805 = !DILocation(line: 206, column: 8, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5706, file: !1, line: 206, column: 8)
!5807 = !DILocation(line: 206, column: 8, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5806, file: !1, line: 206, column: 8)
!5809 = !DILocalVariable(name: "__cond", scope: !5810, file: !1, line: 206, type: !489)
!5810 = distinct !DILexicalBlock(scope: !5705, file: !1, line: 206, column: 8)
!5811 = !DILocation(line: 206, column: 8, scope: !5810)
!5812 = !DILocation(line: 206, column: 8, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5810, file: !1, line: 206, column: 8)
!5814 = !DILocation(line: 206, column: 8, scope: !5705)
!5815 = !DILocalVariable(name: "__wq_entry", scope: !5704, file: !1, line: 206, type: !4333)
!5816 = !DILocation(line: 206, column: 8, scope: !5704)
!5817 = !DILocalVariable(name: "__ret", scope: !5704, file: !1, line: 206, type: !200)
!5818 = !DILocation(line: 365, column: 27, scope: !4305, inlinedAt: !5703)
!5819 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !5703)
!5820 = !DILocation(line: 365, column: 6, scope: !4270, inlinedAt: !5703)
!5821 = !DILocation(line: 366, column: 12, scope: !4309, inlinedAt: !5703)
!5822 = !DILocation(line: 366, column: 14, scope: !4309, inlinedAt: !5703)
!5823 = !DILocation(line: 366, column: 7, scope: !4310, inlinedAt: !5703)
!5824 = !DILocation(line: 367, column: 4, scope: !4309, inlinedAt: !5703)
!5825 = !DILocation(line: 368, column: 28, scope: !4310, inlinedAt: !5703)
!5826 = !DILocation(line: 368, column: 10, scope: !4310, inlinedAt: !5703)
!5827 = !DILocation(line: 368, column: 3, scope: !4310, inlinedAt: !5703)
!5828 = !DILocation(line: 370, column: 29, scope: !4318, inlinedAt: !5703)
!5829 = !DILocation(line: 370, column: 10, scope: !4318, inlinedAt: !5703)
!5830 = !DILocation(line: 370, column: 3, scope: !4318, inlinedAt: !5703)
!5831 = !DILocation(line: 372, column: 1, scope: !4270, inlinedAt: !5703)
!5832 = !DILocalVariable(name: "__int", scope: !5833, file: !1, line: 206, type: !200)
!5833 = distinct !DILexicalBlock(scope: !5834, file: !1, line: 206, column: 8)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !1, line: 206, column: 8)
!5835 = distinct !DILexicalBlock(scope: !5704, file: !1, line: 206, column: 8)
!5836 = !DILocation(line: 206, column: 8, scope: !5833)
!5837 = !DILocalVariable(name: "__cond", scope: !5838, file: !1, line: 206, type: !489)
!5838 = distinct !DILexicalBlock(scope: !5839, file: !1, line: 206, column: 8)
!5839 = distinct !DILexicalBlock(scope: !5833, file: !1, line: 206, column: 8)
!5840 = !DILocation(line: 206, column: 8, scope: !5838)
!5841 = !DILocation(line: 206, column: 8, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !1, line: 206, column: 8)
!5843 = !DILocation(line: 206, column: 8, scope: !5839)
!5844 = !DILocation(line: 206, column: 8, scope: !5834)
!5845 = distinct !{!5845, !5846, !5846}
!5846 = !DILocation(line: 206, column: 8, scope: !5835)
!5847 = !DILabel(scope: !5704, name: "__out", file: !1, line: 206)
!5848 = !DILocation(line: 206, column: 8, scope: !5697)
!5849 = !DILocation(line: 206, column: 6, scope: !5697)
!5850 = !DILocation(line: 214, column: 6, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 214, column: 6)
!5852 = !DILocation(line: 214, column: 49, scope: !5851)
!5853 = !DILocation(line: 215, column: 6, scope: !5851)
!5854 = !DILocation(line: 215, column: 16, scope: !5851)
!5855 = !DILocation(line: 214, column: 6, scope: !5697)
!5856 = !DILocation(line: 216, column: 3, scope: !5851)
!5857 = !DILocation(line: 218, column: 11, scope: !5697)
!5858 = !DILocation(line: 218, column: 10, scope: !5697)
!5859 = !DILocation(line: 218, column: 9, scope: !5697)
!5860 = !DILocation(line: 218, column: 2, scope: !5697)
!5861 = !DILocation(line: 219, column: 1, scope: !5697)
!5862 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4271, file: !4271, line: 308, type: !4272, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5863 = !DILocalVariable(name: "m", arg: 1, scope: !5862, file: !4271, line: 308, type: !2934)
!5864 = !DILocation(line: 308, column: 66, scope: !5862)
!5865 = !DILocation(line: 310, column: 10, scope: !5862)
!5866 = !DILocation(line: 310, column: 12, scope: !5862)
!5867 = !DILocation(line: 310, column: 34, scope: !5862)
!5868 = !DILocation(line: 310, column: 39, scope: !5862)
!5869 = !DILocation(line: 310, column: 2, scope: !5862)
!5870 = distinct !DISubprogram(name: "dma_free_coherent", scope: !5871, file: !5871, line: 400, type: !5872, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5871 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!5872 = !DISubroutineType(types: !5873)
!5873 = !{null, !216, !328, !201, !1070}
!5874 = !DILocalVariable(name: "dev", arg: 1, scope: !5870, file: !5871, line: 400, type: !216)
!5875 = !DILocation(line: 400, column: 53, scope: !5870)
!5876 = !DILocalVariable(name: "size", arg: 2, scope: !5870, file: !5871, line: 400, type: !328)
!5877 = !DILocation(line: 400, column: 65, scope: !5870)
!5878 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !5870, file: !5871, line: 401, type: !201)
!5879 = !DILocation(line: 401, column: 9, scope: !5870)
!5880 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5870, file: !5871, line: 401, type: !1070)
!5881 = !DILocation(line: 401, column: 30, scope: !5870)
!5882 = !DILocation(line: 403, column: 24, scope: !5870)
!5883 = !DILocation(line: 403, column: 29, scope: !5870)
!5884 = !DILocation(line: 403, column: 35, scope: !5870)
!5885 = !DILocation(line: 403, column: 45, scope: !5870)
!5886 = !DILocation(line: 403, column: 9, scope: !5870)
!5887 = !DILocation(line: 403, column: 2, scope: !5870)
!5888 = distinct !DISubprogram(name: "get_order", scope: !5889, file: !5889, line: 29, type: !5890, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5889 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!196, !202}
!5892 = !DILocalVariable(name: "x", arg: 1, scope: !5893, file: !5894, line: 366, type: !198)
!5893 = distinct !DISubprogram(name: "fls64", scope: !5894, file: !5894, line: 366, type: !5895, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5894 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!196, !198}
!5897 = !DILocation(line: 366, column: 40, scope: !5893, inlinedAt: !5898)
!5898 = distinct !DILocation(line: 46, column: 9, scope: !5888)
!5899 = !DILocalVariable(name: "bitpos", scope: !5893, file: !5894, line: 368, type: !196)
!5900 = !DILocation(line: 368, column: 6, scope: !5893, inlinedAt: !5898)
!5901 = !DILocalVariable(name: "size", arg: 1, scope: !5888, file: !5889, line: 29, type: !202)
!5902 = !DILocation(line: 29, column: 63, scope: !5888)
!5903 = !DILocation(line: 31, column: 27, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5888, file: !5889, line: 31, column: 6)
!5905 = !DILocation(line: 31, column: 6, scope: !5904)
!5906 = !DILocation(line: 31, column: 6, scope: !5888)
!5907 = !DILocation(line: 32, column: 8, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !5889, line: 32, column: 7)
!5909 = distinct !DILexicalBlock(scope: !5904, file: !5889, line: 31, column: 34)
!5910 = !DILocation(line: 32, column: 7, scope: !5909)
!5911 = !DILocation(line: 33, column: 4, scope: !5908)
!5912 = !DILocation(line: 35, column: 7, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5909, file: !5889, line: 35, column: 7)
!5914 = !DILocation(line: 35, column: 12, scope: !5913)
!5915 = !DILocation(line: 35, column: 7, scope: !5909)
!5916 = !DILocation(line: 36, column: 4, scope: !5913)
!5917 = !DILocation(line: 38, column: 10, scope: !5909)
!5918 = !DILocation(line: 38, column: 28, scope: !5909)
!5919 = !DILocation(line: 38, column: 41, scope: !5909)
!5920 = !DILocation(line: 38, column: 3, scope: !5909)
!5921 = !DILocation(line: 41, column: 6, scope: !5888)
!5922 = !DILocation(line: 42, column: 7, scope: !5888)
!5923 = !DILocation(line: 46, column: 15, scope: !5888)
!5924 = !DILocation(line: 374, column: 2, scope: !5893, inlinedAt: !5898)
!5925 = !DILocation(line: 376, column: 14, scope: !5893, inlinedAt: !5898)
!5926 = !{i32 255888}
!5927 = !DILocation(line: 377, column: 9, scope: !5893, inlinedAt: !5898)
!5928 = !DILocation(line: 377, column: 16, scope: !5893, inlinedAt: !5898)
!5929 = !DILocation(line: 46, column: 2, scope: !5888)
!5930 = !DILocation(line: 48, column: 1, scope: !5888)
!5931 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5932, file: !5932, line: 30, type: !5933, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5932 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!196, !197}
!5935 = !DILocation(line: 366, column: 40, scope: !5893, inlinedAt: !5936)
!5936 = distinct !DILocation(line: 32, column: 9, scope: !5931)
!5937 = !DILocation(line: 368, column: 6, scope: !5893, inlinedAt: !5936)
!5938 = !DILocalVariable(name: "n", arg: 1, scope: !5931, file: !5932, line: 30, type: !197)
!5939 = !DILocation(line: 30, column: 21, scope: !5931)
!5940 = !DILocation(line: 32, column: 15, scope: !5931)
!5941 = !DILocation(line: 374, column: 2, scope: !5893, inlinedAt: !5936)
!5942 = !DILocation(line: 376, column: 14, scope: !5893, inlinedAt: !5936)
!5943 = !DILocation(line: 377, column: 9, scope: !5893, inlinedAt: !5936)
!5944 = !DILocation(line: 377, column: 16, scope: !5893, inlinedAt: !5936)
!5945 = !DILocation(line: 32, column: 18, scope: !5931)
!5946 = !DILocation(line: 32, column: 2, scope: !5931)
!5947 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5948, file: !5948, line: 137, type: !5949, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5948 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!201, !1085, !2234, !328, !194}
!5951 = !DILocalVariable(name: "s", arg: 1, scope: !5947, file: !5948, line: 137, type: !1085)
!5952 = !DILocation(line: 137, column: 54, scope: !5947)
!5953 = !DILocalVariable(name: "object", arg: 2, scope: !5947, file: !5948, line: 137, type: !2234)
!5954 = !DILocation(line: 137, column: 69, scope: !5947)
!5955 = !DILocalVariable(name: "size", arg: 3, scope: !5947, file: !5948, line: 138, type: !328)
!5956 = !DILocation(line: 138, column: 12, scope: !5947)
!5957 = !DILocalVariable(name: "flags", arg: 4, scope: !5947, file: !5948, line: 138, type: !194)
!5958 = !DILocation(line: 138, column: 24, scope: !5947)
!5959 = !DILocation(line: 140, column: 17, scope: !5947)
!5960 = !DILocation(line: 140, column: 2, scope: !5947)
!5961 = distinct !DISubprogram(name: "kmalloc_array", scope: !183, file: !183, line: 584, type: !4961, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!5962 = !DILocation(line: 445, column: 72, scope: !4692, inlinedAt: !5963)
!5963 = distinct !DILocation(line: 552, column: 10, scope: !4697, inlinedAt: !5964)
!5964 = distinct !DILocation(line: 591, column: 10, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5961, file: !183, line: 590, column: 6)
!5966 = !DILocation(line: 446, column: 9, scope: !4692, inlinedAt: !5963)
!5967 = !DILocation(line: 446, column: 23, scope: !4692, inlinedAt: !5963)
!5968 = !DILocation(line: 448, column: 8, scope: !4692, inlinedAt: !5963)
!5969 = !DILocation(line: 318, column: 67, scope: !4708, inlinedAt: !5970)
!5970 = distinct !DILocation(line: 553, column: 20, scope: !4697, inlinedAt: !5964)
!5971 = !DILocation(line: 346, column: 58, scope: !4714, inlinedAt: !5972)
!5972 = distinct !DILocation(line: 547, column: 11, scope: !4697, inlinedAt: !5964)
!5973 = !DILocation(line: 472, column: 28, scope: !4720, inlinedAt: !5974)
!5974 = distinct !DILocation(line: 481, column: 9, scope: !4725, inlinedAt: !5975)
!5975 = distinct !DILocation(line: 545, column: 11, scope: !4727, inlinedAt: !5964)
!5976 = !DILocation(line: 472, column: 40, scope: !4720, inlinedAt: !5974)
!5977 = !DILocation(line: 472, column: 60, scope: !4720, inlinedAt: !5974)
!5978 = !DILocation(line: 478, column: 51, scope: !4725, inlinedAt: !5975)
!5979 = !DILocation(line: 478, column: 63, scope: !4725, inlinedAt: !5975)
!5980 = !DILocation(line: 480, column: 15, scope: !4725, inlinedAt: !5975)
!5981 = !DILocation(line: 538, column: 45, scope: !4699, inlinedAt: !5964)
!5982 = !DILocation(line: 538, column: 57, scope: !4699, inlinedAt: !5964)
!5983 = !DILocation(line: 542, column: 16, scope: !4697, inlinedAt: !5964)
!5984 = !DILocalVariable(name: "n", arg: 1, scope: !5961, file: !183, line: 584, type: !328)
!5985 = !DILocation(line: 584, column: 42, scope: !5961)
!5986 = !DILocalVariable(name: "size", arg: 2, scope: !5961, file: !183, line: 584, type: !328)
!5987 = !DILocation(line: 584, column: 52, scope: !5961)
!5988 = !DILocalVariable(name: "flags", arg: 3, scope: !5961, file: !183, line: 584, type: !194)
!5989 = !DILocation(line: 584, column: 64, scope: !5961)
!5990 = !DILocalVariable(name: "bytes", scope: !5961, file: !183, line: 586, type: !328)
!5991 = !DILocation(line: 586, column: 9, scope: !5961)
!5992 = !DILocalVariable(name: "__a", scope: !5993, file: !183, line: 588, type: !328)
!5993 = distinct !DILexicalBlock(scope: !5994, file: !183, line: 588, column: 6)
!5994 = distinct !DILexicalBlock(scope: !5961, file: !183, line: 588, column: 6)
!5995 = !DILocation(line: 588, column: 6, scope: !5993)
!5996 = !DILocalVariable(name: "__b", scope: !5993, file: !183, line: 588, type: !328)
!5997 = !DILocalVariable(name: "__d", scope: !5993, file: !183, line: 588, type: !5998)
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!5999 = !DILocation(line: 588, column: 6, scope: !5994)
!6000 = !DILocation(line: 588, column: 6, scope: !5961)
!6001 = !DILocation(line: 589, column: 3, scope: !5994)
!6002 = !DILocation(line: 590, column: 27, scope: !5965)
!6003 = !DILocation(line: 590, column: 6, scope: !5965)
!6004 = !DILocation(line: 590, column: 30, scope: !5965)
!6005 = !DILocation(line: 590, column: 54, scope: !5965)
!6006 = !DILocation(line: 590, column: 33, scope: !5965)
!6007 = !DILocation(line: 590, column: 6, scope: !5961)
!6008 = !DILocation(line: 591, column: 18, scope: !5965)
!6009 = !DILocation(line: 591, column: 25, scope: !5965)
!6010 = !DILocation(line: 540, column: 27, scope: !4698, inlinedAt: !5964)
!6011 = !DILocation(line: 540, column: 6, scope: !4698, inlinedAt: !5964)
!6012 = !DILocation(line: 540, column: 6, scope: !4699, inlinedAt: !5964)
!6013 = !DILocation(line: 544, column: 7, scope: !4727, inlinedAt: !5964)
!6014 = !DILocation(line: 544, column: 12, scope: !4727, inlinedAt: !5964)
!6015 = !DILocation(line: 544, column: 7, scope: !4697, inlinedAt: !5964)
!6016 = !DILocation(line: 545, column: 25, scope: !4727, inlinedAt: !5964)
!6017 = !DILocation(line: 545, column: 31, scope: !4727, inlinedAt: !5964)
!6018 = !DILocation(line: 480, column: 33, scope: !4725, inlinedAt: !5975)
!6019 = !DILocation(line: 480, column: 23, scope: !4725, inlinedAt: !5975)
!6020 = !DILocation(line: 481, column: 29, scope: !4725, inlinedAt: !5975)
!6021 = !DILocation(line: 481, column: 35, scope: !4725, inlinedAt: !5975)
!6022 = !DILocation(line: 481, column: 42, scope: !4725, inlinedAt: !5975)
!6023 = !DILocation(line: 474, column: 23, scope: !4720, inlinedAt: !5974)
!6024 = !DILocation(line: 474, column: 29, scope: !4720, inlinedAt: !5974)
!6025 = !DILocation(line: 474, column: 36, scope: !4720, inlinedAt: !5974)
!6026 = !DILocation(line: 474, column: 9, scope: !4720, inlinedAt: !5974)
!6027 = !DILocation(line: 545, column: 4, scope: !4727, inlinedAt: !5964)
!6028 = !DILocation(line: 547, column: 25, scope: !4697, inlinedAt: !5964)
!6029 = !DILocation(line: 348, column: 7, scope: !4771, inlinedAt: !5972)
!6030 = !DILocation(line: 348, column: 6, scope: !4714, inlinedAt: !5972)
!6031 = !DILocation(line: 349, column: 3, scope: !4771, inlinedAt: !5972)
!6032 = !DILocation(line: 351, column: 6, scope: !4775, inlinedAt: !5972)
!6033 = !DILocation(line: 351, column: 11, scope: !4775, inlinedAt: !5972)
!6034 = !DILocation(line: 351, column: 6, scope: !4714, inlinedAt: !5972)
!6035 = !DILocation(line: 352, column: 3, scope: !4775, inlinedAt: !5972)
!6036 = !DILocation(line: 354, column: 32, scope: !4780, inlinedAt: !5972)
!6037 = !DILocation(line: 354, column: 37, scope: !4780, inlinedAt: !5972)
!6038 = !DILocation(line: 354, column: 42, scope: !4780, inlinedAt: !5972)
!6039 = !DILocation(line: 354, column: 45, scope: !4780, inlinedAt: !5972)
!6040 = !DILocation(line: 354, column: 50, scope: !4780, inlinedAt: !5972)
!6041 = !DILocation(line: 354, column: 6, scope: !4714, inlinedAt: !5972)
!6042 = !DILocation(line: 355, column: 3, scope: !4780, inlinedAt: !5972)
!6043 = !DILocation(line: 356, column: 32, scope: !4788, inlinedAt: !5972)
!6044 = !DILocation(line: 356, column: 37, scope: !4788, inlinedAt: !5972)
!6045 = !DILocation(line: 356, column: 43, scope: !4788, inlinedAt: !5972)
!6046 = !DILocation(line: 356, column: 46, scope: !4788, inlinedAt: !5972)
!6047 = !DILocation(line: 356, column: 51, scope: !4788, inlinedAt: !5972)
!6048 = !DILocation(line: 356, column: 6, scope: !4714, inlinedAt: !5972)
!6049 = !DILocation(line: 357, column: 3, scope: !4788, inlinedAt: !5972)
!6050 = !DILocation(line: 358, column: 6, scope: !4796, inlinedAt: !5972)
!6051 = !DILocation(line: 358, column: 11, scope: !4796, inlinedAt: !5972)
!6052 = !DILocation(line: 358, column: 6, scope: !4714, inlinedAt: !5972)
!6053 = !DILocation(line: 358, column: 26, scope: !4796, inlinedAt: !5972)
!6054 = !DILocation(line: 359, column: 6, scope: !4801, inlinedAt: !5972)
!6055 = !DILocation(line: 359, column: 11, scope: !4801, inlinedAt: !5972)
!6056 = !DILocation(line: 359, column: 6, scope: !4714, inlinedAt: !5972)
!6057 = !DILocation(line: 359, column: 26, scope: !4801, inlinedAt: !5972)
!6058 = !DILocation(line: 360, column: 6, scope: !4806, inlinedAt: !5972)
!6059 = !DILocation(line: 360, column: 11, scope: !4806, inlinedAt: !5972)
!6060 = !DILocation(line: 360, column: 6, scope: !4714, inlinedAt: !5972)
!6061 = !DILocation(line: 360, column: 26, scope: !4806, inlinedAt: !5972)
!6062 = !DILocation(line: 361, column: 6, scope: !4811, inlinedAt: !5972)
!6063 = !DILocation(line: 361, column: 11, scope: !4811, inlinedAt: !5972)
!6064 = !DILocation(line: 361, column: 6, scope: !4714, inlinedAt: !5972)
!6065 = !DILocation(line: 361, column: 26, scope: !4811, inlinedAt: !5972)
!6066 = !DILocation(line: 362, column: 6, scope: !4816, inlinedAt: !5972)
!6067 = !DILocation(line: 362, column: 11, scope: !4816, inlinedAt: !5972)
!6068 = !DILocation(line: 362, column: 6, scope: !4714, inlinedAt: !5972)
!6069 = !DILocation(line: 362, column: 26, scope: !4816, inlinedAt: !5972)
!6070 = !DILocation(line: 363, column: 6, scope: !4821, inlinedAt: !5972)
!6071 = !DILocation(line: 363, column: 11, scope: !4821, inlinedAt: !5972)
!6072 = !DILocation(line: 363, column: 6, scope: !4714, inlinedAt: !5972)
!6073 = !DILocation(line: 363, column: 26, scope: !4821, inlinedAt: !5972)
!6074 = !DILocation(line: 364, column: 6, scope: !4826, inlinedAt: !5972)
!6075 = !DILocation(line: 364, column: 11, scope: !4826, inlinedAt: !5972)
!6076 = !DILocation(line: 364, column: 6, scope: !4714, inlinedAt: !5972)
!6077 = !DILocation(line: 364, column: 26, scope: !4826, inlinedAt: !5972)
!6078 = !DILocation(line: 365, column: 6, scope: !4831, inlinedAt: !5972)
!6079 = !DILocation(line: 365, column: 11, scope: !4831, inlinedAt: !5972)
!6080 = !DILocation(line: 365, column: 6, scope: !4714, inlinedAt: !5972)
!6081 = !DILocation(line: 365, column: 26, scope: !4831, inlinedAt: !5972)
!6082 = !DILocation(line: 366, column: 6, scope: !4836, inlinedAt: !5972)
!6083 = !DILocation(line: 366, column: 11, scope: !4836, inlinedAt: !5972)
!6084 = !DILocation(line: 366, column: 6, scope: !4714, inlinedAt: !5972)
!6085 = !DILocation(line: 366, column: 26, scope: !4836, inlinedAt: !5972)
!6086 = !DILocation(line: 367, column: 6, scope: !4841, inlinedAt: !5972)
!6087 = !DILocation(line: 367, column: 11, scope: !4841, inlinedAt: !5972)
!6088 = !DILocation(line: 367, column: 6, scope: !4714, inlinedAt: !5972)
!6089 = !DILocation(line: 367, column: 26, scope: !4841, inlinedAt: !5972)
!6090 = !DILocation(line: 368, column: 6, scope: !4846, inlinedAt: !5972)
!6091 = !DILocation(line: 368, column: 11, scope: !4846, inlinedAt: !5972)
!6092 = !DILocation(line: 368, column: 6, scope: !4714, inlinedAt: !5972)
!6093 = !DILocation(line: 368, column: 26, scope: !4846, inlinedAt: !5972)
!6094 = !DILocation(line: 369, column: 6, scope: !4851, inlinedAt: !5972)
!6095 = !DILocation(line: 369, column: 11, scope: !4851, inlinedAt: !5972)
!6096 = !DILocation(line: 369, column: 6, scope: !4714, inlinedAt: !5972)
!6097 = !DILocation(line: 369, column: 26, scope: !4851, inlinedAt: !5972)
!6098 = !DILocation(line: 370, column: 6, scope: !4856, inlinedAt: !5972)
!6099 = !DILocation(line: 370, column: 11, scope: !4856, inlinedAt: !5972)
!6100 = !DILocation(line: 370, column: 6, scope: !4714, inlinedAt: !5972)
!6101 = !DILocation(line: 370, column: 26, scope: !4856, inlinedAt: !5972)
!6102 = !DILocation(line: 371, column: 6, scope: !4861, inlinedAt: !5972)
!6103 = !DILocation(line: 371, column: 11, scope: !4861, inlinedAt: !5972)
!6104 = !DILocation(line: 371, column: 6, scope: !4714, inlinedAt: !5972)
!6105 = !DILocation(line: 371, column: 26, scope: !4861, inlinedAt: !5972)
!6106 = !DILocation(line: 372, column: 6, scope: !4866, inlinedAt: !5972)
!6107 = !DILocation(line: 372, column: 11, scope: !4866, inlinedAt: !5972)
!6108 = !DILocation(line: 372, column: 6, scope: !4714, inlinedAt: !5972)
!6109 = !DILocation(line: 372, column: 26, scope: !4866, inlinedAt: !5972)
!6110 = !DILocation(line: 373, column: 6, scope: !4871, inlinedAt: !5972)
!6111 = !DILocation(line: 373, column: 11, scope: !4871, inlinedAt: !5972)
!6112 = !DILocation(line: 373, column: 6, scope: !4714, inlinedAt: !5972)
!6113 = !DILocation(line: 373, column: 26, scope: !4871, inlinedAt: !5972)
!6114 = !DILocation(line: 374, column: 6, scope: !4876, inlinedAt: !5972)
!6115 = !DILocation(line: 374, column: 11, scope: !4876, inlinedAt: !5972)
!6116 = !DILocation(line: 374, column: 6, scope: !4714, inlinedAt: !5972)
!6117 = !DILocation(line: 374, column: 26, scope: !4876, inlinedAt: !5972)
!6118 = !DILocation(line: 375, column: 6, scope: !4881, inlinedAt: !5972)
!6119 = !DILocation(line: 375, column: 11, scope: !4881, inlinedAt: !5972)
!6120 = !DILocation(line: 375, column: 6, scope: !4714, inlinedAt: !5972)
!6121 = !DILocation(line: 375, column: 27, scope: !4881, inlinedAt: !5972)
!6122 = !DILocation(line: 376, column: 6, scope: !4886, inlinedAt: !5972)
!6123 = !DILocation(line: 376, column: 11, scope: !4886, inlinedAt: !5972)
!6124 = !DILocation(line: 376, column: 6, scope: !4714, inlinedAt: !5972)
!6125 = !DILocation(line: 376, column: 32, scope: !4886, inlinedAt: !5972)
!6126 = !DILocation(line: 377, column: 6, scope: !4891, inlinedAt: !5972)
!6127 = !DILocation(line: 377, column: 11, scope: !4891, inlinedAt: !5972)
!6128 = !DILocation(line: 377, column: 6, scope: !4714, inlinedAt: !5972)
!6129 = !DILocation(line: 377, column: 32, scope: !4891, inlinedAt: !5972)
!6130 = !DILocation(line: 378, column: 6, scope: !4896, inlinedAt: !5972)
!6131 = !DILocation(line: 378, column: 11, scope: !4896, inlinedAt: !5972)
!6132 = !DILocation(line: 378, column: 6, scope: !4714, inlinedAt: !5972)
!6133 = !DILocation(line: 378, column: 32, scope: !4896, inlinedAt: !5972)
!6134 = !DILocation(line: 379, column: 6, scope: !4901, inlinedAt: !5972)
!6135 = !DILocation(line: 379, column: 11, scope: !4901, inlinedAt: !5972)
!6136 = !DILocation(line: 379, column: 6, scope: !4714, inlinedAt: !5972)
!6137 = !DILocation(line: 379, column: 33, scope: !4901, inlinedAt: !5972)
!6138 = !DILocation(line: 380, column: 6, scope: !4906, inlinedAt: !5972)
!6139 = !DILocation(line: 380, column: 11, scope: !4906, inlinedAt: !5972)
!6140 = !DILocation(line: 380, column: 6, scope: !4714, inlinedAt: !5972)
!6141 = !DILocation(line: 380, column: 33, scope: !4906, inlinedAt: !5972)
!6142 = !DILocation(line: 381, column: 6, scope: !4911, inlinedAt: !5972)
!6143 = !DILocation(line: 381, column: 11, scope: !4911, inlinedAt: !5972)
!6144 = !DILocation(line: 381, column: 6, scope: !4714, inlinedAt: !5972)
!6145 = !DILocation(line: 381, column: 33, scope: !4911, inlinedAt: !5972)
!6146 = !DILocation(line: 382, column: 2, scope: !4916, inlinedAt: !5972)
!6147 = !DILocation(line: 382, column: 2, scope: !4920, inlinedAt: !5972)
!6148 = !DILocation(line: 382, column: 2, scope: !4921, inlinedAt: !5972)
!6149 = !DILocation(line: 386, column: 1, scope: !4714, inlinedAt: !5972)
!6150 = !DILocation(line: 547, column: 9, scope: !4697, inlinedAt: !5964)
!6151 = !DILocation(line: 549, column: 8, scope: !4927, inlinedAt: !5964)
!6152 = !DILocation(line: 549, column: 7, scope: !4697, inlinedAt: !5964)
!6153 = !DILocation(line: 550, column: 4, scope: !4927, inlinedAt: !5964)
!6154 = !DILocation(line: 553, column: 33, scope: !4697, inlinedAt: !5964)
!6155 = !DILocation(line: 325, column: 6, scope: !4932, inlinedAt: !5970)
!6156 = !DILocation(line: 325, column: 6, scope: !4708, inlinedAt: !5970)
!6157 = !DILocation(line: 326, column: 3, scope: !4932, inlinedAt: !5970)
!6158 = !DILocation(line: 332, column: 9, scope: !4708, inlinedAt: !5970)
!6159 = !DILocation(line: 332, column: 15, scope: !4708, inlinedAt: !5970)
!6160 = !DILocation(line: 332, column: 2, scope: !4708, inlinedAt: !5970)
!6161 = !DILocation(line: 336, column: 1, scope: !4708, inlinedAt: !5970)
!6162 = !DILocation(line: 553, column: 5, scope: !4697, inlinedAt: !5964)
!6163 = !DILocation(line: 553, column: 41, scope: !4697, inlinedAt: !5964)
!6164 = !DILocation(line: 554, column: 5, scope: !4697, inlinedAt: !5964)
!6165 = !DILocation(line: 554, column: 12, scope: !4697, inlinedAt: !5964)
!6166 = !DILocation(line: 448, column: 31, scope: !4692, inlinedAt: !5963)
!6167 = !DILocation(line: 448, column: 34, scope: !4692, inlinedAt: !5963)
!6168 = !DILocation(line: 448, column: 14, scope: !4692, inlinedAt: !5963)
!6169 = !DILocation(line: 450, column: 22, scope: !4692, inlinedAt: !5963)
!6170 = !DILocation(line: 450, column: 25, scope: !4692, inlinedAt: !5963)
!6171 = !DILocation(line: 450, column: 30, scope: !4692, inlinedAt: !5963)
!6172 = !DILocation(line: 450, column: 36, scope: !4692, inlinedAt: !5963)
!6173 = !DILocation(line: 450, column: 8, scope: !4692, inlinedAt: !5963)
!6174 = !DILocation(line: 450, column: 6, scope: !4692, inlinedAt: !5963)
!6175 = !DILocation(line: 451, column: 9, scope: !4692, inlinedAt: !5963)
!6176 = !DILocation(line: 552, column: 3, scope: !4697, inlinedAt: !5964)
!6177 = !DILocation(line: 557, column: 19, scope: !4699, inlinedAt: !5964)
!6178 = !DILocation(line: 557, column: 25, scope: !4699, inlinedAt: !5964)
!6179 = !DILocation(line: 557, column: 9, scope: !4699, inlinedAt: !5964)
!6180 = !DILocation(line: 557, column: 2, scope: !4699, inlinedAt: !5964)
!6181 = !DILocation(line: 558, column: 1, scope: !4699, inlinedAt: !5964)
!6182 = !DILocation(line: 591, column: 3, scope: !5965)
!6183 = !DILocation(line: 592, column: 19, scope: !5961)
!6184 = !DILocation(line: 592, column: 26, scope: !5961)
!6185 = !DILocation(line: 592, column: 9, scope: !5961)
!6186 = !DILocation(line: 592, column: 2, scope: !5961)
!6187 = !DILocation(line: 593, column: 1, scope: !5961)
!6188 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6189, file: !6189, line: 52, type: !6190, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!6189 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!6190 = !DISubroutineType(types: !6191)
!6191 = !{!489, !489}
!6192 = !DILocalVariable(name: "overflow", arg: 1, scope: !6188, file: !6189, line: 52, type: !489)
!6193 = !DILocation(line: 52, column: 60, scope: !6188)
!6194 = !DILocation(line: 54, column: 9, scope: !6188)
!6195 = !DILocation(line: 54, column: 2, scope: !6188)
!6196 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !5871, file: !5871, line: 392, type: !6197, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !255)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!201, !216, !328, !4978, !194}
!6199 = !DILocalVariable(name: "dev", arg: 1, scope: !6196, file: !5871, line: 392, type: !216)
!6200 = !DILocation(line: 392, column: 55, scope: !6196)
!6201 = !DILocalVariable(name: "size", arg: 2, scope: !6196, file: !5871, line: 392, type: !328)
!6202 = !DILocation(line: 392, column: 67, scope: !6196)
!6203 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !6196, file: !5871, line: 393, type: !4978)
!6204 = !DILocation(line: 393, column: 15, scope: !6196)
!6205 = !DILocalVariable(name: "gfp", arg: 4, scope: !6196, file: !5871, line: 393, type: !194)
!6206 = !DILocation(line: 393, column: 33, scope: !6196)
!6207 = !DILocation(line: 396, column: 25, scope: !6196)
!6208 = !DILocation(line: 396, column: 30, scope: !6196)
!6209 = !DILocation(line: 396, column: 36, scope: !6196)
!6210 = !DILocation(line: 396, column: 48, scope: !6196)
!6211 = !DILocation(line: 397, column: 5, scope: !6196)
!6212 = !DILocation(line: 397, column: 9, scope: !6196)
!6213 = !DILocation(line: 397, column: 4, scope: !6196)
!6214 = !DILocation(line: 396, column: 9, scope: !6196)
!6215 = !DILocation(line: 396, column: 2, scope: !6196)
