; ModuleID = '../bcout/drivers/gpu/drm/drm_managed.llvm.bc'
source_filename = "drivers/gpu/drm/drm_managed.c"
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.52 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kref = type { %struct.refcount_struct }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.drm_device = type { %struct.list_head, i32, %struct.kref, %struct.device*, %struct.anon.65, %struct.drm_driver*, i8*, %struct.drm_minor*, %struct.drm_minor*, i8, %struct.drm_master*, i32, i8, %struct.inode*, i8*, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, i32, i8, %struct.drm_vblank_crtc*, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.drm_agp_head*, %struct.pci_dev*, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, %struct.drm_vma_offset_manager*, %struct.drm_vram_mm*, i32, %struct.drm_fb_helper* }
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
%struct.anon.65 = type { %struct.list_head, i8*, %struct.spinlock }
%struct.drm_driver = type opaque
%struct.drm_minor = type { i32, i32, %struct.device*, %struct.drm_device*, %struct.dentry*, %struct.list_head, %struct.mutex }
%struct.drm_master = type opaque
%struct.drm_vblank_crtc = type { %struct.drm_device*, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, %struct.kthread_worker*, %struct.list_head, %struct.wait_queue_head }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, {}*, i32 (%struct.drm_device*, %struct.drm_display_mode*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_framebuffer = type opaque
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.drm_master*, %struct.pid*, i32, %struct.list_head, %struct.drm_minor*, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, %struct.file*, i8*, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.drm_property = type opaque
%struct.drm_atomic_state = type opaque
%struct.drm_mode_config_helper_funcs = type opaque
%struct.drm_vma_offset_manager = type opaque
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.drmres = type { %struct.drmres_node, [0 x i8] }
%struct.drmres_node = type { %struct.list_head, void (%struct.drm_device*, i8*)*, i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"drmres release begin\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"REL %p %s (%zu bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"drmres release end\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/drm_managed.c\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to add action %s for %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to allocate %zu bytes, %u flags\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"kmalloc\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ADD %p %s (%lu bytes)\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"DEL %p %s (%lu bytes)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_managed_release(%struct.drm_device* %dev) #0 !dbg !4287 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %dr = alloca %struct.drmres*, align 8
  %tmp = alloca %struct.drmres*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.drmres*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp8 = alloca %struct.drmres*, align 8
  %__mptr25 = alloca i8*, align 8
  %tmp31 = alloca %struct.drmres*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4288, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata %struct.drmres** %tmp, metadata !4292, metadata !DIExpression()), !dbg !4293
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4294
  %dev1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 3, !dbg !4294
  %1 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !4294
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %1, i32 512, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4294
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4295, metadata !DIExpression()), !dbg !4298
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4298
  %managed = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 4, !dbg !4298
  %resources = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed, i32 0, i32 0, !dbg !4298
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4298
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4298
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !4298
  store i8* %4, i8** %__mptr, align 8, !dbg !4298
  br label %do.body, !dbg !4298

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4299

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4298
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !4298
  %6 = bitcast i8* %add.ptr to %struct.drmres*, !dbg !4298
  store %struct.drmres* %6, %struct.drmres** %tmp2, align 8, !dbg !4299
  %7 = load %struct.drmres*, %struct.drmres** %tmp2, align 8, !dbg !4298
  store %struct.drmres* %7, %struct.drmres** %dr, align 8, !dbg !4301
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4302, metadata !DIExpression()), !dbg !4304
  %8 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4304
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %8, i32 0, i32 0, !dbg !4304
  %entry4 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 0, !dbg !4304
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry4, i32 0, i32 0, !dbg !4304
  %9 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !4304
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !4304
  store i8* %10, i8** %__mptr3, align 8, !dbg !4304
  br label %do.body6, !dbg !4304

do.body6:                                         ; preds = %do.end
  br label %do.end7, !dbg !4305

do.end7:                                          ; preds = %do.body6
  %11 = load i8*, i8** %__mptr3, align 8, !dbg !4304
  %add.ptr9 = getelementptr i8, i8* %11, i64 0, !dbg !4304
  %12 = bitcast i8* %add.ptr9 to %struct.drmres*, !dbg !4304
  store %struct.drmres* %12, %struct.drmres** %tmp8, align 8, !dbg !4305
  %13 = load %struct.drmres*, %struct.drmres** %tmp8, align 8, !dbg !4304
  store %struct.drmres* %13, %struct.drmres** %tmp, align 8, !dbg !4301
  br label %for.cond, !dbg !4301

for.cond:                                         ; preds = %do.end30, %do.end7
  %14 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4307
  %node10 = getelementptr inbounds %struct.drmres, %struct.drmres* %14, i32 0, i32 0, !dbg !4307
  %entry11 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node10, i32 0, i32 0, !dbg !4307
  %15 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4307
  %managed12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 4, !dbg !4307
  %resources13 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed12, i32 0, i32 0, !dbg !4307
  %cmp = icmp eq %struct.list_head* %entry11, %resources13, !dbg !4307
  %lnot = xor i1 %cmp, true, !dbg !4307
  br i1 %lnot, label %for.body, label %for.end, !dbg !4301

for.body:                                         ; preds = %for.cond
  %16 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4309
  %dev14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 3, !dbg !4309
  %17 = load %struct.device*, %struct.device** %dev14, align 8, !dbg !4309
  %18 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4309
  %19 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4309
  %node15 = getelementptr inbounds %struct.drmres, %struct.drmres* %19, i32 0, i32 0, !dbg !4309
  %name = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node15, i32 0, i32 2, !dbg !4309
  %20 = load i8*, i8** %name, align 8, !dbg !4309
  %21 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4309
  %node16 = getelementptr inbounds %struct.drmres, %struct.drmres* %21, i32 0, i32 0, !dbg !4309
  %size = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node16, i32 0, i32 3, !dbg !4309
  %22 = load i64, i64* %size, align 8, !dbg !4309
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %17, i32 512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.drmres* %18, i8* %20, i64 %22) #7, !dbg !4309
  %23 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4311
  %node17 = getelementptr inbounds %struct.drmres, %struct.drmres* %23, i32 0, i32 0, !dbg !4313
  %release = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node17, i32 0, i32 1, !dbg !4314
  %24 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %release, align 8, !dbg !4314
  %tobool = icmp ne void (%struct.drm_device*, i8*)* %24, null, !dbg !4311
  br i1 %tobool, label %if.then, label %if.end, !dbg !4315

if.then:                                          ; preds = %for.body
  %25 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4316
  %node18 = getelementptr inbounds %struct.drmres, %struct.drmres* %25, i32 0, i32 0, !dbg !4317
  %release19 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node18, i32 0, i32 1, !dbg !4318
  %26 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %release19, align 8, !dbg !4318
  %27 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4319
  %28 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4320
  %node20 = getelementptr inbounds %struct.drmres, %struct.drmres* %28, i32 0, i32 0, !dbg !4321
  %size21 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node20, i32 0, i32 3, !dbg !4322
  %29 = load i64, i64* %size21, align 8, !dbg !4322
  %tobool22 = icmp ne i64 %29, 0, !dbg !4320
  br i1 %tobool22, label %cond.true, label %cond.false, !dbg !4320

cond.true:                                        ; preds = %if.then
  %30 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4323
  %data = getelementptr inbounds %struct.drmres, %struct.drmres* %30, i32 0, i32 1, !dbg !4324
  %31 = bitcast [0 x i8]* %data to i8**, !dbg !4325
  %32 = load i8*, i8** %31, align 8, !dbg !4325
  br label %cond.end, !dbg !4320

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !4320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %32, %cond.true ], [ null, %cond.false ], !dbg !4320
  call void %26(%struct.drm_device* %27, i8* %cond) #7, !dbg !4316
  br label %if.end, !dbg !4316

if.end:                                           ; preds = %cond.end, %for.body
  %33 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4326
  %node23 = getelementptr inbounds %struct.drmres, %struct.drmres* %33, i32 0, i32 0, !dbg !4327
  %entry24 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node23, i32 0, i32 0, !dbg !4328
  call void @list_del(%struct.list_head* %entry24) #7, !dbg !4329
  %34 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4330
  call void @free_dr(%struct.drmres* %34) #7, !dbg !4331
  br label %for.inc, !dbg !4332

for.inc:                                          ; preds = %if.end
  %35 = load %struct.drmres*, %struct.drmres** %tmp, align 8, !dbg !4307
  store %struct.drmres* %35, %struct.drmres** %dr, align 8, !dbg !4307
  call void @llvm.dbg.declare(metadata i8** %__mptr25, metadata !4333, metadata !DIExpression()), !dbg !4335
  %36 = load %struct.drmres*, %struct.drmres** %tmp, align 8, !dbg !4335
  %node26 = getelementptr inbounds %struct.drmres, %struct.drmres* %36, i32 0, i32 0, !dbg !4335
  %entry27 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node26, i32 0, i32 0, !dbg !4335
  %next28 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry27, i32 0, i32 0, !dbg !4335
  %37 = load %struct.list_head*, %struct.list_head** %next28, align 8, !dbg !4335
  %38 = bitcast %struct.list_head* %37 to i8*, !dbg !4335
  store i8* %38, i8** %__mptr25, align 8, !dbg !4335
  br label %do.body29, !dbg !4335

do.body29:                                        ; preds = %for.inc
  br label %do.end30, !dbg !4336

do.end30:                                         ; preds = %do.body29
  %39 = load i8*, i8** %__mptr25, align 8, !dbg !4335
  %add.ptr32 = getelementptr i8, i8* %39, i64 0, !dbg !4335
  %40 = bitcast i8* %add.ptr32 to %struct.drmres*, !dbg !4335
  store %struct.drmres* %40, %struct.drmres** %tmp31, align 8, !dbg !4336
  %41 = load %struct.drmres*, %struct.drmres** %tmp31, align 8, !dbg !4335
  store %struct.drmres* %41, %struct.drmres** %tmp, align 8, !dbg !4307
  br label %for.cond, !dbg !4307, !llvm.loop !4338

for.end:                                          ; preds = %for.cond
  %42 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4340
  %dev33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 3, !dbg !4340
  %43 = load %struct.device*, %struct.device** %dev33, align 8, !dbg !4340
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %43, i32 512, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !4340
  ret void, !dbg !4341
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @drm_dev_dbg(%struct.device*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4342 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4348
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !4349
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4350
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4351
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4352
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4353
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4354
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4355
  ret void, !dbg !4356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_dr(%struct.drmres* %dr) #0 !dbg !4357 {
entry:
  %dr.addr = alloca %struct.drmres*, align 8
  store %struct.drmres* %dr, %struct.drmres** %dr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  %0 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4362
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %0, i32 0, i32 0, !dbg !4363
  %name = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 2, !dbg !4364
  %1 = load i8*, i8** %name, align 8, !dbg !4364
  call void @kfree_const(i8* %1) #7, !dbg !4365
  %2 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4366
  %3 = bitcast %struct.drmres* %2 to i8*, !dbg !4366
  call void @kfree(i8* %3) #7, !dbg !4367
  ret void, !dbg !4368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drmm_add_final_kfree(%struct.drm_device* %dev, i8* %container) #0 !dbg !4369 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %container.addr = alloca i8*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on20 = alloca i32, align 4
  %tmp43 = alloca i64, align 8
  %__ret_warn_on50 = alloca i32, align 4
  %tmp75 = alloca i64, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4370, metadata !DIExpression()), !dbg !4371
  store i8* %container, i8** %container.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %container.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4374, metadata !DIExpression()), !dbg !4376
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4376
  %managed = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 4, !dbg !4376
  %final_kfree = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed, i32 0, i32 1, !dbg !4376
  %1 = load i8*, i8** %final_kfree, align 8, !dbg !4376
  %tobool = icmp ne i8* %1, null, !dbg !4376
  %lnot = xor i1 %tobool, true, !dbg !4376
  %lnot1 = xor i1 %lnot, true, !dbg !4376
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4376
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4376
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4377
  %tobool2 = icmp ne i32 %2, 0, !dbg !4377
  %lnot3 = xor i1 %tobool2, true, !dbg !4377
  %lnot5 = xor i1 %lnot3, true, !dbg !4377
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4377
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4377
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4377
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4376

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4377

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !4379

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4381

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4379

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 130, i32 2305, i64 12) #6, !dbg !4383, !srcloc !4385
  br label %do.end10, !dbg !4383

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #6, !dbg !4386, !srcloc !4388
  br label %do.body11, !dbg !4379

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4389

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4379

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4379

if.end:                                           ; preds = %do.end13, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4376
  %tobool14 = icmp ne i32 %3, 0, !dbg !4376
  %lnot15 = xor i1 %tobool14, true, !dbg !4376
  %lnot17 = xor i1 %lnot15, true, !dbg !4376
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4376
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4376
  store i64 %conv19, i64* %tmp, align 8, !dbg !4377
  %4 = load i64, i64* %tmp, align 8, !dbg !4376
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on20, metadata !4391, metadata !DIExpression()), !dbg !4393
  %5 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4393
  %6 = load i8*, i8** %container.addr, align 8, !dbg !4393
  %7 = bitcast i8* %6 to %struct.drm_device*, !dbg !4393
  %cmp = icmp ult %struct.drm_device* %5, %7, !dbg !4393
  %lnot22 = xor i1 %cmp, true, !dbg !4393
  %lnot24 = xor i1 %lnot22, true, !dbg !4393
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4393
  store i32 %lnot.ext25, i32* %__ret_warn_on20, align 4, !dbg !4393
  %8 = load i32, i32* %__ret_warn_on20, align 4, !dbg !4394
  %tobool26 = icmp ne i32 %8, 0, !dbg !4394
  %lnot27 = xor i1 %tobool26, true, !dbg !4394
  %lnot29 = xor i1 %lnot27, true, !dbg !4394
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !4394
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !4394
  %tobool32 = icmp ne i64 %conv31, 0, !dbg !4394
  br i1 %tobool32, label %if.then33, label %if.end42, !dbg !4393

if.then33:                                        ; preds = %if.end
  br label %do.body34, !dbg !4394

do.body34:                                        ; preds = %if.then33
  br label %do.body35, !dbg !4396

do.body35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4398

do.end36:                                         ; preds = %do.body35
  br label %do.body37, !dbg !4396

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 131, i32 2305, i64 12) #6, !dbg !4400, !srcloc !4402
  br label %do.end38, !dbg !4400

do.end38:                                         ; preds = %do.body37
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 241) #6, !dbg !4403, !srcloc !4405
  br label %do.body39, !dbg !4396

do.body39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !4406

do.end40:                                         ; preds = %do.body39
  br label %do.end41, !dbg !4396

do.end41:                                         ; preds = %do.end40
  br label %if.end42, !dbg !4396

if.end42:                                         ; preds = %do.end41, %if.end
  %9 = load i32, i32* %__ret_warn_on20, align 4, !dbg !4393
  %tobool44 = icmp ne i32 %9, 0, !dbg !4393
  %lnot45 = xor i1 %tobool44, true, !dbg !4393
  %lnot47 = xor i1 %lnot45, true, !dbg !4393
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !4393
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !4393
  store i64 %conv49, i64* %tmp43, align 8, !dbg !4394
  %10 = load i64, i64* %tmp43, align 8, !dbg !4393
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on50, metadata !4408, metadata !DIExpression()), !dbg !4410
  %11 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4410
  %add.ptr = getelementptr %struct.drm_device, %struct.drm_device* %11, i64 1, !dbg !4410
  %12 = load i8*, i8** %container.addr, align 8, !dbg !4410
  %13 = load i8*, i8** %container.addr, align 8, !dbg !4410
  %call = call i64 @ksize(i8* %13) #7, !dbg !4410
  %add.ptr51 = getelementptr i8, i8* %12, i64 %call, !dbg !4410
  %14 = bitcast i8* %add.ptr51 to %struct.drm_device*, !dbg !4410
  %cmp52 = icmp ugt %struct.drm_device* %add.ptr, %14, !dbg !4410
  %lnot54 = xor i1 %cmp52, true, !dbg !4410
  %lnot56 = xor i1 %lnot54, true, !dbg !4410
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !4410
  store i32 %lnot.ext57, i32* %__ret_warn_on50, align 4, !dbg !4410
  %15 = load i32, i32* %__ret_warn_on50, align 4, !dbg !4411
  %tobool58 = icmp ne i32 %15, 0, !dbg !4411
  %lnot59 = xor i1 %tobool58, true, !dbg !4411
  %lnot61 = xor i1 %lnot59, true, !dbg !4411
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !4411
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !4411
  %tobool64 = icmp ne i64 %conv63, 0, !dbg !4411
  br i1 %tobool64, label %if.then65, label %if.end74, !dbg !4410

if.then65:                                        ; preds = %if.end42
  br label %do.body66, !dbg !4411

do.body66:                                        ; preds = %if.then65
  br label %do.body67, !dbg !4413

do.body67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !4415

do.end68:                                         ; preds = %do.body67
  br label %do.body69, !dbg !4413

do.body69:                                        ; preds = %do.end68
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 132, i32 2305, i64 12) #6, !dbg !4417, !srcloc !4419
  br label %do.end70, !dbg !4417

do.end70:                                         ; preds = %do.body69
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 242) #6, !dbg !4420, !srcloc !4422
  br label %do.body71, !dbg !4413

do.body71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !4423

do.end72:                                         ; preds = %do.body71
  br label %do.end73, !dbg !4413

do.end73:                                         ; preds = %do.end72
  br label %if.end74, !dbg !4413

if.end74:                                         ; preds = %do.end73, %if.end42
  %16 = load i32, i32* %__ret_warn_on50, align 4, !dbg !4410
  %tobool76 = icmp ne i32 %16, 0, !dbg !4410
  %lnot77 = xor i1 %tobool76, true, !dbg !4410
  %lnot79 = xor i1 %lnot77, true, !dbg !4410
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !4410
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !4410
  store i64 %conv81, i64* %tmp75, align 8, !dbg !4411
  %17 = load i64, i64* %tmp75, align 8, !dbg !4410
  %18 = load i8*, i8** %container.addr, align 8, !dbg !4425
  %19 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4426
  %managed82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 4, !dbg !4427
  %final_kfree83 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed82, i32 0, i32 1, !dbg !4428
  store i8* %18, i8** %final_kfree83, align 8, !dbg !4429
  ret void, !dbg !4430
}

; Function Attrs: noredzone
declare dso_local i64 @ksize(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__drmm_add_action(%struct.drm_device* %dev, void (%struct.drm_device*, i8*)* %action, i8* %data, i8* %name) #0 !dbg !4431 {
entry:
  %retval.i = alloca %struct.drmres*, align 8
  %release.addr.i = alloca void (%struct.drm_device*, i8*)*, align 8
  call void @llvm.dbg.declare(metadata void (%struct.drm_device*, i8*)** %release.addr.i, metadata !4434, metadata !DIExpression()), !dbg !4438
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4440, metadata !DIExpression()), !dbg !4441
  %gfp.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr.i, metadata !4442, metadata !DIExpression()), !dbg !4443
  %nid.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr.i, metadata !4444, metadata !DIExpression()), !dbg !4445
  %tot_size.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tot_size.i, metadata !4446, metadata !DIExpression()), !dbg !4447
  %dr.i = alloca %struct.drmres*, align 8
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr.i, metadata !4448, metadata !DIExpression()), !dbg !4449
  %__a.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__a.i, metadata !4450, metadata !DIExpression()), !dbg !4453
  %__b.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__b.i, metadata !4454, metadata !DIExpression()), !dbg !4453
  %__d.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__d.i, metadata !4455, metadata !DIExpression()), !dbg !4453
  %tmp.i = alloca i8, align 1
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.drm_device*, align 8
  %action.addr = alloca void (%struct.drm_device*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %dr = alloca %struct.drmres*, align 8
  %void_ptr = alloca i8**, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  store void (%struct.drm_device*, i8*)* %action, void (%struct.drm_device*, i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.drm_device*, i8*)** %action.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4461, metadata !DIExpression()), !dbg !4462
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4463, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.declare(metadata i8*** %void_ptr, metadata !4467, metadata !DIExpression()), !dbg !4468
  %0 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %action.addr, align 8, !dbg !4469
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4470
  %tobool = icmp ne i8* %1, null, !dbg !4470
  %2 = zext i1 %tobool to i64, !dbg !4470
  %cond = select i1 %tobool, i64 8, i64 0, !dbg !4470
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4471
  %dev1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 3, !dbg !4472
  %4 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !4472
  %call = call i32 @dev_to_node(%struct.device* %4) #7, !dbg !4473
  store void (%struct.drm_device*, i8*)* %0, void (%struct.drm_device*, i8*)** %release.addr.i, align 8
  store i64 %cond, i64* %size.addr.i, align 8
  store i32 3520, i32* %gfp.addr.i, align 4
  store i32 %call, i32* %nid.addr.i, align 4
  store i64 40, i64* %__a.i, align 8, !dbg !4453
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4453
  store i64 %5, i64* %__b.i, align 8, !dbg !4453
  store i64* %tot_size.i, i64** %__d.i, align 8, !dbg !4453
  %6 = load i64*, i64** %__d.i, align 8, !dbg !4453
  %cmp1.i = icmp eq i64* %__a.i, %6, !dbg !4453
  %conv2.i = zext i1 %cmp1.i to i32, !dbg !4453
  %7 = load i64, i64* %__a.i, align 8, !dbg !4453
  %8 = load i64, i64* %__b.i, align 8, !dbg !4453
  %9 = load i64*, i64** %__d.i, align 8, !dbg !4453
  %10 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %8) #6, !dbg !4453
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !4453
  %12 = extractvalue { i64, i1 } %10, 0, !dbg !4453
  store i64 %12, i64* %9, align 8, !dbg !4453
  %frombool.i = zext i1 %11 to i8, !dbg !4453
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4453
  %13 = load i8, i8* %tmp.i, align 1, !dbg !4453
  %tobool.i = trunc i8 %13 to i1, !dbg !4453
  %call.i = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool.i) #8, !dbg !4474
  %lnot.i = xor i1 %call.i, true, !dbg !4474
  %lnot.ext.i = zext i1 %call.i to i32, !dbg !4474
  %conv4.i = sext i32 %lnot.ext.i to i64, !dbg !4474
  br i1 %call.i, label %if.then.i, label %if.end.i, !dbg !4475

if.then.i:                                        ; preds = %entry
  store %struct.drmres* null, %struct.drmres** %retval.i, align 8, !dbg !4476
  br label %alloc_dr.exit, !dbg !4476

if.end.i:                                         ; preds = %entry
  %14 = load i64, i64* %tot_size.i, align 8, !dbg !4477
  %15 = load i32, i32* %gfp.addr.i, align 4, !dbg !4477
  %16 = call i8* @llvm.returnaddress(i32 0) #6, !dbg !4477
  %17 = ptrtoint i8* %16 to i64, !dbg !4477
  %call6.i = call i8* @__kmalloc_track_caller(i64 %14, i32 %15, i64 %17) #8, !dbg !4477
  %18 = bitcast i8* %call6.i to %struct.drmres*, !dbg !4477
  store %struct.drmres* %18, %struct.drmres** %dr.i, align 8, !dbg !4478
  %19 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4479
  %tobool7.i = icmp ne %struct.drmres* %19, null, !dbg !4479
  %lnot8.i = xor i1 %tobool7.i, true, !dbg !4479
  %lnot12.i = xor i1 %tobool7.i, true, !dbg !4479
  %lnot.ext13.i = zext i1 %lnot12.i to i32, !dbg !4479
  %conv14.i = sext i32 %lnot.ext13.i to i64, !dbg !4479
  br i1 %lnot12.i, label %if.then16.i, label %if.end17.i, !dbg !4481

if.then16.i:                                      ; preds = %if.end.i
  store %struct.drmres* null, %struct.drmres** %retval.i, align 8, !dbg !4482
  br label %alloc_dr.exit, !dbg !4482

if.end17.i:                                       ; preds = %if.end.i
  %20 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4483
  %21 = bitcast %struct.drmres* %20 to i8*, !dbg !4484
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false) #6, !dbg !4484
  %22 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4485
  %node.i = getelementptr inbounds %struct.drmres, %struct.drmres* %22, i32 0, i32 0, !dbg !4486
  %entry18.i = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node.i, i32 0, i32 0, !dbg !4487
  call void @INIT_LIST_HEAD(%struct.list_head* %entry18.i) #8, !dbg !4488
  %23 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %release.addr.i, align 8, !dbg !4489
  %24 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4490
  %node19.i = getelementptr inbounds %struct.drmres, %struct.drmres* %24, i32 0, i32 0, !dbg !4491
  %release20.i = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node19.i, i32 0, i32 1, !dbg !4492
  store void (%struct.drm_device*, i8*)* %23, void (%struct.drm_device*, i8*)** %release20.i, align 8, !dbg !4493
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !4494
  %26 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4495
  %node21.i = getelementptr inbounds %struct.drmres, %struct.drmres* %26, i32 0, i32 0, !dbg !4496
  %size22.i = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node21.i, i32 0, i32 3, !dbg !4497
  store i64 %25, i64* %size22.i, align 8, !dbg !4498
  %27 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4499
  store %struct.drmres* %27, %struct.drmres** %retval.i, align 8, !dbg !4500
  br label %alloc_dr.exit, !dbg !4500

alloc_dr.exit:                                    ; preds = %if.then.i, %if.then16.i, %if.end17.i
  %28 = load %struct.drmres*, %struct.drmres** %retval.i, align 8, !dbg !4501
  store %struct.drmres* %28, %struct.drmres** %dr, align 8, !dbg !4502
  %29 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4503
  %tobool3 = icmp ne %struct.drmres* %29, null, !dbg !4503
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4505

if.then:                                          ; preds = %alloc_dr.exit
  %30 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4506
  %dev4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 3, !dbg !4506
  %31 = load %struct.device*, %struct.device** %dev4, align 8, !dbg !4506
  %32 = load i8*, i8** %name.addr, align 8, !dbg !4506
  %33 = load i8*, i8** %data.addr, align 8, !dbg !4506
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %31, i32 512, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %32, i8* %33) #7, !dbg !4506
  store i32 -12, i32* %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

if.end:                                           ; preds = %alloc_dr.exit
  %34 = load i8*, i8** %name.addr, align 8, !dbg !4509
  %call5 = call i8* @kstrdup_const(i8* %34, i32 3264) #7, !dbg !4510
  %35 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4511
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %35, i32 0, i32 0, !dbg !4512
  %name6 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 2, !dbg !4513
  store i8* %call5, i8** %name6, align 8, !dbg !4514
  %36 = load i8*, i8** %data.addr, align 8, !dbg !4515
  %tobool7 = icmp ne i8* %36, null, !dbg !4515
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4517

if.then8:                                         ; preds = %if.end
  %37 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4518
  %data9 = getelementptr inbounds %struct.drmres, %struct.drmres* %37, i32 0, i32 1, !dbg !4520
  %38 = bitcast [0 x i8]* %data9 to i8**, !dbg !4521
  store i8** %38, i8*** %void_ptr, align 8, !dbg !4522
  %39 = load i8*, i8** %data.addr, align 8, !dbg !4523
  %40 = load i8**, i8*** %void_ptr, align 8, !dbg !4524
  store i8* %39, i8** %40, align 8, !dbg !4525
  br label %if.end10, !dbg !4526

if.end10:                                         ; preds = %if.then8, %if.end
  %41 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4527
  %42 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4528
  call void @add_dr(%struct.drm_device* %41, %struct.drmres* %42) #7, !dbg !4529
  store i32 0, i32* %retval, align 4, !dbg !4530
  br label %return, !dbg !4530

return:                                           ; preds = %if.end10, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !4531
  ret i32 %43, !dbg !4531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_to_node(%struct.device* %dev) #0 !dbg !4532 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4533, metadata !DIExpression()), !dbg !4534
  ret i32 -1, !dbg !4535
}

; Function Attrs: noredzone
declare dso_local i8* @kstrdup_const(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_dr(%struct.drm_device* %dev, %struct.drmres* %dr) #0 !dbg !4536 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !4539, metadata !DIExpression()), !dbg !4544
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4546, metadata !DIExpression()), !dbg !4547
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4548, metadata !DIExpression()), !dbg !4553
  %dev.addr = alloca %struct.drm_device*, align 8
  %dr.addr = alloca %struct.drmres*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  store %struct.drmres* %dr, %struct.drmres** %dr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4564, metadata !DIExpression()), !dbg !4565
  br label %do.body, !dbg !4566

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4567

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4568, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4571, metadata !DIExpression()), !dbg !4570
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4570
  %conv = zext i1 %cmp to i32, !dbg !4570
  store i32 1, i32* %tmp, align 4, !dbg !4570
  %0 = load i32, i32* %tmp, align 4, !dbg !4570
  br label %do.body2, !dbg !4572

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4573

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4574

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4576, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4580, metadata !DIExpression()), !dbg !4579
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4579
  %conv8 = zext i1 %cmp7 to i32, !dbg !4579
  store i32 1, i32* %tmp9, align 4, !dbg !4579
  %1 = load i32, i32* %tmp9, align 4, !dbg !4579
  %call = call i64 @arch_local_irq_save() #7, !dbg !4581
  store i64 %call, i64* %flags, align 8, !dbg !4581
  br label %do.end, !dbg !4581

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4574

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4573

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4582, !srcloc !4583
  br label %do.body12, !dbg !4582

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4584
  %managed = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 4, !dbg !4584
  %lock = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed, i32 0, i32 2, !dbg !4584
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4585
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4586
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !4586
  br label %do.end14, !dbg !4584

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4582

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4573

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4572

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4567

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4587
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %5, i32 0, i32 0, !dbg !4588
  %entry19 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 0, !dbg !4589
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4590
  %managed20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 4, !dbg !4591
  %resources = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed20, i32 0, i32 0, !dbg !4592
  call void @list_add(%struct.list_head* %entry19, %struct.list_head* %resources) #7, !dbg !4593
  %7 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4594
  %managed21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 4, !dbg !4595
  %lock22 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed21, i32 0, i32 2, !dbg !4596
  %8 = load i64, i64* %flags, align 8, !dbg !4597
  store %struct.spinlock* %lock22, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %8, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !244, metadata !4598, metadata !DIExpression()) #6, !dbg !4601
  call void @llvm.dbg.declare(metadata !244, metadata !4602, metadata !DIExpression()) #6, !dbg !4601
  store i32 1, i32* %tmp.i, align 4, !dbg !4601
  %9 = load i32, i32* %tmp.i, align 4, !dbg !4601
  call void @llvm.dbg.declare(metadata !244, metadata !4603, metadata !DIExpression()) #6, !dbg !4608
  call void @llvm.dbg.declare(metadata !244, metadata !4609, metadata !DIExpression()) #6, !dbg !4608
  store i32 1, i32* %tmp8.i, align 4, !dbg !4608
  %10 = load i32, i32* %tmp8.i, align 4, !dbg !4608
  %11 = load i64, i64* %flags.addr.i, align 8, !dbg !4610
  call void @arch_local_irq_restore(i64 %11) #8, !dbg !4610
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4611, !srcloc !4613
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !4614
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4614
  %rlock.i27 = bitcast %union.anon.1* %13 to %struct.raw_spinlock*, !dbg !4614
  %14 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4616
  %dev23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 3, !dbg !4616
  %15 = load %struct.device*, %struct.device** %dev23, align 8, !dbg !4616
  %16 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4616
  %17 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4616
  %node24 = getelementptr inbounds %struct.drmres, %struct.drmres* %17, i32 0, i32 0, !dbg !4616
  %name = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node24, i32 0, i32 2, !dbg !4616
  %18 = load i8*, i8** %name, align 8, !dbg !4616
  %19 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4616
  %node25 = getelementptr inbounds %struct.drmres, %struct.drmres* %19, i32 0, i32 0, !dbg !4616
  %size = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node25, i32 0, i32 3, !dbg !4616
  %20 = load i64, i64* %size, align 8, !dbg !4616
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %15, i32 512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), %struct.drmres* %16, i8* %18, i64 %20) #7, !dbg !4616
  ret void, !dbg !4617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__drmm_add_action_or_reset(%struct.drm_device* %dev, void (%struct.drm_device*, i8*)* %action, i8* %data, i8* %name) #0 !dbg !4618 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %action.addr = alloca void (%struct.drm_device*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  store void (%struct.drm_device*, i8*)* %action, void (%struct.drm_device*, i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.drm_device*, i8*)** %action.addr, metadata !4621, metadata !DIExpression()), !dbg !4622
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4627, metadata !DIExpression()), !dbg !4628
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4629
  %1 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %action.addr, align 8, !dbg !4630
  %2 = load i8*, i8** %data.addr, align 8, !dbg !4631
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4632
  %call = call i32 @__drmm_add_action(%struct.drm_device* %0, void (%struct.drm_device*, i8*)* %1, i8* %2, i8* %3) #7, !dbg !4633
  store i32 %call, i32* %ret, align 4, !dbg !4634
  %4 = load i32, i32* %ret, align 4, !dbg !4635
  %tobool = icmp ne i32 %4, 0, !dbg !4635
  br i1 %tobool, label %if.then, label %if.end, !dbg !4637

if.then:                                          ; preds = %entry
  %5 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %action.addr, align 8, !dbg !4638
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4639
  %7 = load i8*, i8** %data.addr, align 8, !dbg !4640
  call void %5(%struct.drm_device* %6, i8* %7) #7, !dbg !4638
  br label %if.end, !dbg !4638

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %ret, align 4, !dbg !4641
  ret i32 %8, !dbg !4642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local noalias i8* @drmm_kmalloc(%struct.drm_device* %dev, i64 %size, i32 %gfp) #0 !dbg !4643 {
entry:
  %retval.i = alloca %struct.drmres*, align 8
  %release.addr.i = alloca void (%struct.drm_device*, i8*)*, align 8
  call void @llvm.dbg.declare(metadata void (%struct.drm_device*, i8*)** %release.addr.i, metadata !4434, metadata !DIExpression()), !dbg !4646
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4440, metadata !DIExpression()), !dbg !4648
  %gfp.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr.i, metadata !4442, metadata !DIExpression()), !dbg !4649
  %nid.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr.i, metadata !4444, metadata !DIExpression()), !dbg !4650
  %tot_size.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tot_size.i, metadata !4446, metadata !DIExpression()), !dbg !4651
  %dr.i = alloca %struct.drmres*, align 8
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr.i, metadata !4448, metadata !DIExpression()), !dbg !4652
  %__a.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__a.i, metadata !4450, metadata !DIExpression()), !dbg !4653
  %__b.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__b.i, metadata !4454, metadata !DIExpression()), !dbg !4653
  %__d.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__d.i, metadata !4455, metadata !DIExpression()), !dbg !4653
  %tmp.i = alloca i8, align 1
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.drm_device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %dr = alloca %struct.drmres*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr, metadata !4660, metadata !DIExpression()), !dbg !4661
  %0 = load i64, i64* %size.addr, align 8, !dbg !4662
  %1 = load i32, i32* %gfp.addr, align 4, !dbg !4663
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4664
  %dev1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 3, !dbg !4665
  %3 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !4665
  %call = call i32 @dev_to_node(%struct.device* %3) #7, !dbg !4666
  store void (%struct.drm_device*, i8*)* null, void (%struct.drm_device*, i8*)** %release.addr.i, align 8
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %1, i32* %gfp.addr.i, align 4
  store i32 %call, i32* %nid.addr.i, align 4
  store i64 40, i64* %__a.i, align 8, !dbg !4653
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4653
  store i64 %4, i64* %__b.i, align 8, !dbg !4653
  store i64* %tot_size.i, i64** %__d.i, align 8, !dbg !4653
  %5 = load i64*, i64** %__d.i, align 8, !dbg !4653
  %cmp1.i = icmp eq i64* %__a.i, %5, !dbg !4653
  %conv2.i = zext i1 %cmp1.i to i32, !dbg !4653
  %6 = load i64, i64* %__a.i, align 8, !dbg !4653
  %7 = load i64, i64* %__b.i, align 8, !dbg !4653
  %8 = load i64*, i64** %__d.i, align 8, !dbg !4653
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %7) #6, !dbg !4653
  %10 = extractvalue { i64, i1 } %9, 1, !dbg !4653
  %11 = extractvalue { i64, i1 } %9, 0, !dbg !4653
  store i64 %11, i64* %8, align 8, !dbg !4653
  %frombool.i = zext i1 %10 to i8, !dbg !4653
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4653
  %12 = load i8, i8* %tmp.i, align 1, !dbg !4653
  %tobool.i = trunc i8 %12 to i1, !dbg !4653
  %call.i = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool.i) #8, !dbg !4667
  %lnot.i = xor i1 %call.i, true, !dbg !4667
  %lnot.ext.i = zext i1 %call.i to i32, !dbg !4667
  %conv4.i = sext i32 %lnot.ext.i to i64, !dbg !4667
  br i1 %call.i, label %if.then.i, label %if.end.i, !dbg !4668

if.then.i:                                        ; preds = %entry
  store %struct.drmres* null, %struct.drmres** %retval.i, align 8, !dbg !4669
  br label %alloc_dr.exit, !dbg !4669

if.end.i:                                         ; preds = %entry
  %13 = load i64, i64* %tot_size.i, align 8, !dbg !4670
  %14 = load i32, i32* %gfp.addr.i, align 4, !dbg !4670
  %15 = call i8* @llvm.returnaddress(i32 0) #6, !dbg !4670
  %16 = ptrtoint i8* %15 to i64, !dbg !4670
  %call6.i = call i8* @__kmalloc_track_caller(i64 %13, i32 %14, i64 %16) #8, !dbg !4670
  %17 = bitcast i8* %call6.i to %struct.drmres*, !dbg !4670
  store %struct.drmres* %17, %struct.drmres** %dr.i, align 8, !dbg !4671
  %18 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4672
  %tobool7.i = icmp ne %struct.drmres* %18, null, !dbg !4672
  %lnot8.i = xor i1 %tobool7.i, true, !dbg !4672
  %lnot12.i = xor i1 %tobool7.i, true, !dbg !4672
  %lnot.ext13.i = zext i1 %lnot12.i to i32, !dbg !4672
  %conv14.i = sext i32 %lnot.ext13.i to i64, !dbg !4672
  br i1 %lnot12.i, label %if.then16.i, label %if.end17.i, !dbg !4673

if.then16.i:                                      ; preds = %if.end.i
  store %struct.drmres* null, %struct.drmres** %retval.i, align 8, !dbg !4674
  br label %alloc_dr.exit, !dbg !4674

if.end17.i:                                       ; preds = %if.end.i
  %19 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4675
  %20 = bitcast %struct.drmres* %19 to i8*, !dbg !4676
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false) #6, !dbg !4676
  %21 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4677
  %node.i = getelementptr inbounds %struct.drmres, %struct.drmres* %21, i32 0, i32 0, !dbg !4678
  %entry18.i = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node.i, i32 0, i32 0, !dbg !4679
  call void @INIT_LIST_HEAD(%struct.list_head* %entry18.i) #8, !dbg !4680
  %22 = load void (%struct.drm_device*, i8*)*, void (%struct.drm_device*, i8*)** %release.addr.i, align 8, !dbg !4681
  %23 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4682
  %node19.i = getelementptr inbounds %struct.drmres, %struct.drmres* %23, i32 0, i32 0, !dbg !4683
  %release20.i = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node19.i, i32 0, i32 1, !dbg !4684
  store void (%struct.drm_device*, i8*)* %22, void (%struct.drm_device*, i8*)** %release20.i, align 8, !dbg !4685
  %24 = load i64, i64* %size.addr.i, align 8, !dbg !4686
  %25 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4687
  %node21.i = getelementptr inbounds %struct.drmres, %struct.drmres* %25, i32 0, i32 0, !dbg !4688
  %size22.i = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node21.i, i32 0, i32 3, !dbg !4689
  store i64 %24, i64* %size22.i, align 8, !dbg !4690
  %26 = load %struct.drmres*, %struct.drmres** %dr.i, align 8, !dbg !4691
  store %struct.drmres* %26, %struct.drmres** %retval.i, align 8, !dbg !4692
  br label %alloc_dr.exit, !dbg !4692

alloc_dr.exit:                                    ; preds = %if.then.i, %if.then16.i, %if.end17.i
  %27 = load %struct.drmres*, %struct.drmres** %retval.i, align 8, !dbg !4693
  store %struct.drmres* %27, %struct.drmres** %dr, align 8, !dbg !4694
  %28 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4695
  %tobool = icmp ne %struct.drmres* %28, null, !dbg !4695
  br i1 %tobool, label %if.end, label %if.then, !dbg !4697

if.then:                                          ; preds = %alloc_dr.exit
  %29 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4698
  %dev3 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 3, !dbg !4698
  %30 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !4698
  %31 = load i64, i64* %size.addr, align 8, !dbg !4698
  %32 = load i32, i32* %gfp.addr, align 4, !dbg !4698
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %30, i32 512, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %31, i32 %32) #7, !dbg !4698
  store i8* null, i8** %retval, align 8, !dbg !4700
  br label %return, !dbg !4700

if.end:                                           ; preds = %alloc_dr.exit
  %call4 = call i8* @kstrdup_const(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 3264) #7, !dbg !4701
  %33 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4702
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %33, i32 0, i32 0, !dbg !4703
  %name = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 2, !dbg !4704
  store i8* %call4, i8** %name, align 8, !dbg !4705
  %34 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4706
  %35 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4707
  call void @add_dr(%struct.drm_device* %34, %struct.drmres* %35) #7, !dbg !4708
  %36 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4709
  %data = getelementptr inbounds %struct.drmres, %struct.drmres* %36, i32 0, i32 1, !dbg !4710
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !4709
  store i8* %arraydecay, i8** %retval, align 8, !dbg !4711
  br label %return, !dbg !4711

return:                                           ; preds = %if.end, %if.then
  %37 = load i8*, i8** %retval, align 8, !dbg !4712
  ret i8* %37, !dbg !4712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @drmm_kstrdup(%struct.drm_device* %dev, i8* %s, i32 %gfp) #0 !dbg !4713 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.drm_device*, align 8
  %s.addr = alloca i8*, align 8
  %gfp.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4720, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4722, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4724, metadata !DIExpression()), !dbg !4725
  %0 = load i8*, i8** %s.addr, align 8, !dbg !4726
  %tobool = icmp ne i8* %0, null, !dbg !4726
  br i1 %tobool, label %if.end, label %if.then, !dbg !4728

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4729
  br label %return, !dbg !4729

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8, !dbg !4730
  %call = call i64 @strlen(i8* %1) #7, !dbg !4731
  %add = add i64 %call, 1, !dbg !4732
  store i64 %add, i64* %size, align 8, !dbg !4733
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4734
  %3 = load i64, i64* %size, align 8, !dbg !4735
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !4736
  %call1 = call noalias i8* @drmm_kmalloc(%struct.drm_device* %2, i64 %3, i32 %4) #7, !dbg !4737
  store i8* %call1, i8** %buf, align 8, !dbg !4738
  %5 = load i8*, i8** %buf, align 8, !dbg !4739
  %tobool2 = icmp ne i8* %5, null, !dbg !4739
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4741

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %buf, align 8, !dbg !4742
  %7 = load i8*, i8** %s.addr, align 8, !dbg !4743
  %8 = load i64, i64* %size, align 8, !dbg !4744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4745
  br label %if.end4, !dbg !4745

if.end4:                                          ; preds = %if.then3, %if.end
  %9 = load i8*, i8** %buf, align 8, !dbg !4746
  store i8* %9, i8** %retval, align 8, !dbg !4747
  br label %return, !dbg !4747

return:                                           ; preds = %if.end4, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !4748
  ret i8* %10, !dbg !4748
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drmm_kfree(%struct.drm_device* %dev, i8* %data) #0 !dbg !4749 {
entry:
  %lock.addr.i74 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i74, metadata !4539, metadata !DIExpression()), !dbg !4750
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4546, metadata !DIExpression()), !dbg !4752
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4548, metadata !DIExpression()), !dbg !4753
  %dev.addr = alloca %struct.drm_device*, align 8
  %data.addr = alloca i8*, align 8
  %dr_match = alloca %struct.drmres*, align 8
  %dr = alloca %struct.drmres*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.drmres*, align 8
  %__mptr33 = alloca i8*, align 8
  %tmp39 = alloca %struct.drmres*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp64 = alloca i64, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr_match, metadata !4764, metadata !DIExpression()), !dbg !4765
  store %struct.drmres* null, %struct.drmres** %dr_match, align 8, !dbg !4765
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4768, metadata !DIExpression()), !dbg !4769
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4770
  %tobool = icmp ne i8* %0, null, !dbg !4770
  br i1 %tobool, label %if.end, label %if.then, !dbg !4772

if.then:                                          ; preds = %entry
  br label %return, !dbg !4773

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4774

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4775

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4776, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4779, metadata !DIExpression()), !dbg !4778
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4778
  %conv = zext i1 %cmp to i32, !dbg !4778
  store i32 1, i32* %tmp, align 4, !dbg !4778
  %1 = load i32, i32* %tmp, align 4, !dbg !4778
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
  %2 = load i32, i32* %tmp9, align 4, !dbg !4787
  %call = call i64 @arch_local_irq_save() #7, !dbg !4789
  store i64 %call, i64* %flags, align 8, !dbg !4789
  br label %do.end, !dbg !4789

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4782

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4781

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4790, !srcloc !4791
  br label %do.body12, !dbg !4790

do.body12:                                        ; preds = %do.body11
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4792
  %managed = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 4, !dbg !4792
  %lock = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed, i32 0, i32 2, !dbg !4792
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4793
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4794
  %rlock.i = bitcast %union.anon.1* %5 to %struct.raw_spinlock*, !dbg !4794
  br label %do.end14, !dbg !4792

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4790

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4781

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4780

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4775

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4795, metadata !DIExpression()), !dbg !4798
  %6 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4798
  %managed19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 4, !dbg !4798
  %resources = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed19, i32 0, i32 0, !dbg !4798
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4798
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4798
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4798
  store i8* %8, i8** %__mptr, align 8, !dbg !4798
  br label %do.body20, !dbg !4798

do.body20:                                        ; preds = %do.end18
  br label %do.end21, !dbg !4799

do.end21:                                         ; preds = %do.body20
  %9 = load i8*, i8** %__mptr, align 8, !dbg !4798
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !4798
  %10 = bitcast i8* %add.ptr to %struct.drmres*, !dbg !4798
  store %struct.drmres* %10, %struct.drmres** %tmp22, align 8, !dbg !4799
  %11 = load %struct.drmres*, %struct.drmres** %tmp22, align 8, !dbg !4798
  store %struct.drmres* %11, %struct.drmres** %dr, align 8, !dbg !4801
  br label %for.cond, !dbg !4801

for.cond:                                         ; preds = %do.end38, %do.end21
  %12 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4802
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %12, i32 0, i32 0, !dbg !4802
  %entry23 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 0, !dbg !4802
  %13 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4802
  %managed24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 4, !dbg !4802
  %resources25 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed24, i32 0, i32 0, !dbg !4802
  %cmp26 = icmp eq %struct.list_head* %entry23, %resources25, !dbg !4802
  %lnot = xor i1 %cmp26, true, !dbg !4802
  br i1 %lnot, label %for.body, label %for.end, !dbg !4801

for.body:                                         ; preds = %for.cond
  %14 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4804
  %data28 = getelementptr inbounds %struct.drmres, %struct.drmres* %14, i32 0, i32 1, !dbg !4807
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data28, i64 0, i64 0, !dbg !4804
  %15 = load i8*, i8** %data.addr, align 8, !dbg !4808
  %cmp29 = icmp eq i8* %arraydecay, %15, !dbg !4809
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4810

if.then31:                                        ; preds = %for.body
  %16 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4811
  store %struct.drmres* %16, %struct.drmres** %dr_match, align 8, !dbg !4813
  %17 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4814
  %18 = load %struct.drmres*, %struct.drmres** %dr_match, align 8, !dbg !4815
  call void @del_dr(%struct.drm_device* %17, %struct.drmres* %18) #7, !dbg !4816
  br label %for.end, !dbg !4817

if.end32:                                         ; preds = %for.body
  br label %for.inc, !dbg !4818

for.inc:                                          ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i8** %__mptr33, metadata !4819, metadata !DIExpression()), !dbg !4821
  %19 = load %struct.drmres*, %struct.drmres** %dr, align 8, !dbg !4821
  %node34 = getelementptr inbounds %struct.drmres, %struct.drmres* %19, i32 0, i32 0, !dbg !4821
  %entry35 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node34, i32 0, i32 0, !dbg !4821
  %next36 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry35, i32 0, i32 0, !dbg !4821
  %20 = load %struct.list_head*, %struct.list_head** %next36, align 8, !dbg !4821
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !4821
  store i8* %21, i8** %__mptr33, align 8, !dbg !4821
  br label %do.body37, !dbg !4821

do.body37:                                        ; preds = %for.inc
  br label %do.end38, !dbg !4822

do.end38:                                         ; preds = %do.body37
  %22 = load i8*, i8** %__mptr33, align 8, !dbg !4821
  %add.ptr40 = getelementptr i8, i8* %22, i64 0, !dbg !4821
  %23 = bitcast i8* %add.ptr40 to %struct.drmres*, !dbg !4821
  store %struct.drmres* %23, %struct.drmres** %tmp39, align 8, !dbg !4822
  %24 = load %struct.drmres*, %struct.drmres** %tmp39, align 8, !dbg !4821
  store %struct.drmres* %24, %struct.drmres** %dr, align 8, !dbg !4802
  br label %for.cond, !dbg !4802, !llvm.loop !4824

for.end:                                          ; preds = %if.then31, %for.cond
  %25 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4826
  %managed41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 4, !dbg !4827
  %lock42 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %managed41, i32 0, i32 2, !dbg !4828
  %26 = load i64, i64* %flags, align 8, !dbg !4829
  store %struct.spinlock* %lock42, %struct.spinlock** %lock.addr.i74, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !244, metadata !4598, metadata !DIExpression()) #6, !dbg !4830
  call void @llvm.dbg.declare(metadata !244, metadata !4602, metadata !DIExpression()) #6, !dbg !4830
  store i32 1, i32* %tmp.i, align 4, !dbg !4830
  %27 = load i32, i32* %tmp.i, align 4, !dbg !4830
  call void @llvm.dbg.declare(metadata !244, metadata !4603, metadata !DIExpression()) #6, !dbg !4831
  call void @llvm.dbg.declare(metadata !244, metadata !4609, metadata !DIExpression()) #6, !dbg !4831
  store i32 1, i32* %tmp8.i, align 4, !dbg !4831
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !4831
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !4832
  call void @arch_local_irq_restore(i64 %29) #8, !dbg !4832
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4833, !srcloc !4613
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i74, align 8, !dbg !4834
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !4834
  %rlock.i75 = bitcast %union.anon.1* %31 to %struct.raw_spinlock*, !dbg !4834
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4835, metadata !DIExpression()), !dbg !4838
  %32 = load %struct.drmres*, %struct.drmres** %dr_match, align 8, !dbg !4838
  %tobool43 = icmp ne %struct.drmres* %32, null, !dbg !4838
  %lnot44 = xor i1 %tobool43, true, !dbg !4838
  %lnot45 = xor i1 %lnot44, true, !dbg !4838
  %lnot46 = xor i1 %lnot45, true, !dbg !4838
  %lnot.ext = zext i1 %lnot46 to i32, !dbg !4838
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4838
  %33 = load i32, i32* %__ret_warn_on, align 4, !dbg !4839
  %tobool47 = icmp ne i32 %33, 0, !dbg !4839
  %lnot48 = xor i1 %tobool47, true, !dbg !4839
  %lnot50 = xor i1 %lnot48, true, !dbg !4839
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !4839
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !4839
  %tobool53 = icmp ne i64 %conv52, 0, !dbg !4839
  br i1 %tobool53, label %if.then54, label %if.end63, !dbg !4838

if.then54:                                        ; preds = %for.end
  br label %do.body55, !dbg !4839

do.body55:                                        ; preds = %if.then54
  br label %do.body56, !dbg !4841

do.body56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !4843

do.end57:                                         ; preds = %do.body56
  br label %do.body58, !dbg !4841

do.body58:                                        ; preds = %do.end57
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 259, i32 2305, i64 12) #6, !dbg !4845, !srcloc !4847
  br label %do.end59, !dbg !4845

do.end59:                                         ; preds = %do.body58
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 245) #6, !dbg !4848, !srcloc !4850
  br label %do.body60, !dbg !4841

do.body60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !4851

do.end61:                                         ; preds = %do.body60
  br label %do.end62, !dbg !4841

do.end62:                                         ; preds = %do.end61
  br label %if.end63, !dbg !4841

if.end63:                                         ; preds = %do.end62, %for.end
  %34 = load i32, i32* %__ret_warn_on, align 4, !dbg !4838
  %tobool65 = icmp ne i32 %34, 0, !dbg !4838
  %lnot66 = xor i1 %tobool65, true, !dbg !4838
  %lnot68 = xor i1 %lnot66, true, !dbg !4838
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !4838
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !4838
  store i64 %conv70, i64* %tmp64, align 8, !dbg !4839
  %35 = load i64, i64* %tmp64, align 8, !dbg !4838
  %tobool71 = icmp ne i64 %35, 0, !dbg !4853
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4854

if.then72:                                        ; preds = %if.end63
  br label %return, !dbg !4855

if.end73:                                         ; preds = %if.end63
  %36 = load %struct.drmres*, %struct.drmres** %dr_match, align 8, !dbg !4856
  call void @free_dr(%struct.drmres* %36) #7, !dbg !4857
  br label %return, !dbg !4858

return:                                           ; preds = %if.end73, %if.then72, %if.then
  ret void, !dbg !4858
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4859 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4863, metadata !DIExpression()), !dbg !4864
  %call = call i64 @arch_local_save_flags() #7, !dbg !4865
  store i64 %call, i64* %f, align 8, !dbg !4866
  call void @arch_local_irq_disable() #7, !dbg !4867
  %0 = load i64, i64* %f, align 8, !dbg !4868
  ret i64 %0, !dbg !4869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @del_dr(%struct.drm_device* %dev, %struct.drmres* %dr) #0 !dbg !4870 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %dr.addr = alloca %struct.drmres*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  store %struct.drmres* %dr, %struct.drmres** %dr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drmres** %dr.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4875
  %node = getelementptr inbounds %struct.drmres, %struct.drmres* %0, i32 0, i32 0, !dbg !4876
  %entry1 = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node, i32 0, i32 0, !dbg !4877
  call void @list_del_init(%struct.list_head* %entry1) #7, !dbg !4878
  %1 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !4879
  %dev2 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %1, i32 0, i32 3, !dbg !4879
  %2 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !4879
  %3 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4879
  %4 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4879
  %node3 = getelementptr inbounds %struct.drmres, %struct.drmres* %4, i32 0, i32 0, !dbg !4879
  %name = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node3, i32 0, i32 2, !dbg !4879
  %5 = load i8*, i8** %name, align 8, !dbg !4879
  %6 = load %struct.drmres*, %struct.drmres** %dr.addr, align 8, !dbg !4879
  %node4 = getelementptr inbounds %struct.drmres, %struct.drmres* %6, i32 0, i32 0, !dbg !4879
  %size = getelementptr inbounds %struct.drmres_node, %struct.drmres_node* %node4, i32 0, i32 3, !dbg !4879
  %7 = load i64, i64* %size, align 8, !dbg !4879
  call void (%struct.device*, i32, i8*, ...) @drm_dev_dbg(%struct.device* %2, i32 512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), %struct.drmres* %3, i8* %5, i64 %7) #7, !dbg !4879
  ret void, !dbg !4880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4881 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4884
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !4886
  br i1 %call, label %if.end, label %if.then, !dbg !4887

if.then:                                          ; preds = %entry
  br label %return, !dbg !4888

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4889
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4890
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4890
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4891
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4892
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4892
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !4893
  br label %return, !dbg !4894

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4895 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  ret i1 true, !dbg !4900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4901 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4908
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4909
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4910
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4911
  br label %do.body, !dbg !4912

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4913

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4915

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4913

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4917
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4917
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4917
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4917
  br label %do.end5, !dbg !4917

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4913

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4919
}

; Function Attrs: noredzone
declare dso_local void @kfree_const(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4920 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4926
  %tobool = trunc i8 %0 to i1, !dbg !4926
  %lnot = xor i1 %tobool, true, !dbg !4926
  %lnot1 = xor i1 %lnot, true, !dbg !4926
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4926
  %conv = sext i32 %lnot.ext to i64, !dbg !4926
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4926
  ret i1 %tobool2, !dbg !4927
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local i8* @__kmalloc_track_caller(i64, i32, i64) #2

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32 immarg) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4928 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  br label %do.body, !dbg !4931

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4932

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4934

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4932

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4936
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4936
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4936
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4936
  br label %do.end3, !dbg !4936

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4932

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4938
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4939
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4940
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4941
  ret void, !dbg !4942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4943 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4948
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4949
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4950
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4951
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4951
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #7, !dbg !4952
  ret void, !dbg !4953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4954 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4963
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4965
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4966
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !4967
  br i1 %call, label %if.end, label %if.then, !dbg !4968

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4969

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4970
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4971
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4972
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4973
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4974
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4975
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4976
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4977
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4978
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4979
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4980
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4981
  br label %do.body, !dbg !4982

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4983

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4985

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4983

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4987
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4987
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4987
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4987
  br label %do.end7, !dbg !4987

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4983

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4990 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  ret i1 true, !dbg !4999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5000 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5001, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5004, metadata !DIExpression()), !dbg !5003
  %0 = load i64, i64* %__edi, align 8, !dbg !5003
  store i64 %0, i64* %__edi, align 8, !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5005, metadata !DIExpression()), !dbg !5003
  %1 = load i64, i64* %__esi, align 8, !dbg !5003
  store i64 %1, i64* %__esi, align 8, !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5006, metadata !DIExpression()), !dbg !5003
  %2 = load i64, i64* %__edx, align 8, !dbg !5003
  store i64 %2, i64* %__edx, align 8, !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5007, metadata !DIExpression()), !dbg !5003
  %3 = load i64, i64* %__ecx, align 8, !dbg !5003
  store i64 %3, i64* %__ecx, align 8, !dbg !5003
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5008, metadata !DIExpression()), !dbg !5003
  %4 = load i64, i64* %__eax, align 8, !dbg !5003
  store i64 %4, i64* %__eax, align 8, !dbg !5003
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5003
  %6 = call i64 @llvm.read_register.i64(metadata !4281), !dbg !5009
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5009, !srcloc !5012
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5009
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5009
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5009
  call void @llvm.write_register.i64(metadata !4281, i64 %asmresult1), !dbg !5009
  %8 = load i64, i64* %__eax, align 8, !dbg !5009
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5013, metadata !DIExpression()), !dbg !5015
  store i64 -1, i64* %__mask, align 8, !dbg !5015
  %9 = load i64, i64* %__mask, align 8, !dbg !5015
  store i64 %9, i64* %tmp, align 8, !dbg !5015
  %10 = load i64, i64* %tmp, align 8, !dbg !5015
  %and = and i64 %8, %10, !dbg !5009
  store i64 %and, i64* %__ret, align 8, !dbg !5009
  %11 = load i64, i64* %__ret, align 8, !dbg !5003
  store i64 %11, i64* %tmp2, align 8, !dbg !5016
  %12 = load i64, i64* %tmp2, align 8, !dbg !5003
  ret i64 %12, !dbg !5017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5018 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5019, metadata !DIExpression()), !dbg !5021
  %0 = load i64, i64* %__edi, align 8, !dbg !5021
  store i64 %0, i64* %__edi, align 8, !dbg !5021
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5022, metadata !DIExpression()), !dbg !5021
  %1 = load i64, i64* %__esi, align 8, !dbg !5021
  store i64 %1, i64* %__esi, align 8, !dbg !5021
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5023, metadata !DIExpression()), !dbg !5021
  %2 = load i64, i64* %__edx, align 8, !dbg !5021
  store i64 %2, i64* %__edx, align 8, !dbg !5021
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5024, metadata !DIExpression()), !dbg !5021
  %3 = load i64, i64* %__ecx, align 8, !dbg !5021
  store i64 %3, i64* %__ecx, align 8, !dbg !5021
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5025, metadata !DIExpression()), !dbg !5021
  %4 = load i64, i64* %__eax, align 8, !dbg !5021
  store i64 %4, i64* %__eax, align 8, !dbg !5021
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5021
  %6 = call i64 @llvm.read_register.i64(metadata !4281), !dbg !5021
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5021, !srcloc !5026
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5021
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5021
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5021
  call void @llvm.write_register.i64(metadata !4281, i64 %asmresult1), !dbg !5021
  ret void, !dbg !5027
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !5028 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5031
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !5032
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5033
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #7, !dbg !5034
  ret void, !dbg !5035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5036 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5041, metadata !DIExpression()), !dbg !5043
  %0 = load i64, i64* %__edi, align 8, !dbg !5043
  store i64 %0, i64* %__edi, align 8, !dbg !5043
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5044, metadata !DIExpression()), !dbg !5043
  %1 = load i64, i64* %__esi, align 8, !dbg !5043
  store i64 %1, i64* %__esi, align 8, !dbg !5043
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5045, metadata !DIExpression()), !dbg !5043
  %2 = load i64, i64* %__edx, align 8, !dbg !5043
  store i64 %2, i64* %__edx, align 8, !dbg !5043
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5046, metadata !DIExpression()), !dbg !5043
  %3 = load i64, i64* %__ecx, align 8, !dbg !5043
  store i64 %3, i64* %__ecx, align 8, !dbg !5043
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5047, metadata !DIExpression()), !dbg !5043
  %4 = load i64, i64* %__eax, align 8, !dbg !5043
  store i64 %4, i64* %__eax, align 8, !dbg !5043
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5043
  %6 = call i64 @llvm.read_register.i64(metadata !4281), !dbg !5043
  %7 = load i64, i64* %f.addr, align 8, !dbg !5043
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5043, !srcloc !5048
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5043
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5043
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5043
  call void @llvm.write_register.i64(metadata !4281, i64 %asmresult1), !dbg !5043
  ret void, !dbg !5049
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!4281}
!llvm.module.flags = !{!4282, !4283, !4284, !4285}
!llvm.ident = !{!4286}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !169, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_managed.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !135, !144, !151, !164}
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !92, line: 91, baseType: !93, size: 32, elements: !94)
!92 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!95 = !DIEnumerator(name: "MODE_OK", value: 0)
!96 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!97 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!98 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!99 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!100 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!101 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!102 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!103 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!104 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!105 = !DIEnumerator(name: "MODE_MEM", value: 10)
!106 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!107 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!108 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!109 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!110 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!111 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!112 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!113 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!114 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!115 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!116 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!117 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!118 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!119 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!120 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!121 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!122 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!123 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!124 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!125 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!126 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!127 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!128 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!129 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!130 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!131 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!132 = !DIEnumerator(name: "MODE_STALE", value: -3)
!133 = !DIEnumerator(name: "MODE_BAD", value: -2)
!134 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !136, line: 96, baseType: !5, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!142 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!143 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !145, line: 33, baseType: !5, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !152, line: 277, baseType: !5, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!154 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!157 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!158 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!159 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!160 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!161 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!162 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!163 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 10, baseType: !5, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!169 = !{!170, !171, !859, !190, !792, !4279, !321}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drmres", file: !1, line: 45, size: 320, elements: !173)
!173 = !{!174, !4277}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !1, line: 46, baseType: !175, size: 320)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drmres_node", file: !1, line: 38, size: 320, elements: !176)
!176 = !{!177, !184, !4275, !4276}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !175, file: !1, line: 39, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !179, line: 178, size: 128, elements: !180)
!179 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 179, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !179, line: 179, baseType: !182, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !175, file: !1, line: 40, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "drmres_release_t", file: !186, line: 12, baseType: !187)
!186 = !DIFile(filename: "./include/drm/drm_managed.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190, !170}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !145, line: 53, size: 11840, elements: !192)
!192 = !{!193, !194, !195, !209, !3874, !3880, !3883, !3884, !3896, !3897, !3898, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3996, !3997, !3998, !3999, !4000, !4001, !4004, !4007, !4008, !4263, !4264, !4265, !4268, !4271, !4272}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !191, file: !145, line: 59, baseType: !178, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !191, file: !145, line: 62, baseType: !93, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !191, file: !145, line: 65, baseType: !196, size: 32, offset: 160)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !197, line: 19, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !196, file: !197, line: 20, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !201, line: 113, baseType: !202)
!201 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !201, line: 111, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !202, file: !201, line: 112, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !179, line: 168, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 166, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !206, file: !179, line: 167, baseType: !93, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !191, file: !145, line: 68, baseType: !210, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !212)
!212 = !{!213, !3446, !3447, !3450, !3451, !3502, !3575, !3576, !3577, !3578, !3579, !3588, !3693, !3706, !3709, !3710, !3714, !3716, !3717, !3718, !3722, !3728, !3729, !3732, !3736, !3826, !3827, !3828, !3829, !3830, !3862, !3863, !3864, !3867, !3870, !3871, !3872, !3873}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !211, file: !71, line: 462, baseType: !214, size: 512)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !215, line: 64, size: 512, elements: !216)
!215 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !221, !222, !224, !284, !3318, !3440, !3441, !3442, !3443, !3444, !3445}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !215, line: 65, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !214, file: !215, line: 66, baseType: !178, size: 128, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !215, line: 67, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !214, file: !215, line: 68, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !215, line: 192, size: 704, elements: !227)
!227 = !{!228, !229, !245, !246}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !226, file: !215, line: 193, baseType: !178, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !226, file: !215, line: 194, baseType: !230, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !231, line: 83, baseType: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !231, line: 71, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 72, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 72, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !235, file: !231, line: 73, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !231, line: 20, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !238, file: !231, line: 21, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !242, line: 25, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 25, elements: !244)
!244 = !{}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !226, file: !215, line: 195, baseType: !214, size: 512, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !226, file: !215, line: 196, baseType: !247, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !215, line: 156, size: 192, elements: !250)
!250 = !{!251, !256, !261}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !249, file: !215, line: 157, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!93, !225, !223}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !215, line: 158, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!218, !225, !223}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !249, file: !215, line: 159, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!93, !225, !223, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !215, line: 148, size: 20736, elements: !268)
!268 = !{!269, !274, !278, !279, !283}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !267, file: !215, line: 149, baseType: !270, size: 192)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 192, elements: !272)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!272 = !{!273}
!273 = !DISubrange(count: 3)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !267, file: !215, line: 150, baseType: !275, size: 4096, offset: 192)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !267, file: !215, line: 151, baseType: !93, size: 32, offset: 4288)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !267, file: !215, line: 152, baseType: !280, size: 16384, offset: 4320)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 16384, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 2048)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !267, file: !215, line: 153, baseType: !93, size: 32, offset: 20704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !214, file: !215, line: 69, baseType: !285, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !215, line: 138, size: 448, elements: !287)
!287 = !{!288, !292, !322, !324, !3280, !3308, !3312}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !215, line: 139, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !223}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !286, file: !215, line: 140, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !296, line: 230, size: 128, elements: !297)
!296 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !314}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !295, file: !296, line: 231, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !223, !307, !271}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !179, line: 60, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !304, line: 73, baseType: !305)
!304 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !304, line: 15, baseType: !306)
!306 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !296, line: 30, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !296, line: 31, baseType: !218, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !308, file: !296, line: 32, baseType: !312, size: 16, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !179, line: 19, baseType: !313)
!313 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !295, file: !296, line: 232, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!302, !223, !307, !218, !318}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !179, line: 55, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !304, line: 72, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !304, line: 16, baseType: !321)
!321 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !286, file: !215, line: 141, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !286, file: !215, line: 142, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !296, line: 84, size: 320, elements: !329)
!329 = !{!330, !331, !335, !3277, !3278}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !296, line: 85, baseType: !218, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !328, file: !296, line: 86, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!312, !223, !307, !93}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !328, file: !296, line: 88, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!312, !223, !339, !93}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !296, line: 168, size: 448, elements: !341)
!341 = !{!342, !343, !344, !345, !3272, !3273}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !340, file: !296, line: 169, baseType: !308, size: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !296, line: 170, baseType: !318, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !340, file: !296, line: 171, baseType: !170, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !340, file: !296, line: 172, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!302, !349, !223, !339, !271, !528, !318}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !351)
!351 = !{!352, !370, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3255, !3256, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !350, file: !42, line: 920, baseType: !353, size: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !42, line: 917, size: 128, elements: !354)
!354 = !{!355, !361}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !353, file: !42, line: 918, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !357, line: 58, size: 64, elements: !358)
!357 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !357, line: 59, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !353, file: !42, line: 919, baseType: !362, size: 128, align: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !179, line: 216, size: 128, align: 64, elements: !363)
!363 = !{!364, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !179, line: 217, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !362, file: !179, line: 218, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !365}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !350, file: !42, line: 921, baseType: !371, size: 128, offset: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !372, line: 8, size: 128, elements: !373)
!372 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !371, file: !372, line: 9, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !377, line: 18, flags: DIFlagFwdDecl)
!377 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !371, file: !372, line: 10, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !377, line: 89, size: 1536, elements: !381)
!381 = !{!382, !383, !393, !401, !402, !425, !3206, !3208, !3220, !3221, !3222, !3223, !3224, !3229, !3230, !3231}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !380, file: !377, line: 91, baseType: !5, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !380, file: !377, line: 92, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !385, line: 277, baseType: !386)
!385 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !385, line: 277, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !386, file: !385, line: 277, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !385, line: 70, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !385, line: 65, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !390, file: !385, line: 66, baseType: !5, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !380, file: !377, line: 93, baseType: !394, size: 128, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !395, line: 38, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 39, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !394, file: !395, line: 39, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !380, file: !377, line: 94, baseType: !379, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !380, file: !377, line: 95, baseType: !403, size: 128, offset: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !377, line: 47, size: 128, elements: !404)
!404 = !{!405, !421}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !377, line: 48, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !377, line: 48, size: 64, elements: !407)
!407 = !{!408, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !377, line: 49, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !377, line: 49, size: 64, elements: !410)
!410 = !{!411, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !409, file: !377, line: 50, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !413, line: 21, baseType: !414)
!413 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !415, line: 27, baseType: !5)
!415 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !409, file: !377, line: 50, baseType: !412, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !406, file: !377, line: 52, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !413, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !415, line: 31, baseType: !420)
!420 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !377, line: 54, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !380, file: !377, line: 96, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !428)
!428 = !{!429, !430, !431, !439, !446, !447, !595, !2909, !2910, !2911, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !3182, !3190, !3191, !3192, !3202, !3203, !3204, !3205}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !427, file: !42, line: 611, baseType: !312, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !427, file: !42, line: 612, baseType: !313, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !427, file: !42, line: 613, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !433, line: 23, baseType: !434)
!433 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 21, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !433, line: 22, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !179, line: 32, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !304, line: 49, baseType: !5)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !427, file: !42, line: 614, baseType: !440, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !433, line: 28, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 26, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !433, line: 27, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !179, line: 33, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !304, line: 50, baseType: !5)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !427, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !427, file: !42, line: 622, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !451)
!451 = !{!452, !456, !469, !473, !479, !483, !489, !493, !497, !501, !505, !506, !512, !516, !542, !571, !575, !581, !586, !590, !591}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !450, file: !42, line: 1865, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!379, !426, !379, !5}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !450, file: !42, line: 1866, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!218, !379, !426, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !462, line: 10, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !468}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !461, file: !462, line: 11, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !170}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !461, file: !462, line: 12, baseType: !170, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !450, file: !42, line: 1867, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!93, !426, !93}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !450, file: !42, line: 1868, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !426, !93}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !450, file: !42, line: 1870, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!93, !379, !271, !93}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !450, file: !42, line: 1872, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!93, !426, !379, !312, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !179, line: 30, baseType: !488)
!488 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !450, file: !42, line: 1873, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!93, !379, !426, !379}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !450, file: !42, line: 1874, baseType: !494, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!93, !426, !379}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !450, file: !42, line: 1875, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!93, !426, !379, !218}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !450, file: !42, line: 1876, baseType: !502, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!93, !426, !379, !312}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !450, file: !42, line: 1877, baseType: !494, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !450, file: !42, line: 1878, baseType: !507, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!93, !426, !379, !312, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !179, line: 16, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !179, line: 13, baseType: !412)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !450, file: !42, line: 1879, baseType: !513, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!93, !426, !379, !426, !379, !5}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !450, file: !42, line: 1881, baseType: !517, size: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!93, !379, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !531, !539, !540, !541}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !521, file: !42, line: 220, baseType: !5, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !521, file: !42, line: 221, baseType: !312, size: 16, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !521, file: !42, line: 222, baseType: !432, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !521, file: !42, line: 223, baseType: !440, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !521, file: !42, line: 224, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !179, line: 46, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !304, line: 88, baseType: !530)
!530 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !521, file: !42, line: 225, baseType: !532, size: 128, offset: 192)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !533, line: 13, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !532, file: !533, line: 14, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !533, line: 8, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !415, line: 30, baseType: !530)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !532, file: !533, line: 15, baseType: !306, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !521, file: !42, line: 226, baseType: !532, size: 128, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !521, file: !42, line: 227, baseType: !532, size: 128, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !521, file: !42, line: 234, baseType: !349, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !450, file: !42, line: 1882, baseType: !543, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!93, !546, !548, !412, !5}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !550, line: 22, size: 1152, elements: !551)
!550 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !553, !554, !555, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !549, file: !550, line: 23, baseType: !412, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !549, file: !550, line: 24, baseType: !312, size: 16, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !549, file: !550, line: 25, baseType: !5, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !549, file: !550, line: 26, baseType: !556, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !179, line: 104, baseType: !412)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !549, file: !550, line: 27, baseType: !418, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !549, file: !550, line: 28, baseType: !418, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !549, file: !550, line: 37, baseType: !418, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !549, file: !550, line: 38, baseType: !510, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !549, file: !550, line: 39, baseType: !510, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !550, line: 40, baseType: !432, size: 32, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !549, file: !550, line: 41, baseType: !440, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !549, file: !550, line: 42, baseType: !528, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !549, file: !550, line: 43, baseType: !532, size: 128, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !549, file: !550, line: 44, baseType: !532, size: 128, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !549, file: !550, line: 45, baseType: !532, size: 128, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !549, file: !550, line: 46, baseType: !532, size: 128, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !549, file: !550, line: 47, baseType: !418, size: 64, offset: 1024)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !549, file: !550, line: 48, baseType: !418, size: 64, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !450, file: !42, line: 1883, baseType: !572, size: 64, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!302, !379, !271, !318}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !450, file: !42, line: 1884, baseType: !576, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!93, !426, !579, !418, !418}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !450, file: !42, line: 1886, baseType: !582, size: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!93, !426, !585, !93}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !450, file: !42, line: 1887, baseType: !587, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!93, !426, !379, !349, !5, !312}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !450, file: !42, line: 1890, baseType: !502, size: 64, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !450, file: !42, line: 1891, baseType: !592, size: 64, offset: 1280)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!93, !426, !477, !93}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !427, file: !42, line: 623, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !653, !2516, !2598, !2681, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2697, !2701, !2702, !2705, !2706, !2709, !2710, !2711, !2752, !2779, !2780, !2781, !2782, !2783, !2784, !2787, !2789, !2796, !2797, !2799, !2800, !2801, !2860, !2861, !2876, !2877, !2878, !2879, !2880, !2883, !2884, !2885, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !597, file: !42, line: 1417, baseType: !178, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !597, file: !42, line: 1418, baseType: !510, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !597, file: !42, line: 1419, baseType: !424, size: 8, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !597, file: !42, line: 1420, baseType: !321, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !597, file: !42, line: 1421, baseType: !528, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !597, file: !42, line: 1422, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !607)
!607 = !{!608, !609, !610, !616, !620, !624, !628, !632, !633, !643, !646, !647, !648, !650, !651, !652}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !42, line: 2229, baseType: !218, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !606, file: !42, line: 2230, baseType: !93, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !606, file: !42, line: 2238, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!93, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !42, line: 69, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !606, file: !42, line: 2239, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !606, file: !42, line: 2240, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!379, !605, !93, !218, !170}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !606, file: !42, line: 2242, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !596}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !606, file: !42, line: 2243, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !631, line: 76, flags: DIFlagFwdDecl)
!631 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !42, line: 2244, baseType: !605, size: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !606, file: !42, line: 2245, baseType: !634, size: 64, offset: 512)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !179, line: 182, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !634, file: !179, line: 183, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !179, line: 186, size: 128, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !179, line: 187, baseType: !637, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !638, file: !179, line: 187, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !606, file: !42, line: 2247, baseType: !644, offset: 576)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !645, line: 187, elements: !244)
!645 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !606, file: !42, line: 2248, baseType: !644, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !606, file: !42, line: 2249, baseType: !644, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !606, file: !42, line: 2250, baseType: !649, offset: 576)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, elements: !272)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !606, file: !42, line: 2252, baseType: !644, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !606, file: !42, line: 2253, baseType: !644, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !606, file: !42, line: 2254, baseType: !644, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !597, file: !42, line: 1423, baseType: !654, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !657)
!657 = !{!658, !662, !666, !667, !671, !677, !681, !682, !683, !687, !691, !692, !693, !694, !700, !705, !706, !762, !763, !764, !765, !2500, !2515}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !656, file: !42, line: 1936, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!426, !596}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !656, file: !42, line: 1937, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !426}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !656, file: !42, line: 1938, baseType: !663, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !656, file: !42, line: 1940, baseType: !668, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !426, !93}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !656, file: !42, line: 1941, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!93, !426, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !42, line: 289, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !656, file: !42, line: 1942, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!93, !426}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !656, file: !42, line: 1943, baseType: !663, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !656, file: !42, line: 1944, baseType: !625, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !656, file: !42, line: 1945, baseType: !684, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!93, !596, !93}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !656, file: !42, line: 1946, baseType: !688, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!93, !596}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !656, file: !42, line: 1947, baseType: !688, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !656, file: !42, line: 1948, baseType: !688, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !656, file: !42, line: 1949, baseType: !688, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !656, file: !42, line: 1950, baseType: !695, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!93, !379, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !656, file: !42, line: 1951, baseType: !701, size: 64, offset: 896)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!93, !596, !704, !271}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !656, file: !42, line: 1952, baseType: !625, size: 64, offset: 960)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !656, file: !42, line: 1954, baseType: !707, size: 64, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!93, !710, !379}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !712, line: 16, size: 896, elements: !713)
!712 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !735, !757, !758, !761}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !711, file: !712, line: 17, baseType: !271, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !711, file: !712, line: 18, baseType: !318, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !711, file: !712, line: 19, baseType: !318, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !711, file: !712, line: 20, baseType: !318, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !711, file: !712, line: 21, baseType: !318, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !711, file: !712, line: 22, baseType: !528, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !711, file: !712, line: 23, baseType: !528, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !712, line: 24, baseType: !722, size: 192, offset: 448)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !723, line: 53, size: 192, elements: !724)
!723 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !733, !734}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !722, file: !723, line: 54, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !727, line: 13, baseType: !728)
!727 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !179, line: 175, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 173, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !729, file: !179, line: 174, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !413, line: 22, baseType: !537)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !722, file: !723, line: 55, baseType: !230, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !722, file: !723, line: 59, baseType: !178, size: 128, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !711, file: !712, line: 25, baseType: !736, size: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !712, line: 31, size: 256, elements: !739)
!739 = !{!740, !745, !749, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !738, file: !712, line: 32, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!170, !710, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !738, file: !712, line: 33, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !710, !170}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !712, line: 34, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!170, !710, !170, !744}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !738, file: !712, line: 35, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!93, !710, !170}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !711, file: !712, line: 26, baseType: !93, size: 32, offset: 704)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !711, file: !712, line: 27, baseType: !759, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !711, file: !712, line: 28, baseType: !170, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !656, file: !42, line: 1955, baseType: !707, size: 64, offset: 1088)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !656, file: !42, line: 1956, baseType: !707, size: 64, offset: 1152)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !656, file: !42, line: 1957, baseType: !707, size: 64, offset: 1216)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !656, file: !42, line: 1963, baseType: !766, size: 64, offset: 1280)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!93, !596, !769, !792}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !771, line: 68, size: 512, align: 128, elements: !772)
!771 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !774, !2492, !2499}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !771, line: 69, baseType: !321, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 77, baseType: !775, size: 320, offset: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 77, size: 320, elements: !776)
!776 = !{!777, !954, !959, !987, !995, !1001, !2423, !2491}
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 78, baseType: !778, size: 320)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 78, size: 320, elements: !779)
!779 = !{!780, !781, !952, !953}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !778, file: !771, line: 84, baseType: !178, size: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !778, file: !771, line: 86, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !784)
!784 = !{!785, !786, !794, !795, !796, !811, !820, !821, !822, !823, !945, !946, !949, !950, !951}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !783, file: !42, line: 452, baseType: !426, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !783, file: !42, line: 453, baseType: !787, size: 128, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !788, line: 292, size: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791, !793}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !787, file: !788, line: 293, baseType: !230)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !787, file: !788, line: 295, baseType: !792, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !179, line: 148, baseType: !5)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !787, file: !788, line: 296, baseType: !170, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !783, file: !42, line: 454, baseType: !792, size: 32, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !783, file: !42, line: 455, baseType: !205, size: 32, offset: 224)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !783, file: !42, line: 460, baseType: !797, size: 128, offset: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !798, line: 125, size: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !810}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !797, file: !798, line: 126, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !798, line: 31, size: 64, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !801, file: !798, line: 32, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !798, line: 24, size: 192, align: 64, elements: !806)
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !805, file: !798, line: 25, baseType: !321, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !805, file: !798, line: 26, baseType: !804, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !805, file: !798, line: 27, baseType: !804, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !797, file: !798, line: 127, baseType: !804, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !783, file: !42, line: 461, baseType: !812, size: 256, offset: 384)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !813, line: 35, size: 256, elements: !814)
!813 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816, !817, !819}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !812, file: !813, line: 36, baseType: !726, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !812, file: !813, line: 42, baseType: !726, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !812, file: !813, line: 46, baseType: !818, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !231, line: 29, baseType: !238)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !812, file: !813, line: 47, baseType: !178, size: 128, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !783, file: !42, line: 462, baseType: !321, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !783, file: !42, line: 463, baseType: !321, size: 64, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !783, file: !42, line: 464, baseType: !321, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !783, file: !42, line: 465, baseType: !824, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !827)
!827 = !{!828, !832, !836, !840, !844, !848, !854, !860, !864, !869, !873, !877, !881, !909, !913, !919, !920, !921, !925, !930, !934, !941}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !826, file: !42, line: 368, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!93, !769, !675}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !826, file: !42, line: 369, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!93, !349, !769}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !826, file: !42, line: 372, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!93, !782, !675}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !826, file: !42, line: 375, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!93, !769}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !826, file: !42, line: 381, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!93, !349, !782, !182, !5}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !826, file: !42, line: 383, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !826, file: !42, line: 385, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!93, !349, !782, !528, !5, !5, !858, !859}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !826, file: !42, line: 388, baseType: !861, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!93, !349, !782, !528, !5, !5, !769, !170}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !826, file: !42, line: 393, baseType: !865, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !782, !868}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !179, line: 125, baseType: !418)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !826, file: !42, line: 394, baseType: !870, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !769, !5, !5}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !826, file: !42, line: 395, baseType: !874, size: 64, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!93, !769, !792}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !826, file: !42, line: 396, baseType: !878, size: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !769}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !826, file: !42, line: 397, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!302, !885, !907}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !887)
!887 = !{!888, !889, !890, !894, !895, !896, !899, !900}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !886, file: !42, line: 321, baseType: !349, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !886, file: !42, line: 326, baseType: !528, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !886, file: !42, line: 327, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !885, !306, !306}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !886, file: !42, line: 328, baseType: !170, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !886, file: !42, line: 329, baseType: !93, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !886, file: !42, line: 330, baseType: !897, size: 16, offset: 288)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !413, line: 19, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !415, line: 24, baseType: !313)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !886, file: !42, line: 331, baseType: !897, size: 16, offset: 304)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !42, line: 332, baseType: !901, size: 64, offset: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !42, line: 332, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !901, file: !42, line: 333, baseType: !5, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !901, file: !42, line: 334, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !826, file: !42, line: 402, baseType: !910, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!93, !782, !769, !769, !3}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !826, file: !42, line: 404, baseType: !914, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!487, !769, !917}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !918, line: 305, baseType: !5)
!918 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !826, file: !42, line: 405, baseType: !878, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !826, file: !42, line: 406, baseType: !841, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !826, file: !42, line: 407, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!93, !769, !321, !321}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !826, file: !42, line: 409, baseType: !926, size: 64, offset: 1152)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !769, !929, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !826, file: !42, line: 410, baseType: !931, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!93, !782, !769}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !826, file: !42, line: 413, baseType: !935, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!93, !938, !349, !940}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !826, file: !42, line: 415, baseType: !942, size: 64, offset: 1344)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !349}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !42, line: 466, baseType: !321, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !783, file: !42, line: 467, baseType: !947, size: 32, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !948, line: 8, baseType: !412)
!948 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !783, file: !42, line: 468, baseType: !230, offset: 992)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !783, file: !42, line: 469, baseType: !178, size: 128, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !783, file: !42, line: 470, baseType: !170, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !778, file: !771, line: 87, baseType: !321, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !778, file: !771, line: 94, baseType: !321, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 96, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 96, size: 64, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !955, file: !771, line: 101, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !179, line: 143, baseType: !418)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 103, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 103, size: 320, elements: !961)
!961 = !{!962, !972, !975, !976}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !771, line: 104, baseType: !963, size: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !771, line: 104, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !963, file: !771, line: 105, baseType: !178, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !771, line: 106, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !771, line: 106, size: 128, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !771, line: 107, baseType: !769, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !967, file: !771, line: 109, baseType: !93, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !967, file: !771, line: 110, baseType: !93, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !960, file: !771, line: 117, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !771, line: 117, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !960, file: !771, line: 119, baseType: !170, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !771, line: 120, baseType: !977, size: 64, offset: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !771, line: 120, size: 64, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !977, file: !771, line: 121, baseType: !170, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !977, file: !771, line: 122, baseType: !321, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !771, line: 123, baseType: !982, size: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !771, line: 123, size: 32, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !982, file: !771, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !982, file: !771, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !982, file: !771, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 130, baseType: !988, size: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 130, size: 192, elements: !989)
!989 = !{!990, !991, !992, !993, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !988, file: !771, line: 131, baseType: !321, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !988, file: !771, line: 134, baseType: !424, size: 8, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !988, file: !771, line: 135, baseType: !424, size: 8, offset: 72)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !988, file: !771, line: 136, baseType: !205, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !988, file: !771, line: 137, baseType: !5, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 139, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 139, size: 256, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !996, file: !771, line: 140, baseType: !321, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !996, file: !771, line: 141, baseType: !205, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !996, file: !771, line: 143, baseType: !178, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 145, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 145, size: 256, elements: !1003)
!1003 = !{!1004, !1005, !1008, !1009, !2422}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1002, file: !771, line: 146, baseType: !321, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1002, file: !771, line: 147, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1007, line: 509, baseType: !769)
!1007 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1002, file: !771, line: 148, baseType: !321, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !771, line: 149, baseType: !1010, size: 64, offset: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !771, line: 149, size: 64, elements: !1011)
!1011 = !{!1012, !2421}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1010, file: !771, line: 150, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !771, line: 388, size: 7296, elements: !1015)
!1015 = !{!1016, !2417}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !771, line: 389, baseType: !1017, size: 7296)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !771, line: 389, size: 7296, elements: !1018)
!1018 = !{!1019, !1137, !1138, !1139, !1143, !1144, !1145, !1146, !1147, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188, !1196, !1199, !1239, !1240, !2401, !2402, !2405, !2406, !2407, !2410, !2411, !2412, !2415, !2416}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1017, file: !771, line: 390, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !771, line: 305, size: 1472, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1037, !1038, !1043, !1044, !1047, !1131, !1132, !1133, !1134, !1135}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1021, file: !771, line: 308, baseType: !321, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1021, file: !771, line: 309, baseType: !321, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1021, file: !771, line: 313, baseType: !1020, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1021, file: !771, line: 313, baseType: !1020, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1021, file: !771, line: 315, baseType: !805, size: 192, align: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1021, file: !771, line: 323, baseType: !321, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1021, file: !771, line: 327, baseType: !1013, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1021, file: !771, line: 333, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1007, line: 284, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1007, line: 284, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1032, file: !1007, line: 284, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1036, line: 19, baseType: !321)
!1036 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1021, file: !771, line: 334, baseType: !321, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1021, file: !771, line: 343, baseType: !1039, size: 256, offset: 704)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !771, line: 340, size: 256, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1039, file: !771, line: 341, baseType: !805, size: 192, align: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1039, file: !771, line: 342, baseType: !321, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1021, file: !771, line: 351, baseType: !178, size: 128, offset: 960)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1021, file: !771, line: 353, baseType: !1045, size: 64, offset: 1088)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !771, line: 353, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1021, file: !771, line: 356, baseType: !1048, size: 64, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1051)
!1051 = !{!1052, !1056, !1057, !1061, !1065, !1105, !1109, !1113, !1117, !1118, !1119, !1123, !1127}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1050, file: !12, line: 558, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !1020}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1050, file: !12, line: 559, baseType: !1053, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1050, file: !12, line: 560, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!93, !1020, !321}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1050, file: !12, line: 561, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!93, !1020}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1050, file: !12, line: 562, baseType: !1066, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !771, line: 682, baseType: !5)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1085, !1092, !1098, !1099, !1100, !1102, !1104}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1071, file: !12, line: 509, baseType: !1020, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1071, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1071, file: !12, line: 511, baseType: !792, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1071, file: !12, line: 512, baseType: !321, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1071, file: !12, line: 513, baseType: !321, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1071, file: !12, line: 514, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1007, line: 385, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 385, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1081, file: !1007, line: 385, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1036, line: 15, baseType: !321)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1071, file: !12, line: 516, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1007, line: 359, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 359, size: 64, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1088, file: !1007, line: 359, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1036, line: 16, baseType: !321)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1071, file: !12, line: 519, baseType: !1093, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1036, line: 21, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 21, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1094, file: !1036, line: 21, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1036, line: 14, baseType: !321)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1071, file: !12, line: 521, baseType: !769, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1071, file: !12, line: 522, baseType: !769, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1071, file: !12, line: 528, baseType: !1101, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1071, file: !12, line: 532, baseType: !1103, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1071, file: !12, line: 536, baseType: !1006, size: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1050, file: !12, line: 563, baseType: !1106, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1069, !1070, !11}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1050, file: !12, line: 565, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1070, !321, !321}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1050, file: !12, line: 567, baseType: !1114, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!321, !1020}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1050, file: !12, line: 571, baseType: !1066, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1050, file: !12, line: 574, baseType: !1066, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1050, file: !12, line: 579, baseType: !1120, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!93, !1020, !321, !170, !93, !93}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1050, file: !12, line: 585, baseType: !1124, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!218, !1020}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1050, file: !12, line: 615, baseType: !1128, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!769, !1020, !321}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1021, file: !771, line: 359, baseType: !321, size: 64, offset: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1021, file: !771, line: 361, baseType: !349, size: 64, offset: 1280)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1021, file: !771, line: 362, baseType: !170, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1021, file: !771, line: 365, baseType: !726, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1021, file: !771, line: 373, baseType: !1136, offset: 1472)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !771, line: 296, elements: !244)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1017, file: !771, line: 391, baseType: !801, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1017, file: !771, line: 392, baseType: !418, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1017, file: !771, line: 394, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!321, !349, !321, !321, !321, !321}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1017, file: !771, line: 398, baseType: !321, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1017, file: !771, line: 399, baseType: !321, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1017, file: !771, line: 405, baseType: !321, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1017, file: !771, line: 406, baseType: !321, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1017, file: !771, line: 407, baseType: !1148, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1007, line: 286, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 286, size: 64, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1150, file: !1007, line: 286, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1036, line: 18, baseType: !321)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1017, file: !771, line: 416, baseType: !205, size: 32, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1017, file: !771, line: 428, baseType: !205, size: 32, offset: 608)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1017, file: !771, line: 437, baseType: !205, size: 32, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1017, file: !771, line: 447, baseType: !205, size: 32, offset: 672)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1017, file: !771, line: 450, baseType: !726, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1017, file: !771, line: 452, baseType: !93, size: 32, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1017, file: !771, line: 454, baseType: !230, offset: 800)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1017, file: !771, line: 457, baseType: !812, size: 256, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1017, file: !771, line: 459, baseType: !178, size: 128, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1017, file: !771, line: 466, baseType: !321, size: 64, offset: 1216)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1017, file: !771, line: 467, baseType: !321, size: 64, offset: 1280)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1017, file: !771, line: 469, baseType: !321, size: 64, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1017, file: !771, line: 470, baseType: !321, size: 64, offset: 1408)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1017, file: !771, line: 471, baseType: !728, size: 64, offset: 1472)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1017, file: !771, line: 472, baseType: !321, size: 64, offset: 1536)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1017, file: !771, line: 473, baseType: !321, size: 64, offset: 1600)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1017, file: !771, line: 474, baseType: !321, size: 64, offset: 1664)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1017, file: !771, line: 475, baseType: !321, size: 64, offset: 1728)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1017, file: !771, line: 477, baseType: !230, offset: 1792)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1017, file: !771, line: 478, baseType: !321, size: 64, offset: 1792)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1017, file: !771, line: 478, baseType: !321, size: 64, offset: 1856)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1017, file: !771, line: 478, baseType: !321, size: 64, offset: 1920)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1017, file: !771, line: 478, baseType: !321, size: 64, offset: 1984)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1017, file: !771, line: 479, baseType: !321, size: 64, offset: 2048)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1017, file: !771, line: 479, baseType: !321, size: 64, offset: 2112)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1017, file: !771, line: 479, baseType: !321, size: 64, offset: 2176)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1017, file: !771, line: 480, baseType: !321, size: 64, offset: 2240)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1017, file: !771, line: 480, baseType: !321, size: 64, offset: 2304)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1017, file: !771, line: 480, baseType: !321, size: 64, offset: 2368)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1017, file: !771, line: 480, baseType: !321, size: 64, offset: 2432)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1017, file: !771, line: 482, baseType: !1185, size: 2816, offset: 2496)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 2816, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 44)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1017, file: !771, line: 488, baseType: !1189, size: 256, offset: 5312)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1190, line: 60, size: 256, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1189, file: !1190, line: 61, baseType: !1193, size: 256)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 256, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 4)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1017, file: !771, line: 490, baseType: !1197, size: 64, offset: 5568)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !771, line: 490, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1017, file: !771, line: 493, baseType: !1200, size: 896, offset: 5632)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1201, line: 53, baseType: !1202)
!1201 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 13, size: 896, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1210, !1211, !1212, !1213, !1233, !1234, !1235}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1202, file: !1201, line: 18, baseType: !418, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1202, file: !1201, line: 28, baseType: !728, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1202, file: !1201, line: 31, baseType: !812, size: 256, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1202, file: !1201, line: 32, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1201, line: 32, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1202, file: !1201, line: 37, baseType: !313, size: 16, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1201, line: 40, baseType: !722, size: 192, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1202, file: !1201, line: 41, baseType: !170, size: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1202, file: !1201, line: 42, baseType: !1214, size: 64, offset: 768)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1217, line: 13, size: 896, elements: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1216, file: !1217, line: 14, baseType: !170, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1216, file: !1217, line: 15, baseType: !321, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1216, file: !1217, line: 17, baseType: !321, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1216, file: !1217, line: 17, baseType: !321, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1216, file: !1217, line: 19, baseType: !306, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1216, file: !1217, line: 21, baseType: !306, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1216, file: !1217, line: 22, baseType: !306, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1216, file: !1217, line: 23, baseType: !306, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1216, file: !1217, line: 24, baseType: !306, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1216, file: !1217, line: 25, baseType: !306, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1216, file: !1217, line: 26, baseType: !306, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1216, file: !1217, line: 27, baseType: !306, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1216, file: !1217, line: 28, baseType: !306, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1216, file: !1217, line: 29, baseType: !306, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1202, file: !1201, line: 44, baseType: !205, size: 32, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1202, file: !1201, line: 50, baseType: !897, size: 16, offset: 864)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1202, file: !1201, line: 51, baseType: !1236, size: 16, offset: 880)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !413, line: 18, baseType: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !415, line: 23, baseType: !1238)
!1238 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1017, file: !771, line: 495, baseType: !321, size: 64, offset: 6528)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1017, file: !771, line: 497, baseType: !1241, size: 64, offset: 6592)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !771, line: 381, size: 384, elements: !1243)
!1243 = !{!1244, !1245, !2400}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1242, file: !771, line: 382, baseType: !205, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1242, file: !771, line: 383, baseType: !1246, size: 128, offset: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !771, line: 376, size: 128, elements: !1247)
!1247 = !{!1248, !2398}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1246, file: !771, line: 377, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1251, line: 640, size: 48640, elements: !1252)
!1251 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1259, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1274, !1292, !1303, !1388, !1389, !1390, !1401, !1402, !1404, !1405, !1406, !1407, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1491, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1562, !1564, !1565, !1566, !1578, !1579, !1580, !1581, !1582, !1583, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1607, !1612, !1794, !1795, !1796, !1797, !1801, !1804, !1807, !1810, !1813, !1839, !1940, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1986, !1987, !1988, !1989, !1990, !1995, !1996, !1997, !2000, !2001, !2004, !2007, !2010, !2013, !2056, !2059, !2060, !2139, !2140, !2143, !2144, !2147, !2148, !2149, !2153, !2154, !2155, !2168, !2169, !2170, !2180, !2185, !2188, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1250, file: !1251, line: 646, baseType: !1254, size: 128)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1255, line: 56, size: 128, elements: !1256)
!1255 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !1255, line: 57, baseType: !321, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1254, file: !1255, line: 58, baseType: !412, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1250, file: !1251, line: 649, baseType: !1260, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !306)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1250, file: !1251, line: 657, baseType: !170, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1250, file: !1251, line: 658, baseType: !200, size: 32, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !1251, line: 660, baseType: !5, size: 32, offset: 288)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1250, file: !1251, line: 661, baseType: !5, size: 32, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1250, file: !1251, line: 684, baseType: !93, size: 32, offset: 352)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1250, file: !1251, line: 686, baseType: !93, size: 32, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1250, file: !1251, line: 687, baseType: !93, size: 32, offset: 416)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1250, file: !1251, line: 688, baseType: !93, size: 32, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1250, file: !1251, line: 689, baseType: !5, size: 32, offset: 480)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1250, file: !1251, line: 691, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1251, line: 691, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1250, file: !1251, line: 692, baseType: !1275, size: 832, offset: 576)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1251, line: 451, size: 832, elements: !1276)
!1276 = !{!1277, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1275, file: !1251, line: 453, baseType: !1278, size: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1251, line: 325, size: 128, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1278, file: !1251, line: 326, baseType: !321, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1278, file: !1251, line: 327, baseType: !412, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1275, file: !1251, line: 454, baseType: !805, size: 192, align: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1275, file: !1251, line: 455, baseType: !178, size: 128, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1275, file: !1251, line: 456, baseType: !5, size: 32, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1275, file: !1251, line: 458, baseType: !418, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1275, file: !1251, line: 459, baseType: !418, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1275, file: !1251, line: 460, baseType: !418, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1275, file: !1251, line: 461, baseType: !418, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1275, file: !1251, line: 463, baseType: !418, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1275, file: !1251, line: 465, baseType: !1291, offset: 832)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1251, line: 415, elements: !244)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1250, file: !1251, line: 693, baseType: !1293, size: 384, offset: 1408)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1251, line: 489, size: 384, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1293, file: !1251, line: 490, baseType: !178, size: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1293, file: !1251, line: 491, baseType: !321, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1293, file: !1251, line: 492, baseType: !321, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1293, file: !1251, line: 493, baseType: !5, size: 32, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1293, file: !1251, line: 494, baseType: !313, size: 16, offset: 288)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1293, file: !1251, line: 495, baseType: !313, size: 16, offset: 304)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1293, file: !1251, line: 497, baseType: !1302, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1250, file: !1251, line: 697, baseType: !1304, size: 1792, offset: 1792)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1251, line: 507, size: 1792, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1385, !1386}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1304, file: !1251, line: 508, baseType: !805, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1304, file: !1251, line: 515, baseType: !418, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1304, file: !1251, line: 516, baseType: !418, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1304, file: !1251, line: 517, baseType: !418, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1304, file: !1251, line: 518, baseType: !418, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1304, file: !1251, line: 519, baseType: !418, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1304, file: !1251, line: 526, baseType: !732, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1304, file: !1251, line: 527, baseType: !418, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1304, file: !1251, line: 528, baseType: !5, size: 32, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1304, file: !1251, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1304, file: !1251, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1304, file: !1251, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1304, file: !1251, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1304, file: !1251, line: 563, baseType: !1320, size: 512, offset: 704)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1321)
!1321 = !{!1322, !1330, !1331, !1336, !1379, !1382, !1383, !1384}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1320, file: !18, line: 119, baseType: !1323, size: 256)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1324, line: 9, size: 256, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1323, file: !1324, line: 10, baseType: !805, size: 192, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1323, file: !1324, line: 11, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1329, line: 29, baseType: !732)
!1329 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1320, file: !18, line: 120, baseType: !1328, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1320, file: !18, line: 121, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!17, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1320, file: !18, line: 122, baseType: !1337, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1339)
!1339 = !{!1340, !1360, !1361, !1364, !1369, !1370, !1374, !1378}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1338, file: !18, line: 160, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !18, line: 215, baseType: !818)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1342, file: !18, line: 216, baseType: !5, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1342, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1342, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1342, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1342, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1342, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1342, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1342, file: !18, line: 233, baseType: !1328, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1342, file: !18, line: 234, baseType: !1335, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1342, file: !18, line: 235, baseType: !1328, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1342, file: !18, line: 236, baseType: !1335, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1342, file: !18, line: 237, baseType: !1357, size: 4096, offset: 512)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 4096, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 8)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1338, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1338, file: !18, line: 162, baseType: !1362, size: 32, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !179, line: 27, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !304, line: 96, baseType: !93)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1338, file: !18, line: 163, baseType: !1365, size: 32, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !385, line: 276, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !385, line: 276, size: 32, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1366, file: !385, line: 276, baseType: !389, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1338, file: !18, line: 164, baseType: !1335, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1338, file: !18, line: 165, baseType: !1371, size: 128, offset: 256)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1324, line: 14, size: 128, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1371, file: !1324, line: 15, baseType: !797, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1338, file: !18, line: 166, baseType: !1375, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1328}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1338, file: !18, line: 167, baseType: !1328, size: 64, offset: 448)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1320, file: !18, line: 123, baseType: !1380, size: 8, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !413, line: 17, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !415, line: 21, baseType: !424)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1320, file: !18, line: 124, baseType: !1380, size: 8, offset: 456)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1320, file: !18, line: 125, baseType: !1380, size: 8, offset: 464)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1320, file: !18, line: 126, baseType: !1380, size: 8, offset: 472)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1304, file: !1251, line: 572, baseType: !1320, size: 512, offset: 1216)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1304, file: !1251, line: 580, baseType: !1387, size: 64, offset: 1728)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1250, file: !1251, line: 721, baseType: !5, size: 32, offset: 3584)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1250, file: !1251, line: 722, baseType: !93, size: 32, offset: 3616)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1250, file: !1251, line: 723, baseType: !1391, size: 64, offset: 3648)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1394, line: 17, baseType: !1395)
!1394 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1394, line: 17, size: 64, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1395, file: !1394, line: 17, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 1)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1250, file: !1251, line: 724, baseType: !1393, size: 64, offset: 3712)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1250, file: !1251, line: 749, baseType: !1403, offset: 3776)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1251, line: 290, elements: !244)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1250, file: !1251, line: 751, baseType: !178, size: 128, offset: 3776)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1250, file: !1251, line: 757, baseType: !1013, size: 64, offset: 3904)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1250, file: !1251, line: 758, baseType: !1013, size: 64, offset: 3968)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1250, file: !1251, line: 761, baseType: !1408, size: 320, offset: 4032)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1190, line: 34, size: 320, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1408, file: !1190, line: 35, baseType: !418, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1408, file: !1190, line: 36, baseType: !1412, size: 256, offset: 64)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 256, elements: !1194)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1250, file: !1251, line: 766, baseType: !93, size: 32, offset: 4352)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1250, file: !1251, line: 767, baseType: !93, size: 32, offset: 4384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1250, file: !1251, line: 768, baseType: !93, size: 32, offset: 4416)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1250, file: !1251, line: 770, baseType: !93, size: 32, offset: 4448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1250, file: !1251, line: 772, baseType: !321, size: 64, offset: 4480)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1250, file: !1251, line: 775, baseType: !5, size: 32, offset: 4544)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1250, file: !1251, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1250, file: !1251, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1250, file: !1251, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1250, file: !1251, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1250, file: !1251, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1250, file: !1251, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1250, file: !1251, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1250, file: !1251, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1250, file: !1251, line: 831, baseType: !321, size: 64, offset: 4672)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1250, file: !1251, line: 833, baseType: !1429, size: 384, offset: 4736)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1430)
!1430 = !{!1431, !1436}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1429, file: !23, line: 26, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!306, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !23, line: 27, baseType: !1437, size: 320, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !23, line: 27, size: 320, elements: !1438)
!1438 = !{!1439, !1449, !1476}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1437, file: !23, line: 36, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !23, line: 29, size: 320, elements: !1441)
!1441 = !{!1442, !1444, !1445, !1446, !1447, !1448}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1440, file: !23, line: 30, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1440, file: !23, line: 31, baseType: !412, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !23, line: 32, baseType: !412, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1440, file: !23, line: 33, baseType: !412, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1440, file: !23, line: 34, baseType: !418, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1440, file: !23, line: 35, baseType: !1443, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1437, file: !23, line: 46, baseType: !1450, size: 192)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !23, line: 38, size: 192, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1475}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1450, file: !23, line: 39, baseType: !1362, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1450, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !23, line: 41, baseType: !1455, size: 64, offset: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !23, line: 41, size: 64, elements: !1456)
!1456 = !{!1457, !1465}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1455, file: !23, line: 42, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1460, line: 7, size: 128, elements: !1461)
!1460 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1459, file: !1460, line: 8, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !304, line: 93, baseType: !530)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1459, file: !1460, line: 9, baseType: !530, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1455, file: !23, line: 43, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1468, line: 7, size: 64, elements: !1469)
!1468 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1474}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1467, file: !1468, line: 8, baseType: !1471, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1468, line: 5, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !413, line: 20, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !415, line: 26, baseType: !93)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1467, file: !1468, line: 9, baseType: !1472, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1450, file: !23, line: 45, baseType: !418, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1437, file: !23, line: 54, baseType: !1477, size: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !23, line: 48, size: 256, elements: !1478)
!1478 = !{!1479, !1487, !1488, !1489, !1490}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1477, file: !23, line: 49, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1482, line: 36, size: 64, elements: !1483)
!1482 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1481, file: !1482, line: 37, baseType: !93, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1481, file: !1482, line: 38, baseType: !1238, size: 16, offset: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1481, file: !1482, line: 39, baseType: !1238, size: 16, offset: 48)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1477, file: !23, line: 50, baseType: !93, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1477, file: !23, line: 51, baseType: !93, size: 32, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1477, file: !23, line: 52, baseType: !321, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1477, file: !23, line: 53, baseType: !321, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1250, file: !1251, line: 835, baseType: !1492, size: 32, offset: 5120)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !179, line: 22, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !304, line: 28, baseType: !93)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1250, file: !1251, line: 836, baseType: !1492, size: 32, offset: 5152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1250, file: !1251, line: 840, baseType: !321, size: 64, offset: 5184)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1250, file: !1251, line: 849, baseType: !1249, size: 64, offset: 5248)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1250, file: !1251, line: 852, baseType: !1249, size: 64, offset: 5312)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1250, file: !1251, line: 857, baseType: !178, size: 128, offset: 5376)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1250, file: !1251, line: 858, baseType: !178, size: 128, offset: 5504)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1250, file: !1251, line: 859, baseType: !1249, size: 64, offset: 5632)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1250, file: !1251, line: 867, baseType: !178, size: 128, offset: 5696)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1250, file: !1251, line: 868, baseType: !178, size: 128, offset: 5824)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1250, file: !1251, line: 871, baseType: !1504, size: 64, offset: 5952)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1512, !1513, !1520, !1521}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1505, file: !51, line: 61, baseType: !200, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1505, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !51, line: 63, baseType: !230, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1505, file: !51, line: 65, baseType: !1511, size: 256, offset: 64)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 256, elements: !1194)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1505, file: !51, line: 66, baseType: !634, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1505, file: !51, line: 68, baseType: !1514, size: 128, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1515, line: 40, baseType: !1516)
!1515 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1515, line: 36, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !1515, line: 37, baseType: !230)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1516, file: !1515, line: 38, baseType: !178, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !51, line: 69, baseType: !362, size: 128, align: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1505, file: !51, line: 70, baseType: !1522, size: 128, offset: 640)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1523, size: 128, elements: !1399)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1523, file: !51, line: 55, baseType: !93, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1523, file: !51, line: 56, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1529, line: 20, size: 1088, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1548, !1551, !1552}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1528, file: !1529, line: 21, baseType: !196, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1528, file: !1529, line: 22, baseType: !1533, size: 192, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1534, line: 19, size: 192, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1538}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1533, file: !1534, line: 20, baseType: !787, size: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1533, file: !1534, line: 21, baseType: !5, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1533, file: !1534, line: 22, baseType: !5, size: 32, offset: 160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1528, file: !1529, line: 23, baseType: !362, size: 128, align: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1528, file: !1529, line: 24, baseType: !5, size: 32, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1528, file: !1529, line: 25, baseType: !1249, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1528, file: !1529, line: 26, baseType: !973, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1528, file: !1529, line: 27, baseType: !5, size: 32, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1528, file: !1529, line: 28, baseType: !1527, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1528, file: !1529, line: 32, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !771, line: 516, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1528, file: !1529, line: 33, baseType: !1549, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1529, line: 33, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1528, file: !1529, line: 34, baseType: !93, size: 32, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1528, file: !1529, line: 35, baseType: !1553, size: 192, offset: 896)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1554, line: 7, size: 192, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !{!1556, !1557, !1561}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1553, file: !1554, line: 8, baseType: !726, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1553, file: !1554, line: 9, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1554, line: 5, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1553, file: !1554, line: 10, baseType: !5, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1250, file: !1251, line: 872, baseType: !1563, size: 512, offset: 6016)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 512, elements: !1194)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1250, file: !1251, line: 873, baseType: !178, size: 128, offset: 6528)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1250, file: !1251, line: 874, baseType: !178, size: 128, offset: 6656)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1250, file: !1251, line: 876, baseType: !1567, size: 64, offset: 6784)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1569, line: 26, size: 192, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1568, file: !1569, line: 27, baseType: !5, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1568, file: !1569, line: 28, baseType: !1573, size: 128, offset: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1574, line: 43, size: 128, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1573, file: !1574, line: 44, baseType: !818)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1573, file: !1574, line: 45, baseType: !178, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1250, file: !1251, line: 879, baseType: !704, size: 64, offset: 6848)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1250, file: !1251, line: 882, baseType: !704, size: 64, offset: 6912)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1250, file: !1251, line: 884, baseType: !418, size: 64, offset: 6976)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1250, file: !1251, line: 885, baseType: !418, size: 64, offset: 7040)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1250, file: !1251, line: 890, baseType: !418, size: 64, offset: 7104)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1250, file: !1251, line: 891, baseType: !1584, size: 128, offset: 7168)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1251, line: 242, size: 128, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1584, file: !1251, line: 244, baseType: !418, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1584, file: !1251, line: 245, baseType: !418, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1584, file: !1251, line: 246, baseType: !818, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1250, file: !1251, line: 900, baseType: !321, size: 64, offset: 7296)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1250, file: !1251, line: 901, baseType: !321, size: 64, offset: 7360)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1250, file: !1251, line: 904, baseType: !418, size: 64, offset: 7424)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1250, file: !1251, line: 907, baseType: !418, size: 64, offset: 7488)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1250, file: !1251, line: 910, baseType: !321, size: 64, offset: 7552)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1250, file: !1251, line: 911, baseType: !321, size: 64, offset: 7616)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1250, file: !1251, line: 914, baseType: !1596, size: 640, offset: 7680)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1597, line: 123, size: 640, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1605, !1606}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1596, file: !1597, line: 124, baseType: !1600, size: 576)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1601, size: 576, elements: !272)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1597, line: 108, size: 192, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1601, file: !1597, line: 109, baseType: !418, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1601, file: !1597, line: 110, baseType: !1371, size: 128, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1596, file: !1597, line: 125, baseType: !5, size: 32, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1596, file: !1597, line: 126, baseType: !5, size: 32, offset: 608)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1250, file: !1251, line: 917, baseType: !1608, size: 192, offset: 8320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1597, line: 134, size: 192, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1608, file: !1597, line: 135, baseType: !362, size: 128, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1608, file: !1597, line: 136, baseType: !5, size: 32, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1250, file: !1251, line: 923, baseType: !1613, size: 64, offset: 8512)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1616, line: 111, size: 1280, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1637, !1638, !1639, !1640, !1641, !1642, !1749, !1750, !1751, !1752, !1778, !1779, !1789}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1615, file: !1616, line: 112, baseType: !205, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1615, file: !1616, line: 120, baseType: !432, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1615, file: !1616, line: 121, baseType: !440, size: 32, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1615, file: !1616, line: 122, baseType: !432, size: 32, offset: 96)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1615, file: !1616, line: 123, baseType: !440, size: 32, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1615, file: !1616, line: 124, baseType: !432, size: 32, offset: 160)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1615, file: !1616, line: 125, baseType: !440, size: 32, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1615, file: !1616, line: 126, baseType: !432, size: 32, offset: 224)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1615, file: !1616, line: 127, baseType: !440, size: 32, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1615, file: !1616, line: 128, baseType: !5, size: 32, offset: 288)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1615, file: !1616, line: 129, baseType: !1629, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1630, line: 26, baseType: !1631)
!1630 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1630, line: 24, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1631, file: !1630, line: 25, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 2)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1615, file: !1616, line: 130, baseType: !1629, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1615, file: !1616, line: 131, baseType: !1629, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1615, file: !1616, line: 132, baseType: !1629, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1615, file: !1616, line: 133, baseType: !1629, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1615, file: !1616, line: 135, baseType: !424, size: 8, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1615, file: !1616, line: 137, baseType: !1643, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1645, line: 189, size: 1664, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1648, !1651, !1656, !1657, !1660, !1661, !1666, !1667, !1668, !1669, !1671, !1672, !1673, !1674, !1675, !1713, !1734}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1644, file: !1645, line: 190, baseType: !200, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1644, file: !1645, line: 191, baseType: !1649, size: 32, offset: 32)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1645, line: 28, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !179, line: 98, baseType: !1472)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1645, line: 192, baseType: !1652, size: 192, offset: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1645, line: 192, size: 192, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1652, file: !1645, line: 193, baseType: !178, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1652, file: !1645, line: 194, baseType: !805, size: 192, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1644, file: !1645, line: 199, baseType: !812, size: 256, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1644, file: !1645, line: 200, baseType: !1658, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1645, line: 200, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1644, file: !1645, line: 201, baseType: !170, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1645, line: 202, baseType: !1662, size: 64, offset: 640)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1645, line: 202, size: 64, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1662, file: !1645, line: 203, baseType: !536, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1662, file: !1645, line: 204, baseType: !536, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1644, file: !1645, line: 206, baseType: !536, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1644, file: !1645, line: 207, baseType: !432, size: 32, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1644, file: !1645, line: 208, baseType: !440, size: 32, offset: 800)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1644, file: !1645, line: 209, baseType: !1670, size: 32, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1645, line: 31, baseType: !556)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1644, file: !1645, line: 210, baseType: !313, size: 16, offset: 864)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1644, file: !1645, line: 211, baseType: !313, size: 16, offset: 880)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1644, file: !1645, line: 215, baseType: !1238, size: 16, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !1645, line: 222, baseType: !321, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1645, line: 239, baseType: !1676, size: 320, offset: 1024)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1645, line: 239, size: 320, elements: !1677)
!1677 = !{!1678, !1705}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1676, file: !1645, line: 240, baseType: !1679, size: 320)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1645, line: 108, size: 320, elements: !1680)
!1680 = !{!1681, !1682, !1694, !1697, !1704}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1679, file: !1645, line: 110, baseType: !321, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1645, line: 111, baseType: !1683, size: 64, offset: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !1645, line: 111, size: 64, elements: !1684)
!1684 = !{!1685, !1693}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1645, line: 112, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1645, line: 112, size: 64, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1686, file: !1645, line: 114, baseType: !897, size: 16)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1686, file: !1645, line: 115, baseType: !1690, size: 48, offset: 16)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 48, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 6)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1683, file: !1645, line: 121, baseType: !321, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1679, file: !1645, line: 123, baseType: !1695, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1645, line: 96, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1679, file: !1645, line: 124, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1645, line: 102, size: 192, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1699, file: !1645, line: 103, baseType: !362, size: 128, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1699, file: !1645, line: 104, baseType: !200, size: 32, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1699, file: !1645, line: 105, baseType: !487, size: 8, offset: 160)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1679, file: !1645, line: 125, baseType: !218, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1645, line: 241, baseType: !1706, size: 320)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !1645, line: 241, size: 320, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1706, file: !1645, line: 242, baseType: !321, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1706, file: !1645, line: 243, baseType: !321, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1706, file: !1645, line: 244, baseType: !1695, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1706, file: !1645, line: 245, baseType: !1698, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1706, file: !1645, line: 246, baseType: !271, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1645, line: 254, baseType: !1714, size: 256, offset: 1344)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1645, line: 254, size: 256, elements: !1715)
!1715 = !{!1716, !1722}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1714, file: !1645, line: 255, baseType: !1717, size: 256)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1645, line: 128, size: 256, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1717, file: !1645, line: 129, baseType: !170, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1717, file: !1645, line: 130, baseType: !1721, size: 256)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !1194)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !1645, line: 256, baseType: !1723, size: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !1645, line: 256, size: 256, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1723, file: !1645, line: 258, baseType: !178, size: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1723, file: !1645, line: 259, baseType: !1727, size: 128, offset: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1728, line: 22, size: 128, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !{!1730, !1733}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1727, file: !1728, line: 23, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1728, line: 23, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1727, file: !1728, line: 24, baseType: !321, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1644, file: !1645, line: 274, baseType: !1735, size: 64, offset: 1600)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1645, line: 170, size: 192, elements: !1737)
!1737 = !{!1738, !1747, !1748}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1736, file: !1645, line: 171, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1645, line: 165, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!93, !1643, !1743, !1745, !1643}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1736, file: !1645, line: 172, baseType: !1643, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1736, file: !1645, line: 173, baseType: !1695, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1615, file: !1616, line: 138, baseType: !1643, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1615, file: !1616, line: 139, baseType: !1643, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1615, file: !1616, line: 140, baseType: !1643, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1615, file: !1616, line: 145, baseType: !1753, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1755, line: 13, size: 896, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1754, file: !1755, line: 14, baseType: !200, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1754, file: !1755, line: 15, baseType: !205, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1754, file: !1755, line: 16, baseType: !205, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1754, file: !1755, line: 21, baseType: !726, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1754, file: !1755, line: 27, baseType: !321, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1754, file: !1755, line: 28, baseType: !321, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1754, file: !1755, line: 29, baseType: !726, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1754, file: !1755, line: 32, baseType: !638, size: 128, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1754, file: !1755, line: 33, baseType: !432, size: 32, offset: 512)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1754, file: !1755, line: 37, baseType: !726, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1754, file: !1755, line: 44, baseType: !1768, size: 256, offset: 640)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1769, line: 15, size: 256, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !1769, line: 16, baseType: !818)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1768, file: !1769, line: 18, baseType: !93, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1768, file: !1769, line: 19, baseType: !93, size: 32, offset: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1768, file: !1769, line: 20, baseType: !93, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1768, file: !1769, line: 21, baseType: !93, size: 32, offset: 96)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1768, file: !1769, line: 22, baseType: !321, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1768, file: !1769, line: 23, baseType: !321, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1615, file: !1616, line: 146, baseType: !1546, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1615, file: !1616, line: 147, baseType: !1780, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1616, line: 25, size: 64, elements: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1781, file: !1616, line: 26, baseType: !205, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1781, file: !1616, line: 27, baseType: !93, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1781, file: !1616, line: 28, baseType: !1786, offset: 64)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, elements: !1787)
!1787 = !{!1788}
!1788 = !DISubrange(count: 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 149, baseType: !1790, size: 128, offset: 1152)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 149, size: 128, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1790, file: !1616, line: 150, baseType: !93, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1790, file: !1616, line: 151, baseType: !362, size: 128, align: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1250, file: !1251, line: 926, baseType: !1613, size: 64, offset: 8576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1250, file: !1251, line: 929, baseType: !1613, size: 64, offset: 8640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1250, file: !1251, line: 933, baseType: !1643, size: 64, offset: 8704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1250, file: !1251, line: 943, baseType: !1798, size: 128, offset: 8768)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 16)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1250, file: !1251, line: 945, baseType: !1802, size: 64, offset: 8896)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1251, line: 49, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1250, file: !1251, line: 956, baseType: !1805, size: 64, offset: 8960)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1251, line: 45, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1250, file: !1251, line: 959, baseType: !1808, size: 64, offset: 9024)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1251, line: 959, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1250, file: !1251, line: 962, baseType: !1811, size: 64, offset: 9088)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1251, line: 66, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1250, file: !1251, line: 966, baseType: !1814, size: 64, offset: 9152)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1816, line: 31, size: 576, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1817 = !{!1818, !1819, !1822, !1825, !1828, !1829, !1832, !1835, !1836}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1815, file: !1816, line: 32, baseType: !205, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1815, file: !1816, line: 33, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1816, line: 9, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1815, file: !1816, line: 34, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1816, line: 10, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1815, file: !1816, line: 35, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1816, line: 8, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1815, file: !1816, line: 36, baseType: !1527, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1815, file: !1816, line: 37, baseType: !1830, size: 64, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1645, line: 34, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1815, file: !1816, line: 38, baseType: !1833, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1816, line: 38, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1815, file: !1816, line: 39, baseType: !1833, size: 64, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1815, file: !1816, line: 40, baseType: !1837, size: 64, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1816, line: 12, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1250, file: !1251, line: 969, baseType: !1840, size: 64, offset: 9216)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1842, line: 82, size: 7296, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1879, !1888, !1889, !1891, !1892, !1893, !1896, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1926, !1927, !1934, !1935, !1936, !1937, !1938, !1939}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1841, file: !1842, line: 83, baseType: !200, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1841, file: !1842, line: 84, baseType: !205, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1841, file: !1842, line: 85, baseType: !93, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1841, file: !1842, line: 86, baseType: !178, size: 128, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1841, file: !1842, line: 88, baseType: !1514, size: 128, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1841, file: !1842, line: 91, baseType: !1249, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1841, file: !1842, line: 94, baseType: !1851, size: 192, offset: 448)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1852, line: 30, size: 192, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1851, file: !1852, line: 31, baseType: !178, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1851, file: !1852, line: 32, baseType: !1856, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1857, line: 25, baseType: !1858)
!1857 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1857, line: 23, size: 64, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1858, file: !1857, line: 24, baseType: !1398, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1841, file: !1842, line: 97, baseType: !634, size: 64, offset: 640)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1841, file: !1842, line: 100, baseType: !93, size: 32, offset: 704)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1841, file: !1842, line: 106, baseType: !93, size: 32, offset: 736)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1841, file: !1842, line: 107, baseType: !1249, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1841, file: !1842, line: 110, baseType: !93, size: 32, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 111, baseType: !5, size: 32, offset: 864)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1841, file: !1842, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1841, file: !1842, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1841, file: !1842, line: 128, baseType: !93, size: 32, offset: 928)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1841, file: !1842, line: 129, baseType: !178, size: 128, offset: 960)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1841, file: !1842, line: 132, baseType: !1320, size: 512, offset: 1088)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1841, file: !1842, line: 133, baseType: !1328, size: 64, offset: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1841, file: !1842, line: 140, baseType: !1874, size: 256, offset: 1664)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1875, size: 256, elements: !1635)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1842, line: 38, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1875, file: !1842, line: 39, baseType: !418, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1875, file: !1842, line: 40, baseType: !418, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1841, file: !1842, line: 146, baseType: !1880, size: 192, offset: 1920)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1842, line: 66, size: 192, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1880, file: !1842, line: 67, baseType: !1883, size: 192)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1842, line: 47, size: 192, elements: !1884)
!1884 = !{!1885, !1886, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1883, file: !1842, line: 48, baseType: !728, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1883, file: !1842, line: 49, baseType: !728, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1883, file: !1842, line: 50, baseType: !728, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1841, file: !1842, line: 150, baseType: !1596, size: 640, offset: 2112)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1841, file: !1842, line: 153, baseType: !1890, size: 256, offset: 2752)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 256, elements: !1194)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1841, file: !1842, line: 159, baseType: !1504, size: 64, offset: 3008)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1841, file: !1842, line: 162, baseType: !93, size: 32, offset: 3072)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1841, file: !1842, line: 164, baseType: !1894, size: 64, offset: 3136)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1842, line: 164, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1841, file: !1842, line: 175, baseType: !1897, size: 32, offset: 3200)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !385, line: 805, baseType: !1898)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 798, size: 32, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1898, file: !385, line: 803, baseType: !384, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1898, file: !385, line: 804, baseType: !230, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1841, file: !1842, line: 176, baseType: !418, size: 64, offset: 3264)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1841, file: !1842, line: 176, baseType: !418, size: 64, offset: 3328)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1841, file: !1842, line: 176, baseType: !418, size: 64, offset: 3392)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1841, file: !1842, line: 176, baseType: !418, size: 64, offset: 3456)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1841, file: !1842, line: 177, baseType: !418, size: 64, offset: 3520)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1841, file: !1842, line: 178, baseType: !418, size: 64, offset: 3584)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1841, file: !1842, line: 179, baseType: !1584, size: 128, offset: 3648)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1841, file: !1842, line: 180, baseType: !321, size: 64, offset: 3776)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1841, file: !1842, line: 180, baseType: !321, size: 64, offset: 3840)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1841, file: !1842, line: 180, baseType: !321, size: 64, offset: 3904)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1841, file: !1842, line: 180, baseType: !321, size: 64, offset: 3968)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1841, file: !1842, line: 181, baseType: !321, size: 64, offset: 4032)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1841, file: !1842, line: 181, baseType: !321, size: 64, offset: 4096)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1841, file: !1842, line: 181, baseType: !321, size: 64, offset: 4160)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1841, file: !1842, line: 181, baseType: !321, size: 64, offset: 4224)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1841, file: !1842, line: 182, baseType: !321, size: 64, offset: 4288)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1841, file: !1842, line: 182, baseType: !321, size: 64, offset: 4352)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1841, file: !1842, line: 182, baseType: !321, size: 64, offset: 4416)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1841, file: !1842, line: 182, baseType: !321, size: 64, offset: 4480)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1841, file: !1842, line: 183, baseType: !321, size: 64, offset: 4544)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1841, file: !1842, line: 183, baseType: !321, size: 64, offset: 4608)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1841, file: !1842, line: 184, baseType: !1924, offset: 4672)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1925, line: 12, elements: !244)
!1925 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1841, file: !1842, line: 192, baseType: !420, size: 64, offset: 4672)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1841, file: !1842, line: 203, baseType: !1928, size: 2048, offset: 4736)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 2048, elements: !1799)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1930, line: 43, size: 128, elements: !1931)
!1930 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1929, file: !1930, line: 44, baseType: !320, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1929, file: !1930, line: 45, baseType: !320, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1841, file: !1842, line: 220, baseType: !487, size: 8, offset: 6784)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1841, file: !1842, line: 221, baseType: !1238, size: 16, offset: 6800)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1841, file: !1842, line: 222, baseType: !1238, size: 16, offset: 6816)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1841, file: !1842, line: 224, baseType: !1013, size: 64, offset: 6848)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1841, file: !1842, line: 227, baseType: !722, size: 192, offset: 6912)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1841, file: !1842, line: 233, baseType: !722, size: 192, offset: 7104)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1250, file: !1251, line: 970, baseType: !1941, size: 64, offset: 9280)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1842, line: 20, size: 16576, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1942, file: !1842, line: 21, baseType: !230)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1942, file: !1842, line: 22, baseType: !200, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1942, file: !1842, line: 23, baseType: !1514, size: 128, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1942, file: !1842, line: 24, baseType: !1948, size: 16384, offset: 192)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1949, size: 16384, elements: !276)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1852, line: 49, size: 256, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1949, file: !1852, line: 50, baseType: !1952, size: 256)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1852, line: 35, size: 256, elements: !1953)
!1953 = !{!1954, !1961, !1962, !1968}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1952, file: !1852, line: 37, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1956, line: 19, baseType: !1957)
!1956 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1956, line: 18, baseType: !1959)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !93}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1952, file: !1852, line: 38, baseType: !321, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1952, file: !1852, line: 44, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1956, line: 22, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1956, line: 21, baseType: !1966)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1952, file: !1852, line: 46, baseType: !1856, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1250, file: !1251, line: 971, baseType: !1856, size: 64, offset: 9344)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1250, file: !1251, line: 972, baseType: !1856, size: 64, offset: 9408)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1250, file: !1251, line: 974, baseType: !1856, size: 64, offset: 9472)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1250, file: !1251, line: 975, baseType: !1851, size: 192, offset: 9536)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1250, file: !1251, line: 976, baseType: !321, size: 64, offset: 9728)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1250, file: !1251, line: 977, baseType: !318, size: 64, offset: 9792)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1250, file: !1251, line: 978, baseType: !5, size: 32, offset: 9856)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1250, file: !1251, line: 980, baseType: !365, size: 64, offset: 9920)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1250, file: !1251, line: 989, baseType: !1978, size: 128, offset: 9984)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1979, line: 35, size: 128, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981, !1982, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1978, file: !1979, line: 36, baseType: !93, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1978, file: !1979, line: 37, baseType: !205, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1978, file: !1979, line: 38, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1979, line: 23, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1250, file: !1251, line: 992, baseType: !418, size: 64, offset: 10112)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1250, file: !1251, line: 993, baseType: !418, size: 64, offset: 10176)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1250, file: !1251, line: 996, baseType: !230, offset: 10240)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1250, file: !1251, line: 999, baseType: !818, offset: 10240)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1250, file: !1251, line: 1001, baseType: !1991, size: 64, offset: 10240)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1251, line: 636, size: 64, elements: !1992)
!1992 = !{!1993}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1991, file: !1251, line: 637, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1250, file: !1251, line: 1005, baseType: !797, size: 128, offset: 10304)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1250, file: !1251, line: 1007, baseType: !1249, size: 64, offset: 10432)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1250, file: !1251, line: 1009, baseType: !1998, size: 64, offset: 10496)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1251, line: 1009, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1250, file: !1251, line: 1043, baseType: !170, size: 64, offset: 10560)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1250, file: !1251, line: 1046, baseType: !2002, size: 64, offset: 10624)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1251, line: 41, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1250, file: !1251, line: 1050, baseType: !2005, size: 64, offset: 10688)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1251, line: 42, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1250, file: !1251, line: 1054, baseType: !2008, size: 64, offset: 10752)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1251, line: 55, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1250, file: !1251, line: 1056, baseType: !2011, size: 64, offset: 10816)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1251, line: 40, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1250, file: !1251, line: 1058, baseType: !2014, size: 64, offset: 10880)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2016, line: 99, size: 704, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2043, !2044}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2015, file: !2016, line: 100, baseType: !726, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2015, file: !2016, line: 101, baseType: !205, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2015, file: !2016, line: 102, baseType: !205, size: 32, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2015, file: !2016, line: 105, baseType: !230, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2015, file: !2016, line: 107, baseType: !313, size: 16, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2015, file: !2016, line: 109, baseType: !787, size: 128, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2015, file: !2016, line: 110, baseType: !2025, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2016, line: 73, size: 448, elements: !2027)
!2027 = !{!2028, !2031, !2032, !2037, !2042}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2026, file: !2016, line: 74, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2016, line: 74, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2026, file: !2016, line: 75, baseType: !2014, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !2016, line: 83, baseType: !2033, size: 128, offset: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !2016, line: 83, size: 128, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2033, file: !2016, line: 84, baseType: !178, size: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2033, file: !2016, line: 85, baseType: !973, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !2016, line: 87, baseType: !2038, size: 128, offset: 256)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !2016, line: 87, size: 128, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2038, file: !2016, line: 88, baseType: !638, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2038, file: !2016, line: 89, baseType: !362, size: 128, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2026, file: !2016, line: 92, baseType: !5, size: 32, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2015, file: !2016, line: 111, baseType: !634, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2015, file: !2016, line: 113, baseType: !2045, size: 256, offset: 448)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2046, line: 102, size: 256, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2045, file: !2046, line: 103, baseType: !726, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2045, file: !2046, line: 104, baseType: !178, size: 128, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2045, file: !2046, line: 105, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2046, line: 21, baseType: !2052)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1250, file: !1251, line: 1061, baseType: !2057, size: 64, offset: 10944)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1251, line: 43, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1250, file: !1251, line: 1064, baseType: !321, size: 64, offset: 11008)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1250, file: !1251, line: 1065, baseType: !2061, size: 64, offset: 11072)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1852, line: 14, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1852, line: 12, size: 384, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !1852, line: 13, baseType: !2066, size: 384)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !1852, line: 13, size: 384, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2066, file: !1852, line: 13, baseType: !93, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2066, file: !1852, line: 13, baseType: !93, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2066, file: !1852, line: 13, baseType: !93, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2066, file: !1852, line: 13, baseType: !2072, size: 256, offset: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2073, line: 32, size: 256, elements: !2074)
!2073 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2074 = !{!2075, !2080, !2093, !2099, !2108, !2128, !2133}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2072, file: !2073, line: 37, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 34, size: 64, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2076, file: !2073, line: 35, baseType: !1493, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2076, file: !2073, line: 36, baseType: !438, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2072, file: !2073, line: 45, baseType: !2081, size: 192)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 40, size: 192, elements: !2082)
!2082 = !{!2083, !2085, !2086, !2092}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2081, file: !2073, line: 41, baseType: !2084, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !304, line: 95, baseType: !93)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2081, file: !2073, line: 42, baseType: !93, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2081, file: !2073, line: 43, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2073, line: 11, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2073, line: 8, size: 64, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2088, file: !2073, line: 9, baseType: !93, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2088, file: !2073, line: 10, baseType: !170, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2081, file: !2073, line: 44, baseType: !93, size: 32, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2072, file: !2073, line: 52, baseType: !2094, size: 128)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 48, size: 128, elements: !2095)
!2095 = !{!2096, !2097, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2094, file: !2073, line: 49, baseType: !1493, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2094, file: !2073, line: 50, baseType: !438, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2094, file: !2073, line: 51, baseType: !2087, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2072, file: !2073, line: 61, baseType: !2100, size: 256)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 55, size: 256, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2107}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2100, file: !2073, line: 56, baseType: !1493, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2100, file: !2073, line: 57, baseType: !438, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2100, file: !2073, line: 58, baseType: !93, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2100, file: !2073, line: 59, baseType: !2106, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !304, line: 94, baseType: !305)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2100, file: !2073, line: 60, baseType: !2106, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2072, file: !2073, line: 95, baseType: !2109, size: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 64, size: 256, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2109, file: !2073, line: 65, baseType: !170, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !2073, line: 77, baseType: !2113, size: 192, offset: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2109, file: !2073, line: 77, size: 192, elements: !2114)
!2114 = !{!2115, !2116, !2123}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2113, file: !2073, line: 82, baseType: !1238, size: 16)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2113, file: !2073, line: 88, baseType: !2117, size: 192)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2113, file: !2073, line: 84, size: 192, elements: !2118)
!2118 = !{!2119, !2121, !2122}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2117, file: !2073, line: 85, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1358)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2117, file: !2073, line: 86, baseType: !170, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2117, file: !2073, line: 87, baseType: !170, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2113, file: !2073, line: 93, baseType: !2124, size: 96)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2113, file: !2073, line: 90, size: 96, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2124, file: !2073, line: 91, baseType: !2120, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2124, file: !2073, line: 92, baseType: !414, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2072, file: !2073, line: 101, baseType: !2129, size: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 98, size: 128, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2129, file: !2073, line: 99, baseType: !306, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2129, file: !2073, line: 100, baseType: !93, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2072, file: !2073, line: 108, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2073, line: 104, size: 128, elements: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2134, file: !2073, line: 105, baseType: !170, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2134, file: !2073, line: 106, baseType: !93, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2134, file: !2073, line: 107, baseType: !5, size: 32, offset: 96)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1250, file: !1251, line: 1067, baseType: !1924, offset: 11136)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1250, file: !1251, line: 1099, baseType: !2141, size: 64, offset: 11136)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1251, line: 56, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1250, file: !1251, line: 1103, baseType: !178, size: 128, offset: 11200)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1250, file: !1251, line: 1104, baseType: !2145, size: 64, offset: 11328)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1251, line: 46, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1250, file: !1251, line: 1105, baseType: !722, size: 192, offset: 11392)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1250, file: !1251, line: 1106, baseType: !5, size: 32, offset: 11584)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1250, file: !1251, line: 1109, baseType: !2150, size: 128, offset: 11648)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 128, elements: !1635)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1251, line: 51, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1250, file: !1251, line: 1110, baseType: !722, size: 192, offset: 11776)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1250, file: !1251, line: 1111, baseType: !178, size: 128, offset: 11968)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1250, file: !1251, line: 1173, baseType: !2156, size: 64, offset: 12096)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2158, line: 62, size: 256, align: 256, elements: !2159)
!2158 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161, !2162, !2167}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2157, file: !2158, line: 75, baseType: !414, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2157, file: !2158, line: 90, baseType: !414, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2157, file: !2158, line: 124, baseType: !2163, size: 64, offset: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2157, file: !2158, line: 109, size: 64, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2163, file: !2158, line: 110, baseType: !419, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2163, file: !2158, line: 112, baseType: !419, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2157, file: !2158, line: 144, baseType: !414, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1250, file: !1251, line: 1174, baseType: !412, size: 32, offset: 12160)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1250, file: !1251, line: 1179, baseType: !321, size: 64, offset: 12224)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1250, file: !1251, line: 1182, baseType: !2171, size: 128, offset: 12288)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1190, line: 76, size: 128, elements: !2172)
!2172 = !{!2173, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2171, file: !1190, line: 85, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2175, line: 7, size: 64, elements: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2174, file: !2175, line: 12, baseType: !1395, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2171, file: !1190, line: 88, baseType: !487, size: 8, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2171, file: !1190, line: 95, baseType: !487, size: 8, offset: 72)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1251, line: 1184, baseType: !2181, size: 128, offset: 12416)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !1251, line: 1184, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2181, file: !1251, line: 1185, baseType: !200, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2181, file: !1251, line: 1186, baseType: !362, size: 128, align: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1250, file: !1251, line: 1190, baseType: !2186, size: 64, offset: 12544)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1251, line: 53, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1250, file: !1251, line: 1192, baseType: !2189, size: 128, offset: 12608)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1190, line: 64, size: 128, elements: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2189, file: !1190, line: 65, baseType: !769, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2189, file: !1190, line: 67, baseType: !414, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2189, file: !1190, line: 68, baseType: !414, size: 32, offset: 96)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1250, file: !1251, line: 1206, baseType: !93, size: 32, offset: 12736)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1250, file: !1251, line: 1207, baseType: !93, size: 32, offset: 12768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1250, file: !1251, line: 1209, baseType: !321, size: 64, offset: 12800)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1250, file: !1251, line: 1219, baseType: !418, size: 64, offset: 12864)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1250, file: !1251, line: 1220, baseType: !418, size: 64, offset: 12928)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1250, file: !1251, line: 1317, baseType: !93, size: 32, offset: 12992)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1250, file: !1251, line: 1319, baseType: !1249, size: 64, offset: 13056)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1250, file: !1251, line: 1322, baseType: !2202, size: 64, offset: 13120)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2204, line: 56, size: 512, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2203, file: !2204, line: 57, baseType: !2202, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2203, file: !2204, line: 58, baseType: !170, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2203, file: !2204, line: 59, baseType: !321, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2203, file: !2204, line: 60, baseType: !321, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2203, file: !2204, line: 61, baseType: !858, size: 64, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2203, file: !2204, line: 62, baseType: !5, size: 32, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2203, file: !2204, line: 63, baseType: !2213, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !179, line: 153, baseType: !418)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2203, file: !2204, line: 64, baseType: !2215, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1250, file: !1251, line: 1326, baseType: !200, size: 32, offset: 13184)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1250, file: !1251, line: 1342, baseType: !170, size: 64, offset: 13248)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1250, file: !1251, line: 1343, baseType: !419, size: 64, offset: 13312)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1250, file: !1251, line: 1344, baseType: !418, size: 64, offset: 13376)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1250, file: !1251, line: 1345, baseType: !419, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1250, file: !1251, line: 1346, baseType: !419, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1250, file: !1251, line: 1347, baseType: !419, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1250, file: !1251, line: 1348, baseType: !362, size: 128, align: 64, offset: 13504)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1250, file: !1251, line: 1358, baseType: !2226, size: 34816, offset: 13824)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2227, line: 485, size: 34816, elements: !2228)
!2227 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2258, !2259, !2260, !2261, !2262, !2263, !2266, !2267, !2268}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2226, file: !2227, line: 487, baseType: !2230, size: 192)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2231, size: 192, elements: !272)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2232, line: 16, size: 64, elements: !2233)
!2232 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2231, file: !2232, line: 17, baseType: !897, size: 16)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2231, file: !2232, line: 18, baseType: !897, size: 16, offset: 16)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2231, file: !2232, line: 19, baseType: !897, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2231, file: !2232, line: 19, baseType: !897, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2231, file: !2232, line: 19, baseType: !897, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2231, file: !2232, line: 19, baseType: !897, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2231, file: !2232, line: 19, baseType: !897, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2231, file: !2232, line: 20, baseType: !897, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2231, file: !2232, line: 20, baseType: !897, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2231, file: !2232, line: 20, baseType: !897, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2231, file: !2232, line: 20, baseType: !897, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2231, file: !2232, line: 20, baseType: !897, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2231, file: !2232, line: 20, baseType: !897, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2226, file: !2227, line: 491, baseType: !321, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2226, file: !2227, line: 495, baseType: !313, size: 16, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2226, file: !2227, line: 496, baseType: !313, size: 16, offset: 272)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2226, file: !2227, line: 497, baseType: !313, size: 16, offset: 288)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2226, file: !2227, line: 498, baseType: !313, size: 16, offset: 304)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2226, file: !2227, line: 502, baseType: !321, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2226, file: !2227, line: 503, baseType: !321, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2226, file: !2227, line: 514, baseType: !2255, size: 256, offset: 448)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2256, size: 256, elements: !1194)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2227, line: 483, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2226, file: !2227, line: 516, baseType: !321, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2226, file: !2227, line: 518, baseType: !321, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2226, file: !2227, line: 520, baseType: !321, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2226, file: !2227, line: 521, baseType: !321, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2226, file: !2227, line: 522, baseType: !321, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2226, file: !2227, line: 528, baseType: !2264, size: 64, offset: 1024)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2227, line: 10, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2226, file: !2227, line: 535, baseType: !321, size: 64, offset: 1088)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2226, file: !2227, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2226, file: !2227, line: 540, baseType: !2269, size: 33280, offset: 1536)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2270, line: 317, size: 33280, elements: !2271)
!2270 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2269, file: !2270, line: 330, baseType: !5, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2269, file: !2270, line: 337, baseType: !321, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2269, file: !2270, line: 348, baseType: !2275, size: 32768, offset: 512)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2270, line: 304, size: 32768, elements: !2276)
!2276 = !{!2277, !2292, !2331, !2381, !2394}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2275, file: !2270, line: 305, baseType: !2278, size: 896)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2270, line: 12, size: 896, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2291}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2278, file: !2270, line: 13, baseType: !412, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2278, file: !2270, line: 14, baseType: !412, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2278, file: !2270, line: 15, baseType: !412, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2278, file: !2270, line: 16, baseType: !412, size: 32, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2278, file: !2270, line: 17, baseType: !412, size: 32, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2278, file: !2270, line: 18, baseType: !412, size: 32, offset: 160)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2278, file: !2270, line: 19, baseType: !412, size: 32, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2278, file: !2270, line: 22, baseType: !2288, size: 640, offset: 224)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 640, elements: !2289)
!2289 = !{!2290}
!2290 = !DISubrange(count: 20)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2278, file: !2270, line: 25, baseType: !412, size: 32, offset: 864)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2275, file: !2270, line: 306, baseType: !2293, size: 4096, align: 128)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2270, line: 34, size: 4096, align: 128, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2314, !2315, !2316, !2320, !2322, !2326}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2293, file: !2270, line: 35, baseType: !897, size: 16)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2293, file: !2270, line: 36, baseType: !897, size: 16, offset: 16)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2293, file: !2270, line: 37, baseType: !897, size: 16, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2293, file: !2270, line: 38, baseType: !897, size: 16, offset: 48)
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !2270, line: 39, baseType: !2300, size: 128, offset: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !2270, line: 39, size: 128, elements: !2301)
!2301 = !{!2302, !2307}
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !2270, line: 40, baseType: !2303, size: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2300, file: !2270, line: 40, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2303, file: !2270, line: 41, baseType: !418, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2303, file: !2270, line: 42, baseType: !418, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !2270, line: 44, baseType: !2308, size: 128)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2300, file: !2270, line: 44, size: 128, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2308, file: !2270, line: 45, baseType: !412, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2308, file: !2270, line: 46, baseType: !412, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2308, file: !2270, line: 47, baseType: !412, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2308, file: !2270, line: 48, baseType: !412, size: 32, offset: 96)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2293, file: !2270, line: 51, baseType: !412, size: 32, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2293, file: !2270, line: 52, baseType: !412, size: 32, offset: 224)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2293, file: !2270, line: 55, baseType: !2317, size: 1024, offset: 256)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !2318)
!2318 = !{!2319}
!2319 = !DISubrange(count: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2293, file: !2270, line: 58, baseType: !2321, size: 2048, offset: 1280)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !276)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2293, file: !2270, line: 60, baseType: !2323, size: 384, offset: 3328)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 12)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !2270, line: 62, baseType: !2327, size: 384, offset: 3712)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !2270, line: 62, size: 384, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2327, file: !2270, line: 63, baseType: !2323, size: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2327, file: !2270, line: 64, baseType: !2323, size: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2275, file: !2270, line: 307, baseType: !2332, size: 1088)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2270, line: 79, size: 1088, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2380}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2332, file: !2270, line: 80, baseType: !412, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2332, file: !2270, line: 81, baseType: !412, size: 32, offset: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2332, file: !2270, line: 82, baseType: !412, size: 32, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2332, file: !2270, line: 83, baseType: !412, size: 32, offset: 96)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2332, file: !2270, line: 84, baseType: !412, size: 32, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2332, file: !2270, line: 85, baseType: !412, size: 32, offset: 160)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2332, file: !2270, line: 86, baseType: !412, size: 32, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2332, file: !2270, line: 88, baseType: !2288, size: 640, offset: 224)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2332, file: !2270, line: 89, baseType: !1380, size: 8, offset: 864)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2332, file: !2270, line: 90, baseType: !1380, size: 8, offset: 872)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2332, file: !2270, line: 91, baseType: !1380, size: 8, offset: 880)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2332, file: !2270, line: 92, baseType: !1380, size: 8, offset: 888)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2332, file: !2270, line: 93, baseType: !1380, size: 8, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2332, file: !2270, line: 94, baseType: !1380, size: 8, offset: 904)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2332, file: !2270, line: 95, baseType: !2349, size: 64, offset: 960)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2351, line: 11, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2350, file: !2351, line: 12, baseType: !306, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2350, file: !2351, line: 13, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2357, line: 56, size: 1344, elements: !2358)
!2357 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2356, file: !2357, line: 61, baseType: !321, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2356, file: !2357, line: 62, baseType: !321, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2356, file: !2357, line: 63, baseType: !321, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2356, file: !2357, line: 64, baseType: !321, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2356, file: !2357, line: 65, baseType: !321, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2356, file: !2357, line: 66, baseType: !321, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2356, file: !2357, line: 68, baseType: !321, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2356, file: !2357, line: 69, baseType: !321, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2356, file: !2357, line: 70, baseType: !321, size: 64, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2356, file: !2357, line: 71, baseType: !321, size: 64, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2356, file: !2357, line: 72, baseType: !321, size: 64, offset: 640)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2356, file: !2357, line: 73, baseType: !321, size: 64, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2356, file: !2357, line: 74, baseType: !321, size: 64, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2356, file: !2357, line: 75, baseType: !321, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2356, file: !2357, line: 76, baseType: !321, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2356, file: !2357, line: 81, baseType: !321, size: 64, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2356, file: !2357, line: 83, baseType: !321, size: 64, offset: 1024)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2356, file: !2357, line: 84, baseType: !321, size: 64, offset: 1088)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2356, file: !2357, line: 85, baseType: !321, size: 64, offset: 1152)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2356, file: !2357, line: 86, baseType: !321, size: 64, offset: 1216)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2356, file: !2357, line: 87, baseType: !321, size: 64, offset: 1280)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2332, file: !2270, line: 96, baseType: !412, size: 32, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2275, file: !2270, line: 308, baseType: !2382, size: 4608, align: 512)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2270, line: 289, size: 4608, align: 512, elements: !2383)
!2383 = !{!2384, !2385, !2392}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2382, file: !2270, line: 290, baseType: !2293, size: 4096, align: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2382, file: !2270, line: 291, baseType: !2386, size: 512, offset: 4096)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2270, line: 268, size: 512, elements: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2386, file: !2270, line: 269, baseType: !418, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2386, file: !2270, line: 270, baseType: !418, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2386, file: !2270, line: 271, baseType: !2391, size: 384, offset: 128)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !1691)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2382, file: !2270, line: 292, baseType: !2393, offset: 4608)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, elements: !1787)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2275, file: !2270, line: 309, baseType: !2395, size: 32768)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 32768, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: 4096)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1246, file: !771, line: 378, baseType: !2399, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1242, file: !771, line: 384, baseType: !1568, size: 192, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1017, file: !771, line: 500, baseType: !230, offset: 6656)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1017, file: !771, line: 501, baseType: !2403, size: 64, offset: 6656)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !771, line: 387, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1017, file: !771, line: 516, baseType: !1546, size: 64, offset: 6720)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1017, file: !771, line: 519, baseType: !349, size: 64, offset: 6784)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1017, file: !771, line: 521, baseType: !2408, size: 64, offset: 6848)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !771, line: 521, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1017, file: !771, line: 545, baseType: !205, size: 32, offset: 6912)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1017, file: !771, line: 548, baseType: !487, size: 8, offset: 6944)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1017, file: !771, line: 550, baseType: !2413, offset: 6952)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2414, line: 142, elements: !244)
!2414 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1017, file: !771, line: 554, baseType: !2045, size: 256, offset: 6976)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1017, file: !771, line: 557, baseType: !412, size: 32, offset: 7232)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1014, file: !771, line: 565, baseType: !2418, offset: 7296)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, elements: !2419)
!2419 = !{!2420}
!2420 = !DISubrange(count: -1)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1010, file: !771, line: 151, baseType: !205, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1002, file: !771, line: 156, baseType: !230, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 159, baseType: !2424, size: 128)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 159, size: 128, elements: !2425)
!2425 = !{!2426, !2490}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2424, file: !771, line: 161, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2429)
!2429 = !{!2430, !2440, !2461, !2462, !2463, !2464, !2465, !2477, !2478, !2479}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2428, file: !29, line: 111, baseType: !2431, size: 384)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2432)
!2432 = !{!2433, !2435, !2436, !2437, !2438, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2431, file: !29, line: 20, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2431, file: !29, line: 21, baseType: !2434, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2431, file: !29, line: 22, baseType: !2434, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2431, file: !29, line: 23, baseType: !321, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2431, file: !29, line: 24, baseType: !321, size: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2431, file: !29, line: 25, baseType: !321, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2428, file: !29, line: 112, baseType: !2441, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2443, line: 105, size: 128, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2442, file: !2443, line: 110, baseType: !321, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2442, file: !2443, line: 118, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2443, line: 95, size: 448, elements: !2449)
!2449 = !{!2450, !2451, !2456, !2457, !2458, !2459, !2460}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2448, file: !2443, line: 96, baseType: !726, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2448, file: !2443, line: 97, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2443, line: 60, baseType: !2454)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2441}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2448, file: !2443, line: 98, baseType: !2452, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2448, file: !2443, line: 99, baseType: !487, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2448, file: !2443, line: 100, baseType: !487, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2448, file: !2443, line: 101, baseType: !362, size: 128, align: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2448, file: !2443, line: 102, baseType: !2441, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2428, file: !29, line: 113, baseType: !2442, size: 128, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2428, file: !29, line: 114, baseType: !1568, size: 192, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2428, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2428, file: !29, line: 117, baseType: !2466, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2469)
!2469 = !{!2470, !2471, !2475, !2476}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2468, file: !29, line: 73, baseType: !878, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2468, file: !29, line: 78, baseType: !2472, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !2427}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2468, file: !29, line: 83, baseType: !2472, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2468, file: !29, line: 89, baseType: !1066, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2428, file: !29, line: 118, baseType: !170, size: 64, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2428, file: !29, line: 119, baseType: !93, size: 32, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !29, line: 120, baseType: !2480, size: 128, offset: 1024)
!2480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !29, line: 120, size: 128, elements: !2481)
!2481 = !{!2482, !2488}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2480, file: !29, line: 121, baseType: !2483, size: 128)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2484, line: 6, size: 128, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2483, file: !2484, line: 7, baseType: !418, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2483, file: !2484, line: 8, baseType: !418, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2480, file: !29, line: 122, baseType: !2489)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, elements: !1787)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2424, file: !771, line: 162, baseType: !170, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !775, file: !771, line: 176, baseType: !362, size: 128, align: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 179, baseType: !2493, size: 32, offset: 384)
!2493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 179, size: 32, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2493, file: !771, line: 184, baseType: !205, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2493, file: !771, line: 192, baseType: !5, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2493, file: !771, line: 194, baseType: !5, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2493, file: !771, line: 195, baseType: !93, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !770, file: !771, line: 199, baseType: !205, size: 32, offset: 416)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !656, file: !42, line: 1964, baseType: !2501, size: 64, offset: 1344)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!306, !596, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2506, line: 12, size: 256, elements: !2507)
!2506 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !{!2508, !2509, !2510, !2511, !2512}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2505, file: !2506, line: 13, baseType: !792, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2505, file: !2506, line: 16, baseType: !93, size: 32, offset: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2505, file: !2506, line: 23, baseType: !321, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2505, file: !2506, line: 30, baseType: !321, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2505, file: !2506, line: 33, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !771, line: 27, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !656, file: !42, line: 1966, baseType: !2501, size: 64, offset: 1408)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !597, file: !42, line: 1424, baseType: !2517, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2520)
!2520 = !{!2521, !2567, !2571, !2575, !2576, !2577, !2578, !2579, !2584, !2589, !2593}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2519, file: !36, line: 323, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!93, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2552, !2553, !2554}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2526, file: !36, line: 295, baseType: !638, size: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2526, file: !36, line: 296, baseType: !178, size: 128, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2526, file: !36, line: 297, baseType: !178, size: 128, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2526, file: !36, line: 298, baseType: !178, size: 128, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2526, file: !36, line: 299, baseType: !722, size: 192, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2526, file: !36, line: 300, baseType: !230, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2526, file: !36, line: 301, baseType: !205, size: 32, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2526, file: !36, line: 302, baseType: !596, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2526, file: !36, line: 303, baseType: !2537, size: 64, offset: 832)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2538)
!2538 = !{!2539, !2551}
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !36, line: 69, baseType: !2540, size: 32)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2537, file: !36, line: 69, size: 32, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2540, file: !36, line: 70, baseType: !432, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2540, file: !36, line: 71, baseType: !440, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2540, file: !36, line: 72, baseType: !2545, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2546, line: 24, baseType: !2547)
!2546 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2546, line: 22, size: 32, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2547, file: !2546, line: 23, baseType: !2550, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2546, line: 20, baseType: !438)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2537, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2526, file: !36, line: 304, baseType: !528, size: 64, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2526, file: !36, line: 305, baseType: !321, size: 64, offset: 960)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2526, file: !36, line: 306, baseType: !2555, size: 576, offset: 1024)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2556)
!2556 = !{!2557, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2555, file: !36, line: 206, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !530)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2555, file: !36, line: 207, baseType: !2558, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2555, file: !36, line: 208, baseType: !2558, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2555, file: !36, line: 209, baseType: !2558, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2555, file: !36, line: 210, baseType: !2558, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2555, file: !36, line: 211, baseType: !2558, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2555, file: !36, line: 212, baseType: !2558, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2555, file: !36, line: 213, baseType: !536, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2555, file: !36, line: 214, baseType: !536, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2519, file: !36, line: 324, baseType: !2568, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!2525, !596, !93}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2519, file: !36, line: 325, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2525}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2519, file: !36, line: 326, baseType: !2522, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2519, file: !36, line: 327, baseType: !2522, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2519, file: !36, line: 328, baseType: !2522, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2519, file: !36, line: 329, baseType: !684, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2519, file: !36, line: 332, baseType: !2580, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!2583, !426}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2519, file: !36, line: 333, baseType: !2585, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!93, !426, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2519, file: !36, line: 335, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!93, !426, !2583}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2519, file: !36, line: 337, baseType: !2594, size: 64, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!93, !596, !2597}
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !597, file: !42, line: 1425, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2602)
!2602 = !{!2603, !2607, !2608, !2612, !2613, !2614, !2629, !2652, !2656, !2657, !2680}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2601, file: !36, line: 429, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!93, !596, !93, !93, !546}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2601, file: !36, line: 430, baseType: !684, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2601, file: !36, line: 431, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!93, !596, !5}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2601, file: !36, line: 432, baseType: !2609, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2601, file: !36, line: 433, baseType: !684, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2601, file: !36, line: 434, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!93, !596, !93, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2619, file: !36, line: 416, baseType: !93, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2619, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2619, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2619, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2619, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2619, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2619, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2619, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2601, file: !36, line: 435, baseType: !2630, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!93, !596, !2537, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2634, file: !36, line: 344, baseType: !93, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2634, file: !36, line: 345, baseType: !418, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2634, file: !36, line: 346, baseType: !418, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2634, file: !36, line: 347, baseType: !418, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2634, file: !36, line: 348, baseType: !418, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2634, file: !36, line: 349, baseType: !418, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2634, file: !36, line: 350, baseType: !418, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2634, file: !36, line: 351, baseType: !732, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2634, file: !36, line: 353, baseType: !732, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2634, file: !36, line: 354, baseType: !93, size: 32, offset: 576)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2634, file: !36, line: 355, baseType: !93, size: 32, offset: 608)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2634, file: !36, line: 356, baseType: !418, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2634, file: !36, line: 357, baseType: !418, size: 64, offset: 704)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2634, file: !36, line: 358, baseType: !418, size: 64, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2634, file: !36, line: 359, baseType: !732, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2634, file: !36, line: 360, baseType: !93, size: 32, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2601, file: !36, line: 436, baseType: !2653, size: 64, offset: 448)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!93, !596, !2597, !2633}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2601, file: !36, line: 438, baseType: !2630, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2601, file: !36, line: 439, baseType: !2658, size: 64, offset: 576)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!93, !596, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2662, file: !36, line: 410, baseType: !5, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2662, file: !36, line: 411, baseType: !2666, size: 1344, offset: 64)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 1344, elements: !272)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2679}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2667, file: !36, line: 396, baseType: !5, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2667, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2667, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2667, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2667, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2667, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2667, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2667, file: !36, line: 404, baseType: !420, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2667, file: !36, line: 405, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !179, line: 126, baseType: !418)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2667, file: !36, line: 406, baseType: !2678, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2601, file: !36, line: 440, baseType: !2609, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !597, file: !42, line: 1426, baseType: !2682, size: 64, offset: 576)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !597, file: !42, line: 1427, baseType: !321, size: 64, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !597, file: !42, line: 1428, baseType: !321, size: 64, offset: 704)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !597, file: !42, line: 1429, baseType: !321, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !597, file: !42, line: 1430, baseType: !379, size: 64, offset: 832)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !597, file: !42, line: 1431, baseType: !812, size: 256, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !597, file: !42, line: 1432, baseType: !93, size: 32, offset: 1152)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !597, file: !42, line: 1433, baseType: !205, size: 32, offset: 1184)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !597, file: !42, line: 1437, baseType: !2693, size: 64, offset: 1216)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !597, file: !42, line: 1449, baseType: !2698, size: 64, offset: 1280)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !395, line: 34, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2698, file: !395, line: 35, baseType: !398, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !597, file: !42, line: 1450, baseType: !178, size: 128, offset: 1344)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !597, file: !42, line: 1451, baseType: !2703, size: 64, offset: 1472)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !597, file: !42, line: 1452, baseType: !2011, size: 64, offset: 1536)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !597, file: !42, line: 1453, baseType: !2707, size: 64, offset: 1600)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !597, file: !42, line: 1454, baseType: !638, size: 128, offset: 1664)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !597, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !597, file: !42, line: 1456, baseType: !2712, size: 2432, offset: 1856)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2718, !2750}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2712, file: !36, line: 519, baseType: !5, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2712, file: !36, line: 520, baseType: !812, size: 256, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2712, file: !36, line: 521, baseType: !2717, size: 192, offset: 320)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 192, elements: !272)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2712, file: !36, line: 522, baseType: !2719, size: 1728, offset: 512)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2720, size: 1728, elements: !272)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2721)
!2721 = !{!2722, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2720, file: !36, line: 223, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2725)
!2725 = !{!2726, !2727, !2740, !2741}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2724, file: !36, line: 444, baseType: !93, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2724, file: !36, line: 445, baseType: !2728, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2730)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2730, file: !36, line: 311, baseType: !684, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2730, file: !36, line: 312, baseType: !684, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2730, file: !36, line: 313, baseType: !684, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2730, file: !36, line: 314, baseType: !684, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2730, file: !36, line: 315, baseType: !2522, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2730, file: !36, line: 316, baseType: !2522, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2730, file: !36, line: 317, baseType: !2522, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2730, file: !36, line: 318, baseType: !2594, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2724, file: !36, line: 446, baseType: !629, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2724, file: !36, line: 447, baseType: !2723, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2720, file: !36, line: 224, baseType: !93, size: 32, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2720, file: !36, line: 226, baseType: !178, size: 128, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2720, file: !36, line: 227, baseType: !321, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2720, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2720, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2720, file: !36, line: 230, baseType: !2558, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2720, file: !36, line: 231, baseType: !2558, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2720, file: !36, line: 232, baseType: !170, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2712, file: !36, line: 523, baseType: !2751, size: 192, offset: 2240)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2728, size: 192, elements: !272)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !597, file: !42, line: 1458, baseType: !2753, size: 2112, offset: 4288)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2754)
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2753, file: !42, line: 1411, baseType: !93, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2753, file: !42, line: 1412, baseType: !1514, size: 128, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2753, file: !42, line: 1413, baseType: !2758, size: 1920, offset: 192)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2759, size: 1920, elements: !272)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2760, line: 12, size: 640, elements: !2761)
!2760 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2761 = !{!2762, !2770, !2772, !2777, !2778}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2759, file: !2760, line: 13, baseType: !2763, size: 320)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2764, line: 17, size: 320, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766, !2767, !2768, !2769}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2763, file: !2764, line: 18, baseType: !93, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2763, file: !2764, line: 19, baseType: !93, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2763, file: !2764, line: 20, baseType: !1514, size: 128, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2763, file: !2764, line: 22, baseType: !362, size: 128, align: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2759, file: !2760, line: 14, baseType: !2771, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2759, file: !2760, line: 15, baseType: !2773, size: 64, offset: 384)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2774, line: 16, size: 64, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2775 = !{!2776}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2773, file: !2774, line: 17, baseType: !1249, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2759, file: !2760, line: 16, baseType: !1514, size: 128, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2759, file: !2760, line: 17, baseType: !205, size: 32, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !597, file: !42, line: 1465, baseType: !170, size: 64, offset: 6400)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !597, file: !42, line: 1468, baseType: !412, size: 32, offset: 6464)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !597, file: !42, line: 1470, baseType: !536, size: 64, offset: 6528)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !597, file: !42, line: 1471, baseType: !536, size: 64, offset: 6592)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !597, file: !42, line: 1473, baseType: !414, size: 32, offset: 6656)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !597, file: !42, line: 1474, baseType: !2785, size: 64, offset: 6720)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !597, file: !42, line: 1477, baseType: !2788, size: 256, offset: 6784)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !2318)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !597, file: !42, line: 1478, baseType: !2790, size: 128, offset: 7040)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2791, line: 18, baseType: !2792)
!2791 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2791, line: 16, size: 128, elements: !2793)
!2793 = !{!2794}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2792, file: !2791, line: 17, baseType: !2795, size: 128)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 128, elements: !1799)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !597, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !597, file: !42, line: 1481, baseType: !2798, size: 32, offset: 7200)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !179, line: 150, baseType: !5)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !597, file: !42, line: 1487, baseType: !722, size: 192, offset: 7232)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !597, file: !42, line: 1493, baseType: !218, size: 64, offset: 7424)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !597, file: !42, line: 1495, baseType: !2802, size: 64, offset: 7488)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2804)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !377, line: 135, size: 1024, align: 512, elements: !2805)
!2805 = !{!2806, !2810, !2811, !2818, !2824, !2828, !2832, !2836, !2837, !2841, !2845, !2850, !2854}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2804, file: !377, line: 136, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!93, !379, !5}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2804, file: !377, line: 137, baseType: !2807, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2804, file: !377, line: 138, baseType: !2812, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!93, !2815, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2804, file: !377, line: 139, baseType: !2819, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!93, !2815, !5, !218, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2804, file: !377, line: 141, baseType: !2825, size: 64, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!93, !2815}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2804, file: !377, line: 142, baseType: !2829, size: 64, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!93, !379}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2804, file: !377, line: 143, baseType: !2833, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !379}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2804, file: !377, line: 144, baseType: !2833, size: 64, offset: 448)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2804, file: !377, line: 145, baseType: !2838, size: 64, offset: 512)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !379, !426}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2804, file: !377, line: 146, baseType: !2842, size: 64, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!271, !379, !271, !93}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2804, file: !377, line: 147, baseType: !2846, size: 64, offset: 640)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!375, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2804, file: !377, line: 148, baseType: !2851, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!93, !546, !487}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2804, file: !377, line: 149, baseType: !2855, size: 64, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!379, !379, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !597, file: !42, line: 1500, baseType: !93, size: 32, offset: 7552)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !597, file: !42, line: 1502, baseType: !2862, size: 448, offset: 7616)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2506, line: 60, size: 448, elements: !2863)
!2863 = !{!2864, !2869, !2870, !2871, !2872, !2873, !2874}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2862, file: !2506, line: 61, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!321, !2868, !2504}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2862, file: !2506, line: 63, baseType: !2865, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2862, file: !2506, line: 66, baseType: !306, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2862, file: !2506, line: 67, baseType: !93, size: 32, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2862, file: !2506, line: 68, baseType: !5, size: 32, offset: 224)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2862, file: !2506, line: 71, baseType: !178, size: 128, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2862, file: !2506, line: 77, baseType: !2875, size: 64, offset: 384)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !597, file: !42, line: 1505, baseType: !726, size: 64, offset: 8064)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !597, file: !42, line: 1508, baseType: !726, size: 64, offset: 8128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !597, file: !42, line: 1511, baseType: !93, size: 32, offset: 8192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !597, file: !42, line: 1514, baseType: !947, size: 32, offset: 8224)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !597, file: !42, line: 1517, baseType: !2881, size: 64, offset: 8256)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2046, line: 18, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !597, file: !42, line: 1518, baseType: !634, size: 64, offset: 8320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !597, file: !42, line: 1525, baseType: !1546, size: 64, offset: 8384)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !597, file: !42, line: 1532, baseType: !2886, size: 64, offset: 8448)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2887, line: 52, size: 64, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2886, file: !2887, line: 53, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2887, line: 40, size: 256, elements: !2892)
!2892 = !{!2893, !2894, !2899}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2891, file: !2887, line: 42, baseType: !230)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2891, file: !2887, line: 44, baseType: !2895, size: 192)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2887, line: 28, size: 192, elements: !2896)
!2896 = !{!2897, !2898}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2895, file: !2887, line: 29, baseType: !178, size: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2895, file: !2887, line: 31, baseType: !306, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2891, file: !2887, line: 49, baseType: !306, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !597, file: !42, line: 1533, baseType: !2886, size: 64, offset: 8512)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !597, file: !42, line: 1534, baseType: !362, size: 128, align: 64, offset: 8576)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !597, file: !42, line: 1535, baseType: !2045, size: 256, offset: 8704)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !597, file: !42, line: 1537, baseType: !722, size: 192, offset: 8960)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !597, file: !42, line: 1542, baseType: !93, size: 32, offset: 9152)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !597, file: !42, line: 1545, baseType: !230, offset: 9184)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !597, file: !42, line: 1546, baseType: !178, size: 128, offset: 9216)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !597, file: !42, line: 1548, baseType: !230, offset: 9344)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !597, file: !42, line: 1549, baseType: !178, size: 128, offset: 9344)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !427, file: !42, line: 624, baseType: !782, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !427, file: !42, line: 631, baseType: !321, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !42, line: 639, baseType: !2912, size: 32, offset: 384)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !42, line: 639, size: 32, elements: !2913)
!2913 = !{!2914, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2912, file: !42, line: 640, baseType: !2915, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2912, file: !42, line: 641, baseType: !5, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !427, file: !42, line: 643, baseType: !510, size: 32, offset: 416)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !427, file: !42, line: 644, baseType: !528, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !427, file: !42, line: 645, baseType: !532, size: 128, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !427, file: !42, line: 646, baseType: !532, size: 128, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !427, file: !42, line: 647, baseType: !532, size: 128, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !427, file: !42, line: 648, baseType: !230, offset: 896)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !427, file: !42, line: 649, baseType: !313, size: 16, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !427, file: !42, line: 650, baseType: !1380, size: 8, offset: 912)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !427, file: !42, line: 651, baseType: !1380, size: 8, offset: 920)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !427, file: !42, line: 652, baseType: !2678, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !427, file: !42, line: 659, baseType: !321, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !427, file: !42, line: 660, baseType: !812, size: 256, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !427, file: !42, line: 662, baseType: !321, size: 64, offset: 1344)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !427, file: !42, line: 663, baseType: !321, size: 64, offset: 1408)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !427, file: !42, line: 665, baseType: !638, size: 128, offset: 1472)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !427, file: !42, line: 666, baseType: !178, size: 128, offset: 1600)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !427, file: !42, line: 675, baseType: !178, size: 128, offset: 1728)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !427, file: !42, line: 676, baseType: !178, size: 128, offset: 1856)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !427, file: !42, line: 677, baseType: !178, size: 128, offset: 1984)
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !42, line: 678, baseType: !2937, size: 128, offset: 2112)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !42, line: 678, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2937, file: !42, line: 679, baseType: !634, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2937, file: !42, line: 680, baseType: !362, size: 128, align: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !427, file: !42, line: 682, baseType: !728, size: 64, offset: 2240)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !427, file: !42, line: 683, baseType: !728, size: 64, offset: 2304)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !427, file: !42, line: 684, baseType: !205, size: 32, offset: 2368)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !427, file: !42, line: 685, baseType: !205, size: 32, offset: 2400)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !427, file: !42, line: 686, baseType: !205, size: 32, offset: 2432)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !427, file: !42, line: 688, baseType: !205, size: 32, offset: 2464)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !42, line: 690, baseType: !2948, size: 64, offset: 2496)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !42, line: 690, size: 64, elements: !2949)
!2949 = !{!2950, !3181}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2948, file: !42, line: 691, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2953)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2954)
!2954 = !{!2955, !2956, !2960, !2964, !2968, !2969, !2970, !2974, !2987, !2988, !3005, !3009, !3010, !3014, !3015, !3019, !3024, !3025, !3029, !3033, !3141, !3145, !3146, !3150, !3151, !3155, !3159, !3164, !3168, !3172, !3176, !3180}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2953, file: !42, line: 1823, baseType: !629, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2953, file: !42, line: 1824, baseType: !2957, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!528, !349, !528, !93}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2953, file: !42, line: 1825, baseType: !2961, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!302, !349, !271, !318, !744}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2953, file: !42, line: 1826, baseType: !2965, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!302, !349, !218, !318, !744}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2953, file: !42, line: 1827, baseType: !882, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2953, file: !42, line: 1828, baseType: !882, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2953, file: !42, line: 1829, baseType: !2971, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!93, !885, !487}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2953, file: !42, line: 1830, baseType: !2975, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!93, !349, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2980)
!2980 = !{!2981, !2986}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2979, file: !42, line: 1777, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2983)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!93, !2978, !218, !93, !528, !418, !5}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2979, file: !42, line: 1778, baseType: !528, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2953, file: !42, line: 1831, baseType: !2975, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2953, file: !42, line: 1832, baseType: !2989, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!2992, !349, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2993, line: 52, baseType: !5)
!2993 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2996, line: 43, size: 128, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !{!2998, !3004}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2995, file: !2996, line: 44, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2996, line: 37, baseType: !3000)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !349, !3003, !2994}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2995, file: !2996, line: 45, baseType: !2992, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2953, file: !42, line: 1833, baseType: !3006, size: 64, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!306, !349, !5, !321}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2953, file: !42, line: 1834, baseType: !3006, size: 64, offset: 704)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2953, file: !42, line: 1835, baseType: !3011, size: 64, offset: 768)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!93, !349, !1020}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2953, file: !42, line: 1836, baseType: !321, size: 64, offset: 832)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2953, file: !42, line: 1837, baseType: !3016, size: 64, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!93, !426, !349}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2953, file: !42, line: 1838, baseType: !3020, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!93, !349, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !170)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2953, file: !42, line: 1839, baseType: !3016, size: 64, offset: 1024)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2953, file: !42, line: 1840, baseType: !3026, size: 64, offset: 1088)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!93, !349, !528, !528, !93}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2953, file: !42, line: 1841, baseType: !3030, size: 64, offset: 1152)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!93, !93, !349, !93}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2953, file: !42, line: 1842, baseType: !3034, size: 64, offset: 1216)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!93, !349, !93, !3037}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3071, !3072, !3073, !3086, !3117}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3038, file: !42, line: 1063, baseType: !3037, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3038, file: !42, line: 1064, baseType: !178, size: 128, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3038, file: !42, line: 1065, baseType: !638, size: 128, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3038, file: !42, line: 1066, baseType: !178, size: 128, offset: 320)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3038, file: !42, line: 1069, baseType: !178, size: 128, offset: 448)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3038, file: !42, line: 1072, baseType: !3023, size: 64, offset: 576)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3038, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3038, file: !42, line: 1074, baseType: !424, size: 8, offset: 672)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3038, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3038, file: !42, line: 1076, baseType: !93, size: 32, offset: 736)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3038, file: !42, line: 1077, baseType: !1514, size: 128, offset: 768)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3038, file: !42, line: 1078, baseType: !349, size: 64, offset: 896)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3038, file: !42, line: 1079, baseType: !528, size: 64, offset: 960)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3038, file: !42, line: 1080, baseType: !528, size: 64, offset: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3038, file: !42, line: 1082, baseType: !3055, size: 64, offset: 1088)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !3057)
!3057 = !{!3058, !3066, !3067, !3068, !3069, !3070}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3056, file: !42, line: 1315, baseType: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3060, line: 20, baseType: !3061)
!3060 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3060, line: 11, elements: !3062)
!3062 = !{!3063}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3061, file: !3060, line: 12, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !242, line: 33, baseType: !3065)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 31, elements: !244)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3056, file: !42, line: 1316, baseType: !93, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3056, file: !42, line: 1317, baseType: !93, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3056, file: !42, line: 1318, baseType: !3055, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3056, file: !42, line: 1319, baseType: !349, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3056, file: !42, line: 1320, baseType: !362, size: 128, align: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3038, file: !42, line: 1084, baseType: !321, size: 64, offset: 1152)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3038, file: !42, line: 1085, baseType: !321, size: 64, offset: 1216)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3038, file: !42, line: 1087, baseType: !3074, size: 64, offset: 1280)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3077)
!3077 = !{!3078, !3082}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3076, file: !42, line: 1012, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !3037, !3037}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3076, file: !42, line: 1013, baseType: !3083, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3037}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3038, file: !42, line: 1088, baseType: !3087, size: 64, offset: 1344)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3090)
!3090 = !{!3091, !3095, !3099, !3100, !3104, !3108, !3112, !3116}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3089, file: !42, line: 1017, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!3023, !3023}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3089, file: !42, line: 1018, baseType: !3096, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !3023}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3089, file: !42, line: 1019, baseType: !3083, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3089, file: !42, line: 1020, baseType: !3101, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!93, !3037, !93}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3089, file: !42, line: 1021, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!487, !3037}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3089, file: !42, line: 1022, baseType: !3109, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!93, !3037, !93, !182}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3089, file: !42, line: 1023, baseType: !3113, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !3037, !859}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3089, file: !42, line: 1024, baseType: !3105, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3038, file: !42, line: 1097, baseType: !3118, size: 256, offset: 1408)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !42, line: 1089, size: 256, elements: !3119)
!3119 = !{!3120, !3129, !3135}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3118, file: !42, line: 1090, baseType: !3121, size: 256)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3122, line: 10, size: 256, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3123 = !{!3124, !3125, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3121, file: !3122, line: 11, baseType: !412, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3121, file: !3122, line: 12, baseType: !3126, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3122, line: 5, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3121, file: !3122, line: 13, baseType: !178, size: 128, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3118, file: !42, line: 1091, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3122, line: 17, size: 64, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3130, file: !3122, line: 18, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3122, line: 16, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3118, file: !42, line: 1096, baseType: !3136, size: 192)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3118, file: !42, line: 1092, size: 192, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3136, file: !42, line: 1093, baseType: !178, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3136, file: !42, line: 1094, baseType: !93, size: 32, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3136, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2953, file: !42, line: 1843, baseType: !3142, size: 64, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!302, !349, !769, !93, !318, !744, !93}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2953, file: !42, line: 1844, baseType: !1140, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2953, file: !42, line: 1845, baseType: !3147, size: 64, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!93, !93}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2953, file: !42, line: 1846, baseType: !3034, size: 64, offset: 1472)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2953, file: !42, line: 1847, baseType: !3152, size: 64, offset: 1536)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!302, !2186, !349, !744, !318, !5}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2953, file: !42, line: 1848, baseType: !3156, size: 64, offset: 1600)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!302, !349, !744, !2186, !318, !5}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2953, file: !42, line: 1849, baseType: !3160, size: 64, offset: 1664)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!93, !349, !306, !3163, !859}
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2953, file: !42, line: 1850, baseType: !3165, size: 64, offset: 1728)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!306, !349, !93, !528, !528}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2953, file: !42, line: 1852, baseType: !3169, size: 64, offset: 1792)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !710, !349}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2953, file: !42, line: 1856, baseType: !3173, size: 64, offset: 1856)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!302, !349, !528, !349, !528, !318, !5}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2953, file: !42, line: 1858, baseType: !3177, size: 64, offset: 1920)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!528, !349, !528, !349, !528, !528, !5}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2953, file: !42, line: 1861, baseType: !3026, size: 64, offset: 1984)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2948, file: !42, line: 692, baseType: !663, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !427, file: !42, line: 694, baseType: !3183, size: 64, offset: 2560)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3184, file: !42, line: 1101, baseType: !230)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3184, file: !42, line: 1102, baseType: !178, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3184, file: !42, line: 1103, baseType: !178, size: 128, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3184, file: !42, line: 1104, baseType: !178, size: 128, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !427, file: !42, line: 695, baseType: !783, size: 1216, align: 64, offset: 2624)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !427, file: !42, line: 696, baseType: !178, size: 128, offset: 3840)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !42, line: 697, baseType: !3193, size: 64, offset: 3968)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !42, line: 697, size: 64, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3200, !3201}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3193, file: !42, line: 698, baseType: !2186, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3193, file: !42, line: 699, baseType: !2703, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3193, file: !42, line: 700, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3193, file: !42, line: 701, baseType: !271, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3193, file: !42, line: 702, baseType: !5, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !427, file: !42, line: 705, baseType: !414, size: 32, offset: 4032)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !427, file: !42, line: 708, baseType: !414, size: 32, offset: 4064)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !427, file: !42, line: 709, baseType: !2785, size: 64, offset: 4096)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !427, file: !42, line: 720, baseType: !170, size: 64, offset: 4160)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !380, file: !377, line: 98, baseType: !3207, size: 256, offset: 448)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 256, elements: !2318)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !380, file: !377, line: 101, baseType: !3209, size: 32, offset: 704)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3210, line: 25, size: 32, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, scope: !3209, file: !3210, line: 26, baseType: !3213, size: 32)
!3213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3209, file: !3210, line: 26, size: 32, elements: !3214)
!3214 = !{!3215}
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !3210, line: 30, baseType: !3216, size: 32)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3213, file: !3210, line: 30, size: 32, elements: !3217)
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3216, file: !3210, line: 31, baseType: !230)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3216, file: !3210, line: 32, baseType: !93, size: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !380, file: !377, line: 102, baseType: !2802, size: 64, offset: 768)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !380, file: !377, line: 103, baseType: !596, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !380, file: !377, line: 104, baseType: !321, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !380, file: !377, line: 105, baseType: !170, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !377, line: 107, baseType: !3225, size: 128, offset: 1024)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !377, line: 107, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3225, file: !377, line: 108, baseType: !178, size: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3225, file: !377, line: 109, baseType: !3003, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !380, file: !377, line: 111, baseType: !178, size: 128, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !380, file: !377, line: 112, baseType: !178, size: 128, offset: 1280)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !380, file: !377, line: 120, baseType: !3232, size: 128, offset: 1408)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !377, line: 116, size: 128, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3232, file: !377, line: 117, baseType: !638, size: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3232, file: !377, line: 118, baseType: !394, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3232, file: !377, line: 119, baseType: !362, size: 128, align: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !350, file: !42, line: 922, baseType: !426, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !350, file: !42, line: 923, baseType: !2951, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !350, file: !42, line: 929, baseType: !230, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !350, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !350, file: !42, line: 931, baseType: !726, size: 64, offset: 448)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !350, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !350, file: !42, line: 933, baseType: !2798, size: 32, offset: 544)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !350, file: !42, line: 934, baseType: !722, size: 192, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !350, file: !42, line: 935, baseType: !528, size: 64, offset: 768)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !350, file: !42, line: 936, baseType: !3247, size: 192, offset: 832)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3247, file: !42, line: 886, baseType: !3059)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3247, file: !42, line: 887, baseType: !1504, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3247, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3247, file: !42, line: 889, baseType: !432, size: 32, offset: 96)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3247, file: !42, line: 889, baseType: !432, size: 32, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3247, file: !42, line: 890, baseType: !93, size: 32, offset: 160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !350, file: !42, line: 937, baseType: !1613, size: 64, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !350, file: !42, line: 938, baseType: !3257, size: 256, offset: 1088)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3258)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3257, file: !42, line: 897, baseType: !321, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3257, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3257, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3257, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3257, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3257, file: !42, line: 904, baseType: !528, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !350, file: !42, line: 940, baseType: !418, size: 64, offset: 1344)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !350, file: !42, line: 945, baseType: !170, size: 64, offset: 1408)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !350, file: !42, line: 949, baseType: !178, size: 128, offset: 1472)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !350, file: !42, line: 950, baseType: !178, size: 128, offset: 1600)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !350, file: !42, line: 952, baseType: !782, size: 64, offset: 1728)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !350, file: !42, line: 953, baseType: !947, size: 32, offset: 1792)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !350, file: !42, line: 954, baseType: !947, size: 32, offset: 1824)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !340, file: !296, line: 174, baseType: !346, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !340, file: !296, line: 176, baseType: !3274, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!93, !349, !223, !339, !1020}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !328, file: !296, line: 90, baseType: !323, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !328, file: !296, line: 91, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !286, file: !215, line: 143, baseType: !3281, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!3284, !223}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3287)
!3287 = !{!3288, !3289, !3293, !3297, !3303, !3307}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3286, file: !59, line: 40, baseType: !58, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3286, file: !59, line: 41, baseType: !3290, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!487}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3286, file: !59, line: 42, baseType: !3294, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!170}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3286, file: !59, line: 43, baseType: !3298, size: 64, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!2215, !3301}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3286, file: !59, line: 44, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!2215}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3286, file: !59, line: 45, baseType: !465, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !286, file: !215, line: 144, baseType: !3309, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!2215, !223}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !286, file: !215, line: 145, baseType: !3313, size: 64, offset: 384)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !223, !3316, !3317}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !214, file: !215, line: 70, baseType: !3319, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3321, line: 123, size: 1024, elements: !3322)
!3321 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3433, !3434, !3435, !3436, !3437}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3320, file: !3321, line: 124, baseType: !205, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3320, file: !3321, line: 125, baseType: !205, size: 32, offset: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3320, file: !3321, line: 135, baseType: !3319, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3320, file: !3321, line: 136, baseType: !218, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3320, file: !3321, line: 138, baseType: !805, size: 192, align: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3320, file: !3321, line: 140, baseType: !2215, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3320, file: !3321, line: 141, baseType: !5, size: 32, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !3321, line: 142, baseType: !3331, size: 256, offset: 512)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3320, file: !3321, line: 142, size: 256, elements: !3332)
!3332 = !{!3333, !3373, !3377}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3331, file: !3321, line: 143, baseType: !3334, size: 192)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3321, line: 91, size: 192, elements: !3335)
!3335 = !{!3336, !3337, !3338}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3334, file: !3321, line: 92, baseType: !321, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3334, file: !3321, line: 94, baseType: !801, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3334, file: !3321, line: 100, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3321, line: 180, size: 704, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3371, !3372}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3340, file: !3321, line: 182, baseType: !3319, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3340, file: !3321, line: 183, baseType: !5, size: 32, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3340, file: !3321, line: 186, baseType: !1533, size: 192, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3340, file: !3321, line: 187, baseType: !412, size: 32, offset: 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3340, file: !3321, line: 188, baseType: !412, size: 32, offset: 352)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3340, file: !3321, line: 189, baseType: !3348, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3321, line: 168, size: 320, elements: !3350)
!3350 = !{!3351, !3355, !3359, !3363, !3367}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3349, file: !3321, line: 169, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!93, !710, !3339}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3349, file: !3321, line: 171, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!93, !3319, !218, !312}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3349, file: !3321, line: 173, baseType: !3360, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!93, !3319}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3349, file: !3321, line: 174, baseType: !3364, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!93, !3319, !3319, !218}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3349, file: !3321, line: 176, baseType: !3368, size: 64, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!93, !710, !3319, !3339}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3340, file: !3321, line: 192, baseType: !178, size: 128, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3340, file: !3321, line: 194, baseType: !1514, size: 128, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3331, file: !3321, line: 144, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3321, line: 103, size: 64, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3374, file: !3321, line: 104, baseType: !3319, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3331, file: !3321, line: 145, baseType: !3378, size: 256)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3321, line: 107, size: 256, elements: !3379)
!3379 = !{!3380, !3428, !3431, !3432}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3378, file: !3321, line: 108, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3321, line: 217, size: 768, elements: !3384)
!3384 = !{!3385, !3405, !3409, !3410, !3411, !3412, !3413, !3417, !3418, !3419, !3420, !3424}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3383, file: !3321, line: 222, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!93, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3321, line: 197, size: 1088, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3390, file: !3321, line: 199, baseType: !3319, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3390, file: !3321, line: 200, baseType: !349, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3390, file: !3321, line: 201, baseType: !710, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3390, file: !3321, line: 202, baseType: !170, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3390, file: !3321, line: 205, baseType: !722, size: 192, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3390, file: !3321, line: 206, baseType: !722, size: 192, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3390, file: !3321, line: 207, baseType: !93, size: 32, offset: 640)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3390, file: !3321, line: 208, baseType: !178, size: 128, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3390, file: !3321, line: 209, baseType: !271, size: 64, offset: 832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3390, file: !3321, line: 211, baseType: !318, size: 64, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3390, file: !3321, line: 212, baseType: !487, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3390, file: !3321, line: 213, baseType: !487, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3390, file: !3321, line: 214, baseType: !1048, size: 64, offset: 1024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3383, file: !3321, line: 223, baseType: !3406, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3389}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3383, file: !3321, line: 236, baseType: !754, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3383, file: !3321, line: 238, baseType: !741, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3383, file: !3321, line: 239, baseType: !750, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3383, file: !3321, line: 240, baseType: !746, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3383, file: !3321, line: 242, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!302, !3389, !271, !318, !528}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3383, file: !3321, line: 252, baseType: !318, size: 64, offset: 448)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3383, file: !3321, line: 259, baseType: !487, size: 8, offset: 512)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3383, file: !3321, line: 260, baseType: !3414, size: 64, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3383, file: !3321, line: 263, baseType: !3421, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!2992, !3389, !2994}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3383, file: !3321, line: 266, baseType: !3425, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!93, !3389, !1020}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3378, file: !3321, line: 109, baseType: !3429, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3321, line: 31, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3378, file: !3321, line: 110, baseType: !528, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3378, file: !3321, line: 111, baseType: !3319, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3320, file: !3321, line: 148, baseType: !170, size: 64, offset: 768)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3320, file: !3321, line: 154, baseType: !418, size: 64, offset: 832)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3320, file: !3321, line: 156, baseType: !313, size: 16, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3320, file: !3321, line: 157, baseType: !312, size: 16, offset: 912)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3320, file: !3321, line: 158, baseType: !3438, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3321, line: 32, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !214, file: !215, line: 71, baseType: !196, size: 32, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !214, file: !215, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !214, file: !215, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !214, file: !215, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !214, file: !215, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !214, file: !215, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !71, line: 463, baseType: !210, size: 64, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !211, file: !71, line: 465, baseType: !3448, size: 64, offset: 576)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !211, file: !71, line: 467, baseType: !218, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !211, file: !71, line: 468, baseType: !3452, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3462, !3467, !3471}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !71, line: 88, baseType: !218, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3454, file: !71, line: 89, baseType: !325, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3454, file: !71, line: 90, baseType: !3459, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!93, !210, !266}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3454, file: !71, line: 91, baseType: !3463, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!271, !210, !3466, !3316, !3317}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3454, file: !71, line: 93, baseType: !3468, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !210}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3454, file: !71, line: 95, baseType: !3472, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3475)
!3475 = !{!3476, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3474, file: !78, line: 279, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!93, !210}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3474, file: !78, line: 280, baseType: !3468, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3474, file: !78, line: 281, baseType: !3477, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3474, file: !78, line: 282, baseType: !3477, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3474, file: !78, line: 283, baseType: !3477, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3474, file: !78, line: 284, baseType: !3477, size: 64, offset: 320)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3474, file: !78, line: 285, baseType: !3477, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3474, file: !78, line: 286, baseType: !3477, size: 64, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3474, file: !78, line: 287, baseType: !3477, size: 64, offset: 512)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3474, file: !78, line: 288, baseType: !3477, size: 64, offset: 576)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3474, file: !78, line: 289, baseType: !3477, size: 64, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3474, file: !78, line: 290, baseType: !3477, size: 64, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3474, file: !78, line: 291, baseType: !3477, size: 64, offset: 768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3474, file: !78, line: 292, baseType: !3477, size: 64, offset: 832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3474, file: !78, line: 293, baseType: !3477, size: 64, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3474, file: !78, line: 294, baseType: !3477, size: 64, offset: 960)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3474, file: !78, line: 295, baseType: !3477, size: 64, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3474, file: !78, line: 296, baseType: !3477, size: 64, offset: 1088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3474, file: !78, line: 297, baseType: !3477, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3474, file: !78, line: 298, baseType: !3477, size: 64, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3474, file: !78, line: 299, baseType: !3477, size: 64, offset: 1280)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3474, file: !78, line: 300, baseType: !3477, size: 64, offset: 1344)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3474, file: !78, line: 301, baseType: !3477, size: 64, offset: 1408)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !211, file: !71, line: 470, baseType: !3503, size: 64, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3505, line: 82, size: 1408, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3570, !3573, !3574}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3504, file: !3505, line: 83, baseType: !218, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3504, file: !3505, line: 84, baseType: !218, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3504, file: !3505, line: 85, baseType: !210, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3504, file: !3505, line: 86, baseType: !325, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3504, file: !3505, line: 87, baseType: !325, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3504, file: !3505, line: 88, baseType: !325, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3504, file: !3505, line: 90, baseType: !3514, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!93, !210, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3530, !3534, !3535, !3536, !3537, !3538, !3546, !3547, !3548, !3549, !3550, !3551}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !65, line: 96, baseType: !218, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3518, file: !65, line: 97, baseType: !3503, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3518, file: !65, line: 99, baseType: !629, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3518, file: !65, line: 100, baseType: !218, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3518, file: !65, line: 102, baseType: !487, size: 8, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3518, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3518, file: !65, line: 105, baseType: !3527, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3529)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !65, line: 105, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3518, file: !65, line: 106, baseType: !3531, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3533)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !65, line: 106, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3518, file: !65, line: 108, baseType: !3477, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3518, file: !65, line: 109, baseType: !3468, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3518, file: !65, line: 110, baseType: !3477, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3518, file: !65, line: 111, baseType: !3468, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3518, file: !65, line: 112, baseType: !3539, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!93, !210, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3544)
!3544 = !{!3545}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3543, file: !78, line: 51, baseType: !93, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3518, file: !65, line: 113, baseType: !3477, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3518, file: !65, line: 114, baseType: !325, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3518, file: !65, line: 115, baseType: !325, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3518, file: !65, line: 117, baseType: !3472, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3518, file: !65, line: 118, baseType: !3468, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3518, file: !65, line: 120, baseType: !3552, size: 64, offset: 1088)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3504, file: !3505, line: 91, baseType: !3459, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3504, file: !3505, line: 92, baseType: !3477, size: 64, offset: 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3504, file: !3505, line: 93, baseType: !3468, size: 64, offset: 576)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3504, file: !3505, line: 94, baseType: !3477, size: 64, offset: 640)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3504, file: !3505, line: 95, baseType: !3468, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3504, file: !3505, line: 97, baseType: !3477, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3504, file: !3505, line: 98, baseType: !3477, size: 64, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3504, file: !3505, line: 100, baseType: !3539, size: 64, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3504, file: !3505, line: 101, baseType: !3477, size: 64, offset: 960)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3504, file: !3505, line: 103, baseType: !3477, size: 64, offset: 1024)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3504, file: !3505, line: 105, baseType: !3477, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3504, file: !3505, line: 107, baseType: !3472, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3504, file: !3505, line: 109, baseType: !3567, size: 64, offset: 1216)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3569)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3505, line: 109, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3504, file: !3505, line: 111, baseType: !3571, size: 64, offset: 1280)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3505, line: 111, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3504, file: !3505, line: 112, baseType: !644, offset: 1344)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3504, file: !3505, line: 114, baseType: !487, size: 8, offset: 1344)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !211, file: !71, line: 471, baseType: !3517, size: 64, offset: 832)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !211, file: !71, line: 473, baseType: !170, size: 64, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !211, file: !71, line: 475, baseType: !170, size: 64, offset: 960)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !211, file: !71, line: 480, baseType: !722, size: 192, offset: 1024)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !211, file: !71, line: 484, baseType: !3580, size: 576, offset: 1216)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3580, file: !71, line: 362, baseType: !178, size: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3580, file: !71, line: 363, baseType: !178, size: 128, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3580, file: !71, line: 364, baseType: !178, size: 128, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3580, file: !71, line: 365, baseType: !178, size: 128, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3580, file: !71, line: 366, baseType: !487, size: 8, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3580, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !211, file: !71, line: 485, baseType: !3589, size: 2304, offset: 1792)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3686, !3690}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3589, file: !78, line: 566, baseType: !3542, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3589, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3589, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3589, file: !78, line: 569, baseType: !487, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3589, file: !78, line: 570, baseType: !487, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3589, file: !78, line: 571, baseType: !487, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3589, file: !78, line: 572, baseType: !487, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3589, file: !78, line: 573, baseType: !487, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3589, file: !78, line: 574, baseType: !487, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3589, file: !78, line: 575, baseType: !487, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3589, file: !78, line: 576, baseType: !487, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3589, file: !78, line: 577, baseType: !412, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3589, file: !78, line: 578, baseType: !230, offset: 96)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3589, file: !78, line: 580, baseType: !178, size: 128, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3589, file: !78, line: 581, baseType: !1568, size: 192, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3589, file: !78, line: 582, baseType: !3607, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3609, line: 43, size: 1472, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3618, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3608, file: !3609, line: 44, baseType: !218, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3608, file: !3609, line: 45, baseType: !93, size: 32, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3608, file: !3609, line: 46, baseType: !178, size: 128, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3608, file: !3609, line: 47, baseType: !230, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3608, file: !3609, line: 48, baseType: !3616, size: 64, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3608, file: !3609, line: 49, baseType: !3619, size: 320, offset: 320)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3620, line: 11, size: 320, elements: !3621)
!3620 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3621 = !{!3622, !3623, !3624, !3629}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3619, file: !3620, line: 16, baseType: !638, size: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3619, file: !3620, line: 17, baseType: !321, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3619, file: !3620, line: 18, baseType: !3625, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3619, file: !3620, line: 19, baseType: !412, size: 32, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3608, file: !3609, line: 50, baseType: !321, size: 64, offset: 640)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3608, file: !3609, line: 51, baseType: !1328, size: 64, offset: 704)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3608, file: !3609, line: 52, baseType: !1328, size: 64, offset: 768)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3608, file: !3609, line: 53, baseType: !1328, size: 64, offset: 832)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3608, file: !3609, line: 54, baseType: !1328, size: 64, offset: 896)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3608, file: !3609, line: 55, baseType: !1328, size: 64, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3608, file: !3609, line: 56, baseType: !321, size: 64, offset: 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3608, file: !3609, line: 57, baseType: !321, size: 64, offset: 1088)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3608, file: !3609, line: 58, baseType: !321, size: 64, offset: 1152)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3608, file: !3609, line: 59, baseType: !321, size: 64, offset: 1216)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3608, file: !3609, line: 60, baseType: !321, size: 64, offset: 1280)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3608, file: !3609, line: 61, baseType: !210, size: 64, offset: 1344)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3608, file: !3609, line: 62, baseType: !487, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3608, file: !3609, line: 63, baseType: !487, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3589, file: !78, line: 583, baseType: !487, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3589, file: !78, line: 584, baseType: !487, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3589, file: !78, line: 585, baseType: !487, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3589, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3589, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3589, file: !78, line: 592, baseType: !1320, size: 512, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3589, file: !78, line: 593, baseType: !418, size: 64, offset: 1088)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3589, file: !78, line: 594, baseType: !2045, size: 256, offset: 1152)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3589, file: !78, line: 595, baseType: !1514, size: 128, offset: 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3589, file: !78, line: 596, baseType: !3616, size: 64, offset: 1536)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3589, file: !78, line: 597, baseType: !205, size: 32, offset: 1600)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3589, file: !78, line: 598, baseType: !205, size: 32, offset: 1632)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3589, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3589, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3589, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3589, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3589, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3589, file: !78, line: 604, baseType: !487, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3589, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3589, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3589, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3589, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3589, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3589, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3589, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3589, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3589, file: !78, line: 613, baseType: !93, size: 32, offset: 1792)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3589, file: !78, line: 614, baseType: !93, size: 32, offset: 1824)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3589, file: !78, line: 615, baseType: !418, size: 64, offset: 1856)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3589, file: !78, line: 616, baseType: !418, size: 64, offset: 1920)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3589, file: !78, line: 617, baseType: !418, size: 64, offset: 1984)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3589, file: !78, line: 618, baseType: !418, size: 64, offset: 2048)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3589, file: !78, line: 620, baseType: !3677, size: 64, offset: 2112)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3683}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3678, file: !78, line: 537, baseType: !230)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3678, file: !78, line: 538, baseType: !5, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3678, file: !78, line: 540, baseType: !178, size: 128, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3678, file: !78, line: 543, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3589, file: !78, line: 621, baseType: !3687, size: 64, offset: 2176)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !210, !1472}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3589, file: !78, line: 622, baseType: !3691, size: 64, offset: 2240)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !211, file: !71, line: 486, baseType: !3694, size: 64, offset: 4096)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3703, !3704, !3705}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3695, file: !78, line: 643, baseType: !3474, size: 1472)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3695, file: !78, line: 644, baseType: !3477, size: 64, offset: 1472)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3695, file: !78, line: 645, baseType: !3700, size: 64, offset: 1536)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !210, !487}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3695, file: !78, line: 646, baseType: !3477, size: 64, offset: 1600)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3695, file: !78, line: 647, baseType: !3468, size: 64, offset: 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3695, file: !78, line: 648, baseType: !3468, size: 64, offset: 1728)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !211, file: !71, line: 493, baseType: !3707, size: 64, offset: 4160)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !211, file: !71, line: 499, baseType: !178, size: 128, offset: 4224)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !211, file: !71, line: 502, baseType: !3711, size: 64, offset: 4352)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3713)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !211, file: !71, line: 504, baseType: !3715, size: 64, offset: 4416)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !211, file: !71, line: 505, baseType: !418, size: 64, offset: 4480)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !211, file: !71, line: 510, baseType: !418, size: 64, offset: 4544)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !211, file: !71, line: 511, baseType: !3719, size: 64, offset: 4608)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3721)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !211, file: !71, line: 513, baseType: !3723, size: 64, offset: 4672)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3724, file: !71, line: 293, baseType: !5, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3724, file: !71, line: 294, baseType: !321, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !211, file: !71, line: 515, baseType: !178, size: 128, offset: 4736)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !211, file: !71, line: 526, baseType: !3730, offset: 4864)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3731, line: 5, elements: !244)
!3731 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !211, file: !71, line: 528, baseType: !3733, size: 64, offset: 4864)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3735, line: 14, flags: DIFlagFwdDecl)
!3735 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !211, file: !71, line: 529, baseType: !3737, size: 64, offset: 4928)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3739, line: 17, size: 192, elements: !3740)
!3739 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3740 = !{!3741, !3742, !3825}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3738, file: !3739, line: 18, baseType: !3737, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3738, file: !3739, line: 19, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3739, line: 110, size: 1152, elements: !3746)
!3746 = !{!3747, !3751, !3755, !3761, !3767, !3771, !3775, !3780, !3784, !3785, !3789, !3793, !3797, !3808, !3809, !3810, !3811, !3821}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3745, file: !3739, line: 111, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!3737, !3737}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3745, file: !3739, line: 112, baseType: !3752, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3737}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3745, file: !3739, line: 113, baseType: !3756, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!487, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3745, file: !3739, line: 114, baseType: !3762, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!2215, !3759, !3765}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3745, file: !3739, line: 116, baseType: !3768, size: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!487, !3759, !218}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3745, file: !3739, line: 118, baseType: !3772, size: 64, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!93, !3759, !218, !5, !170, !318}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3745, file: !3739, line: 123, baseType: !3776, size: 64, offset: 384)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!93, !3759, !218, !3779, !318}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3745, file: !3739, line: 126, baseType: !3781, size: 64, offset: 448)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!218, !3759}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3745, file: !3739, line: 127, baseType: !3781, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3745, file: !3739, line: 128, baseType: !3786, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!3737, !3759}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3745, file: !3739, line: 130, baseType: !3790, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!3737, !3759, !3737}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3745, file: !3739, line: 133, baseType: !3794, size: 64, offset: 704)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!3737, !3759, !218}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3745, file: !3739, line: 135, baseType: !3798, size: 64, offset: 768)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!93, !3759, !218, !218, !5, !5, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3739, line: 43, size: 640, elements: !3803)
!3803 = !{!3804, !3805, !3806}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3802, file: !3739, line: 44, baseType: !3737, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3802, file: !3739, line: 45, baseType: !5, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3802, file: !3739, line: 46, baseType: !3807, size: 512, offset: 128)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 512, elements: !1358)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3745, file: !3739, line: 140, baseType: !3790, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3745, file: !3739, line: 143, baseType: !3786, size: 64, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3745, file: !3739, line: 145, baseType: !3748, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3745, file: !3739, line: 146, baseType: !3812, size: 64, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!93, !3759, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3739, line: 29, size: 128, elements: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3816, file: !3739, line: 30, baseType: !5, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3816, file: !3739, line: 31, baseType: !5, size: 32, offset: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3816, file: !3739, line: 32, baseType: !3759, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3745, file: !3739, line: 148, baseType: !3822, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!93, !3759, !210}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3738, file: !3739, line: 20, baseType: !210, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !211, file: !71, line: 534, baseType: !510, size: 32, offset: 4992)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !211, file: !71, line: 535, baseType: !412, size: 32, offset: 5024)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !211, file: !71, line: 537, baseType: !230, offset: 5056)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !211, file: !71, line: 538, baseType: !178, size: 128, offset: 5056)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !211, file: !71, line: 540, baseType: !3831, size: 64, offset: 5184)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3833, line: 54, size: 960, elements: !3834)
!3833 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840, !3841, !3845, !3849, !3850, !3851, !3852, !3856, !3860, !3861}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3832, file: !3833, line: 55, baseType: !218, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3832, file: !3833, line: 56, baseType: !629, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3832, file: !3833, line: 58, baseType: !325, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3832, file: !3833, line: 59, baseType: !325, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3832, file: !3833, line: 60, baseType: !223, size: 64, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3832, file: !3833, line: 62, baseType: !3459, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3832, file: !3833, line: 63, baseType: !3842, size: 64, offset: 384)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!271, !210, !3466}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3832, file: !3833, line: 65, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !3831}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3832, file: !3833, line: 66, baseType: !3468, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3832, file: !3833, line: 68, baseType: !3477, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3832, file: !3833, line: 70, baseType: !3284, size: 64, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3832, file: !3833, line: 71, baseType: !3853, size: 64, offset: 704)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!2215, !210}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3832, file: !3833, line: 73, baseType: !3857, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !210, !3316, !3317}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3832, file: !3833, line: 75, baseType: !3472, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3832, file: !3833, line: 77, baseType: !3571, size: 64, offset: 896)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !211, file: !71, line: 541, baseType: !325, size: 64, offset: 5248)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !211, file: !71, line: 543, baseType: !3468, size: 64, offset: 5312)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !211, file: !71, line: 544, baseType: !3865, size: 64, offset: 5376)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !211, file: !71, line: 545, baseType: !3868, size: 64, offset: 5440)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !211, file: !71, line: 547, baseType: !487, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !211, file: !71, line: 548, baseType: !487, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !211, file: !71, line: 549, baseType: !487, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !211, file: !71, line: 550, baseType: !487, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !191, file: !145, line: 83, baseType: !3875, size: 192, offset: 256)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !145, line: 76, size: 192, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3875, file: !145, line: 78, baseType: !178, size: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !3875, file: !145, line: 80, baseType: !170, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3875, file: !145, line: 82, baseType: !230, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !191, file: !145, line: 86, baseType: !3881, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !145, line: 12, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !191, file: !145, line: 98, baseType: !170, size: 64, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !191, file: !145, line: 101, baseType: !3885, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !3887, line: 70, size: 576, elements: !3888)
!3887 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/lizy2001/genbc/linux")
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3886, file: !3887, line: 72, baseType: !93, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3886, file: !3887, line: 73, baseType: !93, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !3886, file: !3887, line: 74, baseType: !210, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3886, file: !3887, line: 75, baseType: !190, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !3886, file: !3887, line: 77, baseType: !379, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !3886, file: !3887, line: 79, baseType: !178, size: 128, offset: 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !3886, file: !3887, line: 80, baseType: !722, size: 192, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !191, file: !145, line: 104, baseType: !3885, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !191, file: !145, line: 111, baseType: !487, size: 8, offset: 704)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !191, file: !145, line: 119, baseType: !3899, size: 64, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !145, line: 14, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !191, file: !145, line: 129, baseType: !412, size: 32, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !191, file: !145, line: 137, baseType: !487, size: 8, offset: 864)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !191, file: !145, line: 140, baseType: !426, size: 64, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !191, file: !145, line: 143, baseType: !271, size: 64, offset: 960)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !191, file: !145, line: 153, baseType: !722, size: 192, offset: 1024)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !191, file: !145, line: 160, baseType: !722, size: 192, offset: 1216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !191, file: !145, line: 168, baseType: !205, size: 32, offset: 1408)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !191, file: !145, line: 171, baseType: !722, size: 192, offset: 1472)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !191, file: !145, line: 177, baseType: !178, size: 128, offset: 1664)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !191, file: !145, line: 185, baseType: !178, size: 128, offset: 1792)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !191, file: !145, line: 192, baseType: !722, size: 192, offset: 1920)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !191, file: !145, line: 199, baseType: !178, size: 128, offset: 2112)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !191, file: !145, line: 208, baseType: !487, size: 8, offset: 2240)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !191, file: !145, line: 213, baseType: !93, size: 32, offset: 2272)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !191, file: !145, line: 228, baseType: !487, size: 8, offset: 2304)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !191, file: !145, line: 238, baseType: !3917, size: 64, offset: 2368)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !3919, line: 91, size: 2304, elements: !3920)
!3919 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/lizy2001/genbc/linux")
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3971, !3972, !3994, !3995}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3918, file: !3919, line: 95, baseType: !190, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3918, file: !3919, line: 99, baseType: !1514, size: 128, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !3918, file: !3919, line: 106, baseType: !3619, size: 320, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !3918, file: !3919, line: 111, baseType: !1897, size: 32, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3918, file: !3919, line: 127, baseType: !728, size: 64, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3918, file: !3919, line: 131, baseType: !1328, size: 64, offset: 640)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3918, file: !3919, line: 138, baseType: !205, size: 32, offset: 704)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3918, file: !3919, line: 142, baseType: !412, size: 32, offset: 736)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !3918, file: !3919, line: 162, baseType: !412, size: 32, offset: 768)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !3918, file: !3919, line: 171, baseType: !5, size: 32, offset: 800)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3918, file: !3919, line: 176, baseType: !5, size: 32, offset: 832)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !3918, file: !3919, line: 182, baseType: !93, size: 32, offset: 864)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !3918, file: !3919, line: 188, baseType: !93, size: 32, offset: 896)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !3918, file: !3919, line: 199, baseType: !3935, size: 960, offset: 960)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !92, line: 224, size: 960, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3935, file: !92, line: 230, baseType: !93, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !3935, file: !92, line: 231, baseType: !897, size: 16, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !3935, file: !92, line: 232, baseType: !897, size: 16, offset: 48)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !3935, file: !92, line: 233, baseType: !897, size: 16, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !3935, file: !92, line: 234, baseType: !897, size: 16, offset: 80)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !3935, file: !92, line: 235, baseType: !897, size: 16, offset: 96)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !3935, file: !92, line: 236, baseType: !897, size: 16, offset: 112)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !3935, file: !92, line: 237, baseType: !897, size: 16, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !3935, file: !92, line: 238, baseType: !897, size: 16, offset: 144)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !3935, file: !92, line: 239, baseType: !897, size: 16, offset: 160)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !3935, file: !92, line: 240, baseType: !897, size: 16, offset: 176)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3935, file: !92, line: 275, baseType: !412, size: 32, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !3935, file: !92, line: 292, baseType: !93, size: 32, offset: 224)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !3935, file: !92, line: 293, baseType: !897, size: 16, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !3935, file: !92, line: 294, baseType: !897, size: 16, offset: 272)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !3935, file: !92, line: 295, baseType: !897, size: 16, offset: 288)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !3935, file: !92, line: 296, baseType: !897, size: 16, offset: 304)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !3935, file: !92, line: 297, baseType: !897, size: 16, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !3935, file: !92, line: 298, baseType: !897, size: 16, offset: 336)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !3935, file: !92, line: 299, baseType: !897, size: 16, offset: 352)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !3935, file: !92, line: 300, baseType: !897, size: 16, offset: 368)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !3935, file: !92, line: 301, baseType: !897, size: 16, offset: 384)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !3935, file: !92, line: 302, baseType: !897, size: 16, offset: 400)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !3935, file: !92, line: 303, baseType: !897, size: 16, offset: 416)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !3935, file: !92, line: 304, baseType: !897, size: 16, offset: 432)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !3935, file: !92, line: 305, baseType: !897, size: 16, offset: 448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !3935, file: !92, line: 313, baseType: !897, size: 16, offset: 464)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !3935, file: !92, line: 321, baseType: !897, size: 16, offset: 480)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3935, file: !92, line: 350, baseType: !1380, size: 8, offset: 496)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !3935, file: !92, line: 361, baseType: !487, size: 8, offset: 504)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3935, file: !92, line: 368, baseType: !178, size: 128, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3935, file: !92, line: 375, baseType: !2788, size: 256, offset: 640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3935, file: !92, line: 383, baseType: !91, size: 32, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !3935, file: !92, line: 390, baseType: !135, size: 32, offset: 928)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3918, file: !3919, line: 207, baseType: !487, size: 8, offset: 1920)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !3918, file: !3919, line: 212, baseType: !3973, size: 64, offset: 1984)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !3975, line: 89, size: 448, elements: !3976)
!3975 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3974, file: !3975, line: 90, baseType: !5, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3974, file: !3975, line: 91, baseType: !818, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3974, file: !3975, line: 92, baseType: !178, size: 128, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !3974, file: !3975, line: 93, baseType: !178, size: 128, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3974, file: !3975, line: 94, baseType: !1249, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !3974, file: !3975, line: 95, baseType: !3983, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !3975, line: 98, size: 320, elements: !3985)
!3985 = !{!3986, !3987, !3992, !3993}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3984, file: !3975, line: 99, baseType: !178, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3984, file: !3975, line: 100, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !3975, line: 82, baseType: !3989)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !3983}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !3984, file: !3975, line: 101, baseType: !3973, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !3984, file: !3975, line: 103, baseType: !93, size: 32, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3918, file: !3919, line: 218, baseType: !178, size: 128, offset: 2048)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !3918, file: !3919, line: 225, baseType: !1514, size: 128, offset: 2176)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !191, file: !145, line: 245, baseType: !230, offset: 2432)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !191, file: !145, line: 250, baseType: !230, offset: 2432)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !191, file: !145, line: 273, baseType: !412, size: 32, offset: 2432)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !191, file: !145, line: 276, baseType: !178, size: 128, offset: 2496)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !191, file: !145, line: 284, baseType: !230, offset: 2624)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !191, file: !145, line: 287, baseType: !4002, size: 64, offset: 2624)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !145, line: 287, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !191, file: !145, line: 290, baseType: !4005, size: 64, offset: 2688)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !145, line: 25, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !191, file: !145, line: 297, baseType: !5, size: 32, offset: 2752)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !191, file: !145, line: 300, baseType: !4009, size: 8384, offset: 2816)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4010, line: 358, size: 8384, elements: !4011)
!4010 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!4011 = !{!4012, !4013, !4032, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4054, !4055, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4174, !4176, !4177, !4178, !4179, !4186, !4187, !4188, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4009, file: !4010, line: 369, baseType: !722, size: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4009, file: !4010, line: 379, baseType: !4014, size: 384, offset: 192)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4015, line: 76, size: 384, elements: !4016)
!4015 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!4016 = !{!4017, !4031}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4014, file: !4015, line: 80, baseType: !4018, size: 256)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !723, line: 71, size: 256, elements: !4019)
!4019 = !{!4020, !4021}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4018, file: !723, line: 72, baseType: !722, size: 192)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4018, file: !723, line: 73, baseType: !4022, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4024, line: 31, size: 192, elements: !4025)
!4024 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!4025 = !{!4026, !4027, !4028, !4029, !4030}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4023, file: !4024, line: 32, baseType: !1249, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4023, file: !4024, line: 33, baseType: !321, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4023, file: !4024, line: 34, baseType: !5, size: 32, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4023, file: !4024, line: 35, baseType: !313, size: 16, offset: 160)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4023, file: !4024, line: 36, baseType: !313, size: 16, offset: 176)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4014, file: !4015, line: 86, baseType: !178, size: 128, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4009, file: !4010, line: 389, baseType: !4033, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4015, line: 43, size: 448, elements: !4035)
!4035 = !{!4036, !4037, !4039, !4040, !4041}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4034, file: !4015, line: 45, baseType: !4023, size: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4034, file: !4015, line: 52, baseType: !4038, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4034, file: !4015, line: 57, baseType: !178, size: 128, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4034, file: !4015, line: 62, baseType: !487, size: 8, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4034, file: !4015, line: 65, baseType: !487, size: 8, offset: 392)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4009, file: !4010, line: 397, baseType: !722, size: 192, offset: 640)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4009, file: !4010, line: 405, baseType: !1533, size: 192, offset: 832)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4009, file: !4010, line: 413, baseType: !1533, size: 192, offset: 1024)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4009, file: !4010, line: 416, baseType: !722, size: 192, offset: 1216)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4009, file: !4010, line: 418, baseType: !93, size: 32, offset: 1408)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4009, file: !4010, line: 420, baseType: !178, size: 128, offset: 1472)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4009, file: !4010, line: 426, baseType: !230, offset: 1600)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4009, file: !4010, line: 431, baseType: !93, size: 32, offset: 1600)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4009, file: !4010, line: 435, baseType: !4051, size: 128, offset: 1664)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1534, line: 244, size: 128, elements: !4052)
!4052 = !{!4053}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4051, file: !1534, line: 245, baseType: !787, size: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4009, file: !4010, line: 443, baseType: !178, size: 128, offset: 1792)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4009, file: !4010, line: 453, baseType: !4056, size: 64, offset: 1920)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !357, line: 54, size: 64, elements: !4057)
!4057 = !{!4058}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4056, file: !357, line: 55, baseType: !360, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4009, file: !4010, line: 457, baseType: !2045, size: 256, offset: 1984)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4009, file: !4010, line: 465, baseType: !93, size: 32, offset: 2240)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4009, file: !4010, line: 473, baseType: !178, size: 128, offset: 2304)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4009, file: !4010, line: 482, baseType: !93, size: 32, offset: 2432)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4009, file: !4010, line: 489, baseType: !178, size: 128, offset: 2496)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4009, file: !4010, line: 497, baseType: !93, size: 32, offset: 2624)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4009, file: !4010, line: 504, baseType: !178, size: 128, offset: 2688)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4009, file: !4010, line: 513, baseType: !178, size: 128, offset: 2816)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4009, file: !4010, line: 522, baseType: !178, size: 128, offset: 2944)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4009, file: !4010, line: 524, baseType: !93, size: 32, offset: 3072)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4009, file: !4010, line: 524, baseType: !93, size: 32, offset: 3104)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4009, file: !4010, line: 525, baseType: !93, size: 32, offset: 3136)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4009, file: !4010, line: 525, baseType: !93, size: 32, offset: 3168)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4009, file: !4010, line: 526, baseType: !4073, size: 64, offset: 3200)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4010, line: 47, size: 576, elements: !4076)
!4076 = !{!4077, !4138, !4145, !4149, !4155, !4161, !4165, !4169, !4173}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4075, file: !4010, line: 77, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!4081, !190, !4083, !4122}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4010, line: 77, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !3887, line: 159, size: 2368, elements: !4085)
!4085 = !{!4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4084, file: !3887, line: 169, baseType: !487, size: 8)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4084, file: !3887, line: 176, baseType: !487, size: 8, offset: 8)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4084, file: !3887, line: 184, baseType: !487, size: 8, offset: 16)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4084, file: !3887, line: 187, baseType: !487, size: 8, offset: 24)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4084, file: !3887, line: 195, baseType: !487, size: 8, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4084, file: !3887, line: 202, baseType: !487, size: 8, offset: 40)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4084, file: !3887, line: 213, baseType: !487, size: 8, offset: 48)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4084, file: !3887, line: 224, baseType: !487, size: 8, offset: 56)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4084, file: !3887, line: 236, baseType: !3899, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4084, file: !3887, line: 239, baseType: !1504, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4084, file: !3887, line: 242, baseType: !4097, size: 32, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4098, line: 86, baseType: !5)
!4098 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4084, file: !3887, line: 250, baseType: !178, size: 128, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4084, file: !3887, line: 253, baseType: !3885, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4084, file: !3887, line: 261, baseType: !1533, size: 192, offset: 448)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4084, file: !3887, line: 264, baseType: !230, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4084, file: !3887, line: 267, baseType: !1533, size: 192, offset: 640)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4084, file: !3887, line: 269, baseType: !230, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4084, file: !3887, line: 272, baseType: !349, size: 64, offset: 832)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4084, file: !3887, line: 280, baseType: !170, size: 64, offset: 896)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4084, file: !3887, line: 291, baseType: !178, size: 128, offset: 960)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4084, file: !3887, line: 294, baseType: !722, size: 192, offset: 1088)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4084, file: !3887, line: 304, baseType: !178, size: 128, offset: 1280)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4084, file: !3887, line: 307, baseType: !1514, size: 128, offset: 1408)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4084, file: !3887, line: 318, baseType: !178, size: 128, offset: 1536)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4084, file: !3887, line: 328, baseType: !178, size: 128, offset: 1664)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4084, file: !3887, line: 337, baseType: !93, size: 32, offset: 1792)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4084, file: !3887, line: 340, baseType: !722, size: 192, offset: 1856)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4084, file: !3887, line: 347, baseType: !4116, size: 320, offset: 2048)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4117, line: 45, size: 320, elements: !4118)
!4117 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/lizy2001/genbc/linux")
!4118 = !{!4119, !4120, !4121}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4116, file: !4117, line: 47, baseType: !722, size: 192)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4116, file: !4117, line: 48, baseType: !801, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4116, file: !4117, line: 49, baseType: !801, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4125, line: 494, size: 832, elements: !4126)
!4125 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132, !4134, !4135, !4136}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4124, file: !4125, line: 495, baseType: !414, size: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4124, file: !4125, line: 496, baseType: !414, size: 32, offset: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4124, file: !4125, line: 497, baseType: !414, size: 32, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4124, file: !4125, line: 498, baseType: !414, size: 32, offset: 96)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4124, file: !4125, line: 499, baseType: !414, size: 32, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4124, file: !4125, line: 525, baseType: !4133, size: 128, offset: 160)
!4133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 128, elements: !1194)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4124, file: !4125, line: 526, baseType: !4133, size: 128, offset: 288)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4124, file: !4125, line: 527, baseType: !4133, size: 128, offset: 416)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4124, file: !4125, line: 528, baseType: !4137, size: 256, offset: 576)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !1194)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4075, file: !4010, line: 92, baseType: !4139, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!4142, !4122}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4010, line: 38, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4075, file: !4010, line: 109, baseType: !4146, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !190}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4075, file: !4010, line: 119, baseType: !4150, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!91, !190, !4153}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3935)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4075, file: !4010, line: 196, baseType: !4156, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!93, !190, !4159}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4010, line: 36, flags: DIFlagFwdDecl)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4075, file: !4010, line: 278, baseType: !4162, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!93, !190, !4159, !487}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4075, file: !4010, line: 297, baseType: !4166, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!4159, !190}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4075, file: !4010, line: 318, baseType: !4170, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4159}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4075, file: !4010, line: 333, baseType: !4170, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !4009, file: !4010, line: 527, baseType: !4175, size: 64, offset: 3264)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !179, line: 158, baseType: !2213)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4009, file: !4010, line: 530, baseType: !487, size: 8, offset: 3328)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4009, file: !4010, line: 531, baseType: !487, size: 8, offset: 3336)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4009, file: !4010, line: 532, baseType: !487, size: 8, offset: 3344)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4009, file: !4010, line: 533, baseType: !4180, size: 704, offset: 3392)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2046, line: 115, size: 704, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4180, file: !2046, line: 116, baseType: !2045, size: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4180, file: !2046, line: 117, baseType: !3619, size: 320, offset: 256)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4180, file: !2046, line: 120, baseType: !2881, size: 64, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4180, file: !2046, line: 121, baseType: !93, size: 32, offset: 640)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4009, file: !4010, line: 541, baseType: !722, size: 192, offset: 4096)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4009, file: !4010, line: 549, baseType: !178, size: 128, offset: 4288)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4009, file: !4010, line: 557, baseType: !4189, size: 64, offset: 4416)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4010, line: 557, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4009, file: !4010, line: 562, baseType: !4189, size: 64, offset: 4480)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4009, file: !4010, line: 567, baseType: !4189, size: 64, offset: 4544)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4009, file: !4010, line: 573, baseType: !4189, size: 64, offset: 4608)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4009, file: !4010, line: 578, baseType: !4189, size: 64, offset: 4672)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4009, file: !4010, line: 583, baseType: !4189, size: 64, offset: 4736)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4009, file: !4010, line: 588, baseType: !4189, size: 64, offset: 4800)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4009, file: !4010, line: 593, baseType: !4189, size: 64, offset: 4864)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4009, file: !4010, line: 598, baseType: !4189, size: 64, offset: 4928)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4009, file: !4010, line: 603, baseType: !4189, size: 64, offset: 4992)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4009, file: !4010, line: 608, baseType: !4189, size: 64, offset: 5056)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4009, file: !4010, line: 613, baseType: !4189, size: 64, offset: 5120)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4009, file: !4010, line: 618, baseType: !4189, size: 64, offset: 5184)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4009, file: !4010, line: 623, baseType: !4189, size: 64, offset: 5248)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4009, file: !4010, line: 628, baseType: !4189, size: 64, offset: 5312)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4009, file: !4010, line: 633, baseType: !4189, size: 64, offset: 5376)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4009, file: !4010, line: 639, baseType: !4189, size: 64, offset: 5440)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4009, file: !4010, line: 644, baseType: !4189, size: 64, offset: 5504)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4009, file: !4010, line: 653, baseType: !4189, size: 64, offset: 5568)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4009, file: !4010, line: 659, baseType: !4189, size: 64, offset: 5632)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4009, file: !4010, line: 665, baseType: !4189, size: 64, offset: 5696)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4009, file: !4010, line: 670, baseType: !4189, size: 64, offset: 5760)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4009, file: !4010, line: 676, baseType: !4189, size: 64, offset: 5824)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4009, file: !4010, line: 681, baseType: !4189, size: 64, offset: 5888)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4009, file: !4010, line: 687, baseType: !4189, size: 64, offset: 5952)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4009, file: !4010, line: 693, baseType: !4189, size: 64, offset: 6016)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4009, file: !4010, line: 698, baseType: !4189, size: 64, offset: 6080)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4009, file: !4010, line: 703, baseType: !4189, size: 64, offset: 6144)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4009, file: !4010, line: 708, baseType: !4189, size: 64, offset: 6208)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4009, file: !4010, line: 713, baseType: !4189, size: 64, offset: 6272)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4009, file: !4010, line: 718, baseType: !4189, size: 64, offset: 6336)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4009, file: !4010, line: 723, baseType: !4189, size: 64, offset: 6400)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4009, file: !4010, line: 728, baseType: !4189, size: 64, offset: 6464)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4009, file: !4010, line: 733, baseType: !4189, size: 64, offset: 6528)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4009, file: !4010, line: 738, baseType: !4189, size: 64, offset: 6592)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4009, file: !4010, line: 743, baseType: !4189, size: 64, offset: 6656)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4009, file: !4010, line: 748, baseType: !4189, size: 64, offset: 6720)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4009, file: !4010, line: 752, baseType: !4189, size: 64, offset: 6784)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4009, file: !4010, line: 758, baseType: !4189, size: 64, offset: 6848)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4009, file: !4010, line: 763, baseType: !4189, size: 64, offset: 6912)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4009, file: !4010, line: 768, baseType: !4189, size: 64, offset: 6976)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4009, file: !4010, line: 773, baseType: !4189, size: 64, offset: 7040)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4009, file: !4010, line: 778, baseType: !4189, size: 64, offset: 7104)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4009, file: !4010, line: 784, baseType: !4189, size: 64, offset: 7168)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4009, file: !4010, line: 790, baseType: !4189, size: 64, offset: 7232)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4009, file: !4010, line: 795, baseType: !4189, size: 64, offset: 7296)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4009, file: !4010, line: 801, baseType: !4189, size: 64, offset: 7360)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4009, file: !4010, line: 806, baseType: !4189, size: 64, offset: 7424)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4009, file: !4010, line: 813, baseType: !4189, size: 64, offset: 7488)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4009, file: !4010, line: 820, baseType: !4189, size: 64, offset: 7552)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4009, file: !4010, line: 827, baseType: !4189, size: 64, offset: 7616)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4009, file: !4010, line: 835, baseType: !4189, size: 64, offset: 7680)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4009, file: !4010, line: 843, baseType: !4189, size: 64, offset: 7744)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4009, file: !4010, line: 850, baseType: !4189, size: 64, offset: 7808)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4009, file: !4010, line: 856, baseType: !4189, size: 64, offset: 7872)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4009, file: !4010, line: 862, baseType: !4189, size: 64, offset: 7936)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4009, file: !4010, line: 865, baseType: !556, size: 32, offset: 8000)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4009, file: !4010, line: 865, baseType: !556, size: 32, offset: 8032)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !4009, file: !4010, line: 872, baseType: !487, size: 8, offset: 8064)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !4009, file: !4010, line: 884, baseType: !487, size: 8, offset: 8072)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4009, file: !4010, line: 892, baseType: !487, size: 8, offset: 8080)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4009, file: !4010, line: 906, baseType: !487, size: 8, offset: 8088)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4009, file: !4010, line: 912, baseType: !487, size: 8, offset: 8096)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !4009, file: !4010, line: 919, baseType: !487, size: 8, offset: 8104)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4009, file: !4010, line: 927, baseType: !487, size: 8, offset: 8112)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4009, file: !4010, line: 933, baseType: !4189, size: 64, offset: 8128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4009, file: !4010, line: 936, baseType: !556, size: 32, offset: 8192)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4009, file: !4010, line: 936, baseType: !556, size: 32, offset: 8224)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4009, file: !4010, line: 945, baseType: !4159, size: 64, offset: 8256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4009, file: !4010, line: 947, baseType: !4260, size: 64, offset: 8320)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4010, line: 947, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !191, file: !145, line: 303, baseType: !722, size: 192, offset: 11200)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !191, file: !145, line: 306, baseType: !1533, size: 192, offset: 11392)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !191, file: !145, line: 309, baseType: !4266, size: 64, offset: 11584)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !145, line: 19, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !191, file: !145, line: 312, baseType: !4269, size: 64, offset: 11648)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !145, line: 20, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !191, file: !145, line: 322, baseType: !144, size: 32, offset: 11712)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !191, file: !145, line: 330, baseType: !4273, size: 64, offset: 11776)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !145, line: 21, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !1, line: 41, baseType: !218, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !175, file: !1, line: 42, baseType: !318, size: 64, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !172, file: !1, line: 54, baseType: !4278, align: 64, offset: 320)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, elements: !2419)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!4281 = !{!"rsp"}
!4282 = !{i32 7, !"Dwarf Version", i32 4}
!4283 = !{i32 2, !"Debug Info Version", i32 3}
!4284 = !{i32 1, !"wchar_size", i32 2}
!4285 = !{i32 1, !"Code Model", i32 2}
!4286 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4287 = distinct !DISubprogram(name: "drm_managed_release", scope: !1, file: !1, line: 63, type: !4147, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4288 = !DILocalVariable(name: "dev", arg: 1, scope: !4287, file: !1, line: 63, type: !190)
!4289 = !DILocation(line: 63, column: 45, scope: !4287)
!4290 = !DILocalVariable(name: "dr", scope: !4287, file: !1, line: 65, type: !171)
!4291 = !DILocation(line: 65, column: 17, scope: !4287)
!4292 = !DILocalVariable(name: "tmp", scope: !4287, file: !1, line: 65, type: !171)
!4293 = !DILocation(line: 65, column: 22, scope: !4287)
!4294 = !DILocation(line: 67, column: 2, scope: !4287)
!4295 = !DILocalVariable(name: "__mptr", scope: !4296, file: !1, line: 68, type: !170)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !1, line: 68, column: 2)
!4297 = distinct !DILexicalBlock(scope: !4287, file: !1, line: 68, column: 2)
!4298 = !DILocation(line: 68, column: 2, scope: !4296)
!4299 = !DILocation(line: 68, column: 2, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4296, file: !1, line: 68, column: 2)
!4301 = !DILocation(line: 68, column: 2, scope: !4297)
!4302 = !DILocalVariable(name: "__mptr", scope: !4303, file: !1, line: 68, type: !170)
!4303 = distinct !DILexicalBlock(scope: !4297, file: !1, line: 68, column: 2)
!4304 = !DILocation(line: 68, column: 2, scope: !4303)
!4305 = !DILocation(line: 68, column: 2, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4303, file: !1, line: 68, column: 2)
!4307 = !DILocation(line: 68, column: 2, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4297, file: !1, line: 68, column: 2)
!4309 = !DILocation(line: 69, column: 3, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4308, file: !1, line: 68, column: 73)
!4311 = !DILocation(line: 72, column: 7, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4310, file: !1, line: 72, column: 7)
!4313 = !DILocation(line: 72, column: 11, scope: !4312)
!4314 = !DILocation(line: 72, column: 16, scope: !4312)
!4315 = !DILocation(line: 72, column: 7, scope: !4310)
!4316 = !DILocation(line: 73, column: 4, scope: !4312)
!4317 = !DILocation(line: 73, column: 8, scope: !4312)
!4318 = !DILocation(line: 73, column: 13, scope: !4312)
!4319 = !DILocation(line: 73, column: 21, scope: !4312)
!4320 = !DILocation(line: 73, column: 26, scope: !4312)
!4321 = !DILocation(line: 73, column: 30, scope: !4312)
!4322 = !DILocation(line: 73, column: 35, scope: !4312)
!4323 = !DILocation(line: 73, column: 53, scope: !4312)
!4324 = !DILocation(line: 73, column: 57, scope: !4312)
!4325 = !DILocation(line: 73, column: 42, scope: !4312)
!4326 = !DILocation(line: 75, column: 13, scope: !4310)
!4327 = !DILocation(line: 75, column: 17, scope: !4310)
!4328 = !DILocation(line: 75, column: 22, scope: !4310)
!4329 = !DILocation(line: 75, column: 3, scope: !4310)
!4330 = !DILocation(line: 76, column: 11, scope: !4310)
!4331 = !DILocation(line: 76, column: 3, scope: !4310)
!4332 = !DILocation(line: 77, column: 2, scope: !4310)
!4333 = !DILocalVariable(name: "__mptr", scope: !4334, file: !1, line: 68, type: !170)
!4334 = distinct !DILexicalBlock(scope: !4308, file: !1, line: 68, column: 2)
!4335 = !DILocation(line: 68, column: 2, scope: !4334)
!4336 = !DILocation(line: 68, column: 2, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !1, line: 68, column: 2)
!4338 = distinct !{!4338, !4301, !4339}
!4339 = !DILocation(line: 77, column: 2, scope: !4297)
!4340 = !DILocation(line: 78, column: 2, scope: !4287)
!4341 = !DILocation(line: 79, column: 1, scope: !4287)
!4342 = distinct !DISubprogram(name: "list_del", scope: !4343, file: !4343, line: 144, type: !4344, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4343 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !182}
!4346 = !DILocalVariable(name: "entry", arg: 1, scope: !4342, file: !4343, line: 144, type: !182)
!4347 = !DILocation(line: 144, column: 47, scope: !4342)
!4348 = !DILocation(line: 146, column: 19, scope: !4342)
!4349 = !DILocation(line: 146, column: 2, scope: !4342)
!4350 = !DILocation(line: 147, column: 2, scope: !4342)
!4351 = !DILocation(line: 147, column: 9, scope: !4342)
!4352 = !DILocation(line: 147, column: 14, scope: !4342)
!4353 = !DILocation(line: 148, column: 2, scope: !4342)
!4354 = !DILocation(line: 148, column: 9, scope: !4342)
!4355 = !DILocation(line: 148, column: 14, scope: !4342)
!4356 = !DILocation(line: 149, column: 1, scope: !4342)
!4357 = distinct !DISubprogram(name: "free_dr", scope: !1, file: !1, line: 57, type: !4358, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !171}
!4360 = !DILocalVariable(name: "dr", arg: 1, scope: !4357, file: !1, line: 57, type: !171)
!4361 = !DILocation(line: 57, column: 36, scope: !4357)
!4362 = !DILocation(line: 59, column: 14, scope: !4357)
!4363 = !DILocation(line: 59, column: 18, scope: !4357)
!4364 = !DILocation(line: 59, column: 23, scope: !4357)
!4365 = !DILocation(line: 59, column: 2, scope: !4357)
!4366 = !DILocation(line: 60, column: 8, scope: !4357)
!4367 = !DILocation(line: 60, column: 2, scope: !4357)
!4368 = !DILocation(line: 61, column: 1, scope: !4357)
!4369 = distinct !DISubprogram(name: "drmm_add_final_kfree", scope: !1, file: !1, line: 128, type: !188, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4370 = !DILocalVariable(name: "dev", arg: 1, scope: !4369, file: !1, line: 128, type: !190)
!4371 = !DILocation(line: 128, column: 46, scope: !4369)
!4372 = !DILocalVariable(name: "container", arg: 2, scope: !4369, file: !1, line: 128, type: !170)
!4373 = !DILocation(line: 128, column: 57, scope: !4369)
!4374 = !DILocalVariable(name: "__ret_warn_on", scope: !4375, file: !1, line: 130, type: !93)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !1, line: 130, column: 2)
!4376 = !DILocation(line: 130, column: 2, scope: !4375)
!4377 = !DILocation(line: 130, column: 2, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4375, file: !1, line: 130, column: 2)
!4379 = !DILocation(line: 130, column: 2, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4378, file: !1, line: 130, column: 2)
!4381 = !DILocation(line: 130, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 130, column: 2)
!4383 = !DILocation(line: 130, column: 2, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 130, column: 2)
!4385 = !{i32 -2141600126, i32 -2141600097, i32 -2141600051, i32 -2141599993, i32 -2141599939, i32 -2141599885, i32 -2141599830, i32 -2141599799}
!4386 = !DILocation(line: 130, column: 2, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 130, column: 2)
!4388 = !{i32 -2141599388, i32 -2141599381, i32 -2141599329, i32 -2141599298, i32 -2141599268}
!4389 = !DILocation(line: 130, column: 2, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 130, column: 2)
!4391 = !DILocalVariable(name: "__ret_warn_on", scope: !4392, file: !1, line: 131, type: !93)
!4392 = distinct !DILexicalBlock(scope: !4369, file: !1, line: 131, column: 2)
!4393 = !DILocation(line: 131, column: 2, scope: !4392)
!4394 = !DILocation(line: 131, column: 2, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4392, file: !1, line: 131, column: 2)
!4396 = !DILocation(line: 131, column: 2, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 131, column: 2)
!4398 = !DILocation(line: 131, column: 2, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4397, file: !1, line: 131, column: 2)
!4400 = !DILocation(line: 131, column: 2, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !1, line: 131, column: 2)
!4402 = !{i32 -2141598659, i32 -2141598630, i32 -2141598584, i32 -2141598526, i32 -2141598472, i32 -2141598418, i32 -2141598363, i32 -2141598332}
!4403 = !DILocation(line: 131, column: 2, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4397, file: !1, line: 131, column: 2)
!4405 = !{i32 -2141597921, i32 -2141597914, i32 -2141597862, i32 -2141597831, i32 -2141597801}
!4406 = !DILocation(line: 131, column: 2, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4397, file: !1, line: 131, column: 2)
!4408 = !DILocalVariable(name: "__ret_warn_on", scope: !4409, file: !1, line: 132, type: !93)
!4409 = distinct !DILexicalBlock(scope: !4369, file: !1, line: 132, column: 2)
!4410 = !DILocation(line: 132, column: 2, scope: !4409)
!4411 = !DILocation(line: 132, column: 2, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4409, file: !1, line: 132, column: 2)
!4413 = !DILocation(line: 132, column: 2, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4412, file: !1, line: 132, column: 2)
!4415 = !DILocation(line: 132, column: 2, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4414, file: !1, line: 132, column: 2)
!4417 = !DILocation(line: 132, column: 2, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4414, file: !1, line: 132, column: 2)
!4419 = !{i32 -2141597167, i32 -2141597138, i32 -2141597092, i32 -2141597034, i32 -2141596980, i32 -2141596926, i32 -2141596871, i32 -2141596840}
!4420 = !DILocation(line: 132, column: 2, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4414, file: !1, line: 132, column: 2)
!4422 = !{i32 -2141596429, i32 -2141596422, i32 -2141596370, i32 -2141596339, i32 -2141596309}
!4423 = !DILocation(line: 132, column: 2, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4414, file: !1, line: 132, column: 2)
!4425 = !DILocation(line: 133, column: 29, scope: !4369)
!4426 = !DILocation(line: 133, column: 2, scope: !4369)
!4427 = !DILocation(line: 133, column: 7, scope: !4369)
!4428 = !DILocation(line: 133, column: 15, scope: !4369)
!4429 = !DILocation(line: 133, column: 27, scope: !4369)
!4430 = !DILocation(line: 134, column: 1, scope: !4369)
!4431 = distinct !DISubprogram(name: "__drmm_add_action", scope: !1, file: !1, line: 136, type: !4432, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!93, !190, !185, !170, !218}
!4434 = !DILocalVariable(name: "release", arg: 1, scope: !4435, file: !1, line: 85, type: !185)
!4435 = distinct !DISubprogram(name: "alloc_dr", scope: !1, file: !1, line: 85, type: !4436, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!171, !185, !318, !792, !93}
!4438 = !DILocation(line: 85, column: 66, scope: !4435, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 143, column: 7, scope: !4431)
!4440 = !DILocalVariable(name: "size", arg: 2, scope: !4435, file: !1, line: 86, type: !318)
!4441 = !DILocation(line: 86, column: 14, scope: !4435, inlinedAt: !4439)
!4442 = !DILocalVariable(name: "gfp", arg: 3, scope: !4435, file: !1, line: 86, type: !792)
!4443 = !DILocation(line: 86, column: 26, scope: !4435, inlinedAt: !4439)
!4444 = !DILocalVariable(name: "nid", arg: 4, scope: !4435, file: !1, line: 86, type: !93)
!4445 = !DILocation(line: 86, column: 35, scope: !4435, inlinedAt: !4439)
!4446 = !DILocalVariable(name: "tot_size", scope: !4435, file: !1, line: 88, type: !318)
!4447 = !DILocation(line: 88, column: 9, scope: !4435, inlinedAt: !4439)
!4448 = !DILocalVariable(name: "dr", scope: !4435, file: !1, line: 89, type: !171)
!4449 = !DILocation(line: 89, column: 17, scope: !4435, inlinedAt: !4439)
!4450 = !DILocalVariable(name: "__a", scope: !4451, file: !1, line: 92, type: !321)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !1, line: 92, column: 6)
!4452 = distinct !DILexicalBlock(scope: !4435, file: !1, line: 92, column: 6)
!4453 = !DILocation(line: 92, column: 6, scope: !4451, inlinedAt: !4439)
!4454 = !DILocalVariable(name: "__b", scope: !4451, file: !1, line: 92, type: !318)
!4455 = !DILocalVariable(name: "__d", scope: !4451, file: !1, line: 92, type: !4456)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!4457 = !DILocalVariable(name: "dev", arg: 1, scope: !4431, file: !1, line: 136, type: !190)
!4458 = !DILocation(line: 136, column: 42, scope: !4431)
!4459 = !DILocalVariable(name: "action", arg: 2, scope: !4431, file: !1, line: 137, type: !185)
!4460 = !DILocation(line: 137, column: 26, scope: !4431)
!4461 = !DILocalVariable(name: "data", arg: 3, scope: !4431, file: !1, line: 138, type: !170)
!4462 = !DILocation(line: 138, column: 15, scope: !4431)
!4463 = !DILocalVariable(name: "name", arg: 4, scope: !4431, file: !1, line: 138, type: !218)
!4464 = !DILocation(line: 138, column: 33, scope: !4431)
!4465 = !DILocalVariable(name: "dr", scope: !4431, file: !1, line: 140, type: !171)
!4466 = !DILocation(line: 140, column: 17, scope: !4431)
!4467 = !DILocalVariable(name: "void_ptr", scope: !4431, file: !1, line: 141, type: !859)
!4468 = !DILocation(line: 141, column: 9, scope: !4431)
!4469 = !DILocation(line: 143, column: 16, scope: !4431)
!4470 = !DILocation(line: 143, column: 24, scope: !4431)
!4471 = !DILocation(line: 145, column: 21, scope: !4431)
!4472 = !DILocation(line: 145, column: 26, scope: !4431)
!4473 = !DILocation(line: 145, column: 9, scope: !4431)
!4474 = !DILocation(line: 92, column: 6, scope: !4452, inlinedAt: !4439)
!4475 = !DILocation(line: 92, column: 6, scope: !4435, inlinedAt: !4439)
!4476 = !DILocation(line: 93, column: 3, scope: !4452, inlinedAt: !4439)
!4477 = !DILocation(line: 95, column: 7, scope: !4435, inlinedAt: !4439)
!4478 = !DILocation(line: 95, column: 5, scope: !4435, inlinedAt: !4439)
!4479 = !DILocation(line: 96, column: 6, scope: !4480, inlinedAt: !4439)
!4480 = distinct !DILexicalBlock(scope: !4435, file: !1, line: 96, column: 6)
!4481 = !DILocation(line: 96, column: 6, scope: !4435, inlinedAt: !4439)
!4482 = !DILocation(line: 97, column: 3, scope: !4480, inlinedAt: !4439)
!4483 = !DILocation(line: 99, column: 9, scope: !4435, inlinedAt: !4439)
!4484 = !DILocation(line: 99, column: 2, scope: !4435, inlinedAt: !4439)
!4485 = !DILocation(line: 101, column: 18, scope: !4435, inlinedAt: !4439)
!4486 = !DILocation(line: 101, column: 22, scope: !4435, inlinedAt: !4439)
!4487 = !DILocation(line: 101, column: 27, scope: !4435, inlinedAt: !4439)
!4488 = !DILocation(line: 101, column: 2, scope: !4435, inlinedAt: !4439)
!4489 = !DILocation(line: 102, column: 21, scope: !4435, inlinedAt: !4439)
!4490 = !DILocation(line: 102, column: 2, scope: !4435, inlinedAt: !4439)
!4491 = !DILocation(line: 102, column: 6, scope: !4435, inlinedAt: !4439)
!4492 = !DILocation(line: 102, column: 11, scope: !4435, inlinedAt: !4439)
!4493 = !DILocation(line: 102, column: 19, scope: !4435, inlinedAt: !4439)
!4494 = !DILocation(line: 103, column: 18, scope: !4435, inlinedAt: !4439)
!4495 = !DILocation(line: 103, column: 2, scope: !4435, inlinedAt: !4439)
!4496 = !DILocation(line: 103, column: 6, scope: !4435, inlinedAt: !4439)
!4497 = !DILocation(line: 103, column: 11, scope: !4435, inlinedAt: !4439)
!4498 = !DILocation(line: 103, column: 16, scope: !4435, inlinedAt: !4439)
!4499 = !DILocation(line: 105, column: 9, scope: !4435, inlinedAt: !4439)
!4500 = !DILocation(line: 105, column: 2, scope: !4435, inlinedAt: !4439)
!4501 = !DILocation(line: 106, column: 1, scope: !4435, inlinedAt: !4439)
!4502 = !DILocation(line: 143, column: 5, scope: !4431)
!4503 = !DILocation(line: 146, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4431, file: !1, line: 146, column: 6)
!4505 = !DILocation(line: 146, column: 6, scope: !4431)
!4506 = !DILocation(line: 147, column: 3, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !1, line: 146, column: 11)
!4508 = !DILocation(line: 149, column: 3, scope: !4507)
!4509 = !DILocation(line: 152, column: 32, scope: !4431)
!4510 = !DILocation(line: 152, column: 18, scope: !4431)
!4511 = !DILocation(line: 152, column: 2, scope: !4431)
!4512 = !DILocation(line: 152, column: 6, scope: !4431)
!4513 = !DILocation(line: 152, column: 11, scope: !4431)
!4514 = !DILocation(line: 152, column: 16, scope: !4431)
!4515 = !DILocation(line: 153, column: 6, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4431, file: !1, line: 153, column: 6)
!4517 = !DILocation(line: 153, column: 6, scope: !4431)
!4518 = !DILocation(line: 154, column: 24, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4516, file: !1, line: 153, column: 12)
!4520 = !DILocation(line: 154, column: 28, scope: !4519)
!4521 = !DILocation(line: 154, column: 14, scope: !4519)
!4522 = !DILocation(line: 154, column: 12, scope: !4519)
!4523 = !DILocation(line: 155, column: 15, scope: !4519)
!4524 = !DILocation(line: 155, column: 4, scope: !4519)
!4525 = !DILocation(line: 155, column: 13, scope: !4519)
!4526 = !DILocation(line: 156, column: 2, scope: !4519)
!4527 = !DILocation(line: 158, column: 9, scope: !4431)
!4528 = !DILocation(line: 158, column: 14, scope: !4431)
!4529 = !DILocation(line: 158, column: 2, scope: !4431)
!4530 = !DILocation(line: 160, column: 2, scope: !4431)
!4531 = !DILocation(line: 161, column: 1, scope: !4431)
!4532 = distinct !DISubprogram(name: "dev_to_node", scope: !71, file: !71, line: 630, type: !3478, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4533 = !DILocalVariable(name: "dev", arg: 1, scope: !4532, file: !71, line: 630, type: !210)
!4534 = !DILocation(line: 630, column: 46, scope: !4532)
!4535 = !DILocation(line: 632, column: 2, scope: !4532)
!4536 = distinct !DISubprogram(name: "add_dr", scope: !1, file: !1, line: 116, type: !4537, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !190, !171}
!4539 = !DILocalVariable(name: "lock", arg: 1, scope: !4540, file: !4541, line: 407, type: !1103)
!4540 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4541, file: !4541, line: 407, type: !4542, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4541 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !1103, !321}
!4544 = !DILocation(line: 407, column: 64, scope: !4540, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 122, column: 2, scope: !4536)
!4546 = !DILocalVariable(name: "flags", arg: 2, scope: !4540, file: !4541, line: 407, type: !321)
!4547 = !DILocation(line: 407, column: 84, scope: !4540, inlinedAt: !4545)
!4548 = !DILocalVariable(name: "lock", arg: 1, scope: !4549, file: !4541, line: 327, type: !1103)
!4549 = distinct !DISubprogram(name: "spinlock_check", scope: !4541, file: !4541, line: 327, type: !4550, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!4552, !1103}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!4553 = !DILocation(line: 327, column: 67, scope: !4549, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 120, column: 2, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !1, line: 120, column: 2)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !1, line: 120, column: 2)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !1, line: 120, column: 2)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !1, line: 120, column: 2)
!4559 = distinct !DILexicalBlock(scope: !4536, file: !1, line: 120, column: 2)
!4560 = !DILocalVariable(name: "dev", arg: 1, scope: !4536, file: !1, line: 116, type: !190)
!4561 = !DILocation(line: 116, column: 39, scope: !4536)
!4562 = !DILocalVariable(name: "dr", arg: 2, scope: !4536, file: !1, line: 116, type: !171)
!4563 = !DILocation(line: 116, column: 59, scope: !4536)
!4564 = !DILocalVariable(name: "flags", scope: !4536, file: !1, line: 118, type: !321)
!4565 = !DILocation(line: 118, column: 16, scope: !4536)
!4566 = !DILocation(line: 120, column: 2, scope: !4536)
!4567 = !DILocation(line: 120, column: 2, scope: !4559)
!4568 = !DILocalVariable(name: "__dummy", scope: !4569, file: !1, line: 120, type: !321)
!4569 = distinct !DILexicalBlock(scope: !4558, file: !1, line: 120, column: 2)
!4570 = !DILocation(line: 120, column: 2, scope: !4569)
!4571 = !DILocalVariable(name: "__dummy2", scope: !4569, file: !1, line: 120, type: !321)
!4572 = !DILocation(line: 120, column: 2, scope: !4558)
!4573 = !DILocation(line: 120, column: 2, scope: !4557)
!4574 = !DILocation(line: 120, column: 2, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4557, file: !1, line: 120, column: 2)
!4576 = !DILocalVariable(name: "__dummy", scope: !4577, file: !1, line: 120, type: !321)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !1, line: 120, column: 2)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !1, line: 120, column: 2)
!4579 = !DILocation(line: 120, column: 2, scope: !4577)
!4580 = !DILocalVariable(name: "__dummy2", scope: !4577, file: !1, line: 120, type: !321)
!4581 = !DILocation(line: 120, column: 2, scope: !4578)
!4582 = !DILocation(line: 120, column: 2, scope: !4556)
!4583 = !{i32 -2141600912}
!4584 = !DILocation(line: 120, column: 2, scope: !4555)
!4585 = !DILocation(line: 329, column: 10, scope: !4549, inlinedAt: !4554)
!4586 = !DILocation(line: 329, column: 16, scope: !4549, inlinedAt: !4554)
!4587 = !DILocation(line: 121, column: 12, scope: !4536)
!4588 = !DILocation(line: 121, column: 16, scope: !4536)
!4589 = !DILocation(line: 121, column: 21, scope: !4536)
!4590 = !DILocation(line: 121, column: 29, scope: !4536)
!4591 = !DILocation(line: 121, column: 34, scope: !4536)
!4592 = !DILocation(line: 121, column: 42, scope: !4536)
!4593 = !DILocation(line: 121, column: 2, scope: !4536)
!4594 = !DILocation(line: 122, column: 26, scope: !4536)
!4595 = !DILocation(line: 122, column: 31, scope: !4536)
!4596 = !DILocation(line: 122, column: 39, scope: !4536)
!4597 = !DILocation(line: 122, column: 45, scope: !4536)
!4598 = !DILocalVariable(name: "__dummy", scope: !4599, file: !4541, line: 409, type: !321)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4541, line: 409, column: 2)
!4600 = distinct !DILexicalBlock(scope: !4540, file: !4541, line: 409, column: 2)
!4601 = !DILocation(line: 409, column: 2, scope: !4599, inlinedAt: !4545)
!4602 = !DILocalVariable(name: "__dummy2", scope: !4599, file: !4541, line: 409, type: !321)
!4603 = !DILocalVariable(name: "__dummy", scope: !4604, file: !4541, line: 409, type: !321)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !4541, line: 409, column: 2)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !4541, line: 409, column: 2)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !4541, line: 409, column: 2)
!4607 = distinct !DILexicalBlock(scope: !4600, file: !4541, line: 409, column: 2)
!4608 = !DILocation(line: 409, column: 2, scope: !4604, inlinedAt: !4545)
!4609 = !DILocalVariable(name: "__dummy2", scope: !4604, file: !4541, line: 409, type: !321)
!4610 = !DILocation(line: 409, column: 2, scope: !4605, inlinedAt: !4545)
!4611 = !DILocation(line: 409, column: 2, scope: !4612, inlinedAt: !4545)
!4612 = distinct !DILexicalBlock(scope: !4607, file: !4541, line: 409, column: 2)
!4613 = !{i32 -2145544166}
!4614 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !4545)
!4615 = distinct !DILexicalBlock(scope: !4612, file: !4541, line: 409, column: 2)
!4616 = !DILocation(line: 124, column: 2, scope: !4536)
!4617 = !DILocation(line: 126, column: 1, scope: !4536)
!4618 = distinct !DISubprogram(name: "__drmm_add_action_or_reset", scope: !1, file: !1, line: 164, type: !4432, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4619 = !DILocalVariable(name: "dev", arg: 1, scope: !4618, file: !1, line: 164, type: !190)
!4620 = !DILocation(line: 164, column: 51, scope: !4618)
!4621 = !DILocalVariable(name: "action", arg: 2, scope: !4618, file: !1, line: 165, type: !185)
!4622 = !DILocation(line: 165, column: 28, scope: !4618)
!4623 = !DILocalVariable(name: "data", arg: 3, scope: !4618, file: !1, line: 166, type: !170)
!4624 = !DILocation(line: 166, column: 17, scope: !4618)
!4625 = !DILocalVariable(name: "name", arg: 4, scope: !4618, file: !1, line: 166, type: !218)
!4626 = !DILocation(line: 166, column: 35, scope: !4618)
!4627 = !DILocalVariable(name: "ret", scope: !4618, file: !1, line: 168, type: !93)
!4628 = !DILocation(line: 168, column: 6, scope: !4618)
!4629 = !DILocation(line: 170, column: 26, scope: !4618)
!4630 = !DILocation(line: 170, column: 31, scope: !4618)
!4631 = !DILocation(line: 170, column: 39, scope: !4618)
!4632 = !DILocation(line: 170, column: 45, scope: !4618)
!4633 = !DILocation(line: 170, column: 8, scope: !4618)
!4634 = !DILocation(line: 170, column: 6, scope: !4618)
!4635 = !DILocation(line: 171, column: 6, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4618, file: !1, line: 171, column: 6)
!4637 = !DILocation(line: 171, column: 6, scope: !4618)
!4638 = !DILocation(line: 172, column: 3, scope: !4636)
!4639 = !DILocation(line: 172, column: 10, scope: !4636)
!4640 = !DILocation(line: 172, column: 15, scope: !4636)
!4641 = !DILocation(line: 174, column: 9, scope: !4618)
!4642 = !DILocation(line: 174, column: 2, scope: !4618)
!4643 = distinct !DISubprogram(name: "drmm_kmalloc", scope: !1, file: !1, line: 188, type: !4644, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!170, !190, !318, !792}
!4646 = !DILocation(line: 85, column: 66, scope: !4435, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 192, column: 7, scope: !4643)
!4648 = !DILocation(line: 86, column: 14, scope: !4435, inlinedAt: !4647)
!4649 = !DILocation(line: 86, column: 26, scope: !4435, inlinedAt: !4647)
!4650 = !DILocation(line: 86, column: 35, scope: !4435, inlinedAt: !4647)
!4651 = !DILocation(line: 88, column: 9, scope: !4435, inlinedAt: !4647)
!4652 = !DILocation(line: 89, column: 17, scope: !4435, inlinedAt: !4647)
!4653 = !DILocation(line: 92, column: 6, scope: !4451, inlinedAt: !4647)
!4654 = !DILocalVariable(name: "dev", arg: 1, scope: !4643, file: !1, line: 188, type: !190)
!4655 = !DILocation(line: 188, column: 39, scope: !4643)
!4656 = !DILocalVariable(name: "size", arg: 2, scope: !4643, file: !1, line: 188, type: !318)
!4657 = !DILocation(line: 188, column: 51, scope: !4643)
!4658 = !DILocalVariable(name: "gfp", arg: 3, scope: !4643, file: !1, line: 188, type: !792)
!4659 = !DILocation(line: 188, column: 63, scope: !4643)
!4660 = !DILocalVariable(name: "dr", scope: !4643, file: !1, line: 190, type: !171)
!4661 = !DILocation(line: 190, column: 17, scope: !4643)
!4662 = !DILocation(line: 192, column: 22, scope: !4643)
!4663 = !DILocation(line: 192, column: 28, scope: !4643)
!4664 = !DILocation(line: 192, column: 45, scope: !4643)
!4665 = !DILocation(line: 192, column: 50, scope: !4643)
!4666 = !DILocation(line: 192, column: 33, scope: !4643)
!4667 = !DILocation(line: 92, column: 6, scope: !4452, inlinedAt: !4647)
!4668 = !DILocation(line: 92, column: 6, scope: !4435, inlinedAt: !4647)
!4669 = !DILocation(line: 93, column: 3, scope: !4452, inlinedAt: !4647)
!4670 = !DILocation(line: 95, column: 7, scope: !4435, inlinedAt: !4647)
!4671 = !DILocation(line: 95, column: 5, scope: !4435, inlinedAt: !4647)
!4672 = !DILocation(line: 96, column: 6, scope: !4480, inlinedAt: !4647)
!4673 = !DILocation(line: 96, column: 6, scope: !4435, inlinedAt: !4647)
!4674 = !DILocation(line: 97, column: 3, scope: !4480, inlinedAt: !4647)
!4675 = !DILocation(line: 99, column: 9, scope: !4435, inlinedAt: !4647)
!4676 = !DILocation(line: 99, column: 2, scope: !4435, inlinedAt: !4647)
!4677 = !DILocation(line: 101, column: 18, scope: !4435, inlinedAt: !4647)
!4678 = !DILocation(line: 101, column: 22, scope: !4435, inlinedAt: !4647)
!4679 = !DILocation(line: 101, column: 27, scope: !4435, inlinedAt: !4647)
!4680 = !DILocation(line: 101, column: 2, scope: !4435, inlinedAt: !4647)
!4681 = !DILocation(line: 102, column: 21, scope: !4435, inlinedAt: !4647)
!4682 = !DILocation(line: 102, column: 2, scope: !4435, inlinedAt: !4647)
!4683 = !DILocation(line: 102, column: 6, scope: !4435, inlinedAt: !4647)
!4684 = !DILocation(line: 102, column: 11, scope: !4435, inlinedAt: !4647)
!4685 = !DILocation(line: 102, column: 19, scope: !4435, inlinedAt: !4647)
!4686 = !DILocation(line: 103, column: 18, scope: !4435, inlinedAt: !4647)
!4687 = !DILocation(line: 103, column: 2, scope: !4435, inlinedAt: !4647)
!4688 = !DILocation(line: 103, column: 6, scope: !4435, inlinedAt: !4647)
!4689 = !DILocation(line: 103, column: 11, scope: !4435, inlinedAt: !4647)
!4690 = !DILocation(line: 103, column: 16, scope: !4435, inlinedAt: !4647)
!4691 = !DILocation(line: 105, column: 9, scope: !4435, inlinedAt: !4647)
!4692 = !DILocation(line: 105, column: 2, scope: !4435, inlinedAt: !4647)
!4693 = !DILocation(line: 106, column: 1, scope: !4435, inlinedAt: !4647)
!4694 = !DILocation(line: 192, column: 5, scope: !4643)
!4695 = !DILocation(line: 193, column: 7, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4643, file: !1, line: 193, column: 6)
!4697 = !DILocation(line: 193, column: 6, scope: !4643)
!4698 = !DILocation(line: 194, column: 3, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4696, file: !1, line: 193, column: 11)
!4700 = !DILocation(line: 196, column: 3, scope: !4699)
!4701 = !DILocation(line: 198, column: 18, scope: !4643)
!4702 = !DILocation(line: 198, column: 2, scope: !4643)
!4703 = !DILocation(line: 198, column: 6, scope: !4643)
!4704 = !DILocation(line: 198, column: 11, scope: !4643)
!4705 = !DILocation(line: 198, column: 16, scope: !4643)
!4706 = !DILocation(line: 200, column: 9, scope: !4643)
!4707 = !DILocation(line: 200, column: 14, scope: !4643)
!4708 = !DILocation(line: 200, column: 2, scope: !4643)
!4709 = !DILocation(line: 202, column: 9, scope: !4643)
!4710 = !DILocation(line: 202, column: 13, scope: !4643)
!4711 = !DILocation(line: 202, column: 2, scope: !4643)
!4712 = !DILocation(line: 203, column: 1, scope: !4643)
!4713 = distinct !DISubprogram(name: "drmm_kstrdup", scope: !1, file: !1, line: 216, type: !4714, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!271, !190, !218, !792}
!4716 = !DILocalVariable(name: "dev", arg: 1, scope: !4713, file: !1, line: 216, type: !190)
!4717 = !DILocation(line: 216, column: 39, scope: !4713)
!4718 = !DILocalVariable(name: "s", arg: 2, scope: !4713, file: !1, line: 216, type: !218)
!4719 = !DILocation(line: 216, column: 56, scope: !4713)
!4720 = !DILocalVariable(name: "gfp", arg: 3, scope: !4713, file: !1, line: 216, type: !792)
!4721 = !DILocation(line: 216, column: 65, scope: !4713)
!4722 = !DILocalVariable(name: "size", scope: !4713, file: !1, line: 218, type: !318)
!4723 = !DILocation(line: 218, column: 9, scope: !4713)
!4724 = !DILocalVariable(name: "buf", scope: !4713, file: !1, line: 219, type: !271)
!4725 = !DILocation(line: 219, column: 8, scope: !4713)
!4726 = !DILocation(line: 221, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4713, file: !1, line: 221, column: 6)
!4728 = !DILocation(line: 221, column: 6, scope: !4713)
!4729 = !DILocation(line: 222, column: 3, scope: !4727)
!4730 = !DILocation(line: 224, column: 16, scope: !4713)
!4731 = !DILocation(line: 224, column: 9, scope: !4713)
!4732 = !DILocation(line: 224, column: 19, scope: !4713)
!4733 = !DILocation(line: 224, column: 7, scope: !4713)
!4734 = !DILocation(line: 225, column: 21, scope: !4713)
!4735 = !DILocation(line: 225, column: 26, scope: !4713)
!4736 = !DILocation(line: 225, column: 32, scope: !4713)
!4737 = !DILocation(line: 225, column: 8, scope: !4713)
!4738 = !DILocation(line: 225, column: 6, scope: !4713)
!4739 = !DILocation(line: 226, column: 6, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4713, file: !1, line: 226, column: 6)
!4741 = !DILocation(line: 226, column: 6, scope: !4713)
!4742 = !DILocation(line: 227, column: 10, scope: !4740)
!4743 = !DILocation(line: 227, column: 15, scope: !4740)
!4744 = !DILocation(line: 227, column: 18, scope: !4740)
!4745 = !DILocation(line: 227, column: 3, scope: !4740)
!4746 = !DILocation(line: 228, column: 9, scope: !4713)
!4747 = !DILocation(line: 228, column: 2, scope: !4713)
!4748 = !DILocation(line: 229, column: 1, scope: !4713)
!4749 = distinct !DISubprogram(name: "drmm_kfree", scope: !1, file: !1, line: 241, type: !188, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4750 = !DILocation(line: 407, column: 64, scope: !4540, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 257, column: 2, scope: !4749)
!4752 = !DILocation(line: 407, column: 84, scope: !4540, inlinedAt: !4751)
!4753 = !DILocation(line: 327, column: 67, scope: !4549, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 249, column: 2, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4756, file: !1, line: 249, column: 2)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !1, line: 249, column: 2)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 249, column: 2)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 249, column: 2)
!4759 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 249, column: 2)
!4760 = !DILocalVariable(name: "dev", arg: 1, scope: !4749, file: !1, line: 241, type: !190)
!4761 = !DILocation(line: 241, column: 36, scope: !4749)
!4762 = !DILocalVariable(name: "data", arg: 2, scope: !4749, file: !1, line: 241, type: !170)
!4763 = !DILocation(line: 241, column: 47, scope: !4749)
!4764 = !DILocalVariable(name: "dr_match", scope: !4749, file: !1, line: 243, type: !171)
!4765 = !DILocation(line: 243, column: 17, scope: !4749)
!4766 = !DILocalVariable(name: "dr", scope: !4749, file: !1, line: 243, type: !171)
!4767 = !DILocation(line: 243, column: 35, scope: !4749)
!4768 = !DILocalVariable(name: "flags", scope: !4749, file: !1, line: 244, type: !321)
!4769 = !DILocation(line: 244, column: 16, scope: !4749)
!4770 = !DILocation(line: 246, column: 7, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 246, column: 6)
!4772 = !DILocation(line: 246, column: 6, scope: !4749)
!4773 = !DILocation(line: 247, column: 3, scope: !4771)
!4774 = !DILocation(line: 249, column: 2, scope: !4749)
!4775 = !DILocation(line: 249, column: 2, scope: !4759)
!4776 = !DILocalVariable(name: "__dummy", scope: !4777, file: !1, line: 249, type: !321)
!4777 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 249, column: 2)
!4778 = !DILocation(line: 249, column: 2, scope: !4777)
!4779 = !DILocalVariable(name: "__dummy2", scope: !4777, file: !1, line: 249, type: !321)
!4780 = !DILocation(line: 249, column: 2, scope: !4758)
!4781 = !DILocation(line: 249, column: 2, scope: !4757)
!4782 = !DILocation(line: 249, column: 2, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4757, file: !1, line: 249, column: 2)
!4784 = !DILocalVariable(name: "__dummy", scope: !4785, file: !1, line: 249, type: !321)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !1, line: 249, column: 2)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !1, line: 249, column: 2)
!4787 = !DILocation(line: 249, column: 2, scope: !4785)
!4788 = !DILocalVariable(name: "__dummy2", scope: !4785, file: !1, line: 249, type: !321)
!4789 = !DILocation(line: 249, column: 2, scope: !4786)
!4790 = !DILocation(line: 249, column: 2, scope: !4756)
!4791 = !{i32 -2141594060}
!4792 = !DILocation(line: 249, column: 2, scope: !4755)
!4793 = !DILocation(line: 329, column: 10, scope: !4549, inlinedAt: !4754)
!4794 = !DILocation(line: 329, column: 16, scope: !4549, inlinedAt: !4754)
!4795 = !DILocalVariable(name: "__mptr", scope: !4796, file: !1, line: 250, type: !170)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !1, line: 250, column: 2)
!4797 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 250, column: 2)
!4798 = !DILocation(line: 250, column: 2, scope: !4796)
!4799 = !DILocation(line: 250, column: 2, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !1, line: 250, column: 2)
!4801 = !DILocation(line: 250, column: 2, scope: !4797)
!4802 = !DILocation(line: 250, column: 2, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4797, file: !1, line: 250, column: 2)
!4804 = !DILocation(line: 251, column: 7, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !1, line: 251, column: 7)
!4806 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 250, column: 63)
!4807 = !DILocation(line: 251, column: 11, scope: !4805)
!4808 = !DILocation(line: 251, column: 19, scope: !4805)
!4809 = !DILocation(line: 251, column: 16, scope: !4805)
!4810 = !DILocation(line: 251, column: 7, scope: !4806)
!4811 = !DILocation(line: 252, column: 15, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4805, file: !1, line: 251, column: 25)
!4813 = !DILocation(line: 252, column: 13, scope: !4812)
!4814 = !DILocation(line: 253, column: 11, scope: !4812)
!4815 = !DILocation(line: 253, column: 16, scope: !4812)
!4816 = !DILocation(line: 253, column: 4, scope: !4812)
!4817 = !DILocation(line: 254, column: 4, scope: !4812)
!4818 = !DILocation(line: 256, column: 2, scope: !4806)
!4819 = !DILocalVariable(name: "__mptr", scope: !4820, file: !1, line: 250, type: !170)
!4820 = distinct !DILexicalBlock(scope: !4803, file: !1, line: 250, column: 2)
!4821 = !DILocation(line: 250, column: 2, scope: !4820)
!4822 = !DILocation(line: 250, column: 2, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4820, file: !1, line: 250, column: 2)
!4824 = distinct !{!4824, !4801, !4825}
!4825 = !DILocation(line: 256, column: 2, scope: !4797)
!4826 = !DILocation(line: 257, column: 26, scope: !4749)
!4827 = !DILocation(line: 257, column: 31, scope: !4749)
!4828 = !DILocation(line: 257, column: 39, scope: !4749)
!4829 = !DILocation(line: 257, column: 45, scope: !4749)
!4830 = !DILocation(line: 409, column: 2, scope: !4599, inlinedAt: !4751)
!4831 = !DILocation(line: 409, column: 2, scope: !4604, inlinedAt: !4751)
!4832 = !DILocation(line: 409, column: 2, scope: !4605, inlinedAt: !4751)
!4833 = !DILocation(line: 409, column: 2, scope: !4612, inlinedAt: !4751)
!4834 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !4751)
!4835 = !DILocalVariable(name: "__ret_warn_on", scope: !4836, file: !1, line: 259, type: !93)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !1, line: 259, column: 6)
!4837 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 259, column: 6)
!4838 = !DILocation(line: 259, column: 6, scope: !4836)
!4839 = !DILocation(line: 259, column: 6, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4836, file: !1, line: 259, column: 6)
!4841 = !DILocation(line: 259, column: 6, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4840, file: !1, line: 259, column: 6)
!4843 = !DILocation(line: 259, column: 6, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4842, file: !1, line: 259, column: 6)
!4845 = !DILocation(line: 259, column: 6, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4842, file: !1, line: 259, column: 6)
!4847 = !{i32 -2141589281, i32 -2141589252, i32 -2141589206, i32 -2141589148, i32 -2141589094, i32 -2141589040, i32 -2141588985, i32 -2141588954}
!4848 = !DILocation(line: 259, column: 6, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4842, file: !1, line: 259, column: 6)
!4850 = !{i32 -2141588543, i32 -2141588536, i32 -2141588484, i32 -2141588453, i32 -2141588423}
!4851 = !DILocation(line: 259, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4842, file: !1, line: 259, column: 6)
!4853 = !DILocation(line: 259, column: 6, scope: !4837)
!4854 = !DILocation(line: 259, column: 6, scope: !4749)
!4855 = !DILocation(line: 260, column: 3, scope: !4837)
!4856 = !DILocation(line: 262, column: 10, scope: !4749)
!4857 = !DILocation(line: 262, column: 2, scope: !4749)
!4858 = !DILocation(line: 263, column: 1, scope: !4749)
!4859 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4860, file: !4860, line: 666, type: !4861, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4860 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!321}
!4863 = !DILocalVariable(name: "f", scope: !4859, file: !4860, line: 668, type: !321)
!4864 = !DILocation(line: 668, column: 16, scope: !4859)
!4865 = !DILocation(line: 670, column: 6, scope: !4859)
!4866 = !DILocation(line: 670, column: 4, scope: !4859)
!4867 = !DILocation(line: 671, column: 2, scope: !4859)
!4868 = !DILocation(line: 672, column: 9, scope: !4859)
!4869 = !DILocation(line: 672, column: 2, scope: !4859)
!4870 = distinct !DISubprogram(name: "del_dr", scope: !1, file: !1, line: 108, type: !4537, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4871 = !DILocalVariable(name: "dev", arg: 1, scope: !4870, file: !1, line: 108, type: !190)
!4872 = !DILocation(line: 108, column: 39, scope: !4870)
!4873 = !DILocalVariable(name: "dr", arg: 2, scope: !4870, file: !1, line: 108, type: !171)
!4874 = !DILocation(line: 108, column: 59, scope: !4870)
!4875 = !DILocation(line: 110, column: 17, scope: !4870)
!4876 = !DILocation(line: 110, column: 21, scope: !4870)
!4877 = !DILocation(line: 110, column: 26, scope: !4870)
!4878 = !DILocation(line: 110, column: 2, scope: !4870)
!4879 = !DILocation(line: 112, column: 2, scope: !4870)
!4880 = !DILocation(line: 114, column: 1, scope: !4870)
!4881 = distinct !DISubprogram(name: "__list_del_entry", scope: !4343, file: !4343, line: 130, type: !4344, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4882 = !DILocalVariable(name: "entry", arg: 1, scope: !4881, file: !4343, line: 130, type: !182)
!4883 = !DILocation(line: 130, column: 55, scope: !4881)
!4884 = !DILocation(line: 132, column: 30, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4881, file: !4343, line: 132, column: 6)
!4886 = !DILocation(line: 132, column: 7, scope: !4885)
!4887 = !DILocation(line: 132, column: 6, scope: !4881)
!4888 = !DILocation(line: 133, column: 3, scope: !4885)
!4889 = !DILocation(line: 135, column: 13, scope: !4881)
!4890 = !DILocation(line: 135, column: 20, scope: !4881)
!4891 = !DILocation(line: 135, column: 26, scope: !4881)
!4892 = !DILocation(line: 135, column: 33, scope: !4881)
!4893 = !DILocation(line: 135, column: 2, scope: !4881)
!4894 = !DILocation(line: 136, column: 1, scope: !4881)
!4895 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4343, file: !4343, line: 51, type: !4896, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!487, !182}
!4898 = !DILocalVariable(name: "entry", arg: 1, scope: !4895, file: !4343, line: 51, type: !182)
!4899 = !DILocation(line: 51, column: 61, scope: !4895)
!4900 = !DILocation(line: 53, column: 2, scope: !4895)
!4901 = distinct !DISubprogram(name: "__list_del", scope: !4343, file: !4343, line: 110, type: !4902, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{null, !182, !182}
!4904 = !DILocalVariable(name: "prev", arg: 1, scope: !4901, file: !4343, line: 110, type: !182)
!4905 = !DILocation(line: 110, column: 50, scope: !4901)
!4906 = !DILocalVariable(name: "next", arg: 2, scope: !4901, file: !4343, line: 110, type: !182)
!4907 = !DILocation(line: 110, column: 75, scope: !4901)
!4908 = !DILocation(line: 112, column: 15, scope: !4901)
!4909 = !DILocation(line: 112, column: 2, scope: !4901)
!4910 = !DILocation(line: 112, column: 8, scope: !4901)
!4911 = !DILocation(line: 112, column: 13, scope: !4901)
!4912 = !DILocation(line: 113, column: 2, scope: !4901)
!4913 = !DILocation(line: 113, column: 2, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4901, file: !4343, line: 113, column: 2)
!4915 = !DILocation(line: 113, column: 2, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4914, file: !4343, line: 113, column: 2)
!4917 = !DILocation(line: 113, column: 2, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4914, file: !4343, line: 113, column: 2)
!4919 = !DILocation(line: 114, column: 1, scope: !4901)
!4920 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4921, file: !4921, line: 52, type: !4922, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4921 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!487, !487}
!4924 = !DILocalVariable(name: "overflow", arg: 1, scope: !4920, file: !4921, line: 52, type: !487)
!4925 = !DILocation(line: 52, column: 60, scope: !4920)
!4926 = !DILocation(line: 54, column: 9, scope: !4920)
!4927 = !DILocation(line: 54, column: 2, scope: !4920)
!4928 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4343, file: !4343, line: 33, type: !4344, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4929 = !DILocalVariable(name: "list", arg: 1, scope: !4928, file: !4343, line: 33, type: !182)
!4930 = !DILocation(line: 33, column: 53, scope: !4928)
!4931 = !DILocation(line: 35, column: 2, scope: !4928)
!4932 = !DILocation(line: 35, column: 2, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4928, file: !4343, line: 35, column: 2)
!4934 = !DILocation(line: 35, column: 2, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4933, file: !4343, line: 35, column: 2)
!4936 = !DILocation(line: 35, column: 2, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !4343, line: 35, column: 2)
!4938 = !DILocation(line: 36, column: 15, scope: !4928)
!4939 = !DILocation(line: 36, column: 2, scope: !4928)
!4940 = !DILocation(line: 36, column: 8, scope: !4928)
!4941 = !DILocation(line: 36, column: 13, scope: !4928)
!4942 = !DILocation(line: 37, column: 1, scope: !4928)
!4943 = distinct !DISubprogram(name: "list_add", scope: !4343, file: !4343, line: 84, type: !4902, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4944 = !DILocalVariable(name: "new", arg: 1, scope: !4943, file: !4343, line: 84, type: !182)
!4945 = !DILocation(line: 84, column: 47, scope: !4943)
!4946 = !DILocalVariable(name: "head", arg: 2, scope: !4943, file: !4343, line: 84, type: !182)
!4947 = !DILocation(line: 84, column: 70, scope: !4943)
!4948 = !DILocation(line: 86, column: 13, scope: !4943)
!4949 = !DILocation(line: 86, column: 18, scope: !4943)
!4950 = !DILocation(line: 86, column: 24, scope: !4943)
!4951 = !DILocation(line: 86, column: 30, scope: !4943)
!4952 = !DILocation(line: 86, column: 2, scope: !4943)
!4953 = !DILocation(line: 87, column: 1, scope: !4943)
!4954 = distinct !DISubprogram(name: "__list_add", scope: !4343, file: !4343, line: 63, type: !4955, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !182, !182, !182}
!4957 = !DILocalVariable(name: "new", arg: 1, scope: !4954, file: !4343, line: 63, type: !182)
!4958 = !DILocation(line: 63, column: 49, scope: !4954)
!4959 = !DILocalVariable(name: "prev", arg: 2, scope: !4954, file: !4343, line: 64, type: !182)
!4960 = !DILocation(line: 64, column: 28, scope: !4954)
!4961 = !DILocalVariable(name: "next", arg: 3, scope: !4954, file: !4343, line: 65, type: !182)
!4962 = !DILocation(line: 65, column: 28, scope: !4954)
!4963 = !DILocation(line: 67, column: 24, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4954, file: !4343, line: 67, column: 6)
!4965 = !DILocation(line: 67, column: 29, scope: !4964)
!4966 = !DILocation(line: 67, column: 35, scope: !4964)
!4967 = !DILocation(line: 67, column: 7, scope: !4964)
!4968 = !DILocation(line: 67, column: 6, scope: !4954)
!4969 = !DILocation(line: 68, column: 3, scope: !4964)
!4970 = !DILocation(line: 70, column: 15, scope: !4954)
!4971 = !DILocation(line: 70, column: 2, scope: !4954)
!4972 = !DILocation(line: 70, column: 8, scope: !4954)
!4973 = !DILocation(line: 70, column: 13, scope: !4954)
!4974 = !DILocation(line: 71, column: 14, scope: !4954)
!4975 = !DILocation(line: 71, column: 2, scope: !4954)
!4976 = !DILocation(line: 71, column: 7, scope: !4954)
!4977 = !DILocation(line: 71, column: 12, scope: !4954)
!4978 = !DILocation(line: 72, column: 14, scope: !4954)
!4979 = !DILocation(line: 72, column: 2, scope: !4954)
!4980 = !DILocation(line: 72, column: 7, scope: !4954)
!4981 = !DILocation(line: 72, column: 12, scope: !4954)
!4982 = !DILocation(line: 73, column: 2, scope: !4954)
!4983 = !DILocation(line: 73, column: 2, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4954, file: !4343, line: 73, column: 2)
!4985 = !DILocation(line: 73, column: 2, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4984, file: !4343, line: 73, column: 2)
!4987 = !DILocation(line: 73, column: 2, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4984, file: !4343, line: 73, column: 2)
!4989 = !DILocation(line: 74, column: 1, scope: !4954)
!4990 = distinct !DISubprogram(name: "__list_add_valid", scope: !4343, file: !4343, line: 45, type: !4991, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!487, !182, !182, !182}
!4993 = !DILocalVariable(name: "new", arg: 1, scope: !4990, file: !4343, line: 45, type: !182)
!4994 = !DILocation(line: 45, column: 55, scope: !4990)
!4995 = !DILocalVariable(name: "prev", arg: 2, scope: !4990, file: !4343, line: 46, type: !182)
!4996 = !DILocation(line: 46, column: 23, scope: !4990)
!4997 = !DILocalVariable(name: "next", arg: 3, scope: !4990, file: !4343, line: 47, type: !182)
!4998 = !DILocation(line: 47, column: 23, scope: !4990)
!4999 = !DILocation(line: 49, column: 2, scope: !4990)
!5000 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4860, file: !4860, line: 646, type: !4861, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!5001 = !DILocalVariable(name: "__ret", scope: !5002, file: !4860, line: 648, type: !321)
!5002 = distinct !DILexicalBlock(scope: !5000, file: !4860, line: 648, column: 9)
!5003 = !DILocation(line: 648, column: 9, scope: !5002)
!5004 = !DILocalVariable(name: "__edi", scope: !5002, file: !4860, line: 648, type: !321)
!5005 = !DILocalVariable(name: "__esi", scope: !5002, file: !4860, line: 648, type: !321)
!5006 = !DILocalVariable(name: "__edx", scope: !5002, file: !4860, line: 648, type: !321)
!5007 = !DILocalVariable(name: "__ecx", scope: !5002, file: !4860, line: 648, type: !321)
!5008 = !DILocalVariable(name: "__eax", scope: !5002, file: !4860, line: 648, type: !321)
!5009 = !DILocation(line: 648, column: 9, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !4860, line: 648, column: 9)
!5011 = distinct !DILexicalBlock(scope: !5002, file: !4860, line: 648, column: 9)
!5012 = !{i32 -2145718024, i32 -2145715709, i32 -2145715475, i32 -2145715424, i32 -2145715396, i32 -2145715371, i32 -2145715687, i32 -2145715674, i32 -2145715236, i32 -2145715117, i32 -2145715582, i32 -2145715555, i32 -2145715527, i32 -2145715497}
!5013 = !DILocalVariable(name: "__mask", scope: !5014, file: !4860, line: 648, type: !321)
!5014 = distinct !DILexicalBlock(scope: !5010, file: !4860, line: 648, column: 9)
!5015 = !DILocation(line: 648, column: 9, scope: !5014)
!5016 = !DILocation(line: 648, column: 9, scope: !5011)
!5017 = !DILocation(line: 648, column: 2, scope: !5000)
!5018 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4860, file: !4860, line: 656, type: !1966, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!5019 = !DILocalVariable(name: "__edi", scope: !5020, file: !4860, line: 658, type: !321)
!5020 = distinct !DILexicalBlock(scope: !5018, file: !4860, line: 658, column: 2)
!5021 = !DILocation(line: 658, column: 2, scope: !5020)
!5022 = !DILocalVariable(name: "__esi", scope: !5020, file: !4860, line: 658, type: !321)
!5023 = !DILocalVariable(name: "__edx", scope: !5020, file: !4860, line: 658, type: !321)
!5024 = !DILocalVariable(name: "__ecx", scope: !5020, file: !4860, line: 658, type: !321)
!5025 = !DILocalVariable(name: "__eax", scope: !5020, file: !4860, line: 658, type: !321)
!5026 = !{i32 -2145710930, i32 -2145710198, i32 -2145709964, i32 -2145709913, i32 -2145709885, i32 -2145709860, i32 -2145710176, i32 -2145710163, i32 -2145709725, i32 -2145709606, i32 -2145710071, i32 -2145710044, i32 -2145710016, i32 -2145709986}
!5027 = !DILocation(line: 659, column: 1, scope: !5018)
!5028 = distinct !DISubprogram(name: "list_del_init", scope: !4343, file: !4343, line: 202, type: !4344, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!5029 = !DILocalVariable(name: "entry", arg: 1, scope: !5028, file: !4343, line: 202, type: !182)
!5030 = !DILocation(line: 202, column: 52, scope: !5028)
!5031 = !DILocation(line: 204, column: 19, scope: !5028)
!5032 = !DILocation(line: 204, column: 2, scope: !5028)
!5033 = !DILocation(line: 205, column: 17, scope: !5028)
!5034 = !DILocation(line: 205, column: 2, scope: !5028)
!5035 = !DILocation(line: 206, column: 1, scope: !5028)
!5036 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4860, file: !4860, line: 651, type: !5037, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !321}
!5039 = !DILocalVariable(name: "f", arg: 1, scope: !5036, file: !4860, line: 651, type: !321)
!5040 = !DILocation(line: 651, column: 65, scope: !5036)
!5041 = !DILocalVariable(name: "__edi", scope: !5042, file: !4860, line: 653, type: !321)
!5042 = distinct !DILexicalBlock(scope: !5036, file: !4860, line: 653, column: 2)
!5043 = !DILocation(line: 653, column: 2, scope: !5042)
!5044 = !DILocalVariable(name: "__esi", scope: !5042, file: !4860, line: 653, type: !321)
!5045 = !DILocalVariable(name: "__edx", scope: !5042, file: !4860, line: 653, type: !321)
!5046 = !DILocalVariable(name: "__ecx", scope: !5042, file: !4860, line: 653, type: !321)
!5047 = !DILocalVariable(name: "__eax", scope: !5042, file: !4860, line: 653, type: !321)
!5048 = !{i32 -2145713557, i32 -2145712807, i32 -2145712573, i32 -2145712522, i32 -2145712494, i32 -2145712469, i32 -2145712785, i32 -2145712772, i32 -2145712334, i32 -2145712215, i32 -2145712680, i32 -2145712653, i32 -2145712625, i32 -2145712595}
!5049 = !DILocation(line: 654, column: 1, scope: !5036)
