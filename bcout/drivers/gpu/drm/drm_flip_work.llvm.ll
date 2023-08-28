; ModuleID = '../bcout/drivers/gpu/drm/drm_flip_work.llvm.bc'
source_filename = "drivers/gpu/drm/drm_flip_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.0, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.2 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.2 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.5, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.13, %struct.list_head, %struct.list_head, %union.anon.14 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.8, i8* }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.13 = type { %struct.list_head }
%union.anon.14 = type { %struct.hlist_node }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
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
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.61 = type { %struct.callback_head }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.16 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.39 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kref = type { %struct.refcount_struct }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.26 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.26 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.18, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.19, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.20, %union.anon.24, %struct.key_restriction* }
%union.anon.18 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.21, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.21 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.24 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.59 = type { %struct.callback_head }
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
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.drm_flip_task = type { %struct.list_head, i8* }
%struct.drm_flip_work = type { i8*, void (%struct.drm_flip_work*, i8*)*, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }

@.str = private unnamed_addr constant [29 x i8] c"%s could not allocate task!\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_flip_work.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__preempt_count = external dso_local global i32, section ".data", align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_flip_task* @drm_flip_work_allocate_task(i8* %data, i32 %flags) #0 !dbg !128 {
entry:
  %data.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %task = alloca %struct.drm_flip_task*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata %struct.drm_flip_task** %task, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i32, i32* %flags.addr, align 4, !dbg !137
  %call = call i8* @kzalloc(i64 24, i32 %0) #9, !dbg !138
  %1 = bitcast i8* %call to %struct.drm_flip_task*, !dbg !138
  store %struct.drm_flip_task* %1, %struct.drm_flip_task** %task, align 8, !dbg !139
  %2 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !140
  %tobool = icmp ne %struct.drm_flip_task* %2, null, !dbg !140
  br i1 %tobool, label %if.then, label %if.end, !dbg !142

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data.addr, align 8, !dbg !143
  %4 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !144
  %data1 = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %4, i32 0, i32 1, !dbg !145
  store i8* %3, i8** %data1, align 8, !dbg !146
  br label %if.end, !dbg !144

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !147
  ret %struct.drm_flip_task* %5, !dbg !148
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !149 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !156, metadata !DIExpression()), !dbg !163
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !169, metadata !DIExpression()), !dbg !170
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !171, metadata !DIExpression()), !dbg !172
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !173, metadata !DIExpression()), !dbg !174
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !175, metadata !DIExpression()), !dbg !179
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !181, metadata !DIExpression()), !dbg !185
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !187, metadata !DIExpression()), !dbg !191
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !196, metadata !DIExpression()), !dbg !197
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !198, metadata !DIExpression()), !dbg !199
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !200, metadata !DIExpression()), !dbg !201
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !202, metadata !DIExpression()), !dbg !203
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !204, metadata !DIExpression()), !dbg !205
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !206, metadata !DIExpression()), !dbg !207
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !208, metadata !DIExpression()), !dbg !209
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !210, metadata !DIExpression()), !dbg !211
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !212, metadata !DIExpression()), !dbg !213
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load i64, i64* %size.addr, align 8, !dbg !216
  %1 = load i32, i32* %flags.addr, align 4, !dbg !217
  %or = or i32 %1, 256, !dbg !218
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !219
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !220
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !221

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !222
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !223
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !224

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !225
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !226
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !227
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !228
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !205
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !229
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !230
  %10 = load i32, i32* %order.i.i, align 4, !dbg !231
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !232
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !233
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !234
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !235
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !235
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !235
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !235
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !235
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !236
  br label %kmalloc.exit, !dbg !236

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !237
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !238
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !238
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !240

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !241
  br label %kmalloc_index.exit.i, !dbg !241

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !242
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !244
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !245

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !246
  br label %kmalloc_index.exit.i, !dbg !246

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !247
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !249
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !250

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !251
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !252
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !253

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !254
  br label %kmalloc_index.exit.i, !dbg !254

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !255
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !257
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !258

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !259
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !260
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !261

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !262
  br label %kmalloc_index.exit.i, !dbg !262

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !263
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !265
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !266

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !267
  br label %kmalloc_index.exit.i, !dbg !267

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !268
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !270
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !271

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !272
  br label %kmalloc_index.exit.i, !dbg !272

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !273
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !275
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !276

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !277
  br label %kmalloc_index.exit.i, !dbg !277

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !278
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !280
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !281

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !282
  br label %kmalloc_index.exit.i, !dbg !282

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !283
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !285
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !286

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !287
  br label %kmalloc_index.exit.i, !dbg !287

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !288
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !290
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !291

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !292
  br label %kmalloc_index.exit.i, !dbg !292

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !293
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !295
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !296

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !297
  br label %kmalloc_index.exit.i, !dbg !297

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !298
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !300
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !301

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !302
  br label %kmalloc_index.exit.i, !dbg !302

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !303
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !305
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !306

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !307
  br label %kmalloc_index.exit.i, !dbg !307

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !308
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !310
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !311

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !312
  br label %kmalloc_index.exit.i, !dbg !312

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !313
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !315
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !316

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !317
  br label %kmalloc_index.exit.i, !dbg !317

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !318
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !320
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !321

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !322
  br label %kmalloc_index.exit.i, !dbg !322

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !323
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !325
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !326

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !327
  br label %kmalloc_index.exit.i, !dbg !327

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !328
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !330
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !331

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !332
  br label %kmalloc_index.exit.i, !dbg !332

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !333
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !335
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !336

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !337
  br label %kmalloc_index.exit.i, !dbg !337

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !338
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !340
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !341

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !342
  br label %kmalloc_index.exit.i, !dbg !342

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !343
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !345
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !346

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !347
  br label %kmalloc_index.exit.i, !dbg !347

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !348
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !350
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !351

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !352
  br label %kmalloc_index.exit.i, !dbg !352

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !353
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !355
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !356

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !357
  br label %kmalloc_index.exit.i, !dbg !357

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !358
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !360
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !361

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !362
  br label %kmalloc_index.exit.i, !dbg !362

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !363
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !365
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !366

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !367
  br label %kmalloc_index.exit.i, !dbg !367

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !368
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !370
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !371

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !372
  br label %kmalloc_index.exit.i, !dbg !372

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !373
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !375
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !376

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !377
  br label %kmalloc_index.exit.i, !dbg !377

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !378
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !380
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !381

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !382
  br label %kmalloc_index.exit.i, !dbg !382

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !383, !srcloc !386
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #8, !dbg !387, !srcloc !390
  unreachable, !dbg !391

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !392
  store i32 %45, i32* %index.i, align 4, !dbg !393
  %46 = load i32, i32* %index.i, align 4, !dbg !394
  %tobool.i = icmp ne i32 %46, 0, !dbg !394
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !396

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !397
  br label %kmalloc.exit, !dbg !397

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !398
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !399
  %and.i.i = and i32 %48, 17, !dbg !399
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !399
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !399
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !399
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !399
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !401

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !402
  br label %kmalloc_type.exit.i, !dbg !402

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !403
  %and2.i.i = and i32 %49, 1, !dbg !404
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !403
  %50 = zext i1 %tobool3.i.i to i64, !dbg !403
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !403
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !405
  br label %kmalloc_type.exit.i, !dbg !405

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !406
  %idxprom.i = zext i32 %51 to i64, !dbg !407
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !407
  %52 = load i32, i32* %index.i, align 4, !dbg !408
  %idxprom6.i = zext i32 %52 to i64, !dbg !407
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !407
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !407
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !409
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !410
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !411
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !412
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !413
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !413
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !413
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !413
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !413
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !174
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !414
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !415
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !416
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !417
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !418
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !419
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !420
  store i8* %62, i8** %retval.i, align 8, !dbg !421
  br label %kmalloc.exit, !dbg !421

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !422
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !423
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !424
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !424
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !424
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !424
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !424
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !425
  br label %kmalloc.exit, !dbg !425

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !426
  ret i8* %65, !dbg !427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_flip_work_queue_task(%struct.drm_flip_work* %work, %struct.drm_flip_task* %task) #0 !dbg !428 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !431, metadata !DIExpression()), !dbg !437
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !439, metadata !DIExpression()), !dbg !440
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !441, metadata !DIExpression()), !dbg !447
  %work.addr = alloca %struct.drm_flip_work*, align 8
  %task.addr = alloca %struct.drm_flip_task*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.drm_flip_work* %work, %struct.drm_flip_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_flip_work** %work.addr, metadata !454, metadata !DIExpression()), !dbg !455
  store %struct.drm_flip_task* %task, %struct.drm_flip_task** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_flip_task** %task.addr, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !458, metadata !DIExpression()), !dbg !459
  br label %do.body, !dbg !460

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !461

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !462, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !465, metadata !DIExpression()), !dbg !464
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !464
  %conv = zext i1 %cmp to i32, !dbg !464
  store i32 1, i32* %tmp, align 4, !dbg !464
  %0 = load i32, i32* %tmp, align 4, !dbg !464
  br label %do.body2, !dbg !466

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !467

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !468

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !470, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !474, metadata !DIExpression()), !dbg !473
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !473
  %conv8 = zext i1 %cmp7 to i32, !dbg !473
  store i32 1, i32* %tmp9, align 4, !dbg !473
  %1 = load i32, i32* %tmp9, align 4, !dbg !473
  %call = call i64 @arch_local_irq_save() #9, !dbg !475
  store i64 %call, i64* %flags, align 8, !dbg !475
  br label %do.end, !dbg !475

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !468

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !467

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !476, !srcloc !477
  br label %do.body12, !dbg !476

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !478
  %lock = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %2, i32 0, i32 5, !dbg !478
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !479
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !480
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !480
  br label %do.end14, !dbg !478

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !476

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !467

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !466

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !461

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task.addr, align 8, !dbg !481
  %node = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %5, i32 0, i32 0, !dbg !482
  %6 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !483
  %queued = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %6, i32 0, i32 3, !dbg !484
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %queued) #9, !dbg !485
  %7 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !486
  %lock19 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %7, i32 0, i32 5, !dbg !487
  %8 = load i64, i64* %flags, align 8, !dbg !488
  store %struct.spinlock* %lock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %8, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !114, metadata !489, metadata !DIExpression()) #8, !dbg !492
  call void @llvm.dbg.declare(metadata !114, metadata !493, metadata !DIExpression()) #8, !dbg !492
  store i32 1, i32* %tmp.i, align 4, !dbg !492
  %9 = load i32, i32* %tmp.i, align 4, !dbg !492
  call void @llvm.dbg.declare(metadata !114, metadata !494, metadata !DIExpression()) #8, !dbg !499
  call void @llvm.dbg.declare(metadata !114, metadata !500, metadata !DIExpression()) #8, !dbg !499
  store i32 1, i32* %tmp8.i, align 4, !dbg !499
  %10 = load i32, i32* %tmp8.i, align 4, !dbg !499
  %11 = load i64, i64* %flags.addr.i, align 8, !dbg !501
  call void @arch_local_irq_restore(i64 %11) #11, !dbg !501
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !502, !srcloc !504
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !505
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !505
  %rlock.i21 = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !505
  ret void, !dbg !507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !508 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !512, metadata !DIExpression()), !dbg !513
  %call = call i64 @arch_local_save_flags() #9, !dbg !514
  store i64 %call, i64* %f, align 8, !dbg !515
  call void @arch_local_irq_disable() #9, !dbg !516
  %0 = load i64, i64* %f, align 8, !dbg !517
  ret i64 %0, !dbg !518
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !519 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !523, metadata !DIExpression()), !dbg !524
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !527
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !528
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !529
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !529
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !530
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_flip_work_queue(%struct.drm_flip_work* %work, i8* %val) #0 !dbg !533 {
entry:
  %work.addr = alloca %struct.drm_flip_work*, align 8
  %val.addr = alloca i8*, align 8
  %task = alloca %struct.drm_flip_task*, align 8
  store %struct.drm_flip_work* %work, %struct.drm_flip_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_flip_work** %work.addr, metadata !534, metadata !DIExpression()), !dbg !535
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata %struct.drm_flip_task** %task, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i8*, i8** %val.addr, align 8, !dbg !540
  %call = call zeroext i1 @drm_can_sleep() #9, !dbg !541
  %1 = zext i1 %call to i64, !dbg !541
  %cond = select i1 %call, i32 3264, i32 2592, !dbg !541
  %call1 = call %struct.drm_flip_task* @drm_flip_work_allocate_task(i8* %0, i32 %cond) #9, !dbg !542
  store %struct.drm_flip_task* %call1, %struct.drm_flip_task** %task, align 8, !dbg !543
  %2 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !544
  %tobool = icmp ne %struct.drm_flip_task* %2, null, !dbg !544
  br i1 %tobool, label %if.then, label %if.else, !dbg !546

if.then:                                          ; preds = %entry
  %3 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !547
  %4 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !549
  call void @drm_flip_work_queue_task(%struct.drm_flip_work* %3, %struct.drm_flip_task* %4) #9, !dbg !550
  br label %if.end, !dbg !551

if.else:                                          ; preds = %entry
  %5 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !552
  %name = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %5, i32 0, i32 0, !dbg !552
  %6 = load i8*, i8** %name, align 8, !dbg !552
  call void (i8*, ...) @__drm_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %6) #9, !dbg !552
  %7 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !554
  %func = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %7, i32 0, i32 1, !dbg !555
  %8 = load void (%struct.drm_flip_work*, i8*)*, void (%struct.drm_flip_work*, i8*)** %func, align 8, !dbg !555
  %9 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !556
  %10 = load i8*, i8** %val.addr, align 8, !dbg !557
  call void %8(%struct.drm_flip_work* %9, i8* %10) #9, !dbg !554
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_can_sleep() #0 !dbg !559 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !565, metadata !DIExpression()), !dbg !570
  %pfo_val__.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pfo_val__.i, metadata !575, metadata !DIExpression()), !dbg !583
  %tmp.i = alloca i32, align 4
  %retval = alloca i1, align 1
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %0 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count) #7, !dbg !583, !srcloc !585
  store i32 %0, i32* %pfo_val__.i, align 4, !dbg !583
  %1 = load i32, i32* %pfo_val__.i, align 4, !dbg !583
  %conv.i = zext i32 %1 to i64, !dbg !583
  store i32 %1, i32* %tmp.i, align 4, !dbg !583
  %2 = load i32, i32* %tmp.i, align 4, !dbg !583
  %and.i = and i32 %2, 2147483647, !dbg !586
  %cmp = icmp ne i32 %and.i, 0, !dbg !587
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !588

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !589, metadata !DIExpression()), !dbg !590
  br label %do.body, !dbg !590

do.body:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !591, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !595, metadata !DIExpression()), !dbg !594
  %cmp1 = icmp eq i64* %__dummy, %__dummy2, !dbg !594
  %conv = zext i1 %cmp1 to i32, !dbg !594
  store i32 1, i32* %tmp, align 4, !dbg !594
  %3 = load i32, i32* %tmp, align 4, !dbg !594
  %call2 = call i64 @arch_local_save_flags() #9, !dbg !596
  store i64 %call2, i64* %_flags, align 8, !dbg !596
  br label %do.end, !dbg !596

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !600, metadata !DIExpression()), !dbg !599
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !599
  %conv7 = zext i1 %cmp6 to i32, !dbg !599
  store i32 1, i32* %tmp8, align 4, !dbg !599
  %4 = load i32, i32* %tmp8, align 4, !dbg !599
  %5 = load i64, i64* %_flags, align 8, !dbg !601
  store i64 %5, i64* %flags.addr.i, align 8
  %6 = load i64, i64* %flags.addr.i, align 8, !dbg !602
  %and.i11 = and i64 %6, 512, !dbg !603
  %tobool.i = icmp ne i64 %and.i11, 0, !dbg !604
  %lnot.i = xor i1 %tobool.i, true, !dbg !604
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !604
  store i32 %lnot.ext.i, i32* %tmp9, align 4, !dbg !601
  %7 = load i32, i32* %tmp9, align 4, !dbg !601
  store i32 %7, i32* %tmp3, align 4, !dbg !596
  %8 = load i32, i32* %tmp3, align 4, !dbg !590
  %tobool = icmp ne i32 %8, 0, !dbg !605
  br i1 %tobool, label %if.then, label %if.end, !dbg !606

if.then:                                          ; preds = %do.end, %entry
  store i1 false, i1* %retval, align 1, !dbg !607
  br label %return, !dbg !607

if.end:                                           ; preds = %do.end
  store i1 true, i1* %retval, align 1, !dbg !608
  br label %return, !dbg !608

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !609
  ret i1 %9, !dbg !609
}

; Function Attrs: noredzone
declare dso_local void @__drm_err(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_flip_work_commit(%struct.drm_flip_work* %work, %struct.workqueue_struct* %wq) #0 !dbg !610 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !431, metadata !DIExpression()), !dbg !615
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !439, metadata !DIExpression()), !dbg !617
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !441, metadata !DIExpression()), !dbg !618
  %work.addr = alloca %struct.drm_flip_work*, align 8
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.drm_flip_work* %work, %struct.drm_flip_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_flip_work** %work.addr, metadata !625, metadata !DIExpression()), !dbg !626
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !629, metadata !DIExpression()), !dbg !630
  br label %do.body, !dbg !631

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !632

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !633, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !636, metadata !DIExpression()), !dbg !635
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !635
  %conv = zext i1 %cmp to i32, !dbg !635
  store i32 1, i32* %tmp, align 4, !dbg !635
  %0 = load i32, i32* %tmp, align 4, !dbg !635
  br label %do.body2, !dbg !637

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !638

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !639

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !641, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !645, metadata !DIExpression()), !dbg !644
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !644
  %conv8 = zext i1 %cmp7 to i32, !dbg !644
  store i32 1, i32* %tmp9, align 4, !dbg !644
  %1 = load i32, i32* %tmp9, align 4, !dbg !644
  %call = call i64 @arch_local_irq_save() #9, !dbg !646
  store i64 %call, i64* %flags, align 8, !dbg !646
  br label %do.end, !dbg !646

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !639

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !638

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !647, !srcloc !648
  br label %do.body12, !dbg !647

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !649
  %lock = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %2, i32 0, i32 5, !dbg !649
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !650
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !651
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !651
  br label %do.end14, !dbg !649

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !647

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !638

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !637

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !632

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !652
  %queued = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %5, i32 0, i32 3, !dbg !653
  %6 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !654
  %commited = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %6, i32 0, i32 4, !dbg !655
  call void @list_splice_tail(%struct.list_head* %queued, %struct.list_head* %commited) #9, !dbg !656
  %7 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !657
  %queued19 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %7, i32 0, i32 3, !dbg !658
  call void @INIT_LIST_HEAD(%struct.list_head* %queued19) #9, !dbg !659
  %8 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !660
  %lock20 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %8, i32 0, i32 5, !dbg !661
  %9 = load i64, i64* %flags, align 8, !dbg !662
  store %struct.spinlock* %lock20, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !114, metadata !489, metadata !DIExpression()) #8, !dbg !663
  call void @llvm.dbg.declare(metadata !114, metadata !493, metadata !DIExpression()) #8, !dbg !663
  store i32 1, i32* %tmp.i, align 4, !dbg !663
  %10 = load i32, i32* %tmp.i, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata !114, metadata !494, metadata !DIExpression()) #8, !dbg !664
  call void @llvm.dbg.declare(metadata !114, metadata !500, metadata !DIExpression()) #8, !dbg !664
  store i32 1, i32* %tmp8.i, align 4, !dbg !664
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !664
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !665
  call void @arch_local_irq_restore(i64 %12) #11, !dbg !665
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !666, !srcloc !504
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !667
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !667
  %rlock.i23 = bitcast %union.anon* %14 to %struct.raw_spinlock*, !dbg !667
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !668
  %16 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !669
  %worker = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %16, i32 0, i32 2, !dbg !670
  %call21 = call zeroext i1 @queue_work(%struct.workqueue_struct* %15, %struct.work_struct* %worker) #9, !dbg !671
  ret void, !dbg !672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_splice_tail(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !673 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !674, metadata !DIExpression()), !dbg !675
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !676, metadata !DIExpression()), !dbg !677
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !678
  %call = call i32 @list_empty(%struct.list_head* %0) #9, !dbg !680
  %tobool = icmp ne i32 %call, 0, !dbg !680
  br i1 %tobool, label %if.end, label %if.then, !dbg !681

if.then:                                          ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !682
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !683
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !684
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !684
  %4 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !685
  call void @__list_splice(%struct.list_head* %1, %struct.list_head* %3, %struct.list_head* %4) #9, !dbg !686
  br label %if.end, !dbg !686

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !688 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !691, metadata !DIExpression()), !dbg !692
  br label %do.body, !dbg !693

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !694

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !696

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !694

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !698
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !698
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !698
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !698
  br label %do.end3, !dbg !698

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !694

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !700
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !701
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !702
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !703
  ret void, !dbg !704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !705 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !708, metadata !DIExpression()), !dbg !709
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !710, metadata !DIExpression()), !dbg !711
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !712
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !713
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !714
  ret i1 %call, !dbg !715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_flip_work_init(%struct.drm_flip_work* %work, i8* %name, void (%struct.drm_flip_work*, i8*)* %func) #0 !dbg !716 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !441, metadata !DIExpression()), !dbg !719
  %work.addr = alloca %struct.drm_flip_work*, align 8
  %name.addr = alloca i8*, align 8
  %func.addr = alloca void (%struct.drm_flip_work*, i8*)*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %.compoundliteral6 = alloca %struct.atomic64_t, align 8
  store %struct.drm_flip_work* %work, %struct.drm_flip_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_flip_work** %work.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store void (%struct.drm_flip_work*, i8*)* %func, void (%struct.drm_flip_work*, i8*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.drm_flip_work*, i8*)** %func.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load i8*, i8** %name.addr, align 8, !dbg !728
  %1 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !729
  %name1 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %1, i32 0, i32 0, !dbg !730
  store i8* %0, i8** %name1, align 8, !dbg !731
  %2 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !732
  %queued = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %2, i32 0, i32 3, !dbg !733
  call void @INIT_LIST_HEAD(%struct.list_head* %queued) #9, !dbg !734
  %3 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !735
  %commited = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %3, i32 0, i32 4, !dbg !736
  call void @INIT_LIST_HEAD(%struct.list_head* %commited) #9, !dbg !737
  br label %do.body, !dbg !738

do.body:                                          ; preds = %entry
  %4 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !739
  %lock = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %4, i32 0, i32 5, !dbg !739
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !740
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !741
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !741
  %7 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !739
  %lock2 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %7, i32 0, i32 5, !dbg !739
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !739
  %rlock = bitcast %union.anon* %8 to %struct.raw_spinlock*, !dbg !739
  %9 = bitcast %struct.spinlock* %lock2 to i8*, !dbg !739
  %10 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 1 %10, i64 0, i1 false), !dbg !739
  br label %do.end, !dbg !739

do.end:                                           ; preds = %do.body
  %11 = load void (%struct.drm_flip_work*, i8*)*, void (%struct.drm_flip_work*, i8*)** %func.addr, align 8, !dbg !742
  %12 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !743
  %func3 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %12, i32 0, i32 1, !dbg !744
  store void (%struct.drm_flip_work*, i8*)* %11, void (%struct.drm_flip_work*, i8*)** %func3, align 8, !dbg !745
  br label %do.body4, !dbg !746

do.body4:                                         ; preds = %do.end
  %13 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !747
  %worker = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %13, i32 0, i32 2, !dbg !747
  call void @__init_work(%struct.work_struct* %worker, i32 0) #9, !dbg !747
  %14 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !747
  %worker5 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %14, i32 0, i32 2, !dbg !747
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %worker5, i32 0, i32 0, !dbg !747
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral6, i32 0, i32 0, !dbg !747
  store i64 68719476704, i64* %counter, align 8, !dbg !747
  %15 = bitcast %struct.atomic64_t* %data to i8*, !dbg !747
  %16 = bitcast %struct.atomic64_t* %.compoundliteral6 to i8*, !dbg !747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false), !dbg !747
  %17 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !747
  %worker7 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %17, i32 0, i32 2, !dbg !747
  %entry8 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %worker7, i32 0, i32 1, !dbg !747
  call void @INIT_LIST_HEAD(%struct.list_head* %entry8) #9, !dbg !747
  %18 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !747
  %worker9 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %18, i32 0, i32 2, !dbg !747
  %func10 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %worker9, i32 0, i32 2, !dbg !747
  store void (%struct.work_struct*)* @flip_worker, void (%struct.work_struct*)** %func10, align 8, !dbg !747
  br label %do.end11, !dbg !747

do.end11:                                         ; preds = %do.body4
  ret void, !dbg !749
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !750 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !753, metadata !DIExpression()), !dbg !754
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !755, metadata !DIExpression()), !dbg !756
  ret void, !dbg !757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @flip_worker(%struct.work_struct* %w) #0 !dbg !758 {
entry:
  %lock.addr.i47 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i47, metadata !431, metadata !DIExpression()), !dbg !759
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !439, metadata !DIExpression()), !dbg !762
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !441, metadata !DIExpression()), !dbg !763
  %w.addr = alloca %struct.work_struct*, align 8
  %work = alloca %struct.drm_flip_work*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_flip_work*, align 8
  %tasks = alloca %struct.list_head, align 8
  %flags = alloca i64, align 8
  %task = alloca %struct.drm_flip_task*, align 8
  %tmp1 = alloca %struct.drm_flip_task*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %__mptr26 = alloca i8*, align 8
  %tmp29 = alloca %struct.drm_flip_task*, align 8
  %__mptr31 = alloca i8*, align 8
  %tmp35 = alloca %struct.drm_flip_task*, align 8
  %__mptr40 = alloca i8*, align 8
  %tmp45 = alloca %struct.drm_flip_task*, align 8
  store %struct.work_struct* %w, %struct.work_struct** %w.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %w.addr, metadata !770, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata %struct.drm_flip_work** %work, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !774, metadata !DIExpression()), !dbg !776
  %0 = load %struct.work_struct*, %struct.work_struct** %w.addr, align 8, !dbg !776
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !776
  store i8* %1, i8** %__mptr, align 8, !dbg !776
  br label %do.body, !dbg !776

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !777

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !776
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !776
  %3 = bitcast i8* %add.ptr to %struct.drm_flip_work*, !dbg !776
  store %struct.drm_flip_work* %3, %struct.drm_flip_work** %tmp, align 8, !dbg !777
  %4 = load %struct.drm_flip_work*, %struct.drm_flip_work** %tmp, align 8, !dbg !776
  store %struct.drm_flip_work* %4, %struct.drm_flip_work** %work, align 8, !dbg !773
  call void @llvm.dbg.declare(metadata %struct.list_head* %tasks, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !781, metadata !DIExpression()), !dbg !782
  br label %while.body, !dbg !783

while.body:                                       ; preds = %do.end, %for.end
  call void @llvm.dbg.declare(metadata %struct.drm_flip_task** %task, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata %struct.drm_flip_task** %tmp1, metadata !786, metadata !DIExpression()), !dbg !787
  call void @INIT_LIST_HEAD(%struct.list_head* %tasks) #9, !dbg !788
  br label %do.body2, !dbg !789

do.body2:                                         ; preds = %while.body
  br label %do.body3, !dbg !790

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !791, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !794, metadata !DIExpression()), !dbg !793
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !793
  %conv = zext i1 %cmp to i32, !dbg !793
  store i32 1, i32* %tmp4, align 4, !dbg !793
  %5 = load i32, i32* %tmp4, align 4, !dbg !793
  br label %do.body5, !dbg !795

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !796

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !797

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !799, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !803, metadata !DIExpression()), !dbg !802
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !802
  %conv11 = zext i1 %cmp10 to i32, !dbg !802
  store i32 1, i32* %tmp12, align 4, !dbg !802
  %6 = load i32, i32* %tmp12, align 4, !dbg !802
  %call = call i64 @arch_local_irq_save() #9, !dbg !804
  store i64 %call, i64* %flags, align 8, !dbg !804
  br label %do.end13, !dbg !804

do.end13:                                         ; preds = %do.body7
  br label %do.end14, !dbg !797

do.end14:                                         ; preds = %do.end13
  br label %do.body15, !dbg !796

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !805, !srcloc !806
  br label %do.body16, !dbg !805

do.body16:                                        ; preds = %do.body15
  %7 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work, align 8, !dbg !807
  %lock = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %7, i32 0, i32 5, !dbg !807
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !808
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !809
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !809
  br label %do.end18, !dbg !807

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !805

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !796

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !795

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !790

do.end22:                                         ; preds = %do.end21
  %10 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work, align 8, !dbg !810
  %commited = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %10, i32 0, i32 4, !dbg !811
  call void @list_splice_tail(%struct.list_head* %commited, %struct.list_head* %tasks) #9, !dbg !812
  %11 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work, align 8, !dbg !813
  %commited23 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %11, i32 0, i32 4, !dbg !814
  call void @INIT_LIST_HEAD(%struct.list_head* %commited23) #9, !dbg !815
  %12 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work, align 8, !dbg !816
  %lock24 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %12, i32 0, i32 5, !dbg !817
  %13 = load i64, i64* %flags, align 8, !dbg !818
  store %struct.spinlock* %lock24, %struct.spinlock** %lock.addr.i47, align 8
  store i64 %13, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !114, metadata !489, metadata !DIExpression()) #8, !dbg !819
  call void @llvm.dbg.declare(metadata !114, metadata !493, metadata !DIExpression()) #8, !dbg !819
  store i32 1, i32* %tmp.i, align 4, !dbg !819
  %14 = load i32, i32* %tmp.i, align 4, !dbg !819
  call void @llvm.dbg.declare(metadata !114, metadata !494, metadata !DIExpression()) #8, !dbg !820
  call void @llvm.dbg.declare(metadata !114, metadata !500, metadata !DIExpression()) #8, !dbg !820
  store i32 1, i32* %tmp8.i, align 4, !dbg !820
  %15 = load i32, i32* %tmp8.i, align 4, !dbg !820
  %16 = load i64, i64* %flags.addr.i, align 8, !dbg !821
  call void @arch_local_irq_restore(i64 %16) #11, !dbg !821
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !822, !srcloc !504
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i47, align 8, !dbg !823
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !823
  %rlock.i48 = bitcast %union.anon* %18 to %struct.raw_spinlock*, !dbg !823
  %call25 = call i32 @list_empty(%struct.list_head* %tasks) #9, !dbg !824
  %tobool = icmp ne i32 %call25, 0, !dbg !824
  br i1 %tobool, label %if.then, label %if.end, !dbg !826

if.then:                                          ; preds = %do.end22
  br label %while.end, !dbg !827

if.end:                                           ; preds = %do.end22
  call void @llvm.dbg.declare(metadata i8** %__mptr26, metadata !828, metadata !DIExpression()), !dbg !831
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tasks, i32 0, i32 0, !dbg !831
  %19 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !831
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !831
  store i8* %20, i8** %__mptr26, align 8, !dbg !831
  br label %do.body27, !dbg !831

do.body27:                                        ; preds = %if.end
  br label %do.end28, !dbg !832

do.end28:                                         ; preds = %do.body27
  %21 = load i8*, i8** %__mptr26, align 8, !dbg !831
  %add.ptr30 = getelementptr i8, i8* %21, i64 0, !dbg !831
  %22 = bitcast i8* %add.ptr30 to %struct.drm_flip_task*, !dbg !831
  store %struct.drm_flip_task* %22, %struct.drm_flip_task** %tmp29, align 8, !dbg !832
  %23 = load %struct.drm_flip_task*, %struct.drm_flip_task** %tmp29, align 8, !dbg !831
  store %struct.drm_flip_task* %23, %struct.drm_flip_task** %task, align 8, !dbg !834
  call void @llvm.dbg.declare(metadata i8** %__mptr31, metadata !835, metadata !DIExpression()), !dbg !837
  %24 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !837
  %node = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %24, i32 0, i32 0, !dbg !837
  %next32 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !837
  %25 = load %struct.list_head*, %struct.list_head** %next32, align 8, !dbg !837
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !837
  store i8* %26, i8** %__mptr31, align 8, !dbg !837
  br label %do.body33, !dbg !837

do.body33:                                        ; preds = %do.end28
  br label %do.end34, !dbg !838

do.end34:                                         ; preds = %do.body33
  %27 = load i8*, i8** %__mptr31, align 8, !dbg !837
  %add.ptr36 = getelementptr i8, i8* %27, i64 0, !dbg !837
  %28 = bitcast i8* %add.ptr36 to %struct.drm_flip_task*, !dbg !837
  store %struct.drm_flip_task* %28, %struct.drm_flip_task** %tmp35, align 8, !dbg !838
  %29 = load %struct.drm_flip_task*, %struct.drm_flip_task** %tmp35, align 8, !dbg !837
  store %struct.drm_flip_task* %29, %struct.drm_flip_task** %tmp1, align 8, !dbg !834
  br label %for.cond, !dbg !834

for.cond:                                         ; preds = %do.end44, %do.end34
  %30 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !840
  %node37 = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %30, i32 0, i32 0, !dbg !840
  %cmp38 = icmp eq %struct.list_head* %node37, %tasks, !dbg !840
  %lnot = xor i1 %cmp38, true, !dbg !840
  br i1 %lnot, label %for.body, label %for.end, !dbg !834

for.body:                                         ; preds = %for.cond
  %31 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work, align 8, !dbg !842
  %func = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %31, i32 0, i32 1, !dbg !844
  %32 = load void (%struct.drm_flip_work*, i8*)*, void (%struct.drm_flip_work*, i8*)** %func, align 8, !dbg !844
  %33 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work, align 8, !dbg !845
  %34 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !846
  %data = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %34, i32 0, i32 1, !dbg !847
  %35 = load i8*, i8** %data, align 8, !dbg !847
  call void %32(%struct.drm_flip_work* %33, i8* %35) #9, !dbg !842
  %36 = load %struct.drm_flip_task*, %struct.drm_flip_task** %task, align 8, !dbg !848
  %37 = bitcast %struct.drm_flip_task* %36 to i8*, !dbg !848
  call void @kfree(i8* %37) #9, !dbg !849
  br label %for.inc, !dbg !850

for.inc:                                          ; preds = %for.body
  %38 = load %struct.drm_flip_task*, %struct.drm_flip_task** %tmp1, align 8, !dbg !840
  store %struct.drm_flip_task* %38, %struct.drm_flip_task** %task, align 8, !dbg !840
  call void @llvm.dbg.declare(metadata i8** %__mptr40, metadata !851, metadata !DIExpression()), !dbg !853
  %39 = load %struct.drm_flip_task*, %struct.drm_flip_task** %tmp1, align 8, !dbg !853
  %node41 = getelementptr inbounds %struct.drm_flip_task, %struct.drm_flip_task* %39, i32 0, i32 0, !dbg !853
  %next42 = getelementptr inbounds %struct.list_head, %struct.list_head* %node41, i32 0, i32 0, !dbg !853
  %40 = load %struct.list_head*, %struct.list_head** %next42, align 8, !dbg !853
  %41 = bitcast %struct.list_head* %40 to i8*, !dbg !853
  store i8* %41, i8** %__mptr40, align 8, !dbg !853
  br label %do.body43, !dbg !853

do.body43:                                        ; preds = %for.inc
  br label %do.end44, !dbg !854

do.end44:                                         ; preds = %do.body43
  %42 = load i8*, i8** %__mptr40, align 8, !dbg !853
  %add.ptr46 = getelementptr i8, i8* %42, i64 0, !dbg !853
  %43 = bitcast i8* %add.ptr46 to %struct.drm_flip_task*, !dbg !853
  store %struct.drm_flip_task* %43, %struct.drm_flip_task** %tmp45, align 8, !dbg !854
  %44 = load %struct.drm_flip_task*, %struct.drm_flip_task** %tmp45, align 8, !dbg !853
  store %struct.drm_flip_task* %44, %struct.drm_flip_task** %tmp1, align 8, !dbg !840
  br label %for.cond, !dbg !840, !llvm.loop !856

for.end:                                          ; preds = %for.cond
  br label %while.body, !dbg !783, !llvm.loop !858

while.end:                                        ; preds = %if.then
  ret void, !dbg !860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_flip_work_cleanup(%struct.drm_flip_work* %work) #0 !dbg !861 {
entry:
  %work.addr = alloca %struct.drm_flip_work*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_flip_work* %work, %struct.drm_flip_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_flip_work** %work.addr, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !866, metadata !DIExpression()), !dbg !868
  %0 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !868
  %queued = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %0, i32 0, i32 3, !dbg !868
  %call = call i32 @list_empty(%struct.list_head* %queued) #9, !dbg !868
  %tobool = icmp ne i32 %call, 0, !dbg !868
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !868

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.drm_flip_work*, %struct.drm_flip_work** %work.addr, align 8, !dbg !868
  %commited = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %1, i32 0, i32 4, !dbg !868
  %call1 = call i32 @list_empty(%struct.list_head* %commited) #9, !dbg !868
  %tobool2 = icmp ne i32 %call1, 0, !dbg !868
  %lnot = xor i1 %tobool2, true, !dbg !868
  br label %lor.end, !dbg !868

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %2, true, !dbg !868
  %lnot4 = xor i1 %lnot3, true, !dbg !868
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !868
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !868
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !869
  %tobool5 = icmp ne i32 %3, 0, !dbg !869
  %lnot6 = xor i1 %tobool5, true, !dbg !869
  %lnot8 = xor i1 %lnot6, true, !dbg !869
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !869
  %conv = sext i32 %lnot.ext9 to i64, !dbg !869
  %tobool10 = icmp ne i64 %conv, 0, !dbg !869
  br i1 %tobool10, label %if.then, label %if.end, !dbg !868

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !869

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !871

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !873

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !871

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 168, i32 2305, i64 12) #8, !dbg !875, !srcloc !877
  br label %do.end13, !dbg !875

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #8, !dbg !878, !srcloc !880
  br label %do.body14, !dbg !871

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !881

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !871

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !871

if.end:                                           ; preds = %do.end16, %lor.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !868
  %tobool17 = icmp ne i32 %4, 0, !dbg !868
  %lnot18 = xor i1 %tobool17, true, !dbg !868
  %lnot20 = xor i1 %lnot18, true, !dbg !868
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !868
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !868
  store i64 %conv22, i64* %tmp, align 8, !dbg !869
  %5 = load i64, i64* %tmp, align 8, !dbg !868
  ret void, !dbg !883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !884 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !889, metadata !DIExpression()), !dbg !890
  br label %do.body, !dbg !891

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !893

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !891
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !891
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !891
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !893
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !891
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !895
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !896
  %conv = zext i1 %cmp to i32, !dbg !896
  ret i32 %conv, !dbg !897
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !898 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !900, metadata !DIExpression()), !dbg !907
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !909, metadata !DIExpression()), !dbg !910
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !911, metadata !DIExpression()), !dbg !912
  %0 = load i64, i64* %size.addr, align 8, !dbg !913
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !915
  br i1 %1, label %if.then, label %if.end447, !dbg !916

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !917
  %tobool = icmp ne i64 %2, 0, !dbg !917
  br i1 %tobool, label %if.end, label %if.then1, !dbg !920

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !921
  br label %return, !dbg !921

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !922
  %cmp = icmp ult i64 %3, 4096, !dbg !924
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !925

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !926
  br label %return, !dbg !926

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub = sub i64 %4, 1, !dbg !927
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !927
  br i1 %5, label %cond.true, label %cond.false442, !dbg !927

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub4 = sub i64 %6, 1, !dbg !927
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !927
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !927

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub6 = sub i64 %8, 1, !dbg !927
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !927
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !927

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !927

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub9 = sub i64 %9, 1, !dbg !927
  %and = and i64 %sub9, -9223372036854775808, !dbg !927
  %tobool10 = icmp ne i64 %and, 0, !dbg !927
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !927

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !927

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub13 = sub i64 %10, 1, !dbg !927
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !927
  %tobool15 = icmp ne i64 %and14, 0, !dbg !927
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !927

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !927

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub18 = sub i64 %11, 1, !dbg !927
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !927
  %tobool20 = icmp ne i64 %and19, 0, !dbg !927
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !927

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !927

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub23 = sub i64 %12, 1, !dbg !927
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !927
  %tobool25 = icmp ne i64 %and24, 0, !dbg !927
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !927

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !927

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub28 = sub i64 %13, 1, !dbg !927
  %and29 = and i64 %sub28, 576460752303423488, !dbg !927
  %tobool30 = icmp ne i64 %and29, 0, !dbg !927
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !927

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !927

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub33 = sub i64 %14, 1, !dbg !927
  %and34 = and i64 %sub33, 288230376151711744, !dbg !927
  %tobool35 = icmp ne i64 %and34, 0, !dbg !927
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !927

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !927

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub38 = sub i64 %15, 1, !dbg !927
  %and39 = and i64 %sub38, 144115188075855872, !dbg !927
  %tobool40 = icmp ne i64 %and39, 0, !dbg !927
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !927

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !927

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub43 = sub i64 %16, 1, !dbg !927
  %and44 = and i64 %sub43, 72057594037927936, !dbg !927
  %tobool45 = icmp ne i64 %and44, 0, !dbg !927
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !927

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !927

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub48 = sub i64 %17, 1, !dbg !927
  %and49 = and i64 %sub48, 36028797018963968, !dbg !927
  %tobool50 = icmp ne i64 %and49, 0, !dbg !927
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !927

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !927

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub53 = sub i64 %18, 1, !dbg !927
  %and54 = and i64 %sub53, 18014398509481984, !dbg !927
  %tobool55 = icmp ne i64 %and54, 0, !dbg !927
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !927

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !927

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub58 = sub i64 %19, 1, !dbg !927
  %and59 = and i64 %sub58, 9007199254740992, !dbg !927
  %tobool60 = icmp ne i64 %and59, 0, !dbg !927
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !927

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !927

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub63 = sub i64 %20, 1, !dbg !927
  %and64 = and i64 %sub63, 4503599627370496, !dbg !927
  %tobool65 = icmp ne i64 %and64, 0, !dbg !927
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !927

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !927

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub68 = sub i64 %21, 1, !dbg !927
  %and69 = and i64 %sub68, 2251799813685248, !dbg !927
  %tobool70 = icmp ne i64 %and69, 0, !dbg !927
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !927

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !927

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub73 = sub i64 %22, 1, !dbg !927
  %and74 = and i64 %sub73, 1125899906842624, !dbg !927
  %tobool75 = icmp ne i64 %and74, 0, !dbg !927
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !927

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !927

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub78 = sub i64 %23, 1, !dbg !927
  %and79 = and i64 %sub78, 562949953421312, !dbg !927
  %tobool80 = icmp ne i64 %and79, 0, !dbg !927
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !927

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !927

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub83 = sub i64 %24, 1, !dbg !927
  %and84 = and i64 %sub83, 281474976710656, !dbg !927
  %tobool85 = icmp ne i64 %and84, 0, !dbg !927
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !927

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !927

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub88 = sub i64 %25, 1, !dbg !927
  %and89 = and i64 %sub88, 140737488355328, !dbg !927
  %tobool90 = icmp ne i64 %and89, 0, !dbg !927
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !927

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !927

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub93 = sub i64 %26, 1, !dbg !927
  %and94 = and i64 %sub93, 70368744177664, !dbg !927
  %tobool95 = icmp ne i64 %and94, 0, !dbg !927
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !927

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !927

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub98 = sub i64 %27, 1, !dbg !927
  %and99 = and i64 %sub98, 35184372088832, !dbg !927
  %tobool100 = icmp ne i64 %and99, 0, !dbg !927
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !927

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !927

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub103 = sub i64 %28, 1, !dbg !927
  %and104 = and i64 %sub103, 17592186044416, !dbg !927
  %tobool105 = icmp ne i64 %and104, 0, !dbg !927
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !927

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !927

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub108 = sub i64 %29, 1, !dbg !927
  %and109 = and i64 %sub108, 8796093022208, !dbg !927
  %tobool110 = icmp ne i64 %and109, 0, !dbg !927
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !927

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !927

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub113 = sub i64 %30, 1, !dbg !927
  %and114 = and i64 %sub113, 4398046511104, !dbg !927
  %tobool115 = icmp ne i64 %and114, 0, !dbg !927
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !927

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !927

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub118 = sub i64 %31, 1, !dbg !927
  %and119 = and i64 %sub118, 2199023255552, !dbg !927
  %tobool120 = icmp ne i64 %and119, 0, !dbg !927
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !927

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !927

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub123 = sub i64 %32, 1, !dbg !927
  %and124 = and i64 %sub123, 1099511627776, !dbg !927
  %tobool125 = icmp ne i64 %and124, 0, !dbg !927
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !927

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !927

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub128 = sub i64 %33, 1, !dbg !927
  %and129 = and i64 %sub128, 549755813888, !dbg !927
  %tobool130 = icmp ne i64 %and129, 0, !dbg !927
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !927

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !927

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub133 = sub i64 %34, 1, !dbg !927
  %and134 = and i64 %sub133, 274877906944, !dbg !927
  %tobool135 = icmp ne i64 %and134, 0, !dbg !927
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !927

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !927

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub138 = sub i64 %35, 1, !dbg !927
  %and139 = and i64 %sub138, 137438953472, !dbg !927
  %tobool140 = icmp ne i64 %and139, 0, !dbg !927
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !927

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !927

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub143 = sub i64 %36, 1, !dbg !927
  %and144 = and i64 %sub143, 68719476736, !dbg !927
  %tobool145 = icmp ne i64 %and144, 0, !dbg !927
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !927

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !927

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub148 = sub i64 %37, 1, !dbg !927
  %and149 = and i64 %sub148, 34359738368, !dbg !927
  %tobool150 = icmp ne i64 %and149, 0, !dbg !927
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !927

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !927

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub153 = sub i64 %38, 1, !dbg !927
  %and154 = and i64 %sub153, 17179869184, !dbg !927
  %tobool155 = icmp ne i64 %and154, 0, !dbg !927
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !927

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !927

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub158 = sub i64 %39, 1, !dbg !927
  %and159 = and i64 %sub158, 8589934592, !dbg !927
  %tobool160 = icmp ne i64 %and159, 0, !dbg !927
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !927

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !927

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub163 = sub i64 %40, 1, !dbg !927
  %and164 = and i64 %sub163, 4294967296, !dbg !927
  %tobool165 = icmp ne i64 %and164, 0, !dbg !927
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !927

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !927

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub168 = sub i64 %41, 1, !dbg !927
  %and169 = and i64 %sub168, 2147483648, !dbg !927
  %tobool170 = icmp ne i64 %and169, 0, !dbg !927
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !927

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !927

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub173 = sub i64 %42, 1, !dbg !927
  %and174 = and i64 %sub173, 1073741824, !dbg !927
  %tobool175 = icmp ne i64 %and174, 0, !dbg !927
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !927

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !927

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub178 = sub i64 %43, 1, !dbg !927
  %and179 = and i64 %sub178, 536870912, !dbg !927
  %tobool180 = icmp ne i64 %and179, 0, !dbg !927
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !927

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !927

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub183 = sub i64 %44, 1, !dbg !927
  %and184 = and i64 %sub183, 268435456, !dbg !927
  %tobool185 = icmp ne i64 %and184, 0, !dbg !927
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !927

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !927

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub188 = sub i64 %45, 1, !dbg !927
  %and189 = and i64 %sub188, 134217728, !dbg !927
  %tobool190 = icmp ne i64 %and189, 0, !dbg !927
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !927

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !927

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub193 = sub i64 %46, 1, !dbg !927
  %and194 = and i64 %sub193, 67108864, !dbg !927
  %tobool195 = icmp ne i64 %and194, 0, !dbg !927
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !927

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !927

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub198 = sub i64 %47, 1, !dbg !927
  %and199 = and i64 %sub198, 33554432, !dbg !927
  %tobool200 = icmp ne i64 %and199, 0, !dbg !927
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !927

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !927

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub203 = sub i64 %48, 1, !dbg !927
  %and204 = and i64 %sub203, 16777216, !dbg !927
  %tobool205 = icmp ne i64 %and204, 0, !dbg !927
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !927

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !927

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub208 = sub i64 %49, 1, !dbg !927
  %and209 = and i64 %sub208, 8388608, !dbg !927
  %tobool210 = icmp ne i64 %and209, 0, !dbg !927
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !927

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !927

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub213 = sub i64 %50, 1, !dbg !927
  %and214 = and i64 %sub213, 4194304, !dbg !927
  %tobool215 = icmp ne i64 %and214, 0, !dbg !927
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !927

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !927

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub218 = sub i64 %51, 1, !dbg !927
  %and219 = and i64 %sub218, 2097152, !dbg !927
  %tobool220 = icmp ne i64 %and219, 0, !dbg !927
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !927

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !927

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub223 = sub i64 %52, 1, !dbg !927
  %and224 = and i64 %sub223, 1048576, !dbg !927
  %tobool225 = icmp ne i64 %and224, 0, !dbg !927
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !927

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !927

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub228 = sub i64 %53, 1, !dbg !927
  %and229 = and i64 %sub228, 524288, !dbg !927
  %tobool230 = icmp ne i64 %and229, 0, !dbg !927
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !927

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !927

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub233 = sub i64 %54, 1, !dbg !927
  %and234 = and i64 %sub233, 262144, !dbg !927
  %tobool235 = icmp ne i64 %and234, 0, !dbg !927
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !927

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !927

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub238 = sub i64 %55, 1, !dbg !927
  %and239 = and i64 %sub238, 131072, !dbg !927
  %tobool240 = icmp ne i64 %and239, 0, !dbg !927
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !927

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !927

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub243 = sub i64 %56, 1, !dbg !927
  %and244 = and i64 %sub243, 65536, !dbg !927
  %tobool245 = icmp ne i64 %and244, 0, !dbg !927
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !927

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !927

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub248 = sub i64 %57, 1, !dbg !927
  %and249 = and i64 %sub248, 32768, !dbg !927
  %tobool250 = icmp ne i64 %and249, 0, !dbg !927
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !927

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !927

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub253 = sub i64 %58, 1, !dbg !927
  %and254 = and i64 %sub253, 16384, !dbg !927
  %tobool255 = icmp ne i64 %and254, 0, !dbg !927
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !927

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !927

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub258 = sub i64 %59, 1, !dbg !927
  %and259 = and i64 %sub258, 8192, !dbg !927
  %tobool260 = icmp ne i64 %and259, 0, !dbg !927
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !927

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !927

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub263 = sub i64 %60, 1, !dbg !927
  %and264 = and i64 %sub263, 4096, !dbg !927
  %tobool265 = icmp ne i64 %and264, 0, !dbg !927
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !927

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !927

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub268 = sub i64 %61, 1, !dbg !927
  %and269 = and i64 %sub268, 2048, !dbg !927
  %tobool270 = icmp ne i64 %and269, 0, !dbg !927
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !927

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !927

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub273 = sub i64 %62, 1, !dbg !927
  %and274 = and i64 %sub273, 1024, !dbg !927
  %tobool275 = icmp ne i64 %and274, 0, !dbg !927
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !927

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !927

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub278 = sub i64 %63, 1, !dbg !927
  %and279 = and i64 %sub278, 512, !dbg !927
  %tobool280 = icmp ne i64 %and279, 0, !dbg !927
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !927

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !927

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub283 = sub i64 %64, 1, !dbg !927
  %and284 = and i64 %sub283, 256, !dbg !927
  %tobool285 = icmp ne i64 %and284, 0, !dbg !927
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !927

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !927

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub288 = sub i64 %65, 1, !dbg !927
  %and289 = and i64 %sub288, 128, !dbg !927
  %tobool290 = icmp ne i64 %and289, 0, !dbg !927
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !927

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !927

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub293 = sub i64 %66, 1, !dbg !927
  %and294 = and i64 %sub293, 64, !dbg !927
  %tobool295 = icmp ne i64 %and294, 0, !dbg !927
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !927

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !927

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub298 = sub i64 %67, 1, !dbg !927
  %and299 = and i64 %sub298, 32, !dbg !927
  %tobool300 = icmp ne i64 %and299, 0, !dbg !927
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !927

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !927

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub303 = sub i64 %68, 1, !dbg !927
  %and304 = and i64 %sub303, 16, !dbg !927
  %tobool305 = icmp ne i64 %and304, 0, !dbg !927
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !927

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !927

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub308 = sub i64 %69, 1, !dbg !927
  %and309 = and i64 %sub308, 8, !dbg !927
  %tobool310 = icmp ne i64 %and309, 0, !dbg !927
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !927

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !927

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub313 = sub i64 %70, 1, !dbg !927
  %and314 = and i64 %sub313, 4, !dbg !927
  %tobool315 = icmp ne i64 %and314, 0, !dbg !927
  %71 = zext i1 %tobool315 to i64, !dbg !927
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !927
  br label %cond.end, !dbg !927

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !927
  br label %cond.end317, !dbg !927

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !927
  br label %cond.end319, !dbg !927

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !927
  br label %cond.end321, !dbg !927

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !927
  br label %cond.end323, !dbg !927

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !927
  br label %cond.end325, !dbg !927

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !927
  br label %cond.end327, !dbg !927

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !927
  br label %cond.end329, !dbg !927

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !927
  br label %cond.end331, !dbg !927

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !927
  br label %cond.end333, !dbg !927

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !927
  br label %cond.end335, !dbg !927

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !927
  br label %cond.end337, !dbg !927

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !927
  br label %cond.end339, !dbg !927

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !927
  br label %cond.end341, !dbg !927

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !927
  br label %cond.end343, !dbg !927

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !927
  br label %cond.end345, !dbg !927

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !927
  br label %cond.end347, !dbg !927

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !927
  br label %cond.end349, !dbg !927

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !927
  br label %cond.end351, !dbg !927

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !927
  br label %cond.end353, !dbg !927

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !927
  br label %cond.end355, !dbg !927

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !927
  br label %cond.end357, !dbg !927

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !927
  br label %cond.end359, !dbg !927

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !927
  br label %cond.end361, !dbg !927

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !927
  br label %cond.end363, !dbg !927

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !927
  br label %cond.end365, !dbg !927

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !927
  br label %cond.end367, !dbg !927

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !927
  br label %cond.end369, !dbg !927

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !927
  br label %cond.end371, !dbg !927

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !927
  br label %cond.end373, !dbg !927

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !927
  br label %cond.end375, !dbg !927

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !927
  br label %cond.end377, !dbg !927

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !927
  br label %cond.end379, !dbg !927

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !927
  br label %cond.end381, !dbg !927

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !927
  br label %cond.end383, !dbg !927

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !927
  br label %cond.end385, !dbg !927

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !927
  br label %cond.end387, !dbg !927

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !927
  br label %cond.end389, !dbg !927

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !927
  br label %cond.end391, !dbg !927

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !927
  br label %cond.end393, !dbg !927

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !927
  br label %cond.end395, !dbg !927

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !927
  br label %cond.end397, !dbg !927

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !927
  br label %cond.end399, !dbg !927

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !927
  br label %cond.end401, !dbg !927

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !927
  br label %cond.end403, !dbg !927

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !927
  br label %cond.end405, !dbg !927

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !927
  br label %cond.end407, !dbg !927

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !927
  br label %cond.end409, !dbg !927

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !927
  br label %cond.end411, !dbg !927

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !927
  br label %cond.end413, !dbg !927

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !927
  br label %cond.end415, !dbg !927

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !927
  br label %cond.end417, !dbg !927

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !927
  br label %cond.end419, !dbg !927

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !927
  br label %cond.end421, !dbg !927

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !927
  br label %cond.end423, !dbg !927

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !927
  br label %cond.end425, !dbg !927

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !927
  br label %cond.end427, !dbg !927

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !927
  br label %cond.end429, !dbg !927

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !927
  br label %cond.end431, !dbg !927

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !927
  br label %cond.end433, !dbg !927

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !927
  br label %cond.end435, !dbg !927

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !927
  br label %cond.end437, !dbg !927

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !927
  br label %cond.end440, !dbg !927

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !927

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !927
  br label %cond.end444, !dbg !927

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !927
  %sub443 = sub i64 %72, 1, !dbg !927
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !927
  br label %cond.end444, !dbg !927

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !927
  %sub446 = sub i32 %cond445, 12, !dbg !928
  %add = add i32 %sub446, 1, !dbg !929
  store i32 %add, i32* %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !931
  %dec = add i64 %73, -1, !dbg !931
  store i64 %dec, i64* %size.addr, align 8, !dbg !931
  %74 = load i64, i64* %size.addr, align 8, !dbg !932
  %shr = lshr i64 %74, 12, !dbg !932
  store i64 %shr, i64* %size.addr, align 8, !dbg !932
  %75 = load i64, i64* %size.addr, align 8, !dbg !933
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !910
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !934
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !935
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !934, !srcloc !936
  store i32 %78, i32* %bitpos.i, align 4, !dbg !934
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !937
  %add.i = add i32 %79, 1, !dbg !938
  store i32 %add.i, i32* %retval, align 4, !dbg !939
  br label %return, !dbg !939

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !940
  ret i32 %80, !dbg !940
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !941 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !900, metadata !DIExpression()), !dbg !946
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !909, metadata !DIExpression()), !dbg !948
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !949, metadata !DIExpression()), !dbg !950
  %0 = load i64, i64* %n.addr, align 8, !dbg !951
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !948
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !952
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !953
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !952, !srcloc !936
  store i32 %3, i32* %bitpos.i, align 4, !dbg !952
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !954
  %add.i = add i32 %4, 1, !dbg !955
  %sub = sub i32 %add.i, 1, !dbg !956
  ret i32 %sub, !dbg !957
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !958 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !964, metadata !DIExpression()), !dbg !965
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !966, metadata !DIExpression()), !dbg !967
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !968, metadata !DIExpression()), !dbg !969
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !970, metadata !DIExpression()), !dbg !971
  %0 = load i8*, i8** %object.addr, align 8, !dbg !972
  ret i8* %0, !dbg !973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !974 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !975, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !978, metadata !DIExpression()), !dbg !977
  %0 = load i64, i64* %__edi, align 8, !dbg !977
  store i64 %0, i64* %__edi, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !979, metadata !DIExpression()), !dbg !977
  %1 = load i64, i64* %__esi, align 8, !dbg !977
  store i64 %1, i64* %__esi, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !980, metadata !DIExpression()), !dbg !977
  %2 = load i64, i64* %__edx, align 8, !dbg !977
  store i64 %2, i64* %__edx, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !981, metadata !DIExpression()), !dbg !977
  %3 = load i64, i64* %__ecx, align 8, !dbg !977
  store i64 %3, i64* %__ecx, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !982, metadata !DIExpression()), !dbg !977
  %4 = load i64, i64* %__eax, align 8, !dbg !977
  store i64 %4, i64* %__eax, align 8, !dbg !977
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !977
  %6 = call i64 @llvm.read_register.i64(metadata !122), !dbg !983
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !983, !srcloc !986
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !983
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !983
  store i64 %asmresult, i64* %__eax, align 8, !dbg !983
  call void @llvm.write_register.i64(metadata !122, i64 %asmresult1), !dbg !983
  %8 = load i64, i64* %__eax, align 8, !dbg !983
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !987, metadata !DIExpression()), !dbg !989
  store i64 -1, i64* %__mask, align 8, !dbg !989
  %9 = load i64, i64* %__mask, align 8, !dbg !989
  store i64 %9, i64* %tmp, align 8, !dbg !989
  %10 = load i64, i64* %tmp, align 8, !dbg !989
  %and = and i64 %8, %10, !dbg !983
  store i64 %and, i64* %__ret, align 8, !dbg !983
  %11 = load i64, i64* %__ret, align 8, !dbg !977
  store i64 %11, i64* %tmp2, align 8, !dbg !990
  %12 = load i64, i64* %tmp2, align 8, !dbg !977
  ret i64 %12, !dbg !991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !992 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !995, metadata !DIExpression()), !dbg !997
  %0 = load i64, i64* %__edi, align 8, !dbg !997
  store i64 %0, i64* %__edi, align 8, !dbg !997
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !998, metadata !DIExpression()), !dbg !997
  %1 = load i64, i64* %__esi, align 8, !dbg !997
  store i64 %1, i64* %__esi, align 8, !dbg !997
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !999, metadata !DIExpression()), !dbg !997
  %2 = load i64, i64* %__edx, align 8, !dbg !997
  store i64 %2, i64* %__edx, align 8, !dbg !997
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1000, metadata !DIExpression()), !dbg !997
  %3 = load i64, i64* %__ecx, align 8, !dbg !997
  store i64 %3, i64* %__ecx, align 8, !dbg !997
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1001, metadata !DIExpression()), !dbg !997
  %4 = load i64, i64* %__eax, align 8, !dbg !997
  store i64 %4, i64* %__eax, align 8, !dbg !997
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !997
  %6 = call i64 @llvm.read_register.i64(metadata !122), !dbg !997
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !997, !srcloc !1002
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !997
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !997
  store i64 %asmresult, i64* %__eax, align 8, !dbg !997
  call void @llvm.write_register.i64(metadata !122, i64 %asmresult1), !dbg !997
  ret void, !dbg !1003
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1004 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1013
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1015
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1016
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !1017
  br i1 %call, label %if.end, label %if.then, !dbg !1018

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1019

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1020
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1021
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !1022
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !1023
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1024
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1025
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !1026
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !1027
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1028
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1029
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1030
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !1031
  br label %do.body, !dbg !1032

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1033

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1035

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1033

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1037
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1037
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !1037
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1037
  br label %do.end7, !dbg !1037

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1033

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1040 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1045, metadata !DIExpression()), !dbg !1046
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1047, metadata !DIExpression()), !dbg !1048
  ret i1 true, !dbg !1049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !1050 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !1053, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1055, metadata !DIExpression()), !dbg !1057
  %0 = load i64, i64* %__edi, align 8, !dbg !1057
  store i64 %0, i64* %__edi, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1058, metadata !DIExpression()), !dbg !1057
  %1 = load i64, i64* %__esi, align 8, !dbg !1057
  store i64 %1, i64* %__esi, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1059, metadata !DIExpression()), !dbg !1057
  %2 = load i64, i64* %__edx, align 8, !dbg !1057
  store i64 %2, i64* %__edx, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1060, metadata !DIExpression()), !dbg !1057
  %3 = load i64, i64* %__ecx, align 8, !dbg !1057
  store i64 %3, i64* %__ecx, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1061, metadata !DIExpression()), !dbg !1057
  %4 = load i64, i64* %__eax, align 8, !dbg !1057
  store i64 %4, i64* %__eax, align 8, !dbg !1057
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !1057
  %6 = call i64 @llvm.read_register.i64(metadata !122), !dbg !1057
  %7 = load i64, i64* %f.addr, align 8, !dbg !1057
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #8, !dbg !1057, !srcloc !1062
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !1057
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !1057
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1057
  call void @llvm.write_register.i64(metadata !122, i64 %asmresult1), !dbg !1057
  ret void, !dbg !1063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_splice(%struct.list_head* %list, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1064 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %first = alloca %struct.list_head*, align 8
  %last = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.declare(metadata %struct.list_head** %first, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !1075
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !1076
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !1076
  store %struct.list_head* %1, %struct.list_head** %first, align 8, !dbg !1074
  call void @llvm.dbg.declare(metadata %struct.list_head** %last, metadata !1077, metadata !DIExpression()), !dbg !1078
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !1079
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !1080
  %3 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !1080
  store %struct.list_head* %3, %struct.list_head** %last, align 8, !dbg !1078
  %4 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1081
  %5 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !1082
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !1083
  store %struct.list_head* %4, %struct.list_head** %prev3, align 8, !dbg !1084
  %6 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !1085
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1086
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0, !dbg !1087
  store %struct.list_head* %6, %struct.list_head** %next4, align 8, !dbg !1088
  %8 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1089
  %9 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !1090
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !1091
  store %struct.list_head* %8, %struct.list_head** %next5, align 8, !dbg !1092
  %10 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !1093
  %11 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1094
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !1095
  store %struct.list_head* %10, %struct.list_head** %prev6, align 8, !dbg !1096
  ret void, !dbg !1097
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_flip_work.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !36, !44}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 30, baseType: !5, size: 64, elements: !6)
!4 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!7 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!8 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!9 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!10 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!11 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!12 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!13 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!14 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!15 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!16 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!17 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!18 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!19 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!20 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!21 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!22 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!23 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!24 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!25 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!26 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!27 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!28 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!29 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!30 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!31 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!32 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!33 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!34 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!35 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !37, line: 305, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 10, baseType: !38, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!49 = !{!50, !52, !53, !54, !61, !62, !115, !120}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !51, line: 148, baseType: !38)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !51, line: 178, size: 128, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !51, line: 179, baseType: !56, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !57, file: !51, line: 179, baseType: !56, size: 64, offset: 64)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_flip_work", file: !64, line: 73, size: 640, elements: !65)
!64 = !DIFile(filename: "./include/drm/drm_flip_work.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !70, !75, !97, !98, !99}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !64, line: 74, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !63, file: !64, line: 75, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_flip_func_t", file: !64, line: 52, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !62, !53}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !63, file: !64, line: 76, baseType: !76, size: 256, offset: 128)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !4, line: 102, size: 256, elements: !77)
!77 = !{!78, !90, !91}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !4, line: 103, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !80, line: 13, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !51, line: 175, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 173, size: 64, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !82, file: !51, line: 174, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !86, line: 22, baseType: !87)
!86 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !88, line: 30, baseType: !89)
!88 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!89 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !76, file: !4, line: 104, baseType: !57, size: 128, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !76, file: !4, line: 105, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !4, line: 21, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !63, file: !64, line: 77, baseType: !57, size: 128, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "commited", scope: !63, file: !64, line: 78, baseType: !57, size: 128, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !64, line: 79, baseType: !100, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !101, line: 83, baseType: !102)
!101 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !101, line: 71, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !101, line: 72, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !101, line: 72, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !105, file: !101, line: 73, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !101, line: 20, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !108, file: !101, line: 21, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !112, line: 25, baseType: !113)
!112 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 25, elements: !114)
!114 = !{}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_flip_task", file: !64, line: 59, size: 192, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !64, line: 60, baseType: !57, size: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !116, file: !64, line: 61, baseType: !53, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!122 = !{!"rsp"}
!123 = !{i32 7, !"Dwarf Version", i32 4}
!124 = !{i32 2, !"Debug Info Version", i32 3}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"Code Model", i32 2}
!127 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!128 = distinct !DISubprogram(name: "drm_flip_work_allocate_task", scope: !1, file: !1, line: 37, type: !129, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !114)
!129 = !DISubroutineType(types: !130)
!130 = !{!115, !53, !50}
!131 = !DILocalVariable(name: "data", arg: 1, scope: !128, file: !1, line: 37, type: !53)
!132 = !DILocation(line: 37, column: 57, scope: !128)
!133 = !DILocalVariable(name: "flags", arg: 2, scope: !128, file: !1, line: 37, type: !50)
!134 = !DILocation(line: 37, column: 69, scope: !128)
!135 = !DILocalVariable(name: "task", scope: !128, file: !1, line: 39, type: !115)
!136 = !DILocation(line: 39, column: 24, scope: !128)
!137 = !DILocation(line: 41, column: 32, scope: !128)
!138 = !DILocation(line: 41, column: 9, scope: !128)
!139 = !DILocation(line: 41, column: 7, scope: !128)
!140 = !DILocation(line: 42, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !128, file: !1, line: 42, column: 6)
!142 = !DILocation(line: 42, column: 6, scope: !128)
!143 = !DILocation(line: 43, column: 16, scope: !141)
!144 = !DILocation(line: 43, column: 3, scope: !141)
!145 = !DILocation(line: 43, column: 9, scope: !141)
!146 = !DILocation(line: 43, column: 14, scope: !141)
!147 = !DILocation(line: 45, column: 9, scope: !128)
!148 = !DILocation(line: 45, column: 2, scope: !128)
!149 = distinct !DISubprogram(name: "kzalloc", scope: !37, file: !37, line: 662, type: !150, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!150 = !DISubroutineType(types: !151)
!151 = !{!53, !152, !50}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 55, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !154, line: 72, baseType: !155)
!154 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !154, line: 16, baseType: !52)
!156 = !DILocalVariable(name: "s", arg: 1, scope: !157, file: !37, line: 445, type: !160)
!157 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !37, file: !37, line: 445, type: !158, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!158 = !DISubroutineType(types: !159)
!159 = !{!53, !160, !50, !152}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !162, line: 117, flags: DIFlagFwdDecl)
!162 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DILocation(line: 445, column: 72, scope: !157, inlinedAt: !164)
!164 = distinct !DILocation(line: 552, column: 10, scope: !165, inlinedAt: !168)
!165 = distinct !DILexicalBlock(scope: !166, file: !37, line: 540, column: 34)
!166 = distinct !DILexicalBlock(scope: !167, file: !37, line: 540, column: 6)
!167 = distinct !DISubprogram(name: "kmalloc", scope: !37, file: !37, line: 538, type: !150, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!168 = distinct !DILocation(line: 664, column: 9, scope: !149)
!169 = !DILocalVariable(name: "flags", arg: 2, scope: !157, file: !37, line: 446, type: !50)
!170 = !DILocation(line: 446, column: 9, scope: !157, inlinedAt: !164)
!171 = !DILocalVariable(name: "size", arg: 3, scope: !157, file: !37, line: 446, type: !152)
!172 = !DILocation(line: 446, column: 23, scope: !157, inlinedAt: !164)
!173 = !DILocalVariable(name: "ret", scope: !157, file: !37, line: 448, type: !53)
!174 = !DILocation(line: 448, column: 8, scope: !157, inlinedAt: !164)
!175 = !DILocalVariable(name: "flags", arg: 1, scope: !176, file: !37, line: 318, type: !50)
!176 = distinct !DISubprogram(name: "kmalloc_type", scope: !37, file: !37, line: 318, type: !177, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!177 = !DISubroutineType(types: !178)
!178 = !{!36, !50}
!179 = !DILocation(line: 318, column: 67, scope: !176, inlinedAt: !180)
!180 = distinct !DILocation(line: 553, column: 20, scope: !165, inlinedAt: !168)
!181 = !DILocalVariable(name: "size", arg: 1, scope: !182, file: !37, line: 346, type: !152)
!182 = distinct !DISubprogram(name: "kmalloc_index", scope: !37, file: !37, line: 346, type: !183, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!183 = !DISubroutineType(types: !184)
!184 = !{!38, !152}
!185 = !DILocation(line: 346, column: 58, scope: !182, inlinedAt: !186)
!186 = distinct !DILocation(line: 547, column: 11, scope: !165, inlinedAt: !168)
!187 = !DILocalVariable(name: "size", arg: 1, scope: !188, file: !37, line: 472, type: !152)
!188 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !37, file: !37, line: 472, type: !189, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!189 = !DISubroutineType(types: !190)
!190 = !{!53, !152, !50, !38}
!191 = !DILocation(line: 472, column: 28, scope: !188, inlinedAt: !192)
!192 = distinct !DILocation(line: 481, column: 9, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "kmalloc_large", scope: !37, file: !37, line: 478, type: !150, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!194 = distinct !DILocation(line: 545, column: 11, scope: !195, inlinedAt: !168)
!195 = distinct !DILexicalBlock(scope: !165, file: !37, line: 544, column: 7)
!196 = !DILocalVariable(name: "flags", arg: 2, scope: !188, file: !37, line: 472, type: !50)
!197 = !DILocation(line: 472, column: 40, scope: !188, inlinedAt: !192)
!198 = !DILocalVariable(name: "order", arg: 3, scope: !188, file: !37, line: 472, type: !38)
!199 = !DILocation(line: 472, column: 60, scope: !188, inlinedAt: !192)
!200 = !DILocalVariable(name: "size", arg: 1, scope: !193, file: !37, line: 478, type: !152)
!201 = !DILocation(line: 478, column: 51, scope: !193, inlinedAt: !194)
!202 = !DILocalVariable(name: "flags", arg: 2, scope: !193, file: !37, line: 478, type: !50)
!203 = !DILocation(line: 478, column: 63, scope: !193, inlinedAt: !194)
!204 = !DILocalVariable(name: "order", scope: !193, file: !37, line: 480, type: !38)
!205 = !DILocation(line: 480, column: 15, scope: !193, inlinedAt: !194)
!206 = !DILocalVariable(name: "size", arg: 1, scope: !167, file: !37, line: 538, type: !152)
!207 = !DILocation(line: 538, column: 45, scope: !167, inlinedAt: !168)
!208 = !DILocalVariable(name: "flags", arg: 2, scope: !167, file: !37, line: 538, type: !50)
!209 = !DILocation(line: 538, column: 57, scope: !167, inlinedAt: !168)
!210 = !DILocalVariable(name: "index", scope: !165, file: !37, line: 542, type: !38)
!211 = !DILocation(line: 542, column: 16, scope: !165, inlinedAt: !168)
!212 = !DILocalVariable(name: "size", arg: 1, scope: !149, file: !37, line: 662, type: !152)
!213 = !DILocation(line: 662, column: 36, scope: !149)
!214 = !DILocalVariable(name: "flags", arg: 2, scope: !149, file: !37, line: 662, type: !50)
!215 = !DILocation(line: 662, column: 48, scope: !149)
!216 = !DILocation(line: 664, column: 17, scope: !149)
!217 = !DILocation(line: 664, column: 23, scope: !149)
!218 = !DILocation(line: 664, column: 29, scope: !149)
!219 = !DILocation(line: 540, column: 27, scope: !166, inlinedAt: !168)
!220 = !DILocation(line: 540, column: 6, scope: !166, inlinedAt: !168)
!221 = !DILocation(line: 540, column: 6, scope: !167, inlinedAt: !168)
!222 = !DILocation(line: 544, column: 7, scope: !195, inlinedAt: !168)
!223 = !DILocation(line: 544, column: 12, scope: !195, inlinedAt: !168)
!224 = !DILocation(line: 544, column: 7, scope: !165, inlinedAt: !168)
!225 = !DILocation(line: 545, column: 25, scope: !195, inlinedAt: !168)
!226 = !DILocation(line: 545, column: 31, scope: !195, inlinedAt: !168)
!227 = !DILocation(line: 480, column: 33, scope: !193, inlinedAt: !194)
!228 = !DILocation(line: 480, column: 23, scope: !193, inlinedAt: !194)
!229 = !DILocation(line: 481, column: 29, scope: !193, inlinedAt: !194)
!230 = !DILocation(line: 481, column: 35, scope: !193, inlinedAt: !194)
!231 = !DILocation(line: 481, column: 42, scope: !193, inlinedAt: !194)
!232 = !DILocation(line: 474, column: 23, scope: !188, inlinedAt: !192)
!233 = !DILocation(line: 474, column: 29, scope: !188, inlinedAt: !192)
!234 = !DILocation(line: 474, column: 36, scope: !188, inlinedAt: !192)
!235 = !DILocation(line: 474, column: 9, scope: !188, inlinedAt: !192)
!236 = !DILocation(line: 545, column: 4, scope: !195, inlinedAt: !168)
!237 = !DILocation(line: 547, column: 25, scope: !165, inlinedAt: !168)
!238 = !DILocation(line: 348, column: 7, scope: !239, inlinedAt: !186)
!239 = distinct !DILexicalBlock(scope: !182, file: !37, line: 348, column: 6)
!240 = !DILocation(line: 348, column: 6, scope: !182, inlinedAt: !186)
!241 = !DILocation(line: 349, column: 3, scope: !239, inlinedAt: !186)
!242 = !DILocation(line: 351, column: 6, scope: !243, inlinedAt: !186)
!243 = distinct !DILexicalBlock(scope: !182, file: !37, line: 351, column: 6)
!244 = !DILocation(line: 351, column: 11, scope: !243, inlinedAt: !186)
!245 = !DILocation(line: 351, column: 6, scope: !182, inlinedAt: !186)
!246 = !DILocation(line: 352, column: 3, scope: !243, inlinedAt: !186)
!247 = !DILocation(line: 354, column: 32, scope: !248, inlinedAt: !186)
!248 = distinct !DILexicalBlock(scope: !182, file: !37, line: 354, column: 6)
!249 = !DILocation(line: 354, column: 37, scope: !248, inlinedAt: !186)
!250 = !DILocation(line: 354, column: 42, scope: !248, inlinedAt: !186)
!251 = !DILocation(line: 354, column: 45, scope: !248, inlinedAt: !186)
!252 = !DILocation(line: 354, column: 50, scope: !248, inlinedAt: !186)
!253 = !DILocation(line: 354, column: 6, scope: !182, inlinedAt: !186)
!254 = !DILocation(line: 355, column: 3, scope: !248, inlinedAt: !186)
!255 = !DILocation(line: 356, column: 32, scope: !256, inlinedAt: !186)
!256 = distinct !DILexicalBlock(scope: !182, file: !37, line: 356, column: 6)
!257 = !DILocation(line: 356, column: 37, scope: !256, inlinedAt: !186)
!258 = !DILocation(line: 356, column: 43, scope: !256, inlinedAt: !186)
!259 = !DILocation(line: 356, column: 46, scope: !256, inlinedAt: !186)
!260 = !DILocation(line: 356, column: 51, scope: !256, inlinedAt: !186)
!261 = !DILocation(line: 356, column: 6, scope: !182, inlinedAt: !186)
!262 = !DILocation(line: 357, column: 3, scope: !256, inlinedAt: !186)
!263 = !DILocation(line: 358, column: 6, scope: !264, inlinedAt: !186)
!264 = distinct !DILexicalBlock(scope: !182, file: !37, line: 358, column: 6)
!265 = !DILocation(line: 358, column: 11, scope: !264, inlinedAt: !186)
!266 = !DILocation(line: 358, column: 6, scope: !182, inlinedAt: !186)
!267 = !DILocation(line: 358, column: 26, scope: !264, inlinedAt: !186)
!268 = !DILocation(line: 359, column: 6, scope: !269, inlinedAt: !186)
!269 = distinct !DILexicalBlock(scope: !182, file: !37, line: 359, column: 6)
!270 = !DILocation(line: 359, column: 11, scope: !269, inlinedAt: !186)
!271 = !DILocation(line: 359, column: 6, scope: !182, inlinedAt: !186)
!272 = !DILocation(line: 359, column: 26, scope: !269, inlinedAt: !186)
!273 = !DILocation(line: 360, column: 6, scope: !274, inlinedAt: !186)
!274 = distinct !DILexicalBlock(scope: !182, file: !37, line: 360, column: 6)
!275 = !DILocation(line: 360, column: 11, scope: !274, inlinedAt: !186)
!276 = !DILocation(line: 360, column: 6, scope: !182, inlinedAt: !186)
!277 = !DILocation(line: 360, column: 26, scope: !274, inlinedAt: !186)
!278 = !DILocation(line: 361, column: 6, scope: !279, inlinedAt: !186)
!279 = distinct !DILexicalBlock(scope: !182, file: !37, line: 361, column: 6)
!280 = !DILocation(line: 361, column: 11, scope: !279, inlinedAt: !186)
!281 = !DILocation(line: 361, column: 6, scope: !182, inlinedAt: !186)
!282 = !DILocation(line: 361, column: 26, scope: !279, inlinedAt: !186)
!283 = !DILocation(line: 362, column: 6, scope: !284, inlinedAt: !186)
!284 = distinct !DILexicalBlock(scope: !182, file: !37, line: 362, column: 6)
!285 = !DILocation(line: 362, column: 11, scope: !284, inlinedAt: !186)
!286 = !DILocation(line: 362, column: 6, scope: !182, inlinedAt: !186)
!287 = !DILocation(line: 362, column: 26, scope: !284, inlinedAt: !186)
!288 = !DILocation(line: 363, column: 6, scope: !289, inlinedAt: !186)
!289 = distinct !DILexicalBlock(scope: !182, file: !37, line: 363, column: 6)
!290 = !DILocation(line: 363, column: 11, scope: !289, inlinedAt: !186)
!291 = !DILocation(line: 363, column: 6, scope: !182, inlinedAt: !186)
!292 = !DILocation(line: 363, column: 26, scope: !289, inlinedAt: !186)
!293 = !DILocation(line: 364, column: 6, scope: !294, inlinedAt: !186)
!294 = distinct !DILexicalBlock(scope: !182, file: !37, line: 364, column: 6)
!295 = !DILocation(line: 364, column: 11, scope: !294, inlinedAt: !186)
!296 = !DILocation(line: 364, column: 6, scope: !182, inlinedAt: !186)
!297 = !DILocation(line: 364, column: 26, scope: !294, inlinedAt: !186)
!298 = !DILocation(line: 365, column: 6, scope: !299, inlinedAt: !186)
!299 = distinct !DILexicalBlock(scope: !182, file: !37, line: 365, column: 6)
!300 = !DILocation(line: 365, column: 11, scope: !299, inlinedAt: !186)
!301 = !DILocation(line: 365, column: 6, scope: !182, inlinedAt: !186)
!302 = !DILocation(line: 365, column: 26, scope: !299, inlinedAt: !186)
!303 = !DILocation(line: 366, column: 6, scope: !304, inlinedAt: !186)
!304 = distinct !DILexicalBlock(scope: !182, file: !37, line: 366, column: 6)
!305 = !DILocation(line: 366, column: 11, scope: !304, inlinedAt: !186)
!306 = !DILocation(line: 366, column: 6, scope: !182, inlinedAt: !186)
!307 = !DILocation(line: 366, column: 26, scope: !304, inlinedAt: !186)
!308 = !DILocation(line: 367, column: 6, scope: !309, inlinedAt: !186)
!309 = distinct !DILexicalBlock(scope: !182, file: !37, line: 367, column: 6)
!310 = !DILocation(line: 367, column: 11, scope: !309, inlinedAt: !186)
!311 = !DILocation(line: 367, column: 6, scope: !182, inlinedAt: !186)
!312 = !DILocation(line: 367, column: 26, scope: !309, inlinedAt: !186)
!313 = !DILocation(line: 368, column: 6, scope: !314, inlinedAt: !186)
!314 = distinct !DILexicalBlock(scope: !182, file: !37, line: 368, column: 6)
!315 = !DILocation(line: 368, column: 11, scope: !314, inlinedAt: !186)
!316 = !DILocation(line: 368, column: 6, scope: !182, inlinedAt: !186)
!317 = !DILocation(line: 368, column: 26, scope: !314, inlinedAt: !186)
!318 = !DILocation(line: 369, column: 6, scope: !319, inlinedAt: !186)
!319 = distinct !DILexicalBlock(scope: !182, file: !37, line: 369, column: 6)
!320 = !DILocation(line: 369, column: 11, scope: !319, inlinedAt: !186)
!321 = !DILocation(line: 369, column: 6, scope: !182, inlinedAt: !186)
!322 = !DILocation(line: 369, column: 26, scope: !319, inlinedAt: !186)
!323 = !DILocation(line: 370, column: 6, scope: !324, inlinedAt: !186)
!324 = distinct !DILexicalBlock(scope: !182, file: !37, line: 370, column: 6)
!325 = !DILocation(line: 370, column: 11, scope: !324, inlinedAt: !186)
!326 = !DILocation(line: 370, column: 6, scope: !182, inlinedAt: !186)
!327 = !DILocation(line: 370, column: 26, scope: !324, inlinedAt: !186)
!328 = !DILocation(line: 371, column: 6, scope: !329, inlinedAt: !186)
!329 = distinct !DILexicalBlock(scope: !182, file: !37, line: 371, column: 6)
!330 = !DILocation(line: 371, column: 11, scope: !329, inlinedAt: !186)
!331 = !DILocation(line: 371, column: 6, scope: !182, inlinedAt: !186)
!332 = !DILocation(line: 371, column: 26, scope: !329, inlinedAt: !186)
!333 = !DILocation(line: 372, column: 6, scope: !334, inlinedAt: !186)
!334 = distinct !DILexicalBlock(scope: !182, file: !37, line: 372, column: 6)
!335 = !DILocation(line: 372, column: 11, scope: !334, inlinedAt: !186)
!336 = !DILocation(line: 372, column: 6, scope: !182, inlinedAt: !186)
!337 = !DILocation(line: 372, column: 26, scope: !334, inlinedAt: !186)
!338 = !DILocation(line: 373, column: 6, scope: !339, inlinedAt: !186)
!339 = distinct !DILexicalBlock(scope: !182, file: !37, line: 373, column: 6)
!340 = !DILocation(line: 373, column: 11, scope: !339, inlinedAt: !186)
!341 = !DILocation(line: 373, column: 6, scope: !182, inlinedAt: !186)
!342 = !DILocation(line: 373, column: 26, scope: !339, inlinedAt: !186)
!343 = !DILocation(line: 374, column: 6, scope: !344, inlinedAt: !186)
!344 = distinct !DILexicalBlock(scope: !182, file: !37, line: 374, column: 6)
!345 = !DILocation(line: 374, column: 11, scope: !344, inlinedAt: !186)
!346 = !DILocation(line: 374, column: 6, scope: !182, inlinedAt: !186)
!347 = !DILocation(line: 374, column: 26, scope: !344, inlinedAt: !186)
!348 = !DILocation(line: 375, column: 6, scope: !349, inlinedAt: !186)
!349 = distinct !DILexicalBlock(scope: !182, file: !37, line: 375, column: 6)
!350 = !DILocation(line: 375, column: 11, scope: !349, inlinedAt: !186)
!351 = !DILocation(line: 375, column: 6, scope: !182, inlinedAt: !186)
!352 = !DILocation(line: 375, column: 27, scope: !349, inlinedAt: !186)
!353 = !DILocation(line: 376, column: 6, scope: !354, inlinedAt: !186)
!354 = distinct !DILexicalBlock(scope: !182, file: !37, line: 376, column: 6)
!355 = !DILocation(line: 376, column: 11, scope: !354, inlinedAt: !186)
!356 = !DILocation(line: 376, column: 6, scope: !182, inlinedAt: !186)
!357 = !DILocation(line: 376, column: 32, scope: !354, inlinedAt: !186)
!358 = !DILocation(line: 377, column: 6, scope: !359, inlinedAt: !186)
!359 = distinct !DILexicalBlock(scope: !182, file: !37, line: 377, column: 6)
!360 = !DILocation(line: 377, column: 11, scope: !359, inlinedAt: !186)
!361 = !DILocation(line: 377, column: 6, scope: !182, inlinedAt: !186)
!362 = !DILocation(line: 377, column: 32, scope: !359, inlinedAt: !186)
!363 = !DILocation(line: 378, column: 6, scope: !364, inlinedAt: !186)
!364 = distinct !DILexicalBlock(scope: !182, file: !37, line: 378, column: 6)
!365 = !DILocation(line: 378, column: 11, scope: !364, inlinedAt: !186)
!366 = !DILocation(line: 378, column: 6, scope: !182, inlinedAt: !186)
!367 = !DILocation(line: 378, column: 32, scope: !364, inlinedAt: !186)
!368 = !DILocation(line: 379, column: 6, scope: !369, inlinedAt: !186)
!369 = distinct !DILexicalBlock(scope: !182, file: !37, line: 379, column: 6)
!370 = !DILocation(line: 379, column: 11, scope: !369, inlinedAt: !186)
!371 = !DILocation(line: 379, column: 6, scope: !182, inlinedAt: !186)
!372 = !DILocation(line: 379, column: 33, scope: !369, inlinedAt: !186)
!373 = !DILocation(line: 380, column: 6, scope: !374, inlinedAt: !186)
!374 = distinct !DILexicalBlock(scope: !182, file: !37, line: 380, column: 6)
!375 = !DILocation(line: 380, column: 11, scope: !374, inlinedAt: !186)
!376 = !DILocation(line: 380, column: 6, scope: !182, inlinedAt: !186)
!377 = !DILocation(line: 380, column: 33, scope: !374, inlinedAt: !186)
!378 = !DILocation(line: 381, column: 6, scope: !379, inlinedAt: !186)
!379 = distinct !DILexicalBlock(scope: !182, file: !37, line: 381, column: 6)
!380 = !DILocation(line: 381, column: 11, scope: !379, inlinedAt: !186)
!381 = !DILocation(line: 381, column: 6, scope: !182, inlinedAt: !186)
!382 = !DILocation(line: 381, column: 33, scope: !379, inlinedAt: !186)
!383 = !DILocation(line: 382, column: 2, scope: !384, inlinedAt: !186)
!384 = distinct !DILexicalBlock(scope: !385, file: !37, line: 382, column: 2)
!385 = distinct !DILexicalBlock(scope: !182, file: !37, line: 382, column: 2)
!386 = !{i32 -2144650280, i32 -2144650251, i32 -2144650205, i32 -2144650147, i32 -2144650093, i32 -2144650039, i32 -2144649984, i32 -2144649953}
!387 = !DILocation(line: 382, column: 2, scope: !388, inlinedAt: !186)
!388 = distinct !DILexicalBlock(scope: !389, file: !37, line: 382, column: 2)
!389 = distinct !DILexicalBlock(scope: !385, file: !37, line: 382, column: 2)
!390 = !{i32 -2144649510, i32 -2144649503, i32 -2144649449, i32 -2144649418, i32 -2144649388}
!391 = !DILocation(line: 382, column: 2, scope: !389, inlinedAt: !186)
!392 = !DILocation(line: 386, column: 1, scope: !182, inlinedAt: !186)
!393 = !DILocation(line: 547, column: 9, scope: !165, inlinedAt: !168)
!394 = !DILocation(line: 549, column: 8, scope: !395, inlinedAt: !168)
!395 = distinct !DILexicalBlock(scope: !165, file: !37, line: 549, column: 7)
!396 = !DILocation(line: 549, column: 7, scope: !165, inlinedAt: !168)
!397 = !DILocation(line: 550, column: 4, scope: !395, inlinedAt: !168)
!398 = !DILocation(line: 553, column: 33, scope: !165, inlinedAt: !168)
!399 = !DILocation(line: 325, column: 6, scope: !400, inlinedAt: !180)
!400 = distinct !DILexicalBlock(scope: !176, file: !37, line: 325, column: 6)
!401 = !DILocation(line: 325, column: 6, scope: !176, inlinedAt: !180)
!402 = !DILocation(line: 326, column: 3, scope: !400, inlinedAt: !180)
!403 = !DILocation(line: 332, column: 9, scope: !176, inlinedAt: !180)
!404 = !DILocation(line: 332, column: 15, scope: !176, inlinedAt: !180)
!405 = !DILocation(line: 332, column: 2, scope: !176, inlinedAt: !180)
!406 = !DILocation(line: 336, column: 1, scope: !176, inlinedAt: !180)
!407 = !DILocation(line: 553, column: 5, scope: !165, inlinedAt: !168)
!408 = !DILocation(line: 553, column: 41, scope: !165, inlinedAt: !168)
!409 = !DILocation(line: 554, column: 5, scope: !165, inlinedAt: !168)
!410 = !DILocation(line: 554, column: 12, scope: !165, inlinedAt: !168)
!411 = !DILocation(line: 448, column: 31, scope: !157, inlinedAt: !164)
!412 = !DILocation(line: 448, column: 34, scope: !157, inlinedAt: !164)
!413 = !DILocation(line: 448, column: 14, scope: !157, inlinedAt: !164)
!414 = !DILocation(line: 450, column: 22, scope: !157, inlinedAt: !164)
!415 = !DILocation(line: 450, column: 25, scope: !157, inlinedAt: !164)
!416 = !DILocation(line: 450, column: 30, scope: !157, inlinedAt: !164)
!417 = !DILocation(line: 450, column: 36, scope: !157, inlinedAt: !164)
!418 = !DILocation(line: 450, column: 8, scope: !157, inlinedAt: !164)
!419 = !DILocation(line: 450, column: 6, scope: !157, inlinedAt: !164)
!420 = !DILocation(line: 451, column: 9, scope: !157, inlinedAt: !164)
!421 = !DILocation(line: 552, column: 3, scope: !165, inlinedAt: !168)
!422 = !DILocation(line: 557, column: 19, scope: !167, inlinedAt: !168)
!423 = !DILocation(line: 557, column: 25, scope: !167, inlinedAt: !168)
!424 = !DILocation(line: 557, column: 9, scope: !167, inlinedAt: !168)
!425 = !DILocation(line: 557, column: 2, scope: !167, inlinedAt: !168)
!426 = !DILocation(line: 558, column: 1, scope: !167, inlinedAt: !168)
!427 = !DILocation(line: 664, column: 2, scope: !149)
!428 = distinct !DISubprogram(name: "drm_flip_work_queue_task", scope: !1, file: !1, line: 57, type: !429, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !114)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !62, !115}
!431 = !DILocalVariable(name: "lock", arg: 1, scope: !432, file: !433, line: 407, type: !436)
!432 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !433, file: !433, line: 407, type: !434, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!433 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436, !52}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!437 = !DILocation(line: 407, column: 64, scope: !432, inlinedAt: !438)
!438 = distinct !DILocation(line: 64, column: 2, scope: !428)
!439 = !DILocalVariable(name: "flags", arg: 2, scope: !432, file: !433, line: 407, type: !52)
!440 = !DILocation(line: 407, column: 84, scope: !432, inlinedAt: !438)
!441 = !DILocalVariable(name: "lock", arg: 1, scope: !442, file: !433, line: 327, type: !436)
!442 = distinct !DISubprogram(name: "spinlock_check", scope: !433, file: !433, line: 327, type: !443, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !436}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !101, line: 29, baseType: !108)
!447 = !DILocation(line: 327, column: 67, scope: !442, inlinedAt: !448)
!448 = distinct !DILocation(line: 62, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 62, column: 2)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 62, column: 2)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 62, column: 2)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 62, column: 2)
!453 = distinct !DILexicalBlock(scope: !428, file: !1, line: 62, column: 2)
!454 = !DILocalVariable(name: "work", arg: 1, scope: !428, file: !1, line: 57, type: !62)
!455 = !DILocation(line: 57, column: 53, scope: !428)
!456 = !DILocalVariable(name: "task", arg: 2, scope: !428, file: !1, line: 58, type: !115)
!457 = !DILocation(line: 58, column: 32, scope: !428)
!458 = !DILocalVariable(name: "flags", scope: !428, file: !1, line: 60, type: !52)
!459 = !DILocation(line: 60, column: 16, scope: !428)
!460 = !DILocation(line: 62, column: 2, scope: !428)
!461 = !DILocation(line: 62, column: 2, scope: !453)
!462 = !DILocalVariable(name: "__dummy", scope: !463, file: !1, line: 62, type: !52)
!463 = distinct !DILexicalBlock(scope: !452, file: !1, line: 62, column: 2)
!464 = !DILocation(line: 62, column: 2, scope: !463)
!465 = !DILocalVariable(name: "__dummy2", scope: !463, file: !1, line: 62, type: !52)
!466 = !DILocation(line: 62, column: 2, scope: !452)
!467 = !DILocation(line: 62, column: 2, scope: !451)
!468 = !DILocation(line: 62, column: 2, scope: !469)
!469 = distinct !DILexicalBlock(scope: !451, file: !1, line: 62, column: 2)
!470 = !DILocalVariable(name: "__dummy", scope: !471, file: !1, line: 62, type: !52)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 62, column: 2)
!472 = distinct !DILexicalBlock(scope: !469, file: !1, line: 62, column: 2)
!473 = !DILocation(line: 62, column: 2, scope: !471)
!474 = !DILocalVariable(name: "__dummy2", scope: !471, file: !1, line: 62, type: !52)
!475 = !DILocation(line: 62, column: 2, scope: !472)
!476 = !DILocation(line: 62, column: 2, scope: !450)
!477 = !{i32 -2141814401}
!478 = !DILocation(line: 62, column: 2, scope: !449)
!479 = !DILocation(line: 329, column: 10, scope: !442, inlinedAt: !448)
!480 = !DILocation(line: 329, column: 16, scope: !442, inlinedAt: !448)
!481 = !DILocation(line: 63, column: 17, scope: !428)
!482 = !DILocation(line: 63, column: 23, scope: !428)
!483 = !DILocation(line: 63, column: 30, scope: !428)
!484 = !DILocation(line: 63, column: 36, scope: !428)
!485 = !DILocation(line: 63, column: 2, scope: !428)
!486 = !DILocation(line: 64, column: 26, scope: !428)
!487 = !DILocation(line: 64, column: 32, scope: !428)
!488 = !DILocation(line: 64, column: 38, scope: !428)
!489 = !DILocalVariable(name: "__dummy", scope: !490, file: !433, line: 409, type: !52)
!490 = distinct !DILexicalBlock(scope: !491, file: !433, line: 409, column: 2)
!491 = distinct !DILexicalBlock(scope: !432, file: !433, line: 409, column: 2)
!492 = !DILocation(line: 409, column: 2, scope: !490, inlinedAt: !438)
!493 = !DILocalVariable(name: "__dummy2", scope: !490, file: !433, line: 409, type: !52)
!494 = !DILocalVariable(name: "__dummy", scope: !495, file: !433, line: 409, type: !52)
!495 = distinct !DILexicalBlock(scope: !496, file: !433, line: 409, column: 2)
!496 = distinct !DILexicalBlock(scope: !497, file: !433, line: 409, column: 2)
!497 = distinct !DILexicalBlock(scope: !498, file: !433, line: 409, column: 2)
!498 = distinct !DILexicalBlock(scope: !491, file: !433, line: 409, column: 2)
!499 = !DILocation(line: 409, column: 2, scope: !495, inlinedAt: !438)
!500 = !DILocalVariable(name: "__dummy2", scope: !495, file: !433, line: 409, type: !52)
!501 = !DILocation(line: 409, column: 2, scope: !496, inlinedAt: !438)
!502 = !DILocation(line: 409, column: 2, scope: !503, inlinedAt: !438)
!503 = distinct !DILexicalBlock(scope: !498, file: !433, line: 409, column: 2)
!504 = !{i32 -2145528527}
!505 = !DILocation(line: 409, column: 2, scope: !506, inlinedAt: !438)
!506 = distinct !DILexicalBlock(scope: !503, file: !433, line: 409, column: 2)
!507 = !DILocation(line: 65, column: 1, scope: !428)
!508 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !509, file: !509, line: 666, type: !510, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!509 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!510 = !DISubroutineType(types: !511)
!511 = !{!52}
!512 = !DILocalVariable(name: "f", scope: !508, file: !509, line: 668, type: !52)
!513 = !DILocation(line: 668, column: 16, scope: !508)
!514 = !DILocation(line: 670, column: 6, scope: !508)
!515 = !DILocation(line: 670, column: 4, scope: !508)
!516 = !DILocation(line: 671, column: 2, scope: !508)
!517 = !DILocation(line: 672, column: 9, scope: !508)
!518 = !DILocation(line: 672, column: 2, scope: !508)
!519 = distinct !DISubprogram(name: "list_add_tail", scope: !520, file: !520, line: 98, type: !521, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!520 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!521 = !DISubroutineType(types: !522)
!522 = !{null, !56, !56}
!523 = !DILocalVariable(name: "new", arg: 1, scope: !519, file: !520, line: 98, type: !56)
!524 = !DILocation(line: 98, column: 52, scope: !519)
!525 = !DILocalVariable(name: "head", arg: 2, scope: !519, file: !520, line: 98, type: !56)
!526 = !DILocation(line: 98, column: 75, scope: !519)
!527 = !DILocation(line: 100, column: 13, scope: !519)
!528 = !DILocation(line: 100, column: 18, scope: !519)
!529 = !DILocation(line: 100, column: 24, scope: !519)
!530 = !DILocation(line: 100, column: 30, scope: !519)
!531 = !DILocation(line: 100, column: 2, scope: !519)
!532 = !DILocation(line: 101, column: 1, scope: !519)
!533 = distinct !DISubprogram(name: "drm_flip_work_queue", scope: !1, file: !1, line: 76, type: !73, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !114)
!534 = !DILocalVariable(name: "work", arg: 1, scope: !533, file: !1, line: 76, type: !62)
!535 = !DILocation(line: 76, column: 48, scope: !533)
!536 = !DILocalVariable(name: "val", arg: 2, scope: !533, file: !1, line: 76, type: !53)
!537 = !DILocation(line: 76, column: 60, scope: !533)
!538 = !DILocalVariable(name: "task", scope: !533, file: !1, line: 78, type: !115)
!539 = !DILocation(line: 78, column: 24, scope: !533)
!540 = !DILocation(line: 80, column: 37, scope: !533)
!541 = !DILocation(line: 81, column: 5, scope: !533)
!542 = !DILocation(line: 80, column: 9, scope: !533)
!543 = !DILocation(line: 80, column: 7, scope: !533)
!544 = !DILocation(line: 82, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !533, file: !1, line: 82, column: 6)
!546 = !DILocation(line: 82, column: 6, scope: !533)
!547 = !DILocation(line: 83, column: 28, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !1, line: 82, column: 12)
!549 = !DILocation(line: 83, column: 34, scope: !548)
!550 = !DILocation(line: 83, column: 3, scope: !548)
!551 = !DILocation(line: 84, column: 2, scope: !548)
!552 = !DILocation(line: 85, column: 3, scope: !553)
!553 = distinct !DILexicalBlock(scope: !545, file: !1, line: 84, column: 9)
!554 = !DILocation(line: 86, column: 3, scope: !553)
!555 = !DILocation(line: 86, column: 9, scope: !553)
!556 = !DILocation(line: 86, column: 14, scope: !553)
!557 = !DILocation(line: 86, column: 20, scope: !553)
!558 = !DILocation(line: 88, column: 1, scope: !533)
!559 = distinct !DISubprogram(name: "drm_can_sleep", scope: !560, file: !560, line: 76, type: !561, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!560 = !DIFile(filename: "./include/drm/drm_util.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DISubroutineType(types: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 30, baseType: !564)
!564 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!565 = !DILocalVariable(name: "flags", arg: 1, scope: !566, file: !567, line: 162, type: !52)
!566 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !567, file: !567, line: 162, type: !568, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!567 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!568 = !DISubroutineType(types: !569)
!569 = !{!61, !52}
!570 = !DILocation(line: 162, column: 67, scope: !566, inlinedAt: !571)
!571 = distinct !DILocation(line: 78, column: 40, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !560, line: 78, column: 40)
!573 = distinct !DILexicalBlock(scope: !574, file: !560, line: 78, column: 40)
!574 = distinct !DILexicalBlock(scope: !559, file: !560, line: 78, column: 6)
!575 = !DILocalVariable(name: "pfo_val__", scope: !576, file: !577, line: 26, type: !581)
!576 = distinct !DILexicalBlock(scope: !578, file: !577, line: 26, column: 9)
!577 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!578 = distinct !DISubprogram(name: "preempt_count", scope: !577, file: !577, line: 24, type: !579, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!579 = !DISubroutineType(types: !580)
!580 = !{!61}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !86, line: 21, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !88, line: 27, baseType: !38)
!583 = !DILocation(line: 26, column: 9, scope: !576, inlinedAt: !584)
!584 = distinct !DILocation(line: 78, column: 6, scope: !574)
!585 = !{i32 -2145609184}
!586 = !DILocation(line: 26, column: 41, scope: !578, inlinedAt: !584)
!587 = !DILocation(line: 78, column: 6, scope: !574)
!588 = !DILocation(line: 78, column: 37, scope: !574)
!589 = !DILocalVariable(name: "_flags", scope: !573, file: !560, line: 78, type: !52)
!590 = !DILocation(line: 78, column: 40, scope: !573)
!591 = !DILocalVariable(name: "__dummy", scope: !592, file: !560, line: 78, type: !52)
!592 = distinct !DILexicalBlock(scope: !593, file: !560, line: 78, column: 40)
!593 = distinct !DILexicalBlock(scope: !573, file: !560, line: 78, column: 40)
!594 = !DILocation(line: 78, column: 40, scope: !592)
!595 = !DILocalVariable(name: "__dummy2", scope: !592, file: !560, line: 78, type: !52)
!596 = !DILocation(line: 78, column: 40, scope: !593)
!597 = !DILocalVariable(name: "__dummy", scope: !598, file: !560, line: 78, type: !52)
!598 = distinct !DILexicalBlock(scope: !572, file: !560, line: 78, column: 40)
!599 = !DILocation(line: 78, column: 40, scope: !598)
!600 = !DILocalVariable(name: "__dummy2", scope: !598, file: !560, line: 78, type: !52)
!601 = !DILocation(line: 78, column: 40, scope: !572)
!602 = !DILocation(line: 164, column: 11, scope: !566, inlinedAt: !571)
!603 = !DILocation(line: 164, column: 17, scope: !566, inlinedAt: !571)
!604 = !DILocation(line: 164, column: 9, scope: !566, inlinedAt: !571)
!605 = !DILocation(line: 78, column: 40, scope: !574)
!606 = !DILocation(line: 78, column: 6, scope: !559)
!607 = !DILocation(line: 79, column: 3, scope: !574)
!608 = !DILocation(line: 80, column: 2, scope: !559)
!609 = !DILocation(line: 81, column: 1, scope: !559)
!610 = distinct !DISubprogram(name: "drm_flip_work_commit", scope: !1, file: !1, line: 101, type: !611, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !114)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !62, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !4, line: 18, flags: DIFlagFwdDecl)
!615 = !DILocation(line: 407, column: 64, scope: !432, inlinedAt: !616)
!616 = distinct !DILocation(line: 109, column: 2, scope: !610)
!617 = !DILocation(line: 407, column: 84, scope: !432, inlinedAt: !616)
!618 = !DILocation(line: 327, column: 67, scope: !442, inlinedAt: !619)
!619 = distinct !DILocation(line: 106, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 106, column: 2)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 106, column: 2)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 106, column: 2)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 106, column: 2)
!624 = distinct !DILexicalBlock(scope: !610, file: !1, line: 106, column: 2)
!625 = !DILocalVariable(name: "work", arg: 1, scope: !610, file: !1, line: 101, type: !62)
!626 = !DILocation(line: 101, column: 49, scope: !610)
!627 = !DILocalVariable(name: "wq", arg: 2, scope: !610, file: !1, line: 102, type: !613)
!628 = !DILocation(line: 102, column: 28, scope: !610)
!629 = !DILocalVariable(name: "flags", scope: !610, file: !1, line: 104, type: !52)
!630 = !DILocation(line: 104, column: 16, scope: !610)
!631 = !DILocation(line: 106, column: 2, scope: !610)
!632 = !DILocation(line: 106, column: 2, scope: !624)
!633 = !DILocalVariable(name: "__dummy", scope: !634, file: !1, line: 106, type: !52)
!634 = distinct !DILexicalBlock(scope: !623, file: !1, line: 106, column: 2)
!635 = !DILocation(line: 106, column: 2, scope: !634)
!636 = !DILocalVariable(name: "__dummy2", scope: !634, file: !1, line: 106, type: !52)
!637 = !DILocation(line: 106, column: 2, scope: !623)
!638 = !DILocation(line: 106, column: 2, scope: !622)
!639 = !DILocation(line: 106, column: 2, scope: !640)
!640 = distinct !DILexicalBlock(scope: !622, file: !1, line: 106, column: 2)
!641 = !DILocalVariable(name: "__dummy", scope: !642, file: !1, line: 106, type: !52)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 106, column: 2)
!643 = distinct !DILexicalBlock(scope: !640, file: !1, line: 106, column: 2)
!644 = !DILocation(line: 106, column: 2, scope: !642)
!645 = !DILocalVariable(name: "__dummy2", scope: !642, file: !1, line: 106, type: !52)
!646 = !DILocation(line: 106, column: 2, scope: !643)
!647 = !DILocation(line: 106, column: 2, scope: !621)
!648 = !{i32 -2141812758}
!649 = !DILocation(line: 106, column: 2, scope: !620)
!650 = !DILocation(line: 329, column: 10, scope: !442, inlinedAt: !619)
!651 = !DILocation(line: 329, column: 16, scope: !442, inlinedAt: !619)
!652 = !DILocation(line: 107, column: 20, scope: !610)
!653 = !DILocation(line: 107, column: 26, scope: !610)
!654 = !DILocation(line: 107, column: 35, scope: !610)
!655 = !DILocation(line: 107, column: 41, scope: !610)
!656 = !DILocation(line: 107, column: 2, scope: !610)
!657 = !DILocation(line: 108, column: 18, scope: !610)
!658 = !DILocation(line: 108, column: 24, scope: !610)
!659 = !DILocation(line: 108, column: 2, scope: !610)
!660 = !DILocation(line: 109, column: 26, scope: !610)
!661 = !DILocation(line: 109, column: 32, scope: !610)
!662 = !DILocation(line: 109, column: 38, scope: !610)
!663 = !DILocation(line: 409, column: 2, scope: !490, inlinedAt: !616)
!664 = !DILocation(line: 409, column: 2, scope: !495, inlinedAt: !616)
!665 = !DILocation(line: 409, column: 2, scope: !496, inlinedAt: !616)
!666 = !DILocation(line: 409, column: 2, scope: !503, inlinedAt: !616)
!667 = !DILocation(line: 409, column: 2, scope: !506, inlinedAt: !616)
!668 = !DILocation(line: 110, column: 13, scope: !610)
!669 = !DILocation(line: 110, column: 18, scope: !610)
!670 = !DILocation(line: 110, column: 24, scope: !610)
!671 = !DILocation(line: 110, column: 2, scope: !610)
!672 = !DILocation(line: 111, column: 1, scope: !610)
!673 = distinct !DISubprogram(name: "list_splice_tail", scope: !520, file: !520, line: 464, type: !521, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!674 = !DILocalVariable(name: "list", arg: 1, scope: !673, file: !520, line: 464, type: !56)
!675 = !DILocation(line: 464, column: 55, scope: !673)
!676 = !DILocalVariable(name: "head", arg: 2, scope: !673, file: !520, line: 465, type: !56)
!677 = !DILocation(line: 465, column: 23, scope: !673)
!678 = !DILocation(line: 467, column: 18, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !520, line: 467, column: 6)
!680 = !DILocation(line: 467, column: 7, scope: !679)
!681 = !DILocation(line: 467, column: 6, scope: !673)
!682 = !DILocation(line: 468, column: 17, scope: !679)
!683 = !DILocation(line: 468, column: 23, scope: !679)
!684 = !DILocation(line: 468, column: 29, scope: !679)
!685 = !DILocation(line: 468, column: 35, scope: !679)
!686 = !DILocation(line: 468, column: 3, scope: !679)
!687 = !DILocation(line: 469, column: 1, scope: !673)
!688 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !520, file: !520, line: 33, type: !689, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !56}
!691 = !DILocalVariable(name: "list", arg: 1, scope: !688, file: !520, line: 33, type: !56)
!692 = !DILocation(line: 33, column: 53, scope: !688)
!693 = !DILocation(line: 35, column: 2, scope: !688)
!694 = !DILocation(line: 35, column: 2, scope: !695)
!695 = distinct !DILexicalBlock(scope: !688, file: !520, line: 35, column: 2)
!696 = !DILocation(line: 35, column: 2, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !520, line: 35, column: 2)
!698 = !DILocation(line: 35, column: 2, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !520, line: 35, column: 2)
!700 = !DILocation(line: 36, column: 15, scope: !688)
!701 = !DILocation(line: 36, column: 2, scope: !688)
!702 = !DILocation(line: 36, column: 8, scope: !688)
!703 = !DILocation(line: 36, column: 13, scope: !688)
!704 = !DILocation(line: 37, column: 1, scope: !688)
!705 = distinct !DISubprogram(name: "queue_work", scope: !4, file: !4, line: 504, type: !706, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!706 = !DISubroutineType(types: !707)
!707 = !{!563, !613, !96}
!708 = !DILocalVariable(name: "wq", arg: 1, scope: !705, file: !4, line: 504, type: !613)
!709 = !DILocation(line: 504, column: 56, scope: !705)
!710 = !DILocalVariable(name: "work", arg: 2, scope: !705, file: !4, line: 505, type: !96)
!711 = !DILocation(line: 505, column: 30, scope: !705)
!712 = !DILocation(line: 507, column: 41, scope: !705)
!713 = !DILocation(line: 507, column: 45, scope: !705)
!714 = !DILocation(line: 507, column: 9, scope: !705)
!715 = !DILocation(line: 507, column: 2, scope: !705)
!716 = distinct !DISubprogram(name: "drm_flip_work_init", scope: !1, file: !1, line: 147, type: !717, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !114)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !62, !67, !71}
!719 = !DILocation(line: 327, column: 67, scope: !442, inlinedAt: !720)
!720 = distinct !DILocation(line: 153, column: 2, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !1, line: 153, column: 2)
!722 = !DILocalVariable(name: "work", arg: 1, scope: !716, file: !1, line: 147, type: !62)
!723 = !DILocation(line: 147, column: 47, scope: !716)
!724 = !DILocalVariable(name: "name", arg: 2, scope: !716, file: !1, line: 148, type: !67)
!725 = !DILocation(line: 148, column: 15, scope: !716)
!726 = !DILocalVariable(name: "func", arg: 3, scope: !716, file: !1, line: 148, type: !71)
!727 = !DILocation(line: 148, column: 37, scope: !716)
!728 = !DILocation(line: 150, column: 15, scope: !716)
!729 = !DILocation(line: 150, column: 2, scope: !716)
!730 = !DILocation(line: 150, column: 8, scope: !716)
!731 = !DILocation(line: 150, column: 13, scope: !716)
!732 = !DILocation(line: 151, column: 18, scope: !716)
!733 = !DILocation(line: 151, column: 24, scope: !716)
!734 = !DILocation(line: 151, column: 2, scope: !716)
!735 = !DILocation(line: 152, column: 18, scope: !716)
!736 = !DILocation(line: 152, column: 24, scope: !716)
!737 = !DILocation(line: 152, column: 2, scope: !716)
!738 = !DILocation(line: 153, column: 2, scope: !716)
!739 = !DILocation(line: 153, column: 2, scope: !721)
!740 = !DILocation(line: 329, column: 10, scope: !442, inlinedAt: !720)
!741 = !DILocation(line: 329, column: 16, scope: !442, inlinedAt: !720)
!742 = !DILocation(line: 154, column: 15, scope: !716)
!743 = !DILocation(line: 154, column: 2, scope: !716)
!744 = !DILocation(line: 154, column: 8, scope: !716)
!745 = !DILocation(line: 154, column: 13, scope: !716)
!746 = !DILocation(line: 156, column: 2, scope: !716)
!747 = !DILocation(line: 156, column: 2, scope: !748)
!748 = distinct !DILexicalBlock(scope: !716, file: !1, line: 156, column: 2)
!749 = !DILocation(line: 157, column: 1, scope: !716)
!750 = distinct !DISubprogram(name: "__init_work", scope: !4, file: !4, line: 215, type: !751, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !96, !61}
!753 = !DILocalVariable(name: "work", arg: 1, scope: !750, file: !4, line: 215, type: !96)
!754 = !DILocation(line: 215, column: 52, scope: !750)
!755 = !DILocalVariable(name: "onstack", arg: 2, scope: !750, file: !4, line: 215, type: !61)
!756 = !DILocation(line: 215, column: 62, scope: !750)
!757 = !DILocation(line: 215, column: 73, scope: !750)
!758 = distinct !DISubprogram(name: "flip_worker", scope: !1, file: !1, line: 114, type: !94, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!759 = !DILocation(line: 407, column: 64, scope: !432, inlinedAt: !760)
!760 = distinct !DILocation(line: 127, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 120, column: 12)
!762 = !DILocation(line: 407, column: 84, scope: !432, inlinedAt: !760)
!763 = !DILocation(line: 327, column: 67, scope: !442, inlinedAt: !764)
!764 = distinct !DILocation(line: 124, column: 3, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 124, column: 3)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 124, column: 3)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 124, column: 3)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 124, column: 3)
!769 = distinct !DILexicalBlock(scope: !761, file: !1, line: 124, column: 3)
!770 = !DILocalVariable(name: "w", arg: 1, scope: !758, file: !1, line: 114, type: !96)
!771 = !DILocation(line: 114, column: 45, scope: !758)
!772 = !DILocalVariable(name: "work", scope: !758, file: !1, line: 116, type: !62)
!773 = !DILocation(line: 116, column: 24, scope: !758)
!774 = !DILocalVariable(name: "__mptr", scope: !775, file: !1, line: 116, type: !53)
!775 = distinct !DILexicalBlock(scope: !758, file: !1, line: 116, column: 31)
!776 = !DILocation(line: 116, column: 31, scope: !775)
!777 = !DILocation(line: 116, column: 31, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !1, line: 116, column: 31)
!779 = !DILocalVariable(name: "tasks", scope: !758, file: !1, line: 117, type: !57)
!780 = !DILocation(line: 117, column: 19, scope: !758)
!781 = !DILocalVariable(name: "flags", scope: !758, file: !1, line: 118, type: !52)
!782 = !DILocation(line: 118, column: 16, scope: !758)
!783 = !DILocation(line: 120, column: 2, scope: !758)
!784 = !DILocalVariable(name: "task", scope: !761, file: !1, line: 121, type: !115)
!785 = !DILocation(line: 121, column: 25, scope: !761)
!786 = !DILocalVariable(name: "tmp", scope: !761, file: !1, line: 121, type: !115)
!787 = !DILocation(line: 121, column: 32, scope: !761)
!788 = !DILocation(line: 123, column: 3, scope: !761)
!789 = !DILocation(line: 124, column: 3, scope: !761)
!790 = !DILocation(line: 124, column: 3, scope: !769)
!791 = !DILocalVariable(name: "__dummy", scope: !792, file: !1, line: 124, type: !52)
!792 = distinct !DILexicalBlock(scope: !768, file: !1, line: 124, column: 3)
!793 = !DILocation(line: 124, column: 3, scope: !792)
!794 = !DILocalVariable(name: "__dummy2", scope: !792, file: !1, line: 124, type: !52)
!795 = !DILocation(line: 124, column: 3, scope: !768)
!796 = !DILocation(line: 124, column: 3, scope: !767)
!797 = !DILocation(line: 124, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !767, file: !1, line: 124, column: 3)
!799 = !DILocalVariable(name: "__dummy", scope: !800, file: !1, line: 124, type: !52)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 124, column: 3)
!801 = distinct !DILexicalBlock(scope: !798, file: !1, line: 124, column: 3)
!802 = !DILocation(line: 124, column: 3, scope: !800)
!803 = !DILocalVariable(name: "__dummy2", scope: !800, file: !1, line: 124, type: !52)
!804 = !DILocation(line: 124, column: 3, scope: !801)
!805 = !DILocation(line: 124, column: 3, scope: !766)
!806 = !{i32 -2141810181}
!807 = !DILocation(line: 124, column: 3, scope: !765)
!808 = !DILocation(line: 329, column: 10, scope: !442, inlinedAt: !764)
!809 = !DILocation(line: 329, column: 16, scope: !442, inlinedAt: !764)
!810 = !DILocation(line: 125, column: 21, scope: !761)
!811 = !DILocation(line: 125, column: 27, scope: !761)
!812 = !DILocation(line: 125, column: 3, scope: !761)
!813 = !DILocation(line: 126, column: 19, scope: !761)
!814 = !DILocation(line: 126, column: 25, scope: !761)
!815 = !DILocation(line: 126, column: 3, scope: !761)
!816 = !DILocation(line: 127, column: 27, scope: !761)
!817 = !DILocation(line: 127, column: 33, scope: !761)
!818 = !DILocation(line: 127, column: 39, scope: !761)
!819 = !DILocation(line: 409, column: 2, scope: !490, inlinedAt: !760)
!820 = !DILocation(line: 409, column: 2, scope: !495, inlinedAt: !760)
!821 = !DILocation(line: 409, column: 2, scope: !496, inlinedAt: !760)
!822 = !DILocation(line: 409, column: 2, scope: !503, inlinedAt: !760)
!823 = !DILocation(line: 409, column: 2, scope: !506, inlinedAt: !760)
!824 = !DILocation(line: 129, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !761, file: !1, line: 129, column: 7)
!826 = !DILocation(line: 129, column: 7, scope: !761)
!827 = !DILocation(line: 130, column: 4, scope: !825)
!828 = !DILocalVariable(name: "__mptr", scope: !829, file: !1, line: 132, type: !53)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 132, column: 3)
!830 = distinct !DILexicalBlock(scope: !761, file: !1, line: 132, column: 3)
!831 = !DILocation(line: 132, column: 3, scope: !829)
!832 = !DILocation(line: 132, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !1, line: 132, column: 3)
!834 = !DILocation(line: 132, column: 3, scope: !830)
!835 = !DILocalVariable(name: "__mptr", scope: !836, file: !1, line: 132, type: !53)
!836 = distinct !DILexicalBlock(scope: !830, file: !1, line: 132, column: 3)
!837 = !DILocation(line: 132, column: 3, scope: !836)
!838 = !DILocation(line: 132, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !1, line: 132, column: 3)
!840 = !DILocation(line: 132, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !830, file: !1, line: 132, column: 3)
!842 = !DILocation(line: 133, column: 4, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !1, line: 132, column: 53)
!844 = !DILocation(line: 133, column: 10, scope: !843)
!845 = !DILocation(line: 133, column: 15, scope: !843)
!846 = !DILocation(line: 133, column: 21, scope: !843)
!847 = !DILocation(line: 133, column: 27, scope: !843)
!848 = !DILocation(line: 134, column: 10, scope: !843)
!849 = !DILocation(line: 134, column: 4, scope: !843)
!850 = !DILocation(line: 135, column: 3, scope: !843)
!851 = !DILocalVariable(name: "__mptr", scope: !852, file: !1, line: 132, type: !53)
!852 = distinct !DILexicalBlock(scope: !841, file: !1, line: 132, column: 3)
!853 = !DILocation(line: 132, column: 3, scope: !852)
!854 = !DILocation(line: 132, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !1, line: 132, column: 3)
!856 = distinct !{!856, !834, !857}
!857 = !DILocation(line: 135, column: 3, scope: !830)
!858 = distinct !{!858, !783, !859}
!859 = !DILocation(line: 136, column: 2, scope: !758)
!860 = !DILocation(line: 137, column: 1, scope: !758)
!861 = distinct !DISubprogram(name: "drm_flip_work_cleanup", scope: !1, file: !1, line: 166, type: !862, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !114)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !62}
!864 = !DILocalVariable(name: "work", arg: 1, scope: !861, file: !1, line: 166, type: !62)
!865 = !DILocation(line: 166, column: 50, scope: !861)
!866 = !DILocalVariable(name: "__ret_warn_on", scope: !867, file: !1, line: 168, type: !61)
!867 = distinct !DILexicalBlock(scope: !861, file: !1, line: 168, column: 2)
!868 = !DILocation(line: 168, column: 2, scope: !867)
!869 = !DILocation(line: 168, column: 2, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !1, line: 168, column: 2)
!871 = !DILocation(line: 168, column: 2, scope: !872)
!872 = distinct !DILexicalBlock(scope: !870, file: !1, line: 168, column: 2)
!873 = !DILocation(line: 168, column: 2, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !1, line: 168, column: 2)
!875 = !DILocation(line: 168, column: 2, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !1, line: 168, column: 2)
!877 = !{i32 -2141802970, i32 -2141802941, i32 -2141802895, i32 -2141802837, i32 -2141802783, i32 -2141802729, i32 -2141802674, i32 -2141802643}
!878 = !DILocation(line: 168, column: 2, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !1, line: 168, column: 2)
!880 = !{i32 -2141802230, i32 -2141802223, i32 -2141802171, i32 -2141802140, i32 -2141802110}
!881 = !DILocation(line: 168, column: 2, scope: !882)
!882 = distinct !DILexicalBlock(scope: !872, file: !1, line: 168, column: 2)
!883 = !DILocation(line: 169, column: 1, scope: !861)
!884 = distinct !DISubprogram(name: "list_empty", scope: !520, file: !520, line: 280, type: !885, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!885 = !DISubroutineType(types: !886)
!886 = !{!61, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!889 = !DILocalVariable(name: "head", arg: 1, scope: !884, file: !520, line: 280, type: !887)
!890 = !DILocation(line: 280, column: 54, scope: !884)
!891 = !DILocation(line: 282, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !884, file: !520, line: 282, column: 9)
!893 = !DILocation(line: 282, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !892, file: !520, line: 282, column: 9)
!895 = !DILocation(line: 282, column: 34, scope: !884)
!896 = !DILocation(line: 282, column: 31, scope: !884)
!897 = !DILocation(line: 282, column: 2, scope: !884)
!898 = distinct !DISubprogram(name: "get_order", scope: !899, file: !899, line: 29, type: !568, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!899 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!900 = !DILocalVariable(name: "x", arg: 1, scope: !901, file: !902, line: 366, type: !905)
!901 = distinct !DISubprogram(name: "fls64", scope: !902, file: !902, line: 366, type: !903, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!902 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!903 = !DISubroutineType(types: !904)
!904 = !{!61, !905}
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !88, line: 31, baseType: !906)
!906 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!907 = !DILocation(line: 366, column: 40, scope: !901, inlinedAt: !908)
!908 = distinct !DILocation(line: 46, column: 9, scope: !898)
!909 = !DILocalVariable(name: "bitpos", scope: !901, file: !902, line: 368, type: !61)
!910 = !DILocation(line: 368, column: 6, scope: !901, inlinedAt: !908)
!911 = !DILocalVariable(name: "size", arg: 1, scope: !898, file: !899, line: 29, type: !52)
!912 = !DILocation(line: 29, column: 63, scope: !898)
!913 = !DILocation(line: 31, column: 27, scope: !914)
!914 = distinct !DILexicalBlock(scope: !898, file: !899, line: 31, column: 6)
!915 = !DILocation(line: 31, column: 6, scope: !914)
!916 = !DILocation(line: 31, column: 6, scope: !898)
!917 = !DILocation(line: 32, column: 8, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !899, line: 32, column: 7)
!919 = distinct !DILexicalBlock(scope: !914, file: !899, line: 31, column: 34)
!920 = !DILocation(line: 32, column: 7, scope: !919)
!921 = !DILocation(line: 33, column: 4, scope: !918)
!922 = !DILocation(line: 35, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !899, line: 35, column: 7)
!924 = !DILocation(line: 35, column: 12, scope: !923)
!925 = !DILocation(line: 35, column: 7, scope: !919)
!926 = !DILocation(line: 36, column: 4, scope: !923)
!927 = !DILocation(line: 38, column: 10, scope: !919)
!928 = !DILocation(line: 38, column: 28, scope: !919)
!929 = !DILocation(line: 38, column: 41, scope: !919)
!930 = !DILocation(line: 38, column: 3, scope: !919)
!931 = !DILocation(line: 41, column: 6, scope: !898)
!932 = !DILocation(line: 42, column: 7, scope: !898)
!933 = !DILocation(line: 46, column: 15, scope: !898)
!934 = !DILocation(line: 374, column: 2, scope: !901, inlinedAt: !908)
!935 = !DILocation(line: 376, column: 14, scope: !901, inlinedAt: !908)
!936 = !{i32 305032}
!937 = !DILocation(line: 377, column: 9, scope: !901, inlinedAt: !908)
!938 = !DILocation(line: 377, column: 16, scope: !901, inlinedAt: !908)
!939 = !DILocation(line: 46, column: 2, scope: !898)
!940 = !DILocation(line: 48, column: 1, scope: !898)
!941 = distinct !DISubprogram(name: "__ilog2_u64", scope: !942, file: !942, line: 30, type: !943, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!942 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!943 = !DISubroutineType(types: !944)
!944 = !{!61, !945}
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !86, line: 23, baseType: !905)
!946 = !DILocation(line: 366, column: 40, scope: !901, inlinedAt: !947)
!947 = distinct !DILocation(line: 32, column: 9, scope: !941)
!948 = !DILocation(line: 368, column: 6, scope: !901, inlinedAt: !947)
!949 = !DILocalVariable(name: "n", arg: 1, scope: !941, file: !942, line: 30, type: !945)
!950 = !DILocation(line: 30, column: 21, scope: !941)
!951 = !DILocation(line: 32, column: 15, scope: !941)
!952 = !DILocation(line: 374, column: 2, scope: !901, inlinedAt: !947)
!953 = !DILocation(line: 376, column: 14, scope: !901, inlinedAt: !947)
!954 = !DILocation(line: 377, column: 9, scope: !901, inlinedAt: !947)
!955 = !DILocation(line: 377, column: 16, scope: !901, inlinedAt: !947)
!956 = !DILocation(line: 32, column: 18, scope: !941)
!957 = !DILocation(line: 32, column: 2, scope: !941)
!958 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !959, file: !959, line: 137, type: !960, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!959 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!960 = !DISubroutineType(types: !961)
!961 = !{!53, !160, !962, !152, !50}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!964 = !DILocalVariable(name: "s", arg: 1, scope: !958, file: !959, line: 137, type: !160)
!965 = !DILocation(line: 137, column: 54, scope: !958)
!966 = !DILocalVariable(name: "object", arg: 2, scope: !958, file: !959, line: 137, type: !962)
!967 = !DILocation(line: 137, column: 69, scope: !958)
!968 = !DILocalVariable(name: "size", arg: 3, scope: !958, file: !959, line: 138, type: !152)
!969 = !DILocation(line: 138, column: 12, scope: !958)
!970 = !DILocalVariable(name: "flags", arg: 4, scope: !958, file: !959, line: 138, type: !50)
!971 = !DILocation(line: 138, column: 24, scope: !958)
!972 = !DILocation(line: 140, column: 17, scope: !958)
!973 = !DILocation(line: 140, column: 2, scope: !958)
!974 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !509, file: !509, line: 646, type: !510, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!975 = !DILocalVariable(name: "__ret", scope: !976, file: !509, line: 648, type: !52)
!976 = distinct !DILexicalBlock(scope: !974, file: !509, line: 648, column: 9)
!977 = !DILocation(line: 648, column: 9, scope: !976)
!978 = !DILocalVariable(name: "__edi", scope: !976, file: !509, line: 648, type: !52)
!979 = !DILocalVariable(name: "__esi", scope: !976, file: !509, line: 648, type: !52)
!980 = !DILocalVariable(name: "__edx", scope: !976, file: !509, line: 648, type: !52)
!981 = !DILocalVariable(name: "__ecx", scope: !976, file: !509, line: 648, type: !52)
!982 = !DILocalVariable(name: "__eax", scope: !976, file: !509, line: 648, type: !52)
!983 = !DILocation(line: 648, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !509, line: 648, column: 9)
!985 = distinct !DILexicalBlock(scope: !976, file: !509, line: 648, column: 9)
!986 = !{i32 -2145702385, i32 -2145700070, i32 -2145699836, i32 -2145699785, i32 -2145699757, i32 -2145699732, i32 -2145700048, i32 -2145700035, i32 -2145699597, i32 -2145699478, i32 -2145699943, i32 -2145699916, i32 -2145699888, i32 -2145699858}
!987 = !DILocalVariable(name: "__mask", scope: !988, file: !509, line: 648, type: !52)
!988 = distinct !DILexicalBlock(scope: !984, file: !509, line: 648, column: 9)
!989 = !DILocation(line: 648, column: 9, scope: !988)
!990 = !DILocation(line: 648, column: 9, scope: !985)
!991 = !DILocation(line: 648, column: 2, scope: !974)
!992 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !509, file: !509, line: 656, type: !993, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!993 = !DISubroutineType(types: !994)
!994 = !{null}
!995 = !DILocalVariable(name: "__edi", scope: !996, file: !509, line: 658, type: !52)
!996 = distinct !DILexicalBlock(scope: !992, file: !509, line: 658, column: 2)
!997 = !DILocation(line: 658, column: 2, scope: !996)
!998 = !DILocalVariable(name: "__esi", scope: !996, file: !509, line: 658, type: !52)
!999 = !DILocalVariable(name: "__edx", scope: !996, file: !509, line: 658, type: !52)
!1000 = !DILocalVariable(name: "__ecx", scope: !996, file: !509, line: 658, type: !52)
!1001 = !DILocalVariable(name: "__eax", scope: !996, file: !509, line: 658, type: !52)
!1002 = !{i32 -2145695291, i32 -2145694559, i32 -2145694325, i32 -2145694274, i32 -2145694246, i32 -2145694221, i32 -2145694537, i32 -2145694524, i32 -2145694086, i32 -2145693967, i32 -2145694432, i32 -2145694405, i32 -2145694377, i32 -2145694347}
!1003 = !DILocation(line: 659, column: 1, scope: !992)
!1004 = distinct !DISubprogram(name: "__list_add", scope: !520, file: !520, line: 63, type: !1005, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !56, !56, !56}
!1007 = !DILocalVariable(name: "new", arg: 1, scope: !1004, file: !520, line: 63, type: !56)
!1008 = !DILocation(line: 63, column: 49, scope: !1004)
!1009 = !DILocalVariable(name: "prev", arg: 2, scope: !1004, file: !520, line: 64, type: !56)
!1010 = !DILocation(line: 64, column: 28, scope: !1004)
!1011 = !DILocalVariable(name: "next", arg: 3, scope: !1004, file: !520, line: 65, type: !56)
!1012 = !DILocation(line: 65, column: 28, scope: !1004)
!1013 = !DILocation(line: 67, column: 24, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !520, line: 67, column: 6)
!1015 = !DILocation(line: 67, column: 29, scope: !1014)
!1016 = !DILocation(line: 67, column: 35, scope: !1014)
!1017 = !DILocation(line: 67, column: 7, scope: !1014)
!1018 = !DILocation(line: 67, column: 6, scope: !1004)
!1019 = !DILocation(line: 68, column: 3, scope: !1014)
!1020 = !DILocation(line: 70, column: 15, scope: !1004)
!1021 = !DILocation(line: 70, column: 2, scope: !1004)
!1022 = !DILocation(line: 70, column: 8, scope: !1004)
!1023 = !DILocation(line: 70, column: 13, scope: !1004)
!1024 = !DILocation(line: 71, column: 14, scope: !1004)
!1025 = !DILocation(line: 71, column: 2, scope: !1004)
!1026 = !DILocation(line: 71, column: 7, scope: !1004)
!1027 = !DILocation(line: 71, column: 12, scope: !1004)
!1028 = !DILocation(line: 72, column: 14, scope: !1004)
!1029 = !DILocation(line: 72, column: 2, scope: !1004)
!1030 = !DILocation(line: 72, column: 7, scope: !1004)
!1031 = !DILocation(line: 72, column: 12, scope: !1004)
!1032 = !DILocation(line: 73, column: 2, scope: !1004)
!1033 = !DILocation(line: 73, column: 2, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1004, file: !520, line: 73, column: 2)
!1035 = !DILocation(line: 73, column: 2, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1034, file: !520, line: 73, column: 2)
!1037 = !DILocation(line: 73, column: 2, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !520, line: 73, column: 2)
!1039 = !DILocation(line: 74, column: 1, scope: !1004)
!1040 = distinct !DISubprogram(name: "__list_add_valid", scope: !520, file: !520, line: 45, type: !1041, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!563, !56, !56, !56}
!1043 = !DILocalVariable(name: "new", arg: 1, scope: !1040, file: !520, line: 45, type: !56)
!1044 = !DILocation(line: 45, column: 55, scope: !1040)
!1045 = !DILocalVariable(name: "prev", arg: 2, scope: !1040, file: !520, line: 46, type: !56)
!1046 = !DILocation(line: 46, column: 23, scope: !1040)
!1047 = !DILocalVariable(name: "next", arg: 3, scope: !1040, file: !520, line: 47, type: !56)
!1048 = !DILocation(line: 47, column: 23, scope: !1040)
!1049 = !DILocation(line: 49, column: 2, scope: !1040)
!1050 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !509, file: !509, line: 651, type: !1051, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !52}
!1053 = !DILocalVariable(name: "f", arg: 1, scope: !1050, file: !509, line: 651, type: !52)
!1054 = !DILocation(line: 651, column: 65, scope: !1050)
!1055 = !DILocalVariable(name: "__edi", scope: !1056, file: !509, line: 653, type: !52)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !509, line: 653, column: 2)
!1057 = !DILocation(line: 653, column: 2, scope: !1056)
!1058 = !DILocalVariable(name: "__esi", scope: !1056, file: !509, line: 653, type: !52)
!1059 = !DILocalVariable(name: "__edx", scope: !1056, file: !509, line: 653, type: !52)
!1060 = !DILocalVariable(name: "__ecx", scope: !1056, file: !509, line: 653, type: !52)
!1061 = !DILocalVariable(name: "__eax", scope: !1056, file: !509, line: 653, type: !52)
!1062 = !{i32 -2145697918, i32 -2145697168, i32 -2145696934, i32 -2145696883, i32 -2145696855, i32 -2145696830, i32 -2145697146, i32 -2145697133, i32 -2145696695, i32 -2145696576, i32 -2145697041, i32 -2145697014, i32 -2145696986, i32 -2145696956}
!1063 = !DILocation(line: 654, column: 1, scope: !1050)
!1064 = distinct !DISubprogram(name: "__list_splice", scope: !520, file: !520, line: 433, type: !1065, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !114)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !887, !56, !56}
!1067 = !DILocalVariable(name: "list", arg: 1, scope: !1064, file: !520, line: 433, type: !887)
!1068 = !DILocation(line: 433, column: 58, scope: !1064)
!1069 = !DILocalVariable(name: "prev", arg: 2, scope: !1064, file: !520, line: 434, type: !56)
!1070 = !DILocation(line: 434, column: 24, scope: !1064)
!1071 = !DILocalVariable(name: "next", arg: 3, scope: !1064, file: !520, line: 435, type: !56)
!1072 = !DILocation(line: 435, column: 24, scope: !1064)
!1073 = !DILocalVariable(name: "first", scope: !1064, file: !520, line: 437, type: !56)
!1074 = !DILocation(line: 437, column: 20, scope: !1064)
!1075 = !DILocation(line: 437, column: 28, scope: !1064)
!1076 = !DILocation(line: 437, column: 34, scope: !1064)
!1077 = !DILocalVariable(name: "last", scope: !1064, file: !520, line: 438, type: !56)
!1078 = !DILocation(line: 438, column: 20, scope: !1064)
!1079 = !DILocation(line: 438, column: 27, scope: !1064)
!1080 = !DILocation(line: 438, column: 33, scope: !1064)
!1081 = !DILocation(line: 440, column: 16, scope: !1064)
!1082 = !DILocation(line: 440, column: 2, scope: !1064)
!1083 = !DILocation(line: 440, column: 9, scope: !1064)
!1084 = !DILocation(line: 440, column: 14, scope: !1064)
!1085 = !DILocation(line: 441, column: 15, scope: !1064)
!1086 = !DILocation(line: 441, column: 2, scope: !1064)
!1087 = !DILocation(line: 441, column: 8, scope: !1064)
!1088 = !DILocation(line: 441, column: 13, scope: !1064)
!1089 = !DILocation(line: 443, column: 15, scope: !1064)
!1090 = !DILocation(line: 443, column: 2, scope: !1064)
!1091 = !DILocation(line: 443, column: 8, scope: !1064)
!1092 = !DILocation(line: 443, column: 13, scope: !1064)
!1093 = !DILocation(line: 444, column: 15, scope: !1064)
!1094 = !DILocation(line: 444, column: 2, scope: !1064)
!1095 = !DILocation(line: 444, column: 8, scope: !1064)
!1096 = !DILocation(line: 444, column: 13, scope: !1064)
!1097 = !DILocation(line: 445, column: 1, scope: !1064)
