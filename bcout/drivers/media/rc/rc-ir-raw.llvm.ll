; ModuleID = '../bcout/drivers/media/rc/rc-ir-raw.llvm.bc'
source_filename = "drivers/media/rc/rc-ir-raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.seq_file = type opaque
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
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
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
%struct.rc_dev = type { %struct.device, i8, [5 x %struct.attribute_group*], i8*, i8*, %struct.input_id, i8*, i8*, %struct.rc_map, %struct.mutex, i32, %struct.ir_raw_event_ctrl*, %struct.input_dev*, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, i8*, %struct.spinlock, i8, i64, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, i8, i32 (%struct.rc_dev*, i64*)*, i32 (%struct.rc_dev*)*, void (%struct.rc_dev*)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32, i32)*, i32 (%struct.rc_dev*, i32*, i32)*, void (%struct.rc_dev*, i1)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, i32)* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.ir_raw_event_ctrl = type { %struct.list_head, %struct.task_struct*, %struct.anon.65, i64, %struct.rc_dev*, %struct.spinlock, %struct.timer_list, %struct.ir_raw_event, %struct.ir_raw_event }
%struct.anon.65 = type { %union.anon.66, [512 x %struct.ir_raw_event] }
%union.anon.66 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, i8* }
%struct.ir_raw_event = type { %union.anon.67, i8, i8 }
%union.anon.67 = type { i32 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.ir_raw_timings_manchester = type { i32, i32, i32, i8, i32 }
%struct.ir_raw_timings_pd = type { i32, i32, i32, [2 x i32], i32, i32, i8 }
%struct.ir_raw_timings_pl = type { i32, i32, [2 x i32], i32, i8 }
%struct.ir_raw_handler = type { %struct.list_head, i64, i32 (%struct.rc_dev*, i64)*, i32 (i32, i32, %struct.ir_raw_event*, i32)*, i32, i32, i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)* }

@ir_raw_handler_lock = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ir_raw_handler_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ir_raw_handler_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"IR event FIFO is full!\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@available_protocols = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !4219
@ir_raw_handler_list = internal global %struct.list_head { %struct.list_head* @ir_raw_handler_list, %struct.list_head* @ir_raw_handler_list }, align 8, !dbg !4221
@.str.1 = private unnamed_addr constant [5 x i8] c"rc%u\00", align 1
@ir_raw_client_list = internal global %struct.list_head { %struct.list_head* @ir_raw_client_list, %struct.list_head* @ir_raw_client_list }, align 8, !dbg !4232
@.str.2 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@ir_raw_event_thread.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4223
@.str.4 = private unnamed_addr constant [39 x i8] c"nonsensical timing event of duration 0\00", align 1
@ir_raw_event_thread.__print_once.5 = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4228
@.str.6 = private unnamed_addr constant [34 x i8] c"two consecutive events of type %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@ir_raw_event_thread.__print_once.9 = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4230
@.str.10 = private unnamed_addr constant [41 x i8] c"timing event after reset should be pulse\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_event_store(%struct.rc_dev* %dev, %struct.ir_raw_event* %ev) #0 !dbg !4240 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %ev.addr = alloca %struct.ir_raw_event*, align 8
  %__tmp = alloca %struct.anon.65*, align 8
  %__val = alloca %struct.ir_raw_event, align 4
  %__ret = alloca i32, align 4
  %__recsize = alloca i64, align 8
  %__kfifo = alloca %struct.__kfifo*, align 8
  %__tmpq = alloca %struct.anon.65*, align 8
  %tmp = alloca i32, align 4
  %__tmpl = alloca %struct.anon.65*, align 8
  %tmp5 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  store %struct.ir_raw_event* %ev, %struct.ir_raw_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %ev.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4247
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 11, !dbg !4249
  %1 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !4249
  %tobool = icmp ne %struct.ir_raw_event_ctrl* %1, null, !dbg !4247
  br i1 %tobool, label %if.end, label %if.then, !dbg !4250

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4251
  br label %return, !dbg !4251

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.anon.65** %__tmp, metadata !4252, metadata !DIExpression()), !dbg !4256
  %2 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4256
  %raw1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %2, i32 0, i32 11, !dbg !4256
  %3 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw1, align 8, !dbg !4256
  %kfifo = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %3, i32 0, i32 2, !dbg !4256
  store %struct.anon.65* %kfifo, %struct.anon.65** %__tmp, align 8, !dbg !4256
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %__val, metadata !4257, metadata !DIExpression()), !dbg !4256
  %4 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4256
  %5 = bitcast %struct.ir_raw_event* %__val to i8*, !dbg !4256
  %6 = bitcast %struct.ir_raw_event* %4 to i8*, !dbg !4256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 8, i1 false), !dbg !4256
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !4258, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata i64* %__recsize, metadata !4259, metadata !DIExpression()), !dbg !4256
  store i64 0, i64* %__recsize, align 8, !dbg !4256
  call void @llvm.dbg.declare(metadata %struct.__kfifo** %__kfifo, metadata !4260, metadata !DIExpression()), !dbg !4256
  %7 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !4256
  %8 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %7, i32 0, i32 0, !dbg !4256
  %kfifo2 = bitcast %union.anon.66* %8 to %struct.__kfifo*, !dbg !4256
  store %struct.__kfifo* %kfifo2, %struct.__kfifo** %__kfifo, align 8, !dbg !4256
  %9 = load i64, i64* %__recsize, align 8, !dbg !4262
  %tobool3 = icmp ne i64 %9, 0, !dbg !4262
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !4256

if.then4:                                         ; preds = %if.end
  %10 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !4262
  %11 = bitcast %struct.ir_raw_event* %__val to i8*, !dbg !4262
  %12 = load i64, i64* %__recsize, align 8, !dbg !4262
  %call = call i32 @__kfifo_in_r(%struct.__kfifo* %10, i8* %11, i32 8, i64 %12) #10, !dbg !4262
  store i32 %call, i32* %__ret, align 4, !dbg !4262
  br label %if.end17, !dbg !4262

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.anon.65** %__tmpq, metadata !4264, metadata !DIExpression()), !dbg !4267
  %13 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !4267
  store %struct.anon.65* %13, %struct.anon.65** %__tmpq, align 8, !dbg !4267
  call void @llvm.dbg.declare(metadata %struct.anon.65** %__tmpl, metadata !4268, metadata !DIExpression()), !dbg !4270
  %14 = load %struct.anon.65*, %struct.anon.65** %__tmpq, align 8, !dbg !4270
  store %struct.anon.65* %14, %struct.anon.65** %__tmpl, align 8, !dbg !4270
  %15 = load %struct.anon.65*, %struct.anon.65** %__tmpl, align 8, !dbg !4270
  %16 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %15, i32 0, i32 0, !dbg !4270
  %kfifo6 = bitcast %union.anon.66* %16 to %struct.__kfifo*, !dbg !4270
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo6, i32 0, i32 0, !dbg !4270
  %17 = load i32, i32* %in, align 8, !dbg !4270
  %18 = load %struct.anon.65*, %struct.anon.65** %__tmpl, align 8, !dbg !4270
  %19 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %18, i32 0, i32 0, !dbg !4270
  %kfifo7 = bitcast %union.anon.66* %19 to %struct.__kfifo*, !dbg !4270
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo7, i32 0, i32 1, !dbg !4270
  %20 = load i32, i32* %out, align 4, !dbg !4270
  %sub = sub i32 %17, %20, !dbg !4270
  store i32 %sub, i32* %tmp5, align 4, !dbg !4270
  %21 = load i32, i32* %tmp5, align 4, !dbg !4270
  %22 = load %struct.anon.65*, %struct.anon.65** %__tmpq, align 8, !dbg !4267
  %23 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %22, i32 0, i32 0, !dbg !4267
  %kfifo8 = bitcast %union.anon.66* %23 to %struct.__kfifo*, !dbg !4267
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo8, i32 0, i32 2, !dbg !4267
  %24 = load i32, i32* %mask, align 8, !dbg !4267
  %cmp = icmp ugt i32 %21, %24, !dbg !4267
  %conv = zext i1 %cmp to i32, !dbg !4267
  store i32 %conv, i32* %tmp, align 4, !dbg !4267
  %25 = load i32, i32* %tmp, align 4, !dbg !4267
  %tobool9 = icmp ne i32 %25, 0, !dbg !4271
  %lnot = xor i1 %tobool9, true, !dbg !4271
  %lnot.ext = zext i1 %lnot to i32, !dbg !4271
  store i32 %lnot.ext, i32* %__ret, align 4, !dbg !4271
  %26 = load i32, i32* %__ret, align 4, !dbg !4272
  %tobool10 = icmp ne i32 %26, 0, !dbg !4272
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !4271

if.then11:                                        ; preds = %if.else
  %27 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !4274
  %buf = getelementptr inbounds %struct.anon.65, %struct.anon.65* %27, i32 0, i32 1, !dbg !4274
  %arraydecay = getelementptr inbounds [512 x %struct.ir_raw_event], [512 x %struct.ir_raw_event]* %buf, i64 0, i64 0, !dbg !4274
  %28 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !4274
  %in12 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %28, i32 0, i32 0, !dbg !4274
  %29 = load i32, i32* %in12, align 8, !dbg !4274
  %30 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !4274
  %31 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %30, i32 0, i32 0, !dbg !4274
  %kfifo13 = bitcast %union.anon.66* %31 to %struct.__kfifo*, !dbg !4274
  %mask14 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo13, i32 0, i32 2, !dbg !4274
  %32 = load i32, i32* %mask14, align 8, !dbg !4274
  %and = and i32 %29, %32, !dbg !4274
  %idxprom = zext i32 %and to i64, !dbg !4274
  %arrayidx = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %arraydecay, i64 %idxprom, !dbg !4274
  %33 = bitcast %struct.ir_raw_event* %arrayidx to i8*, !dbg !4274
  %34 = bitcast %struct.ir_raw_event* %__val to i8*, !dbg !4274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false), !dbg !4274
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4274, !srcloc !4276
  %35 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !4274
  %in15 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %35, i32 0, i32 0, !dbg !4274
  %36 = load i32, i32* %in15, align 8, !dbg !4274
  %inc = add i32 %36, 1, !dbg !4274
  store i32 %inc, i32* %in15, align 8, !dbg !4274
  br label %if.end16, !dbg !4274

if.end16:                                         ; preds = %if.then11, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then4
  %37 = load i32, i32* %__ret, align 4, !dbg !4256
  store i32 %37, i32* %tmp18, align 4, !dbg !4262
  %38 = load i32, i32* %tmp18, align 4, !dbg !4256
  %tobool19 = icmp ne i32 %38, 0, !dbg !4277
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !4278

if.then20:                                        ; preds = %if.end17
  %39 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4279
  %dev21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 0, !dbg !4279
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4279
  store i32 -28, i32* %retval, align 4, !dbg !4281
  br label %return, !dbg !4281

if.end22:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !4282
  br label %return, !dbg !4282

return:                                           ; preds = %if.end22, %if.then20, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !4283
  ret i32 %40, !dbg !4283
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @__kfifo_in_r(%struct.__kfifo*, i8*, i32, i64) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_event_store_edge(%struct.rc_dev* %dev, i1 zeroext %pulse) #0 !dbg !4284 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %pulse.addr = alloca i8, align 1
  %now = alloca i64, align 8
  %ev = alloca %struct.ir_raw_event, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  %frombool = zext i1 %pulse to i8
  store i8 %frombool, i8* %pulse.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pulse.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.declare(metadata i64* %now, metadata !4291, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %ev, metadata !4293, metadata !DIExpression()), !dbg !4294
  %0 = bitcast %struct.ir_raw_event* %ev to i8*, !dbg !4294
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false), !dbg !4294
  %1 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4295
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %1, i32 0, i32 11, !dbg !4297
  %2 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !4297
  %tobool = icmp ne %struct.ir_raw_event_ctrl* %2, null, !dbg !4295
  br i1 %tobool, label %if.end, label %if.then, !dbg !4298

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4299
  br label %return, !dbg !4299

if.end:                                           ; preds = %entry
  %call = call i64 @ktime_get() #10, !dbg !4300
  store i64 %call, i64* %now, align 8, !dbg !4301
  %3 = load i64, i64* %now, align 8, !dbg !4302
  %4 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4302
  %raw1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 11, !dbg !4302
  %5 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw1, align 8, !dbg !4302
  %last_event = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %5, i32 0, i32 3, !dbg !4302
  %6 = load i64, i64* %last_event, align 8, !dbg !4302
  %sub = sub i64 %3, %6, !dbg !4302
  %call2 = call i64 @ktime_to_us(i64 %sub) #10, !dbg !4303
  %conv = trunc i64 %call2 to i32, !dbg !4303
  %7 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 0, !dbg !4304
  %duration = bitcast %union.anon.67* %7 to i32*, !dbg !4304
  store i32 %conv, i32* %duration, align 4, !dbg !4305
  %8 = load i8, i8* %pulse.addr, align 1, !dbg !4306
  %tobool3 = trunc i8 %8 to i1, !dbg !4306
  %lnot = xor i1 %tobool3, true, !dbg !4307
  %lnot.ext = zext i1 %lnot to i32, !dbg !4307
  %pulse4 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !4308
  %9 = trunc i32 %lnot.ext to i8, !dbg !4309
  %bf.load = load i8, i8* %pulse4, align 1, !dbg !4309
  %bf.value = and i8 %9, 1, !dbg !4309
  %bf.clear = and i8 %bf.load, -2, !dbg !4309
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !4309
  store i8 %bf.set, i8* %pulse4, align 1, !dbg !4309
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !4309
  %10 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4310
  %call5 = call i32 @ir_raw_event_store_with_timeout(%struct.rc_dev* %10, %struct.ir_raw_event* %ev) #10, !dbg !4311
  store i32 %call5, i32* %retval, align 4, !dbg !4312
  br label %return, !dbg !4312

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4313
  ret i32 %11, !dbg !4313
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_us(i64 %kt) #0 !dbg !4314 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load i64, i64* %kt.addr, align 8, !dbg !4320
  %call = call i64 @ktime_divns(i64 %0, i64 1000) #10, !dbg !4321
  ret i64 %call, !dbg !4322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_event_store_with_timeout(%struct.rc_dev* %dev, %struct.ir_raw_event* %ev) #0 !dbg !4323 {
entry:
  %lock.addr.i29 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i29, metadata !4324, metadata !DIExpression()), !dbg !4329
  %retval.i19 = alloca i64, align 8
  %m.addr.i20 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i20, metadata !4331, metadata !DIExpression()), !dbg !4336
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4331, metadata !DIExpression()), !dbg !4340
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4342, metadata !DIExpression()), !dbg !4344
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %ev.addr = alloca %struct.ir_raw_event*, align 8
  %now = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  store %struct.ir_raw_event* %ev, %struct.ir_raw_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %ev.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata i64* %now, metadata !4350, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i32 0, i32* %rc, align 4, !dbg !4353
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4354
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 11, !dbg !4356
  %1 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !4356
  %tobool = icmp ne %struct.ir_raw_event_ctrl* %1, null, !dbg !4354
  br i1 %tobool, label %if.end, label %if.then, !dbg !4357

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4358
  br label %return, !dbg !4358

if.end:                                           ; preds = %entry
  %call = call i64 @ktime_get() #10, !dbg !4359
  store i64 %call, i64* %now, align 8, !dbg !4360
  %2 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4361
  %raw1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %2, i32 0, i32 11, !dbg !4362
  %3 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw1, align 8, !dbg !4362
  %edge_spinlock = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %3, i32 0, i32 5, !dbg !4363
  store %struct.spinlock* %edge_spinlock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4364, !srcloc !4366
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4367
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4367
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !4367
  %6 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4369
  %7 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4370
  %call2 = call i32 @ir_raw_event_store(%struct.rc_dev* %6, %struct.ir_raw_event* %7) #10, !dbg !4371
  store i32 %call2, i32* %rc, align 4, !dbg !4372
  %8 = load i64, i64* %now, align 8, !dbg !4373
  %9 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4374
  %raw3 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 11, !dbg !4375
  %10 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw3, align 8, !dbg !4375
  %last_event = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %10, i32 0, i32 3, !dbg !4376
  store i64 %8, i64* %last_event, align 8, !dbg !4377
  %11 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4378
  %raw4 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 11, !dbg !4379
  %12 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw4, align 8, !dbg !4379
  %edge_handle = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %12, i32 0, i32 6, !dbg !4380
  %call5 = call i32 @timer_pending(%struct.timer_list* %edge_handle) #10, !dbg !4381
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4381
  br i1 %tobool6, label %lor.lhs.false, label %if.then10, !dbg !4382

lor.lhs.false:                                    ; preds = %if.end
  %13 = load volatile i64, i64* @jiffies, align 8, !dbg !4383
  store i32 15, i32* %m.addr.i, align 4
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !4384
  %15 = call i1 @llvm.is.constant.i32(i32 %14) #9, !dbg !4386
  br i1 %15, label %if.then.i, label %if.else.i, !dbg !4387

if.then.i:                                        ; preds = %lor.lhs.false
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !4388
  %cmp.i = icmp slt i32 %16, 0, !dbg !4391
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4392

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4393
  br label %msecs_to_jiffies.exit, !dbg !4393

if.end.i:                                         ; preds = %if.then.i
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !4394
  %call.i = call i64 @_msecs_to_jiffies(i32 %17) #12, !dbg !4395
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4396
  br label %msecs_to_jiffies.exit, !dbg !4396

if.else.i:                                        ; preds = %lor.lhs.false
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !4397
  %call2.i = call i64 @__msecs_to_jiffies(i32 %18) #12, !dbg !4399
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4400
  br label %msecs_to_jiffies.exit, !dbg !4400

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %19 = load i64, i64* %retval.i, align 8, !dbg !4401
  %add = add i64 %13, %19, !dbg !4383
  %20 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4383
  %raw8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 11, !dbg !4383
  %21 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw8, align 8, !dbg !4383
  %edge_handle9 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %21, i32 0, i32 6, !dbg !4383
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %edge_handle9, i32 0, i32 1, !dbg !4383
  %22 = load i64, i64* %expires, align 8, !dbg !4383
  %sub = sub i64 %add, %22, !dbg !4383
  %cmp = icmp slt i64 %sub, 0, !dbg !4383
  br i1 %cmp, label %if.then10, label %if.end16, !dbg !4402

if.then10:                                        ; preds = %msecs_to_jiffies.exit, %if.end
  %23 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4403
  %raw11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 11, !dbg !4404
  %24 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw11, align 8, !dbg !4404
  %edge_handle12 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %24, i32 0, i32 6, !dbg !4405
  %25 = load volatile i64, i64* @jiffies, align 8, !dbg !4406
  store i32 15, i32* %m.addr.i20, align 4
  %26 = load i32, i32* %m.addr.i20, align 4, !dbg !4407
  %27 = call i1 @llvm.is.constant.i32(i32 %26) #9, !dbg !4408
  br i1 %27, label %if.then.i22, label %if.else.i27, !dbg !4409

if.then.i22:                                      ; preds = %if.then10
  %28 = load i32, i32* %m.addr.i20, align 4, !dbg !4410
  %cmp.i21 = icmp slt i32 %28, 0, !dbg !4411
  br i1 %cmp.i21, label %if.then1.i23, label %if.end.i25, !dbg !4412

if.then1.i23:                                     ; preds = %if.then.i22
  store i64 4611686018427387902, i64* %retval.i19, align 8, !dbg !4413
  br label %msecs_to_jiffies.exit28, !dbg !4413

if.end.i25:                                       ; preds = %if.then.i22
  %29 = load i32, i32* %m.addr.i20, align 4, !dbg !4414
  %call.i24 = call i64 @_msecs_to_jiffies(i32 %29) #12, !dbg !4415
  store i64 %call.i24, i64* %retval.i19, align 8, !dbg !4416
  br label %msecs_to_jiffies.exit28, !dbg !4416

if.else.i27:                                      ; preds = %if.then10
  %30 = load i32, i32* %m.addr.i20, align 4, !dbg !4417
  %call2.i26 = call i64 @__msecs_to_jiffies(i32 %30) #12, !dbg !4418
  store i64 %call2.i26, i64* %retval.i19, align 8, !dbg !4419
  br label %msecs_to_jiffies.exit28, !dbg !4419

msecs_to_jiffies.exit28:                          ; preds = %if.then1.i23, %if.end.i25, %if.else.i27
  %31 = load i64, i64* %retval.i19, align 8, !dbg !4420
  %add14 = add i64 %25, %31, !dbg !4421
  %call15 = call i32 @mod_timer(%struct.timer_list* %edge_handle12, i64 %add14) #10, !dbg !4422
  br label %if.end16, !dbg !4423

if.end16:                                         ; preds = %msecs_to_jiffies.exit28, %msecs_to_jiffies.exit
  %32 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4424
  %raw17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %32, i32 0, i32 11, !dbg !4425
  %33 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw17, align 8, !dbg !4425
  %edge_spinlock18 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %33, i32 0, i32 5, !dbg !4426
  store %struct.spinlock* %edge_spinlock18, %struct.spinlock** %lock.addr.i29, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4427, !srcloc !4429
  %34 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i29, align 8, !dbg !4430
  %35 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %34, i32 0, i32 0, !dbg !4430
  %rlock.i30 = bitcast %union.anon* %35 to %struct.raw_spinlock*, !dbg !4430
  %36 = load i32, i32* %rc, align 4, !dbg !4432
  store i32 %36, i32* %retval, align 4, !dbg !4433
  br label %return, !dbg !4433

return:                                           ; preds = %if.end16, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !4434
  ret i32 %37, !dbg !4434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @timer_pending(%struct.timer_list* %timer) #0 !dbg !4435 {
entry:
  %timer.addr = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %timer, %struct.timer_list** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %timer.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  %0 = load %struct.timer_list*, %struct.timer_list** %timer.addr, align 8, !dbg !4442
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %0, i32 0, i32 0, !dbg !4443
  %call = call i32 @hlist_unhashed_lockless(%struct.hlist_node* %entry1) #10, !dbg !4444
  %tobool = icmp ne i32 %call, 0, !dbg !4445
  %lnot = xor i1 %tobool, true, !dbg !4445
  %lnot.ext = zext i1 %lnot to i32, !dbg !4445
  ret i32 %lnot.ext, !dbg !4446
}

; Function Attrs: noredzone
declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %dev, %struct.ir_raw_event* %ev) #0 !dbg !4447 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %ev.addr = alloca %struct.ir_raw_event*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  store %struct.ir_raw_event* %ev, %struct.ir_raw_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %ev.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4452
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 11, !dbg !4454
  %1 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !4454
  %tobool = icmp ne %struct.ir_raw_event_ctrl* %1, null, !dbg !4452
  br i1 %tobool, label %if.end, label %if.then, !dbg !4455

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4456
  br label %return, !dbg !4456

if.end:                                           ; preds = %entry
  %2 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4457
  %idle = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %2, i32 0, i32 14, !dbg !4459
  %3 = load i8, i8* %idle, align 4, !dbg !4459
  %tobool1 = trunc i8 %3 to i1, !dbg !4459
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !4460

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4461
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %4, i32 0, i32 2, !dbg !4462
  %bf.load = load i8, i8* %pulse, align 1, !dbg !4462
  %bf.clear = and i8 %bf.load, 1, !dbg !4462
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4462
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !4461
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !4463

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4464
  br label %return, !dbg !4464

if.else:                                          ; preds = %land.lhs.true, %if.end
  %5 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4465
  %idle4 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 14, !dbg !4467
  %6 = load i8, i8* %idle4, align 4, !dbg !4467
  %tobool5 = trunc i8 %6 to i1, !dbg !4467
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4468

if.then6:                                         ; preds = %if.else
  %7 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4469
  call void @ir_raw_event_set_idle(%struct.rc_dev* %7, i1 zeroext false) #10, !dbg !4470
  br label %if.end7, !dbg !4470

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  %8 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4471
  %raw9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 11, !dbg !4473
  %9 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw9, align 8, !dbg !4473
  %this_ev = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %9, i32 0, i32 8, !dbg !4474
  %10 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %this_ev, i32 0, i32 0, !dbg !4475
  %duration = bitcast %union.anon.67* %10 to i32*, !dbg !4475
  %11 = load i32, i32* %duration, align 8, !dbg !4475
  %tobool10 = icmp ne i32 %11, 0, !dbg !4471
  br i1 %tobool10, label %if.else14, label %if.then11, !dbg !4476

if.then11:                                        ; preds = %if.end8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4477
  %raw12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 11, !dbg !4478
  %13 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw12, align 8, !dbg !4478
  %this_ev13 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %13, i32 0, i32 8, !dbg !4479
  %14 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4480
  %15 = bitcast %struct.ir_raw_event* %this_ev13 to i8*, !dbg !4481
  %16 = bitcast %struct.ir_raw_event* %14 to i8*, !dbg !4481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 4 %16, i64 8, i1 false), !dbg !4481
  br label %if.end36, !dbg !4477

if.else14:                                        ; preds = %if.end8
  %17 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4482
  %pulse15 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %17, i32 0, i32 2, !dbg !4484
  %bf.load16 = load i8, i8* %pulse15, align 1, !dbg !4484
  %bf.clear17 = and i8 %bf.load16, 1, !dbg !4484
  %bf.cast18 = zext i8 %bf.clear17 to i32, !dbg !4484
  %18 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4485
  %raw19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 11, !dbg !4486
  %19 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw19, align 8, !dbg !4486
  %this_ev20 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %19, i32 0, i32 8, !dbg !4487
  %pulse21 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %this_ev20, i32 0, i32 2, !dbg !4488
  %bf.load22 = load i8, i8* %pulse21, align 1, !dbg !4488
  %bf.clear23 = and i8 %bf.load22, 1, !dbg !4488
  %bf.cast24 = zext i8 %bf.clear23 to i32, !dbg !4488
  %cmp = icmp eq i32 %bf.cast18, %bf.cast24, !dbg !4489
  br i1 %cmp, label %if.then25, label %if.else30, !dbg !4490

if.then25:                                        ; preds = %if.else14
  %20 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4491
  %21 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %20, i32 0, i32 0, !dbg !4492
  %duration26 = bitcast %union.anon.67* %21 to i32*, !dbg !4492
  %22 = load i32, i32* %duration26, align 4, !dbg !4492
  %23 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4493
  %raw27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 11, !dbg !4494
  %24 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw27, align 8, !dbg !4494
  %this_ev28 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %24, i32 0, i32 8, !dbg !4495
  %25 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %this_ev28, i32 0, i32 0, !dbg !4496
  %duration29 = bitcast %union.anon.67* %25 to i32*, !dbg !4496
  %26 = load i32, i32* %duration29, align 8, !dbg !4497
  %add = add i32 %26, %22, !dbg !4497
  store i32 %add, i32* %duration29, align 8, !dbg !4497
  br label %if.end35, !dbg !4493

if.else30:                                        ; preds = %if.else14
  %27 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4498
  %28 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4500
  %raw31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 11, !dbg !4501
  %29 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw31, align 8, !dbg !4501
  %this_ev32 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %29, i32 0, i32 8, !dbg !4502
  %call = call i32 @ir_raw_event_store(%struct.rc_dev* %27, %struct.ir_raw_event* %this_ev32) #10, !dbg !4503
  %30 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4504
  %raw33 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 11, !dbg !4505
  %31 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw33, align 8, !dbg !4505
  %this_ev34 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %31, i32 0, i32 8, !dbg !4506
  %32 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4507
  %33 = bitcast %struct.ir_raw_event* %this_ev34 to i8*, !dbg !4508
  %34 = bitcast %struct.ir_raw_event* %32 to i8*, !dbg !4508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 4 %34, i64 8, i1 false), !dbg !4508
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %if.then25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then11
  %35 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4509
  %pulse37 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %35, i32 0, i32 2, !dbg !4511
  %bf.load38 = load i8, i8* %pulse37, align 1, !dbg !4511
  %bf.clear39 = and i8 %bf.load38, 1, !dbg !4511
  %bf.cast40 = zext i8 %bf.clear39 to i32, !dbg !4511
  %tobool41 = icmp ne i32 %bf.cast40, 0, !dbg !4509
  br i1 %tobool41, label %if.end51, label %land.lhs.true42, !dbg !4512

land.lhs.true42:                                  ; preds = %if.end36
  %36 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4513
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 34, !dbg !4514
  %37 = load i32, i32* %timeout, align 4, !dbg !4514
  %tobool43 = icmp ne i32 %37, 0, !dbg !4513
  br i1 %tobool43, label %land.lhs.true44, label %if.end51, !dbg !4515

land.lhs.true44:                                  ; preds = %land.lhs.true42
  %38 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4516
  %raw45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %38, i32 0, i32 11, !dbg !4517
  %39 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw45, align 8, !dbg !4517
  %this_ev46 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %39, i32 0, i32 8, !dbg !4518
  %40 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %this_ev46, i32 0, i32 0, !dbg !4519
  %duration47 = bitcast %union.anon.67* %40 to i32*, !dbg !4519
  %41 = load i32, i32* %duration47, align 8, !dbg !4519
  %42 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4520
  %timeout48 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 34, !dbg !4521
  %43 = load i32, i32* %timeout48, align 4, !dbg !4521
  %cmp49 = icmp uge i32 %41, %43, !dbg !4522
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !4523

if.then50:                                        ; preds = %land.lhs.true44
  %44 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4524
  call void @ir_raw_event_set_idle(%struct.rc_dev* %44, i1 zeroext true) #10, !dbg !4525
  br label %if.end51, !dbg !4525

if.end51:                                         ; preds = %if.then50, %land.lhs.true44, %land.lhs.true42, %if.end36
  store i32 1, i32* %retval, align 4, !dbg !4526
  br label %return, !dbg !4526

return:                                           ; preds = %if.end51, %if.then3, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !4527
  ret i32 %45, !dbg !4527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ir_raw_event_set_idle(%struct.rc_dev* %dev, i1 zeroext %idle) #0 !dbg !4528 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %idle.addr = alloca i8, align 1
  %.compoundliteral = alloca %struct.ir_raw_event, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  %frombool = zext i1 %idle to i8
  store i8 %frombool, i8* %idle.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %idle.addr, metadata !4531, metadata !DIExpression()), !dbg !4532
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4533
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 11, !dbg !4535
  %1 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !4535
  %tobool = icmp ne %struct.ir_raw_event_ctrl* %1, null, !dbg !4533
  br i1 %tobool, label %if.end, label %if.then, !dbg !4536

if.then:                                          ; preds = %entry
  br label %return, !dbg !4537

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %idle.addr, align 1, !dbg !4538
  %tobool1 = trunc i8 %2 to i1, !dbg !4538
  br i1 %tobool1, label %if.then2, label %if.end17, !dbg !4540

if.then2:                                         ; preds = %if.end
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4541
  %raw3 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %3, i32 0, i32 11, !dbg !4543
  %4 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw3, align 8, !dbg !4543
  %this_ev = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %4, i32 0, i32 8, !dbg !4544
  %timeout = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %this_ev, i32 0, i32 2, !dbg !4545
  %bf.load = load i8, i8* %timeout, align 1, !dbg !4546
  %bf.clear = and i8 %bf.load, -5, !dbg !4546
  %bf.set = or i8 %bf.clear, 4, !dbg !4546
  store i8 %bf.set, i8* %timeout, align 1, !dbg !4546
  %5 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4547
  %6 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4548
  %raw4 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 11, !dbg !4549
  %7 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw4, align 8, !dbg !4549
  %this_ev5 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %7, i32 0, i32 8, !dbg !4550
  %call = call i32 @ir_raw_event_store(%struct.rc_dev* %5, %struct.ir_raw_event* %this_ev5) #10, !dbg !4551
  %8 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4552
  %raw6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 11, !dbg !4553
  %9 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw6, align 8, !dbg !4553
  %this_ev7 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %9, i32 0, i32 8, !dbg !4554
  %10 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 0, !dbg !4555
  %11 = bitcast %union.anon.67* %10 to i8*, !dbg !4555
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false), !dbg !4555
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 1, !dbg !4555
  store i8 0, i8* %duty_cycle, align 4, !dbg !4555
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4555
  %bf.load8 = load i8, i8* %pulse, align 1, !dbg !4555
  %bf.clear9 = and i8 %bf.load8, -2, !dbg !4555
  store i8 %bf.clear9, i8* %pulse, align 1, !dbg !4555
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4555
  %bf.load10 = load i8, i8* %reset, align 1, !dbg !4555
  %bf.clear11 = and i8 %bf.load10, -3, !dbg !4555
  store i8 %bf.clear11, i8* %reset, align 1, !dbg !4555
  %timeout12 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4555
  %bf.load13 = load i8, i8* %timeout12, align 1, !dbg !4555
  %bf.clear14 = and i8 %bf.load13, -5, !dbg !4555
  store i8 %bf.clear14, i8* %timeout12, align 1, !dbg !4555
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4555
  %bf.load15 = load i8, i8* %carrier_report, align 1, !dbg !4555
  %bf.clear16 = and i8 %bf.load15, -9, !dbg !4555
  store i8 %bf.clear16, i8* %carrier_report, align 1, !dbg !4555
  %12 = bitcast %struct.ir_raw_event* %this_ev7 to i8*, !dbg !4556
  %13 = bitcast %struct.ir_raw_event* %.compoundliteral to i8*, !dbg !4556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 4 %13, i64 8, i1 false), !dbg !4556
  br label %if.end17, !dbg !4557

if.end17:                                         ; preds = %if.then2, %if.end
  %14 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4558
  %s_idle = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 48, !dbg !4560
  %15 = load void (%struct.rc_dev*, i1)*, void (%struct.rc_dev*, i1)** %s_idle, align 8, !dbg !4560
  %tobool18 = icmp ne void (%struct.rc_dev*, i1)* %15, null, !dbg !4558
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !4561

if.then19:                                        ; preds = %if.end17
  %16 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4562
  %s_idle20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 48, !dbg !4563
  %17 = load void (%struct.rc_dev*, i1)*, void (%struct.rc_dev*, i1)** %s_idle20, align 8, !dbg !4563
  %18 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4564
  %19 = load i8, i8* %idle.addr, align 1, !dbg !4565
  %tobool21 = trunc i8 %19 to i1, !dbg !4565
  call void %17(%struct.rc_dev* %18, i1 zeroext %tobool21) #10, !dbg !4562
  br label %if.end22, !dbg !4562

if.end22:                                         ; preds = %if.then19, %if.end17
  %20 = load i8, i8* %idle.addr, align 1, !dbg !4566
  %tobool23 = trunc i8 %20 to i1, !dbg !4566
  %21 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4567
  %idle24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 14, !dbg !4568
  %frombool25 = zext i1 %tobool23 to i8, !dbg !4569
  store i8 %frombool25, i8* %idle24, align 4, !dbg !4569
  br label %return, !dbg !4570

return:                                           ; preds = %if.end22, %if.then
  ret void, !dbg !4570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ir_raw_event_handle(%struct.rc_dev* %dev) #0 !dbg !4571 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4574
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 11, !dbg !4576
  %1 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !4576
  %tobool = icmp ne %struct.ir_raw_event_ctrl* %1, null, !dbg !4574
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4577

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4578
  %raw1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %2, i32 0, i32 11, !dbg !4579
  %3 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw1, align 8, !dbg !4579
  %thread = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %3, i32 0, i32 1, !dbg !4580
  %4 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !4580
  %tobool2 = icmp ne %struct.task_struct* %4, null, !dbg !4578
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4581

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !4582

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !4583
  %raw3 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 11, !dbg !4584
  %6 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw3, align 8, !dbg !4584
  %thread4 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %6, i32 0, i32 1, !dbg !4585
  %7 = load %struct.task_struct*, %struct.task_struct** %thread4, align 8, !dbg !4585
  %call = call i32 @wake_up_process(%struct.task_struct* %7) #10, !dbg !4586
  br label %return, !dbg !4587

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4587
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @ir_raw_get_allowed_protocols() #0 !dbg !4588 {
entry:
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4591, metadata !DIExpression()), !dbg !4599
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4608, metadata !DIExpression()), !dbg !4609
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !4610, metadata !DIExpression()), !dbg !4611
  store %struct.atomic64_t* @available_protocols, %struct.atomic64_t** %v.addr.i, align 8
  %0 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4612
  %1 = bitcast %struct.atomic64_t* %0 to i8*, !dbg !4612
  store i8* %1, i8** %v.addr.i.i, align 8
  store i64 8, i64* %size.addr.i.i, align 8
  %2 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4613
  %3 = load i64, i64* %size.addr.i.i, align 8, !dbg !4614
  %conv.i.i = trunc i64 %3 to i32, !dbg !4614
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %2, i32 %conv.i.i) #12, !dbg !4615
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4616
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4616
  call void @kcsan_check_access(i8* %4, i64 %5, i32 4) #12, !dbg !4616
  %6 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4617
  %call.i = call i64 @arch_atomic64_read(%struct.atomic64_t* %6) #12, !dbg !4618
  ret i64 %call.i, !dbg !4619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %ev, i32 %max, %struct.ir_raw_timings_manchester* %timings, i32 %n, i64 %data) #0 !dbg !4620 {
entry:
  %retval = alloca i32, align 4
  %ev.addr = alloca %struct.ir_raw_event**, align 8
  %max.addr = alloca i32, align 4
  %timings.addr = alloca %struct.ir_raw_timings_manchester*, align 8
  %n.addr = alloca i32, align 4
  %data.addr = alloca i64, align 8
  %need_pulse = alloca i8, align 1
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.ir_raw_event** %ev, %struct.ir_raw_event*** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event*** %ev.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  store %struct.ir_raw_timings_manchester* %timings, %struct.ir_raw_timings_manchester** %timings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_timings_manchester** %timings.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4639, metadata !DIExpression()), !dbg !4640
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !4641, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.declare(metadata i8* %need_pulse, metadata !4643, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4647, metadata !DIExpression()), !dbg !4648
  store i32 -105, i32* %ret, align 4, !dbg !4648
  %0 = load i32, i32* %n.addr, align 4, !dbg !4649
  %sub = sub i32 %0, 1, !dbg !4649
  %sh_prom = zext i32 %sub to i64, !dbg !4649
  %shl = shl i64 1, %sh_prom, !dbg !4649
  store i64 %shl, i64* %i, align 8, !dbg !4650
  %1 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4651
  %leader_pulse = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %1, i32 0, i32 0, !dbg !4653
  %2 = load i32, i32* %leader_pulse, align 4, !dbg !4653
  %tobool = icmp ne i32 %2, 0, !dbg !4651
  br i1 %tobool, label %if.then, label %if.else, !dbg !4654

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %max.addr, align 4, !dbg !4655
  %dec = add i32 %3, -1, !dbg !4655
  store i32 %dec, i32* %max.addr, align 4, !dbg !4655
  %tobool1 = icmp ne i32 %3, 0, !dbg !4655
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4658

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %ret, align 4, !dbg !4659
  store i32 %4, i32* %retval, align 4, !dbg !4660
  br label %return, !dbg !4660

if.end:                                           ; preds = %if.then
  %5 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4661
  %6 = load %struct.ir_raw_event*, %struct.ir_raw_event** %5, align 8, !dbg !4662
  %7 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4663
  %leader_pulse3 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %7, i32 0, i32 0, !dbg !4664
  %8 = load i32, i32* %leader_pulse3, align 4, !dbg !4664
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %6, i32 1, i32 %8) #10, !dbg !4665
  %9 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4666
  %leader_space = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %9, i32 0, i32 1, !dbg !4668
  %10 = load i32, i32* %leader_space, align 4, !dbg !4668
  %tobool4 = icmp ne i32 %10, 0, !dbg !4666
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !4669

if.then5:                                         ; preds = %if.end
  %11 = load i32, i32* %max.addr, align 4, !dbg !4670
  %dec6 = add i32 %11, -1, !dbg !4670
  store i32 %dec6, i32* %max.addr, align 4, !dbg !4670
  %tobool7 = icmp ne i32 %11, 0, !dbg !4670
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4673

if.then8:                                         ; preds = %if.then5
  %12 = load i32, i32* %ret, align 4, !dbg !4674
  store i32 %12, i32* %retval, align 4, !dbg !4675
  br label %return, !dbg !4675

if.end9:                                          ; preds = %if.then5
  %13 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4676
  %14 = load %struct.ir_raw_event*, %struct.ir_raw_event** %13, align 8, !dbg !4677
  %incdec.ptr = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 1, !dbg !4677
  store %struct.ir_raw_event* %incdec.ptr, %struct.ir_raw_event** %13, align 8, !dbg !4677
  %15 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4678
  %leader_space10 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %15, i32 0, i32 1, !dbg !4679
  %16 = load i32, i32* %leader_space10, align 4, !dbg !4679
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %incdec.ptr, i32 0, i32 %16) #10, !dbg !4680
  br label %if.end11, !dbg !4681

if.end11:                                         ; preds = %if.end9, %if.end
  br label %if.end13, !dbg !4682

if.else:                                          ; preds = %entry
  %17 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4683
  %18 = load %struct.ir_raw_event*, %struct.ir_raw_event** %17, align 8, !dbg !4685
  %incdec.ptr12 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %18, i32 -1, !dbg !4685
  store %struct.ir_raw_event* %incdec.ptr12, %struct.ir_raw_event** %17, align 8, !dbg !4685
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end11
  br label %while.cond, !dbg !4686

while.cond:                                       ; preds = %if.end45, %if.end13
  %19 = load i32, i32* %n.addr, align 4, !dbg !4687
  %tobool14 = icmp ne i32 %19, 0, !dbg !4687
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !4688

land.rhs:                                         ; preds = %while.cond
  %20 = load i64, i64* %i, align 8, !dbg !4689
  %cmp = icmp ugt i64 %20, 0, !dbg !4690
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !4691
  br i1 %21, label %while.body, label %while.end, !dbg !4686

while.body:                                       ; preds = %land.end
  %22 = load i64, i64* %data.addr, align 8, !dbg !4692
  %23 = load i64, i64* %i, align 8, !dbg !4694
  %and = and i64 %22, %23, !dbg !4695
  %tobool15 = icmp ne i64 %and, 0, !dbg !4696
  %lnot = xor i1 %tobool15, true, !dbg !4696
  %frombool = zext i1 %lnot to i8, !dbg !4697
  store i8 %frombool, i8* %need_pulse, align 1, !dbg !4697
  %24 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4698
  %invert = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %24, i32 0, i32 3, !dbg !4700
  %bf.load = load i8, i8* %invert, align 4, !dbg !4700
  %bf.clear = and i8 %bf.load, 1, !dbg !4700
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4700
  %tobool16 = icmp ne i32 %bf.cast, 0, !dbg !4698
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !4701

if.then17:                                        ; preds = %while.body
  %25 = load i8, i8* %need_pulse, align 1, !dbg !4702
  %tobool18 = trunc i8 %25 to i1, !dbg !4702
  %lnot19 = xor i1 %tobool18, true, !dbg !4703
  %frombool20 = zext i1 %lnot19 to i8, !dbg !4704
  store i8 %frombool20, i8* %need_pulse, align 1, !dbg !4704
  br label %if.end21, !dbg !4705

if.end21:                                         ; preds = %if.then17, %while.body
  %26 = load i8, i8* %need_pulse, align 1, !dbg !4706
  %tobool22 = trunc i8 %26 to i1, !dbg !4706
  %conv = zext i1 %tobool22 to i32, !dbg !4706
  %27 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4708
  %28 = load %struct.ir_raw_event*, %struct.ir_raw_event** %27, align 8, !dbg !4709
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %28, i32 0, i32 2, !dbg !4710
  %bf.load23 = load i8, i8* %pulse, align 1, !dbg !4710
  %bf.clear24 = and i8 %bf.load23, 1, !dbg !4710
  %bf.cast25 = zext i8 %bf.clear24 to i32, !dbg !4710
  %tobool26 = icmp ne i32 %bf.cast25, 0, !dbg !4711
  %lnot27 = xor i1 %tobool26, true, !dbg !4711
  %lnot28 = xor i1 %lnot27, true, !dbg !4712
  %lnot.ext = zext i1 %lnot28 to i32, !dbg !4712
  %cmp29 = icmp eq i32 %conv, %lnot.ext, !dbg !4713
  br i1 %cmp29, label %if.then31, label %if.else32, !dbg !4714

if.then31:                                        ; preds = %if.end21
  %29 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4715
  %clock = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %29, i32 0, i32 2, !dbg !4717
  %30 = load i32, i32* %clock, align 4, !dbg !4717
  %31 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4718
  %32 = load %struct.ir_raw_event*, %struct.ir_raw_event** %31, align 8, !dbg !4719
  %33 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %32, i32 0, i32 0, !dbg !4720
  %duration = bitcast %union.anon.67* %33 to i32*, !dbg !4720
  %34 = load i32, i32* %duration, align 4, !dbg !4721
  %add = add i32 %34, %30, !dbg !4721
  store i32 %add, i32* %duration, align 4, !dbg !4721
  br label %if.end41, !dbg !4722

if.else32:                                        ; preds = %if.end21
  %35 = load i32, i32* %max.addr, align 4, !dbg !4723
  %dec33 = add i32 %35, -1, !dbg !4723
  store i32 %dec33, i32* %max.addr, align 4, !dbg !4723
  %tobool34 = icmp ne i32 %35, 0, !dbg !4723
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4726

if.then35:                                        ; preds = %if.else32
  br label %nobufs, !dbg !4727

if.end36:                                         ; preds = %if.else32
  %36 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4728
  %37 = load %struct.ir_raw_event*, %struct.ir_raw_event** %36, align 8, !dbg !4729
  %incdec.ptr37 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %37, i32 1, !dbg !4729
  store %struct.ir_raw_event* %incdec.ptr37, %struct.ir_raw_event** %36, align 8, !dbg !4729
  %38 = load i8, i8* %need_pulse, align 1, !dbg !4730
  %tobool38 = trunc i8 %38 to i1, !dbg !4730
  %conv39 = zext i1 %tobool38 to i32, !dbg !4730
  %39 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4731
  %clock40 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %39, i32 0, i32 2, !dbg !4732
  %40 = load i32, i32* %clock40, align 4, !dbg !4732
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %incdec.ptr37, i32 %conv39, i32 %40) #10, !dbg !4733
  br label %if.end41

if.end41:                                         ; preds = %if.end36, %if.then31
  %41 = load i32, i32* %max.addr, align 4, !dbg !4734
  %dec42 = add i32 %41, -1, !dbg !4734
  store i32 %dec42, i32* %max.addr, align 4, !dbg !4734
  %tobool43 = icmp ne i32 %41, 0, !dbg !4734
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !4736

if.then44:                                        ; preds = %if.end41
  br label %nobufs, !dbg !4737

if.end45:                                         ; preds = %if.end41
  %42 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4738
  %43 = load %struct.ir_raw_event*, %struct.ir_raw_event** %42, align 8, !dbg !4739
  %incdec.ptr46 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %43, i32 1, !dbg !4739
  store %struct.ir_raw_event* %incdec.ptr46, %struct.ir_raw_event** %42, align 8, !dbg !4739
  %44 = load i8, i8* %need_pulse, align 1, !dbg !4740
  %tobool47 = trunc i8 %44 to i1, !dbg !4740
  %lnot48 = xor i1 %tobool47, true, !dbg !4741
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !4741
  %45 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4742
  %clock50 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %45, i32 0, i32 2, !dbg !4743
  %46 = load i32, i32* %clock50, align 4, !dbg !4743
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %incdec.ptr46, i32 %lnot.ext49, i32 %46) #10, !dbg !4744
  %47 = load i64, i64* %i, align 8, !dbg !4745
  %shr = lshr i64 %47, 1, !dbg !4745
  store i64 %shr, i64* %i, align 8, !dbg !4745
  br label %while.cond, !dbg !4686, !llvm.loop !4746

while.end:                                        ; preds = %land.end
  %48 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4748
  %trailer_space = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %48, i32 0, i32 4, !dbg !4750
  %49 = load i32, i32* %trailer_space, align 4, !dbg !4750
  %tobool51 = icmp ne i32 %49, 0, !dbg !4748
  br i1 %tobool51, label %if.then52, label %if.end71, !dbg !4751

if.then52:                                        ; preds = %while.end
  %50 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4752
  %51 = load %struct.ir_raw_event*, %struct.ir_raw_event** %50, align 8, !dbg !4755
  %pulse53 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %51, i32 0, i32 2, !dbg !4756
  %bf.load54 = load i8, i8* %pulse53, align 1, !dbg !4756
  %bf.clear55 = and i8 %bf.load54, 1, !dbg !4756
  %bf.cast56 = zext i8 %bf.clear55 to i32, !dbg !4756
  %tobool57 = icmp ne i32 %bf.cast56, 0, !dbg !4757
  br i1 %tobool57, label %if.else62, label %if.then58, !dbg !4758

if.then58:                                        ; preds = %if.then52
  %52 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4759
  %trailer_space59 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %52, i32 0, i32 4, !dbg !4760
  %53 = load i32, i32* %trailer_space59, align 4, !dbg !4760
  %54 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4761
  %55 = load %struct.ir_raw_event*, %struct.ir_raw_event** %54, align 8, !dbg !4762
  %56 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %55, i32 0, i32 0, !dbg !4763
  %duration60 = bitcast %union.anon.67* %56 to i32*, !dbg !4763
  %57 = load i32, i32* %duration60, align 4, !dbg !4764
  %add61 = add i32 %57, %53, !dbg !4764
  store i32 %add61, i32* %duration60, align 4, !dbg !4764
  br label %if.end70, !dbg !4765

if.else62:                                        ; preds = %if.then52
  %58 = load i32, i32* %max.addr, align 4, !dbg !4766
  %dec63 = add i32 %58, -1, !dbg !4766
  store i32 %dec63, i32* %max.addr, align 4, !dbg !4766
  %tobool64 = icmp ne i32 %58, 0, !dbg !4766
  br i1 %tobool64, label %if.else66, label %if.then65, !dbg !4768

if.then65:                                        ; preds = %if.else62
  br label %nobufs, !dbg !4769

if.else66:                                        ; preds = %if.else62
  %59 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4770
  %60 = load %struct.ir_raw_event*, %struct.ir_raw_event** %59, align 8, !dbg !4771
  %incdec.ptr67 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %60, i32 1, !dbg !4771
  store %struct.ir_raw_event* %incdec.ptr67, %struct.ir_raw_event** %59, align 8, !dbg !4771
  %61 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %timings.addr, align 8, !dbg !4772
  %trailer_space68 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %61, i32 0, i32 4, !dbg !4773
  %62 = load i32, i32* %trailer_space68, align 4, !dbg !4773
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %incdec.ptr67, i32 0, i32 %62) #10, !dbg !4774
  br label %if.end69

if.end69:                                         ; preds = %if.else66
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then58
  br label %if.end71, !dbg !4775

if.end71:                                         ; preds = %if.end70, %while.end
  store i32 0, i32* %ret, align 4, !dbg !4776
  br label %nobufs, !dbg !4777

nobufs:                                           ; preds = %if.end71, %if.then65, %if.then44, %if.then35
  call void @llvm.dbg.label(metadata !4778), !dbg !4779
  %63 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4780
  %64 = load %struct.ir_raw_event*, %struct.ir_raw_event** %63, align 8, !dbg !4781
  %incdec.ptr72 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %64, i32 1, !dbg !4781
  store %struct.ir_raw_event* %incdec.ptr72, %struct.ir_raw_event** %63, align 8, !dbg !4781
  %65 = load i32, i32* %ret, align 4, !dbg !4782
  store i32 %65, i32* %retval, align 4, !dbg !4783
  br label %return, !dbg !4783

return:                                           ; preds = %nobufs, %if.then8, %if.then2
  %66 = load i32, i32* %retval, align 4, !dbg !4784
  ret i32 %66, !dbg !4784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @init_ir_raw_event_duration(%struct.ir_raw_event* %ev, i32 %pulse, i32 %duration) #0 !dbg !4785 {
entry:
  %ev.addr = alloca %struct.ir_raw_event*, align 8
  %pulse.addr = alloca i32, align 4
  %duration.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.ir_raw_event, align 4
  store %struct.ir_raw_event* %ev, %struct.ir_raw_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %ev.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  store i32 %pulse, i32* %pulse.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pulse.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  store i32 %duration, i32* %duration.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %duration.addr, metadata !4792, metadata !DIExpression()), !dbg !4793
  %0 = load %struct.ir_raw_event*, %struct.ir_raw_event** %ev.addr, align 8, !dbg !4794
  %1 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 0, !dbg !4795
  %duration1 = bitcast %union.anon.67* %1 to i32*, !dbg !4796
  %2 = load i32, i32* %duration.addr, align 4, !dbg !4797
  store i32 %2, i32* %duration1, align 4, !dbg !4796
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 1, !dbg !4795
  store i8 0, i8* %duty_cycle, align 4, !dbg !4795
  %pulse2 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4795
  %3 = load i32, i32* %pulse.addr, align 4, !dbg !4798
  %4 = trunc i32 %3 to i8, !dbg !4795
  %bf.load = load i8, i8* %pulse2, align 1, !dbg !4795
  %bf.value = and i8 %4, 1, !dbg !4795
  %bf.clear = and i8 %bf.load, -2, !dbg !4795
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !4795
  store i8 %bf.set, i8* %pulse2, align 1, !dbg !4795
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4795
  %bf.load3 = load i8, i8* %reset, align 1, !dbg !4795
  %bf.clear4 = and i8 %bf.load3, -3, !dbg !4795
  store i8 %bf.clear4, i8* %reset, align 1, !dbg !4795
  %timeout = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4795
  %bf.load5 = load i8, i8* %timeout, align 1, !dbg !4795
  %bf.clear6 = and i8 %bf.load5, -5, !dbg !4795
  store i8 %bf.clear6, i8* %timeout, align 1, !dbg !4795
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !4795
  %bf.load7 = load i8, i8* %carrier_report, align 1, !dbg !4795
  %bf.clear8 = and i8 %bf.load7, -9, !dbg !4795
  store i8 %bf.clear8, i8* %carrier_report, align 1, !dbg !4795
  %5 = bitcast %struct.ir_raw_event* %0 to i8*, !dbg !4799
  %6 = bitcast %struct.ir_raw_event* %.compoundliteral to i8*, !dbg !4799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 8, i1 false), !dbg !4799
  ret void, !dbg !4800
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_gen_pd(%struct.ir_raw_event** %ev, i32 %max, %struct.ir_raw_timings_pd* %timings, i32 %n, i64 %data) #0 !dbg !4801 {
entry:
  %retval = alloca i32, align 4
  %ev.addr = alloca %struct.ir_raw_event**, align 8
  %max.addr = alloca i32, align 4
  %timings.addr = alloca %struct.ir_raw_timings_pd*, align 8
  %n.addr = alloca i32, align 4
  %data.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %space = alloca i32, align 4
  store %struct.ir_raw_event** %ev, %struct.ir_raw_event*** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event*** %ev.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  store %struct.ir_raw_timings_pd* %timings, %struct.ir_raw_timings_pd** %timings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_timings_pd** %timings.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata i32* %space, metadata !4830, metadata !DIExpression()), !dbg !4831
  %0 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4832
  %header_pulse = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %0, i32 0, i32 0, !dbg !4834
  %1 = load i32, i32* %header_pulse, align 4, !dbg !4834
  %tobool = icmp ne i32 %1, 0, !dbg !4832
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4835

if.then:                                          ; preds = %entry
  %2 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4836
  %3 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4838
  %header_pulse1 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %3, i32 0, i32 0, !dbg !4839
  %4 = load i32, i32* %header_pulse1, align 4, !dbg !4839
  %5 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4840
  %header_space = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %5, i32 0, i32 1, !dbg !4841
  %6 = load i32, i32* %header_space, align 4, !dbg !4841
  %call = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %2, i32* %max.addr, i32 %4, i32 %6) #10, !dbg !4842
  store i32 %call, i32* %ret, align 4, !dbg !4843
  %7 = load i32, i32* %ret, align 4, !dbg !4844
  %tobool2 = icmp ne i32 %7, 0, !dbg !4844
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4846

if.then3:                                         ; preds = %if.then
  %8 = load i32, i32* %ret, align 4, !dbg !4847
  store i32 %8, i32* %retval, align 4, !dbg !4848
  br label %return, !dbg !4848

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !4849

if.end4:                                          ; preds = %if.end, %entry
  %9 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4850
  %msb_first = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %9, i32 0, i32 6, !dbg !4852
  %bf.load = load i8, i8* %msb_first, align 4, !dbg !4852
  %bf.clear = and i8 %bf.load, 1, !dbg !4852
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4852
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !4850
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !4853

if.then6:                                         ; preds = %if.end4
  %10 = load i32, i32* %n.addr, align 4, !dbg !4854
  %sub = sub i32 %10, 1, !dbg !4857
  store i32 %sub, i32* %i, align 4, !dbg !4858
  br label %for.cond, !dbg !4859

for.cond:                                         ; preds = %for.inc, %if.then6
  %11 = load i32, i32* %i, align 4, !dbg !4860
  %cmp = icmp sge i32 %11, 0, !dbg !4862
  br i1 %cmp, label %for.body, label %for.end, !dbg !4863

for.body:                                         ; preds = %for.cond
  %12 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4864
  %bit_space = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %12, i32 0, i32 3, !dbg !4866
  %13 = load i64, i64* %data.addr, align 8, !dbg !4867
  %14 = load i32, i32* %i, align 4, !dbg !4868
  %sh_prom = zext i32 %14 to i64, !dbg !4869
  %shr = lshr i64 %13, %sh_prom, !dbg !4869
  %and = and i64 %shr, 1, !dbg !4870
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %bit_space, i64 0, i64 %and, !dbg !4864
  %15 = load i32, i32* %arrayidx, align 4, !dbg !4864
  store i32 %15, i32* %space, align 4, !dbg !4871
  %16 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4872
  %17 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4873
  %bit_pulse = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %17, i32 0, i32 2, !dbg !4874
  %18 = load i32, i32* %bit_pulse, align 4, !dbg !4874
  %19 = load i32, i32* %space, align 4, !dbg !4875
  %call7 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %16, i32* %max.addr, i32 %18, i32 %19) #10, !dbg !4876
  store i32 %call7, i32* %ret, align 4, !dbg !4877
  %20 = load i32, i32* %ret, align 4, !dbg !4878
  %tobool8 = icmp ne i32 %20, 0, !dbg !4878
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4880

if.then9:                                         ; preds = %for.body
  %21 = load i32, i32* %ret, align 4, !dbg !4881
  store i32 %21, i32* %retval, align 4, !dbg !4882
  br label %return, !dbg !4882

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !4883

for.inc:                                          ; preds = %if.end10
  %22 = load i32, i32* %i, align 4, !dbg !4884
  %dec = add i32 %22, -1, !dbg !4884
  store i32 %dec, i32* %i, align 4, !dbg !4884
  br label %for.cond, !dbg !4885, !llvm.loop !4886

for.end:                                          ; preds = %for.cond
  br label %if.end25, !dbg !4888

if.else:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !4889
  br label %for.cond11, !dbg !4892

for.cond11:                                       ; preds = %for.inc22, %if.else
  %23 = load i32, i32* %i, align 4, !dbg !4893
  %24 = load i32, i32* %n.addr, align 4, !dbg !4895
  %cmp12 = icmp ult i32 %23, %24, !dbg !4896
  br i1 %cmp12, label %for.body13, label %for.end24, !dbg !4897

for.body13:                                       ; preds = %for.cond11
  %25 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4898
  %bit_space14 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %25, i32 0, i32 3, !dbg !4900
  %26 = load i64, i64* %data.addr, align 8, !dbg !4901
  %and15 = and i64 %26, 1, !dbg !4902
  %arrayidx16 = getelementptr [2 x i32], [2 x i32]* %bit_space14, i64 0, i64 %and15, !dbg !4898
  %27 = load i32, i32* %arrayidx16, align 4, !dbg !4898
  store i32 %27, i32* %space, align 4, !dbg !4903
  %28 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4904
  %29 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4905
  %bit_pulse17 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %29, i32 0, i32 2, !dbg !4906
  %30 = load i32, i32* %bit_pulse17, align 4, !dbg !4906
  %31 = load i32, i32* %space, align 4, !dbg !4907
  %call18 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %28, i32* %max.addr, i32 %30, i32 %31) #10, !dbg !4908
  store i32 %call18, i32* %ret, align 4, !dbg !4909
  %32 = load i32, i32* %ret, align 4, !dbg !4910
  %tobool19 = icmp ne i32 %32, 0, !dbg !4910
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4912

if.then20:                                        ; preds = %for.body13
  %33 = load i32, i32* %ret, align 4, !dbg !4913
  store i32 %33, i32* %retval, align 4, !dbg !4914
  br label %return, !dbg !4914

if.end21:                                         ; preds = %for.body13
  br label %for.inc22, !dbg !4915

for.inc22:                                        ; preds = %if.end21
  %34 = load i32, i32* %i, align 4, !dbg !4916
  %inc = add i32 %34, 1, !dbg !4916
  store i32 %inc, i32* %i, align 4, !dbg !4916
  %35 = load i64, i64* %data.addr, align 8, !dbg !4917
  %shr23 = lshr i64 %35, 1, !dbg !4917
  store i64 %shr23, i64* %data.addr, align 8, !dbg !4917
  br label %for.cond11, !dbg !4918, !llvm.loop !4919

for.end24:                                        ; preds = %for.cond11
  br label %if.end25

if.end25:                                         ; preds = %for.end24, %for.end
  %36 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4921
  %37 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4922
  %trailer_pulse = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %37, i32 0, i32 4, !dbg !4923
  %38 = load i32, i32* %trailer_pulse, align 4, !dbg !4923
  %39 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %timings.addr, align 8, !dbg !4924
  %trailer_space = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %39, i32 0, i32 5, !dbg !4925
  %40 = load i32, i32* %trailer_space, align 4, !dbg !4925
  %call26 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %36, i32* %max.addr, i32 %38, i32 %40) #10, !dbg !4926
  store i32 %call26, i32* %ret, align 4, !dbg !4927
  %41 = load i32, i32* %ret, align 4, !dbg !4928
  store i32 %41, i32* %retval, align 4, !dbg !4929
  br label %return, !dbg !4929

return:                                           ; preds = %if.end25, %if.then20, %if.then9, %if.then3
  %42 = load i32, i32* %retval, align 4, !dbg !4930
  ret i32 %42, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %ev, i32* %max, i32 %pulse_width, i32 %space_width) #0 !dbg !4931 {
entry:
  %retval = alloca i32, align 4
  %ev.addr = alloca %struct.ir_raw_event**, align 8
  %max.addr = alloca i32*, align 8
  %pulse_width.addr = alloca i32, align 4
  %space_width.addr = alloca i32, align 4
  store %struct.ir_raw_event** %ev, %struct.ir_raw_event*** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event*** %ev.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  store i32 %pulse_width, i32* %pulse_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pulse_width.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i32 %space_width, i32* %space_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %space_width.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  %0 = load i32*, i32** %max.addr, align 8, !dbg !4942
  %1 = load i32, i32* %0, align 4, !dbg !4944
  %tobool = icmp ne i32 %1, 0, !dbg !4944
  br i1 %tobool, label %if.end, label %if.then, !dbg !4945

if.then:                                          ; preds = %entry
  store i32 -105, i32* %retval, align 4, !dbg !4946
  br label %return, !dbg !4946

if.end:                                           ; preds = %entry
  %2 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4947
  %3 = load %struct.ir_raw_event*, %struct.ir_raw_event** %2, align 8, !dbg !4948
  %incdec.ptr = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 1, !dbg !4948
  store %struct.ir_raw_event* %incdec.ptr, %struct.ir_raw_event** %2, align 8, !dbg !4948
  %4 = load i32, i32* %pulse_width.addr, align 4, !dbg !4949
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %3, i32 1, i32 %4) #10, !dbg !4950
  %5 = load i32*, i32** %max.addr, align 8, !dbg !4951
  %6 = load i32, i32* %5, align 4, !dbg !4953
  %dec = add i32 %6, -1, !dbg !4953
  store i32 %dec, i32* %5, align 4, !dbg !4953
  %tobool1 = icmp ne i32 %dec, 0, !dbg !4953
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4954

if.then2:                                         ; preds = %if.end
  store i32 -105, i32* %retval, align 4, !dbg !4955
  br label %return, !dbg !4955

if.end3:                                          ; preds = %if.end
  %7 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4956
  %8 = load %struct.ir_raw_event*, %struct.ir_raw_event** %7, align 8, !dbg !4957
  %incdec.ptr4 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %8, i32 1, !dbg !4957
  store %struct.ir_raw_event* %incdec.ptr4, %struct.ir_raw_event** %7, align 8, !dbg !4957
  %9 = load i32, i32* %space_width.addr, align 4, !dbg !4958
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %8, i32 0, i32 %9) #10, !dbg !4959
  %10 = load i32*, i32** %max.addr, align 8, !dbg !4960
  %11 = load i32, i32* %10, align 4, !dbg !4961
  %dec5 = add i32 %11, -1, !dbg !4961
  store i32 %dec5, i32* %10, align 4, !dbg !4961
  store i32 0, i32* %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4963
  ret i32 %12, !dbg !4963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_gen_pl(%struct.ir_raw_event** %ev, i32 %max, %struct.ir_raw_timings_pl* %timings, i32 %n, i64 %data) #0 !dbg !4964 {
entry:
  %retval = alloca i32, align 4
  %ev.addr = alloca %struct.ir_raw_event**, align 8
  %max.addr = alloca i32, align 4
  %timings.addr = alloca %struct.ir_raw_timings_pl*, align 8
  %n.addr = alloca i32, align 4
  %data.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %pulse = alloca i32, align 4
  store %struct.ir_raw_event** %ev, %struct.ir_raw_event*** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event*** %ev.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  store %struct.ir_raw_timings_pl* %timings, %struct.ir_raw_timings_pl** %timings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_timings_pl** %timings.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4986, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4988, metadata !DIExpression()), !dbg !4989
  store i32 -105, i32* %ret, align 4, !dbg !4989
  call void @llvm.dbg.declare(metadata i32* %pulse, metadata !4990, metadata !DIExpression()), !dbg !4991
  %0 = load i32, i32* %max.addr, align 4, !dbg !4992
  %dec = add i32 %0, -1, !dbg !4992
  store i32 %dec, i32* %max.addr, align 4, !dbg !4992
  %tobool = icmp ne i32 %0, 0, !dbg !4992
  br i1 %tobool, label %if.end, label %if.then, !dbg !4994

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !4995
  store i32 %1, i32* %retval, align 4, !dbg !4996
  br label %return, !dbg !4996

if.end:                                           ; preds = %entry
  %2 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !4997
  %3 = load %struct.ir_raw_event*, %struct.ir_raw_event** %2, align 8, !dbg !4998
  %incdec.ptr = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 1, !dbg !4998
  store %struct.ir_raw_event* %incdec.ptr, %struct.ir_raw_event** %2, align 8, !dbg !4998
  %4 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !4999
  %header_pulse = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %4, i32 0, i32 0, !dbg !5000
  %5 = load i32, i32* %header_pulse, align 4, !dbg !5000
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %3, i32 1, i32 %5) #10, !dbg !5001
  %6 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !5002
  %msb_first = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %6, i32 0, i32 4, !dbg !5004
  %bf.load = load i8, i8* %msb_first, align 4, !dbg !5004
  %bf.clear = and i8 %bf.load, 1, !dbg !5004
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5004
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5002
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5005

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %n.addr, align 4, !dbg !5006
  %sub = sub i32 %7, 1, !dbg !5009
  store i32 %sub, i32* %i, align 4, !dbg !5010
  br label %for.cond, !dbg !5011

for.cond:                                         ; preds = %for.inc, %if.then2
  %8 = load i32, i32* %i, align 4, !dbg !5012
  %cmp = icmp sge i32 %8, 0, !dbg !5014
  br i1 %cmp, label %for.body, label %for.end, !dbg !5015

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %max.addr, align 4, !dbg !5016
  %dec3 = add i32 %9, -1, !dbg !5016
  store i32 %dec3, i32* %max.addr, align 4, !dbg !5016
  %tobool4 = icmp ne i32 %9, 0, !dbg !5016
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5019

if.then5:                                         ; preds = %for.body
  %10 = load i32, i32* %ret, align 4, !dbg !5020
  store i32 %10, i32* %retval, align 4, !dbg !5021
  br label %return, !dbg !5021

if.end6:                                          ; preds = %for.body
  %11 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !5022
  %12 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8, !dbg !5023
  %incdec.ptr7 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 1, !dbg !5023
  store %struct.ir_raw_event* %incdec.ptr7, %struct.ir_raw_event** %11, align 8, !dbg !5023
  %13 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !5024
  %bit_space = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %13, i32 0, i32 1, !dbg !5025
  %14 = load i32, i32* %bit_space, align 4, !dbg !5025
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %12, i32 0, i32 %14) #10, !dbg !5026
  %15 = load i32, i32* %max.addr, align 4, !dbg !5027
  %dec8 = add i32 %15, -1, !dbg !5027
  store i32 %dec8, i32* %max.addr, align 4, !dbg !5027
  %tobool9 = icmp ne i32 %15, 0, !dbg !5027
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5029

if.then10:                                        ; preds = %if.end6
  %16 = load i32, i32* %ret, align 4, !dbg !5030
  store i32 %16, i32* %retval, align 4, !dbg !5031
  br label %return, !dbg !5031

if.end11:                                         ; preds = %if.end6
  %17 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !5032
  %bit_pulse = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %17, i32 0, i32 2, !dbg !5033
  %18 = load i64, i64* %data.addr, align 8, !dbg !5034
  %19 = load i32, i32* %i, align 4, !dbg !5035
  %sh_prom = zext i32 %19 to i64, !dbg !5036
  %shr = lshr i64 %18, %sh_prom, !dbg !5036
  %and = and i64 %shr, 1, !dbg !5037
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %bit_pulse, i64 0, i64 %and, !dbg !5032
  %20 = load i32, i32* %arrayidx, align 4, !dbg !5032
  store i32 %20, i32* %pulse, align 4, !dbg !5038
  %21 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !5039
  %22 = load %struct.ir_raw_event*, %struct.ir_raw_event** %21, align 8, !dbg !5040
  %incdec.ptr12 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %22, i32 1, !dbg !5040
  store %struct.ir_raw_event* %incdec.ptr12, %struct.ir_raw_event** %21, align 8, !dbg !5040
  %23 = load i32, i32* %pulse, align 4, !dbg !5041
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %22, i32 1, i32 %23) #10, !dbg !5042
  br label %for.inc, !dbg !5043

for.inc:                                          ; preds = %if.end11
  %24 = load i32, i32* %i, align 4, !dbg !5044
  %dec13 = add i32 %24, -1, !dbg !5044
  store i32 %dec13, i32* %i, align 4, !dbg !5044
  br label %for.cond, !dbg !5045, !llvm.loop !5046

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !5048

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5049
  br label %for.cond14, !dbg !5052

for.cond14:                                       ; preds = %for.inc31, %if.else
  %25 = load i32, i32* %i, align 4, !dbg !5053
  %26 = load i32, i32* %n.addr, align 4, !dbg !5055
  %cmp15 = icmp ult i32 %25, %26, !dbg !5056
  br i1 %cmp15, label %for.body16, label %for.end33, !dbg !5057

for.body16:                                       ; preds = %for.cond14
  %27 = load i32, i32* %max.addr, align 4, !dbg !5058
  %dec17 = add i32 %27, -1, !dbg !5058
  store i32 %dec17, i32* %max.addr, align 4, !dbg !5058
  %tobool18 = icmp ne i32 %27, 0, !dbg !5058
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !5061

if.then19:                                        ; preds = %for.body16
  %28 = load i32, i32* %ret, align 4, !dbg !5062
  store i32 %28, i32* %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

if.end20:                                         ; preds = %for.body16
  %29 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !5064
  %30 = load %struct.ir_raw_event*, %struct.ir_raw_event** %29, align 8, !dbg !5065
  %incdec.ptr21 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %30, i32 1, !dbg !5065
  store %struct.ir_raw_event* %incdec.ptr21, %struct.ir_raw_event** %29, align 8, !dbg !5065
  %31 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !5066
  %bit_space22 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %31, i32 0, i32 1, !dbg !5067
  %32 = load i32, i32* %bit_space22, align 4, !dbg !5067
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %30, i32 0, i32 %32) #10, !dbg !5068
  %33 = load i32, i32* %max.addr, align 4, !dbg !5069
  %dec23 = add i32 %33, -1, !dbg !5069
  store i32 %dec23, i32* %max.addr, align 4, !dbg !5069
  %tobool24 = icmp ne i32 %33, 0, !dbg !5069
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5071

if.then25:                                        ; preds = %if.end20
  %34 = load i32, i32* %ret, align 4, !dbg !5072
  store i32 %34, i32* %retval, align 4, !dbg !5073
  br label %return, !dbg !5073

if.end26:                                         ; preds = %if.end20
  %35 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !5074
  %bit_pulse27 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %35, i32 0, i32 2, !dbg !5075
  %36 = load i64, i64* %data.addr, align 8, !dbg !5076
  %and28 = and i64 %36, 1, !dbg !5077
  %arrayidx29 = getelementptr [2 x i32], [2 x i32]* %bit_pulse27, i64 0, i64 %and28, !dbg !5074
  %37 = load i32, i32* %arrayidx29, align 4, !dbg !5074
  store i32 %37, i32* %pulse, align 4, !dbg !5078
  %38 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !5079
  %39 = load %struct.ir_raw_event*, %struct.ir_raw_event** %38, align 8, !dbg !5080
  %incdec.ptr30 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %39, i32 1, !dbg !5080
  store %struct.ir_raw_event* %incdec.ptr30, %struct.ir_raw_event** %38, align 8, !dbg !5080
  %40 = load i32, i32* %pulse, align 4, !dbg !5081
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %39, i32 1, i32 %40) #10, !dbg !5082
  br label %for.inc31, !dbg !5083

for.inc31:                                        ; preds = %if.end26
  %41 = load i32, i32* %i, align 4, !dbg !5084
  %inc = add i32 %41, 1, !dbg !5084
  store i32 %inc, i32* %i, align 4, !dbg !5084
  %42 = load i64, i64* %data.addr, align 8, !dbg !5085
  %shr32 = lshr i64 %42, 1, !dbg !5085
  store i64 %shr32, i64* %data.addr, align 8, !dbg !5085
  br label %for.cond14, !dbg !5086, !llvm.loop !5087

for.end33:                                        ; preds = %for.cond14
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %for.end
  %43 = load i32, i32* %max.addr, align 4, !dbg !5089
  %dec35 = add i32 %43, -1, !dbg !5089
  store i32 %dec35, i32* %max.addr, align 4, !dbg !5089
  %tobool36 = icmp ne i32 %43, 0, !dbg !5089
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5091

if.then37:                                        ; preds = %if.end34
  %44 = load i32, i32* %ret, align 4, !dbg !5092
  store i32 %44, i32* %retval, align 4, !dbg !5093
  br label %return, !dbg !5093

if.end38:                                         ; preds = %if.end34
  %45 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %ev.addr, align 8, !dbg !5094
  %46 = load %struct.ir_raw_event*, %struct.ir_raw_event** %45, align 8, !dbg !5095
  %incdec.ptr39 = getelementptr %struct.ir_raw_event, %struct.ir_raw_event* %46, i32 1, !dbg !5095
  store %struct.ir_raw_event* %incdec.ptr39, %struct.ir_raw_event** %45, align 8, !dbg !5095
  %47 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %timings.addr, align 8, !dbg !5096
  %trailer_space = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %47, i32 0, i32 3, !dbg !5097
  %48 = load i32, i32* %trailer_space, align 4, !dbg !5097
  call void @init_ir_raw_event_duration(%struct.ir_raw_event* %46, i32 0, i32 %48) #10, !dbg !5098
  store i32 0, i32* %retval, align 4, !dbg !5099
  br label %return, !dbg !5099

return:                                           ; preds = %if.end38, %if.then37, %if.then25, %if.then19, %if.then10, %if.then5, %if.then
  %49 = load i32, i32* %retval, align 4, !dbg !5100
  ret i32 %49, !dbg !5100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_encode_scancode(i32 %protocol, i32 %scancode, %struct.ir_raw_event* %events, i32 %max) #0 !dbg !5101 {
entry:
  %protocol.addr = alloca i32, align 4
  %scancode.addr = alloca i32, align 4
  %events.addr = alloca %struct.ir_raw_event*, align 8
  %max.addr = alloca i32, align 4
  %handler = alloca %struct.ir_raw_handler*, align 8
  %ret = alloca i32, align 4
  %mask = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ir_raw_handler*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.ir_raw_handler*, align 8
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  store i32 %scancode, i32* %scancode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %scancode.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store %struct.ir_raw_event* %events, %struct.ir_raw_event** %events.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %events.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %handler, metadata !5110, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5112, metadata !DIExpression()), !dbg !5113
  store i32 -22, i32* %ret, align 4, !dbg !5113
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !5114, metadata !DIExpression()), !dbg !5115
  %0 = load i32, i32* %protocol.addr, align 4, !dbg !5116
  %sh_prom = zext i32 %0 to i64, !dbg !5117
  %shl = shl i64 1, %sh_prom, !dbg !5117
  store i64 %shl, i64* %mask, align 8, !dbg !5115
  call void @ir_raw_load_modules(i64* %mask) #10, !dbg !5118
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5119
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5120, metadata !DIExpression()), !dbg !5123
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_handler_list, i32 0, i32 0), align 8, !dbg !5123
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5123
  store i8* %2, i8** %__mptr, align 8, !dbg !5123
  br label %do.body, !dbg !5123

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5124

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5123
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5123
  %4 = bitcast i8* %add.ptr to %struct.ir_raw_handler*, !dbg !5123
  store %struct.ir_raw_handler* %4, %struct.ir_raw_handler** %tmp, align 8, !dbg !5124
  %5 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp, align 8, !dbg !5123
  store %struct.ir_raw_handler* %5, %struct.ir_raw_handler** %handler, align 8, !dbg !5126
  br label %for.cond, !dbg !5126

for.cond:                                         ; preds = %do.end10, %do.end
  %6 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5127
  %list = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %6, i32 0, i32 0, !dbg !5127
  %cmp = icmp eq %struct.list_head* %list, @ir_raw_handler_list, !dbg !5127
  %lnot = xor i1 %cmp, true, !dbg !5127
  br i1 %lnot, label %for.body, label %for.end, !dbg !5126

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5129
  %protocols = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %7, i32 0, i32 1, !dbg !5132
  %8 = load i64, i64* %protocols, align 8, !dbg !5132
  %9 = load i64, i64* %mask, align 8, !dbg !5133
  %and = and i64 %8, %9, !dbg !5134
  %tobool = icmp ne i64 %and, 0, !dbg !5134
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !5135

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5136
  %encode = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %10, i32 0, i32 3, !dbg !5137
  %11 = load i32 (i32, i32, %struct.ir_raw_event*, i32)*, i32 (i32, i32, %struct.ir_raw_event*, i32)** %encode, align 8, !dbg !5137
  %tobool1 = icmp ne i32 (i32, i32, %struct.ir_raw_event*, i32)* %11, null, !dbg !5136
  br i1 %tobool1, label %if.then, label %if.end6, !dbg !5138

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5139
  %encode2 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %12, i32 0, i32 3, !dbg !5141
  %13 = load i32 (i32, i32, %struct.ir_raw_event*, i32)*, i32 (i32, i32, %struct.ir_raw_event*, i32)** %encode2, align 8, !dbg !5141
  %14 = load i32, i32* %protocol.addr, align 4, !dbg !5142
  %15 = load i32, i32* %scancode.addr, align 4, !dbg !5143
  %16 = load %struct.ir_raw_event*, %struct.ir_raw_event** %events.addr, align 8, !dbg !5144
  %17 = load i32, i32* %max.addr, align 4, !dbg !5145
  %call = call i32 %13(i32 %14, i32 %15, %struct.ir_raw_event* %16, i32 %17) #10, !dbg !5139
  store i32 %call, i32* %ret, align 4, !dbg !5146
  %18 = load i32, i32* %ret, align 4, !dbg !5147
  %cmp3 = icmp sge i32 %18, 0, !dbg !5149
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !5150

lor.lhs.false:                                    ; preds = %if.then
  %19 = load i32, i32* %ret, align 4, !dbg !5151
  %cmp4 = icmp eq i32 %19, -105, !dbg !5152
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !5153

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  br label %for.end, !dbg !5154

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end6, !dbg !5155

if.end6:                                          ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5156

for.inc:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !5157, metadata !DIExpression()), !dbg !5159
  %20 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5159
  %list8 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %20, i32 0, i32 0, !dbg !5159
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list8, i32 0, i32 0, !dbg !5159
  %21 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5159
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !5159
  store i8* %22, i8** %__mptr7, align 8, !dbg !5159
  br label %do.body9, !dbg !5159

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !5160

do.end10:                                         ; preds = %do.body9
  %23 = load i8*, i8** %__mptr7, align 8, !dbg !5159
  %add.ptr12 = getelementptr i8, i8* %23, i64 0, !dbg !5159
  %24 = bitcast i8* %add.ptr12 to %struct.ir_raw_handler*, !dbg !5159
  store %struct.ir_raw_handler* %24, %struct.ir_raw_handler** %tmp11, align 8, !dbg !5160
  %25 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp11, align 8, !dbg !5159
  store %struct.ir_raw_handler* %25, %struct.ir_raw_handler** %handler, align 8, !dbg !5127
  br label %for.cond, !dbg !5127, !llvm.loop !5162

for.end:                                          ; preds = %if.then5, %for.cond
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5164
  %26 = load i32, i32* %ret, align 4, !dbg !5165
  ret i32 %26, !dbg !5166
}

; Function Attrs: noredzone
declare dso_local void @ir_raw_load_modules(i64*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_encode_carrier(i32 %protocol) #0 !dbg !5167 {
entry:
  %protocol.addr = alloca i32, align 4
  %handler = alloca %struct.ir_raw_handler*, align 8
  %ret = alloca i32, align 4
  %mask = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ir_raw_handler*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.ir_raw_handler*, align 8
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %handler, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5174, metadata !DIExpression()), !dbg !5175
  store i32 -22, i32* %ret, align 4, !dbg !5175
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !5176, metadata !DIExpression()), !dbg !5177
  %0 = load i32, i32* %protocol.addr, align 4, !dbg !5178
  %sh_prom = zext i32 %0 to i64, !dbg !5178
  %shl = shl i64 1, %sh_prom, !dbg !5178
  store i64 %shl, i64* %mask, align 8, !dbg !5177
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5179
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5180, metadata !DIExpression()), !dbg !5183
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_handler_list, i32 0, i32 0), align 8, !dbg !5183
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5183
  store i8* %2, i8** %__mptr, align 8, !dbg !5183
  br label %do.body, !dbg !5183

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5184

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5183
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5183
  %4 = bitcast i8* %add.ptr to %struct.ir_raw_handler*, !dbg !5183
  store %struct.ir_raw_handler* %4, %struct.ir_raw_handler** %tmp, align 8, !dbg !5184
  %5 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp, align 8, !dbg !5183
  store %struct.ir_raw_handler* %5, %struct.ir_raw_handler** %handler, align 8, !dbg !5186
  br label %for.cond, !dbg !5186

for.cond:                                         ; preds = %do.end5, %do.end
  %6 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5187
  %list = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %6, i32 0, i32 0, !dbg !5187
  %cmp = icmp eq %struct.list_head* %list, @ir_raw_handler_list, !dbg !5187
  %lnot = xor i1 %cmp, true, !dbg !5187
  br i1 %lnot, label %for.body, label %for.end, !dbg !5186

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5189
  %protocols = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %7, i32 0, i32 1, !dbg !5192
  %8 = load i64, i64* %protocols, align 8, !dbg !5192
  %9 = load i64, i64* %mask, align 8, !dbg !5193
  %and = and i64 %8, %9, !dbg !5194
  %tobool = icmp ne i64 %and, 0, !dbg !5194
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5195

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5196
  %encode = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %10, i32 0, i32 3, !dbg !5197
  %11 = load i32 (i32, i32, %struct.ir_raw_event*, i32)*, i32 (i32, i32, %struct.ir_raw_event*, i32)** %encode, align 8, !dbg !5197
  %tobool1 = icmp ne i32 (i32, i32, %struct.ir_raw_event*, i32)* %11, null, !dbg !5196
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5198

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5199
  %carrier = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %12, i32 0, i32 4, !dbg !5201
  %13 = load i32, i32* %carrier, align 8, !dbg !5201
  store i32 %13, i32* %ret, align 4, !dbg !5202
  br label %for.end, !dbg !5203

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5204

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5205, metadata !DIExpression()), !dbg !5207
  %14 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5207
  %list3 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %14, i32 0, i32 0, !dbg !5207
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list3, i32 0, i32 0, !dbg !5207
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5207
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !5207
  store i8* %16, i8** %__mptr2, align 8, !dbg !5207
  br label %do.body4, !dbg !5207

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !5208

do.end5:                                          ; preds = %do.body4
  %17 = load i8*, i8** %__mptr2, align 8, !dbg !5207
  %add.ptr7 = getelementptr i8, i8* %17, i64 0, !dbg !5207
  %18 = bitcast i8* %add.ptr7 to %struct.ir_raw_handler*, !dbg !5207
  store %struct.ir_raw_handler* %18, %struct.ir_raw_handler** %tmp6, align 8, !dbg !5208
  %19 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp6, align 8, !dbg !5207
  store %struct.ir_raw_handler* %19, %struct.ir_raw_handler** %handler, align 8, !dbg !5187
  br label %for.cond, !dbg !5187, !llvm.loop !5210

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5212
  %20 = load i32, i32* %ret, align 4, !dbg !5213
  ret i32 %20, !dbg !5214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_event_prepare(%struct.rc_dev* %dev) #0 !dbg !5215 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5216, metadata !DIExpression()), !dbg !5221
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %__tmp = alloca %struct.anon.65*, align 8
  %__kfifo = alloca %struct.__kfifo*, align 8
  %tmp = alloca i8*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5226
  %tobool = icmp ne %struct.rc_dev* %0, null, !dbg !5226
  br i1 %tobool, label %if.end, label %if.then, !dbg !5228

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5229
  br label %return, !dbg !5229

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 4216, i32 3264) #10, !dbg !5230
  %1 = bitcast i8* %call to %struct.ir_raw_event_ctrl*, !dbg !5230
  %2 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5231
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %2, i32 0, i32 11, !dbg !5232
  store %struct.ir_raw_event_ctrl* %1, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5233
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5234
  %raw1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %3, i32 0, i32 11, !dbg !5236
  %4 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw1, align 8, !dbg !5236
  %tobool2 = icmp ne %struct.ir_raw_event_ctrl* %4, null, !dbg !5234
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5237

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

if.end4:                                          ; preds = %if.end
  %5 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5239
  %6 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5240
  %raw5 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 11, !dbg !5241
  %7 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw5, align 8, !dbg !5241
  %dev6 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %7, i32 0, i32 4, !dbg !5242
  store %struct.rc_dev* %5, %struct.rc_dev** %dev6, align 8, !dbg !5243
  %8 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5244
  %change_protocol = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 40, !dbg !5245
  store i32 (%struct.rc_dev*, i64*)* @change_protocol, i32 (%struct.rc_dev*, i64*)** %change_protocol, align 8, !dbg !5246
  %9 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5247
  %idle = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 14, !dbg !5248
  store i8 1, i8* %idle, align 4, !dbg !5249
  br label %do.body, !dbg !5250

do.body:                                          ; preds = %if.end4
  %10 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5251
  %raw7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 11, !dbg !5251
  %11 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw7, align 8, !dbg !5251
  %edge_spinlock = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %11, i32 0, i32 5, !dbg !5251
  store %struct.spinlock* %edge_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5252
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !5253
  %rlock.i = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !5253
  %14 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5251
  %raw9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 11, !dbg !5251
  %15 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw9, align 8, !dbg !5251
  %edge_spinlock10 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %15, i32 0, i32 5, !dbg !5251
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !5251
  %rlock = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !5251
  %17 = bitcast %struct.spinlock* %edge_spinlock10 to i8*, !dbg !5251
  %18 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !5251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 1 %18, i64 0, i1 false), !dbg !5251
  br label %do.end, !dbg !5251

do.end:                                           ; preds = %do.body
  %19 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5254
  %raw11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 11, !dbg !5254
  %20 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw11, align 8, !dbg !5254
  %edge_handle = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %20, i32 0, i32 6, !dbg !5254
  call void @init_timer_key(%struct.timer_list* %edge_handle, void (%struct.timer_list*)* @ir_raw_edge_handle, i32 0, i8* null, %struct.lock_class_key* null) #10, !dbg !5254
  call void @llvm.dbg.declare(metadata %struct.anon.65** %__tmp, metadata !5255, metadata !DIExpression()), !dbg !5257
  %21 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5257
  %raw12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 11, !dbg !5257
  %22 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw12, align 8, !dbg !5257
  %kfifo = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %22, i32 0, i32 2, !dbg !5257
  store %struct.anon.65* %kfifo, %struct.anon.65** %__tmp, align 8, !dbg !5257
  call void @llvm.dbg.declare(metadata %struct.__kfifo** %__kfifo, metadata !5258, metadata !DIExpression()), !dbg !5257
  %23 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !5257
  %24 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %23, i32 0, i32 0, !dbg !5257
  %kfifo13 = bitcast %union.anon.66* %24 to %struct.__kfifo*, !dbg !5257
  store %struct.__kfifo* %kfifo13, %struct.__kfifo** %__kfifo, align 8, !dbg !5257
  %25 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5257
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %25, i32 0, i32 0, !dbg !5257
  store i32 0, i32* %in, align 8, !dbg !5257
  %26 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5257
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %26, i32 0, i32 1, !dbg !5257
  store i32 0, i32* %out, align 4, !dbg !5257
  %27 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5257
  %mask = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %27, i32 0, i32 2, !dbg !5257
  store i32 511, i32* %mask, align 8, !dbg !5257
  %28 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5257
  %esize = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %28, i32 0, i32 3, !dbg !5257
  store i32 8, i32* %esize, align 4, !dbg !5257
  %29 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !5257
  %buf = getelementptr inbounds %struct.anon.65, %struct.anon.65* %29, i32 0, i32 1, !dbg !5257
  %arraydecay = getelementptr inbounds [512 x %struct.ir_raw_event], [512 x %struct.ir_raw_event]* %buf, i64 0, i64 0, !dbg !5257
  %30 = bitcast %struct.ir_raw_event* %arraydecay to i8*, !dbg !5257
  %31 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5257
  %data = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %31, i32 0, i32 4, !dbg !5257
  store i8* %30, i8** %data, align 8, !dbg !5257
  store i8* %30, i8** %tmp, align 8, !dbg !5257
  %32 = load i8*, i8** %tmp, align 8, !dbg !5257
  store i32 0, i32* %retval, align 4, !dbg !5259
  br label %return, !dbg !5259

return:                                           ; preds = %do.end, %if.then3, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !5260
  ret i32 %33, !dbg !5260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5261 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5264, metadata !DIExpression()), !dbg !5268
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5274, metadata !DIExpression()), !dbg !5275
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5276, metadata !DIExpression()), !dbg !5277
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5278, metadata !DIExpression()), !dbg !5279
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5280, metadata !DIExpression()), !dbg !5284
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5286, metadata !DIExpression()), !dbg !5290
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5292, metadata !DIExpression()), !dbg !5296
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5301, metadata !DIExpression()), !dbg !5302
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5303, metadata !DIExpression()), !dbg !5304
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5305, metadata !DIExpression()), !dbg !5306
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5307, metadata !DIExpression()), !dbg !5308
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5309, metadata !DIExpression()), !dbg !5310
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5311, metadata !DIExpression()), !dbg !5312
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5313, metadata !DIExpression()), !dbg !5314
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5315, metadata !DIExpression()), !dbg !5316
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  %0 = load i64, i64* %size.addr, align 8, !dbg !5321
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5322
  %or = or i32 %1, 256, !dbg !5323
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5324
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !5325
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5326

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5327
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5328
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5329

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5330
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5331
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5332
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5333
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5310
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5334
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5335
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5336
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5337
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5338
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5339
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5340
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5340
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5340
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5340
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5340
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5341
  br label %kmalloc.exit, !dbg !5341

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5342
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5343
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5343
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5345

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5346
  br label %kmalloc_index.exit.i, !dbg !5346

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5347
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5349
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5350

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5351
  br label %kmalloc_index.exit.i, !dbg !5351

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5352
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5354
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5355

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5356
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5357
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5358

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5359
  br label %kmalloc_index.exit.i, !dbg !5359

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5360
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5362
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5363

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5364
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5365
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5366

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5367
  br label %kmalloc_index.exit.i, !dbg !5367

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5368
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5370
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5371

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5372
  br label %kmalloc_index.exit.i, !dbg !5372

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5373
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5375
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5376

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5377
  br label %kmalloc_index.exit.i, !dbg !5377

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5378
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5380
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5381

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5382
  br label %kmalloc_index.exit.i, !dbg !5382

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5383
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5385
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5386

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5387
  br label %kmalloc_index.exit.i, !dbg !5387

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5388
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5390
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5391

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5392
  br label %kmalloc_index.exit.i, !dbg !5392

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5393
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5395
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5396

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5397
  br label %kmalloc_index.exit.i, !dbg !5397

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5398
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5400
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5401

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5402
  br label %kmalloc_index.exit.i, !dbg !5402

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5403
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5405
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5406

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5407
  br label %kmalloc_index.exit.i, !dbg !5407

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5408
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5410
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5411

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5412
  br label %kmalloc_index.exit.i, !dbg !5412

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5413
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5415
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5416

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5417
  br label %kmalloc_index.exit.i, !dbg !5417

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5418
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5420
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5421

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5422
  br label %kmalloc_index.exit.i, !dbg !5422

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5423
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5425
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5426

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5427
  br label %kmalloc_index.exit.i, !dbg !5427

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5428
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5430
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5431

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5432
  br label %kmalloc_index.exit.i, !dbg !5432

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5433
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5435
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5436

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5437
  br label %kmalloc_index.exit.i, !dbg !5437

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5438
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5440
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5441

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5442
  br label %kmalloc_index.exit.i, !dbg !5442

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5443
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5445
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5446

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5447
  br label %kmalloc_index.exit.i, !dbg !5447

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5448
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5450
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5451

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5452
  br label %kmalloc_index.exit.i, !dbg !5452

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5453
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5455
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5456

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5457
  br label %kmalloc_index.exit.i, !dbg !5457

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5458
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5460
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5461

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5462
  br label %kmalloc_index.exit.i, !dbg !5462

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5463
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5465
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5466

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5467
  br label %kmalloc_index.exit.i, !dbg !5467

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5468
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5470
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5471

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5472
  br label %kmalloc_index.exit.i, !dbg !5472

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5473
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5475
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5476

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5477
  br label %kmalloc_index.exit.i, !dbg !5477

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5478
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5480
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5481

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5482
  br label %kmalloc_index.exit.i, !dbg !5482

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5483
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5485
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5486

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5487
  br label %kmalloc_index.exit.i, !dbg !5487

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5488, !srcloc !5491
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #9, !dbg !5492, !srcloc !5495
  unreachable, !dbg !5496

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5497
  store i32 %45, i32* %index.i, align 4, !dbg !5498
  %46 = load i32, i32* %index.i, align 4, !dbg !5499
  %tobool.i = icmp ne i32 %46, 0, !dbg !5499
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5501

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5502
  br label %kmalloc.exit, !dbg !5502

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5503
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5504
  %and.i.i = and i32 %48, 17, !dbg !5504
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5504
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5504
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5504
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5504
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5506

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5507
  br label %kmalloc_type.exit.i, !dbg !5507

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5508
  %and2.i.i = and i32 %49, 1, !dbg !5509
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5508
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5508
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5508
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5510
  br label %kmalloc_type.exit.i, !dbg !5510

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5511
  %idxprom.i = zext i32 %51 to i64, !dbg !5512
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5512
  %52 = load i32, i32* %index.i, align 4, !dbg !5513
  %idxprom6.i = zext i32 %52 to i64, !dbg !5512
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5512
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5512
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5514
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5515
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5516
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5517
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5518
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5518
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5518
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5518
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5518
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5279
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5519
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5520
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5521
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5522
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5523
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5524
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5525
  store i8* %62, i8** %retval.i, align 8, !dbg !5526
  br label %kmalloc.exit, !dbg !5526

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5527
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5528
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5529
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5529
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5529
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5529
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5529
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5530
  br label %kmalloc.exit, !dbg !5530

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5531
  ret i8* %65, !dbg !5532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @change_protocol(%struct.rc_dev* %dev, i64* %rc_proto) #0 !dbg !5533 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %rc_proto.addr = alloca i64*, align 8
  %handler = alloca %struct.ir_raw_handler*, align 8
  %timeout = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ir_raw_handler*, align 8
  %__mptr21 = alloca i8*, align 8
  %tmp25 = alloca %struct.ir_raw_handler*, align 8
  %__mptr30 = alloca i8*, align 8
  %tmp33 = alloca %struct.ir_raw_handler*, align 8
  %__mptr50 = alloca i8*, align 8
  %tmp55 = alloca %struct.ir_raw_handler*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store i64* %rc_proto, i64** %rc_proto.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %rc_proto.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %handler, metadata !5538, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !5540, metadata !DIExpression()), !dbg !5541
  store i32 0, i32* %timeout, align 4, !dbg !5541
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5542
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5543, metadata !DIExpression()), !dbg !5546
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_handler_list, i32 0, i32 0), align 8, !dbg !5546
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5546
  store i8* %1, i8** %__mptr, align 8, !dbg !5546
  br label %do.body, !dbg !5546

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5547

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5546
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5546
  %3 = bitcast i8* %add.ptr to %struct.ir_raw_handler*, !dbg !5546
  store %struct.ir_raw_handler* %3, %struct.ir_raw_handler** %tmp, align 8, !dbg !5547
  %4 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp, align 8, !dbg !5546
  store %struct.ir_raw_handler* %4, %struct.ir_raw_handler** %handler, align 8, !dbg !5549
  br label %for.cond, !dbg !5549

for.cond:                                         ; preds = %do.end24, %do.end
  %5 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5550
  %list = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %5, i32 0, i32 0, !dbg !5550
  %cmp = icmp eq %struct.list_head* %list, @ir_raw_handler_list, !dbg !5550
  %lnot = xor i1 %cmp, true, !dbg !5550
  br i1 %lnot, label %for.body, label %for.end, !dbg !5549

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5552
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 17, !dbg !5555
  %7 = load i64, i64* %enabled_protocols, align 8, !dbg !5555
  %8 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5556
  %protocols = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %8, i32 0, i32 1, !dbg !5557
  %9 = load i64, i64* %protocols, align 8, !dbg !5557
  %and = and i64 %7, %9, !dbg !5558
  %tobool = icmp ne i64 %and, 0, !dbg !5558
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5559

land.lhs.true:                                    ; preds = %for.body
  %10 = load i64*, i64** %rc_proto.addr, align 8, !dbg !5560
  %11 = load i64, i64* %10, align 8, !dbg !5561
  %12 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5562
  %protocols1 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %12, i32 0, i32 1, !dbg !5563
  %13 = load i64, i64* %protocols1, align 8, !dbg !5563
  %and2 = and i64 %11, %13, !dbg !5564
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5564
  br i1 %tobool3, label %land.lhs.true4, label %if.end, !dbg !5565

land.lhs.true4:                                   ; preds = %land.lhs.true
  %14 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5566
  %raw_register = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %14, i32 0, i32 6, !dbg !5567
  %15 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_register, align 8, !dbg !5567
  %tobool5 = icmp ne i32 (%struct.rc_dev*)* %15, null, !dbg !5566
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5568

if.then:                                          ; preds = %land.lhs.true4
  %16 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5569
  %raw_register6 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %16, i32 0, i32 6, !dbg !5570
  %17 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_register6, align 8, !dbg !5570
  %18 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5571
  %call = call i32 %17(%struct.rc_dev* %18) #10, !dbg !5569
  br label %if.end, !dbg !5569

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %for.body
  %19 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5572
  %enabled_protocols7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 17, !dbg !5574
  %20 = load i64, i64* %enabled_protocols7, align 8, !dbg !5574
  %21 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5575
  %protocols8 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %21, i32 0, i32 1, !dbg !5576
  %22 = load i64, i64* %protocols8, align 8, !dbg !5576
  %and9 = and i64 %20, %22, !dbg !5577
  %tobool10 = icmp ne i64 %and9, 0, !dbg !5577
  br i1 %tobool10, label %land.lhs.true11, label %if.end20, !dbg !5578

land.lhs.true11:                                  ; preds = %if.end
  %23 = load i64*, i64** %rc_proto.addr, align 8, !dbg !5579
  %24 = load i64, i64* %23, align 8, !dbg !5580
  %25 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5581
  %protocols12 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %25, i32 0, i32 1, !dbg !5582
  %26 = load i64, i64* %protocols12, align 8, !dbg !5582
  %and13 = and i64 %24, %26, !dbg !5583
  %tobool14 = icmp ne i64 %and13, 0, !dbg !5583
  br i1 %tobool14, label %if.end20, label %land.lhs.true15, !dbg !5584

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %27 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5585
  %raw_unregister = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %27, i32 0, i32 7, !dbg !5586
  %28 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_unregister, align 8, !dbg !5586
  %tobool16 = icmp ne i32 (%struct.rc_dev*)* %28, null, !dbg !5585
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !5587

if.then17:                                        ; preds = %land.lhs.true15
  %29 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5588
  %raw_unregister18 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %29, i32 0, i32 7, !dbg !5589
  %30 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_unregister18, align 8, !dbg !5589
  %31 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5590
  %call19 = call i32 %30(%struct.rc_dev* %31) #10, !dbg !5588
  br label %if.end20, !dbg !5588

if.end20:                                         ; preds = %if.then17, %land.lhs.true15, %land.lhs.true11, %if.end
  br label %for.inc, !dbg !5591

for.inc:                                          ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i8** %__mptr21, metadata !5592, metadata !DIExpression()), !dbg !5594
  %32 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5594
  %list22 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %32, i32 0, i32 0, !dbg !5594
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list22, i32 0, i32 0, !dbg !5594
  %33 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5594
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !5594
  store i8* %34, i8** %__mptr21, align 8, !dbg !5594
  br label %do.body23, !dbg !5594

do.body23:                                        ; preds = %for.inc
  br label %do.end24, !dbg !5595

do.end24:                                         ; preds = %do.body23
  %35 = load i8*, i8** %__mptr21, align 8, !dbg !5594
  %add.ptr26 = getelementptr i8, i8* %35, i64 0, !dbg !5594
  %36 = bitcast i8* %add.ptr26 to %struct.ir_raw_handler*, !dbg !5594
  store %struct.ir_raw_handler* %36, %struct.ir_raw_handler** %tmp25, align 8, !dbg !5595
  %37 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp25, align 8, !dbg !5594
  store %struct.ir_raw_handler* %37, %struct.ir_raw_handler** %handler, align 8, !dbg !5550
  br label %for.cond, !dbg !5550, !llvm.loop !5597

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5599
  %38 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5600
  %max_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %38, i32 0, i32 36, !dbg !5602
  %39 = load i32, i32* %max_timeout, align 4, !dbg !5602
  %tobool27 = icmp ne i32 %39, 0, !dbg !5600
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !5603

if.then28:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !5604
  br label %return, !dbg !5604

if.end29:                                         ; preds = %for.end
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5605
  call void @llvm.dbg.declare(metadata i8** %__mptr30, metadata !5606, metadata !DIExpression()), !dbg !5609
  %40 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_handler_list, i32 0, i32 0), align 8, !dbg !5609
  %41 = bitcast %struct.list_head* %40 to i8*, !dbg !5609
  store i8* %41, i8** %__mptr30, align 8, !dbg !5609
  br label %do.body31, !dbg !5609

do.body31:                                        ; preds = %if.end29
  br label %do.end32, !dbg !5610

do.end32:                                         ; preds = %do.body31
  %42 = load i8*, i8** %__mptr30, align 8, !dbg !5609
  %add.ptr34 = getelementptr i8, i8* %42, i64 0, !dbg !5609
  %43 = bitcast i8* %add.ptr34 to %struct.ir_raw_handler*, !dbg !5609
  store %struct.ir_raw_handler* %43, %struct.ir_raw_handler** %tmp33, align 8, !dbg !5610
  %44 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp33, align 8, !dbg !5609
  store %struct.ir_raw_handler* %44, %struct.ir_raw_handler** %handler, align 8, !dbg !5612
  br label %for.cond35, !dbg !5612

for.cond35:                                       ; preds = %do.end54, %do.end32
  %45 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5613
  %list36 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %45, i32 0, i32 0, !dbg !5613
  %cmp37 = icmp eq %struct.list_head* %list36, @ir_raw_handler_list, !dbg !5613
  %lnot38 = xor i1 %cmp37, true, !dbg !5613
  br i1 %lnot38, label %for.body39, label %for.end57, !dbg !5612

for.body39:                                       ; preds = %for.cond35
  %46 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5615
  %protocols40 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %46, i32 0, i32 1, !dbg !5618
  %47 = load i64, i64* %protocols40, align 8, !dbg !5618
  %48 = load i64*, i64** %rc_proto.addr, align 8, !dbg !5619
  %49 = load i64, i64* %48, align 8, !dbg !5620
  %and41 = and i64 %47, %49, !dbg !5621
  %tobool42 = icmp ne i64 %and41, 0, !dbg !5621
  br i1 %tobool42, label %if.then43, label %if.end48, !dbg !5622

if.then43:                                        ; preds = %for.body39
  %50 = load i32, i32* %timeout, align 4, !dbg !5623
  %51 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5626
  %min_timeout = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %51, i32 0, i32 5, !dbg !5627
  %52 = load i32, i32* %min_timeout, align 4, !dbg !5627
  %cmp44 = icmp ult i32 %50, %52, !dbg !5628
  br i1 %cmp44, label %if.then45, label %if.end47, !dbg !5629

if.then45:                                        ; preds = %if.then43
  %53 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5630
  %min_timeout46 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %53, i32 0, i32 5, !dbg !5631
  %54 = load i32, i32* %min_timeout46, align 4, !dbg !5631
  store i32 %54, i32* %timeout, align 4, !dbg !5632
  br label %if.end47, !dbg !5633

if.end47:                                         ; preds = %if.then45, %if.then43
  br label %if.end48, !dbg !5634

if.end48:                                         ; preds = %if.end47, %for.body39
  br label %for.inc49, !dbg !5635

for.inc49:                                        ; preds = %if.end48
  call void @llvm.dbg.declare(metadata i8** %__mptr50, metadata !5636, metadata !DIExpression()), !dbg !5638
  %55 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5638
  %list51 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %55, i32 0, i32 0, !dbg !5638
  %next52 = getelementptr inbounds %struct.list_head, %struct.list_head* %list51, i32 0, i32 0, !dbg !5638
  %56 = load %struct.list_head*, %struct.list_head** %next52, align 8, !dbg !5638
  %57 = bitcast %struct.list_head* %56 to i8*, !dbg !5638
  store i8* %57, i8** %__mptr50, align 8, !dbg !5638
  br label %do.body53, !dbg !5638

do.body53:                                        ; preds = %for.inc49
  br label %do.end54, !dbg !5639

do.end54:                                         ; preds = %do.body53
  %58 = load i8*, i8** %__mptr50, align 8, !dbg !5638
  %add.ptr56 = getelementptr i8, i8* %58, i64 0, !dbg !5638
  %59 = bitcast i8* %add.ptr56 to %struct.ir_raw_handler*, !dbg !5638
  store %struct.ir_raw_handler* %59, %struct.ir_raw_handler** %tmp55, align 8, !dbg !5639
  %60 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp55, align 8, !dbg !5638
  store %struct.ir_raw_handler* %60, %struct.ir_raw_handler** %handler, align 8, !dbg !5613
  br label %for.cond35, !dbg !5613, !llvm.loop !5641

for.end57:                                        ; preds = %for.cond35
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5643
  %61 = load i32, i32* %timeout, align 4, !dbg !5644
  %cmp58 = icmp eq i32 %61, 0, !dbg !5646
  br i1 %cmp58, label %if.then59, label %if.else, !dbg !5647

if.then59:                                        ; preds = %for.end57
  store i32 125000, i32* %timeout, align 4, !dbg !5648
  br label %if.end60, !dbg !5649

if.else:                                          ; preds = %for.end57
  %62 = load i32, i32* %timeout, align 4, !dbg !5650
  %add = add i32 %62, 10000, !dbg !5650
  store i32 %add, i32* %timeout, align 4, !dbg !5650
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then59
  %63 = load i32, i32* %timeout, align 4, !dbg !5651
  %64 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5653
  %min_timeout61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 35, !dbg !5654
  %65 = load i32, i32* %min_timeout61, align 8, !dbg !5654
  %cmp62 = icmp ult i32 %63, %65, !dbg !5655
  br i1 %cmp62, label %if.then63, label %if.else65, !dbg !5656

if.then63:                                        ; preds = %if.end60
  %66 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5657
  %min_timeout64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 35, !dbg !5658
  %67 = load i32, i32* %min_timeout64, align 8, !dbg !5658
  store i32 %67, i32* %timeout, align 4, !dbg !5659
  br label %if.end71, !dbg !5660

if.else65:                                        ; preds = %if.end60
  %68 = load i32, i32* %timeout, align 4, !dbg !5661
  %69 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5663
  %max_timeout66 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 36, !dbg !5664
  %70 = load i32, i32* %max_timeout66, align 4, !dbg !5664
  %cmp67 = icmp ugt i32 %68, %70, !dbg !5665
  br i1 %cmp67, label %if.then68, label %if.end70, !dbg !5666

if.then68:                                        ; preds = %if.else65
  %71 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5667
  %max_timeout69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %71, i32 0, i32 36, !dbg !5668
  %72 = load i32, i32* %max_timeout69, align 4, !dbg !5668
  store i32 %72, i32* %timeout, align 4, !dbg !5669
  br label %if.end70, !dbg !5670

if.end70:                                         ; preds = %if.then68, %if.else65
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then63
  %73 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5671
  %s_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %73, i32 0, i32 53, !dbg !5673
  %74 = load i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)** %s_timeout, align 8, !dbg !5673
  %tobool72 = icmp ne i32 (%struct.rc_dev*, i32)* %74, null, !dbg !5671
  br i1 %tobool72, label %if.then73, label %if.else76, !dbg !5674

if.then73:                                        ; preds = %if.end71
  %75 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5675
  %s_timeout74 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %75, i32 0, i32 53, !dbg !5676
  %76 = load i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)** %s_timeout74, align 8, !dbg !5676
  %77 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5677
  %78 = load i32, i32* %timeout, align 4, !dbg !5678
  %call75 = call i32 %76(%struct.rc_dev* %77, i32 %78) #10, !dbg !5675
  br label %if.end78, !dbg !5675

if.else76:                                        ; preds = %if.end71
  %79 = load i32, i32* %timeout, align 4, !dbg !5679
  %80 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5680
  %timeout77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %80, i32 0, i32 34, !dbg !5681
  store i32 %79, i32* %timeout77, align 4, !dbg !5682
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then73
  store i32 0, i32* %retval, align 4, !dbg !5683
  br label %return, !dbg !5683

return:                                           ; preds = %if.end78, %if.then28
  %81 = load i32, i32* %retval, align 4, !dbg !5684
  ret i32 %81, !dbg !5684
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ir_raw_edge_handle(%struct.timer_list* %t) #0 !dbg !5685 {
entry:
  %lock.addr.i50 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i50, metadata !5686, metadata !DIExpression()), !dbg !5690
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5692, metadata !DIExpression()), !dbg !5693
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %retval.i = alloca i64, align 8
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !5694, metadata !DIExpression()), !dbg !5696
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5216, metadata !DIExpression()), !dbg !5700
  %t.addr = alloca %struct.timer_list*, align 8
  %raw = alloca %struct.ir_raw_event_ctrl*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ir_raw_event_ctrl*, align 8
  %dev = alloca %struct.rc_dev*, align 8
  %flags = alloca i64, align 8
  %interval = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %ev = alloca %struct.ir_raw_event, align 4
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event_ctrl** %raw, metadata !5709, metadata !DIExpression()), !dbg !5710
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5711, metadata !DIExpression()), !dbg !5713
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !5713
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !5713
  store i8* %1, i8** %__mptr, align 8, !dbg !5713
  br label %do.body, !dbg !5713

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5714

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5713
  %add.ptr = getelementptr i8, i8* %2, i64 -4160, !dbg !5713
  %3 = bitcast i8* %add.ptr to %struct.ir_raw_event_ctrl*, !dbg !5713
  store %struct.ir_raw_event_ctrl* %3, %struct.ir_raw_event_ctrl** %tmp, align 8, !dbg !5714
  %4 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %tmp, align 8, !dbg !5713
  store %struct.ir_raw_event_ctrl* %4, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5710
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev, metadata !5716, metadata !DIExpression()), !dbg !5717
  %5 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5718
  %dev1 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %5, i32 0, i32 4, !dbg !5719
  %6 = load %struct.rc_dev*, %struct.rc_dev** %dev1, align 8, !dbg !5719
  store %struct.rc_dev* %6, %struct.rc_dev** %dev, align 8, !dbg !5717
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5720, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.declare(metadata i64* %interval, metadata !5722, metadata !DIExpression()), !dbg !5723
  br label %do.body2, !dbg !5724

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5725

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5726, metadata !DIExpression()), !dbg !5728
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5729, metadata !DIExpression()), !dbg !5728
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5728
  %conv = zext i1 %cmp to i32, !dbg !5728
  store i32 1, i32* %tmp4, align 4, !dbg !5728
  %7 = load i32, i32* %tmp4, align 4, !dbg !5728
  br label %do.body5, !dbg !5730

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5731

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5732

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5734, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5738, metadata !DIExpression()), !dbg !5737
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5737
  %conv11 = zext i1 %cmp10 to i32, !dbg !5737
  store i32 1, i32* %tmp12, align 4, !dbg !5737
  %8 = load i32, i32* %tmp12, align 4, !dbg !5737
  %call = call i64 @arch_local_irq_save() #10, !dbg !5739
  store i64 %call, i64* %flags, align 8, !dbg !5739
  br label %do.end13, !dbg !5739

do.end13:                                         ; preds = %do.body7
  br label %do.end14, !dbg !5732

do.end14:                                         ; preds = %do.end13
  br label %do.body15, !dbg !5731

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5740, !srcloc !5741
  br label %do.body16, !dbg !5740

do.body16:                                        ; preds = %do.body15
  %9 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5742
  %raw17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 11, !dbg !5742
  %10 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw17, align 8, !dbg !5742
  %edge_spinlock = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %10, i32 0, i32 5, !dbg !5742
  store %struct.spinlock* %edge_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5743
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !5744
  %rlock.i = bitcast %union.anon* %12 to %struct.raw_spinlock*, !dbg !5744
  br label %do.end19, !dbg !5742

do.end19:                                         ; preds = %do.body16
  br label %do.end20, !dbg !5740

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5731

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !5730

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !5725

do.end23:                                         ; preds = %do.end22
  %call24 = call i64 @ktime_get() #10, !dbg !5745
  %13 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5745
  %raw25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 11, !dbg !5745
  %14 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw25, align 8, !dbg !5745
  %last_event = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %14, i32 0, i32 3, !dbg !5745
  %15 = load i64, i64* %last_event, align 8, !dbg !5745
  %sub = sub i64 %call24, %15, !dbg !5745
  store i64 %sub, i64* %interval, align 8, !dbg !5746
  %16 = load i64, i64* %interval, align 8, !dbg !5747
  %call26 = call i64 @ktime_to_us(i64 %16) #10, !dbg !5748
  %17 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5749
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 34, !dbg !5750
  %18 = load i32, i32* %timeout, align 4, !dbg !5750
  %conv27 = zext i32 %18 to i64, !dbg !5749
  %cmp28 = icmp sge i64 %call26, %conv27, !dbg !5751
  br i1 %cmp28, label %if.then, label %if.else, !dbg !5752

if.then:                                          ; preds = %do.end23
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %ev, metadata !5753, metadata !DIExpression()), !dbg !5755
  %19 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 0, !dbg !5756
  %duration = bitcast %union.anon.67* %19 to i32*, !dbg !5757
  %20 = load i64, i64* %interval, align 8, !dbg !5758
  %call30 = call i64 @ktime_to_us(i64 %20) #10, !dbg !5759
  %conv31 = trunc i64 %call30 to i32, !dbg !5759
  store i32 %conv31, i32* %duration, align 4, !dbg !5757
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 1, !dbg !5756
  store i8 0, i8* %duty_cycle, align 4, !dbg !5756
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !5756
  %bf.load = load i8, i8* %pulse, align 1, !dbg !5756
  %bf.clear = and i8 %bf.load, -2, !dbg !5756
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !5756
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !5756
  %bf.load32 = load i8, i8* %reset, align 1, !dbg !5756
  %bf.clear33 = and i8 %bf.load32, -3, !dbg !5756
  store i8 %bf.clear33, i8* %reset, align 1, !dbg !5756
  %timeout34 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !5756
  %bf.load35 = load i8, i8* %timeout34, align 1, !dbg !5756
  %bf.clear36 = and i8 %bf.load35, -5, !dbg !5756
  %bf.set = or i8 %bf.clear36, 4, !dbg !5756
  store i8 %bf.set, i8* %timeout34, align 1, !dbg !5756
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !5756
  %bf.load37 = load i8, i8* %carrier_report, align 1, !dbg !5756
  %bf.clear38 = and i8 %bf.load37, -9, !dbg !5756
  store i8 %bf.clear38, i8* %carrier_report, align 1, !dbg !5756
  %21 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5760
  %call39 = call i32 @ir_raw_event_store(%struct.rc_dev* %21, %struct.ir_raw_event* %ev) #10, !dbg !5761
  br label %if.end, !dbg !5762

if.else:                                          ; preds = %do.end23
  %22 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5763
  %raw40 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %22, i32 0, i32 11, !dbg !5764
  %23 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw40, align 8, !dbg !5764
  %edge_handle = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %23, i32 0, i32 6, !dbg !5765
  %24 = load volatile i64, i64* @jiffies, align 8, !dbg !5766
  %25 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5767
  %timeout41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 34, !dbg !5768
  %26 = load i32, i32* %timeout41, align 4, !dbg !5768
  %conv42 = zext i32 %26 to i64, !dbg !5767
  %27 = load i64, i64* %interval, align 8, !dbg !5769
  %call43 = call i64 @ktime_to_us(i64 %27) #10, !dbg !5770
  %sub44 = sub i64 %conv42, %call43, !dbg !5771
  %conv45 = trunc i64 %sub44 to i32, !dbg !5767
  store i32 %conv45, i32* %u.addr.i, align 4
  %28 = load i32, i32* %u.addr.i, align 4, !dbg !5772
  %29 = call i1 @llvm.is.constant.i32(i32 %28) #9, !dbg !5774
  br i1 %29, label %if.then.i, label %if.else.i, !dbg !5775

if.then.i:                                        ; preds = %if.else
  %30 = load i32, i32* %u.addr.i, align 4, !dbg !5776
  %call.i = call i32 @jiffies_to_usecs(i64 4611686018427387902) #12, !dbg !5779
  %cmp.i = icmp ugt i32 %30, %call.i, !dbg !5780
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5781

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5782
  br label %usecs_to_jiffies.exit, !dbg !5782

if.end.i:                                         ; preds = %if.then.i
  %31 = load i32, i32* %u.addr.i, align 4, !dbg !5783
  %call2.i = call i64 @_usecs_to_jiffies(i32 %31) #12, !dbg !5784
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5785
  br label %usecs_to_jiffies.exit, !dbg !5785

if.else.i:                                        ; preds = %if.else
  %32 = load i32, i32* %u.addr.i, align 4, !dbg !5786
  %call3.i = call i64 @__usecs_to_jiffies(i32 %32) #12, !dbg !5788
  store i64 %call3.i, i64* %retval.i, align 8, !dbg !5789
  br label %usecs_to_jiffies.exit, !dbg !5789

usecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %33 = load i64, i64* %retval.i, align 8, !dbg !5790
  %add = add i64 %24, %33, !dbg !5791
  %call47 = call i32 @mod_timer(%struct.timer_list* %edge_handle, i64 %add) #10, !dbg !5792
  br label %if.end

if.end:                                           ; preds = %usecs_to_jiffies.exit, %if.then
  %34 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5793
  %raw48 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 11, !dbg !5794
  %35 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw48, align 8, !dbg !5794
  %edge_spinlock49 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %35, i32 0, i32 5, !dbg !5795
  %36 = load i64, i64* %flags, align 8, !dbg !5796
  store %struct.spinlock* %edge_spinlock49, %struct.spinlock** %lock.addr.i50, align 8
  store i64 %36, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !222, metadata !5797, metadata !DIExpression()) #9, !dbg !5800
  call void @llvm.dbg.declare(metadata !222, metadata !5801, metadata !DIExpression()) #9, !dbg !5800
  store i32 1, i32* %tmp.i, align 4, !dbg !5800
  %37 = load i32, i32* %tmp.i, align 4, !dbg !5800
  call void @llvm.dbg.declare(metadata !222, metadata !5802, metadata !DIExpression()) #9, !dbg !5807
  call void @llvm.dbg.declare(metadata !222, metadata !5808, metadata !DIExpression()) #9, !dbg !5807
  store i32 1, i32* %tmp8.i, align 4, !dbg !5807
  %38 = load i32, i32* %tmp8.i, align 4, !dbg !5807
  %39 = load i64, i64* %flags.addr.i, align 8, !dbg !5809
  call void @arch_local_irq_restore(i64 %39) #12, !dbg !5809
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5810, !srcloc !5812
  %40 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i50, align 8, !dbg !5813
  %41 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %40, i32 0, i32 0, !dbg !5813
  %rlock.i51 = bitcast %union.anon* %41 to %struct.raw_spinlock*, !dbg !5813
  %42 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5815
  call void @ir_raw_event_handle(%struct.rc_dev* %42) #10, !dbg !5816
  ret void, !dbg !5817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_event_register(%struct.rc_dev* %dev) #0 !dbg !5818 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %thread = alloca %struct.task_struct*, align 8
  %__k = alloca %struct.task_struct*, align 8
  %tmp = alloca %struct.task_struct*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5819, metadata !DIExpression()), !dbg !5820
  call void @llvm.dbg.declare(metadata %struct.task_struct** %thread, metadata !5821, metadata !DIExpression()), !dbg !5822
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k, metadata !5823, metadata !DIExpression()), !dbg !5825
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5825
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 11, !dbg !5825
  %1 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5825
  %2 = bitcast %struct.ir_raw_event_ctrl* %1 to i8*, !dbg !5825
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5825
  %minor = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %3, i32 0, i32 10, !dbg !5825
  %4 = load i32, i32* %minor, align 8, !dbg !5825
  %call = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @ir_raw_event_thread, i8* %2, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %4) #10, !dbg !5825
  store %struct.task_struct* %call, %struct.task_struct** %__k, align 8, !dbg !5825
  %5 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5826
  %6 = bitcast %struct.task_struct* %5 to i8*, !dbg !5826
  %call1 = call zeroext i1 @IS_ERR(i8* %6) #10, !dbg !5826
  br i1 %call1, label %if.end, label %if.then, !dbg !5825

if.then:                                          ; preds = %entry
  %7 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5826
  %call2 = call i32 @wake_up_process(%struct.task_struct* %7) #10, !dbg !5826
  br label %if.end, !dbg !5826

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5825
  store %struct.task_struct* %8, %struct.task_struct** %tmp, align 8, !dbg !5826
  %9 = load %struct.task_struct*, %struct.task_struct** %tmp, align 8, !dbg !5825
  store %struct.task_struct* %9, %struct.task_struct** %thread, align 8, !dbg !5828
  %10 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !5829
  %11 = bitcast %struct.task_struct* %10 to i8*, !dbg !5829
  %call3 = call zeroext i1 @IS_ERR(i8* %11) #10, !dbg !5831
  br i1 %call3, label %if.then4, label %if.end6, !dbg !5832

if.then4:                                         ; preds = %if.end
  %12 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !5833
  %13 = bitcast %struct.task_struct* %12 to i8*, !dbg !5833
  %call5 = call i64 @PTR_ERR(i8* %13) #10, !dbg !5834
  %conv = trunc i64 %call5 to i32, !dbg !5834
  store i32 %conv, i32* %retval, align 4, !dbg !5835
  br label %return, !dbg !5835

if.end6:                                          ; preds = %if.end
  %14 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !5836
  %15 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5837
  %raw7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %15, i32 0, i32 11, !dbg !5838
  %16 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw7, align 8, !dbg !5838
  %thread8 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %16, i32 0, i32 1, !dbg !5839
  store %struct.task_struct* %14, %struct.task_struct** %thread8, align 8, !dbg !5840
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5841
  %17 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5842
  %raw9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 11, !dbg !5843
  %18 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw9, align 8, !dbg !5843
  %list = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %18, i32 0, i32 0, !dbg !5844
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @ir_raw_client_list) #10, !dbg !5845
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5846
  store i32 0, i32* %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

return:                                           ; preds = %if.end6, %if.then4
  %19 = load i32, i32* %retval, align 4, !dbg !5848
  ret i32 %19, !dbg !5848
}

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_raw_event_thread(i8* %data) #0 !dbg !4225 {
entry:
  %pscr_ret__.i104 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i104, metadata !5849, metadata !DIExpression()), !dbg !5855
  %__vpp_verify.i105 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i105, metadata !5863, metadata !DIExpression()), !dbg !5865
  %pfo_val__.i106 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i106, metadata !5866, metadata !DIExpression()), !dbg !5868
  %tmp.i107 = alloca %struct.task_struct*, align 8
  %tmp1.i108 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i99 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i99, metadata !5849, metadata !DIExpression()), !dbg !5869
  %__vpp_verify.i100 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i100, metadata !5863, metadata !DIExpression()), !dbg !5872
  %pfo_val__.i101 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i101, metadata !5866, metadata !DIExpression()), !dbg !5873
  %tmp.i102 = alloca %struct.task_struct*, align 8
  %tmp1.i103 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5849, metadata !DIExpression()), !dbg !5874
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5863, metadata !DIExpression()), !dbg !5879
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5866, metadata !DIExpression()), !dbg !5880
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %data.addr = alloca i8*, align 8
  %ev = alloca %struct.ir_raw_event, align 4
  %handler = alloca %struct.ir_raw_handler*, align 8
  %raw = alloca %struct.ir_raw_event_ctrl*, align 8
  %dev = alloca %struct.rc_dev*, align 8
  %__tmp = alloca %struct.anon.65*, align 8
  %__buf = alloca %struct.ir_raw_event*, align 8
  %__n = alloca i64, align 8
  %__recsize = alloca i64, align 8
  %__kfifo = alloca %struct.__kfifo*, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp49 = alloca %struct.ir_raw_handler*, align 8
  %__mptr58 = alloca i8*, align 8
  %tmp62 = alloca %struct.ir_raw_handler*, align 8
  %__tmpq = alloca %struct.anon.65*, align 8
  %tmp79 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %ev, metadata !5883, metadata !DIExpression()), !dbg !5884
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %handler, metadata !5885, metadata !DIExpression()), !dbg !5886
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event_ctrl** %raw, metadata !5887, metadata !DIExpression()), !dbg !5888
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5889
  %1 = bitcast i8* %0 to %struct.ir_raw_event_ctrl*, !dbg !5889
  store %struct.ir_raw_event_ctrl* %1, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5888
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev, metadata !5890, metadata !DIExpression()), !dbg !5891
  %2 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5892
  %dev1 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %2, i32 0, i32 4, !dbg !5893
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev1, align 8, !dbg !5893
  store %struct.rc_dev* %3, %struct.rc_dev** %dev, align 8, !dbg !5891
  br label %while.body, !dbg !5894

while.body:                                       ; preds = %entry, %if.end97
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5895
  br label %while.cond2, !dbg !5896

while.cond2:                                      ; preds = %for.end, %while.body
  call void @llvm.dbg.declare(metadata %struct.anon.65** %__tmp, metadata !5897, metadata !DIExpression()), !dbg !5899
  %4 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5899
  %kfifo = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %4, i32 0, i32 2, !dbg !5899
  store %struct.anon.65* %kfifo, %struct.anon.65** %__tmp, align 8, !dbg !5899
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %__buf, metadata !5900, metadata !DIExpression()), !dbg !5899
  store %struct.ir_raw_event* %ev, %struct.ir_raw_event** %__buf, align 8, !dbg !5899
  call void @llvm.dbg.declare(metadata i64* %__n, metadata !5901, metadata !DIExpression()), !dbg !5899
  store i64 1, i64* %__n, align 8, !dbg !5899
  call void @llvm.dbg.declare(metadata i64* %__recsize, metadata !5902, metadata !DIExpression()), !dbg !5899
  store i64 0, i64* %__recsize, align 8, !dbg !5899
  call void @llvm.dbg.declare(metadata %struct.__kfifo** %__kfifo, metadata !5904, metadata !DIExpression()), !dbg !5899
  %5 = load %struct.anon.65*, %struct.anon.65** %__tmp, align 8, !dbg !5899
  %6 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %5, i32 0, i32 0, !dbg !5899
  %kfifo3 = bitcast %union.anon.66* %6 to %struct.__kfifo*, !dbg !5899
  store %struct.__kfifo* %kfifo3, %struct.__kfifo** %__kfifo, align 8, !dbg !5899
  %7 = load %struct.__kfifo*, %struct.__kfifo** %__kfifo, align 8, !dbg !5899
  %8 = load %struct.ir_raw_event*, %struct.ir_raw_event** %__buf, align 8, !dbg !5899
  %9 = bitcast %struct.ir_raw_event* %8 to i8*, !dbg !5899
  %10 = load i64, i64* %__n, align 8, !dbg !5899
  %conv = trunc i64 %10 to i32, !dbg !5899
  %call = call i32 @__kfifo_out(%struct.__kfifo* %7, i8* %9, i32 %conv) #10, !dbg !5899
  store i32 %call, i32* %tmp, align 4, !dbg !5899
  %11 = load i32, i32* %tmp, align 4, !dbg !5899
  %call4 = call i32 @__kfifo_uint_must_check_helper(i32 %11) #10, !dbg !5905
  %tobool = icmp ne i32 %call4, 0, !dbg !5896
  br i1 %tobool, label %while.body5, label %while.end, !dbg !5896

while.body5:                                      ; preds = %while.cond2
  %12 = bitcast %struct.ir_raw_event* %ev to i64*, !dbg !5906
  %13 = load i64, i64* %12, align 4, !dbg !5906
  %call6 = call zeroext i1 @is_timing_event(i64 %13) #10, !dbg !5906
  br i1 %call6, label %if.then, label %if.end46, !dbg !5909

if.then:                                          ; preds = %while.body5
  %14 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 0, !dbg !5910
  %duration = bitcast %union.anon.67* %14 to i32*, !dbg !5910
  %15 = load i32, i32* %duration, align 4, !dbg !5910
  %cmp = icmp eq i32 %15, 0, !dbg !5913
  br i1 %cmp, label %if.then8, label %if.end12, !dbg !5914

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !5915

do.body:                                          ; preds = %if.then8
  %16 = load i8, i8* @ir_raw_event_thread.__print_once, align 1, !dbg !5916
  %tobool9 = trunc i8 %16 to i1, !dbg !5916
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !5919

if.then10:                                        ; preds = %do.body
  store i8 1, i8* @ir_raw_event_thread.__print_once, align 1, !dbg !5920
  %17 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5920
  %dev11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 0, !dbg !5920
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !5920
  br label %if.end, !dbg !5920

if.end:                                           ; preds = %if.then10, %do.body
  br label %do.end, !dbg !5919

do.end:                                           ; preds = %if.end
  br label %if.end12, !dbg !5919

if.end12:                                         ; preds = %do.end, %if.then
  %18 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5922
  %prev_ev = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %18, i32 0, i32 7, !dbg !5924
  %19 = bitcast %struct.ir_raw_event* %prev_ev to i64*, !dbg !5925
  %20 = load i64, i64* %19, align 8, !dbg !5925
  %call13 = call zeroext i1 @is_timing_event(i64 %20) #10, !dbg !5925
  br i1 %call13, label %land.lhs.true, label %if.end25, !dbg !5926

land.lhs.true:                                    ; preds = %if.end12
  %21 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5927
  %prev_ev15 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %21, i32 0, i32 7, !dbg !5928
  %call16 = call zeroext i1 @is_transition(%struct.ir_raw_event* %ev, %struct.ir_raw_event* %prev_ev15) #10, !dbg !5929
  br i1 %call16, label %if.end25, label %if.then17, !dbg !5930

if.then17:                                        ; preds = %land.lhs.true
  br label %do.body18, !dbg !5931

do.body18:                                        ; preds = %if.then17
  %22 = load i8, i8* @ir_raw_event_thread.__print_once.5, align 1, !dbg !5932
  %tobool19 = trunc i8 %22 to i1, !dbg !5932
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !5935

if.then20:                                        ; preds = %do.body18
  store i8 1, i8* @ir_raw_event_thread.__print_once.5, align 1, !dbg !5936
  %23 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5936
  %dev21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 0, !dbg !5936
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !5936
  %bf.load = load i8, i8* %pulse, align 1, !dbg !5936
  %bf.clear = and i8 %bf.load, 1, !dbg !5936
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5936
  %tobool22 = icmp ne i32 %bf.cast, 0, !dbg !5936
  %24 = zext i1 %tobool22 to i64, !dbg !5936
  %cond = select i1 %tobool22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !5936
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %cond) #11, !dbg !5936
  br label %if.end23, !dbg !5936

if.end23:                                         ; preds = %if.then20, %do.body18
  br label %do.end24, !dbg !5935

do.end24:                                         ; preds = %if.end23
  br label %if.end25, !dbg !5935

if.end25:                                         ; preds = %do.end24, %land.lhs.true, %if.end12
  %25 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5938
  %prev_ev26 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %25, i32 0, i32 7, !dbg !5940
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %prev_ev26, i32 0, i32 2, !dbg !5941
  %bf.load27 = load i8, i8* %reset, align 1, !dbg !5941
  %bf.lshr = lshr i8 %bf.load27, 1, !dbg !5941
  %bf.clear28 = and i8 %bf.lshr, 1, !dbg !5941
  %bf.cast29 = zext i8 %bf.clear28 to i32, !dbg !5941
  %tobool30 = icmp ne i32 %bf.cast29, 0, !dbg !5938
  br i1 %tobool30, label %land.lhs.true31, label %if.end45, !dbg !5942

land.lhs.true31:                                  ; preds = %if.end25
  %pulse32 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !5943
  %bf.load33 = load i8, i8* %pulse32, align 1, !dbg !5943
  %bf.clear34 = and i8 %bf.load33, 1, !dbg !5943
  %bf.cast35 = zext i8 %bf.clear34 to i32, !dbg !5943
  %cmp36 = icmp eq i32 %bf.cast35, 0, !dbg !5944
  br i1 %cmp36, label %if.then38, label %if.end45, !dbg !5945

if.then38:                                        ; preds = %land.lhs.true31
  br label %do.body39, !dbg !5946

do.body39:                                        ; preds = %if.then38
  %26 = load i8, i8* @ir_raw_event_thread.__print_once.9, align 1, !dbg !5947
  %tobool40 = trunc i8 %26 to i1, !dbg !5947
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !5950

if.then41:                                        ; preds = %do.body39
  store i8 1, i8* @ir_raw_event_thread.__print_once.9, align 1, !dbg !5951
  %27 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5951
  %dev42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 0, !dbg !5951
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !5951
  br label %if.end43, !dbg !5951

if.end43:                                         ; preds = %if.then41, %do.body39
  br label %do.end44, !dbg !5950

do.end44:                                         ; preds = %if.end43
  br label %if.end45, !dbg !5950

if.end45:                                         ; preds = %do.end44, %land.lhs.true31, %if.end25
  br label %if.end46, !dbg !5953

if.end46:                                         ; preds = %if.end45, %while.body5
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5954, metadata !DIExpression()), !dbg !5957
  %28 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_handler_list, i32 0, i32 0), align 8, !dbg !5957
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !5957
  store i8* %29, i8** %__mptr, align 8, !dbg !5957
  br label %do.body47, !dbg !5957

do.body47:                                        ; preds = %if.end46
  br label %do.end48, !dbg !5958

do.end48:                                         ; preds = %do.body47
  %30 = load i8*, i8** %__mptr, align 8, !dbg !5957
  %add.ptr = getelementptr i8, i8* %30, i64 0, !dbg !5957
  %31 = bitcast i8* %add.ptr to %struct.ir_raw_handler*, !dbg !5957
  store %struct.ir_raw_handler* %31, %struct.ir_raw_handler** %tmp49, align 8, !dbg !5958
  %32 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp49, align 8, !dbg !5957
  store %struct.ir_raw_handler* %32, %struct.ir_raw_handler** %handler, align 8, !dbg !5960
  br label %for.cond, !dbg !5960

for.cond:                                         ; preds = %do.end61, %do.end48
  %33 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5961
  %list = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %33, i32 0, i32 0, !dbg !5961
  %cmp50 = icmp eq %struct.list_head* %list, @ir_raw_handler_list, !dbg !5961
  %lnot = xor i1 %cmp50, true, !dbg !5961
  br i1 %lnot, label %for.body, label %for.end, !dbg !5960

for.body:                                         ; preds = %for.cond
  %34 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5963
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 17, !dbg !5965
  %35 = load i64, i64* %enabled_protocols, align 8, !dbg !5965
  %36 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5966
  %protocols = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %36, i32 0, i32 1, !dbg !5967
  %37 = load i64, i64* %protocols, align 8, !dbg !5967
  %and = and i64 %35, %37, !dbg !5968
  %tobool52 = icmp ne i64 %and, 0, !dbg !5968
  br i1 %tobool52, label %if.then55, label %lor.lhs.false, !dbg !5969

lor.lhs.false:                                    ; preds = %for.body
  %38 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5970
  %protocols53 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %38, i32 0, i32 1, !dbg !5971
  %39 = load i64, i64* %protocols53, align 8, !dbg !5971
  %tobool54 = icmp ne i64 %39, 0, !dbg !5970
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !5972

if.then55:                                        ; preds = %lor.lhs.false, %for.body
  %40 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5973
  %decode = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %40, i32 0, i32 2, !dbg !5974
  %41 = load i32 (%struct.rc_dev*, i64)*, i32 (%struct.rc_dev*, i64)** %decode, align 8, !dbg !5974
  %42 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5975
  %43 = bitcast %struct.ir_raw_event* %ev to i64*, !dbg !5973
  %44 = load i64, i64* %43, align 4, !dbg !5973
  %call56 = call i32 %41(%struct.rc_dev* %42, i64 %44) #10, !dbg !5973
  br label %if.end57, !dbg !5973

if.end57:                                         ; preds = %if.then55, %lor.lhs.false
  br label %for.inc, !dbg !5971

for.inc:                                          ; preds = %if.end57
  call void @llvm.dbg.declare(metadata i8** %__mptr58, metadata !5976, metadata !DIExpression()), !dbg !5978
  %45 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !5978
  %list59 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %45, i32 0, i32 0, !dbg !5978
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list59, i32 0, i32 0, !dbg !5978
  %46 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5978
  %47 = bitcast %struct.list_head* %46 to i8*, !dbg !5978
  store i8* %47, i8** %__mptr58, align 8, !dbg !5978
  br label %do.body60, !dbg !5978

do.body60:                                        ; preds = %for.inc
  br label %do.end61, !dbg !5979

do.end61:                                         ; preds = %do.body60
  %48 = load i8*, i8** %__mptr58, align 8, !dbg !5978
  %add.ptr63 = getelementptr i8, i8* %48, i64 0, !dbg !5978
  %49 = bitcast i8* %add.ptr63 to %struct.ir_raw_handler*, !dbg !5978
  store %struct.ir_raw_handler* %49, %struct.ir_raw_handler** %tmp62, align 8, !dbg !5979
  %50 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp62, align 8, !dbg !5978
  store %struct.ir_raw_handler* %50, %struct.ir_raw_handler** %handler, align 8, !dbg !5961
  br label %for.cond, !dbg !5961, !llvm.loop !5981

for.end:                                          ; preds = %for.cond
  %51 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !5983
  %52 = bitcast %struct.ir_raw_event* %ev to i64*, !dbg !5984
  %53 = load i64, i64* %52, align 4, !dbg !5984
  call void @lirc_raw_event(%struct.rc_dev* %51, i64 %53) #10, !dbg !5984
  %54 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !5985
  %prev_ev64 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %54, i32 0, i32 7, !dbg !5986
  %55 = bitcast %struct.ir_raw_event* %prev_ev64 to i8*, !dbg !5987
  %56 = bitcast %struct.ir_raw_event* %ev to i8*, !dbg !5987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 4 %56, i64 8, i1 false), !dbg !5987
  br label %while.cond2, !dbg !5896, !llvm.loop !5988

while.end:                                        ; preds = %while.cond2
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !5990
  br label %do.body65, !dbg !5991

do.body65:                                        ; preds = %while.end
  br label %do.body66, !dbg !5992

do.body66:                                        ; preds = %do.body65
  br label %do.body67, !dbg !5993

do.body67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !5994

do.end68:                                         ; preds = %do.body67
  br label %do.body69, !dbg !5993

do.body69:                                        ; preds = %do.end68
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5879
  %57 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5879
  %58 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !5880, !srcloc !5996
  store i64 %58, i64* %pfo_val__.i, align 8, !dbg !5880
  %59 = load i64, i64* %pfo_val__.i, align 8, !dbg !5880
  %60 = inttoptr i64 %59 to %struct.task_struct*, !dbg !5880
  store %struct.task_struct* %60, %struct.task_struct** %tmp.i, align 8, !dbg !5880
  %61 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5880
  store %struct.task_struct* %61, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5874
  %62 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5874
  store %struct.task_struct* %62, %struct.task_struct** %tmp1.i, align 8, !dbg !5874
  %63 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5874
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 1, !dbg !5997
  store volatile i64 1, i64* %state, align 16, !dbg !5997
  br label %do.end71, !dbg !5997

do.end71:                                         ; preds = %do.body69
  br label %do.end72, !dbg !5993

do.end72:                                         ; preds = %do.end71
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5992, !srcloc !5998
  br label %do.end73, !dbg !5992

do.end73:                                         ; preds = %do.end72
  %call74 = call zeroext i1 @kthread_should_stop() #10, !dbg !5999
  br i1 %call74, label %if.then75, label %if.else, !dbg !6000

if.then75:                                        ; preds = %do.end73
  store i8* null, i8** %__vpp_verify.i100, align 8, !dbg !5872
  %64 = load i8*, i8** %__vpp_verify.i100, align 8, !dbg !5872
  %65 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !5873, !srcloc !5996
  store i64 %65, i64* %pfo_val__.i101, align 8, !dbg !5873
  %66 = load i64, i64* %pfo_val__.i101, align 8, !dbg !5873
  %67 = inttoptr i64 %66 to %struct.task_struct*, !dbg !5873
  store %struct.task_struct* %67, %struct.task_struct** %tmp.i102, align 8, !dbg !5873
  %68 = load %struct.task_struct*, %struct.task_struct** %tmp.i102, align 8, !dbg !5873
  store %struct.task_struct* %68, %struct.task_struct** %pscr_ret__.i99, align 8, !dbg !5869
  %69 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i99, align 8, !dbg !5869
  store %struct.task_struct* %69, %struct.task_struct** %tmp1.i103, align 8, !dbg !5869
  %70 = load %struct.task_struct*, %struct.task_struct** %tmp1.i103, align 8, !dbg !5869
  %state77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 1, !dbg !6001
  store volatile i64 0, i64* %state77, align 16, !dbg !6001
  br label %while.end98, !dbg !6002

if.else:                                          ; preds = %do.end73
  call void @llvm.dbg.declare(metadata %struct.anon.65** %__tmpq, metadata !6003, metadata !DIExpression()), !dbg !6005
  %71 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6005
  %kfifo78 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %71, i32 0, i32 2, !dbg !6005
  store %struct.anon.65* %kfifo78, %struct.anon.65** %__tmpq, align 8, !dbg !6005
  %72 = load %struct.anon.65*, %struct.anon.65** %__tmpq, align 8, !dbg !6005
  %73 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %72, i32 0, i32 0, !dbg !6005
  %kfifo80 = bitcast %union.anon.66* %73 to %struct.__kfifo*, !dbg !6005
  %in = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo80, i32 0, i32 0, !dbg !6005
  %74 = load i32, i32* %in, align 8, !dbg !6005
  %75 = load %struct.anon.65*, %struct.anon.65** %__tmpq, align 8, !dbg !6005
  %76 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %75, i32 0, i32 0, !dbg !6005
  %kfifo81 = bitcast %union.anon.66* %76 to %struct.__kfifo*, !dbg !6005
  %out = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %kfifo81, i32 0, i32 1, !dbg !6005
  %77 = load i32, i32* %out, align 4, !dbg !6005
  %cmp82 = icmp eq i32 %74, %77, !dbg !6005
  %conv83 = zext i1 %cmp82 to i32, !dbg !6005
  store i32 %conv83, i32* %tmp79, align 4, !dbg !6005
  %78 = load i32, i32* %tmp79, align 4, !dbg !6005
  %tobool84 = icmp ne i32 %78, 0, !dbg !6006
  br i1 %tobool84, label %if.end96, label %if.then85, !dbg !6007

if.then85:                                        ; preds = %if.else
  br label %do.body86, !dbg !6008

do.body86:                                        ; preds = %if.then85
  br label %do.body87, !dbg !6009

do.body87:                                        ; preds = %do.body86
  br label %do.body88, !dbg !6010

do.body88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !6011

do.end89:                                         ; preds = %do.body88
  br label %do.body90, !dbg !6010

do.body90:                                        ; preds = %do.end89
  store i8* null, i8** %__vpp_verify.i105, align 8, !dbg !5865
  %79 = load i8*, i8** %__vpp_verify.i105, align 8, !dbg !5865
  %80 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !5868, !srcloc !5996
  store i64 %80, i64* %pfo_val__.i106, align 8, !dbg !5868
  %81 = load i64, i64* %pfo_val__.i106, align 8, !dbg !5868
  %82 = inttoptr i64 %81 to %struct.task_struct*, !dbg !5868
  store %struct.task_struct* %82, %struct.task_struct** %tmp.i107, align 8, !dbg !5868
  %83 = load %struct.task_struct*, %struct.task_struct** %tmp.i107, align 8, !dbg !5868
  store %struct.task_struct* %83, %struct.task_struct** %pscr_ret__.i104, align 8, !dbg !5855
  %84 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i104, align 8, !dbg !5855
  store %struct.task_struct* %84, %struct.task_struct** %tmp1.i108, align 8, !dbg !5855
  %85 = load %struct.task_struct*, %struct.task_struct** %tmp1.i108, align 8, !dbg !5855
  %state92 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %85, i32 0, i32 1, !dbg !6013
  store volatile i64 0, i64* %state92, align 16, !dbg !6013
  br label %do.end93, !dbg !6013

do.end93:                                         ; preds = %do.body90
  br label %do.end94, !dbg !6010

do.end94:                                         ; preds = %do.end93
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6009, !srcloc !6014
  br label %do.end95, !dbg !6009

do.end95:                                         ; preds = %do.end94
  br label %if.end96, !dbg !6009

if.end96:                                         ; preds = %do.end95, %if.else
  br label %if.end97

if.end97:                                         ; preds = %if.end96
  call void @schedule() #10, !dbg !6015
  br label %while.body, !dbg !5894, !llvm.loop !6016

while.end98:                                      ; preds = %if.then75
  ret i32 0, !dbg !6018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !6019 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6023, metadata !DIExpression()), !dbg !6024
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6025
  %1 = ptrtoint i8* %0 to i64, !dbg !6025
  %2 = inttoptr i64 %1 to i8*, !dbg !6025
  %3 = ptrtoint i8* %2 to i64, !dbg !6025
  %cmp = icmp uge i64 %3, -4095, !dbg !6025
  %lnot = xor i1 %cmp, true, !dbg !6025
  %lnot1 = xor i1 %lnot, true, !dbg !6025
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6025
  %conv = sext i32 %lnot.ext to i64, !dbg !6025
  %tobool = icmp ne i64 %conv, 0, !dbg !6025
  ret i1 %tobool, !dbg !6026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6027 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6032
  %1 = ptrtoint i8* %0 to i64, !dbg !6033
  ret i64 %1, !dbg !6034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6035 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6043
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6044
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6045
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6045
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6046
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #10, !dbg !6047
  ret void, !dbg !6048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ir_raw_event_free(%struct.rc_dev* %dev) #0 !dbg !6049 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !6050, metadata !DIExpression()), !dbg !6051
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6052
  %tobool = icmp ne %struct.rc_dev* %0, null, !dbg !6052
  br i1 %tobool, label %if.end, label %if.then, !dbg !6054

if.then:                                          ; preds = %entry
  br label %return, !dbg !6055

if.end:                                           ; preds = %entry
  %1 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6056
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %1, i32 0, i32 11, !dbg !6057
  %2 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6057
  %3 = bitcast %struct.ir_raw_event_ctrl* %2 to i8*, !dbg !6056
  call void @kfree(i8* %3) #10, !dbg !6058
  %4 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6059
  %raw1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 11, !dbg !6060
  store %struct.ir_raw_event_ctrl* null, %struct.ir_raw_event_ctrl** %raw1, align 8, !dbg !6061
  br label %return, !dbg !6062

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6062
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ir_raw_event_unregister(%struct.rc_dev* %dev) #0 !dbg !6063 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %handler = alloca %struct.ir_raw_handler*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ir_raw_handler*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp17 = alloca %struct.ir_raw_handler*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %handler, metadata !6066, metadata !DIExpression()), !dbg !6067
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6068
  %tobool = icmp ne %struct.rc_dev* %0, null, !dbg !6068
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6070

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6071
  %raw = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %1, i32 0, i32 11, !dbg !6072
  %2 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6072
  %tobool1 = icmp ne %struct.ir_raw_event_ctrl* %2, null, !dbg !6071
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6073

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !6074

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6075
  %raw2 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %3, i32 0, i32 11, !dbg !6076
  %4 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw2, align 8, !dbg !6076
  %thread = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %4, i32 0, i32 1, !dbg !6077
  %5 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !6077
  %call = call i32 @kthread_stop(%struct.task_struct* %5) #10, !dbg !6078
  %6 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6079
  %raw3 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 11, !dbg !6079
  %7 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw3, align 8, !dbg !6079
  %edge_handle = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %7, i32 0, i32 6, !dbg !6079
  %call4 = call i32 @del_timer(%struct.timer_list* %edge_handle) #10, !dbg !6079
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !6080
  %8 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6081
  %raw5 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 11, !dbg !6082
  %9 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw5, align 8, !dbg !6082
  %list = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %9, i32 0, i32 0, !dbg !6083
  call void @list_del(%struct.list_head* %list) #10, !dbg !6084
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6085, metadata !DIExpression()), !dbg !6088
  %10 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_handler_list, i32 0, i32 0), align 8, !dbg !6088
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !6088
  store i8* %11, i8** %__mptr, align 8, !dbg !6088
  br label %do.body, !dbg !6088

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6089

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !6088
  %add.ptr = getelementptr i8, i8* %12, i64 0, !dbg !6088
  %13 = bitcast i8* %add.ptr to %struct.ir_raw_handler*, !dbg !6088
  store %struct.ir_raw_handler* %13, %struct.ir_raw_handler** %tmp, align 8, !dbg !6089
  %14 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp, align 8, !dbg !6088
  store %struct.ir_raw_handler* %14, %struct.ir_raw_handler** %handler, align 8, !dbg !6091
  br label %for.cond, !dbg !6091

for.cond:                                         ; preds = %do.end16, %do.end
  %15 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !6092
  %list6 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %15, i32 0, i32 0, !dbg !6092
  %cmp = icmp eq %struct.list_head* %list6, @ir_raw_handler_list, !dbg !6092
  %lnot = xor i1 %cmp, true, !dbg !6092
  br i1 %lnot, label %for.body, label %for.end, !dbg !6091

for.body:                                         ; preds = %for.cond
  %16 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !6094
  %raw_unregister = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %16, i32 0, i32 7, !dbg !6096
  %17 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_unregister, align 8, !dbg !6096
  %tobool7 = icmp ne i32 (%struct.rc_dev*)* %17, null, !dbg !6094
  br i1 %tobool7, label %land.lhs.true, label %if.end12, !dbg !6097

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !6098
  %protocols = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %18, i32 0, i32 1, !dbg !6099
  %19 = load i64, i64* %protocols, align 8, !dbg !6099
  %20 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6100
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 17, !dbg !6101
  %21 = load i64, i64* %enabled_protocols, align 8, !dbg !6101
  %and = and i64 %19, %21, !dbg !6102
  %tobool8 = icmp ne i64 %and, 0, !dbg !6102
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !6103

if.then9:                                         ; preds = %land.lhs.true
  %22 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !6104
  %raw_unregister10 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %22, i32 0, i32 7, !dbg !6105
  %23 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_unregister10, align 8, !dbg !6105
  %24 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6106
  %call11 = call i32 %23(%struct.rc_dev* %24) #10, !dbg !6104
  br label %if.end12, !dbg !6104

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %for.body
  br label %for.inc, !dbg !6107

for.inc:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !6108, metadata !DIExpression()), !dbg !6110
  %25 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %handler, align 8, !dbg !6110
  %list14 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %25, i32 0, i32 0, !dbg !6110
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list14, i32 0, i32 0, !dbg !6110
  %26 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6110
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !6110
  store i8* %27, i8** %__mptr13, align 8, !dbg !6110
  br label %do.body15, !dbg !6110

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !6111

do.end16:                                         ; preds = %do.body15
  %28 = load i8*, i8** %__mptr13, align 8, !dbg !6110
  %add.ptr18 = getelementptr i8, i8* %28, i64 0, !dbg !6110
  %29 = bitcast i8* %add.ptr18 to %struct.ir_raw_handler*, !dbg !6110
  store %struct.ir_raw_handler* %29, %struct.ir_raw_handler** %tmp17, align 8, !dbg !6111
  %30 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %tmp17, align 8, !dbg !6110
  store %struct.ir_raw_handler* %30, %struct.ir_raw_handler** %handler, align 8, !dbg !6092
  br label %for.cond, !dbg !6092, !llvm.loop !6113

for.end:                                          ; preds = %for.cond
  %31 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6115
  call void @lirc_bpf_free(%struct.rc_dev* %31) #10, !dbg !6116
  %32 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6117
  call void @ir_raw_event_free(%struct.rc_dev* %32) #10, !dbg !6118
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !6119
  br label %return, !dbg !6120

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !6120
}

; Function Attrs: noredzone
declare dso_local i32 @kthread_stop(%struct.task_struct*) #3

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !6121 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6126
  call void @__list_del_entry(%struct.list_head* %0) #10, !dbg !6127
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6128
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6129
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6130
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6131
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6132
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6133
  ret void, !dbg !6134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lirc_bpf_free(%struct.rc_dev* %dev) #0 !dbg !6135 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !6136, metadata !DIExpression()), !dbg !6137
  ret void, !dbg !6138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ir_raw_handler_register(%struct.ir_raw_handler* %ir_raw_handler) #0 !dbg !6139 {
entry:
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6142, metadata !DIExpression()), !dbg !6144
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6151, metadata !DIExpression()), !dbg !6152
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !6153, metadata !DIExpression()), !dbg !6154
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !6155, metadata !DIExpression()), !dbg !6156
  %ir_raw_handler.addr = alloca %struct.ir_raw_handler*, align 8
  store %struct.ir_raw_handler* %ir_raw_handler, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %ir_raw_handler.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !6159
  %0 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8, !dbg !6160
  %list = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %0, i32 0, i32 0, !dbg !6161
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @ir_raw_handler_list) #10, !dbg !6162
  %1 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8, !dbg !6163
  %protocols = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %1, i32 0, i32 1, !dbg !6164
  %2 = load i64, i64* %protocols, align 8, !dbg !6164
  store i64 %2, i64* %i.addr.i, align 8
  store %struct.atomic64_t* @available_protocols, %struct.atomic64_t** %v.addr.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !6165
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !6165
  store i8* %4, i8** %v.addr.i.i, align 8
  store i64 8, i64* %size.addr.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6166
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6167
  %conv.i.i = trunc i64 %6 to i32, !dbg !6167
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i) #12, !dbg !6168
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6169
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6169
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #12, !dbg !6169
  %9 = load i64, i64* %i.addr.i, align 8, !dbg !6170
  %10 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !6171
  call void @arch_atomic64_or(i64 %9, %struct.atomic64_t* %10) #12, !dbg !6172
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !6173
  ret i32 0, !dbg !6174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ir_raw_handler_unregister(%struct.ir_raw_handler* %ir_raw_handler) #0 !dbg !6175 {
entry:
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !6178, metadata !DIExpression()), !dbg !6181
  %v.addr.i1.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i, metadata !6185, metadata !DIExpression()), !dbg !6186
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6142, metadata !DIExpression()), !dbg !6187
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6151, metadata !DIExpression()), !dbg !6189
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !6190, metadata !DIExpression()), !dbg !6191
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !6192, metadata !DIExpression()), !dbg !6193
  %ir_raw_handler.addr = alloca %struct.ir_raw_handler*, align 8
  %raw = alloca %struct.ir_raw_event_ctrl*, align 8
  %protocols = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ir_raw_event_ctrl*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.ir_raw_event_ctrl*, align 8
  store %struct.ir_raw_handler* %ir_raw_handler, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_handler** %ir_raw_handler.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event_ctrl** %raw, metadata !6196, metadata !DIExpression()), !dbg !6197
  call void @llvm.dbg.declare(metadata i64* %protocols, metadata !6198, metadata !DIExpression()), !dbg !6199
  %0 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8, !dbg !6200
  %protocols1 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %0, i32 0, i32 1, !dbg !6201
  %1 = load i64, i64* %protocols1, align 8, !dbg !6201
  store i64 %1, i64* %protocols, align 8, !dbg !6199
  call void @mutex_lock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !6202
  %2 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8, !dbg !6203
  %list = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %2, i32 0, i32 0, !dbg !6204
  call void @list_del(%struct.list_head* %list) #10, !dbg !6205
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6206, metadata !DIExpression()), !dbg !6209
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ir_raw_client_list, i32 0, i32 0), align 8, !dbg !6209
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !6209
  store i8* %4, i8** %__mptr, align 8, !dbg !6209
  br label %do.body, !dbg !6209

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6210

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6209
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !6209
  %6 = bitcast i8* %add.ptr to %struct.ir_raw_event_ctrl*, !dbg !6209
  store %struct.ir_raw_event_ctrl* %6, %struct.ir_raw_event_ctrl** %tmp, align 8, !dbg !6210
  %7 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %tmp, align 8, !dbg !6209
  store %struct.ir_raw_event_ctrl* %7, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6212
  br label %for.cond, !dbg !6212

for.cond:                                         ; preds = %do.end10, %do.end
  %8 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6213
  %list2 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %8, i32 0, i32 0, !dbg !6213
  %cmp = icmp eq %struct.list_head* %list2, @ir_raw_client_list, !dbg !6213
  %lnot = xor i1 %cmp, true, !dbg !6213
  br i1 %lnot, label %for.body, label %for.end, !dbg !6212

for.body:                                         ; preds = %for.cond
  %9 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8, !dbg !6215
  %raw_unregister = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %9, i32 0, i32 7, !dbg !6218
  %10 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_unregister, align 8, !dbg !6218
  %tobool = icmp ne i32 (%struct.rc_dev*)* %10, null, !dbg !6215
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6219

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6220
  %dev = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %11, i32 0, i32 4, !dbg !6221
  %12 = load %struct.rc_dev*, %struct.rc_dev** %dev, align 8, !dbg !6221
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 17, !dbg !6222
  %13 = load i64, i64* %enabled_protocols, align 8, !dbg !6222
  %14 = load i64, i64* %protocols, align 8, !dbg !6223
  %and = and i64 %13, %14, !dbg !6224
  %tobool3 = icmp ne i64 %and, 0, !dbg !6224
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6225

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.ir_raw_handler*, %struct.ir_raw_handler** %ir_raw_handler.addr, align 8, !dbg !6226
  %raw_unregister4 = getelementptr inbounds %struct.ir_raw_handler, %struct.ir_raw_handler* %15, i32 0, i32 7, !dbg !6227
  %16 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %raw_unregister4, align 8, !dbg !6227
  %17 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6228
  %dev5 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %17, i32 0, i32 4, !dbg !6229
  %18 = load %struct.rc_dev*, %struct.rc_dev** %dev5, align 8, !dbg !6229
  %call = call i32 %16(%struct.rc_dev* %18) #10, !dbg !6226
  br label %if.end, !dbg !6226

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %19 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6230
  %dev6 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %19, i32 0, i32 4, !dbg !6231
  %20 = load %struct.rc_dev*, %struct.rc_dev** %dev6, align 8, !dbg !6231
  %21 = load i64, i64* %protocols, align 8, !dbg !6232
  call void @ir_raw_disable_protocols(%struct.rc_dev* %20, i64 %21) #10, !dbg !6233
  br label %for.inc, !dbg !6234

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !6235, metadata !DIExpression()), !dbg !6237
  %22 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6237
  %list8 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %22, i32 0, i32 0, !dbg !6237
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list8, i32 0, i32 0, !dbg !6237
  %23 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6237
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !6237
  store i8* %24, i8** %__mptr7, align 8, !dbg !6237
  br label %do.body9, !dbg !6237

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !6238

do.end10:                                         ; preds = %do.body9
  %25 = load i8*, i8** %__mptr7, align 8, !dbg !6237
  %add.ptr12 = getelementptr i8, i8* %25, i64 0, !dbg !6237
  %26 = bitcast i8* %add.ptr12 to %struct.ir_raw_event_ctrl*, !dbg !6237
  store %struct.ir_raw_event_ctrl* %26, %struct.ir_raw_event_ctrl** %tmp11, align 8, !dbg !6238
  %27 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %tmp11, align 8, !dbg !6237
  store %struct.ir_raw_event_ctrl* %27, %struct.ir_raw_event_ctrl** %raw, align 8, !dbg !6213
  br label %for.cond, !dbg !6213, !llvm.loop !6240

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %protocols, align 8, !dbg !6242
  store i64 %28, i64* %i.addr.i, align 8
  store %struct.atomic64_t* @available_protocols, %struct.atomic64_t** %v.addr.i, align 8
  %29 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !6243
  %30 = bitcast %struct.atomic64_t* %29 to i8*, !dbg !6243
  store i8* %30, i8** %v.addr.i.i, align 8
  store i64 8, i64* %size.addr.i.i, align 8
  %31 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6244
  %32 = load i64, i64* %size.addr.i.i, align 8, !dbg !6245
  %conv.i.i = trunc i64 %32 to i32, !dbg !6245
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %31, i32 %conv.i.i) #12, !dbg !6246
  %33 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6247
  %34 = load i64, i64* %size.addr.i.i, align 8, !dbg !6247
  call void @kcsan_check_access(i8* %33, i64 %34, i32 7) #12, !dbg !6247
  %35 = load i64, i64* %i.addr.i, align 8, !dbg !6248
  %36 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !6249
  store i64 %35, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %36, %struct.atomic64_t** %v.addr.i1.i, align 8
  %37 = load i64, i64* %i.addr.i.i, align 8, !dbg !6250
  %neg.i.i = xor i64 %37, -1, !dbg !6251
  %38 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i, align 8, !dbg !6252
  call void @arch_atomic64_and(i64 %neg.i.i, %struct.atomic64_t* %38) #12, !dbg !6253
  call void @mutex_unlock(%struct.mutex* @ir_raw_handler_lock) #10, !dbg !6254
  ret void, !dbg !6255
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ir_raw_disable_protocols(%struct.rc_dev* %dev, i64 %protocols) #0 !dbg !6256 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %protocols.addr = alloca i64, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !6259, metadata !DIExpression()), !dbg !6260
  store i64 %protocols, i64* %protocols.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %protocols.addr, metadata !6261, metadata !DIExpression()), !dbg !6262
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6263
  %lock = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 9, !dbg !6264
  call void @mutex_lock(%struct.mutex* %lock) #10, !dbg !6265
  %1 = load i64, i64* %protocols.addr, align 8, !dbg !6266
  %neg = xor i64 %1, -1, !dbg !6267
  %2 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6268
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %2, i32 0, i32 17, !dbg !6269
  %3 = load i64, i64* %enabled_protocols, align 8, !dbg !6270
  %and = and i64 %3, %neg, !dbg !6270
  store i64 %and, i64* %enabled_protocols, align 8, !dbg !6270
  %4 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6271
  %lock1 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 9, !dbg !6272
  call void @mutex_unlock(%struct.mutex* %lock1) #10, !dbg !6273
  ret void, !dbg !6274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !6275 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6282, metadata !DIExpression()), !dbg !6284
  %0 = load i64, i64* %div.addr, align 8, !dbg !6284
  %cmp = icmp slt i64 %0, 0, !dbg !6284
  %lnot = xor i1 %cmp, true, !dbg !6284
  %lnot1 = xor i1 %lnot, true, !dbg !6284
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6284
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6284
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !6285
  %tobool = icmp ne i32 %1, 0, !dbg !6285
  %lnot2 = xor i1 %tobool, true, !dbg !6285
  %lnot4 = xor i1 %lnot2, true, !dbg !6285
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6285
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6285
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6285
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6284

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6285

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !6287

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6289

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6287

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 154, i32 2305, i64 12) #9, !dbg !6291, !srcloc !6293
  br label %do.end9, !dbg !6291

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 93) #9, !dbg !6294, !srcloc !6296
  br label %do.body10, !dbg !6287

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6297

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6287

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6287

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6284
  %tobool13 = icmp ne i32 %2, 0, !dbg !6284
  %lnot14 = xor i1 %tobool13, true, !dbg !6284
  %lnot16 = xor i1 %lnot14, true, !dbg !6284
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6284
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6284
  store i64 %conv18, i64* %tmp, align 8, !dbg !6285
  %3 = load i64, i64* %tmp, align 8, !dbg !6284
  %4 = load i64, i64* %kt.addr, align 8, !dbg !6299
  %5 = load i64, i64* %div.addr, align 8, !dbg !6300
  %div19 = sdiv i64 %4, %5, !dbg !6301
  ret i64 %div19, !dbg !6302
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hlist_unhashed_lockless(%struct.hlist_node* %h) #0 !dbg !6303 {
entry:
  %h.addr = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.hlist_node**, align 8
  store %struct.hlist_node* %h, %struct.hlist_node** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %h.addr, metadata !6308, metadata !DIExpression()), !dbg !6309
  br label %do.body, !dbg !6310

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6312

do.end:                                           ; preds = %do.body
  %0 = load %struct.hlist_node*, %struct.hlist_node** %h.addr, align 8, !dbg !6310
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i32 0, i32 1, !dbg !6310
  %1 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8, !dbg !6310
  store %struct.hlist_node** %1, %struct.hlist_node*** %tmp, align 8, !dbg !6312
  %2 = load %struct.hlist_node**, %struct.hlist_node*** %tmp, align 8, !dbg !6310
  %tobool = icmp ne %struct.hlist_node** %2, null, !dbg !6314
  %lnot = xor i1 %tobool, true, !dbg !6314
  %lnot.ext = zext i1 %lnot to i32, !dbg !6314
  ret i32 %lnot.ext, !dbg !6315
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6316 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  %0 = load i32, i32* %m.addr, align 4, !dbg !6319
  %conv = zext i32 %0 to i64, !dbg !6319
  %add = add i64 %conv, 4, !dbg !6320
  %sub = sub i64 %add, 1, !dbg !6321
  %div = sdiv i64 %sub, 4, !dbg !6322
  ret i64 %div, !dbg !6323
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_atomic64_read(%struct.atomic64_t* %v) #0 !dbg !6324 {
entry:
  %v.addr = alloca %struct.atomic64_t*, align 8
  store %struct.atomic64_t* %v, %struct.atomic64_t** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr, align 8, !dbg !6328
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %0, i32 0, i32 0, !dbg !6328
  %1 = load volatile i64, i64* %counter, align 8, !dbg !6328
  ret i64 %1, !dbg !6329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6330 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  ret i1 true, !dbg !6338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6339 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6343, metadata !DIExpression()), !dbg !6344
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6347, metadata !DIExpression()), !dbg !6348
  ret void, !dbg !6349
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6350 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6354, metadata !DIExpression()), !dbg !6359
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6361, metadata !DIExpression()), !dbg !6362
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6363, metadata !DIExpression()), !dbg !6364
  %0 = load i64, i64* %size.addr, align 8, !dbg !6365
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6367
  br i1 %1, label %if.then, label %if.end447, !dbg !6368

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6369
  %tobool = icmp ne i64 %2, 0, !dbg !6369
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6372

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6373
  br label %return, !dbg !6373

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6374
  %cmp = icmp ult i64 %3, 4096, !dbg !6376
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6377

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6378
  br label %return, !dbg !6378

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub = sub i64 %4, 1, !dbg !6379
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6379
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6379

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub4 = sub i64 %6, 1, !dbg !6379
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6379
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6379

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub6 = sub i64 %8, 1, !dbg !6379
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6379
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6379

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6379

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub9 = sub i64 %9, 1, !dbg !6379
  %and = and i64 %sub9, -9223372036854775808, !dbg !6379
  %tobool10 = icmp ne i64 %and, 0, !dbg !6379
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6379

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6379

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub13 = sub i64 %10, 1, !dbg !6379
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6379
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6379
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6379

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6379

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub18 = sub i64 %11, 1, !dbg !6379
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6379
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6379
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6379

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6379

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub23 = sub i64 %12, 1, !dbg !6379
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6379
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6379
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6379

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6379

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub28 = sub i64 %13, 1, !dbg !6379
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6379
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6379
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6379

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6379

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub33 = sub i64 %14, 1, !dbg !6379
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6379
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6379
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6379

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6379

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub38 = sub i64 %15, 1, !dbg !6379
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6379
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6379
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6379

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6379

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub43 = sub i64 %16, 1, !dbg !6379
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6379
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6379
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6379

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6379

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub48 = sub i64 %17, 1, !dbg !6379
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6379
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6379
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6379

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6379

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub53 = sub i64 %18, 1, !dbg !6379
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6379
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6379
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6379

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6379

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub58 = sub i64 %19, 1, !dbg !6379
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6379
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6379
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6379

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6379

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub63 = sub i64 %20, 1, !dbg !6379
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6379
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6379
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6379

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6379

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub68 = sub i64 %21, 1, !dbg !6379
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6379
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6379
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6379

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6379

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub73 = sub i64 %22, 1, !dbg !6379
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6379
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6379
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6379

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6379

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub78 = sub i64 %23, 1, !dbg !6379
  %and79 = and i64 %sub78, 562949953421312, !dbg !6379
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6379
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6379

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6379

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub83 = sub i64 %24, 1, !dbg !6379
  %and84 = and i64 %sub83, 281474976710656, !dbg !6379
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6379
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6379

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6379

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub88 = sub i64 %25, 1, !dbg !6379
  %and89 = and i64 %sub88, 140737488355328, !dbg !6379
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6379
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6379

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6379

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub93 = sub i64 %26, 1, !dbg !6379
  %and94 = and i64 %sub93, 70368744177664, !dbg !6379
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6379
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6379

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6379

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub98 = sub i64 %27, 1, !dbg !6379
  %and99 = and i64 %sub98, 35184372088832, !dbg !6379
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6379
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6379

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6379

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub103 = sub i64 %28, 1, !dbg !6379
  %and104 = and i64 %sub103, 17592186044416, !dbg !6379
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6379
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6379

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6379

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub108 = sub i64 %29, 1, !dbg !6379
  %and109 = and i64 %sub108, 8796093022208, !dbg !6379
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6379
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6379

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6379

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub113 = sub i64 %30, 1, !dbg !6379
  %and114 = and i64 %sub113, 4398046511104, !dbg !6379
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6379
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6379

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6379

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub118 = sub i64 %31, 1, !dbg !6379
  %and119 = and i64 %sub118, 2199023255552, !dbg !6379
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6379
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6379

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6379

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub123 = sub i64 %32, 1, !dbg !6379
  %and124 = and i64 %sub123, 1099511627776, !dbg !6379
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6379
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6379

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6379

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub128 = sub i64 %33, 1, !dbg !6379
  %and129 = and i64 %sub128, 549755813888, !dbg !6379
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6379
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6379

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6379

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub133 = sub i64 %34, 1, !dbg !6379
  %and134 = and i64 %sub133, 274877906944, !dbg !6379
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6379
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6379

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6379

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub138 = sub i64 %35, 1, !dbg !6379
  %and139 = and i64 %sub138, 137438953472, !dbg !6379
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6379
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6379

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6379

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub143 = sub i64 %36, 1, !dbg !6379
  %and144 = and i64 %sub143, 68719476736, !dbg !6379
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6379
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6379

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6379

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub148 = sub i64 %37, 1, !dbg !6379
  %and149 = and i64 %sub148, 34359738368, !dbg !6379
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6379
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6379

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6379

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub153 = sub i64 %38, 1, !dbg !6379
  %and154 = and i64 %sub153, 17179869184, !dbg !6379
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6379
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6379

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6379

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub158 = sub i64 %39, 1, !dbg !6379
  %and159 = and i64 %sub158, 8589934592, !dbg !6379
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6379
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6379

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6379

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub163 = sub i64 %40, 1, !dbg !6379
  %and164 = and i64 %sub163, 4294967296, !dbg !6379
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6379
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6379

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6379

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub168 = sub i64 %41, 1, !dbg !6379
  %and169 = and i64 %sub168, 2147483648, !dbg !6379
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6379
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6379

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6379

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub173 = sub i64 %42, 1, !dbg !6379
  %and174 = and i64 %sub173, 1073741824, !dbg !6379
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6379
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6379

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6379

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub178 = sub i64 %43, 1, !dbg !6379
  %and179 = and i64 %sub178, 536870912, !dbg !6379
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6379
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6379

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6379

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub183 = sub i64 %44, 1, !dbg !6379
  %and184 = and i64 %sub183, 268435456, !dbg !6379
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6379
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6379

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6379

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub188 = sub i64 %45, 1, !dbg !6379
  %and189 = and i64 %sub188, 134217728, !dbg !6379
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6379
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6379

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6379

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub193 = sub i64 %46, 1, !dbg !6379
  %and194 = and i64 %sub193, 67108864, !dbg !6379
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6379
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6379

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6379

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub198 = sub i64 %47, 1, !dbg !6379
  %and199 = and i64 %sub198, 33554432, !dbg !6379
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6379
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6379

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6379

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub203 = sub i64 %48, 1, !dbg !6379
  %and204 = and i64 %sub203, 16777216, !dbg !6379
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6379
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6379

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6379

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub208 = sub i64 %49, 1, !dbg !6379
  %and209 = and i64 %sub208, 8388608, !dbg !6379
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6379
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6379

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6379

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub213 = sub i64 %50, 1, !dbg !6379
  %and214 = and i64 %sub213, 4194304, !dbg !6379
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6379
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6379

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6379

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub218 = sub i64 %51, 1, !dbg !6379
  %and219 = and i64 %sub218, 2097152, !dbg !6379
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6379
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6379

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6379

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub223 = sub i64 %52, 1, !dbg !6379
  %and224 = and i64 %sub223, 1048576, !dbg !6379
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6379
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6379

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6379

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub228 = sub i64 %53, 1, !dbg !6379
  %and229 = and i64 %sub228, 524288, !dbg !6379
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6379
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6379

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6379

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub233 = sub i64 %54, 1, !dbg !6379
  %and234 = and i64 %sub233, 262144, !dbg !6379
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6379
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6379

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6379

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub238 = sub i64 %55, 1, !dbg !6379
  %and239 = and i64 %sub238, 131072, !dbg !6379
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6379
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6379

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6379

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub243 = sub i64 %56, 1, !dbg !6379
  %and244 = and i64 %sub243, 65536, !dbg !6379
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6379
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6379

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6379

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub248 = sub i64 %57, 1, !dbg !6379
  %and249 = and i64 %sub248, 32768, !dbg !6379
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6379
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6379

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6379

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub253 = sub i64 %58, 1, !dbg !6379
  %and254 = and i64 %sub253, 16384, !dbg !6379
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6379
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6379

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6379

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub258 = sub i64 %59, 1, !dbg !6379
  %and259 = and i64 %sub258, 8192, !dbg !6379
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6379
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6379

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6379

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub263 = sub i64 %60, 1, !dbg !6379
  %and264 = and i64 %sub263, 4096, !dbg !6379
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6379
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6379

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6379

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub268 = sub i64 %61, 1, !dbg !6379
  %and269 = and i64 %sub268, 2048, !dbg !6379
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6379
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6379

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6379

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub273 = sub i64 %62, 1, !dbg !6379
  %and274 = and i64 %sub273, 1024, !dbg !6379
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6379
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6379

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6379

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub278 = sub i64 %63, 1, !dbg !6379
  %and279 = and i64 %sub278, 512, !dbg !6379
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6379
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6379

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6379

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub283 = sub i64 %64, 1, !dbg !6379
  %and284 = and i64 %sub283, 256, !dbg !6379
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6379
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6379

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6379

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub288 = sub i64 %65, 1, !dbg !6379
  %and289 = and i64 %sub288, 128, !dbg !6379
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6379
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6379

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6379

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub293 = sub i64 %66, 1, !dbg !6379
  %and294 = and i64 %sub293, 64, !dbg !6379
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6379
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6379

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6379

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub298 = sub i64 %67, 1, !dbg !6379
  %and299 = and i64 %sub298, 32, !dbg !6379
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6379
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6379

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6379

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub303 = sub i64 %68, 1, !dbg !6379
  %and304 = and i64 %sub303, 16, !dbg !6379
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6379
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6379

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6379

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub308 = sub i64 %69, 1, !dbg !6379
  %and309 = and i64 %sub308, 8, !dbg !6379
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6379
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6379

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6379

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub313 = sub i64 %70, 1, !dbg !6379
  %and314 = and i64 %sub313, 4, !dbg !6379
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6379
  %71 = zext i1 %tobool315 to i64, !dbg !6379
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6379
  br label %cond.end, !dbg !6379

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6379
  br label %cond.end317, !dbg !6379

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6379
  br label %cond.end319, !dbg !6379

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6379
  br label %cond.end321, !dbg !6379

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6379
  br label %cond.end323, !dbg !6379

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6379
  br label %cond.end325, !dbg !6379

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6379
  br label %cond.end327, !dbg !6379

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6379
  br label %cond.end329, !dbg !6379

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6379
  br label %cond.end331, !dbg !6379

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6379
  br label %cond.end333, !dbg !6379

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6379
  br label %cond.end335, !dbg !6379

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6379
  br label %cond.end337, !dbg !6379

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6379
  br label %cond.end339, !dbg !6379

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6379
  br label %cond.end341, !dbg !6379

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6379
  br label %cond.end343, !dbg !6379

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6379
  br label %cond.end345, !dbg !6379

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6379
  br label %cond.end347, !dbg !6379

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6379
  br label %cond.end349, !dbg !6379

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6379
  br label %cond.end351, !dbg !6379

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6379
  br label %cond.end353, !dbg !6379

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6379
  br label %cond.end355, !dbg !6379

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6379
  br label %cond.end357, !dbg !6379

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6379
  br label %cond.end359, !dbg !6379

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6379
  br label %cond.end361, !dbg !6379

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6379
  br label %cond.end363, !dbg !6379

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6379
  br label %cond.end365, !dbg !6379

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6379
  br label %cond.end367, !dbg !6379

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6379
  br label %cond.end369, !dbg !6379

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6379
  br label %cond.end371, !dbg !6379

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6379
  br label %cond.end373, !dbg !6379

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6379
  br label %cond.end375, !dbg !6379

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6379
  br label %cond.end377, !dbg !6379

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6379
  br label %cond.end379, !dbg !6379

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6379
  br label %cond.end381, !dbg !6379

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6379
  br label %cond.end383, !dbg !6379

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6379
  br label %cond.end385, !dbg !6379

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6379
  br label %cond.end387, !dbg !6379

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6379
  br label %cond.end389, !dbg !6379

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6379
  br label %cond.end391, !dbg !6379

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6379
  br label %cond.end393, !dbg !6379

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6379
  br label %cond.end395, !dbg !6379

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6379
  br label %cond.end397, !dbg !6379

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6379
  br label %cond.end399, !dbg !6379

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6379
  br label %cond.end401, !dbg !6379

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6379
  br label %cond.end403, !dbg !6379

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6379
  br label %cond.end405, !dbg !6379

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6379
  br label %cond.end407, !dbg !6379

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6379
  br label %cond.end409, !dbg !6379

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6379
  br label %cond.end411, !dbg !6379

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6379
  br label %cond.end413, !dbg !6379

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6379
  br label %cond.end415, !dbg !6379

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6379
  br label %cond.end417, !dbg !6379

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6379
  br label %cond.end419, !dbg !6379

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6379
  br label %cond.end421, !dbg !6379

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6379
  br label %cond.end423, !dbg !6379

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6379
  br label %cond.end425, !dbg !6379

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6379
  br label %cond.end427, !dbg !6379

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6379
  br label %cond.end429, !dbg !6379

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6379
  br label %cond.end431, !dbg !6379

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6379
  br label %cond.end433, !dbg !6379

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6379
  br label %cond.end435, !dbg !6379

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6379
  br label %cond.end437, !dbg !6379

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6379
  br label %cond.end440, !dbg !6379

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6379

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6379
  br label %cond.end444, !dbg !6379

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6379
  %sub443 = sub i64 %72, 1, !dbg !6379
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6379
  br label %cond.end444, !dbg !6379

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6379
  %sub446 = sub i32 %cond445, 12, !dbg !6380
  %add = add i32 %sub446, 1, !dbg !6381
  store i32 %add, i32* %retval, align 4, !dbg !6382
  br label %return, !dbg !6382

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6383
  %dec = add i64 %73, -1, !dbg !6383
  store i64 %dec, i64* %size.addr, align 8, !dbg !6383
  %74 = load i64, i64* %size.addr, align 8, !dbg !6384
  %shr = lshr i64 %74, 12, !dbg !6384
  store i64 %shr, i64* %size.addr, align 8, !dbg !6384
  %75 = load i64, i64* %size.addr, align 8, !dbg !6385
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6362
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6386
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6387
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !6386, !srcloc !6388
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6386
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6389
  %add.i = add i32 %79, 1, !dbg !6390
  store i32 %add.i, i32* %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6392
  ret i32 %80, !dbg !6392
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6393 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6354, metadata !DIExpression()), !dbg !6397
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6361, metadata !DIExpression()), !dbg !6399
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6400, metadata !DIExpression()), !dbg !6401
  %0 = load i64, i64* %n.addr, align 8, !dbg !6402
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6399
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6403
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6404
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !6403, !srcloc !6388
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6403
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6405
  %add.i = add i32 %4, 1, !dbg !6406
  %sub = sub i32 %add.i, 1, !dbg !6407
  ret i32 %sub, !dbg !6408
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6409 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6415, metadata !DIExpression()), !dbg !6416
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6421
  ret i8* %0, !dbg !6422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6423 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6427, metadata !DIExpression()), !dbg !6428
  %call = call i64 @arch_local_save_flags() #10, !dbg !6429
  store i64 %call, i64* %f, align 8, !dbg !6430
  call void @arch_local_irq_disable() #10, !dbg !6431
  %0 = load i64, i64* %f, align 8, !dbg !6432
  ret i64 %0, !dbg !6433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6434 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6435, metadata !DIExpression()), !dbg !6437
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6438, metadata !DIExpression()), !dbg !6437
  %0 = load i64, i64* %__edi, align 8, !dbg !6437
  store i64 %0, i64* %__edi, align 8, !dbg !6437
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6439, metadata !DIExpression()), !dbg !6437
  %1 = load i64, i64* %__esi, align 8, !dbg !6437
  store i64 %1, i64* %__esi, align 8, !dbg !6437
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6440, metadata !DIExpression()), !dbg !6437
  %2 = load i64, i64* %__edx, align 8, !dbg !6437
  store i64 %2, i64* %__edx, align 8, !dbg !6437
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6441, metadata !DIExpression()), !dbg !6437
  %3 = load i64, i64* %__ecx, align 8, !dbg !6437
  store i64 %3, i64* %__ecx, align 8, !dbg !6437
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6442, metadata !DIExpression()), !dbg !6437
  %4 = load i64, i64* %__eax, align 8, !dbg !6437
  store i64 %4, i64* %__eax, align 8, !dbg !6437
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6437
  %6 = call i64 @llvm.read_register.i64(metadata !4234), !dbg !6443
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !6443, !srcloc !6446
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6443
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6443
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6443
  call void @llvm.write_register.i64(metadata !4234, i64 %asmresult1), !dbg !6443
  %8 = load i64, i64* %__eax, align 8, !dbg !6443
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6447, metadata !DIExpression()), !dbg !6449
  store i64 -1, i64* %__mask, align 8, !dbg !6449
  %9 = load i64, i64* %__mask, align 8, !dbg !6449
  store i64 %9, i64* %tmp, align 8, !dbg !6449
  %10 = load i64, i64* %tmp, align 8, !dbg !6449
  %and = and i64 %8, %10, !dbg !6443
  store i64 %and, i64* %__ret, align 8, !dbg !6443
  %11 = load i64, i64* %__ret, align 8, !dbg !6437
  store i64 %11, i64* %tmp2, align 8, !dbg !6450
  %12 = load i64, i64* %tmp2, align 8, !dbg !6437
  ret i64 %12, !dbg !6451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6452 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6453, metadata !DIExpression()), !dbg !6455
  %0 = load i64, i64* %__edi, align 8, !dbg !6455
  store i64 %0, i64* %__edi, align 8, !dbg !6455
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6456, metadata !DIExpression()), !dbg !6455
  %1 = load i64, i64* %__esi, align 8, !dbg !6455
  store i64 %1, i64* %__esi, align 8, !dbg !6455
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6457, metadata !DIExpression()), !dbg !6455
  %2 = load i64, i64* %__edx, align 8, !dbg !6455
  store i64 %2, i64* %__edx, align 8, !dbg !6455
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6458, metadata !DIExpression()), !dbg !6455
  %3 = load i64, i64* %__ecx, align 8, !dbg !6455
  store i64 %3, i64* %__ecx, align 8, !dbg !6455
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6459, metadata !DIExpression()), !dbg !6455
  %4 = load i64, i64* %__eax, align 8, !dbg !6455
  store i64 %4, i64* %__eax, align 8, !dbg !6455
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6455
  %6 = call i64 @llvm.read_register.i64(metadata !4234), !dbg !6455
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !6455, !srcloc !6460
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6455
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6455
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6455
  call void @llvm.write_register.i64(metadata !4234, i64 %asmresult1), !dbg !6455
  ret void, !dbg !6461
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noredzone
declare dso_local i32 @jiffies_to_usecs(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_usecs_to_jiffies(i32 %u) #0 !dbg !6462 {
entry:
  %u.addr = alloca i32, align 4
  store i32 %u, i32* %u.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr, metadata !6463, metadata !DIExpression()), !dbg !6464
  %0 = load i32, i32* %u.addr, align 4, !dbg !6465
  %conv = zext i32 %0 to i64, !dbg !6465
  %add = add i64 %conv, 4000, !dbg !6466
  %sub = sub i64 %add, 1, !dbg !6467
  %div = sdiv i64 %sub, 4000, !dbg !6468
  ret i64 %div, !dbg !6469
}

; Function Attrs: noredzone
declare dso_local i64 @__usecs_to_jiffies(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6470 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6473, metadata !DIExpression()), !dbg !6474
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6475, metadata !DIExpression()), !dbg !6477
  %0 = load i64, i64* %__edi, align 8, !dbg !6477
  store i64 %0, i64* %__edi, align 8, !dbg !6477
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6478, metadata !DIExpression()), !dbg !6477
  %1 = load i64, i64* %__esi, align 8, !dbg !6477
  store i64 %1, i64* %__esi, align 8, !dbg !6477
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6479, metadata !DIExpression()), !dbg !6477
  %2 = load i64, i64* %__edx, align 8, !dbg !6477
  store i64 %2, i64* %__edx, align 8, !dbg !6477
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6480, metadata !DIExpression()), !dbg !6477
  %3 = load i64, i64* %__ecx, align 8, !dbg !6477
  store i64 %3, i64* %__ecx, align 8, !dbg !6477
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6481, metadata !DIExpression()), !dbg !6477
  %4 = load i64, i64* %__eax, align 8, !dbg !6477
  store i64 %4, i64* %__eax, align 8, !dbg !6477
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6477
  %6 = call i64 @llvm.read_register.i64(metadata !4234), !dbg !6477
  %7 = load i64, i64* %f.addr, align 8, !dbg !6477
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !6477, !srcloc !6482
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6477
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6477
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6477
  call void @llvm.write_register.i64(metadata !4234, i64 %asmresult1), !dbg !6477
  ret void, !dbg !6483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__kfifo_uint_must_check_helper(i32 %val) #0 !dbg !6484 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6487, metadata !DIExpression()), !dbg !6488
  %0 = load i32, i32* %val.addr, align 4, !dbg !6489
  ret i32 %0, !dbg !6490
}

; Function Attrs: noredzone
declare dso_local i32 @__kfifo_out(%struct.__kfifo*, i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_timing_event(i64 %ev.coerce) #0 !dbg !6491 {
entry:
  %ev = alloca %struct.ir_raw_event, align 4
  %0 = bitcast %struct.ir_raw_event* %ev to i64*
  store i64 %ev.coerce, i64* %0, align 4
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %ev, metadata !6494, metadata !DIExpression()), !dbg !6495
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !6496
  %bf.load = load i8, i8* %carrier_report, align 1, !dbg !6496
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !6496
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6496
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6496
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6497
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6498

land.rhs:                                         ; preds = %entry
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %ev, i32 0, i32 2, !dbg !6499
  %bf.load1 = load i8, i8* %reset, align 1, !dbg !6499
  %bf.lshr2 = lshr i8 %bf.load1, 1, !dbg !6499
  %bf.clear3 = and i8 %bf.lshr2, 1, !dbg !6499
  %bf.cast4 = zext i8 %bf.clear3 to i32, !dbg !6499
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !6500
  %lnot = xor i1 %tobool5, true, !dbg !6500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6501
  ret i1 %1, !dbg !6502
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_transition(%struct.ir_raw_event* %x, %struct.ir_raw_event* %y) #0 !dbg !6503 {
entry:
  %x.addr = alloca %struct.ir_raw_event*, align 8
  %y.addr = alloca %struct.ir_raw_event*, align 8
  store %struct.ir_raw_event* %x, %struct.ir_raw_event** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %x.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  store %struct.ir_raw_event* %y, %struct.ir_raw_event** %y.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event** %y.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  %0 = load %struct.ir_raw_event*, %struct.ir_raw_event** %x.addr, align 8, !dbg !6510
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %0, i32 0, i32 2, !dbg !6511
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6511
  %bf.clear = and i8 %bf.load, 1, !dbg !6511
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6511
  %1 = load %struct.ir_raw_event*, %struct.ir_raw_event** %y.addr, align 8, !dbg !6512
  %pulse1 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 2, !dbg !6513
  %bf.load2 = load i8, i8* %pulse1, align 1, !dbg !6513
  %bf.clear3 = and i8 %bf.load2, 1, !dbg !6513
  %bf.cast4 = zext i8 %bf.clear3 to i32, !dbg !6513
  %cmp = icmp ne i32 %bf.cast, %bf.cast4, !dbg !6514
  ret i1 %cmp, !dbg !6515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lirc_raw_event(%struct.rc_dev* %dev, i64 %ev.coerce) #0 !dbg !6516 {
entry:
  %ev = alloca %struct.ir_raw_event, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %0 = bitcast %struct.ir_raw_event* %ev to i64*
  store i64 %ev.coerce, i64* %0, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !6519, metadata !DIExpression()), !dbg !6520
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %ev, metadata !6521, metadata !DIExpression()), !dbg !6522
  ret void, !dbg !6523
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_should_stop() #3

; Function Attrs: noredzone
declare dso_local void @schedule() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6524 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6527, metadata !DIExpression()), !dbg !6528
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6529, metadata !DIExpression()), !dbg !6530
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6531, metadata !DIExpression()), !dbg !6532
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6533
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6535
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6536
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #10, !dbg !6537
  br i1 %call, label %if.end, label %if.then, !dbg !6538

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6539

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6540
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6541
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6542
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6543
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6544
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6545
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6546
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6547
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6548
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6549
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6550
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6551
  br label %do.body, !dbg !6552

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6553

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6555

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6553

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6557
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6557
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6557
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6557
  br label %do.end7, !dbg !6557

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6553

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6560 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6563, metadata !DIExpression()), !dbg !6564
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6565, metadata !DIExpression()), !dbg !6566
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  ret i1 true, !dbg !6569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6570 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6573
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #10, !dbg !6575
  br i1 %call, label %if.end, label %if.then, !dbg !6576

if.then:                                          ; preds = %entry
  br label %return, !dbg !6577

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6578
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6579
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6579
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6580
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6581
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6581
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #10, !dbg !6582
  br label %return, !dbg !6583

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6584 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6587, metadata !DIExpression()), !dbg !6588
  ret i1 true, !dbg !6589
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6590 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6591, metadata !DIExpression()), !dbg !6592
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6595
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6596
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6597
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6598
  br label %do.body, !dbg !6599

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6600

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6602

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6600

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6604
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6604
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6604
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6604
  br label %do.end5, !dbg !6604

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6600

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_atomic64_or(i64 %i, %struct.atomic64_t* %v) #0 !dbg !6607 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct.atomic64_t*, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !6608, metadata !DIExpression()), !dbg !6609
  store %struct.atomic64_t* %v, %struct.atomic64_t** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr, metadata !6610, metadata !DIExpression()), !dbg !6611
  %0 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr, align 8, !dbg !6612
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %0, i32 0, i32 0, !dbg !6613
  %1 = load i64, i64* %i.addr, align 8, !dbg !6614
  call void asm sideeffect "orq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %counter, i64 %1, i64* %counter) #9, !dbg !6615, !srcloc !6616
  ret void, !dbg !6617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6618 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6619, metadata !DIExpression()), !dbg !6620
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6621, metadata !DIExpression()), !dbg !6622
  ret i1 true, !dbg !6623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_atomic64_and(i64 %i, %struct.atomic64_t* %v) #0 !dbg !6624 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct.atomic64_t*, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  store %struct.atomic64_t* %v, %struct.atomic64_t** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr, metadata !6627, metadata !DIExpression()), !dbg !6628
  %0 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr, align 8, !dbg !6629
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %0, i32 0, i32 0, !dbg !6630
  %1 = load i64, i64* %i.addr, align 8, !dbg !6631
  call void asm sideeffect "andq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %counter, i64 %1, i64* %counter) #9, !dbg !6632, !srcloc !6633
  ret void, !dbg !6634
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4234}
!llvm.module.flags = !{!4235, !4236, !4237, !4238}
!llvm.ident = !{!4239}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ir_raw_handler_lock", scope: !2, file: !3, line: 17, type: !1143, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !142, globals: !4218, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/rc-ir-raw.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !124, !130, !135}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_proto", file: !94, line: 200, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/uapi/linux/lirc.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!96 = !DIEnumerator(name: "RC_PROTO_UNKNOWN", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "RC_PROTO_OTHER", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "RC_PROTO_RC5", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "RC_PROTO_RC5X_20", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "RC_PROTO_RC5_SZ", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "RC_PROTO_JVC", value: 5, isUnsigned: true)
!102 = !DIEnumerator(name: "RC_PROTO_SONY12", value: 6, isUnsigned: true)
!103 = !DIEnumerator(name: "RC_PROTO_SONY15", value: 7, isUnsigned: true)
!104 = !DIEnumerator(name: "RC_PROTO_SONY20", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "RC_PROTO_NEC", value: 9, isUnsigned: true)
!106 = !DIEnumerator(name: "RC_PROTO_NECX", value: 10, isUnsigned: true)
!107 = !DIEnumerator(name: "RC_PROTO_NEC32", value: 11, isUnsigned: true)
!108 = !DIEnumerator(name: "RC_PROTO_SANYO", value: 12, isUnsigned: true)
!109 = !DIEnumerator(name: "RC_PROTO_MCIR2_KBD", value: 13, isUnsigned: true)
!110 = !DIEnumerator(name: "RC_PROTO_MCIR2_MSE", value: 14, isUnsigned: true)
!111 = !DIEnumerator(name: "RC_PROTO_RC6_0", value: 15, isUnsigned: true)
!112 = !DIEnumerator(name: "RC_PROTO_RC6_6A_20", value: 16, isUnsigned: true)
!113 = !DIEnumerator(name: "RC_PROTO_RC6_6A_24", value: 17, isUnsigned: true)
!114 = !DIEnumerator(name: "RC_PROTO_RC6_6A_32", value: 18, isUnsigned: true)
!115 = !DIEnumerator(name: "RC_PROTO_RC6_MCE", value: 19, isUnsigned: true)
!116 = !DIEnumerator(name: "RC_PROTO_SHARP", value: 20, isUnsigned: true)
!117 = !DIEnumerator(name: "RC_PROTO_XMP", value: 21, isUnsigned: true)
!118 = !DIEnumerator(name: "RC_PROTO_CEC", value: 22, isUnsigned: true)
!119 = !DIEnumerator(name: "RC_PROTO_IMON", value: 23, isUnsigned: true)
!120 = !DIEnumerator(name: "RC_PROTO_RCMM12", value: 24, isUnsigned: true)
!121 = !DIEnumerator(name: "RC_PROTO_RCMM24", value: 25, isUnsigned: true)
!122 = !DIEnumerator(name: "RC_PROTO_RCMM32", value: 26, isUnsigned: true)
!123 = !DIEnumerator(name: "RC_PROTO_XBOX_DVD", value: 27, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_driver_type", file: !125, line: 27, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/media/rc-core.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "RC_DRIVER_SCANCODE", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "RC_DRIVER_IR_RAW", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "RC_DRIVER_IR_RAW_TX", value: 2, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 10, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !136, line: 305, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!142 = !{!143, !163, !164, !165, !713, !184, !3816, !4208, !4211, !298, !4214, !4215, !1170, !4216}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event", file: !125, line: 299, size: 64, elements: !145)
!145 = !{!146, !155, !159, !160, !161, !162}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !125, line: 300, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !125, line: 300, size: 32, elements: !148)
!148 = !{!149, !154}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !147, file: !125, line: 301, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !151, line: 21, baseType: !152)
!151 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !153, line: 27, baseType: !7)
!153 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !147, file: !125, line: 302, baseType: !150, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !144, file: !125, line: 304, baseType: !156, size: 8, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !151, line: 17, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !153, line: 21, baseType: !158)
!158 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !144, file: !125, line: 306, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !144, file: !125, line: 307, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 40)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !144, file: !125, line: 308, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 40)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_report", scope: !144, file: !125, line: 309, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 40)
!163 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_handler", file: !167, line: 33, size: 512, elements: !168)
!167 = !DIFile(filename: "drivers/media/rc/rc-core-priv.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !176, !180, !4200, !4204, !4205, !4206, !4207}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !166, file: !167, line: 34, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !171, line: 178, size: 128, elements: !172)
!171 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 179, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !170, file: !171, line: 179, baseType: !174, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "protocols", scope: !166, file: !167, line: 36, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !151, line: 23, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !153, line: 31, baseType: !179)
!179 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !166, file: !167, line: 37, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !185, !144}
!184 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !125, line: 162, size: 9536, elements: !187)
!187 = !{!188, !3780, !3781, !3785, !3786, !3787, !3795, !3796, !3797, !3813, !3814, !3815, !3855, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4159, !4163, !4167, !4171, !4172, !4173, !4177, !4181, !4185, !4189, !4190, !4195, !4196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !186, file: !125, line: 163, baseType: !189, size: 5568)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !190)
!190 = !{!191, !3333, !3335, !3338, !3339, !3390, !3481, !3482, !3483, !3484, !3485, !3494, !3599, !3612, !3615, !3616, !3620, !3622, !3623, !3624, !3628, !3634, !3635, !3638, !3642, !3732, !3733, !3734, !3735, !3736, !3768, !3769, !3770, !3773, !3776, !3777, !3778, !3779}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !189, file: !73, line: 462, baseType: !192, size: 512)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !193, line: 64, size: 512, elements: !194)
!193 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !199, !200, !202, !262, !3184, !3323, !3328, !3329, !3330, !3331, !3332}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !193, line: 65, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !192, file: !193, line: 66, baseType: !170, size: 128, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !193, line: 67, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !192, file: !193, line: 68, baseType: !203, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !193, line: 192, size: 704, elements: !205)
!205 = !{!206, !207, !223, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !204, file: !193, line: 193, baseType: !170, size: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !204, file: !193, line: 194, baseType: !208, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !209, line: 83, baseType: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !209, line: 71, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !209, line: 72, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !209, line: 72, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !213, file: !209, line: 73, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !209, line: 20, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !216, file: !209, line: 21, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !220, line: 25, baseType: !221)
!220 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 25, elements: !222)
!222 = !{}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !204, file: !193, line: 195, baseType: !192, size: 512, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !204, file: !193, line: 196, baseType: !225, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !193, line: 156, size: 192, elements: !228)
!228 = !{!229, !234, !239}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !227, file: !193, line: 157, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!184, !203, !201}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !193, line: 158, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!196, !203, !201}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !227, file: !193, line: 159, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!184, !203, !201, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !193, line: 148, size: 20736, elements: !246)
!246 = !{!247, !252, !256, !257, !261}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !245, file: !193, line: 149, baseType: !248, size: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 192, elements: !250)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !245, file: !193, line: 150, baseType: !253, size: 4096, offset: 192)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 4096, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !245, file: !193, line: 151, baseType: !184, size: 32, offset: 4288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !193, line: 152, baseType: !258, size: 16384, offset: 4320)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 16384, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 2048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !245, file: !193, line: 153, baseType: !184, size: 32, offset: 20704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !192, file: !193, line: 69, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !193, line: 138, size: 448, elements: !265)
!265 = !{!266, !270, !299, !301, !3146, !3174, !3178}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !264, file: !193, line: 139, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !201}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !264, file: !193, line: 140, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !274, line: 230, size: 128, elements: !275)
!274 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !291}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !273, file: !274, line: 231, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !201, !284, !249}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 60, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !282, line: 73, baseType: !283)
!282 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !282, line: 15, baseType: !163)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !274, line: 30, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !274, line: 31, baseType: !196, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !285, file: !274, line: 32, baseType: !289, size: 16, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !171, line: 19, baseType: !290)
!290 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !273, file: !274, line: 232, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!280, !201, !284, !196, !295}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 55, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !282, line: 72, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !282, line: 16, baseType: !298)
!298 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !264, file: !193, line: 141, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !264, file: !193, line: 142, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !274, line: 84, size: 320, elements: !306)
!306 = !{!307, !308, !312, !3143, !3144}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !274, line: 85, baseType: !196, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !305, file: !274, line: 86, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!289, !201, !284, !184}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !305, file: !274, line: 88, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!289, !201, !316, !184}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !274, line: 168, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !3138, !3139}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !317, file: !274, line: 169, baseType: !285, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !274, line: 170, baseType: !295, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !317, file: !274, line: 171, baseType: !164, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !317, file: !274, line: 172, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!280, !326, !201, !316, !249, !497, !295}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !328)
!328 = !{!329, !347, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3121, !3122, !3131, !3132, !3133, !3134, !3135, !3136, !3137}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !327, file: !44, line: 920, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !44, line: 917, size: 128, elements: !331)
!331 = !{!332, !338}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !330, file: !44, line: 918, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !334, line: 58, size: 64, elements: !335)
!334 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !334, line: 59, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !330, file: !44, line: 919, baseType: !339, size: 128, align: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !171, line: 216, size: 128, align: 64, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !171, line: 217, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !339, file: !171, line: 218, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !342}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !327, file: !44, line: 921, baseType: !348, size: 128, offset: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !349, line: 8, size: 128, elements: !350)
!349 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !348, file: !349, line: 9, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !354, line: 18, flags: DIFlagFwdDecl)
!354 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !348, file: !349, line: 10, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !354, line: 89, size: 1536, elements: !358)
!358 = !{!359, !360, !370, !378, !379, !394, !3071, !3073, !3085, !3086, !3087, !3088, !3089, !3095, !3096, !3097}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !357, file: !354, line: 91, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !357, file: !354, line: 92, baseType: !361, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !362, line: 277, baseType: !363)
!362 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !362, line: 277, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !363, file: !362, line: 277, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !362, line: 70, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !362, line: 65, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !367, file: !362, line: 66, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !357, file: !354, line: 93, baseType: !371, size: 128, offset: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !372, line: 38, size: 128, elements: !373)
!372 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !372, line: 39, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !371, file: !372, line: 39, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !357, file: !354, line: 94, baseType: !356, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !357, file: !354, line: 95, baseType: !380, size: 128, offset: 256)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !354, line: 47, size: 128, elements: !381)
!381 = !{!382, !391}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !354, line: 48, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !354, line: 48, size: 64, elements: !384)
!384 = !{!385, !390}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !354, line: 49, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !354, line: 49, size: 64, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !386, file: !354, line: 50, baseType: !150, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !386, file: !354, line: 50, baseType: !150, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !383, file: !354, line: 52, baseType: !177, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !354, line: 54, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !357, file: !354, line: 96, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !397)
!397 = !{!398, !399, !400, !408, !415, !416, !564, !2774, !2775, !2776, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !3039, !3047, !3048, !3049, !3067, !3068, !3069, !3070}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !396, file: !44, line: 611, baseType: !289, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !396, file: !44, line: 612, baseType: !290, size: 16, offset: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !396, file: !44, line: 613, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !402, line: 23, baseType: !403)
!402 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 21, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !403, file: !402, line: 22, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !171, line: 32, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !282, line: 49, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !396, file: !44, line: 614, baseType: !409, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !402, line: 28, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 26, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !402, line: 27, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !171, line: 33, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !282, line: 50, baseType: !7)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !396, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !396, file: !44, line: 622, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !420)
!420 = !{!421, !425, !438, !442, !448, !452, !458, !462, !466, !470, !474, !475, !481, !485, !511, !540, !544, !550, !555, !559, !560}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !419, file: !44, line: 1865, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!356, !395, !356, !7}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !419, file: !44, line: 1866, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!196, !356, !395, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !431, line: 10, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !430, file: !431, line: 11, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !164}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !430, file: !431, line: 12, baseType: !164, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !419, file: !44, line: 1867, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!184, !395, !184}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !419, file: !44, line: 1868, baseType: !443, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !395, !184}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !419, file: !44, line: 1870, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!184, !356, !249, !184}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !419, file: !44, line: 1872, baseType: !453, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!184, !395, !356, !289, !456}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !171, line: 30, baseType: !457)
!457 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !419, file: !44, line: 1873, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!184, !356, !395, !356}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !419, file: !44, line: 1874, baseType: !463, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!184, !395, !356}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !419, file: !44, line: 1875, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!184, !395, !356, !196}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !419, file: !44, line: 1876, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!184, !395, !356, !289}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !419, file: !44, line: 1877, baseType: !463, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !419, file: !44, line: 1878, baseType: !476, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!184, !395, !356, !289, !479}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !171, line: 16, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !171, line: 13, baseType: !150)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !419, file: !44, line: 1879, baseType: !482, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!184, !395, !356, !395, !356, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !419, file: !44, line: 1881, baseType: !486, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!184, !356, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !500, !508, !509, !510}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !490, file: !44, line: 220, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !490, file: !44, line: 221, baseType: !289, size: 16, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !490, file: !44, line: 222, baseType: !401, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !490, file: !44, line: 223, baseType: !409, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !490, file: !44, line: 224, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !171, line: 46, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !282, line: 88, baseType: !499)
!499 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !490, file: !44, line: 225, baseType: !501, size: 128, offset: 192)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !502, line: 13, size: 128, elements: !503)
!502 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !501, file: !502, line: 14, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !502, line: 8, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !153, line: 30, baseType: !499)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !501, file: !502, line: 15, baseType: !163, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !490, file: !44, line: 226, baseType: !501, size: 128, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !490, file: !44, line: 227, baseType: !501, size: 128, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !490, file: !44, line: 234, baseType: !326, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !419, file: !44, line: 1882, baseType: !512, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!184, !515, !517, !150, !7}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !519, line: 22, size: 1152, elements: !520)
!519 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !522, !523, !524, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !518, file: !519, line: 23, baseType: !150, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !518, file: !519, line: 24, baseType: !289, size: 16, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !518, file: !519, line: 25, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !518, file: !519, line: 26, baseType: !525, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 104, baseType: !150)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !518, file: !519, line: 27, baseType: !177, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !518, file: !519, line: 28, baseType: !177, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !518, file: !519, line: 37, baseType: !177, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !518, file: !519, line: 38, baseType: !479, size: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !518, file: !519, line: 39, baseType: !479, size: 32, offset: 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !518, file: !519, line: 40, baseType: !401, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !518, file: !519, line: 41, baseType: !409, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !518, file: !519, line: 42, baseType: !497, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !518, file: !519, line: 43, baseType: !501, size: 128, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !518, file: !519, line: 44, baseType: !501, size: 128, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !518, file: !519, line: 45, baseType: !501, size: 128, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !518, file: !519, line: 46, baseType: !501, size: 128, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !518, file: !519, line: 47, baseType: !177, size: 64, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !518, file: !519, line: 48, baseType: !177, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !419, file: !44, line: 1883, baseType: !541, size: 64, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!280, !356, !249, !295}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !419, file: !44, line: 1884, baseType: !545, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!184, !395, !548, !177, !177}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !419, file: !44, line: 1886, baseType: !551, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!184, !395, !554, !184}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !419, file: !44, line: 1887, baseType: !556, size: 64, offset: 1152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!184, !395, !356, !326, !7, !289}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !419, file: !44, line: 1890, baseType: !471, size: 64, offset: 1216)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !419, file: !44, line: 1891, baseType: !561, size: 64, offset: 1280)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!184, !395, !446, !184}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !396, file: !44, line: 623, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !623, !2381, !2463, !2546, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2562, !2566, !2567, !2570, !2571, !2574, !2575, !2576, !2617, !2644, !2645, !2646, !2647, !2648, !2649, !2652, !2654, !2661, !2662, !2664, !2665, !2666, !2725, !2726, !2741, !2742, !2743, !2744, !2745, !2748, !2749, !2750, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !566, file: !44, line: 1417, baseType: !170, size: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !566, file: !44, line: 1418, baseType: !479, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !566, file: !44, line: 1419, baseType: !158, size: 8, offset: 160)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !566, file: !44, line: 1420, baseType: !298, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !566, file: !44, line: 1421, baseType: !497, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !566, file: !44, line: 1422, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !576)
!576 = !{!577, !578, !579, !586, !590, !594, !598, !602, !603, !613, !616, !617, !618, !620, !621, !622}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !575, file: !44, line: 2229, baseType: !196, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !575, file: !44, line: 2230, baseType: !184, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !575, file: !44, line: 2238, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!184, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !585, line: 28, flags: DIFlagFwdDecl)
!585 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !575, file: !44, line: 2239, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !575, file: !44, line: 2240, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!356, !574, !184, !196, !164}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !575, file: !44, line: 2242, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !565}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !575, file: !44, line: 2243, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !601, line: 76, flags: DIFlagFwdDecl)
!601 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !44, line: 2244, baseType: !574, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !575, file: !44, line: 2245, baseType: !604, size: 64, offset: 512)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !171, line: 182, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !604, file: !171, line: 183, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !171, line: 186, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !171, line: 187, baseType: !607, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !608, file: !171, line: 187, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !575, file: !44, line: 2247, baseType: !614, offset: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !615, line: 187, elements: !222)
!615 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !575, file: !44, line: 2248, baseType: !614, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !575, file: !44, line: 2249, baseType: !614, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !575, file: !44, line: 2250, baseType: !619, offset: 576)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, elements: !250)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !575, file: !44, line: 2252, baseType: !614, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !575, file: !44, line: 2253, baseType: !614, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !575, file: !44, line: 2254, baseType: !614, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !566, file: !44, line: 1423, baseType: !624, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !627)
!627 = !{!628, !632, !636, !637, !641, !647, !651, !652, !653, !657, !661, !662, !663, !664, !670, !675, !676, !683, !684, !685, !686, !2365, !2380}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !626, file: !44, line: 1936, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!395, !565}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !626, file: !44, line: 1937, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !395}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !626, file: !44, line: 1938, baseType: !633, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !626, file: !44, line: 1940, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !395, !184}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !626, file: !44, line: 1941, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!184, !395, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !626, file: !44, line: 1942, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!184, !395}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !626, file: !44, line: 1943, baseType: !633, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !626, file: !44, line: 1944, baseType: !595, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !626, file: !44, line: 1945, baseType: !654, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!184, !565, !184}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !626, file: !44, line: 1946, baseType: !658, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!184, !565}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !626, file: !44, line: 1947, baseType: !658, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !626, file: !44, line: 1948, baseType: !658, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !626, file: !44, line: 1949, baseType: !658, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !626, file: !44, line: 1950, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!184, !356, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !626, file: !44, line: 1951, baseType: !671, size: 64, offset: 896)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!184, !565, !674, !249}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !626, file: !44, line: 1952, baseType: !595, size: 64, offset: 960)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !626, file: !44, line: 1954, baseType: !677, size: 64, offset: 1024)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!184, !680, !356}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !682, line: 539, flags: DIFlagFwdDecl)
!682 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !626, file: !44, line: 1955, baseType: !677, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !626, file: !44, line: 1956, baseType: !677, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !626, file: !44, line: 1957, baseType: !677, size: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !626, file: !44, line: 1963, baseType: !687, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!184, !565, !690, !713}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !692, line: 68, size: 512, align: 128, elements: !693)
!692 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !2357, !2364}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 69, baseType: !298, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 77, baseType: !696, size: 320, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 77, size: 320, elements: !697)
!697 = !{!698, !886, !891, !919, !927, !933, !2288, !2356}
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 78, baseType: !699, size: 320)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 78, size: 320, elements: !700)
!700 = !{!701, !702, !884, !885}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !699, file: !692, line: 84, baseType: !170, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !699, file: !692, line: 86, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !705)
!705 = !{!706, !707, !715, !716, !721, !736, !752, !753, !754, !755, !877, !878, !881, !882, !883}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !704, file: !44, line: 452, baseType: !395, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !704, file: !44, line: 453, baseType: !708, size: 128, offset: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !709, line: 292, size: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !712, !714}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !708, file: !709, line: 293, baseType: !208)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !708, file: !709, line: 295, baseType: !713, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !171, line: 148, baseType: !7)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !708, file: !709, line: 296, baseType: !164, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !704, file: !44, line: 454, baseType: !713, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !704, file: !44, line: 455, baseType: !717, size: 32, offset: 224)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !171, line: 168, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 166, size: 32, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !718, file: !171, line: 167, baseType: !184, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !704, file: !44, line: 460, baseType: !722, size: 128, offset: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !723, line: 125, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !735}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !722, file: !723, line: 126, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !723, line: 31, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !726, file: !723, line: 32, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !723, line: 24, size: 192, align: 64, elements: !731)
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !730, file: !723, line: 25, baseType: !298, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !730, file: !723, line: 26, baseType: !729, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !730, file: !723, line: 27, baseType: !729, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !722, file: !723, line: 127, baseType: !729, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !704, file: !44, line: 461, baseType: !737, size: 256, offset: 384)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !738, line: 35, size: 256, elements: !739)
!738 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !748, !749, !751}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !738, line: 36, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !742, line: 13, baseType: !743)
!742 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !171, line: 175, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 173, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !744, file: !171, line: 174, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !151, line: 22, baseType: !506)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !737, file: !738, line: 42, baseType: !741, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !737, file: !738, line: 46, baseType: !750, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !209, line: 29, baseType: !216)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !737, file: !738, line: 47, baseType: !170, size: 128, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !704, file: !44, line: 462, baseType: !298, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !704, file: !44, line: 463, baseType: !298, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !704, file: !44, line: 464, baseType: !298, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !704, file: !44, line: 465, baseType: !756, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !759)
!759 = !{!760, !764, !768, !772, !776, !780, !786, !792, !796, !801, !805, !809, !813, !841, !845, !851, !852, !853, !857, !862, !866, !873}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !758, file: !44, line: 368, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!184, !690, !645}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !758, file: !44, line: 369, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!184, !326, !690}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !758, file: !44, line: 372, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!184, !703, !645}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !758, file: !44, line: 375, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!184, !690}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !758, file: !44, line: 381, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!184, !326, !703, !174, !7}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !758, file: !44, line: 383, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !758, file: !44, line: 385, baseType: !787, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!184, !326, !703, !497, !7, !7, !790, !791}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !758, file: !44, line: 388, baseType: !793, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!184, !326, !703, !497, !7, !7, !690, !164}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !758, file: !44, line: 393, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!800, !703, !800}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !171, line: 125, baseType: !177)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !758, file: !44, line: 394, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !690, !7, !7}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !758, file: !44, line: 395, baseType: !806, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!184, !690, !713}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !758, file: !44, line: 396, baseType: !810, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !690}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !758, file: !44, line: 397, baseType: !814, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!280, !817, !839}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !819)
!819 = !{!820, !821, !822, !826, !827, !828, !831, !832}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !818, file: !44, line: 321, baseType: !326, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !818, file: !44, line: 326, baseType: !497, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !818, file: !44, line: 327, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !817, !163, !163}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !818, file: !44, line: 328, baseType: !164, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !818, file: !44, line: 329, baseType: !184, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !818, file: !44, line: 330, baseType: !829, size: 16, offset: 288)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !151, line: 19, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !153, line: 24, baseType: !290)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !818, file: !44, line: 331, baseType: !829, size: 16, offset: 304)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !44, line: 332, baseType: !833, size: 64, offset: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !44, line: 332, size: 64, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !833, file: !44, line: 333, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !833, file: !44, line: 334, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !758, file: !44, line: 402, baseType: !842, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!184, !703, !690, !690, !5}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !758, file: !44, line: 404, baseType: !846, size: 64, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!456, !690, !849}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !850, line: 305, baseType: !7)
!850 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!851 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !758, file: !44, line: 405, baseType: !810, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !758, file: !44, line: 406, baseType: !773, size: 64, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !758, file: !44, line: 407, baseType: !854, size: 64, offset: 1088)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!184, !690, !298, !298}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !758, file: !44, line: 409, baseType: !858, size: 64, offset: 1152)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !690, !861, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !758, file: !44, line: 410, baseType: !863, size: 64, offset: 1216)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!184, !703, !690}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !758, file: !44, line: 413, baseType: !867, size: 64, offset: 1280)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!184, !870, !326, !872}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !758, file: !44, line: 415, baseType: !874, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !326}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !44, line: 466, baseType: !298, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !704, file: !44, line: 467, baseType: !879, size: 32, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !880, line: 8, baseType: !150)
!880 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !704, file: !44, line: 468, baseType: !208, offset: 992)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !704, file: !44, line: 469, baseType: !170, size: 128, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !704, file: !44, line: 470, baseType: !164, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !699, file: !692, line: 87, baseType: !298, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !699, file: !692, line: 94, baseType: !298, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 96, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 96, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !887, file: !692, line: 101, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !171, line: 143, baseType: !177)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 103, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 103, size: 320, elements: !893)
!893 = !{!894, !904, !907, !908}
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !692, line: 104, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !692, line: 104, size: 128, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !895, file: !692, line: 105, baseType: !170, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !692, line: 106, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !692, line: 106, size: 128, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !692, line: 107, baseType: !690, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !899, file: !692, line: 109, baseType: !184, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !899, file: !692, line: 110, baseType: !184, size: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !892, file: !692, line: 117, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !692, line: 117, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !892, file: !692, line: 119, baseType: !164, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !692, line: 120, baseType: !909, size: 64, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !692, line: 120, size: 64, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !909, file: !692, line: 121, baseType: !164, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !692, line: 122, baseType: !298, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !692, line: 123, baseType: !914, size: 32)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !692, line: 123, size: 32, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !914, file: !692, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !914, file: !692, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !914, file: !692, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 130, baseType: !920, size: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 130, size: 192, elements: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !920, file: !692, line: 131, baseType: !298, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !920, file: !692, line: 134, baseType: !158, size: 8, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !920, file: !692, line: 135, baseType: !158, size: 8, offset: 72)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !920, file: !692, line: 136, baseType: !717, size: 32, offset: 96)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !920, file: !692, line: 137, baseType: !7, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 139, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 139, size: 256, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !928, file: !692, line: 140, baseType: !298, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !928, file: !692, line: 141, baseType: !717, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !928, file: !692, line: 143, baseType: !170, size: 128, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 145, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 145, size: 256, elements: !935)
!935 = !{!936, !937, !939, !940, !2287}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !934, file: !692, line: 146, baseType: !298, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !934, file: !692, line: 147, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !682, line: 509, baseType: !690)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !934, file: !692, line: 148, baseType: !298, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !692, line: 149, baseType: !941, size: 64, offset: 192)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !692, line: 149, size: 64, elements: !942)
!942 = !{!943, !2286}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !941, file: !692, line: 150, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !692, line: 388, size: 7296, elements: !946)
!946 = !{!947, !2282}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !692, line: 389, baseType: !948, size: 7296)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !692, line: 389, size: 7296, elements: !949)
!949 = !{!950, !1068, !1069, !1070, !1074, !1075, !1076, !1077, !1078, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1119, !1127, !1130, !1160, !1161, !2266, !2267, !2270, !2271, !2272, !2275, !2276, !2277, !2280, !2281}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !948, file: !692, line: 390, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !692, line: 305, size: 1472, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !968, !969, !974, !975, !978, !1062, !1063, !1064, !1065, !1066}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !952, file: !692, line: 308, baseType: !298, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !952, file: !692, line: 309, baseType: !298, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !952, file: !692, line: 313, baseType: !951, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !952, file: !692, line: 313, baseType: !951, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !952, file: !692, line: 315, baseType: !730, size: 192, align: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !952, file: !692, line: 323, baseType: !298, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !952, file: !692, line: 327, baseType: !944, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !952, file: !692, line: 333, baseType: !962, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !682, line: 284, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !682, line: 284, size: 64, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !963, file: !682, line: 284, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !967, line: 19, baseType: !298)
!967 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !952, file: !692, line: 334, baseType: !298, size: 64, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !952, file: !692, line: 343, baseType: !970, size: 256, offset: 704)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !692, line: 340, size: 256, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !970, file: !692, line: 341, baseType: !730, size: 192, align: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !970, file: !692, line: 342, baseType: !298, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !952, file: !692, line: 351, baseType: !170, size: 128, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !952, file: !692, line: 353, baseType: !976, size: 64, offset: 1088)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !692, line: 353, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !952, file: !692, line: 356, baseType: !979, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !982)
!982 = !{!983, !987, !988, !992, !996, !1036, !1040, !1044, !1048, !1049, !1050, !1054, !1058}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !981, file: !14, line: 558, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !951}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !981, file: !14, line: 559, baseType: !984, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !981, file: !14, line: 560, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!184, !951, !298}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !981, file: !14, line: 561, baseType: !993, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!184, !951}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !981, file: !14, line: 562, baseType: !997, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !692, line: 682, baseType: !7)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1016, !1023, !1029, !1030, !1031, !1033, !1035}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1002, file: !14, line: 509, baseType: !951, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1002, file: !14, line: 511, baseType: !713, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1002, file: !14, line: 512, baseType: !298, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1002, file: !14, line: 513, baseType: !298, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1002, file: !14, line: 514, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !682, line: 385, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 385, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1012, file: !682, line: 385, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !967, line: 15, baseType: !298)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1002, file: !14, line: 516, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !682, line: 359, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 359, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1019, file: !682, line: 359, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !967, line: 16, baseType: !298)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1002, file: !14, line: 519, baseType: !1024, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !967, line: 21, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !967, line: 21, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1025, file: !967, line: 21, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !967, line: 14, baseType: !298)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1002, file: !14, line: 521, baseType: !690, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1002, file: !14, line: 522, baseType: !690, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1002, file: !14, line: 528, baseType: !1032, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1002, file: !14, line: 532, baseType: !1034, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1002, file: !14, line: 536, baseType: !938, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !981, file: !14, line: 563, baseType: !1037, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1000, !1001, !13}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !981, file: !14, line: 565, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !1001, !298, !298}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !981, file: !14, line: 567, baseType: !1045, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!298, !951}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !981, file: !14, line: 571, baseType: !997, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !981, file: !14, line: 574, baseType: !997, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !981, file: !14, line: 579, baseType: !1051, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!184, !951, !298, !164, !184, !184}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !981, file: !14, line: 585, baseType: !1055, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!196, !951}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !981, file: !14, line: 615, baseType: !1059, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!690, !951, !298}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !952, file: !692, line: 359, baseType: !298, size: 64, offset: 1216)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !952, file: !692, line: 361, baseType: !326, size: 64, offset: 1280)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !952, file: !692, line: 362, baseType: !164, size: 64, offset: 1344)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !952, file: !692, line: 365, baseType: !741, size: 64, offset: 1408)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !952, file: !692, line: 373, baseType: !1067, offset: 1472)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !692, line: 296, elements: !222)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !948, file: !692, line: 391, baseType: !726, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !948, file: !692, line: 392, baseType: !177, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !948, file: !692, line: 394, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!298, !326, !298, !298, !298, !298}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !948, file: !692, line: 398, baseType: !298, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !948, file: !692, line: 399, baseType: !298, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !948, file: !692, line: 405, baseType: !298, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !948, file: !692, line: 406, baseType: !298, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !948, file: !692, line: 407, baseType: !1079, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !682, line: 286, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 286, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1081, file: !682, line: 286, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !967, line: 18, baseType: !298)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !948, file: !692, line: 416, baseType: !717, size: 32, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !948, file: !692, line: 428, baseType: !717, size: 32, offset: 608)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !948, file: !692, line: 437, baseType: !717, size: 32, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !948, file: !692, line: 447, baseType: !717, size: 32, offset: 672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !948, file: !692, line: 450, baseType: !741, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !948, file: !692, line: 452, baseType: !184, size: 32, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !948, file: !692, line: 454, baseType: !208, offset: 800)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !948, file: !692, line: 457, baseType: !737, size: 256, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !948, file: !692, line: 459, baseType: !170, size: 128, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !948, file: !692, line: 466, baseType: !298, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !948, file: !692, line: 467, baseType: !298, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !948, file: !692, line: 469, baseType: !298, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !948, file: !692, line: 470, baseType: !298, size: 64, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !948, file: !692, line: 471, baseType: !743, size: 64, offset: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !948, file: !692, line: 472, baseType: !298, size: 64, offset: 1536)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !948, file: !692, line: 473, baseType: !298, size: 64, offset: 1600)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !948, file: !692, line: 474, baseType: !298, size: 64, offset: 1664)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !948, file: !692, line: 475, baseType: !298, size: 64, offset: 1728)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !948, file: !692, line: 477, baseType: !208, offset: 1792)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !948, file: !692, line: 478, baseType: !298, size: 64, offset: 1792)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !948, file: !692, line: 478, baseType: !298, size: 64, offset: 1856)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !948, file: !692, line: 478, baseType: !298, size: 64, offset: 1920)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !948, file: !692, line: 478, baseType: !298, size: 64, offset: 1984)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !948, file: !692, line: 479, baseType: !298, size: 64, offset: 2048)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !948, file: !692, line: 479, baseType: !298, size: 64, offset: 2112)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !948, file: !692, line: 479, baseType: !298, size: 64, offset: 2176)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !948, file: !692, line: 480, baseType: !298, size: 64, offset: 2240)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !948, file: !692, line: 480, baseType: !298, size: 64, offset: 2304)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !948, file: !692, line: 480, baseType: !298, size: 64, offset: 2368)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !948, file: !692, line: 480, baseType: !298, size: 64, offset: 2432)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !948, file: !692, line: 482, baseType: !1116, size: 2816, offset: 2496)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 2816, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 44)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !948, file: !692, line: 488, baseType: !1120, size: 256, offset: 5312)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1121, line: 60, size: 256, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1120, file: !1121, line: 61, baseType: !1124, size: 256)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !1125)
!1125 = !{!1126}
!1126 = !DISubrange(count: 4)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !948, file: !692, line: 490, baseType: !1128, size: 64, offset: 5568)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !692, line: 490, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !948, file: !692, line: 493, baseType: !1131, size: 896, offset: 5632)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1132, line: 53, baseType: !1133)
!1132 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1132, line: 13, size: 896, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1141, !1142, !1149, !1150, !1154, !1155, !1156}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1133, file: !1132, line: 18, baseType: !177, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1133, file: !1132, line: 28, baseType: !743, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1133, file: !1132, line: 31, baseType: !737, size: 256, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1133, file: !1132, line: 32, baseType: !1139, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1132, line: 32, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1133, file: !1132, line: 37, baseType: !290, size: 16, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1132, line: 40, baseType: !1143, size: 192, offset: 512)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1144, line: 53, size: 192, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1143, file: !1144, line: 54, baseType: !741, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1143, file: !1144, line: 55, baseType: !208, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1143, file: !1144, line: 59, baseType: !170, size: 128, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1133, file: !1132, line: 41, baseType: !164, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1133, file: !1132, line: 42, baseType: !1151, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1132, line: 42, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1133, file: !1132, line: 44, baseType: !717, size: 32, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1133, file: !1132, line: 50, baseType: !829, size: 16, offset: 864)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1133, file: !1132, line: 51, baseType: !1157, size: 16, offset: 880)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !151, line: 18, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !153, line: 23, baseType: !1159)
!1159 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !692, line: 495, baseType: !298, size: 64, offset: 6528)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !948, file: !692, line: 497, baseType: !1162, size: 64, offset: 6592)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !692, line: 381, size: 384, elements: !1164)
!1164 = !{!1165, !1166, !2265}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1163, file: !692, line: 382, baseType: !717, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1163, file: !692, line: 383, baseType: !1167, size: 128, offset: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !692, line: 376, size: 128, elements: !1168)
!1168 = !{!1169, !2263}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1167, file: !692, line: 377, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1172, line: 640, size: 48640, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1180, !1182, !1183, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1200, !1218, !1229, !1312, !1313, !1314, !1325, !1326, !1328, !1329, !1330, !1331, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1410, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1448, !1450, !1451, !1452, !1464, !1465, !1466, !1467, !1468, !1469, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1493, !1498, !1682, !1683, !1684, !1685, !1689, !1692, !1695, !1698, !1701, !1704, !1805, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1851, !1852, !1853, !1854, !1855, !1860, !1861, !1862, !1865, !1866, !1869, !1872, !1875, !1878, !1921, !1924, !1925, !2004, !2005, !2008, !2009, !2012, !2013, !2014, !2018, !2019, !2020, !2033, !2034, !2035, !2045, !2050, !2053, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1171, file: !1172, line: 646, baseType: !1175, size: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1176, line: 56, size: 128, elements: !1177)
!1176 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1175, file: !1176, line: 57, baseType: !298, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1175, file: !1176, line: 58, baseType: !150, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1171, file: !1172, line: 649, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !163)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1171, file: !1172, line: 657, baseType: !164, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1171, file: !1172, line: 658, baseType: !1184, size: 32, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1185, line: 113, baseType: !1186)
!1185 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1185, line: 111, size: 32, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1186, file: !1185, line: 112, baseType: !717, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1171, file: !1172, line: 660, baseType: !7, size: 32, offset: 288)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1171, file: !1172, line: 661, baseType: !7, size: 32, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1171, file: !1172, line: 684, baseType: !184, size: 32, offset: 352)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1171, file: !1172, line: 686, baseType: !184, size: 32, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1171, file: !1172, line: 687, baseType: !184, size: 32, offset: 416)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1171, file: !1172, line: 688, baseType: !184, size: 32, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1171, file: !1172, line: 689, baseType: !7, size: 32, offset: 480)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1171, file: !1172, line: 691, baseType: !1197, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1172, line: 691, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1171, file: !1172, line: 692, baseType: !1201, size: 832, offset: 576)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1172, line: 451, size: 832, elements: !1202)
!1202 = !{!1203, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1201, file: !1172, line: 453, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1172, line: 325, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1204, file: !1172, line: 326, baseType: !298, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1204, file: !1172, line: 327, baseType: !150, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1201, file: !1172, line: 454, baseType: !730, size: 192, align: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1201, file: !1172, line: 455, baseType: !170, size: 128, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1201, file: !1172, line: 456, baseType: !7, size: 32, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1201, file: !1172, line: 458, baseType: !177, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1201, file: !1172, line: 459, baseType: !177, size: 64, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1201, file: !1172, line: 460, baseType: !177, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1201, file: !1172, line: 461, baseType: !177, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1201, file: !1172, line: 463, baseType: !177, size: 64, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1201, file: !1172, line: 465, baseType: !1217, offset: 832)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1172, line: 415, elements: !222)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1171, file: !1172, line: 693, baseType: !1219, size: 384, offset: 1408)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1172, line: 489, size: 384, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1219, file: !1172, line: 490, baseType: !170, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1219, file: !1172, line: 491, baseType: !298, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1219, file: !1172, line: 492, baseType: !298, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1219, file: !1172, line: 493, baseType: !7, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1219, file: !1172, line: 494, baseType: !290, size: 16, offset: 288)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1219, file: !1172, line: 495, baseType: !290, size: 16, offset: 304)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1219, file: !1172, line: 497, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1171, file: !1172, line: 697, baseType: !1230, size: 1792, offset: 1792)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1172, line: 507, size: 1792, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1309, !1310}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1230, file: !1172, line: 508, baseType: !730, size: 192, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1230, file: !1172, line: 515, baseType: !177, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1230, file: !1172, line: 516, baseType: !177, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1230, file: !1172, line: 517, baseType: !177, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1230, file: !1172, line: 518, baseType: !177, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1230, file: !1172, line: 519, baseType: !177, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1230, file: !1172, line: 526, baseType: !747, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1230, file: !1172, line: 527, baseType: !177, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1230, file: !1172, line: 528, baseType: !7, size: 32, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1230, file: !1172, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1230, file: !1172, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1230, file: !1172, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1230, file: !1172, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1230, file: !1172, line: 563, baseType: !1246, size: 512, offset: 704)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1247)
!1247 = !{!1248, !1256, !1257, !1262, !1305, !1306, !1307, !1308}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1246, file: !20, line: 119, baseType: !1249, size: 256)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1250, line: 9, size: 256, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1249, file: !1250, line: 10, baseType: !730, size: 192, align: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1249, file: !1250, line: 11, baseType: !1254, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1255, line: 29, baseType: !747)
!1255 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1246, file: !20, line: 120, baseType: !1254, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1246, file: !20, line: 121, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!19, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1246, file: !20, line: 122, baseType: !1263, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1265)
!1265 = !{!1266, !1286, !1287, !1290, !1295, !1296, !1300, !1304}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1264, file: !20, line: 160, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1268, file: !20, line: 215, baseType: !750)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1268, file: !20, line: 216, baseType: !7, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1268, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1268, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1268, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1268, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1268, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1268, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1268, file: !20, line: 233, baseType: !1254, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1268, file: !20, line: 234, baseType: !1261, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1268, file: !20, line: 235, baseType: !1254, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1268, file: !20, line: 236, baseType: !1261, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1268, file: !20, line: 237, baseType: !1283, size: 4096, offset: 512)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1264, size: 4096, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 8)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1264, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1264, file: !20, line: 162, baseType: !1288, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !171, line: 27, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !282, line: 96, baseType: !184)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1264, file: !20, line: 163, baseType: !1291, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !362, line: 276, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !362, line: 276, size: 32, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1292, file: !362, line: 276, baseType: !366, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1264, file: !20, line: 164, baseType: !1261, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1264, file: !20, line: 165, baseType: !1297, size: 128, offset: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1250, line: 14, size: 128, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1297, file: !1250, line: 15, baseType: !722, size: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1264, file: !20, line: 166, baseType: !1301, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1254}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1264, file: !20, line: 167, baseType: !1254, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1246, file: !20, line: 123, baseType: !156, size: 8, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1246, file: !20, line: 124, baseType: !156, size: 8, offset: 456)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1246, file: !20, line: 125, baseType: !156, size: 8, offset: 464)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1246, file: !20, line: 126, baseType: !156, size: 8, offset: 472)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1230, file: !1172, line: 572, baseType: !1246, size: 512, offset: 1216)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1230, file: !1172, line: 580, baseType: !1311, size: 64, offset: 1728)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1171, file: !1172, line: 721, baseType: !7, size: 32, offset: 3584)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1171, file: !1172, line: 722, baseType: !184, size: 32, offset: 3616)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1171, file: !1172, line: 723, baseType: !1315, size: 64, offset: 3648)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1318, line: 17, baseType: !1319)
!1318 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1318, line: 17, size: 64, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1319, file: !1318, line: 17, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 64, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 1)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1171, file: !1172, line: 724, baseType: !1317, size: 64, offset: 3712)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1171, file: !1172, line: 749, baseType: !1327, offset: 3776)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1172, line: 290, elements: !222)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1171, file: !1172, line: 751, baseType: !170, size: 128, offset: 3776)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1171, file: !1172, line: 757, baseType: !944, size: 64, offset: 3904)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1171, file: !1172, line: 758, baseType: !944, size: 64, offset: 3968)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1171, file: !1172, line: 761, baseType: !1332, size: 320, offset: 4032)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1121, line: 34, size: 320, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1332, file: !1121, line: 35, baseType: !177, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1332, file: !1121, line: 36, baseType: !1336, size: 256, offset: 64)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 256, elements: !1125)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1171, file: !1172, line: 766, baseType: !184, size: 32, offset: 4352)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1171, file: !1172, line: 767, baseType: !184, size: 32, offset: 4384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1171, file: !1172, line: 768, baseType: !184, size: 32, offset: 4416)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1171, file: !1172, line: 770, baseType: !184, size: 32, offset: 4448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1171, file: !1172, line: 772, baseType: !298, size: 64, offset: 4480)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1171, file: !1172, line: 775, baseType: !7, size: 32, offset: 4544)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1171, file: !1172, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1171, file: !1172, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1171, file: !1172, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1171, file: !1172, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1171, file: !1172, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1171, file: !1172, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1171, file: !1172, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1171, file: !1172, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1171, file: !1172, line: 831, baseType: !298, size: 64, offset: 4672)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1171, file: !1172, line: 833, baseType: !1353, size: 384, offset: 4736)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1354)
!1354 = !{!1355, !1360}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1353, file: !25, line: 26, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!163, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1353, file: !25, line: 27, baseType: !1361, size: 320, offset: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1353, file: !25, line: 27, size: 320, elements: !1362)
!1362 = !{!1363, !1373, !1400}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1361, file: !25, line: 36, baseType: !1364, size: 320)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !25, line: 29, size: 320, elements: !1365)
!1365 = !{!1366, !1368, !1369, !1370, !1371, !1372}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1364, file: !25, line: 30, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1364, file: !25, line: 31, baseType: !150, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !25, line: 32, baseType: !150, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1364, file: !25, line: 33, baseType: !150, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1364, file: !25, line: 34, baseType: !177, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1364, file: !25, line: 35, baseType: !1367, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1361, file: !25, line: 46, baseType: !1374, size: 192)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !25, line: 38, size: 192, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1399}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1374, file: !25, line: 39, baseType: !1288, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1374, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !25, line: 41, baseType: !1379, size: 64, offset: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !25, line: 41, size: 64, elements: !1380)
!1380 = !{!1381, !1389}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1379, file: !25, line: 42, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1384, line: 7, size: 128, elements: !1385)
!1384 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1383, file: !1384, line: 8, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !282, line: 93, baseType: !499)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1383, file: !1384, line: 9, baseType: !499, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1379, file: !25, line: 43, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1392, line: 7, size: 64, elements: !1393)
!1392 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1393 = !{!1394, !1398}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1391, file: !1392, line: 8, baseType: !1395, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1392, line: 5, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !151, line: 20, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !153, line: 26, baseType: !184)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1391, file: !1392, line: 9, baseType: !1396, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1374, file: !25, line: 45, baseType: !177, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1361, file: !25, line: 54, baseType: !1401, size: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !25, line: 48, size: 256, elements: !1402)
!1402 = !{!1403, !1406, !1407, !1408, !1409}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1401, file: !25, line: 49, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1401, file: !25, line: 50, baseType: !184, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1401, file: !25, line: 51, baseType: !184, size: 32, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1401, file: !25, line: 52, baseType: !298, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1401, file: !25, line: 53, baseType: !298, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1171, file: !1172, line: 835, baseType: !1411, size: 32, offset: 5120)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !171, line: 22, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !282, line: 28, baseType: !184)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1171, file: !1172, line: 836, baseType: !1411, size: 32, offset: 5152)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1171, file: !1172, line: 840, baseType: !298, size: 64, offset: 5184)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1171, file: !1172, line: 849, baseType: !1170, size: 64, offset: 5248)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1171, file: !1172, line: 852, baseType: !1170, size: 64, offset: 5312)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1171, file: !1172, line: 857, baseType: !170, size: 128, offset: 5376)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1171, file: !1172, line: 858, baseType: !170, size: 128, offset: 5504)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1171, file: !1172, line: 859, baseType: !1170, size: 64, offset: 5632)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1171, file: !1172, line: 867, baseType: !170, size: 128, offset: 5696)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1171, file: !1172, line: 868, baseType: !170, size: 128, offset: 5824)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1171, file: !1172, line: 871, baseType: !1423, size: 64, offset: 5952)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1431, !1432, !1439, !1440}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1424, file: !53, line: 61, baseType: !1184, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1424, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1424, file: !53, line: 63, baseType: !208, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1424, file: !53, line: 65, baseType: !1430, size: 256, offset: 64)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !1125)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1424, file: !53, line: 66, baseType: !604, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1424, file: !53, line: 68, baseType: !1433, size: 128, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1434, line: 40, baseType: !1435)
!1434 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1434, line: 36, size: 128, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1434, line: 37, baseType: !208)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1435, file: !1434, line: 38, baseType: !170, size: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1424, file: !53, line: 69, baseType: !339, size: 128, align: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1424, file: !53, line: 70, baseType: !1441, size: 128, offset: 640)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 128, elements: !1323)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1442, file: !53, line: 55, baseType: !184, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1442, file: !53, line: 56, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1171, file: !1172, line: 872, baseType: !1449, size: 512, offset: 6016)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1125)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1171, file: !1172, line: 873, baseType: !170, size: 128, offset: 6528)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1171, file: !1172, line: 874, baseType: !170, size: 128, offset: 6656)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1171, file: !1172, line: 876, baseType: !1453, size: 64, offset: 6784)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1455, line: 26, size: 192, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1454, file: !1455, line: 27, baseType: !7, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1454, file: !1455, line: 28, baseType: !1459, size: 128, offset: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1460, line: 43, size: 128, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1459, file: !1460, line: 44, baseType: !750)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1459, file: !1460, line: 45, baseType: !170, size: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1171, file: !1172, line: 879, baseType: !674, size: 64, offset: 6848)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1171, file: !1172, line: 882, baseType: !674, size: 64, offset: 6912)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1171, file: !1172, line: 884, baseType: !177, size: 64, offset: 6976)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1171, file: !1172, line: 885, baseType: !177, size: 64, offset: 7040)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1171, file: !1172, line: 890, baseType: !177, size: 64, offset: 7104)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1171, file: !1172, line: 891, baseType: !1470, size: 128, offset: 7168)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1172, line: 242, size: 128, elements: !1471)
!1471 = !{!1472, !1473, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1470, file: !1172, line: 244, baseType: !177, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1470, file: !1172, line: 245, baseType: !177, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1470, file: !1172, line: 246, baseType: !750, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1171, file: !1172, line: 900, baseType: !298, size: 64, offset: 7296)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1171, file: !1172, line: 901, baseType: !298, size: 64, offset: 7360)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1171, file: !1172, line: 904, baseType: !177, size: 64, offset: 7424)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1171, file: !1172, line: 907, baseType: !177, size: 64, offset: 7488)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1171, file: !1172, line: 910, baseType: !298, size: 64, offset: 7552)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1171, file: !1172, line: 911, baseType: !298, size: 64, offset: 7616)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1171, file: !1172, line: 914, baseType: !1482, size: 640, offset: 7680)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1483, line: 123, size: 640, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1491, !1492}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1482, file: !1483, line: 124, baseType: !1486, size: 576)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1487, size: 576, elements: !250)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1483, line: 108, size: 192, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1487, file: !1483, line: 109, baseType: !177, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1487, file: !1483, line: 110, baseType: !1297, size: 128, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1482, file: !1483, line: 125, baseType: !7, size: 32, offset: 576)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1482, file: !1483, line: 126, baseType: !7, size: 32, offset: 608)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1171, file: !1172, line: 917, baseType: !1494, size: 192, offset: 8320)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1483, line: 134, size: 192, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1494, file: !1483, line: 135, baseType: !339, size: 128, align: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1494, file: !1483, line: 136, baseType: !7, size: 32, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1171, file: !1172, line: 923, baseType: !1499, size: 64, offset: 8512)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1502, line: 111, size: 1280, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1523, !1524, !1525, !1526, !1527, !1528, !1635, !1636, !1637, !1638, !1664, !1667, !1677}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1501, file: !1502, line: 112, baseType: !717, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1501, file: !1502, line: 120, baseType: !401, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1501, file: !1502, line: 121, baseType: !409, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1501, file: !1502, line: 122, baseType: !401, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1501, file: !1502, line: 123, baseType: !409, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1501, file: !1502, line: 124, baseType: !401, size: 32, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1501, file: !1502, line: 125, baseType: !409, size: 32, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1501, file: !1502, line: 126, baseType: !401, size: 32, offset: 224)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1501, file: !1502, line: 127, baseType: !409, size: 32, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1501, file: !1502, line: 128, baseType: !7, size: 32, offset: 288)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1501, file: !1502, line: 129, baseType: !1515, size: 64, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1516, line: 26, baseType: !1517)
!1516 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1516, line: 24, size: 64, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1517, file: !1516, line: 25, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1521)
!1521 = !{!1522}
!1522 = !DISubrange(count: 2)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1501, file: !1502, line: 130, baseType: !1515, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1501, file: !1502, line: 131, baseType: !1515, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1501, file: !1502, line: 132, baseType: !1515, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1501, file: !1502, line: 133, baseType: !1515, size: 64, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1501, file: !1502, line: 135, baseType: !158, size: 8, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1501, file: !1502, line: 137, baseType: !1529, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1531, line: 189, size: 1664, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !{!1533, !1534, !1537, !1542, !1543, !1546, !1547, !1552, !1553, !1554, !1555, !1557, !1558, !1559, !1560, !1561, !1599, !1620}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1530, file: !1531, line: 190, baseType: !1184, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1530, file: !1531, line: 191, baseType: !1535, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1531, line: 28, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !171, line: 98, baseType: !1396)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 192, baseType: !1538, size: 192, offset: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 192, size: 192, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1538, file: !1531, line: 193, baseType: !170, size: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1538, file: !1531, line: 194, baseType: !730, size: 192, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1530, file: !1531, line: 199, baseType: !737, size: 256, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1530, file: !1531, line: 200, baseType: !1544, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1531, line: 200, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1530, file: !1531, line: 201, baseType: !164, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 202, baseType: !1548, size: 64, offset: 640)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 202, size: 64, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1548, file: !1531, line: 203, baseType: !505, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1548, file: !1531, line: 204, baseType: !505, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1530, file: !1531, line: 206, baseType: !505, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1530, file: !1531, line: 207, baseType: !401, size: 32, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1530, file: !1531, line: 208, baseType: !409, size: 32, offset: 800)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1530, file: !1531, line: 209, baseType: !1556, size: 32, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1531, line: 31, baseType: !525)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1530, file: !1531, line: 210, baseType: !290, size: 16, offset: 864)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1530, file: !1531, line: 211, baseType: !290, size: 16, offset: 880)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1530, file: !1531, line: 215, baseType: !1159, size: 16, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1531, line: 222, baseType: !298, size: 64, offset: 960)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 239, baseType: !1562, size: 320, offset: 1024)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 239, size: 320, elements: !1563)
!1563 = !{!1564, !1591}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1562, file: !1531, line: 240, baseType: !1565, size: 320)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1531, line: 108, size: 320, elements: !1566)
!1566 = !{!1567, !1568, !1580, !1583, !1590}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1565, file: !1531, line: 110, baseType: !298, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !1531, line: 111, baseType: !1569, size: 64, offset: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !1531, line: 111, size: 64, elements: !1570)
!1570 = !{!1571, !1579}
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !1531, line: 112, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !1531, line: 112, size: 64, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1572, file: !1531, line: 114, baseType: !829, size: 16)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1572, file: !1531, line: 115, baseType: !1576, size: 48, offset: 16)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 48, elements: !1577)
!1577 = !{!1578}
!1578 = !DISubrange(count: 6)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1569, file: !1531, line: 121, baseType: !298, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1565, file: !1531, line: 123, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1531, line: 96, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1565, file: !1531, line: 124, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1531, line: 102, size: 192, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1585, file: !1531, line: 103, baseType: !339, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1585, file: !1531, line: 104, baseType: !1184, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1585, file: !1531, line: 105, baseType: !456, size: 8, offset: 160)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1565, file: !1531, line: 125, baseType: !196, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1531, line: 241, baseType: !1592, size: 320)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !1531, line: 241, size: 320, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1597, !1598}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1592, file: !1531, line: 242, baseType: !298, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1592, file: !1531, line: 243, baseType: !298, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1592, file: !1531, line: 244, baseType: !1581, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1592, file: !1531, line: 245, baseType: !1584, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1592, file: !1531, line: 246, baseType: !249, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 254, baseType: !1600, size: 256, offset: 1344)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 254, size: 256, elements: !1601)
!1601 = !{!1602, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1600, file: !1531, line: 255, baseType: !1603, size: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1531, line: 128, size: 256, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1603, file: !1531, line: 129, baseType: !164, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1603, file: !1531, line: 130, baseType: !1607, size: 256)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !1125)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !1531, line: 256, baseType: !1609, size: 256)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1531, line: 256, size: 256, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1609, file: !1531, line: 258, baseType: !170, size: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1609, file: !1531, line: 259, baseType: !1613, size: 128, offset: 128)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1614, line: 22, size: 128, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1615 = !{!1616, !1619}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1613, file: !1614, line: 23, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1614, line: 23, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1613, file: !1614, line: 24, baseType: !298, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1530, file: !1531, line: 274, baseType: !1621, size: 64, offset: 1600)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1531, line: 170, size: 192, elements: !1623)
!1623 = !{!1624, !1633, !1634}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1622, file: !1531, line: 171, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1531, line: 165, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!184, !1529, !1629, !1631, !1529}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1622, file: !1531, line: 172, baseType: !1529, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1622, file: !1531, line: 173, baseType: !1581, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1501, file: !1502, line: 138, baseType: !1529, size: 64, offset: 768)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1501, file: !1502, line: 139, baseType: !1529, size: 64, offset: 832)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1501, file: !1502, line: 140, baseType: !1529, size: 64, offset: 896)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1501, file: !1502, line: 145, baseType: !1639, size: 64, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1641, line: 13, size: 896, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1640, file: !1641, line: 14, baseType: !1184, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1640, file: !1641, line: 15, baseType: !717, size: 32, offset: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1640, file: !1641, line: 16, baseType: !717, size: 32, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1640, file: !1641, line: 21, baseType: !741, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1640, file: !1641, line: 27, baseType: !298, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1640, file: !1641, line: 28, baseType: !298, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1640, file: !1641, line: 29, baseType: !741, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1640, file: !1641, line: 32, baseType: !608, size: 128, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1640, file: !1641, line: 33, baseType: !401, size: 32, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1640, file: !1641, line: 37, baseType: !741, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1640, file: !1641, line: 44, baseType: !1654, size: 256, offset: 640)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1655, line: 15, size: 256, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1654, file: !1655, line: 16, baseType: !750)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1654, file: !1655, line: 18, baseType: !184, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1654, file: !1655, line: 19, baseType: !184, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1654, file: !1655, line: 20, baseType: !184, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1654, file: !1655, line: 21, baseType: !184, size: 32, offset: 96)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1654, file: !1655, line: 22, baseType: !298, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !1655, line: 23, baseType: !298, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1501, file: !1502, line: 146, baseType: !1665, size: 64, offset: 1024)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !402, line: 18, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1501, file: !1502, line: 147, baseType: !1668, size: 64, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1502, line: 25, size: 64, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1669, file: !1502, line: 26, baseType: !717, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1669, file: !1502, line: 27, baseType: !184, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1669, file: !1502, line: 28, baseType: !1674, offset: 64)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, elements: !1675)
!1675 = !{!1676}
!1676 = !DISubrange(count: 0)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1502, line: 149, baseType: !1678, size: 128, offset: 1152)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !1502, line: 149, size: 128, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1678, file: !1502, line: 150, baseType: !184, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1678, file: !1502, line: 151, baseType: !339, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1171, file: !1172, line: 926, baseType: !1499, size: 64, offset: 8576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1171, file: !1172, line: 929, baseType: !1499, size: 64, offset: 8640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1171, file: !1172, line: 933, baseType: !1529, size: 64, offset: 8704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1171, file: !1172, line: 943, baseType: !1686, size: 128, offset: 8768)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 16)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1171, file: !1172, line: 945, baseType: !1690, size: 64, offset: 8896)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1172, line: 49, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1171, file: !1172, line: 956, baseType: !1693, size: 64, offset: 8960)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1172, line: 45, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1171, file: !1172, line: 959, baseType: !1696, size: 64, offset: 9024)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1172, line: 959, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1171, file: !1172, line: 962, baseType: !1699, size: 64, offset: 9088)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1172, line: 66, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1171, file: !1172, line: 966, baseType: !1702, size: 64, offset: 9152)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1172, line: 50, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1171, file: !1172, line: 969, baseType: !1705, size: 64, offset: 9216)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1707, line: 82, size: 7296, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1744, !1753, !1754, !1756, !1757, !1758, !1761, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1791, !1792, !1799, !1800, !1801, !1802, !1803, !1804}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1706, file: !1707, line: 83, baseType: !1184, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1706, file: !1707, line: 84, baseType: !717, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1706, file: !1707, line: 85, baseType: !184, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1706, file: !1707, line: 86, baseType: !170, size: 128, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1706, file: !1707, line: 88, baseType: !1433, size: 128, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1706, file: !1707, line: 91, baseType: !1170, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1706, file: !1707, line: 94, baseType: !1716, size: 192, offset: 448)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1717, line: 30, size: 192, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1716, file: !1717, line: 31, baseType: !170, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1716, file: !1717, line: 32, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1722, line: 25, baseType: !1723)
!1722 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 23, size: 64, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1723, file: !1722, line: 24, baseType: !1322, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1706, file: !1707, line: 97, baseType: !604, size: 64, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1706, file: !1707, line: 100, baseType: !184, size: 32, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1706, file: !1707, line: 106, baseType: !184, size: 32, offset: 736)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1706, file: !1707, line: 107, baseType: !1170, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1706, file: !1707, line: 110, baseType: !184, size: 32, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1707, line: 111, baseType: !7, size: 32, offset: 864)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1706, file: !1707, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1706, file: !1707, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1706, file: !1707, line: 128, baseType: !184, size: 32, offset: 928)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1706, file: !1707, line: 129, baseType: !170, size: 128, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1706, file: !1707, line: 132, baseType: !1246, size: 512, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1706, file: !1707, line: 133, baseType: !1254, size: 64, offset: 1600)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1706, file: !1707, line: 140, baseType: !1739, size: 256, offset: 1664)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, size: 256, elements: !1521)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1707, line: 38, size: 128, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1740, file: !1707, line: 39, baseType: !177, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1740, file: !1707, line: 40, baseType: !177, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1706, file: !1707, line: 146, baseType: !1745, size: 192, offset: 1920)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1707, line: 66, size: 192, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1745, file: !1707, line: 67, baseType: !1748, size: 192)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1707, line: 47, size: 192, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1748, file: !1707, line: 48, baseType: !743, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1748, file: !1707, line: 49, baseType: !743, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1748, file: !1707, line: 50, baseType: !743, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1706, file: !1707, line: 150, baseType: !1482, size: 640, offset: 2112)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1706, file: !1707, line: 153, baseType: !1755, size: 256, offset: 2752)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 256, elements: !1125)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1706, file: !1707, line: 159, baseType: !1423, size: 64, offset: 3008)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1706, file: !1707, line: 162, baseType: !184, size: 32, offset: 3072)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1706, file: !1707, line: 164, baseType: !1759, size: 64, offset: 3136)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1707, line: 164, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1706, file: !1707, line: 175, baseType: !1762, size: 32, offset: 3200)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !362, line: 805, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 798, size: 32, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1763, file: !362, line: 803, baseType: !361, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !362, line: 804, baseType: !208, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1706, file: !1707, line: 176, baseType: !177, size: 64, offset: 3264)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1706, file: !1707, line: 176, baseType: !177, size: 64, offset: 3328)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1706, file: !1707, line: 176, baseType: !177, size: 64, offset: 3392)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1706, file: !1707, line: 176, baseType: !177, size: 64, offset: 3456)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1706, file: !1707, line: 177, baseType: !177, size: 64, offset: 3520)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1706, file: !1707, line: 178, baseType: !177, size: 64, offset: 3584)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1706, file: !1707, line: 179, baseType: !1470, size: 128, offset: 3648)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1706, file: !1707, line: 180, baseType: !298, size: 64, offset: 3776)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1706, file: !1707, line: 180, baseType: !298, size: 64, offset: 3840)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1706, file: !1707, line: 180, baseType: !298, size: 64, offset: 3904)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1706, file: !1707, line: 180, baseType: !298, size: 64, offset: 3968)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1706, file: !1707, line: 181, baseType: !298, size: 64, offset: 4032)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1706, file: !1707, line: 181, baseType: !298, size: 64, offset: 4096)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1706, file: !1707, line: 181, baseType: !298, size: 64, offset: 4160)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1706, file: !1707, line: 181, baseType: !298, size: 64, offset: 4224)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1706, file: !1707, line: 182, baseType: !298, size: 64, offset: 4288)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1706, file: !1707, line: 182, baseType: !298, size: 64, offset: 4352)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1706, file: !1707, line: 182, baseType: !298, size: 64, offset: 4416)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1706, file: !1707, line: 182, baseType: !298, size: 64, offset: 4480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1706, file: !1707, line: 183, baseType: !298, size: 64, offset: 4544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1706, file: !1707, line: 183, baseType: !298, size: 64, offset: 4608)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1706, file: !1707, line: 184, baseType: !1789, offset: 4672)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1790, line: 12, elements: !222)
!1790 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1706, file: !1707, line: 192, baseType: !179, size: 64, offset: 4672)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1706, file: !1707, line: 203, baseType: !1793, size: 2048, offset: 4736)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 2048, elements: !1687)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1795, line: 43, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1794, file: !1795, line: 44, baseType: !297, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1794, file: !1795, line: 45, baseType: !297, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1706, file: !1707, line: 220, baseType: !456, size: 8, offset: 6784)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1706, file: !1707, line: 221, baseType: !1159, size: 16, offset: 6800)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1706, file: !1707, line: 222, baseType: !1159, size: 16, offset: 6816)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1706, file: !1707, line: 224, baseType: !944, size: 64, offset: 6848)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1706, file: !1707, line: 227, baseType: !1143, size: 192, offset: 6912)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1706, file: !1707, line: 233, baseType: !1143, size: 192, offset: 7104)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1171, file: !1172, line: 970, baseType: !1806, size: 64, offset: 9280)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1707, line: 20, size: 16576, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1807, file: !1707, line: 21, baseType: !208)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1807, file: !1707, line: 22, baseType: !1184, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1807, file: !1707, line: 23, baseType: !1433, size: 128, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1807, file: !1707, line: 24, baseType: !1813, size: 16384, offset: 192)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 16384, elements: !254)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1717, line: 49, size: 256, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1814, file: !1717, line: 50, baseType: !1817, size: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1717, line: 35, size: 256, elements: !1818)
!1818 = !{!1819, !1826, !1827, !1833}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1817, file: !1717, line: 37, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1821, line: 19, baseType: !1822)
!1821 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1821, line: 18, baseType: !1824)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !184}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1817, file: !1717, line: 38, baseType: !298, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1817, file: !1717, line: 44, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1821, line: 22, baseType: !1829)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1821, line: 21, baseType: !1831)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1817, file: !1717, line: 46, baseType: !1721, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1171, file: !1172, line: 971, baseType: !1721, size: 64, offset: 9344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1171, file: !1172, line: 972, baseType: !1721, size: 64, offset: 9408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1171, file: !1172, line: 974, baseType: !1721, size: 64, offset: 9472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1171, file: !1172, line: 975, baseType: !1716, size: 192, offset: 9536)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1171, file: !1172, line: 976, baseType: !298, size: 64, offset: 9728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1171, file: !1172, line: 977, baseType: !295, size: 64, offset: 9792)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1171, file: !1172, line: 978, baseType: !7, size: 32, offset: 9856)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1171, file: !1172, line: 980, baseType: !342, size: 64, offset: 9920)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1171, file: !1172, line: 989, baseType: !1843, size: 128, offset: 9984)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1844, line: 35, size: 128, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !{!1846, !1847, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1843, file: !1844, line: 36, baseType: !184, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1843, file: !1844, line: 37, baseType: !717, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1843, file: !1844, line: 38, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1844, line: 23, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1171, file: !1172, line: 992, baseType: !177, size: 64, offset: 10112)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1171, file: !1172, line: 993, baseType: !177, size: 64, offset: 10176)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1171, file: !1172, line: 996, baseType: !208, offset: 10240)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1171, file: !1172, line: 999, baseType: !750, offset: 10240)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1171, file: !1172, line: 1001, baseType: !1856, size: 64, offset: 10240)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1172, line: 636, size: 64, elements: !1857)
!1857 = !{!1858}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1856, file: !1172, line: 637, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1171, file: !1172, line: 1005, baseType: !722, size: 128, offset: 10304)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1171, file: !1172, line: 1007, baseType: !1170, size: 64, offset: 10432)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1171, file: !1172, line: 1009, baseType: !1863, size: 64, offset: 10496)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1172, line: 1009, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1171, file: !1172, line: 1043, baseType: !164, size: 64, offset: 10560)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1171, file: !1172, line: 1046, baseType: !1867, size: 64, offset: 10624)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1172, line: 41, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1171, file: !1172, line: 1050, baseType: !1870, size: 64, offset: 10688)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1172, line: 42, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1171, file: !1172, line: 1054, baseType: !1873, size: 64, offset: 10752)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1172, line: 55, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1171, file: !1172, line: 1056, baseType: !1876, size: 64, offset: 10816)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1172, line: 40, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1171, file: !1172, line: 1058, baseType: !1879, size: 64, offset: 10880)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1881, line: 99, size: 704, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1908, !1909}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1880, file: !1881, line: 100, baseType: !741, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1880, file: !1881, line: 101, baseType: !717, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1880, file: !1881, line: 102, baseType: !717, size: 32, offset: 96)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1880, file: !1881, line: 105, baseType: !208, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1880, file: !1881, line: 107, baseType: !290, size: 16, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1880, file: !1881, line: 109, baseType: !708, size: 128, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1880, file: !1881, line: 110, baseType: !1890, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1881, line: 73, size: 448, elements: !1892)
!1892 = !{!1893, !1896, !1897, !1902, !1907}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1891, file: !1881, line: 74, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1881, line: 74, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1891, file: !1881, line: 75, baseType: !1879, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1881, line: 83, baseType: !1898, size: 128, offset: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1881, line: 83, size: 128, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1898, file: !1881, line: 84, baseType: !170, size: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1898, file: !1881, line: 85, baseType: !905, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1881, line: 87, baseType: !1903, size: 128, offset: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1881, line: 87, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1903, file: !1881, line: 88, baseType: !608, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1903, file: !1881, line: 89, baseType: !339, size: 128, align: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !1881, line: 92, baseType: !7, size: 32, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1880, file: !1881, line: 111, baseType: !604, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1880, file: !1881, line: 113, baseType: !1910, size: 256, offset: 448)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1911, line: 102, size: 256, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1910, file: !1911, line: 103, baseType: !741, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1910, file: !1911, line: 104, baseType: !170, size: 128, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1910, file: !1911, line: 105, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1911, line: 21, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1171, file: !1172, line: 1061, baseType: !1922, size: 64, offset: 10944)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1172, line: 43, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1171, file: !1172, line: 1064, baseType: !298, size: 64, offset: 11008)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1171, file: !1172, line: 1065, baseType: !1926, size: 64, offset: 11072)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1717, line: 14, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1717, line: 12, size: 384, elements: !1929)
!1929 = !{!1930}
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1928, file: !1717, line: 13, baseType: !1931, size: 384)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1928, file: !1717, line: 13, size: 384, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1931, file: !1717, line: 13, baseType: !184, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1931, file: !1717, line: 13, baseType: !184, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1931, file: !1717, line: 13, baseType: !184, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1931, file: !1717, line: 13, baseType: !1937, size: 256, offset: 128)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1938, line: 32, size: 256, elements: !1939)
!1938 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1945, !1958, !1964, !1973, !1993, !1998}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1937, file: !1938, line: 37, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 34, size: 64, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1941, file: !1938, line: 35, baseType: !1412, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1941, file: !1938, line: 36, baseType: !407, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1937, file: !1938, line: 45, baseType: !1946, size: 192)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 40, size: 192, elements: !1947)
!1947 = !{!1948, !1950, !1951, !1957}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1946, file: !1938, line: 41, baseType: !1949, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !282, line: 95, baseType: !184)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1946, file: !1938, line: 42, baseType: !184, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1946, file: !1938, line: 43, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1938, line: 11, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1938, line: 8, size: 64, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1953, file: !1938, line: 9, baseType: !184, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1953, file: !1938, line: 10, baseType: !164, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1946, file: !1938, line: 44, baseType: !184, size: 32, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1937, file: !1938, line: 52, baseType: !1959, size: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 48, size: 128, elements: !1960)
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1959, file: !1938, line: 49, baseType: !1412, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1959, file: !1938, line: 50, baseType: !407, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1959, file: !1938, line: 51, baseType: !1952, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1937, file: !1938, line: 61, baseType: !1965, size: 256)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 55, size: 256, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1972}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1965, file: !1938, line: 56, baseType: !1412, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1965, file: !1938, line: 57, baseType: !407, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1965, file: !1938, line: 58, baseType: !184, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1965, file: !1938, line: 59, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !282, line: 94, baseType: !283)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1965, file: !1938, line: 60, baseType: !1971, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1937, file: !1938, line: 95, baseType: !1974, size: 256)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 64, size: 256, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1974, file: !1938, line: 65, baseType: !164, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1938, line: 77, baseType: !1978, size: 192, offset: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !1938, line: 77, size: 192, elements: !1979)
!1979 = !{!1980, !1981, !1988}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1978, file: !1938, line: 82, baseType: !1159, size: 16)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1978, file: !1938, line: 88, baseType: !1982, size: 192)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1978, file: !1938, line: 84, size: 192, elements: !1983)
!1983 = !{!1984, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1982, file: !1938, line: 85, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !1284)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1982, file: !1938, line: 86, baseType: !164, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1982, file: !1938, line: 87, baseType: !164, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1978, file: !1938, line: 93, baseType: !1989, size: 96)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1978, file: !1938, line: 90, size: 96, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1989, file: !1938, line: 91, baseType: !1985, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1989, file: !1938, line: 92, baseType: !152, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1937, file: !1938, line: 101, baseType: !1994, size: 128)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 98, size: 128, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1994, file: !1938, line: 99, baseType: !163, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1994, file: !1938, line: 100, baseType: !184, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1937, file: !1938, line: 108, baseType: !1999, size: 128)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1938, line: 104, size: 128, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1999, file: !1938, line: 105, baseType: !164, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1999, file: !1938, line: 106, baseType: !184, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1999, file: !1938, line: 107, baseType: !7, size: 32, offset: 96)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1171, file: !1172, line: 1067, baseType: !1789, offset: 11136)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1171, file: !1172, line: 1099, baseType: !2006, size: 64, offset: 11136)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1172, line: 56, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1171, file: !1172, line: 1103, baseType: !170, size: 128, offset: 11200)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1171, file: !1172, line: 1104, baseType: !2010, size: 64, offset: 11328)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1172, line: 46, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1171, file: !1172, line: 1105, baseType: !1143, size: 192, offset: 11392)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1171, file: !1172, line: 1106, baseType: !7, size: 32, offset: 11584)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1171, file: !1172, line: 1109, baseType: !2015, size: 128, offset: 11648)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 128, elements: !1521)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1172, line: 51, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1171, file: !1172, line: 1110, baseType: !1143, size: 192, offset: 11776)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1171, file: !1172, line: 1111, baseType: !170, size: 128, offset: 11968)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1171, file: !1172, line: 1173, baseType: !2021, size: 64, offset: 12096)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2023, line: 62, size: 256, align: 256, elements: !2024)
!2023 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2026, !2027, !2032}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2022, file: !2023, line: 75, baseType: !152, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2022, file: !2023, line: 90, baseType: !152, size: 32, offset: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2022, file: !2023, line: 124, baseType: !2028, size: 64, offset: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !2023, line: 109, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2028, file: !2023, line: 110, baseType: !178, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2028, file: !2023, line: 112, baseType: !178, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2022, file: !2023, line: 144, baseType: !152, size: 32, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1171, file: !1172, line: 1174, baseType: !150, size: 32, offset: 12160)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1171, file: !1172, line: 1179, baseType: !298, size: 64, offset: 12224)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1171, file: !1172, line: 1182, baseType: !2036, size: 128, offset: 12288)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1121, line: 76, size: 128, elements: !2037)
!2037 = !{!2038, !2043, !2044}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2036, file: !1121, line: 85, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2040, line: 7, size: 64, elements: !2041)
!2040 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2039, file: !2040, line: 12, baseType: !1319, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2036, file: !1121, line: 88, baseType: !456, size: 8, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2036, file: !1121, line: 95, baseType: !456, size: 8, offset: 72)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !1172, line: 1184, baseType: !2046, size: 128, offset: 12416)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !1172, line: 1184, size: 128, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2046, file: !1172, line: 1185, baseType: !1184, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2046, file: !1172, line: 1186, baseType: !339, size: 128, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1171, file: !1172, line: 1190, baseType: !2051, size: 64, offset: 12544)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1172, line: 53, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1171, file: !1172, line: 1192, baseType: !2054, size: 128, offset: 12608)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1121, line: 64, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2054, file: !1121, line: 65, baseType: !690, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2054, file: !1121, line: 67, baseType: !152, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2054, file: !1121, line: 68, baseType: !152, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1171, file: !1172, line: 1206, baseType: !184, size: 32, offset: 12736)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1171, file: !1172, line: 1207, baseType: !184, size: 32, offset: 12768)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1171, file: !1172, line: 1209, baseType: !298, size: 64, offset: 12800)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1171, file: !1172, line: 1219, baseType: !177, size: 64, offset: 12864)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1171, file: !1172, line: 1220, baseType: !177, size: 64, offset: 12928)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1171, file: !1172, line: 1317, baseType: !184, size: 32, offset: 12992)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1171, file: !1172, line: 1319, baseType: !1170, size: 64, offset: 13056)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1171, file: !1172, line: 1322, baseType: !2067, size: 64, offset: 13120)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2069, line: 56, size: 512, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2068, file: !2069, line: 57, baseType: !2067, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2068, file: !2069, line: 58, baseType: !164, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2068, file: !2069, line: 59, baseType: !298, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !2069, line: 60, baseType: !298, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2068, file: !2069, line: 61, baseType: !790, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2068, file: !2069, line: 62, baseType: !7, size: 32, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2068, file: !2069, line: 63, baseType: !2078, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !171, line: 153, baseType: !177)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2068, file: !2069, line: 64, baseType: !2080, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1171, file: !1172, line: 1326, baseType: !1184, size: 32, offset: 13184)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1171, file: !1172, line: 1342, baseType: !164, size: 64, offset: 13248)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1171, file: !1172, line: 1343, baseType: !178, size: 64, offset: 13312)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1171, file: !1172, line: 1344, baseType: !177, size: 64, offset: 13376)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1171, file: !1172, line: 1345, baseType: !178, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1171, file: !1172, line: 1346, baseType: !178, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1171, file: !1172, line: 1347, baseType: !178, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1171, file: !1172, line: 1348, baseType: !339, size: 128, align: 64, offset: 13504)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1171, file: !1172, line: 1358, baseType: !2091, size: 34816, offset: 13824)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2092, line: 485, size: 34816, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2123, !2124, !2125, !2126, !2127, !2128, !2131, !2132, !2133}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2091, file: !2092, line: 487, baseType: !2095, size: 192)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2096, size: 192, elements: !250)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2097, line: 16, size: 64, elements: !2098)
!2097 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2096, file: !2097, line: 17, baseType: !829, size: 16)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2096, file: !2097, line: 18, baseType: !829, size: 16, offset: 16)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2096, file: !2097, line: 19, baseType: !829, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2096, file: !2097, line: 19, baseType: !829, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2096, file: !2097, line: 19, baseType: !829, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2096, file: !2097, line: 19, baseType: !829, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2096, file: !2097, line: 19, baseType: !829, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2096, file: !2097, line: 20, baseType: !829, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2096, file: !2097, line: 20, baseType: !829, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2096, file: !2097, line: 20, baseType: !829, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2096, file: !2097, line: 20, baseType: !829, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2096, file: !2097, line: 20, baseType: !829, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2096, file: !2097, line: 20, baseType: !829, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2091, file: !2092, line: 491, baseType: !298, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2091, file: !2092, line: 495, baseType: !290, size: 16, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2091, file: !2092, line: 496, baseType: !290, size: 16, offset: 272)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2091, file: !2092, line: 497, baseType: !290, size: 16, offset: 288)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2091, file: !2092, line: 498, baseType: !290, size: 16, offset: 304)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2091, file: !2092, line: 502, baseType: !298, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2091, file: !2092, line: 503, baseType: !298, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2091, file: !2092, line: 514, baseType: !2120, size: 256, offset: 448)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2121, size: 256, elements: !1125)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2092, line: 483, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2091, file: !2092, line: 516, baseType: !298, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2091, file: !2092, line: 518, baseType: !298, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2091, file: !2092, line: 520, baseType: !298, size: 64, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2091, file: !2092, line: 521, baseType: !298, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2091, file: !2092, line: 522, baseType: !298, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2091, file: !2092, line: 528, baseType: !2129, size: 64, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2092, line: 10, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2091, file: !2092, line: 535, baseType: !298, size: 64, offset: 1088)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2091, file: !2092, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2091, file: !2092, line: 540, baseType: !2134, size: 33280, offset: 1536)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2135, line: 317, size: 33280, elements: !2136)
!2135 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137, !2138, !2139}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2134, file: !2135, line: 330, baseType: !7, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2134, file: !2135, line: 337, baseType: !298, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2134, file: !2135, line: 348, baseType: !2140, size: 32768, offset: 512)
!2140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2135, line: 304, size: 32768, elements: !2141)
!2141 = !{!2142, !2157, !2196, !2246, !2259}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2140, file: !2135, line: 305, baseType: !2143, size: 896)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2135, line: 12, size: 896, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2156}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2143, file: !2135, line: 13, baseType: !150, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2143, file: !2135, line: 14, baseType: !150, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2143, file: !2135, line: 15, baseType: !150, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2143, file: !2135, line: 16, baseType: !150, size: 32, offset: 96)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2143, file: !2135, line: 17, baseType: !150, size: 32, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2143, file: !2135, line: 18, baseType: !150, size: 32, offset: 160)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2143, file: !2135, line: 19, baseType: !150, size: 32, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2143, file: !2135, line: 22, baseType: !2153, size: 640, offset: 224)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 640, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 20)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2143, file: !2135, line: 25, baseType: !150, size: 32, offset: 864)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2140, file: !2135, line: 306, baseType: !2158, size: 4096, align: 128)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2135, line: 34, size: 4096, align: 128, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2179, !2180, !2181, !2185, !2187, !2191}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2158, file: !2135, line: 35, baseType: !829, size: 16)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2158, file: !2135, line: 36, baseType: !829, size: 16, offset: 16)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2158, file: !2135, line: 37, baseType: !829, size: 16, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2158, file: !2135, line: 38, baseType: !829, size: 16, offset: 48)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !2135, line: 39, baseType: !2165, size: 128, offset: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2158, file: !2135, line: 39, size: 128, elements: !2166)
!2166 = !{!2167, !2172}
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !2135, line: 40, baseType: !2168, size: 128)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !2135, line: 40, size: 128, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2168, file: !2135, line: 41, baseType: !177, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2168, file: !2135, line: 42, baseType: !177, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !2135, line: 44, baseType: !2173, size: 128)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !2135, line: 44, size: 128, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2173, file: !2135, line: 45, baseType: !150, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2173, file: !2135, line: 46, baseType: !150, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2173, file: !2135, line: 47, baseType: !150, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2173, file: !2135, line: 48, baseType: !150, size: 32, offset: 96)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2158, file: !2135, line: 51, baseType: !150, size: 32, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2158, file: !2135, line: 52, baseType: !150, size: 32, offset: 224)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2158, file: !2135, line: 55, baseType: !2182, size: 1024, offset: 256)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !2183)
!2183 = !{!2184}
!2184 = !DISubrange(count: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2158, file: !2135, line: 58, baseType: !2186, size: 2048, offset: 1280)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2048, elements: !254)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2158, file: !2135, line: 60, baseType: !2188, size: 384, offset: 3328)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 12)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !2135, line: 62, baseType: !2192, size: 384, offset: 3712)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2158, file: !2135, line: 62, size: 384, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2192, file: !2135, line: 63, baseType: !2188, size: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2192, file: !2135, line: 64, baseType: !2188, size: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2140, file: !2135, line: 307, baseType: !2197, size: 1088)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2135, line: 79, size: 1088, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2245}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2197, file: !2135, line: 80, baseType: !150, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2197, file: !2135, line: 81, baseType: !150, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2197, file: !2135, line: 82, baseType: !150, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2197, file: !2135, line: 83, baseType: !150, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2197, file: !2135, line: 84, baseType: !150, size: 32, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2197, file: !2135, line: 85, baseType: !150, size: 32, offset: 160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2197, file: !2135, line: 86, baseType: !150, size: 32, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2197, file: !2135, line: 88, baseType: !2153, size: 640, offset: 224)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2197, file: !2135, line: 89, baseType: !156, size: 8, offset: 864)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2197, file: !2135, line: 90, baseType: !156, size: 8, offset: 872)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2197, file: !2135, line: 91, baseType: !156, size: 8, offset: 880)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2197, file: !2135, line: 92, baseType: !156, size: 8, offset: 888)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2197, file: !2135, line: 93, baseType: !156, size: 8, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2197, file: !2135, line: 94, baseType: !156, size: 8, offset: 904)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2197, file: !2135, line: 95, baseType: !2214, size: 64, offset: 960)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2216, line: 11, size: 128, elements: !2217)
!2216 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2215, file: !2216, line: 12, baseType: !163, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2215, file: !2216, line: 13, baseType: !2220, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2222, line: 56, size: 1344, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2221, file: !2222, line: 61, baseType: !298, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2221, file: !2222, line: 62, baseType: !298, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2221, file: !2222, line: 63, baseType: !298, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2221, file: !2222, line: 64, baseType: !298, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2221, file: !2222, line: 65, baseType: !298, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2221, file: !2222, line: 66, baseType: !298, size: 64, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2221, file: !2222, line: 68, baseType: !298, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2221, file: !2222, line: 69, baseType: !298, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2221, file: !2222, line: 70, baseType: !298, size: 64, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2221, file: !2222, line: 71, baseType: !298, size: 64, offset: 576)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2221, file: !2222, line: 72, baseType: !298, size: 64, offset: 640)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2221, file: !2222, line: 73, baseType: !298, size: 64, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2221, file: !2222, line: 74, baseType: !298, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2221, file: !2222, line: 75, baseType: !298, size: 64, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2221, file: !2222, line: 76, baseType: !298, size: 64, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2221, file: !2222, line: 81, baseType: !298, size: 64, offset: 960)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2221, file: !2222, line: 83, baseType: !298, size: 64, offset: 1024)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2221, file: !2222, line: 84, baseType: !298, size: 64, offset: 1088)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2221, file: !2222, line: 85, baseType: !298, size: 64, offset: 1152)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2221, file: !2222, line: 86, baseType: !298, size: 64, offset: 1216)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2221, file: !2222, line: 87, baseType: !298, size: 64, offset: 1280)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2197, file: !2135, line: 96, baseType: !150, size: 32, offset: 1024)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2140, file: !2135, line: 308, baseType: !2247, size: 4608, align: 512)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2135, line: 289, size: 4608, align: 512, elements: !2248)
!2248 = !{!2249, !2250, !2257}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2247, file: !2135, line: 290, baseType: !2158, size: 4096, align: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2247, file: !2135, line: 291, baseType: !2251, size: 512, offset: 4096)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2135, line: 268, size: 512, elements: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2251, file: !2135, line: 269, baseType: !177, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2251, file: !2135, line: 270, baseType: !177, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2251, file: !2135, line: 271, baseType: !2256, size: 384, offset: 128)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 384, elements: !1577)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2247, file: !2135, line: 292, baseType: !2258, offset: 4608)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !1675)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2140, file: !2135, line: 309, baseType: !2260, size: 32768)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32768, elements: !2261)
!2261 = !{!2262}
!2262 = !DISubrange(count: 4096)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1167, file: !692, line: 378, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1163, file: !692, line: 384, baseType: !1454, size: 192, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !948, file: !692, line: 500, baseType: !208, offset: 6656)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !948, file: !692, line: 501, baseType: !2268, size: 64, offset: 6656)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !692, line: 387, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !948, file: !692, line: 516, baseType: !1665, size: 64, offset: 6720)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !948, file: !692, line: 519, baseType: !326, size: 64, offset: 6784)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !948, file: !692, line: 521, baseType: !2273, size: 64, offset: 6848)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !692, line: 521, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !948, file: !692, line: 545, baseType: !717, size: 32, offset: 6912)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !948, file: !692, line: 548, baseType: !456, size: 8, offset: 6944)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !948, file: !692, line: 550, baseType: !2278, offset: 6952)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2279, line: 142, elements: !222)
!2279 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !948, file: !692, line: 554, baseType: !1910, size: 256, offset: 6976)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !948, file: !692, line: 557, baseType: !150, size: 32, offset: 7232)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !945, file: !692, line: 565, baseType: !2283, offset: 7296)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: -1)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !941, file: !692, line: 151, baseType: !717, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !934, file: !692, line: 156, baseType: !208, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 159, baseType: !2289, size: 128)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 159, size: 128, elements: !2290)
!2290 = !{!2291, !2355}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2289, file: !692, line: 161, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2294)
!2294 = !{!2295, !2305, !2326, !2327, !2328, !2329, !2330, !2342, !2343, !2344}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2293, file: !31, line: 111, baseType: !2296, size: 384)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2297)
!2297 = !{!2298, !2300, !2301, !2302, !2303, !2304}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2296, file: !31, line: 20, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2296, file: !31, line: 21, baseType: !2299, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2296, file: !31, line: 22, baseType: !2299, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2296, file: !31, line: 23, baseType: !298, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2296, file: !31, line: 24, baseType: !298, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2296, file: !31, line: 25, baseType: !298, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2293, file: !31, line: 112, baseType: !2306, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2308, line: 105, size: 128, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2307, file: !2308, line: 110, baseType: !298, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2307, file: !2308, line: 118, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2308, line: 95, size: 448, elements: !2314)
!2314 = !{!2315, !2316, !2321, !2322, !2323, !2324, !2325}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2313, file: !2308, line: 96, baseType: !741, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2313, file: !2308, line: 97, baseType: !2317, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2308, line: 60, baseType: !2319)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !2306}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2313, file: !2308, line: 98, baseType: !2317, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2313, file: !2308, line: 99, baseType: !456, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2313, file: !2308, line: 100, baseType: !456, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2313, file: !2308, line: 101, baseType: !339, size: 128, align: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2313, file: !2308, line: 102, baseType: !2306, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2293, file: !31, line: 113, baseType: !2307, size: 128, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2293, file: !31, line: 114, baseType: !1454, size: 192, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2293, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2293, file: !31, line: 117, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2334)
!2334 = !{!2335, !2336, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2333, file: !31, line: 73, baseType: !810, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2333, file: !31, line: 78, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2292}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2333, file: !31, line: 83, baseType: !2337, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2333, file: !31, line: 89, baseType: !997, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2293, file: !31, line: 118, baseType: !164, size: 64, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2293, file: !31, line: 119, baseType: !184, size: 32, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !31, line: 120, baseType: !2345, size: 128, offset: 1024)
!2345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !31, line: 120, size: 128, elements: !2346)
!2346 = !{!2347, !2353}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2345, file: !31, line: 121, baseType: !2348, size: 128)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2349, line: 6, size: 128, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2348, file: !2349, line: 7, baseType: !177, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2348, file: !2349, line: 8, baseType: !177, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2345, file: !31, line: 122, baseType: !2354)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2348, elements: !1675)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2289, file: !692, line: 162, baseType: !164, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !696, file: !692, line: 176, baseType: !339, size: 128, align: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 179, baseType: !2358, size: 32, offset: 384)
!2358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 179, size: 32, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2358, file: !692, line: 184, baseType: !717, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2358, file: !692, line: 192, baseType: !7, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2358, file: !692, line: 194, baseType: !7, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2358, file: !692, line: 195, baseType: !184, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !691, file: !692, line: 199, baseType: !717, size: 32, offset: 416)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !626, file: !44, line: 1964, baseType: !2366, size: 64, offset: 1344)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!163, !565, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2371, line: 12, size: 256, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2372 = !{!2373, !2374, !2375, !2376, !2377}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2370, file: !2371, line: 13, baseType: !713, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2370, file: !2371, line: 16, baseType: !184, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2370, file: !2371, line: 23, baseType: !298, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2370, file: !2371, line: 30, baseType: !298, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2370, file: !2371, line: 33, baseType: !2378, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !692, line: 27, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !626, file: !44, line: 1966, baseType: !2366, size: 64, offset: 1408)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !566, file: !44, line: 1424, baseType: !2382, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2385)
!2385 = !{!2386, !2432, !2436, !2440, !2441, !2442, !2443, !2444, !2449, !2454, !2458}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2384, file: !38, line: 323, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!184, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2417, !2418, !2419}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2391, file: !38, line: 295, baseType: !608, size: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2391, file: !38, line: 296, baseType: !170, size: 128, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2391, file: !38, line: 297, baseType: !170, size: 128, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2391, file: !38, line: 298, baseType: !170, size: 128, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2391, file: !38, line: 299, baseType: !1143, size: 192, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2391, file: !38, line: 300, baseType: !208, offset: 704)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2391, file: !38, line: 301, baseType: !717, size: 32, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2391, file: !38, line: 302, baseType: !565, size: 64, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2391, file: !38, line: 303, baseType: !2402, size: 64, offset: 832)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2403)
!2403 = !{!2404, !2416}
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !38, line: 69, baseType: !2405, size: 32)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !38, line: 69, size: 32, elements: !2406)
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2405, file: !38, line: 70, baseType: !401, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2405, file: !38, line: 71, baseType: !409, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2405, file: !38, line: 72, baseType: !2410, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2411, line: 24, baseType: !2412)
!2411 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2411, line: 22, size: 32, elements: !2413)
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2412, file: !2411, line: 23, baseType: !2415, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2411, line: 20, baseType: !407)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2402, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2391, file: !38, line: 304, baseType: !497, size: 64, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2391, file: !38, line: 305, baseType: !298, size: 64, offset: 960)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2391, file: !38, line: 306, baseType: !2420, size: 576, offset: 1024)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2421)
!2421 = !{!2422, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2420, file: !38, line: 206, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !499)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2420, file: !38, line: 207, baseType: !2423, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2420, file: !38, line: 208, baseType: !2423, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2420, file: !38, line: 209, baseType: !2423, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2420, file: !38, line: 210, baseType: !2423, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2420, file: !38, line: 211, baseType: !2423, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2420, file: !38, line: 212, baseType: !2423, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2420, file: !38, line: 213, baseType: !505, size: 64, offset: 448)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2420, file: !38, line: 214, baseType: !505, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2384, file: !38, line: 324, baseType: !2433, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!2390, !565, !184}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2384, file: !38, line: 325, baseType: !2437, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2390}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2384, file: !38, line: 326, baseType: !2387, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2384, file: !38, line: 327, baseType: !2387, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2384, file: !38, line: 328, baseType: !2387, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2384, file: !38, line: 329, baseType: !654, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2384, file: !38, line: 332, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2448, !395}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2384, file: !38, line: 333, baseType: !2450, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!184, !395, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2384, file: !38, line: 335, baseType: !2455, size: 64, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!184, !395, !2448}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2384, file: !38, line: 337, baseType: !2459, size: 64, offset: 640)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!184, !565, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !566, file: !44, line: 1425, baseType: !2464, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2467)
!2467 = !{!2468, !2472, !2473, !2477, !2478, !2479, !2494, !2517, !2521, !2522, !2545}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2466, file: !38, line: 429, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!184, !565, !184, !184, !515}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2466, file: !38, line: 430, baseType: !654, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2466, file: !38, line: 431, baseType: !2474, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!184, !565, !7}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2466, file: !38, line: 432, baseType: !2474, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2466, file: !38, line: 433, baseType: !654, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2466, file: !38, line: 434, baseType: !2480, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!184, !565, !184, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2484, file: !38, line: 416, baseType: !184, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2484, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2484, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2484, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2484, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2484, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2484, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2484, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2466, file: !38, line: 435, baseType: !2495, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!184, !565, !2402, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2499, file: !38, line: 344, baseType: !184, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2499, file: !38, line: 345, baseType: !177, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2499, file: !38, line: 346, baseType: !177, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2499, file: !38, line: 347, baseType: !177, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2499, file: !38, line: 348, baseType: !177, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2499, file: !38, line: 349, baseType: !177, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2499, file: !38, line: 350, baseType: !177, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2499, file: !38, line: 351, baseType: !747, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2499, file: !38, line: 353, baseType: !747, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2499, file: !38, line: 354, baseType: !184, size: 32, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2499, file: !38, line: 355, baseType: !184, size: 32, offset: 608)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2499, file: !38, line: 356, baseType: !177, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2499, file: !38, line: 357, baseType: !177, size: 64, offset: 704)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2499, file: !38, line: 358, baseType: !177, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2499, file: !38, line: 359, baseType: !747, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2499, file: !38, line: 360, baseType: !184, size: 32, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2466, file: !38, line: 436, baseType: !2518, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!184, !565, !2462, !2498}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2466, file: !38, line: 438, baseType: !2495, size: 64, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2466, file: !38, line: 439, baseType: !2523, size: 64, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!184, !565, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2527, file: !38, line: 410, baseType: !7, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2527, file: !38, line: 411, baseType: !2531, size: 1344, offset: 64)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2532, size: 1344, elements: !250)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2544}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !38, line: 396, baseType: !7, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2532, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2532, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2532, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2532, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2532, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2532, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2532, file: !38, line: 404, baseType: !179, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2532, file: !38, line: 405, baseType: !2543, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !171, line: 126, baseType: !177)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2532, file: !38, line: 406, baseType: !2543, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2466, file: !38, line: 440, baseType: !2474, size: 64, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !566, file: !44, line: 1426, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2549)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !566, file: !44, line: 1427, baseType: !298, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !566, file: !44, line: 1428, baseType: !298, size: 64, offset: 704)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !566, file: !44, line: 1429, baseType: !298, size: 64, offset: 768)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !566, file: !44, line: 1430, baseType: !356, size: 64, offset: 832)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !566, file: !44, line: 1431, baseType: !737, size: 256, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !566, file: !44, line: 1432, baseType: !184, size: 32, offset: 1152)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !566, file: !44, line: 1433, baseType: !717, size: 32, offset: 1184)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !566, file: !44, line: 1437, baseType: !2558, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !566, file: !44, line: 1449, baseType: !2563, size: 64, offset: 1280)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !372, line: 34, size: 64, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2563, file: !372, line: 35, baseType: !375, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !566, file: !44, line: 1450, baseType: !170, size: 128, offset: 1344)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !566, file: !44, line: 1451, baseType: !2568, size: 64, offset: 1472)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !566, file: !44, line: 1452, baseType: !1876, size: 64, offset: 1536)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !566, file: !44, line: 1453, baseType: !2572, size: 64, offset: 1600)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !566, file: !44, line: 1454, baseType: !608, size: 128, offset: 1664)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !566, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !566, file: !44, line: 1456, baseType: !2577, size: 2432, offset: 1856)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2583, !2615}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2577, file: !38, line: 519, baseType: !7, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2577, file: !38, line: 520, baseType: !737, size: 256, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2577, file: !38, line: 521, baseType: !2582, size: 192, offset: 320)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !250)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2577, file: !38, line: 522, baseType: !2584, size: 1728, offset: 512)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2585, size: 1728, elements: !250)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2586)
!2586 = !{!2587, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2585, file: !38, line: 223, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2590)
!2590 = !{!2591, !2592, !2605, !2606}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2589, file: !38, line: 444, baseType: !184, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2589, file: !38, line: 445, baseType: !2593, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2595)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2595, file: !38, line: 311, baseType: !654, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2595, file: !38, line: 312, baseType: !654, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2595, file: !38, line: 313, baseType: !654, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2595, file: !38, line: 314, baseType: !654, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2595, file: !38, line: 315, baseType: !2387, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2595, file: !38, line: 316, baseType: !2387, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2595, file: !38, line: 317, baseType: !2387, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2595, file: !38, line: 318, baseType: !2459, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2589, file: !38, line: 446, baseType: !599, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2589, file: !38, line: 447, baseType: !2588, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2585, file: !38, line: 224, baseType: !184, size: 32, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2585, file: !38, line: 226, baseType: !170, size: 128, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2585, file: !38, line: 227, baseType: !298, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2585, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2585, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2585, file: !38, line: 230, baseType: !2423, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2585, file: !38, line: 231, baseType: !2423, size: 64, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2585, file: !38, line: 232, baseType: !164, size: 64, offset: 512)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2577, file: !38, line: 523, baseType: !2616, size: 192, offset: 2240)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2593, size: 192, elements: !250)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !566, file: !44, line: 1458, baseType: !2618, size: 2112, offset: 4288)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2619)
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2618, file: !44, line: 1411, baseType: !184, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2618, file: !44, line: 1412, baseType: !1433, size: 128, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2618, file: !44, line: 1413, baseType: !2623, size: 1920, offset: 192)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 1920, elements: !250)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2625, line: 12, size: 640, elements: !2626)
!2625 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2626 = !{!2627, !2635, !2637, !2642, !2643}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2624, file: !2625, line: 13, baseType: !2628, size: 320)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2629, line: 17, size: 320, elements: !2630)
!2629 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2628, file: !2629, line: 18, baseType: !184, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2628, file: !2629, line: 19, baseType: !184, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2628, file: !2629, line: 20, baseType: !1433, size: 128, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2628, file: !2629, line: 22, baseType: !339, size: 128, align: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2624, file: !2625, line: 14, baseType: !2636, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2624, file: !2625, line: 15, baseType: !2638, size: 64, offset: 384)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2639, line: 16, size: 64, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2638, file: !2639, line: 17, baseType: !1170, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2624, file: !2625, line: 16, baseType: !1433, size: 128, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2624, file: !2625, line: 17, baseType: !717, size: 32, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !566, file: !44, line: 1465, baseType: !164, size: 64, offset: 6400)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !566, file: !44, line: 1468, baseType: !150, size: 32, offset: 6464)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !566, file: !44, line: 1470, baseType: !505, size: 64, offset: 6528)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !566, file: !44, line: 1471, baseType: !505, size: 64, offset: 6592)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !566, file: !44, line: 1473, baseType: !152, size: 32, offset: 6656)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !566, file: !44, line: 1474, baseType: !2650, size: 64, offset: 6720)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !566, file: !44, line: 1477, baseType: !2653, size: 256, offset: 6784)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !2183)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !566, file: !44, line: 1478, baseType: !2655, size: 128, offset: 7040)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2656, line: 18, baseType: !2657)
!2656 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2656, line: 16, size: 128, elements: !2658)
!2658 = !{!2659}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2657, file: !2656, line: 17, baseType: !2660, size: 128)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !1687)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !566, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !566, file: !44, line: 1481, baseType: !2663, size: 32, offset: 7200)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !171, line: 150, baseType: !7)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !566, file: !44, line: 1487, baseType: !1143, size: 192, offset: 7232)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !566, file: !44, line: 1493, baseType: !196, size: 64, offset: 7424)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !566, file: !44, line: 1495, baseType: !2667, size: 64, offset: 7488)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2669)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !354, line: 135, size: 1024, align: 512, elements: !2670)
!2670 = !{!2671, !2675, !2676, !2683, !2689, !2693, !2697, !2701, !2702, !2706, !2710, !2715, !2719}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2669, file: !354, line: 136, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!184, !356, !7}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2669, file: !354, line: 137, baseType: !2672, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2669, file: !354, line: 138, baseType: !2677, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!184, !2680, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2669, file: !354, line: 139, baseType: !2684, size: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!184, !2680, !7, !196, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2669, file: !354, line: 141, baseType: !2690, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!184, !2680}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2669, file: !354, line: 142, baseType: !2694, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!184, !356}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2669, file: !354, line: 143, baseType: !2698, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !356}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2669, file: !354, line: 144, baseType: !2698, size: 64, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2669, file: !354, line: 145, baseType: !2703, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !356, !395}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2669, file: !354, line: 146, baseType: !2707, size: 64, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!249, !356, !249, !184}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2669, file: !354, line: 147, baseType: !2711, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!352, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2669, file: !354, line: 148, baseType: !2716, size: 64, offset: 704)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!184, !515, !456}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2669, file: !354, line: 149, baseType: !2720, size: 64, offset: 768)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!356, !356, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !566, file: !44, line: 1500, baseType: !184, size: 32, offset: 7552)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !566, file: !44, line: 1502, baseType: !2727, size: 448, offset: 7616)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2371, line: 60, size: 448, elements: !2728)
!2728 = !{!2729, !2734, !2735, !2736, !2737, !2738, !2739}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2727, file: !2371, line: 61, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!298, !2733, !2369}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2727, file: !2371, line: 63, baseType: !2730, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2727, file: !2371, line: 66, baseType: !163, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2727, file: !2371, line: 67, baseType: !184, size: 32, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2727, file: !2371, line: 68, baseType: !7, size: 32, offset: 224)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2727, file: !2371, line: 71, baseType: !170, size: 128, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2727, file: !2371, line: 77, baseType: !2740, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !566, file: !44, line: 1505, baseType: !741, size: 64, offset: 8064)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !566, file: !44, line: 1508, baseType: !741, size: 64, offset: 8128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !566, file: !44, line: 1511, baseType: !184, size: 32, offset: 8192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !566, file: !44, line: 1514, baseType: !879, size: 32, offset: 8224)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !566, file: !44, line: 1517, baseType: !2746, size: 64, offset: 8256)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1911, line: 18, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !566, file: !44, line: 1518, baseType: !604, size: 64, offset: 8320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !566, file: !44, line: 1525, baseType: !1665, size: 64, offset: 8384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !566, file: !44, line: 1532, baseType: !2751, size: 64, offset: 8448)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2752, line: 52, size: 64, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2751, file: !2752, line: 53, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2752, line: 40, size: 256, elements: !2757)
!2757 = !{!2758, !2759, !2764}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2756, file: !2752, line: 42, baseType: !208)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2756, file: !2752, line: 44, baseType: !2760, size: 192)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2752, line: 28, size: 192, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2760, file: !2752, line: 29, baseType: !170, size: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2760, file: !2752, line: 31, baseType: !163, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2756, file: !2752, line: 49, baseType: !163, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !566, file: !44, line: 1533, baseType: !2751, size: 64, offset: 8512)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !566, file: !44, line: 1534, baseType: !339, size: 128, align: 64, offset: 8576)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !566, file: !44, line: 1535, baseType: !1910, size: 256, offset: 8704)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !566, file: !44, line: 1537, baseType: !1143, size: 192, offset: 8960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !566, file: !44, line: 1542, baseType: !184, size: 32, offset: 9152)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !566, file: !44, line: 1545, baseType: !208, offset: 9184)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !566, file: !44, line: 1546, baseType: !170, size: 128, offset: 9216)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !566, file: !44, line: 1548, baseType: !208, offset: 9344)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !566, file: !44, line: 1549, baseType: !170, size: 128, offset: 9344)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !396, file: !44, line: 624, baseType: !703, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !396, file: !44, line: 631, baseType: !298, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 639, baseType: !2777, size: 32, offset: 384)
!2777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 639, size: 32, elements: !2778)
!2778 = !{!2779, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2777, file: !44, line: 640, baseType: !2780, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2777, file: !44, line: 641, baseType: !7, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !396, file: !44, line: 643, baseType: !479, size: 32, offset: 416)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !396, file: !44, line: 644, baseType: !497, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !396, file: !44, line: 645, baseType: !501, size: 128, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !396, file: !44, line: 646, baseType: !501, size: 128, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !396, file: !44, line: 647, baseType: !501, size: 128, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !396, file: !44, line: 648, baseType: !208, offset: 896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !396, file: !44, line: 649, baseType: !290, size: 16, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !396, file: !44, line: 650, baseType: !156, size: 8, offset: 912)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !396, file: !44, line: 651, baseType: !156, size: 8, offset: 920)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !396, file: !44, line: 652, baseType: !2543, size: 64, offset: 960)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !396, file: !44, line: 659, baseType: !298, size: 64, offset: 1024)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !396, file: !44, line: 660, baseType: !737, size: 256, offset: 1088)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !396, file: !44, line: 662, baseType: !298, size: 64, offset: 1344)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !396, file: !44, line: 663, baseType: !298, size: 64, offset: 1408)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !396, file: !44, line: 665, baseType: !608, size: 128, offset: 1472)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !396, file: !44, line: 666, baseType: !170, size: 128, offset: 1600)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !396, file: !44, line: 675, baseType: !170, size: 128, offset: 1728)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !396, file: !44, line: 676, baseType: !170, size: 128, offset: 1856)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !396, file: !44, line: 677, baseType: !170, size: 128, offset: 1984)
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 678, baseType: !2802, size: 128, offset: 2112)
!2802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 678, size: 128, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2802, file: !44, line: 679, baseType: !604, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2802, file: !44, line: 680, baseType: !339, size: 128, align: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !396, file: !44, line: 682, baseType: !743, size: 64, offset: 2240)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !396, file: !44, line: 683, baseType: !743, size: 64, offset: 2304)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !396, file: !44, line: 684, baseType: !717, size: 32, offset: 2368)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !396, file: !44, line: 685, baseType: !717, size: 32, offset: 2400)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !396, file: !44, line: 686, baseType: !717, size: 32, offset: 2432)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !396, file: !44, line: 688, baseType: !717, size: 32, offset: 2464)
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 690, baseType: !2813, size: 64, offset: 2496)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 690, size: 64, elements: !2814)
!2814 = !{!2815, !3038}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2813, file: !44, line: 691, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2819)
!2819 = !{!2820, !2821, !2825, !2830, !2834, !2835, !2836, !2840, !2853, !2854, !2862, !2866, !2867, !2871, !2872, !2876, !2881, !2882, !2886, !2890, !2998, !3002, !3003, !3007, !3008, !3012, !3016, !3021, !3025, !3029, !3033, !3037}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2818, file: !44, line: 1823, baseType: !599, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2818, file: !44, line: 1824, baseType: !2822, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!497, !326, !497, !184}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2818, file: !44, line: 1825, baseType: !2826, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!280, !326, !249, !295, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2818, file: !44, line: 1826, baseType: !2831, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!280, !326, !196, !295, !2829}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2818, file: !44, line: 1827, baseType: !814, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2818, file: !44, line: 1828, baseType: !814, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2818, file: !44, line: 1829, baseType: !2837, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!184, !817, !456}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2818, file: !44, line: 1830, baseType: !2841, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!184, !326, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2846)
!2846 = !{!2847, !2852}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2845, file: !44, line: 1777, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2849)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!184, !2844, !196, !184, !497, !177, !7}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2845, file: !44, line: 1778, baseType: !497, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2818, file: !44, line: 1831, baseType: !2841, size: 64, offset: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2818, file: !44, line: 1832, baseType: !2855, size: 64, offset: 576)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!2858, !326, !2860}
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2859, line: 52, baseType: !7)
!2859 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !585, line: 27, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2818, file: !44, line: 1833, baseType: !2863, size: 64, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!163, !326, !7, !298}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2818, file: !44, line: 1834, baseType: !2863, size: 64, offset: 704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2818, file: !44, line: 1835, baseType: !2868, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!184, !326, !951}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2818, file: !44, line: 1836, baseType: !298, size: 64, offset: 832)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2818, file: !44, line: 1837, baseType: !2873, size: 64, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!184, !395, !326}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2818, file: !44, line: 1838, baseType: !2877, size: 64, offset: 960)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!184, !326, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !164)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2818, file: !44, line: 1839, baseType: !2873, size: 64, offset: 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2818, file: !44, line: 1840, baseType: !2883, size: 64, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!184, !326, !497, !497, !184}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2818, file: !44, line: 1841, baseType: !2887, size: 64, offset: 1152)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!184, !184, !326, !184}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2818, file: !44, line: 1842, baseType: !2891, size: 64, offset: 1216)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!184, !326, !184, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2928, !2929, !2930, !2943, !2974}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2895, file: !44, line: 1063, baseType: !2894, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2895, file: !44, line: 1064, baseType: !170, size: 128, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2895, file: !44, line: 1065, baseType: !608, size: 128, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2895, file: !44, line: 1066, baseType: !170, size: 128, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2895, file: !44, line: 1069, baseType: !170, size: 128, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2895, file: !44, line: 1072, baseType: !2880, size: 64, offset: 576)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2895, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2895, file: !44, line: 1074, baseType: !158, size: 8, offset: 672)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2895, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2895, file: !44, line: 1076, baseType: !184, size: 32, offset: 736)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2895, file: !44, line: 1077, baseType: !1433, size: 128, offset: 768)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2895, file: !44, line: 1078, baseType: !326, size: 64, offset: 896)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2895, file: !44, line: 1079, baseType: !497, size: 64, offset: 960)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2895, file: !44, line: 1080, baseType: !497, size: 64, offset: 1024)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2895, file: !44, line: 1082, baseType: !2912, size: 64, offset: 1088)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2914)
!2914 = !{!2915, !2923, !2924, !2925, !2926, !2927}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2913, file: !44, line: 1315, baseType: !2916)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2917, line: 20, baseType: !2918)
!2917 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2917, line: 11, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2918, file: !2917, line: 12, baseType: !2921)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !220, line: 33, baseType: !2922)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 31, elements: !222)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2913, file: !44, line: 1316, baseType: !184, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2913, file: !44, line: 1317, baseType: !184, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2913, file: !44, line: 1318, baseType: !2912, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2913, file: !44, line: 1319, baseType: !326, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2913, file: !44, line: 1320, baseType: !339, size: 128, align: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2895, file: !44, line: 1084, baseType: !298, size: 64, offset: 1152)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2895, file: !44, line: 1085, baseType: !298, size: 64, offset: 1216)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2895, file: !44, line: 1087, baseType: !2931, size: 64, offset: 1280)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2933)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2934)
!2934 = !{!2935, !2939}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2933, file: !44, line: 1012, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2894, !2894}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2933, file: !44, line: 1013, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2894}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2895, file: !44, line: 1088, baseType: !2944, size: 64, offset: 1344)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2947)
!2947 = !{!2948, !2952, !2956, !2957, !2961, !2965, !2969, !2973}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2946, file: !44, line: 1017, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!2880, !2880}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2946, file: !44, line: 1018, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2880}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2946, file: !44, line: 1019, baseType: !2940, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2946, file: !44, line: 1020, baseType: !2958, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!184, !2894, !184}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2946, file: !44, line: 1021, baseType: !2962, size: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!456, !2894}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2946, file: !44, line: 1022, baseType: !2966, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!184, !2894, !184, !174}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2946, file: !44, line: 1023, baseType: !2970, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2894, !791}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2946, file: !44, line: 1024, baseType: !2962, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2895, file: !44, line: 1097, baseType: !2975, size: 256, offset: 1408)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2895, file: !44, line: 1089, size: 256, elements: !2976)
!2976 = !{!2977, !2986, !2992}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2975, file: !44, line: 1090, baseType: !2978, size: 256)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2979, line: 10, size: 256, elements: !2980)
!2979 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2980 = !{!2981, !2982, !2985}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2978, file: !2979, line: 11, baseType: !150, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2978, file: !2979, line: 12, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2979, line: 5, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2978, file: !2979, line: 13, baseType: !170, size: 128, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2975, file: !44, line: 1091, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2979, line: 17, size: 64, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2987, file: !2979, line: 18, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2979, line: 16, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2975, file: !44, line: 1096, baseType: !2993, size: 192)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !44, line: 1092, size: 192, elements: !2994)
!2994 = !{!2995, !2996, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2993, file: !44, line: 1093, baseType: !170, size: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2993, file: !44, line: 1094, baseType: !184, size: 32, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2993, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2818, file: !44, line: 1843, baseType: !2999, size: 64, offset: 1280)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!280, !326, !690, !184, !295, !2829, !184}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2818, file: !44, line: 1844, baseType: !1071, size: 64, offset: 1344)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2818, file: !44, line: 1845, baseType: !3004, size: 64, offset: 1408)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!184, !184}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2818, file: !44, line: 1846, baseType: !2891, size: 64, offset: 1472)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2818, file: !44, line: 1847, baseType: !3009, size: 64, offset: 1536)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!280, !2051, !326, !2829, !295, !7}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2818, file: !44, line: 1848, baseType: !3013, size: 64, offset: 1600)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!280, !326, !2829, !2051, !295, !7}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2818, file: !44, line: 1849, baseType: !3017, size: 64, offset: 1664)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!184, !326, !163, !3020, !791}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2818, file: !44, line: 1850, baseType: !3022, size: 64, offset: 1728)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!163, !326, !184, !497, !497}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2818, file: !44, line: 1852, baseType: !3026, size: 64, offset: 1792)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !680, !326}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2818, file: !44, line: 1856, baseType: !3030, size: 64, offset: 1856)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!280, !326, !497, !326, !497, !295, !7}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2818, file: !44, line: 1858, baseType: !3034, size: 64, offset: 1920)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!497, !326, !497, !326, !497, !497, !7}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2818, file: !44, line: 1861, baseType: !2883, size: 64, offset: 1984)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2813, file: !44, line: 692, baseType: !633, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !396, file: !44, line: 694, baseType: !3040, size: 64, offset: 2560)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3041, file: !44, line: 1101, baseType: !208)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3041, file: !44, line: 1102, baseType: !170, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3041, file: !44, line: 1103, baseType: !170, size: 128, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3041, file: !44, line: 1104, baseType: !170, size: 128, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !396, file: !44, line: 695, baseType: !704, size: 1216, align: 64, offset: 2624)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !396, file: !44, line: 696, baseType: !170, size: 128, offset: 3840)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 697, baseType: !3050, size: 64, offset: 3968)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 697, size: 64, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3065, !3066}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3050, file: !44, line: 698, baseType: !2051, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3050, file: !44, line: 699, baseType: !2568, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3050, file: !44, line: 700, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3057, line: 14, size: 832, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3064}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3056, file: !3057, line: 15, baseType: !192, size: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3056, file: !3057, line: 16, baseType: !599, size: 64, offset: 512)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3056, file: !3057, line: 17, baseType: !2816, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3056, file: !3057, line: 18, baseType: !170, size: 128, offset: 640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3056, file: !3057, line: 19, baseType: !479, size: 32, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3056, file: !3057, line: 20, baseType: !7, size: 32, offset: 800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3050, file: !44, line: 701, baseType: !249, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3050, file: !44, line: 702, baseType: !7, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !396, file: !44, line: 705, baseType: !152, size: 32, offset: 4032)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !396, file: !44, line: 708, baseType: !152, size: 32, offset: 4064)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !396, file: !44, line: 709, baseType: !2650, size: 64, offset: 4096)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !396, file: !44, line: 720, baseType: !164, size: 64, offset: 4160)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !357, file: !354, line: 98, baseType: !3072, size: 256, offset: 448)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !2183)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !357, file: !354, line: 101, baseType: !3074, size: 32, offset: 704)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3075, line: 25, size: 32, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !3075, line: 26, baseType: !3078, size: 32)
!3078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3074, file: !3075, line: 26, size: 32, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !3075, line: 30, baseType: !3081, size: 32)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3078, file: !3075, line: 30, size: 32, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3081, file: !3075, line: 31, baseType: !208)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3081, file: !3075, line: 32, baseType: !184, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !357, file: !354, line: 102, baseType: !2667, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !357, file: !354, line: 103, baseType: !565, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !357, file: !354, line: 104, baseType: !298, size: 64, offset: 896)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !357, file: !354, line: 105, baseType: !164, size: 64, offset: 960)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !354, line: 107, baseType: !3090, size: 128, offset: 1024)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !354, line: 107, size: 128, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3090, file: !354, line: 108, baseType: !170, size: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3090, file: !354, line: 109, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !357, file: !354, line: 111, baseType: !170, size: 128, offset: 1152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !357, file: !354, line: 112, baseType: !170, size: 128, offset: 1280)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !357, file: !354, line: 120, baseType: !3098, size: 128, offset: 1408)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !354, line: 116, size: 128, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3098, file: !354, line: 117, baseType: !608, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3098, file: !354, line: 118, baseType: !371, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3098, file: !354, line: 119, baseType: !339, size: 128, align: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !327, file: !44, line: 922, baseType: !395, size: 64, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !327, file: !44, line: 923, baseType: !2816, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !327, file: !44, line: 929, baseType: !208, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !327, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !327, file: !44, line: 931, baseType: !741, size: 64, offset: 448)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !327, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !327, file: !44, line: 933, baseType: !2663, size: 32, offset: 544)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !327, file: !44, line: 934, baseType: !1143, size: 192, offset: 576)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !327, file: !44, line: 935, baseType: !497, size: 64, offset: 768)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !327, file: !44, line: 936, baseType: !3113, size: 192, offset: 832)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3113, file: !44, line: 886, baseType: !2916)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3113, file: !44, line: 887, baseType: !1423, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3113, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3113, file: !44, line: 889, baseType: !401, size: 32, offset: 96)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3113, file: !44, line: 889, baseType: !401, size: 32, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3113, file: !44, line: 890, baseType: !184, size: 32, offset: 160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !327, file: !44, line: 937, baseType: !1499, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !327, file: !44, line: 938, baseType: !3123, size: 256, offset: 1088)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3123, file: !44, line: 897, baseType: !298, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3123, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3123, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3123, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3123, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3123, file: !44, line: 904, baseType: !497, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !327, file: !44, line: 940, baseType: !177, size: 64, offset: 1344)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !327, file: !44, line: 945, baseType: !164, size: 64, offset: 1408)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !327, file: !44, line: 949, baseType: !170, size: 128, offset: 1472)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !327, file: !44, line: 950, baseType: !170, size: 128, offset: 1600)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !327, file: !44, line: 952, baseType: !703, size: 64, offset: 1728)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !327, file: !44, line: 953, baseType: !879, size: 32, offset: 1792)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !327, file: !44, line: 954, baseType: !879, size: 32, offset: 1824)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !317, file: !274, line: 174, baseType: !323, size: 64, offset: 320)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !274, line: 176, baseType: !3140, size: 64, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!184, !326, !201, !316, !951}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !305, file: !274, line: 90, baseType: !300, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !305, file: !274, line: 91, baseType: !3145, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !264, file: !193, line: 143, baseType: !3147, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!3150, !201}
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3153)
!3153 = !{!3154, !3155, !3159, !3163, !3169, !3173}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3152, file: !61, line: 40, baseType: !60, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3152, file: !61, line: 41, baseType: !3156, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!456}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3152, file: !61, line: 42, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3152, file: !61, line: 43, baseType: !3164, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!2080, !3167}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3152, file: !61, line: 44, baseType: !3170, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!2080}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3152, file: !61, line: 45, baseType: !434, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !264, file: !193, line: 144, baseType: !3175, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!2080, !201}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !264, file: !193, line: 145, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !201, !3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !192, file: !193, line: 70, baseType: !3185, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !585, line: 123, size: 1024, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3316, !3317, !3318, !3319, !3320}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3186, file: !585, line: 124, baseType: !717, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3186, file: !585, line: 125, baseType: !717, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3186, file: !585, line: 135, baseType: !3185, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3186, file: !585, line: 136, baseType: !196, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3186, file: !585, line: 138, baseType: !730, size: 192, align: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3186, file: !585, line: 140, baseType: !2080, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3186, file: !585, line: 141, baseType: !7, size: 32, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3186, file: !585, line: 142, baseType: !3196, size: 256, offset: 512)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3186, file: !585, line: 142, size: 256, elements: !3197)
!3197 = !{!3198, !3244, !3248}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3196, file: !585, line: 143, baseType: !3199, size: 192)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !585, line: 91, size: 192, elements: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3199, file: !585, line: 92, baseType: !298, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3199, file: !585, line: 94, baseType: !726, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3199, file: !585, line: 100, baseType: !3204, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !585, line: 180, size: 704, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3216, !3217, !3218, !3242, !3243}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3205, file: !585, line: 182, baseType: !3185, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3205, file: !585, line: 183, baseType: !7, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3205, file: !585, line: 186, baseType: !3210, size: 192, offset: 128)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3211, line: 19, size: 192, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3212 = !{!3213, !3214, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3210, file: !3211, line: 20, baseType: !708, size: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3210, file: !3211, line: 21, baseType: !7, size: 32, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3210, file: !3211, line: 22, baseType: !7, size: 32, offset: 160)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3205, file: !585, line: 187, baseType: !150, size: 32, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3205, file: !585, line: 188, baseType: !150, size: 32, offset: 352)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3205, file: !585, line: 189, baseType: !3219, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !585, line: 168, size: 320, elements: !3221)
!3221 = !{!3222, !3226, !3230, !3234, !3238}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3220, file: !585, line: 169, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!184, !680, !3204}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3220, file: !585, line: 171, baseType: !3227, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!184, !3185, !196, !289}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3220, file: !585, line: 173, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!184, !3185}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3220, file: !585, line: 174, baseType: !3235, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!184, !3185, !3185, !196}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3220, file: !585, line: 176, baseType: !3239, size: 64, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!184, !680, !3185, !3204}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3205, file: !585, line: 192, baseType: !170, size: 128, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3205, file: !585, line: 194, baseType: !1433, size: 128, offset: 576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3196, file: !585, line: 144, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !585, line: 103, size: 64, elements: !3246)
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3245, file: !585, line: 104, baseType: !3185, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3196, file: !585, line: 145, baseType: !3249, size: 256)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !585, line: 107, size: 256, elements: !3250)
!3250 = !{!3251, !3311, !3314, !3315}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3249, file: !585, line: 108, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3254)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !585, line: 217, size: 768, elements: !3255)
!3255 = !{!3256, !3276, !3280, !3284, !3288, !3292, !3296, !3300, !3301, !3302, !3303, !3307}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3254, file: !585, line: 222, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!184, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !585, line: 197, size: 1088, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3261, file: !585, line: 199, baseType: !3185, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3261, file: !585, line: 200, baseType: !326, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3261, file: !585, line: 201, baseType: !680, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3261, file: !585, line: 202, baseType: !164, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3261, file: !585, line: 205, baseType: !1143, size: 192, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3261, file: !585, line: 206, baseType: !1143, size: 192, offset: 448)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3261, file: !585, line: 207, baseType: !184, size: 32, offset: 640)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3261, file: !585, line: 208, baseType: !170, size: 128, offset: 704)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3261, file: !585, line: 209, baseType: !249, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3261, file: !585, line: 211, baseType: !295, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3261, file: !585, line: 212, baseType: !456, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3261, file: !585, line: 213, baseType: !456, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3261, file: !585, line: 214, baseType: !979, size: 64, offset: 1024)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3254, file: !585, line: 223, baseType: !3277, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3260}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3254, file: !585, line: 236, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!184, !680, !164}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3254, file: !585, line: 238, baseType: !3285, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!164, !680, !2829}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3254, file: !585, line: 239, baseType: !3289, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!164, !680, !164, !2829}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3254, file: !585, line: 240, baseType: !3293, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !680, !164}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3254, file: !585, line: 242, baseType: !3297, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!280, !3260, !249, !295, !497}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3254, file: !585, line: 252, baseType: !295, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3254, file: !585, line: 259, baseType: !456, size: 8, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3254, file: !585, line: 260, baseType: !3297, size: 64, offset: 576)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3254, file: !585, line: 263, baseType: !3304, size: 64, offset: 640)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!2858, !3260, !2860}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3254, file: !585, line: 266, baseType: !3308, size: 64, offset: 704)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!184, !3260, !951}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3249, file: !585, line: 109, baseType: !3312, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !585, line: 31, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3249, file: !585, line: 110, baseType: !497, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3249, file: !585, line: 111, baseType: !3185, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3186, file: !585, line: 148, baseType: !164, size: 64, offset: 768)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3186, file: !585, line: 154, baseType: !177, size: 64, offset: 832)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3186, file: !585, line: 156, baseType: !290, size: 16, offset: 896)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3186, file: !585, line: 157, baseType: !289, size: 16, offset: 912)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3186, file: !585, line: 158, baseType: !3321, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !585, line: 32, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !192, file: !193, line: 71, baseType: !3324, size: 32, offset: 448)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3325, line: 19, size: 32, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3324, file: !3325, line: 20, baseType: !1184, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !192, file: !193, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !192, file: !193, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !192, file: !193, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !192, file: !193, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !192, file: !193, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !73, line: 463, baseType: !3334, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !189, file: !73, line: 465, baseType: !3336, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !189, file: !73, line: 467, baseType: !196, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !73, line: 468, baseType: !3340, size: 64, offset: 704)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3350, !3355, !3359}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3342, file: !73, line: 88, baseType: !196, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3342, file: !73, line: 89, baseType: !302, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3342, file: !73, line: 90, baseType: !3347, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!184, !3334, !244}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3342, file: !73, line: 91, baseType: !3351, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!249, !3334, !3354, !3182, !3183}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3342, file: !73, line: 93, baseType: !3356, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !3334}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3342, file: !73, line: 95, baseType: !3360, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3363)
!3363 = !{!3364, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3362, file: !80, line: 279, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!184, !3334}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3362, file: !80, line: 280, baseType: !3356, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3362, file: !80, line: 281, baseType: !3365, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3362, file: !80, line: 282, baseType: !3365, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3362, file: !80, line: 283, baseType: !3365, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3362, file: !80, line: 284, baseType: !3365, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3362, file: !80, line: 285, baseType: !3365, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3362, file: !80, line: 286, baseType: !3365, size: 64, offset: 448)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3362, file: !80, line: 287, baseType: !3365, size: 64, offset: 512)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3362, file: !80, line: 288, baseType: !3365, size: 64, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3362, file: !80, line: 289, baseType: !3365, size: 64, offset: 640)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3362, file: !80, line: 290, baseType: !3365, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3362, file: !80, line: 291, baseType: !3365, size: 64, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3362, file: !80, line: 292, baseType: !3365, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3362, file: !80, line: 293, baseType: !3365, size: 64, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3362, file: !80, line: 294, baseType: !3365, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3362, file: !80, line: 295, baseType: !3365, size: 64, offset: 1024)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3362, file: !80, line: 296, baseType: !3365, size: 64, offset: 1088)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3362, file: !80, line: 297, baseType: !3365, size: 64, offset: 1152)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3362, file: !80, line: 298, baseType: !3365, size: 64, offset: 1216)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3362, file: !80, line: 299, baseType: !3365, size: 64, offset: 1280)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3362, file: !80, line: 300, baseType: !3365, size: 64, offset: 1344)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3362, file: !80, line: 301, baseType: !3365, size: 64, offset: 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !189, file: !73, line: 470, baseType: !3391, size: 64, offset: 768)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3393, line: 82, size: 1408, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3476, !3479, !3480}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3392, file: !3393, line: 83, baseType: !196, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3392, file: !3393, line: 84, baseType: !196, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3392, file: !3393, line: 85, baseType: !3334, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3392, file: !3393, line: 86, baseType: !302, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3392, file: !3393, line: 87, baseType: !302, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3392, file: !3393, line: 88, baseType: !302, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3392, file: !3393, line: 90, baseType: !3402, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!184, !3334, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3427, !3440, !3441, !3442, !3443, !3444, !3452, !3453, !3454, !3455, !3456, !3457}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3406, file: !67, line: 96, baseType: !196, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3406, file: !67, line: 97, baseType: !3391, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3406, file: !67, line: 99, baseType: !599, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3406, file: !67, line: 100, baseType: !196, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3406, file: !67, line: 102, baseType: !456, size: 8, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3406, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3406, file: !67, line: 105, baseType: !3415, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3418, line: 262, size: 1600, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !{!3420, !3421, !3422, !3426}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3417, file: !3418, line: 263, baseType: !2653, size: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3417, file: !3418, line: 264, baseType: !2653, size: 256, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3417, file: !3418, line: 265, baseType: !3423, size: 1024, offset: 512)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 1024, elements: !3424)
!3424 = !{!3425}
!3425 = !DISubrange(count: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3417, file: !3418, line: 266, baseType: !2080, size: 64, offset: 1536)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3406, file: !67, line: 106, baseType: !3428, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3430)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3418, line: 210, size: 256, elements: !3431)
!3431 = !{!3432, !3436, !3438, !3439}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3430, file: !3418, line: 211, baseType: !3433, size: 72)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 72, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 9)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3430, file: !3418, line: 212, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3418, line: 14, baseType: !298)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3430, file: !3418, line: 213, baseType: !152, size: 32, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3430, file: !3418, line: 214, baseType: !152, size: 32, offset: 224)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3406, file: !67, line: 108, baseType: !3365, size: 64, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3406, file: !67, line: 109, baseType: !3356, size: 64, offset: 512)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3406, file: !67, line: 110, baseType: !3365, size: 64, offset: 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3406, file: !67, line: 111, baseType: !3356, size: 64, offset: 640)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3406, file: !67, line: 112, baseType: !3445, size: 64, offset: 704)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!184, !3334, !3448}
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3450)
!3450 = !{!3451}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3449, file: !80, line: 51, baseType: !184, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3406, file: !67, line: 113, baseType: !3365, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3406, file: !67, line: 114, baseType: !302, size: 64, offset: 832)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3406, file: !67, line: 115, baseType: !302, size: 64, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3406, file: !67, line: 117, baseType: !3360, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3406, file: !67, line: 118, baseType: !3356, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3406, file: !67, line: 120, baseType: !3458, size: 64, offset: 1088)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3392, file: !3393, line: 91, baseType: !3347, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3392, file: !3393, line: 92, baseType: !3365, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3392, file: !3393, line: 93, baseType: !3356, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3392, file: !3393, line: 94, baseType: !3365, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3392, file: !3393, line: 95, baseType: !3356, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3392, file: !3393, line: 97, baseType: !3365, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3392, file: !3393, line: 98, baseType: !3365, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3392, file: !3393, line: 100, baseType: !3445, size: 64, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3392, file: !3393, line: 101, baseType: !3365, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3392, file: !3393, line: 103, baseType: !3365, size: 64, offset: 1024)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3392, file: !3393, line: 105, baseType: !3365, size: 64, offset: 1088)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3392, file: !3393, line: 107, baseType: !3360, size: 64, offset: 1152)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3392, file: !3393, line: 109, baseType: !3473, size: 64, offset: 1216)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3393, line: 109, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3392, file: !3393, line: 111, baseType: !3477, size: 64, offset: 1280)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3393, line: 111, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3392, file: !3393, line: 112, baseType: !614, offset: 1344)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3392, file: !3393, line: 114, baseType: !456, size: 8, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !189, file: !73, line: 471, baseType: !3405, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !189, file: !73, line: 473, baseType: !164, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !189, file: !73, line: 475, baseType: !164, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !189, file: !73, line: 480, baseType: !1143, size: 192, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !189, file: !73, line: 484, baseType: !3486, size: 576, offset: 1216)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3486, file: !73, line: 362, baseType: !170, size: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3486, file: !73, line: 363, baseType: !170, size: 128, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3486, file: !73, line: 364, baseType: !170, size: 128, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3486, file: !73, line: 365, baseType: !170, size: 128, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3486, file: !73, line: 366, baseType: !456, size: 8, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3486, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !189, file: !73, line: 485, baseType: !3495, size: 2304, offset: 1792)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3592, !3596}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3495, file: !80, line: 566, baseType: !3448, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3495, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3495, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3495, file: !80, line: 569, baseType: !456, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3495, file: !80, line: 570, baseType: !456, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3495, file: !80, line: 571, baseType: !456, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3495, file: !80, line: 572, baseType: !456, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3495, file: !80, line: 573, baseType: !456, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3495, file: !80, line: 574, baseType: !456, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3495, file: !80, line: 575, baseType: !456, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3495, file: !80, line: 576, baseType: !456, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3495, file: !80, line: 577, baseType: !150, size: 32, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3495, file: !80, line: 578, baseType: !208, offset: 96)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3495, file: !80, line: 580, baseType: !170, size: 128, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3495, file: !80, line: 581, baseType: !1454, size: 192, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3495, file: !80, line: 582, baseType: !3513, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3515, line: 43, size: 1472, elements: !3516)
!3515 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3524, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3514, file: !3515, line: 44, baseType: !196, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3514, file: !3515, line: 45, baseType: !184, size: 32, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3514, file: !3515, line: 46, baseType: !170, size: 128, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3514, file: !3515, line: 47, baseType: !208, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3514, file: !3515, line: 48, baseType: !3522, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3514, file: !3515, line: 49, baseType: !3525, size: 320, offset: 320)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3526, line: 11, size: 320, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3527 = !{!3528, !3529, !3530, !3535}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3525, file: !3526, line: 16, baseType: !608, size: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3525, file: !3526, line: 17, baseType: !298, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3525, file: !3526, line: 18, baseType: !3531, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3525, file: !3526, line: 19, baseType: !150, size: 32, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3514, file: !3515, line: 50, baseType: !298, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3514, file: !3515, line: 51, baseType: !1254, size: 64, offset: 704)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3514, file: !3515, line: 52, baseType: !1254, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3514, file: !3515, line: 53, baseType: !1254, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3514, file: !3515, line: 54, baseType: !1254, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3514, file: !3515, line: 55, baseType: !1254, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3514, file: !3515, line: 56, baseType: !298, size: 64, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3514, file: !3515, line: 57, baseType: !298, size: 64, offset: 1088)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3514, file: !3515, line: 58, baseType: !298, size: 64, offset: 1152)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3514, file: !3515, line: 59, baseType: !298, size: 64, offset: 1216)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3514, file: !3515, line: 60, baseType: !298, size: 64, offset: 1280)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3514, file: !3515, line: 61, baseType: !3334, size: 64, offset: 1344)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3514, file: !3515, line: 62, baseType: !456, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3514, file: !3515, line: 63, baseType: !456, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3495, file: !80, line: 583, baseType: !456, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3495, file: !80, line: 584, baseType: !456, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3495, file: !80, line: 585, baseType: !456, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3495, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3495, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3495, file: !80, line: 592, baseType: !1246, size: 512, offset: 576)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3495, file: !80, line: 593, baseType: !177, size: 64, offset: 1088)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3495, file: !80, line: 594, baseType: !1910, size: 256, offset: 1152)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3495, file: !80, line: 595, baseType: !1433, size: 128, offset: 1408)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3495, file: !80, line: 596, baseType: !3522, size: 64, offset: 1536)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3495, file: !80, line: 597, baseType: !717, size: 32, offset: 1600)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3495, file: !80, line: 598, baseType: !717, size: 32, offset: 1632)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3495, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3495, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3495, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3495, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3495, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3495, file: !80, line: 604, baseType: !456, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3495, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3495, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3495, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3495, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3495, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3495, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3495, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3495, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3495, file: !80, line: 613, baseType: !184, size: 32, offset: 1792)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3495, file: !80, line: 614, baseType: !184, size: 32, offset: 1824)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3495, file: !80, line: 615, baseType: !177, size: 64, offset: 1856)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3495, file: !80, line: 616, baseType: !177, size: 64, offset: 1920)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3495, file: !80, line: 617, baseType: !177, size: 64, offset: 1984)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3495, file: !80, line: 618, baseType: !177, size: 64, offset: 2048)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3495, file: !80, line: 620, baseType: !3583, size: 64, offset: 2112)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3584, file: !80, line: 537, baseType: !208)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3584, file: !80, line: 538, baseType: !7, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3584, file: !80, line: 540, baseType: !170, size: 128, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3584, file: !80, line: 543, baseType: !3590, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3495, file: !80, line: 621, baseType: !3593, size: 64, offset: 2176)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3334, !1396}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3495, file: !80, line: 622, baseType: !3597, size: 64, offset: 2240)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !189, file: !73, line: 486, baseType: !3600, size: 64, offset: 4096)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3609, !3610, !3611}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3601, file: !80, line: 643, baseType: !3362, size: 1472)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3601, file: !80, line: 644, baseType: !3365, size: 64, offset: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3601, file: !80, line: 645, baseType: !3606, size: 64, offset: 1536)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3334, !456}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3601, file: !80, line: 646, baseType: !3365, size: 64, offset: 1600)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3601, file: !80, line: 647, baseType: !3356, size: 64, offset: 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3601, file: !80, line: 648, baseType: !3356, size: 64, offset: 1728)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !189, file: !73, line: 493, baseType: !3613, size: 64, offset: 4160)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !189, file: !73, line: 499, baseType: !170, size: 128, offset: 4224)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !189, file: !73, line: 502, baseType: !3617, size: 64, offset: 4352)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !189, file: !73, line: 504, baseType: !3621, size: 64, offset: 4416)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !189, file: !73, line: 505, baseType: !177, size: 64, offset: 4480)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !189, file: !73, line: 510, baseType: !177, size: 64, offset: 4544)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !189, file: !73, line: 511, baseType: !3625, size: 64, offset: 4608)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !189, file: !73, line: 513, baseType: !3629, size: 64, offset: 4672)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3631)
!3631 = !{!3632, !3633}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3630, file: !73, line: 293, baseType: !7, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3630, file: !73, line: 294, baseType: !298, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !189, file: !73, line: 515, baseType: !170, size: 128, offset: 4736)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !189, file: !73, line: 526, baseType: !3636, offset: 4864)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3637, line: 5, elements: !222)
!3637 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !189, file: !73, line: 528, baseType: !3639, size: 64, offset: 4864)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3641, line: 14, flags: DIFlagFwdDecl)
!3641 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !189, file: !73, line: 529, baseType: !3643, size: 64, offset: 4928)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3645, line: 17, size: 192, elements: !3646)
!3645 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3646 = !{!3647, !3648, !3731}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3644, file: !3645, line: 18, baseType: !3643, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3644, file: !3645, line: 19, baseType: !3649, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3651)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3645, line: 110, size: 1152, elements: !3652)
!3652 = !{!3653, !3657, !3661, !3667, !3673, !3677, !3681, !3686, !3690, !3691, !3695, !3699, !3703, !3714, !3715, !3716, !3717, !3727}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3651, file: !3645, line: 111, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!3643, !3643}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3651, file: !3645, line: 112, baseType: !3658, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{null, !3643}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3651, file: !3645, line: 113, baseType: !3662, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!456, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3651, file: !3645, line: 114, baseType: !3668, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!2080, !3665, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3651, file: !3645, line: 116, baseType: !3674, size: 64, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!456, !3665, !196}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3651, file: !3645, line: 118, baseType: !3678, size: 64, offset: 320)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!184, !3665, !196, !7, !164, !295}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3651, file: !3645, line: 123, baseType: !3682, size: 64, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!184, !3665, !196, !3685, !295}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3651, file: !3645, line: 126, baseType: !3687, size: 64, offset: 448)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!196, !3665}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3651, file: !3645, line: 127, baseType: !3687, size: 64, offset: 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3651, file: !3645, line: 128, baseType: !3692, size: 64, offset: 576)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3643, !3665}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3651, file: !3645, line: 130, baseType: !3696, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!3643, !3665, !3643}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3651, file: !3645, line: 133, baseType: !3700, size: 64, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!3643, !3665, !196}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3651, file: !3645, line: 135, baseType: !3704, size: 64, offset: 768)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!184, !3665, !196, !196, !7, !7, !3707}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3645, line: 43, size: 640, elements: !3709)
!3709 = !{!3710, !3711, !3712}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3708, file: !3645, line: 44, baseType: !3643, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3708, file: !3645, line: 45, baseType: !7, size: 32, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3708, file: !3645, line: 46, baseType: !3713, size: 512, offset: 128)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 512, elements: !1284)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3651, file: !3645, line: 140, baseType: !3696, size: 64, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3651, file: !3645, line: 143, baseType: !3692, size: 64, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3651, file: !3645, line: 145, baseType: !3654, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3651, file: !3645, line: 146, baseType: !3718, size: 64, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!184, !3665, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3645, line: 29, size: 128, elements: !3723)
!3723 = !{!3724, !3725, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3722, file: !3645, line: 30, baseType: !7, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3722, file: !3645, line: 31, baseType: !7, size: 32, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3722, file: !3645, line: 32, baseType: !3665, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3651, file: !3645, line: 148, baseType: !3728, size: 64, offset: 1088)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!184, !3665, !3334}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3644, file: !3645, line: 20, baseType: !3334, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !189, file: !73, line: 534, baseType: !479, size: 32, offset: 4992)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !189, file: !73, line: 535, baseType: !150, size: 32, offset: 5024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !189, file: !73, line: 537, baseType: !208, offset: 5056)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !189, file: !73, line: 538, baseType: !170, size: 128, offset: 5056)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !189, file: !73, line: 540, baseType: !3737, size: 64, offset: 5184)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3739, line: 54, size: 960, elements: !3740)
!3739 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747, !3751, !3755, !3756, !3757, !3758, !3762, !3766, !3767}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3738, file: !3739, line: 55, baseType: !196, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3738, file: !3739, line: 56, baseType: !599, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3738, file: !3739, line: 58, baseType: !302, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3738, file: !3739, line: 59, baseType: !302, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3738, file: !3739, line: 60, baseType: !201, size: 64, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3738, file: !3739, line: 62, baseType: !3347, size: 64, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3738, file: !3739, line: 63, baseType: !3748, size: 64, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!249, !3334, !3354}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3738, file: !3739, line: 65, baseType: !3752, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3737}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3738, file: !3739, line: 66, baseType: !3356, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3738, file: !3739, line: 68, baseType: !3365, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3738, file: !3739, line: 70, baseType: !3150, size: 64, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3738, file: !3739, line: 71, baseType: !3759, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!2080, !3334}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3738, file: !3739, line: 73, baseType: !3763, size: 64, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !3334, !3182, !3183}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3738, file: !3739, line: 75, baseType: !3360, size: 64, offset: 832)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3738, file: !3739, line: 77, baseType: !3477, size: 64, offset: 896)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !189, file: !73, line: 541, baseType: !302, size: 64, offset: 5248)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !189, file: !73, line: 543, baseType: !3356, size: 64, offset: 5312)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !189, file: !73, line: 544, baseType: !3771, size: 64, offset: 5376)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !189, file: !73, line: 545, baseType: !3774, size: 64, offset: 5440)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !189, file: !73, line: 547, baseType: !456, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !189, file: !73, line: 548, baseType: !456, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !189, file: !73, line: 549, baseType: !456, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !189, file: !73, line: 550, baseType: !456, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !186, file: !125, line: 164, baseType: !456, size: 8, offset: 5568)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !186, file: !125, line: 165, baseType: !3782, size: 320, offset: 5632)
!3782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 320, elements: !3783)
!3783 = !{!3784}
!3784 = !DISubrange(count: 5)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !186, file: !125, line: 166, baseType: !196, size: 64, offset: 5952)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !186, file: !125, line: 167, baseType: !196, size: 64, offset: 6016)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !186, file: !125, line: 168, baseType: !3788, size: 64, offset: 6080)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3789, line: 59, size: 64, elements: !3790)
!3789 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3790 = !{!3791, !3792, !3793, !3794}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3788, file: !3789, line: 60, baseType: !830, size: 16)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3788, file: !3789, line: 61, baseType: !830, size: 16, offset: 16)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3788, file: !3789, line: 62, baseType: !830, size: 16, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3788, file: !3789, line: 63, baseType: !830, size: 16, offset: 48)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !186, file: !125, line: 169, baseType: !196, size: 64, offset: 6144)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !186, file: !125, line: 170, baseType: !196, size: 64, offset: 6208)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !186, file: !125, line: 171, baseType: !3798, size: 256, offset: 6272)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !3799, line: 157, size: 256, elements: !3800)
!3799 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!3800 = !{!3801, !3807, !3808, !3809, !3810, !3811, !3812}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !3798, file: !3799, line: 158, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !3799, line: 140, size: 128, elements: !3804)
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3803, file: !3799, line: 141, baseType: !177, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3803, file: !3799, line: 142, baseType: !150, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3798, file: !3799, line: 159, baseType: !7, size: 32, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3798, file: !3799, line: 160, baseType: !7, size: 32, offset: 96)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3798, file: !3799, line: 161, baseType: !7, size: 32, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !3798, file: !3799, line: 162, baseType: !93, size: 32, offset: 160)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3798, file: !3799, line: 163, baseType: !196, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3798, file: !3799, line: 164, baseType: !208, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !186, file: !125, line: 172, baseType: !1143, size: 192, offset: 6528)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !186, file: !125, line: 173, baseType: !7, size: 32, offset: 6720)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !186, file: !125, line: 174, baseType: !3816, size: 64, offset: 6784)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !167, line: 48, size: 33728, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3849, !3850, !3851, !3852, !3853, !3854}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3817, file: !167, line: 49, baseType: !170, size: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3817, file: !167, line: 50, baseType: !1170, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !3817, file: !167, line: 52, baseType: !3822, size: 32960, offset: 192)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3817, file: !167, line: 52, size: 32960, elements: !3823)
!3823 = !{!3824, !3845}
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3822, file: !167, line: 52, baseType: !3825, size: 192)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3822, file: !167, line: 52, size: 192, elements: !3826)
!3826 = !{!3827, !3836, !3837, !3840, !3843, !3844}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !3825, file: !167, line: 52, baseType: !3828, size: 192)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !3829, line: 44, size: 192, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/lizy2001/genbc/linux")
!3830 = !{!3831, !3832, !3833, !3834, !3835}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3828, file: !3829, line: 45, baseType: !7, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3828, file: !3829, line: 46, baseType: !7, size: 32, offset: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3828, file: !3829, line: 47, baseType: !7, size: 32, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !3828, file: !3829, line: 48, baseType: !7, size: 32, offset: 96)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3828, file: !3829, line: 49, baseType: !164, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3825, file: !167, line: 52, baseType: !143, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !3825, file: !167, line: 52, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !3825, file: !167, line: 52, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, elements: !1675)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3825, file: !167, line: 52, baseType: !143, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !3825, file: !167, line: 52, baseType: !3838, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3822, file: !167, line: 52, baseType: !3846, size: 32768, offset: 192)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32768, elements: !3847)
!3847 = !{!3848}
!3848 = !DISubrange(count: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "last_event", scope: !3817, file: !167, line: 53, baseType: !1254, size: 64, offset: 33152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3817, file: !167, line: 54, baseType: !185, size: 64, offset: 33216)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "edge_spinlock", scope: !3817, file: !167, line: 56, baseType: !208, offset: 33280)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "edge_handle", scope: !3817, file: !167, line: 57, baseType: !3525, size: 320, offset: 33280)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "prev_ev", scope: !3817, file: !167, line: 60, baseType: !144, size: 64, offset: 33600)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "this_ev", scope: !3817, file: !167, line: 61, baseType: !144, size: 64, offset: 33664)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !186, file: !125, line: 175, baseType: !3856, size: 64, offset: 6848)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3858, line: 131, size: 10432, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866, !3868, !3869, !3870, !3871, !3872, !3873, !3875, !3876, !3877, !3878, !3879, !3880, !3894, !3899, !3994, !3997, !3998, !3999, !4001, !4004, !4014, !4015, !4016, !4017, !4018, !4022, !4026, !4030, !4034, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4121, !4122}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3857, file: !3858, line: 132, baseType: !196, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3857, file: !3858, line: 133, baseType: !196, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3857, file: !3858, line: 134, baseType: !196, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3857, file: !3858, line: 135, baseType: !3788, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3857, file: !3858, line: 137, baseType: !1322, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3857, file: !3858, line: 139, baseType: !1322, size: 64, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3857, file: !3858, line: 140, baseType: !3867, size: 768, offset: 384)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 768, elements: !2189)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3857, file: !3858, line: 141, baseType: !1322, size: 64, offset: 1152)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3857, file: !3858, line: 142, baseType: !1322, size: 64, offset: 1216)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3857, file: !3858, line: 143, baseType: !1322, size: 64, offset: 1280)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3857, file: !3858, line: 144, baseType: !1322, size: 64, offset: 1344)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3857, file: !3858, line: 145, baseType: !1322, size: 64, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3857, file: !3858, line: 146, baseType: !3874, size: 128, offset: 1472)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !1521)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3857, file: !3858, line: 147, baseType: !1322, size: 64, offset: 1600)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3857, file: !3858, line: 149, baseType: !7, size: 32, offset: 1664)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3857, file: !3858, line: 151, baseType: !7, size: 32, offset: 1696)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3857, file: !3858, line: 152, baseType: !7, size: 32, offset: 1728)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3857, file: !3858, line: 153, baseType: !164, size: 64, offset: 1792)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3857, file: !3858, line: 155, baseType: !3881, size: 64, offset: 1856)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!184, !3856, !3884, !2636}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3789, line: 114, size: 320, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3886, file: !3789, line: 116, baseType: !157, size: 8)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3886, file: !3789, line: 117, baseType: !157, size: 8, offset: 8)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3886, file: !3789, line: 118, baseType: !830, size: 16, offset: 16)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3886, file: !3789, line: 119, baseType: !152, size: 32, offset: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3886, file: !3789, line: 120, baseType: !3893, size: 256, offset: 64)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !2183)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3857, file: !3858, line: 158, baseType: !3895, size: 64, offset: 1920)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!184, !3856, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3857, file: !3858, line: 161, baseType: !3900, size: 64, offset: 1984)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3858, line: 534, size: 896, elements: !3902)
!3902 = !{!3903, !3970, !3974, !3978, !3982, !3983, !3987, !3988, !3989, !3990, !3991, !3992}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3901, file: !3858, line: 535, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!184, !3856, !3907, !3907}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3789, line: 450, size: 384, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3918, !3923}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3908, file: !3789, line: 451, baseType: !830, size: 16)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3908, file: !3789, line: 452, baseType: !1158, size: 16, offset: 16)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3908, file: !3789, line: 453, baseType: !830, size: 16, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3908, file: !3789, line: 454, baseType: !3914, size: 32, offset: 48)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3789, line: 316, size: 32, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3914, file: !3789, line: 317, baseType: !830, size: 16)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3914, file: !3789, line: 318, baseType: !830, size: 16, offset: 16)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3908, file: !3789, line: 455, baseType: !3919, size: 32, offset: 80)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3789, line: 306, size: 32, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3919, file: !3789, line: 307, baseType: !830, size: 16)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3919, file: !3789, line: 308, baseType: !830, size: 16, offset: 16)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3908, file: !3789, line: 463, baseType: !3924, size: 256, offset: 128)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3908, file: !3789, line: 457, size: 256, elements: !3925)
!3925 = !{!3926, !3937, !3943, !3955, !3965}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3924, file: !3789, line: 458, baseType: !3927, size: 80)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3789, line: 345, size: 80, elements: !3928)
!3928 = !{!3929, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3927, file: !3789, line: 346, baseType: !1158, size: 16)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3927, file: !3789, line: 347, baseType: !3931, size: 64, offset: 16)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3789, line: 333, size: 64, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3936}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3931, file: !3789, line: 334, baseType: !830, size: 16)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3931, file: !3789, line: 335, baseType: !830, size: 16, offset: 16)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3931, file: !3789, line: 336, baseType: !830, size: 16, offset: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3931, file: !3789, line: 337, baseType: !830, size: 16, offset: 48)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3924, file: !3789, line: 459, baseType: !3938, size: 96)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3789, line: 356, size: 96, elements: !3939)
!3939 = !{!3940, !3941, !3942}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !3938, file: !3789, line: 357, baseType: !1158, size: 16)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !3938, file: !3789, line: 358, baseType: !1158, size: 16, offset: 16)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3938, file: !3789, line: 359, baseType: !3931, size: 64, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3924, file: !3789, line: 460, baseType: !3944, size: 256)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3789, line: 401, size: 256, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !3944, file: !3789, line: 402, baseType: !830, size: 16)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3944, file: !3789, line: 403, baseType: !830, size: 16, offset: 16)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !3944, file: !3789, line: 404, baseType: !1158, size: 16, offset: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3944, file: !3789, line: 405, baseType: !1158, size: 16, offset: 48)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3944, file: !3789, line: 406, baseType: !830, size: 16, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3944, file: !3789, line: 408, baseType: !3931, size: 64, offset: 80)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !3944, file: !3789, line: 410, baseType: !152, size: 32, offset: 160)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !3944, file: !3789, line: 411, baseType: !3954, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3924, file: !3789, line: 461, baseType: !3956, size: 192)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3957, size: 192, elements: !1521)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3789, line: 372, size: 96, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !3957, file: !3789, line: 373, baseType: !830, size: 16)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !3957, file: !3789, line: 374, baseType: !830, size: 16, offset: 16)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !3957, file: !3789, line: 376, baseType: !1158, size: 16, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !3957, file: !3789, line: 377, baseType: !1158, size: 16, offset: 48)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !3957, file: !3789, line: 379, baseType: !830, size: 16, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !3957, file: !3789, line: 380, baseType: !1158, size: 16, offset: 80)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3924, file: !3789, line: 462, baseType: !3966, size: 32)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3789, line: 422, size: 32, elements: !3967)
!3967 = !{!3968, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !3966, file: !3789, line: 423, baseType: !830, size: 16)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !3966, file: !3789, line: 424, baseType: !830, size: 16, offset: 16)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3901, file: !3858, line: 537, baseType: !3971, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!184, !3856, !184}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3901, file: !3858, line: 539, baseType: !3975, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!184, !3856, !184, !184}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3901, file: !3858, line: 540, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3856, !829}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3901, file: !3858, line: 541, baseType: !3979, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3901, file: !3858, line: 543, baseType: !3984, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{null, !3900}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3901, file: !3858, line: 545, baseType: !164, size: 64, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3901, file: !3858, line: 547, baseType: !3874, size: 128, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3901, file: !3858, line: 549, baseType: !1143, size: 192, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3901, file: !3858, line: 551, baseType: !184, size: 32, offset: 768)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3901, file: !3858, line: 552, baseType: !3907, size: 64, offset: 832)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3901, file: !3858, line: 553, baseType: !3993, offset: 896)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, elements: !2284)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3857, file: !3858, line: 163, baseType: !3995, size: 64, offset: 2048)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3858, line: 24, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3857, file: !3858, line: 165, baseType: !7, size: 32, offset: 2112)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3857, file: !3858, line: 166, baseType: !3525, size: 320, offset: 2176)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3857, file: !3858, line: 168, baseType: !4000, size: 64, offset: 2496)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !1521)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3857, file: !3858, line: 170, baseType: !4002, size: 64, offset: 2560)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3858, line: 170, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3857, file: !3858, line: 172, baseType: !4005, size: 64, offset: 2624)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3789, line: 90, size: 192, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011, !4012, !4013}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4006, file: !3789, line: 91, baseType: !1397, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4006, file: !3789, line: 92, baseType: !1397, size: 32, offset: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4006, file: !3789, line: 93, baseType: !1397, size: 32, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4006, file: !3789, line: 94, baseType: !1397, size: 32, offset: 96)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4006, file: !3789, line: 95, baseType: !1397, size: 32, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4006, file: !3789, line: 96, baseType: !1397, size: 32, offset: 160)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3857, file: !3858, line: 174, baseType: !3867, size: 768, offset: 2688)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3857, file: !3858, line: 175, baseType: !1322, size: 64, offset: 3456)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3857, file: !3858, line: 176, baseType: !1322, size: 64, offset: 3520)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3857, file: !3858, line: 177, baseType: !1322, size: 64, offset: 3584)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3857, file: !3858, line: 179, baseType: !4019, size: 64, offset: 3648)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!184, !3856}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3857, file: !3858, line: 180, baseType: !4023, size: 64, offset: 3712)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !3856}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3857, file: !3858, line: 181, baseType: !4027, size: 64, offset: 3776)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!184, !3856, !326}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3857, file: !3858, line: 182, baseType: !4031, size: 64, offset: 3840)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!184, !3856, !7, !7, !184}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3857, file: !3858, line: 184, baseType: !4035, size: 64, offset: 3904)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3858, line: 337, size: 576, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4108, !4109}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4036, file: !3858, line: 339, baseType: !164, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4036, file: !3858, line: 341, baseType: !184, size: 32, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4036, file: !3858, line: 342, baseType: !196, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4036, file: !3858, line: 344, baseType: !3856, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4036, file: !3858, line: 345, baseType: !4043, size: 64, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3858, line: 302, size: 960, elements: !4045)
!4045 = !{!4046, !4047, !4051, !4062, !4066, !4070, !4097, !4101, !4102, !4103, !4104, !4105, !4106, !4107}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4044, file: !3858, line: 304, baseType: !164, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4044, file: !3858, line: 306, baseType: !4048, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !4035, !7, !7, !184}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4044, file: !3858, line: 307, baseType: !4052, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null, !4035, !4055, !7}
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4057)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3858, line: 32, size: 64, elements: !4058)
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4057, file: !3858, line: 33, baseType: !830, size: 16)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4057, file: !3858, line: 34, baseType: !830, size: 16, offset: 16)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4057, file: !3858, line: 35, baseType: !1397, size: 32, offset: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4044, file: !3858, line: 309, baseType: !4063, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!456, !4035, !7, !7, !184}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4044, file: !3858, line: 310, baseType: !4067, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!456, !4043, !3856}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4044, file: !3858, line: 311, baseType: !4071, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!184, !4043, !3856, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4076)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3418, line: 342, size: 1600, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4085, !4087, !4088, !4089, !4090, !4091, !4092, !4094, !4095, !4096}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4076, file: !3418, line: 344, baseType: !3437, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4076, file: !3418, line: 346, baseType: !830, size: 16, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4076, file: !3418, line: 347, baseType: !830, size: 16, offset: 80)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4076, file: !3418, line: 348, baseType: !830, size: 16, offset: 96)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4076, file: !3418, line: 349, baseType: !830, size: 16, offset: 112)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4076, file: !3418, line: 351, baseType: !4084, size: 64, offset: 128)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3437, size: 64, elements: !1323)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4076, file: !3418, line: 352, baseType: !4086, size: 768, offset: 192)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3437, size: 768, elements: !2189)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4076, file: !3418, line: 353, baseType: !4084, size: 64, offset: 960)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4076, file: !3418, line: 354, baseType: !4084, size: 64, offset: 1024)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4076, file: !3418, line: 355, baseType: !4084, size: 64, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4076, file: !3418, line: 356, baseType: !4084, size: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4076, file: !3418, line: 357, baseType: !4084, size: 64, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4076, file: !3418, line: 358, baseType: !4093, size: 128, offset: 1280)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3437, size: 128, elements: !1521)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4076, file: !3418, line: 359, baseType: !4084, size: 64, offset: 1408)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4076, file: !3418, line: 360, baseType: !4084, size: 64, offset: 1472)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4076, file: !3418, line: 362, baseType: !3437, size: 64, offset: 1536)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4044, file: !3858, line: 312, baseType: !4098, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4035}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4044, file: !3858, line: 313, baseType: !4098, size: 64, offset: 448)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4044, file: !3858, line: 315, baseType: !456, size: 8, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4044, file: !3858, line: 316, baseType: !184, size: 32, offset: 544)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4044, file: !3858, line: 317, baseType: !196, size: 64, offset: 576)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4044, file: !3858, line: 319, baseType: !4074, size: 64, offset: 640)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4044, file: !3858, line: 321, baseType: !170, size: 128, offset: 704)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4044, file: !3858, line: 322, baseType: !170, size: 128, offset: 832)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4036, file: !3858, line: 347, baseType: !170, size: 128, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4036, file: !3858, line: 348, baseType: !170, size: 128, offset: 448)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3857, file: !3858, line: 186, baseType: !208, offset: 3968)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3857, file: !3858, line: 187, baseType: !1143, size: 192, offset: 3968)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3857, file: !3858, line: 189, baseType: !7, size: 32, offset: 4160)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3857, file: !3858, line: 190, baseType: !456, size: 8, offset: 4192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3857, file: !3858, line: 192, baseType: !189, size: 5568, offset: 4224)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3857, file: !3858, line: 194, baseType: !170, size: 128, offset: 9792)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3857, file: !3858, line: 195, baseType: !170, size: 128, offset: 9920)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3857, file: !3858, line: 197, baseType: !7, size: 32, offset: 10048)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3857, file: !3858, line: 198, baseType: !7, size: 32, offset: 10080)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3857, file: !3858, line: 199, baseType: !4120, size: 64, offset: 10112)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3857, file: !3858, line: 201, baseType: !456, size: 8, offset: 10176)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3857, file: !3858, line: 203, baseType: !4123, size: 192, offset: 10240)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1254, size: 192, elements: !250)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !186, file: !125, line: 176, baseType: !124, size: 32, offset: 6912)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !186, file: !125, line: 177, baseType: !456, size: 8, offset: 6944)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !186, file: !125, line: 178, baseType: !456, size: 8, offset: 6952)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !186, file: !125, line: 179, baseType: !177, size: 64, offset: 6976)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !186, file: !125, line: 180, baseType: !177, size: 64, offset: 7040)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !186, file: !125, line: 181, baseType: !177, size: 64, offset: 7104)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !186, file: !125, line: 182, baseType: !93, size: 32, offset: 7168)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !186, file: !125, line: 183, baseType: !4132, size: 64, offset: 7200)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !125, line: 38, size: 64, elements: !4133)
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4132, file: !125, line: 39, baseType: !150, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4132, file: !125, line: 40, baseType: !150, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !186, file: !125, line: 184, baseType: !4132, size: 64, offset: 7264)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !186, file: !125, line: 185, baseType: !150, size: 32, offset: 7328)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !186, file: !125, line: 186, baseType: !150, size: 32, offset: 7360)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !186, file: !125, line: 187, baseType: !164, size: 64, offset: 7424)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !186, file: !125, line: 188, baseType: !208, offset: 7488)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !186, file: !125, line: 189, baseType: !456, size: 8, offset: 7488)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !186, file: !125, line: 190, baseType: !298, size: 64, offset: 7552)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !186, file: !125, line: 191, baseType: !3525, size: 320, offset: 7616)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !186, file: !125, line: 192, baseType: !3525, size: 320, offset: 7936)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !186, file: !125, line: 193, baseType: !150, size: 32, offset: 8256)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !186, file: !125, line: 194, baseType: !93, size: 32, offset: 8288)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !186, file: !125, line: 195, baseType: !177, size: 64, offset: 8320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !186, file: !125, line: 196, baseType: !156, size: 8, offset: 8384)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !186, file: !125, line: 197, baseType: !150, size: 32, offset: 8416)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !186, file: !125, line: 198, baseType: !150, size: 32, offset: 8448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !186, file: !125, line: 199, baseType: !150, size: 32, offset: 8480)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !186, file: !125, line: 200, baseType: !150, size: 32, offset: 8512)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !186, file: !125, line: 201, baseType: !150, size: 32, offset: 8544)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !186, file: !125, line: 211, baseType: !456, size: 8, offset: 8576)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !186, file: !125, line: 212, baseType: !4156, size: 64, offset: 8640)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!184, !185, !3621}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !186, file: !125, line: 213, baseType: !4160, size: 64, offset: 8704)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!184, !185}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !186, file: !125, line: 214, baseType: !4164, size: 64, offset: 8768)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !185}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !186, file: !125, line: 215, baseType: !4168, size: 64, offset: 8832)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!184, !185, !150}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !186, file: !125, line: 216, baseType: !4168, size: 64, offset: 8896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !186, file: !125, line: 217, baseType: !4168, size: 64, offset: 8960)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !186, file: !125, line: 218, baseType: !4174, size: 64, offset: 9024)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!184, !185, !150, !150}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !186, file: !125, line: 219, baseType: !4178, size: 64, offset: 9088)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!184, !185, !2636, !7}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !186, file: !125, line: 220, baseType: !4182, size: 64, offset: 9152)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !185, !456}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !186, file: !125, line: 221, baseType: !4186, size: 64, offset: 9216)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!184, !185, !184}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !186, file: !125, line: 222, baseType: !4186, size: 64, offset: 9280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !186, file: !125, line: 223, baseType: !4191, size: 64, offset: 9344)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!184, !185, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !186, file: !125, line: 225, baseType: !4191, size: 64, offset: 9408)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !186, file: !125, line: 227, baseType: !4197, size: 64, offset: 9472)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!184, !185, !7}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !166, file: !167, line: 38, baseType: !4201, size: 64, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!184, !93, !150, !143, !7}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !166, file: !167, line: 40, baseType: !150, size: 32, offset: 320)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !166, file: !167, line: 41, baseType: !150, size: 32, offset: 352)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "raw_register", scope: !166, file: !167, line: 44, baseType: !4160, size: 64, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "raw_unregister", scope: !166, file: !167, line: 45, baseType: !4160, size: 64, offset: 448)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !612)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !499)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !174)
!4218 = !{!0, !4219, !4221, !4223, !4228, !4230, !4232}
!4219 = !DIGlobalVariableExpression(var: !4220, expr: !DIExpression())
!4220 = distinct !DIGlobalVariable(name: "available_protocols", scope: !2, file: !3, line: 19, type: !743, isLocal: true, isDefinition: true)
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(name: "ir_raw_handler_list", scope: !2, file: !3, line: 18, type: !170, isLocal: true, isDefinition: true)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(name: "__print_once", scope: !4225, file: !3, line: 33, type: !456, isLocal: true, isDefinition: true)
!4225 = distinct !DISubprogram(name: "ir_raw_event_thread", scope: !3, file: !3, line: 21, type: !4226, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!184, !164}
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(name: "__print_once", scope: !4225, file: !3, line: 36, type: !456, isLocal: true, isDefinition: true)
!4230 = !DIGlobalVariableExpression(var: !4231, expr: !DIExpression())
!4231 = distinct !DIGlobalVariable(name: "__print_once", scope: !4225, file: !3, line: 39, type: !456, isLocal: true, isDefinition: true)
!4232 = !DIGlobalVariableExpression(var: !4233, expr: !DIExpression())
!4233 = distinct !DIGlobalVariable(name: "ir_raw_client_list", scope: !2, file: !3, line: 14, type: !170, isLocal: true, isDefinition: true)
!4234 = !{!"rsp"}
!4235 = !{i32 7, !"Dwarf Version", i32 4}
!4236 = !{i32 2, !"Debug Info Version", i32 3}
!4237 = !{i32 1, !"wchar_size", i32 2}
!4238 = !{i32 1, !"Code Model", i32 2}
!4239 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4240 = distinct !DISubprogram(name: "ir_raw_event_store", scope: !3, file: !3, line: 74, type: !4241, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!184, !185, !143}
!4243 = !DILocalVariable(name: "dev", arg: 1, scope: !4240, file: !3, line: 74, type: !185)
!4244 = !DILocation(line: 74, column: 39, scope: !4240)
!4245 = !DILocalVariable(name: "ev", arg: 2, scope: !4240, file: !3, line: 74, type: !143)
!4246 = !DILocation(line: 74, column: 65, scope: !4240)
!4247 = !DILocation(line: 76, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 76, column: 6)
!4249 = !DILocation(line: 76, column: 12, scope: !4248)
!4250 = !DILocation(line: 76, column: 6, scope: !4240)
!4251 = !DILocation(line: 77, column: 3, scope: !4248)
!4252 = !DILocalVariable(name: "__tmp", scope: !4253, file: !3, line: 82, type: !4255)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 82, column: 7)
!4254 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 82, column: 6)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!4256 = !DILocation(line: 82, column: 7, scope: !4253)
!4257 = !DILocalVariable(name: "__val", scope: !4253, file: !3, line: 82, type: !3839)
!4258 = !DILocalVariable(name: "__ret", scope: !4253, file: !3, line: 82, type: !7)
!4259 = !DILocalVariable(name: "__recsize", scope: !4253, file: !3, line: 82, type: !295)
!4260 = !DILocalVariable(name: "__kfifo", scope: !4253, file: !3, line: 82, type: !4261)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!4262 = !DILocation(line: 82, column: 7, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 82, column: 7)
!4264 = !DILocalVariable(name: "__tmpq", scope: !4265, file: !3, line: 82, type: !4255)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 82, column: 7)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 82, column: 7)
!4267 = !DILocation(line: 82, column: 7, scope: !4265)
!4268 = !DILocalVariable(name: "__tmpl", scope: !4269, file: !3, line: 82, type: !4255)
!4269 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 82, column: 7)
!4270 = !DILocation(line: 82, column: 7, scope: !4269)
!4271 = !DILocation(line: 82, column: 7, scope: !4266)
!4272 = !DILocation(line: 82, column: 7, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 82, column: 7)
!4274 = !DILocation(line: 82, column: 7, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 82, column: 7)
!4276 = !{i32 -2141859760}
!4277 = !DILocation(line: 82, column: 7, scope: !4254)
!4278 = !DILocation(line: 82, column: 6, scope: !4240)
!4279 = !DILocation(line: 83, column: 3, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 82, column: 41)
!4281 = !DILocation(line: 84, column: 3, scope: !4280)
!4282 = !DILocation(line: 87, column: 2, scope: !4240)
!4283 = !DILocation(line: 88, column: 1, scope: !4240)
!4284 = distinct !DISubprogram(name: "ir_raw_event_store_edge", scope: !3, file: !3, line: 102, type: !4285, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!184, !185, !456}
!4287 = !DILocalVariable(name: "dev", arg: 1, scope: !4284, file: !3, line: 102, type: !185)
!4288 = !DILocation(line: 102, column: 44, scope: !4284)
!4289 = !DILocalVariable(name: "pulse", arg: 2, scope: !4284, file: !3, line: 102, type: !456)
!4290 = !DILocation(line: 102, column: 54, scope: !4284)
!4291 = !DILocalVariable(name: "now", scope: !4284, file: !3, line: 104, type: !1254)
!4292 = !DILocation(line: 104, column: 12, scope: !4284)
!4293 = !DILocalVariable(name: "ev", scope: !4284, file: !3, line: 105, type: !144)
!4294 = !DILocation(line: 105, column: 22, scope: !4284)
!4295 = !DILocation(line: 107, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 107, column: 6)
!4297 = !DILocation(line: 107, column: 12, scope: !4296)
!4298 = !DILocation(line: 107, column: 6, scope: !4284)
!4299 = !DILocation(line: 108, column: 3, scope: !4296)
!4300 = !DILocation(line: 110, column: 8, scope: !4284)
!4301 = !DILocation(line: 110, column: 6, scope: !4284)
!4302 = !DILocation(line: 111, column: 28, scope: !4284)
!4303 = !DILocation(line: 111, column: 16, scope: !4284)
!4304 = !DILocation(line: 111, column: 5, scope: !4284)
!4305 = !DILocation(line: 111, column: 14, scope: !4284)
!4306 = !DILocation(line: 112, column: 14, scope: !4284)
!4307 = !DILocation(line: 112, column: 13, scope: !4284)
!4308 = !DILocation(line: 112, column: 5, scope: !4284)
!4309 = !DILocation(line: 112, column: 11, scope: !4284)
!4310 = !DILocation(line: 114, column: 41, scope: !4284)
!4311 = !DILocation(line: 114, column: 9, scope: !4284)
!4312 = !DILocation(line: 114, column: 2, scope: !4284)
!4313 = !DILocation(line: 115, column: 1, scope: !4284)
!4314 = distinct !DISubprogram(name: "ktime_to_us", scope: !1255, file: !1255, line: 159, type: !4315, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!747, !4317}
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!4318 = !DILocalVariable(name: "kt", arg: 1, scope: !4314, file: !1255, line: 159, type: !4317)
!4319 = !DILocation(line: 159, column: 45, scope: !4314)
!4320 = !DILocation(line: 161, column: 21, scope: !4314)
!4321 = !DILocation(line: 161, column: 9, scope: !4314)
!4322 = !DILocation(line: 161, column: 2, scope: !4314)
!4323 = distinct !DISubprogram(name: "ir_raw_event_store_with_timeout", scope: !3, file: !3, line: 129, type: !4241, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4324 = !DILocalVariable(name: "lock", arg: 1, scope: !4325, file: !4326, line: 392, type: !1034)
!4325 = distinct !DISubprogram(name: "spin_unlock", scope: !4326, file: !4326, line: 392, type: !4327, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4326 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !1034}
!4329 = !DILocation(line: 392, column: 53, scope: !4325, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 151, column: 2, scope: !4323)
!4331 = !DILocalVariable(name: "m", arg: 1, scope: !4332, file: !4333, line: 363, type: !2780)
!4332 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4333, file: !4333, line: 363, type: !4334, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4333 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!298, !2780}
!4336 = !DILocation(line: 363, column: 74, scope: !4332, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 149, column: 16, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 147, column: 43)
!4339 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 145, column: 6)
!4340 = !DILocation(line: 363, column: 74, scope: !4332, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 146, column: 6, scope: !4339)
!4342 = !DILocalVariable(name: "lock", arg: 1, scope: !4343, file: !4326, line: 352, type: !1034)
!4343 = distinct !DISubprogram(name: "spin_lock", scope: !4326, file: !4326, line: 352, type: !4327, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4344 = !DILocation(line: 352, column: 51, scope: !4343, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 139, column: 2, scope: !4323)
!4346 = !DILocalVariable(name: "dev", arg: 1, scope: !4323, file: !3, line: 129, type: !185)
!4347 = !DILocation(line: 129, column: 52, scope: !4323)
!4348 = !DILocalVariable(name: "ev", arg: 2, scope: !4323, file: !3, line: 129, type: !143)
!4349 = !DILocation(line: 129, column: 78, scope: !4323)
!4350 = !DILocalVariable(name: "now", scope: !4323, file: !3, line: 131, type: !1254)
!4351 = !DILocation(line: 131, column: 11, scope: !4323)
!4352 = !DILocalVariable(name: "rc", scope: !4323, file: !3, line: 132, type: !184)
!4353 = !DILocation(line: 132, column: 7, scope: !4323)
!4354 = !DILocation(line: 134, column: 7, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 134, column: 6)
!4356 = !DILocation(line: 134, column: 12, scope: !4355)
!4357 = !DILocation(line: 134, column: 6, scope: !4323)
!4358 = !DILocation(line: 135, column: 3, scope: !4355)
!4359 = !DILocation(line: 137, column: 8, scope: !4323)
!4360 = !DILocation(line: 137, column: 6, scope: !4323)
!4361 = !DILocation(line: 139, column: 13, scope: !4323)
!4362 = !DILocation(line: 139, column: 18, scope: !4323)
!4363 = !DILocation(line: 139, column: 23, scope: !4323)
!4364 = !DILocation(line: 354, column: 2, scope: !4365, inlinedAt: !4345)
!4365 = distinct !DILexicalBlock(scope: !4343, file: !4326, line: 354, column: 2)
!4366 = !{i32 -2145318366}
!4367 = !DILocation(line: 354, column: 2, scope: !4368, inlinedAt: !4345)
!4368 = distinct !DILexicalBlock(scope: !4365, file: !4326, line: 354, column: 2)
!4369 = !DILocation(line: 140, column: 26, scope: !4323)
!4370 = !DILocation(line: 140, column: 31, scope: !4323)
!4371 = !DILocation(line: 140, column: 7, scope: !4323)
!4372 = !DILocation(line: 140, column: 5, scope: !4323)
!4373 = !DILocation(line: 142, column: 25, scope: !4323)
!4374 = !DILocation(line: 142, column: 2, scope: !4323)
!4375 = !DILocation(line: 142, column: 7, scope: !4323)
!4376 = !DILocation(line: 142, column: 12, scope: !4323)
!4377 = !DILocation(line: 142, column: 23, scope: !4323)
!4378 = !DILocation(line: 145, column: 22, scope: !4339)
!4379 = !DILocation(line: 145, column: 27, scope: !4339)
!4380 = !DILocation(line: 145, column: 32, scope: !4339)
!4381 = !DILocation(line: 145, column: 7, scope: !4339)
!4382 = !DILocation(line: 145, column: 45, scope: !4339)
!4383 = !DILocation(line: 146, column: 6, scope: !4339)
!4384 = !DILocation(line: 365, column: 27, scope: !4385, inlinedAt: !4341)
!4385 = distinct !DILexicalBlock(scope: !4332, file: !4333, line: 365, column: 6)
!4386 = !DILocation(line: 365, column: 6, scope: !4385, inlinedAt: !4341)
!4387 = !DILocation(line: 365, column: 6, scope: !4332, inlinedAt: !4341)
!4388 = !DILocation(line: 366, column: 12, scope: !4389, inlinedAt: !4341)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !4333, line: 366, column: 7)
!4390 = distinct !DILexicalBlock(scope: !4385, file: !4333, line: 365, column: 31)
!4391 = !DILocation(line: 366, column: 14, scope: !4389, inlinedAt: !4341)
!4392 = !DILocation(line: 366, column: 7, scope: !4390, inlinedAt: !4341)
!4393 = !DILocation(line: 367, column: 4, scope: !4389, inlinedAt: !4341)
!4394 = !DILocation(line: 368, column: 28, scope: !4390, inlinedAt: !4341)
!4395 = !DILocation(line: 368, column: 10, scope: !4390, inlinedAt: !4341)
!4396 = !DILocation(line: 368, column: 3, scope: !4390, inlinedAt: !4341)
!4397 = !DILocation(line: 370, column: 29, scope: !4398, inlinedAt: !4341)
!4398 = distinct !DILexicalBlock(scope: !4385, file: !4333, line: 369, column: 9)
!4399 = !DILocation(line: 370, column: 10, scope: !4398, inlinedAt: !4341)
!4400 = !DILocation(line: 370, column: 3, scope: !4398, inlinedAt: !4341)
!4401 = !DILocation(line: 372, column: 1, scope: !4332, inlinedAt: !4341)
!4402 = !DILocation(line: 145, column: 6, scope: !4323)
!4403 = !DILocation(line: 148, column: 14, scope: !4338)
!4404 = !DILocation(line: 148, column: 19, scope: !4338)
!4405 = !DILocation(line: 148, column: 24, scope: !4338)
!4406 = !DILocation(line: 149, column: 6, scope: !4338)
!4407 = !DILocation(line: 365, column: 27, scope: !4385, inlinedAt: !4337)
!4408 = !DILocation(line: 365, column: 6, scope: !4385, inlinedAt: !4337)
!4409 = !DILocation(line: 365, column: 6, scope: !4332, inlinedAt: !4337)
!4410 = !DILocation(line: 366, column: 12, scope: !4389, inlinedAt: !4337)
!4411 = !DILocation(line: 366, column: 14, scope: !4389, inlinedAt: !4337)
!4412 = !DILocation(line: 366, column: 7, scope: !4390, inlinedAt: !4337)
!4413 = !DILocation(line: 367, column: 4, scope: !4389, inlinedAt: !4337)
!4414 = !DILocation(line: 368, column: 28, scope: !4390, inlinedAt: !4337)
!4415 = !DILocation(line: 368, column: 10, scope: !4390, inlinedAt: !4337)
!4416 = !DILocation(line: 368, column: 3, scope: !4390, inlinedAt: !4337)
!4417 = !DILocation(line: 370, column: 29, scope: !4398, inlinedAt: !4337)
!4418 = !DILocation(line: 370, column: 10, scope: !4398, inlinedAt: !4337)
!4419 = !DILocation(line: 370, column: 3, scope: !4398, inlinedAt: !4337)
!4420 = !DILocation(line: 372, column: 1, scope: !4332, inlinedAt: !4337)
!4421 = !DILocation(line: 149, column: 14, scope: !4338)
!4422 = !DILocation(line: 148, column: 3, scope: !4338)
!4423 = !DILocation(line: 150, column: 2, scope: !4338)
!4424 = !DILocation(line: 151, column: 15, scope: !4323)
!4425 = !DILocation(line: 151, column: 20, scope: !4323)
!4426 = !DILocation(line: 151, column: 25, scope: !4323)
!4427 = !DILocation(line: 394, column: 2, scope: !4428, inlinedAt: !4330)
!4428 = distinct !DILexicalBlock(scope: !4325, file: !4326, line: 394, column: 2)
!4429 = !{i32 -2145316005}
!4430 = !DILocation(line: 394, column: 2, scope: !4431, inlinedAt: !4330)
!4431 = distinct !DILexicalBlock(scope: !4428, file: !4326, line: 394, column: 2)
!4432 = !DILocation(line: 153, column: 9, scope: !4323)
!4433 = !DILocation(line: 153, column: 2, scope: !4323)
!4434 = !DILocation(line: 154, column: 1, scope: !4323)
!4435 = distinct !DISubprogram(name: "timer_pending", scope: !3526, file: !3526, line: 166, type: !4436, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!184, !4438}
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3525)
!4440 = !DILocalVariable(name: "timer", arg: 1, scope: !4435, file: !3526, line: 166, type: !4438)
!4441 = !DILocation(line: 166, column: 59, scope: !4435)
!4442 = !DILocation(line: 168, column: 35, scope: !4435)
!4443 = !DILocation(line: 168, column: 42, scope: !4435)
!4444 = !DILocation(line: 168, column: 10, scope: !4435)
!4445 = !DILocation(line: 168, column: 9, scope: !4435)
!4446 = !DILocation(line: 168, column: 2, scope: !4435)
!4447 = distinct !DISubprogram(name: "ir_raw_event_store_with_filter", scope: !3, file: !3, line: 169, type: !4241, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4448 = !DILocalVariable(name: "dev", arg: 1, scope: !4447, file: !3, line: 169, type: !185)
!4449 = !DILocation(line: 169, column: 51, scope: !4447)
!4450 = !DILocalVariable(name: "ev", arg: 2, scope: !4447, file: !3, line: 169, type: !143)
!4451 = !DILocation(line: 169, column: 77, scope: !4447)
!4452 = !DILocation(line: 171, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 171, column: 6)
!4454 = !DILocation(line: 171, column: 12, scope: !4453)
!4455 = !DILocation(line: 171, column: 6, scope: !4447)
!4456 = !DILocation(line: 172, column: 3, scope: !4453)
!4457 = !DILocation(line: 175, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 175, column: 6)
!4459 = !DILocation(line: 175, column: 11, scope: !4458)
!4460 = !DILocation(line: 175, column: 16, scope: !4458)
!4461 = !DILocation(line: 175, column: 20, scope: !4458)
!4462 = !DILocation(line: 175, column: 24, scope: !4458)
!4463 = !DILocation(line: 175, column: 6, scope: !4447)
!4464 = !DILocation(line: 176, column: 3, scope: !4458)
!4465 = !DILocation(line: 177, column: 11, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 177, column: 11)
!4467 = !DILocation(line: 177, column: 16, scope: !4466)
!4468 = !DILocation(line: 177, column: 11, scope: !4458)
!4469 = !DILocation(line: 178, column: 25, scope: !4466)
!4470 = !DILocation(line: 178, column: 3, scope: !4466)
!4471 = !DILocation(line: 180, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 180, column: 6)
!4473 = !DILocation(line: 180, column: 12, scope: !4472)
!4474 = !DILocation(line: 180, column: 17, scope: !4472)
!4475 = !DILocation(line: 180, column: 25, scope: !4472)
!4476 = !DILocation(line: 180, column: 6, scope: !4447)
!4477 = !DILocation(line: 181, column: 3, scope: !4472)
!4478 = !DILocation(line: 181, column: 8, scope: !4472)
!4479 = !DILocation(line: 181, column: 13, scope: !4472)
!4480 = !DILocation(line: 181, column: 24, scope: !4472)
!4481 = !DILocation(line: 181, column: 23, scope: !4472)
!4482 = !DILocation(line: 182, column: 11, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 182, column: 11)
!4484 = !DILocation(line: 182, column: 15, scope: !4483)
!4485 = !DILocation(line: 182, column: 24, scope: !4483)
!4486 = !DILocation(line: 182, column: 29, scope: !4483)
!4487 = !DILocation(line: 182, column: 34, scope: !4483)
!4488 = !DILocation(line: 182, column: 42, scope: !4483)
!4489 = !DILocation(line: 182, column: 21, scope: !4483)
!4490 = !DILocation(line: 182, column: 11, scope: !4472)
!4491 = !DILocation(line: 183, column: 33, scope: !4483)
!4492 = !DILocation(line: 183, column: 37, scope: !4483)
!4493 = !DILocation(line: 183, column: 3, scope: !4483)
!4494 = !DILocation(line: 183, column: 8, scope: !4483)
!4495 = !DILocation(line: 183, column: 13, scope: !4483)
!4496 = !DILocation(line: 183, column: 21, scope: !4483)
!4497 = !DILocation(line: 183, column: 30, scope: !4483)
!4498 = !DILocation(line: 185, column: 22, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 184, column: 7)
!4500 = !DILocation(line: 185, column: 28, scope: !4499)
!4501 = !DILocation(line: 185, column: 33, scope: !4499)
!4502 = !DILocation(line: 185, column: 38, scope: !4499)
!4503 = !DILocation(line: 185, column: 3, scope: !4499)
!4504 = !DILocation(line: 186, column: 3, scope: !4499)
!4505 = !DILocation(line: 186, column: 8, scope: !4499)
!4506 = !DILocation(line: 186, column: 13, scope: !4499)
!4507 = !DILocation(line: 186, column: 24, scope: !4499)
!4508 = !DILocation(line: 186, column: 23, scope: !4499)
!4509 = !DILocation(line: 190, column: 7, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 190, column: 6)
!4511 = !DILocation(line: 190, column: 11, scope: !4510)
!4512 = !DILocation(line: 190, column: 17, scope: !4510)
!4513 = !DILocation(line: 190, column: 20, scope: !4510)
!4514 = !DILocation(line: 190, column: 25, scope: !4510)
!4515 = !DILocation(line: 190, column: 33, scope: !4510)
!4516 = !DILocation(line: 191, column: 6, scope: !4510)
!4517 = !DILocation(line: 191, column: 11, scope: !4510)
!4518 = !DILocation(line: 191, column: 16, scope: !4510)
!4519 = !DILocation(line: 191, column: 24, scope: !4510)
!4520 = !DILocation(line: 191, column: 36, scope: !4510)
!4521 = !DILocation(line: 191, column: 41, scope: !4510)
!4522 = !DILocation(line: 191, column: 33, scope: !4510)
!4523 = !DILocation(line: 190, column: 6, scope: !4447)
!4524 = !DILocation(line: 192, column: 25, scope: !4510)
!4525 = !DILocation(line: 192, column: 3, scope: !4510)
!4526 = !DILocation(line: 194, column: 2, scope: !4447)
!4527 = !DILocation(line: 195, column: 1, scope: !4447)
!4528 = distinct !DISubprogram(name: "ir_raw_event_set_idle", scope: !3, file: !3, line: 203, type: !4183, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4529 = !DILocalVariable(name: "dev", arg: 1, scope: !4528, file: !3, line: 203, type: !185)
!4530 = !DILocation(line: 203, column: 43, scope: !4528)
!4531 = !DILocalVariable(name: "idle", arg: 2, scope: !4528, file: !3, line: 203, type: !456)
!4532 = !DILocation(line: 203, column: 53, scope: !4528)
!4533 = !DILocation(line: 205, column: 7, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 205, column: 6)
!4535 = !DILocation(line: 205, column: 12, scope: !4534)
!4536 = !DILocation(line: 205, column: 6, scope: !4528)
!4537 = !DILocation(line: 206, column: 3, scope: !4534)
!4538 = !DILocation(line: 210, column: 6, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 210, column: 6)
!4540 = !DILocation(line: 210, column: 6, scope: !4528)
!4541 = !DILocation(line: 211, column: 3, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 210, column: 12)
!4543 = !DILocation(line: 211, column: 8, scope: !4542)
!4544 = !DILocation(line: 211, column: 13, scope: !4542)
!4545 = !DILocation(line: 211, column: 21, scope: !4542)
!4546 = !DILocation(line: 211, column: 29, scope: !4542)
!4547 = !DILocation(line: 212, column: 22, scope: !4542)
!4548 = !DILocation(line: 212, column: 28, scope: !4542)
!4549 = !DILocation(line: 212, column: 33, scope: !4542)
!4550 = !DILocation(line: 212, column: 38, scope: !4542)
!4551 = !DILocation(line: 212, column: 3, scope: !4542)
!4552 = !DILocation(line: 213, column: 3, scope: !4542)
!4553 = !DILocation(line: 213, column: 8, scope: !4542)
!4554 = !DILocation(line: 213, column: 13, scope: !4542)
!4555 = !DILocation(line: 213, column: 45, scope: !4542)
!4556 = !DILocation(line: 213, column: 23, scope: !4542)
!4557 = !DILocation(line: 214, column: 2, scope: !4542)
!4558 = !DILocation(line: 216, column: 6, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 216, column: 6)
!4560 = !DILocation(line: 216, column: 11, scope: !4559)
!4561 = !DILocation(line: 216, column: 6, scope: !4528)
!4562 = !DILocation(line: 217, column: 3, scope: !4559)
!4563 = !DILocation(line: 217, column: 8, scope: !4559)
!4564 = !DILocation(line: 217, column: 15, scope: !4559)
!4565 = !DILocation(line: 217, column: 20, scope: !4559)
!4566 = !DILocation(line: 219, column: 14, scope: !4528)
!4567 = !DILocation(line: 219, column: 2, scope: !4528)
!4568 = !DILocation(line: 219, column: 7, scope: !4528)
!4569 = !DILocation(line: 219, column: 12, scope: !4528)
!4570 = !DILocation(line: 220, column: 1, scope: !4528)
!4571 = distinct !DISubprogram(name: "ir_raw_event_handle", scope: !3, file: !3, line: 229, type: !4165, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4572 = !DILocalVariable(name: "dev", arg: 1, scope: !4571, file: !3, line: 229, type: !185)
!4573 = !DILocation(line: 229, column: 41, scope: !4571)
!4574 = !DILocation(line: 231, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 231, column: 6)
!4576 = !DILocation(line: 231, column: 12, scope: !4575)
!4577 = !DILocation(line: 231, column: 16, scope: !4575)
!4578 = !DILocation(line: 231, column: 20, scope: !4575)
!4579 = !DILocation(line: 231, column: 25, scope: !4575)
!4580 = !DILocation(line: 231, column: 30, scope: !4575)
!4581 = !DILocation(line: 231, column: 6, scope: !4571)
!4582 = !DILocation(line: 232, column: 3, scope: !4575)
!4583 = !DILocation(line: 234, column: 18, scope: !4571)
!4584 = !DILocation(line: 234, column: 23, scope: !4571)
!4585 = !DILocation(line: 234, column: 28, scope: !4571)
!4586 = !DILocation(line: 234, column: 2, scope: !4571)
!4587 = !DILocation(line: 235, column: 1, scope: !4571)
!4588 = distinct !DISubprogram(name: "ir_raw_get_allowed_protocols", scope: !3, file: !3, line: 240, type: !4589, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!177}
!4591 = !DILocalVariable(name: "v", arg: 1, scope: !4592, file: !4593, line: 69, type: !4596)
!4592 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4593, file: !4593, line: 69, type: !4594, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4593 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !4596, !295}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4598)
!4598 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4599 = !DILocation(line: 69, column: 73, scope: !4592, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 837, column: 2, scope: !4601, inlinedAt: !4607)
!4601 = distinct !DISubprogram(name: "atomic64_read", scope: !4602, file: !4602, line: 835, type: !4603, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4602 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!747, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!4607 = distinct !DILocation(line: 242, column: 9, scope: !4588)
!4608 = !DILocalVariable(name: "size", arg: 2, scope: !4592, file: !4593, line: 69, type: !295)
!4609 = !DILocation(line: 69, column: 83, scope: !4592, inlinedAt: !4600)
!4610 = !DILocalVariable(name: "v", arg: 1, scope: !4601, file: !4602, line: 835, type: !4605)
!4611 = !DILocation(line: 835, column: 33, scope: !4601, inlinedAt: !4607)
!4612 = !DILocation(line: 837, column: 25, scope: !4601, inlinedAt: !4607)
!4613 = !DILocation(line: 71, column: 19, scope: !4592, inlinedAt: !4600)
!4614 = !DILocation(line: 71, column: 22, scope: !4592, inlinedAt: !4600)
!4615 = !DILocation(line: 71, column: 2, scope: !4592, inlinedAt: !4600)
!4616 = !DILocation(line: 72, column: 2, scope: !4592, inlinedAt: !4600)
!4617 = !DILocation(line: 838, column: 28, scope: !4601, inlinedAt: !4607)
!4618 = !DILocation(line: 838, column: 9, scope: !4601, inlinedAt: !4607)
!4619 = !DILocation(line: 242, column: 2, scope: !4588)
!4620 = distinct !DISubprogram(name: "ir_raw_gen_manchester", scope: !3, file: !3, line: 318, type: !4621, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!184, !4623, !7, !4624, !7, !177}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4626)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_timings_manchester", file: !167, line: 221, size: 160, elements: !4627)
!4627 = !{!4628, !4629, !4630, !4631, !4632}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "leader_pulse", scope: !4626, file: !167, line: 222, baseType: !7, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "leader_space", scope: !4626, file: !167, line: 223, baseType: !7, size: 32, offset: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4626, file: !167, line: 224, baseType: !7, size: 32, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4626, file: !167, line: 225, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_space", scope: !4626, file: !167, line: 226, baseType: !7, size: 32, offset: 128)
!4633 = !DILocalVariable(name: "ev", arg: 1, scope: !4620, file: !3, line: 318, type: !4623)
!4634 = !DILocation(line: 318, column: 49, scope: !4620)
!4635 = !DILocalVariable(name: "max", arg: 2, scope: !4620, file: !3, line: 318, type: !7)
!4636 = !DILocation(line: 318, column: 66, scope: !4620)
!4637 = !DILocalVariable(name: "timings", arg: 3, scope: !4620, file: !3, line: 319, type: !4624)
!4638 = !DILocation(line: 319, column: 46, scope: !4620)
!4639 = !DILocalVariable(name: "n", arg: 4, scope: !4620, file: !3, line: 320, type: !7)
!4640 = !DILocation(line: 320, column: 19, scope: !4620)
!4641 = !DILocalVariable(name: "data", arg: 5, scope: !4620, file: !3, line: 320, type: !177)
!4642 = !DILocation(line: 320, column: 26, scope: !4620)
!4643 = !DILocalVariable(name: "need_pulse", scope: !4620, file: !3, line: 322, type: !456)
!4644 = !DILocation(line: 322, column: 7, scope: !4620)
!4645 = !DILocalVariable(name: "i", scope: !4620, file: !3, line: 323, type: !177)
!4646 = !DILocation(line: 323, column: 6, scope: !4620)
!4647 = !DILocalVariable(name: "ret", scope: !4620, file: !3, line: 324, type: !184)
!4648 = !DILocation(line: 324, column: 6, scope: !4620)
!4649 = !DILocation(line: 326, column: 6, scope: !4620)
!4650 = !DILocation(line: 326, column: 4, scope: !4620)
!4651 = !DILocation(line: 328, column: 6, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 328, column: 6)
!4653 = !DILocation(line: 328, column: 15, scope: !4652)
!4654 = !DILocation(line: 328, column: 6, scope: !4620)
!4655 = !DILocation(line: 329, column: 11, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 329, column: 7)
!4657 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 328, column: 29)
!4658 = !DILocation(line: 329, column: 7, scope: !4657)
!4659 = !DILocation(line: 330, column: 11, scope: !4656)
!4660 = !DILocation(line: 330, column: 4, scope: !4656)
!4661 = !DILocation(line: 331, column: 32, scope: !4657)
!4662 = !DILocation(line: 331, column: 31, scope: !4657)
!4663 = !DILocation(line: 331, column: 40, scope: !4657)
!4664 = !DILocation(line: 331, column: 49, scope: !4657)
!4665 = !DILocation(line: 331, column: 3, scope: !4657)
!4666 = !DILocation(line: 332, column: 7, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 332, column: 7)
!4668 = !DILocation(line: 332, column: 16, scope: !4667)
!4669 = !DILocation(line: 332, column: 7, scope: !4657)
!4670 = !DILocation(line: 333, column: 12, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 333, column: 8)
!4672 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 332, column: 30)
!4673 = !DILocation(line: 333, column: 8, scope: !4672)
!4674 = !DILocation(line: 334, column: 12, scope: !4671)
!4675 = !DILocation(line: 334, column: 5, scope: !4671)
!4676 = !DILocation(line: 335, column: 35, scope: !4672)
!4677 = !DILocation(line: 335, column: 31, scope: !4672)
!4678 = !DILocation(line: 336, column: 10, scope: !4672)
!4679 = !DILocation(line: 336, column: 19, scope: !4672)
!4680 = !DILocation(line: 335, column: 4, scope: !4672)
!4681 = !DILocation(line: 337, column: 3, scope: !4672)
!4682 = !DILocation(line: 338, column: 2, scope: !4657)
!4683 = !DILocation(line: 340, column: 7, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 338, column: 9)
!4685 = !DILocation(line: 340, column: 3, scope: !4684)
!4686 = !DILocation(line: 344, column: 2, scope: !4620)
!4687 = !DILocation(line: 344, column: 9, scope: !4620)
!4688 = !DILocation(line: 344, column: 11, scope: !4620)
!4689 = !DILocation(line: 344, column: 14, scope: !4620)
!4690 = !DILocation(line: 344, column: 16, scope: !4620)
!4691 = !DILocation(line: 0, scope: !4620)
!4692 = !DILocation(line: 345, column: 18, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 344, column: 21)
!4694 = !DILocation(line: 345, column: 25, scope: !4693)
!4695 = !DILocation(line: 345, column: 23, scope: !4693)
!4696 = !DILocation(line: 345, column: 16, scope: !4693)
!4697 = !DILocation(line: 345, column: 14, scope: !4693)
!4698 = !DILocation(line: 346, column: 7, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 346, column: 7)
!4700 = !DILocation(line: 346, column: 16, scope: !4699)
!4701 = !DILocation(line: 346, column: 7, scope: !4693)
!4702 = !DILocation(line: 347, column: 18, scope: !4699)
!4703 = !DILocation(line: 347, column: 17, scope: !4699)
!4704 = !DILocation(line: 347, column: 15, scope: !4699)
!4705 = !DILocation(line: 347, column: 4, scope: !4699)
!4706 = !DILocation(line: 348, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 348, column: 7)
!4708 = !DILocation(line: 348, column: 25, scope: !4707)
!4709 = !DILocation(line: 348, column: 24, scope: !4707)
!4710 = !DILocation(line: 348, column: 30, scope: !4707)
!4711 = !DILocation(line: 348, column: 22, scope: !4707)
!4712 = !DILocation(line: 348, column: 21, scope: !4707)
!4713 = !DILocation(line: 348, column: 18, scope: !4707)
!4714 = !DILocation(line: 348, column: 7, scope: !4693)
!4715 = !DILocation(line: 349, column: 23, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 348, column: 37)
!4717 = !DILocation(line: 349, column: 32, scope: !4716)
!4718 = !DILocation(line: 349, column: 6, scope: !4716)
!4719 = !DILocation(line: 349, column: 5, scope: !4716)
!4720 = !DILocation(line: 349, column: 11, scope: !4716)
!4721 = !DILocation(line: 349, column: 20, scope: !4716)
!4722 = !DILocation(line: 350, column: 3, scope: !4716)
!4723 = !DILocation(line: 351, column: 12, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 351, column: 8)
!4725 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 350, column: 10)
!4726 = !DILocation(line: 351, column: 8, scope: !4725)
!4727 = !DILocation(line: 352, column: 5, scope: !4724)
!4728 = !DILocation(line: 353, column: 35, scope: !4725)
!4729 = !DILocation(line: 353, column: 31, scope: !4725)
!4730 = !DILocation(line: 353, column: 40, scope: !4725)
!4731 = !DILocation(line: 354, column: 10, scope: !4725)
!4732 = !DILocation(line: 354, column: 19, scope: !4725)
!4733 = !DILocation(line: 353, column: 4, scope: !4725)
!4734 = !DILocation(line: 357, column: 11, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 357, column: 7)
!4736 = !DILocation(line: 357, column: 7, scope: !4693)
!4737 = !DILocation(line: 358, column: 4, scope: !4735)
!4738 = !DILocation(line: 359, column: 34, scope: !4693)
!4739 = !DILocation(line: 359, column: 30, scope: !4693)
!4740 = !DILocation(line: 359, column: 40, scope: !4693)
!4741 = !DILocation(line: 359, column: 39, scope: !4693)
!4742 = !DILocation(line: 360, column: 9, scope: !4693)
!4743 = !DILocation(line: 360, column: 18, scope: !4693)
!4744 = !DILocation(line: 359, column: 3, scope: !4693)
!4745 = !DILocation(line: 361, column: 5, scope: !4693)
!4746 = distinct !{!4746, !4686, !4747}
!4747 = !DILocation(line: 362, column: 2, scope: !4620)
!4748 = !DILocation(line: 364, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 364, column: 6)
!4750 = !DILocation(line: 364, column: 15, scope: !4749)
!4751 = !DILocation(line: 364, column: 6, scope: !4620)
!4752 = !DILocation(line: 365, column: 10, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 365, column: 7)
!4754 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 364, column: 30)
!4755 = !DILocation(line: 365, column: 9, scope: !4753)
!4756 = !DILocation(line: 365, column: 15, scope: !4753)
!4757 = !DILocation(line: 365, column: 8, scope: !4753)
!4758 = !DILocation(line: 365, column: 7, scope: !4754)
!4759 = !DILocation(line: 366, column: 23, scope: !4753)
!4760 = !DILocation(line: 366, column: 32, scope: !4753)
!4761 = !DILocation(line: 366, column: 6, scope: !4753)
!4762 = !DILocation(line: 366, column: 5, scope: !4753)
!4763 = !DILocation(line: 366, column: 11, scope: !4753)
!4764 = !DILocation(line: 366, column: 20, scope: !4753)
!4765 = !DILocation(line: 366, column: 4, scope: !4753)
!4766 = !DILocation(line: 367, column: 16, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 367, column: 12)
!4768 = !DILocation(line: 367, column: 12, scope: !4753)
!4769 = !DILocation(line: 368, column: 4, scope: !4767)
!4770 = !DILocation(line: 370, column: 35, scope: !4767)
!4771 = !DILocation(line: 370, column: 31, scope: !4767)
!4772 = !DILocation(line: 371, column: 10, scope: !4767)
!4773 = !DILocation(line: 371, column: 19, scope: !4767)
!4774 = !DILocation(line: 370, column: 4, scope: !4767)
!4775 = !DILocation(line: 372, column: 2, scope: !4754)
!4776 = !DILocation(line: 374, column: 6, scope: !4620)
!4777 = !DILocation(line: 374, column: 2, scope: !4620)
!4778 = !DILabel(scope: !4620, name: "nobufs", file: !3, line: 375)
!4779 = !DILocation(line: 375, column: 1, scope: !4620)
!4780 = !DILocation(line: 377, column: 6, scope: !4620)
!4781 = !DILocation(line: 377, column: 2, scope: !4620)
!4782 = !DILocation(line: 378, column: 9, scope: !4620)
!4783 = !DILocation(line: 378, column: 2, scope: !4620)
!4784 = !DILocation(line: 379, column: 1, scope: !4620)
!4785 = distinct !DISubprogram(name: "init_ir_raw_event_duration", scope: !167, file: !167, line: 201, type: !4786, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{null, !143, !7, !150}
!4788 = !DILocalVariable(name: "ev", arg: 1, scope: !4785, file: !167, line: 201, type: !143)
!4789 = !DILocation(line: 201, column: 68, scope: !4785)
!4790 = !DILocalVariable(name: "pulse", arg: 2, scope: !4785, file: !167, line: 202, type: !7)
!4791 = !DILocation(line: 202, column: 25, scope: !4785)
!4792 = !DILocalVariable(name: "duration", arg: 3, scope: !4785, file: !167, line: 203, type: !150)
!4793 = !DILocation(line: 203, column: 16, scope: !4785)
!4794 = !DILocation(line: 205, column: 3, scope: !4785)
!4795 = !DILocation(line: 205, column: 30, scope: !4785)
!4796 = !DILocation(line: 206, column: 3, scope: !4785)
!4797 = !DILocation(line: 206, column: 15, scope: !4785)
!4798 = !DILocation(line: 207, column: 12, scope: !4785)
!4799 = !DILocation(line: 205, column: 8, scope: !4785)
!4800 = !DILocation(line: 209, column: 1, scope: !4785)
!4801 = distinct !DISubprogram(name: "ir_raw_gen_pd", scope: !3, file: !3, line: 400, type: !4802, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!184, !4623, !7, !4804, !7, !177}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4806)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_timings_pd", file: !167, line: 271, size: 256, elements: !4807)
!4807 = !{!4808, !4809, !4810, !4811, !4813, !4814, !4815}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "header_pulse", scope: !4806, file: !167, line: 272, baseType: !7, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "header_space", scope: !4806, file: !167, line: 273, baseType: !7, size: 32, offset: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "bit_pulse", scope: !4806, file: !167, line: 274, baseType: !7, size: 32, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "bit_space", scope: !4806, file: !167, line: 275, baseType: !4812, size: 64, offset: 96)
!4812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1521)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_pulse", scope: !4806, file: !167, line: 276, baseType: !7, size: 32, offset: 160)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_space", scope: !4806, file: !167, line: 277, baseType: !7, size: 32, offset: 192)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "msb_first", scope: !4806, file: !167, line: 278, baseType: !7, size: 1, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!4816 = !DILocalVariable(name: "ev", arg: 1, scope: !4801, file: !3, line: 400, type: !4623)
!4817 = !DILocation(line: 400, column: 41, scope: !4801)
!4818 = !DILocalVariable(name: "max", arg: 2, scope: !4801, file: !3, line: 400, type: !7)
!4819 = !DILocation(line: 400, column: 58, scope: !4801)
!4820 = !DILocalVariable(name: "timings", arg: 3, scope: !4801, file: !3, line: 401, type: !4804)
!4821 = !DILocation(line: 401, column: 37, scope: !4801)
!4822 = !DILocalVariable(name: "n", arg: 4, scope: !4801, file: !3, line: 402, type: !7)
!4823 = !DILocation(line: 402, column: 18, scope: !4801)
!4824 = !DILocalVariable(name: "data", arg: 5, scope: !4801, file: !3, line: 402, type: !177)
!4825 = !DILocation(line: 402, column: 25, scope: !4801)
!4826 = !DILocalVariable(name: "i", scope: !4801, file: !3, line: 404, type: !184)
!4827 = !DILocation(line: 404, column: 6, scope: !4801)
!4828 = !DILocalVariable(name: "ret", scope: !4801, file: !3, line: 405, type: !184)
!4829 = !DILocation(line: 405, column: 6, scope: !4801)
!4830 = !DILocalVariable(name: "space", scope: !4801, file: !3, line: 406, type: !7)
!4831 = !DILocation(line: 406, column: 15, scope: !4801)
!4832 = !DILocation(line: 408, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 408, column: 6)
!4834 = !DILocation(line: 408, column: 15, scope: !4833)
!4835 = !DILocation(line: 408, column: 6, scope: !4801)
!4836 = !DILocation(line: 409, column: 32, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 408, column: 29)
!4838 = !DILocation(line: 409, column: 42, scope: !4837)
!4839 = !DILocation(line: 409, column: 51, scope: !4837)
!4840 = !DILocation(line: 410, column: 11, scope: !4837)
!4841 = !DILocation(line: 410, column: 20, scope: !4837)
!4842 = !DILocation(line: 409, column: 9, scope: !4837)
!4843 = !DILocation(line: 409, column: 7, scope: !4837)
!4844 = !DILocation(line: 411, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 411, column: 7)
!4846 = !DILocation(line: 411, column: 7, scope: !4837)
!4847 = !DILocation(line: 412, column: 11, scope: !4845)
!4848 = !DILocation(line: 412, column: 4, scope: !4845)
!4849 = !DILocation(line: 413, column: 2, scope: !4837)
!4850 = !DILocation(line: 415, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 415, column: 6)
!4852 = !DILocation(line: 415, column: 15, scope: !4851)
!4853 = !DILocation(line: 415, column: 6, scope: !4801)
!4854 = !DILocation(line: 416, column: 12, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 416, column: 3)
!4856 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 415, column: 26)
!4857 = !DILocation(line: 416, column: 14, scope: !4855)
!4858 = !DILocation(line: 416, column: 10, scope: !4855)
!4859 = !DILocation(line: 416, column: 8, scope: !4855)
!4860 = !DILocation(line: 416, column: 19, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 416, column: 3)
!4862 = !DILocation(line: 416, column: 21, scope: !4861)
!4863 = !DILocation(line: 416, column: 3, scope: !4855)
!4864 = !DILocation(line: 417, column: 12, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 416, column: 32)
!4866 = !DILocation(line: 417, column: 21, scope: !4865)
!4867 = !DILocation(line: 417, column: 32, scope: !4865)
!4868 = !DILocation(line: 417, column: 40, scope: !4865)
!4869 = !DILocation(line: 417, column: 37, scope: !4865)
!4870 = !DILocation(line: 417, column: 43, scope: !4865)
!4871 = !DILocation(line: 417, column: 10, scope: !4865)
!4872 = !DILocation(line: 418, column: 33, scope: !4865)
!4873 = !DILocation(line: 419, column: 12, scope: !4865)
!4874 = !DILocation(line: 419, column: 21, scope: !4865)
!4875 = !DILocation(line: 420, column: 12, scope: !4865)
!4876 = !DILocation(line: 418, column: 10, scope: !4865)
!4877 = !DILocation(line: 418, column: 8, scope: !4865)
!4878 = !DILocation(line: 421, column: 8, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 421, column: 8)
!4880 = !DILocation(line: 421, column: 8, scope: !4865)
!4881 = !DILocation(line: 422, column: 12, scope: !4879)
!4882 = !DILocation(line: 422, column: 5, scope: !4879)
!4883 = !DILocation(line: 423, column: 3, scope: !4865)
!4884 = !DILocation(line: 416, column: 27, scope: !4861)
!4885 = !DILocation(line: 416, column: 3, scope: !4861)
!4886 = distinct !{!4886, !4863, !4887}
!4887 = !DILocation(line: 423, column: 3, scope: !4855)
!4888 = !DILocation(line: 424, column: 2, scope: !4856)
!4889 = !DILocation(line: 425, column: 10, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 425, column: 3)
!4891 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 424, column: 9)
!4892 = !DILocation(line: 425, column: 8, scope: !4890)
!4893 = !DILocation(line: 425, column: 15, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 425, column: 3)
!4895 = !DILocation(line: 425, column: 19, scope: !4894)
!4896 = !DILocation(line: 425, column: 17, scope: !4894)
!4897 = !DILocation(line: 425, column: 3, scope: !4890)
!4898 = !DILocation(line: 426, column: 12, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 425, column: 39)
!4900 = !DILocation(line: 426, column: 21, scope: !4899)
!4901 = !DILocation(line: 426, column: 31, scope: !4899)
!4902 = !DILocation(line: 426, column: 36, scope: !4899)
!4903 = !DILocation(line: 426, column: 10, scope: !4899)
!4904 = !DILocation(line: 427, column: 33, scope: !4899)
!4905 = !DILocation(line: 428, column: 12, scope: !4899)
!4906 = !DILocation(line: 428, column: 21, scope: !4899)
!4907 = !DILocation(line: 429, column: 12, scope: !4899)
!4908 = !DILocation(line: 427, column: 10, scope: !4899)
!4909 = !DILocation(line: 427, column: 8, scope: !4899)
!4910 = !DILocation(line: 430, column: 8, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 430, column: 8)
!4912 = !DILocation(line: 430, column: 8, scope: !4899)
!4913 = !DILocation(line: 431, column: 12, scope: !4911)
!4914 = !DILocation(line: 431, column: 5, scope: !4911)
!4915 = !DILocation(line: 432, column: 3, scope: !4899)
!4916 = !DILocation(line: 425, column: 22, scope: !4894)
!4917 = !DILocation(line: 425, column: 32, scope: !4894)
!4918 = !DILocation(line: 425, column: 3, scope: !4894)
!4919 = distinct !{!4919, !4897, !4920}
!4920 = !DILocation(line: 432, column: 3, scope: !4890)
!4921 = !DILocation(line: 435, column: 31, scope: !4801)
!4922 = !DILocation(line: 435, column: 41, scope: !4801)
!4923 = !DILocation(line: 435, column: 50, scope: !4801)
!4924 = !DILocation(line: 436, column: 10, scope: !4801)
!4925 = !DILocation(line: 436, column: 19, scope: !4801)
!4926 = !DILocation(line: 435, column: 8, scope: !4801)
!4927 = !DILocation(line: 435, column: 6, scope: !4801)
!4928 = !DILocation(line: 437, column: 9, scope: !4801)
!4929 = !DILocation(line: 437, column: 2, scope: !4801)
!4930 = !DILocation(line: 438, column: 1, scope: !4801)
!4931 = distinct !DISubprogram(name: "ir_raw_gen_pulse_space", scope: !167, file: !167, line: 246, type: !4932, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!184, !4623, !2636, !7, !7}
!4934 = !DILocalVariable(name: "ev", arg: 1, scope: !4931, file: !167, line: 246, type: !4623)
!4935 = !DILocation(line: 246, column: 64, scope: !4931)
!4936 = !DILocalVariable(name: "max", arg: 2, scope: !4931, file: !167, line: 247, type: !2636)
!4937 = !DILocation(line: 247, column: 21, scope: !4931)
!4938 = !DILocalVariable(name: "pulse_width", arg: 3, scope: !4931, file: !167, line: 248, type: !7)
!4939 = !DILocation(line: 248, column: 20, scope: !4931)
!4940 = !DILocalVariable(name: "space_width", arg: 4, scope: !4931, file: !167, line: 249, type: !7)
!4941 = !DILocation(line: 249, column: 20, scope: !4931)
!4942 = !DILocation(line: 251, column: 8, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4931, file: !167, line: 251, column: 6)
!4944 = !DILocation(line: 251, column: 7, scope: !4943)
!4945 = !DILocation(line: 251, column: 6, scope: !4931)
!4946 = !DILocation(line: 252, column: 3, scope: !4943)
!4947 = !DILocation(line: 253, column: 31, scope: !4931)
!4948 = !DILocation(line: 253, column: 34, scope: !4931)
!4949 = !DILocation(line: 253, column: 41, scope: !4931)
!4950 = !DILocation(line: 253, column: 2, scope: !4931)
!4951 = !DILocation(line: 254, column: 10, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4931, file: !167, line: 254, column: 6)
!4953 = !DILocation(line: 254, column: 7, scope: !4952)
!4954 = !DILocation(line: 254, column: 6, scope: !4931)
!4955 = !DILocation(line: 255, column: 3, scope: !4952)
!4956 = !DILocation(line: 256, column: 31, scope: !4931)
!4957 = !DILocation(line: 256, column: 34, scope: !4931)
!4958 = !DILocation(line: 256, column: 41, scope: !4931)
!4959 = !DILocation(line: 256, column: 2, scope: !4931)
!4960 = !DILocation(line: 257, column: 5, scope: !4931)
!4961 = !DILocation(line: 257, column: 2, scope: !4931)
!4962 = !DILocation(line: 258, column: 2, scope: !4931)
!4963 = !DILocation(line: 259, column: 1, scope: !4931)
!4964 = distinct !DISubprogram(name: "ir_raw_gen_pl", scope: !3, file: !3, line: 459, type: !4965, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!184, !4623, !7, !4967, !7, !177}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4969)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_timings_pl", file: !167, line: 293, size: 192, elements: !4970)
!4970 = !{!4971, !4972, !4973, !4974, !4975}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "header_pulse", scope: !4969, file: !167, line: 294, baseType: !7, size: 32)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "bit_space", scope: !4969, file: !167, line: 295, baseType: !7, size: 32, offset: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "bit_pulse", scope: !4969, file: !167, line: 296, baseType: !4812, size: 64, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "trailer_space", scope: !4969, file: !167, line: 297, baseType: !7, size: 32, offset: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "msb_first", scope: !4969, file: !167, line: 298, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!4976 = !DILocalVariable(name: "ev", arg: 1, scope: !4964, file: !3, line: 459, type: !4623)
!4977 = !DILocation(line: 459, column: 41, scope: !4964)
!4978 = !DILocalVariable(name: "max", arg: 2, scope: !4964, file: !3, line: 459, type: !7)
!4979 = !DILocation(line: 459, column: 58, scope: !4964)
!4980 = !DILocalVariable(name: "timings", arg: 3, scope: !4964, file: !3, line: 460, type: !4967)
!4981 = !DILocation(line: 460, column: 37, scope: !4964)
!4982 = !DILocalVariable(name: "n", arg: 4, scope: !4964, file: !3, line: 461, type: !7)
!4983 = !DILocation(line: 461, column: 18, scope: !4964)
!4984 = !DILocalVariable(name: "data", arg: 5, scope: !4964, file: !3, line: 461, type: !177)
!4985 = !DILocation(line: 461, column: 25, scope: !4964)
!4986 = !DILocalVariable(name: "i", scope: !4964, file: !3, line: 463, type: !184)
!4987 = !DILocation(line: 463, column: 6, scope: !4964)
!4988 = !DILocalVariable(name: "ret", scope: !4964, file: !3, line: 464, type: !184)
!4989 = !DILocation(line: 464, column: 6, scope: !4964)
!4990 = !DILocalVariable(name: "pulse", scope: !4964, file: !3, line: 465, type: !7)
!4991 = !DILocation(line: 465, column: 15, scope: !4964)
!4992 = !DILocation(line: 467, column: 10, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 467, column: 6)
!4994 = !DILocation(line: 467, column: 6, scope: !4964)
!4995 = !DILocation(line: 468, column: 10, scope: !4993)
!4996 = !DILocation(line: 468, column: 3, scope: !4993)
!4997 = !DILocation(line: 470, column: 31, scope: !4964)
!4998 = !DILocation(line: 470, column: 34, scope: !4964)
!4999 = !DILocation(line: 470, column: 41, scope: !4964)
!5000 = !DILocation(line: 470, column: 50, scope: !4964)
!5001 = !DILocation(line: 470, column: 2, scope: !4964)
!5002 = !DILocation(line: 472, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 472, column: 6)
!5004 = !DILocation(line: 472, column: 15, scope: !5003)
!5005 = !DILocation(line: 472, column: 6, scope: !4964)
!5006 = !DILocation(line: 473, column: 12, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 473, column: 3)
!5008 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 472, column: 26)
!5009 = !DILocation(line: 473, column: 14, scope: !5007)
!5010 = !DILocation(line: 473, column: 10, scope: !5007)
!5011 = !DILocation(line: 473, column: 8, scope: !5007)
!5012 = !DILocation(line: 473, column: 19, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 473, column: 3)
!5014 = !DILocation(line: 473, column: 21, scope: !5013)
!5015 = !DILocation(line: 473, column: 3, scope: !5007)
!5016 = !DILocation(line: 474, column: 12, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 474, column: 8)
!5018 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 473, column: 32)
!5019 = !DILocation(line: 474, column: 8, scope: !5018)
!5020 = !DILocation(line: 475, column: 12, scope: !5017)
!5021 = !DILocation(line: 475, column: 5, scope: !5017)
!5022 = !DILocation(line: 476, column: 33, scope: !5018)
!5023 = !DILocation(line: 476, column: 36, scope: !5018)
!5024 = !DILocation(line: 477, column: 10, scope: !5018)
!5025 = !DILocation(line: 477, column: 19, scope: !5018)
!5026 = !DILocation(line: 476, column: 4, scope: !5018)
!5027 = !DILocation(line: 478, column: 12, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 478, column: 8)
!5029 = !DILocation(line: 478, column: 8, scope: !5018)
!5030 = !DILocation(line: 479, column: 12, scope: !5028)
!5031 = !DILocation(line: 479, column: 5, scope: !5028)
!5032 = !DILocation(line: 480, column: 12, scope: !5018)
!5033 = !DILocation(line: 480, column: 21, scope: !5018)
!5034 = !DILocation(line: 480, column: 32, scope: !5018)
!5035 = !DILocation(line: 480, column: 40, scope: !5018)
!5036 = !DILocation(line: 480, column: 37, scope: !5018)
!5037 = !DILocation(line: 480, column: 43, scope: !5018)
!5038 = !DILocation(line: 480, column: 10, scope: !5018)
!5039 = !DILocation(line: 481, column: 33, scope: !5018)
!5040 = !DILocation(line: 481, column: 36, scope: !5018)
!5041 = !DILocation(line: 481, column: 43, scope: !5018)
!5042 = !DILocation(line: 481, column: 4, scope: !5018)
!5043 = !DILocation(line: 482, column: 3, scope: !5018)
!5044 = !DILocation(line: 473, column: 27, scope: !5013)
!5045 = !DILocation(line: 473, column: 3, scope: !5013)
!5046 = distinct !{!5046, !5015, !5047}
!5047 = !DILocation(line: 482, column: 3, scope: !5007)
!5048 = !DILocation(line: 483, column: 2, scope: !5008)
!5049 = !DILocation(line: 484, column: 10, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 484, column: 3)
!5051 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 483, column: 9)
!5052 = !DILocation(line: 484, column: 8, scope: !5050)
!5053 = !DILocation(line: 484, column: 15, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 484, column: 3)
!5055 = !DILocation(line: 484, column: 19, scope: !5054)
!5056 = !DILocation(line: 484, column: 17, scope: !5054)
!5057 = !DILocation(line: 484, column: 3, scope: !5050)
!5058 = !DILocation(line: 485, column: 12, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 485, column: 8)
!5060 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 484, column: 39)
!5061 = !DILocation(line: 485, column: 8, scope: !5060)
!5062 = !DILocation(line: 486, column: 12, scope: !5059)
!5063 = !DILocation(line: 486, column: 5, scope: !5059)
!5064 = !DILocation(line: 487, column: 33, scope: !5060)
!5065 = !DILocation(line: 487, column: 36, scope: !5060)
!5066 = !DILocation(line: 488, column: 10, scope: !5060)
!5067 = !DILocation(line: 488, column: 19, scope: !5060)
!5068 = !DILocation(line: 487, column: 4, scope: !5060)
!5069 = !DILocation(line: 489, column: 12, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 489, column: 8)
!5071 = !DILocation(line: 489, column: 8, scope: !5060)
!5072 = !DILocation(line: 490, column: 12, scope: !5070)
!5073 = !DILocation(line: 490, column: 5, scope: !5070)
!5074 = !DILocation(line: 491, column: 12, scope: !5060)
!5075 = !DILocation(line: 491, column: 21, scope: !5060)
!5076 = !DILocation(line: 491, column: 31, scope: !5060)
!5077 = !DILocation(line: 491, column: 36, scope: !5060)
!5078 = !DILocation(line: 491, column: 10, scope: !5060)
!5079 = !DILocation(line: 492, column: 33, scope: !5060)
!5080 = !DILocation(line: 492, column: 36, scope: !5060)
!5081 = !DILocation(line: 492, column: 43, scope: !5060)
!5082 = !DILocation(line: 492, column: 4, scope: !5060)
!5083 = !DILocation(line: 493, column: 3, scope: !5060)
!5084 = !DILocation(line: 484, column: 22, scope: !5054)
!5085 = !DILocation(line: 484, column: 32, scope: !5054)
!5086 = !DILocation(line: 484, column: 3, scope: !5054)
!5087 = distinct !{!5087, !5057, !5088}
!5088 = !DILocation(line: 493, column: 3, scope: !5050)
!5089 = !DILocation(line: 496, column: 10, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 496, column: 6)
!5091 = !DILocation(line: 496, column: 6, scope: !4964)
!5092 = !DILocation(line: 497, column: 10, scope: !5090)
!5093 = !DILocation(line: 497, column: 3, scope: !5090)
!5094 = !DILocation(line: 499, column: 31, scope: !4964)
!5095 = !DILocation(line: 499, column: 34, scope: !4964)
!5096 = !DILocation(line: 499, column: 41, scope: !4964)
!5097 = !DILocation(line: 499, column: 50, scope: !4964)
!5098 = !DILocation(line: 499, column: 2, scope: !4964)
!5099 = !DILocation(line: 501, column: 2, scope: !4964)
!5100 = !DILocation(line: 502, column: 1, scope: !4964)
!5101 = distinct !DISubprogram(name: "ir_raw_encode_scancode", scope: !3, file: !3, line: 521, type: !4202, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5102 = !DILocalVariable(name: "protocol", arg: 1, scope: !5101, file: !3, line: 521, type: !93)
!5103 = !DILocation(line: 521, column: 42, scope: !5101)
!5104 = !DILocalVariable(name: "scancode", arg: 2, scope: !5101, file: !3, line: 521, type: !150)
!5105 = !DILocation(line: 521, column: 56, scope: !5101)
!5106 = !DILocalVariable(name: "events", arg: 3, scope: !5101, file: !3, line: 522, type: !143)
!5107 = !DILocation(line: 522, column: 28, scope: !5101)
!5108 = !DILocalVariable(name: "max", arg: 4, scope: !5101, file: !3, line: 522, type: !7)
!5109 = !DILocation(line: 522, column: 49, scope: !5101)
!5110 = !DILocalVariable(name: "handler", scope: !5101, file: !3, line: 524, type: !165)
!5111 = !DILocation(line: 524, column: 25, scope: !5101)
!5112 = !DILocalVariable(name: "ret", scope: !5101, file: !3, line: 525, type: !184)
!5113 = !DILocation(line: 525, column: 6, scope: !5101)
!5114 = !DILocalVariable(name: "mask", scope: !5101, file: !3, line: 526, type: !177)
!5115 = !DILocation(line: 526, column: 6, scope: !5101)
!5116 = !DILocation(line: 526, column: 21, scope: !5101)
!5117 = !DILocation(line: 526, column: 18, scope: !5101)
!5118 = !DILocation(line: 528, column: 2, scope: !5101)
!5119 = !DILocation(line: 530, column: 2, scope: !5101)
!5120 = !DILocalVariable(name: "__mptr", scope: !5121, file: !3, line: 531, type: !164)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 531, column: 2)
!5122 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 531, column: 2)
!5123 = !DILocation(line: 531, column: 2, scope: !5121)
!5124 = !DILocation(line: 531, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 531, column: 2)
!5126 = !DILocation(line: 531, column: 2, scope: !5122)
!5127 = !DILocation(line: 531, column: 2, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 531, column: 2)
!5129 = !DILocation(line: 532, column: 7, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 532, column: 7)
!5131 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 531, column: 59)
!5132 = !DILocation(line: 532, column: 16, scope: !5130)
!5133 = !DILocation(line: 532, column: 28, scope: !5130)
!5134 = !DILocation(line: 532, column: 26, scope: !5130)
!5135 = !DILocation(line: 532, column: 33, scope: !5130)
!5136 = !DILocation(line: 532, column: 36, scope: !5130)
!5137 = !DILocation(line: 532, column: 45, scope: !5130)
!5138 = !DILocation(line: 532, column: 7, scope: !5131)
!5139 = !DILocation(line: 533, column: 10, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 532, column: 53)
!5141 = !DILocation(line: 533, column: 19, scope: !5140)
!5142 = !DILocation(line: 533, column: 26, scope: !5140)
!5143 = !DILocation(line: 533, column: 36, scope: !5140)
!5144 = !DILocation(line: 533, column: 46, scope: !5140)
!5145 = !DILocation(line: 533, column: 54, scope: !5140)
!5146 = !DILocation(line: 533, column: 8, scope: !5140)
!5147 = !DILocation(line: 534, column: 8, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 534, column: 8)
!5149 = !DILocation(line: 534, column: 12, scope: !5148)
!5150 = !DILocation(line: 534, column: 17, scope: !5148)
!5151 = !DILocation(line: 534, column: 20, scope: !5148)
!5152 = !DILocation(line: 534, column: 24, scope: !5148)
!5153 = !DILocation(line: 534, column: 8, scope: !5140)
!5154 = !DILocation(line: 535, column: 5, scope: !5148)
!5155 = !DILocation(line: 536, column: 3, scope: !5140)
!5156 = !DILocation(line: 537, column: 2, scope: !5131)
!5157 = !DILocalVariable(name: "__mptr", scope: !5158, file: !3, line: 531, type: !164)
!5158 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 531, column: 2)
!5159 = !DILocation(line: 531, column: 2, scope: !5158)
!5160 = !DILocation(line: 531, column: 2, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 531, column: 2)
!5162 = distinct !{!5162, !5126, !5163}
!5163 = !DILocation(line: 537, column: 2, scope: !5122)
!5164 = !DILocation(line: 538, column: 2, scope: !5101)
!5165 = !DILocation(line: 540, column: 9, scope: !5101)
!5166 = !DILocation(line: 540, column: 2, scope: !5101)
!5167 = distinct !DISubprogram(name: "ir_raw_encode_carrier", scope: !3, file: !3, line: 592, type: !5168, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!184, !93}
!5170 = !DILocalVariable(name: "protocol", arg: 1, scope: !5167, file: !3, line: 592, type: !93)
!5171 = !DILocation(line: 592, column: 41, scope: !5167)
!5172 = !DILocalVariable(name: "handler", scope: !5167, file: !3, line: 594, type: !165)
!5173 = !DILocation(line: 594, column: 25, scope: !5167)
!5174 = !DILocalVariable(name: "ret", scope: !5167, file: !3, line: 595, type: !184)
!5175 = !DILocation(line: 595, column: 6, scope: !5167)
!5176 = !DILocalVariable(name: "mask", scope: !5167, file: !3, line: 596, type: !177)
!5177 = !DILocation(line: 596, column: 6, scope: !5167)
!5178 = !DILocation(line: 596, column: 13, scope: !5167)
!5179 = !DILocation(line: 598, column: 2, scope: !5167)
!5180 = !DILocalVariable(name: "__mptr", scope: !5181, file: !3, line: 599, type: !164)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 599, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 599, column: 2)
!5183 = !DILocation(line: 599, column: 2, scope: !5181)
!5184 = !DILocation(line: 599, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 599, column: 2)
!5186 = !DILocation(line: 599, column: 2, scope: !5182)
!5187 = !DILocation(line: 599, column: 2, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 599, column: 2)
!5189 = !DILocation(line: 600, column: 7, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 600, column: 7)
!5191 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 599, column: 59)
!5192 = !DILocation(line: 600, column: 16, scope: !5190)
!5193 = !DILocation(line: 600, column: 28, scope: !5190)
!5194 = !DILocation(line: 600, column: 26, scope: !5190)
!5195 = !DILocation(line: 600, column: 33, scope: !5190)
!5196 = !DILocation(line: 600, column: 36, scope: !5190)
!5197 = !DILocation(line: 600, column: 45, scope: !5190)
!5198 = !DILocation(line: 600, column: 7, scope: !5191)
!5199 = !DILocation(line: 601, column: 10, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 600, column: 53)
!5201 = !DILocation(line: 601, column: 19, scope: !5200)
!5202 = !DILocation(line: 601, column: 8, scope: !5200)
!5203 = !DILocation(line: 602, column: 4, scope: !5200)
!5204 = !DILocation(line: 604, column: 2, scope: !5191)
!5205 = !DILocalVariable(name: "__mptr", scope: !5206, file: !3, line: 599, type: !164)
!5206 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 599, column: 2)
!5207 = !DILocation(line: 599, column: 2, scope: !5206)
!5208 = !DILocation(line: 599, column: 2, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 599, column: 2)
!5210 = distinct !{!5210, !5186, !5211}
!5211 = !DILocation(line: 604, column: 2, scope: !5182)
!5212 = !DILocation(line: 605, column: 2, scope: !5167)
!5213 = !DILocation(line: 607, column: 9, scope: !5167)
!5214 = !DILocation(line: 607, column: 2, scope: !5167)
!5215 = distinct !DISubprogram(name: "ir_raw_event_prepare", scope: !3, file: !3, line: 614, type: !4161, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5216 = !DILocalVariable(name: "lock", arg: 1, scope: !5217, file: !4326, line: 327, type: !1034)
!5217 = distinct !DISubprogram(name: "spinlock_check", scope: !4326, file: !4326, line: 327, type: !5218, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!5220, !1034}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!5221 = !DILocation(line: 327, column: 67, scope: !5217, inlinedAt: !5222)
!5222 = distinct !DILocation(line: 626, column: 2, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 626, column: 2)
!5224 = !DILocalVariable(name: "dev", arg: 1, scope: !5215, file: !3, line: 614, type: !185)
!5225 = !DILocation(line: 614, column: 41, scope: !5215)
!5226 = !DILocation(line: 616, column: 7, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 616, column: 6)
!5228 = !DILocation(line: 616, column: 6, scope: !5215)
!5229 = !DILocation(line: 617, column: 3, scope: !5227)
!5230 = !DILocation(line: 619, column: 13, scope: !5215)
!5231 = !DILocation(line: 619, column: 2, scope: !5215)
!5232 = !DILocation(line: 619, column: 7, scope: !5215)
!5233 = !DILocation(line: 619, column: 11, scope: !5215)
!5234 = !DILocation(line: 620, column: 7, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 620, column: 6)
!5236 = !DILocation(line: 620, column: 12, scope: !5235)
!5237 = !DILocation(line: 620, column: 6, scope: !5215)
!5238 = !DILocation(line: 621, column: 3, scope: !5235)
!5239 = !DILocation(line: 623, column: 18, scope: !5215)
!5240 = !DILocation(line: 623, column: 2, scope: !5215)
!5241 = !DILocation(line: 623, column: 7, scope: !5215)
!5242 = !DILocation(line: 623, column: 12, scope: !5215)
!5243 = !DILocation(line: 623, column: 16, scope: !5215)
!5244 = !DILocation(line: 624, column: 2, scope: !5215)
!5245 = !DILocation(line: 624, column: 7, scope: !5215)
!5246 = !DILocation(line: 624, column: 23, scope: !5215)
!5247 = !DILocation(line: 625, column: 2, scope: !5215)
!5248 = !DILocation(line: 625, column: 7, scope: !5215)
!5249 = !DILocation(line: 625, column: 12, scope: !5215)
!5250 = !DILocation(line: 626, column: 2, scope: !5215)
!5251 = !DILocation(line: 626, column: 2, scope: !5223)
!5252 = !DILocation(line: 329, column: 10, scope: !5217, inlinedAt: !5222)
!5253 = !DILocation(line: 329, column: 16, scope: !5217, inlinedAt: !5222)
!5254 = !DILocation(line: 627, column: 2, scope: !5215)
!5255 = !DILocalVariable(name: "__tmp", scope: !5256, file: !3, line: 628, type: !4255)
!5256 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 628, column: 2)
!5257 = !DILocation(line: 628, column: 2, scope: !5256)
!5258 = !DILocalVariable(name: "__kfifo", scope: !5256, file: !3, line: 628, type: !4261)
!5259 = !DILocation(line: 630, column: 2, scope: !5215)
!5260 = !DILocation(line: 631, column: 1, scope: !5215)
!5261 = distinct !DISubprogram(name: "kzalloc", scope: !136, file: !136, line: 662, type: !5262, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!164, !295, !713}
!5264 = !DILocalVariable(name: "s", arg: 1, scope: !5265, file: !136, line: 445, type: !905)
!5265 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !136, file: !136, line: 445, type: !5266, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!164, !905, !713, !295}
!5268 = !DILocation(line: 445, column: 72, scope: !5265, inlinedAt: !5269)
!5269 = distinct !DILocation(line: 552, column: 10, scope: !5270, inlinedAt: !5273)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !136, line: 540, column: 34)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !136, line: 540, column: 6)
!5272 = distinct !DISubprogram(name: "kmalloc", scope: !136, file: !136, line: 538, type: !5262, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5273 = distinct !DILocation(line: 664, column: 9, scope: !5261)
!5274 = !DILocalVariable(name: "flags", arg: 2, scope: !5265, file: !136, line: 446, type: !713)
!5275 = !DILocation(line: 446, column: 9, scope: !5265, inlinedAt: !5269)
!5276 = !DILocalVariable(name: "size", arg: 3, scope: !5265, file: !136, line: 446, type: !295)
!5277 = !DILocation(line: 446, column: 23, scope: !5265, inlinedAt: !5269)
!5278 = !DILocalVariable(name: "ret", scope: !5265, file: !136, line: 448, type: !164)
!5279 = !DILocation(line: 448, column: 8, scope: !5265, inlinedAt: !5269)
!5280 = !DILocalVariable(name: "flags", arg: 1, scope: !5281, file: !136, line: 318, type: !713)
!5281 = distinct !DISubprogram(name: "kmalloc_type", scope: !136, file: !136, line: 318, type: !5282, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!135, !713}
!5284 = !DILocation(line: 318, column: 67, scope: !5281, inlinedAt: !5285)
!5285 = distinct !DILocation(line: 553, column: 20, scope: !5270, inlinedAt: !5273)
!5286 = !DILocalVariable(name: "size", arg: 1, scope: !5287, file: !136, line: 346, type: !295)
!5287 = distinct !DISubprogram(name: "kmalloc_index", scope: !136, file: !136, line: 346, type: !5288, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!7, !295}
!5290 = !DILocation(line: 346, column: 58, scope: !5287, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 547, column: 11, scope: !5270, inlinedAt: !5273)
!5292 = !DILocalVariable(name: "size", arg: 1, scope: !5293, file: !136, line: 472, type: !295)
!5293 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !136, file: !136, line: 472, type: !5294, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!164, !295, !713, !7}
!5296 = !DILocation(line: 472, column: 28, scope: !5293, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 481, column: 9, scope: !5298, inlinedAt: !5299)
!5298 = distinct !DISubprogram(name: "kmalloc_large", scope: !136, file: !136, line: 478, type: !5262, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5299 = distinct !DILocation(line: 545, column: 11, scope: !5300, inlinedAt: !5273)
!5300 = distinct !DILexicalBlock(scope: !5270, file: !136, line: 544, column: 7)
!5301 = !DILocalVariable(name: "flags", arg: 2, scope: !5293, file: !136, line: 472, type: !713)
!5302 = !DILocation(line: 472, column: 40, scope: !5293, inlinedAt: !5297)
!5303 = !DILocalVariable(name: "order", arg: 3, scope: !5293, file: !136, line: 472, type: !7)
!5304 = !DILocation(line: 472, column: 60, scope: !5293, inlinedAt: !5297)
!5305 = !DILocalVariable(name: "size", arg: 1, scope: !5298, file: !136, line: 478, type: !295)
!5306 = !DILocation(line: 478, column: 51, scope: !5298, inlinedAt: !5299)
!5307 = !DILocalVariable(name: "flags", arg: 2, scope: !5298, file: !136, line: 478, type: !713)
!5308 = !DILocation(line: 478, column: 63, scope: !5298, inlinedAt: !5299)
!5309 = !DILocalVariable(name: "order", scope: !5298, file: !136, line: 480, type: !7)
!5310 = !DILocation(line: 480, column: 15, scope: !5298, inlinedAt: !5299)
!5311 = !DILocalVariable(name: "size", arg: 1, scope: !5272, file: !136, line: 538, type: !295)
!5312 = !DILocation(line: 538, column: 45, scope: !5272, inlinedAt: !5273)
!5313 = !DILocalVariable(name: "flags", arg: 2, scope: !5272, file: !136, line: 538, type: !713)
!5314 = !DILocation(line: 538, column: 57, scope: !5272, inlinedAt: !5273)
!5315 = !DILocalVariable(name: "index", scope: !5270, file: !136, line: 542, type: !7)
!5316 = !DILocation(line: 542, column: 16, scope: !5270, inlinedAt: !5273)
!5317 = !DILocalVariable(name: "size", arg: 1, scope: !5261, file: !136, line: 662, type: !295)
!5318 = !DILocation(line: 662, column: 36, scope: !5261)
!5319 = !DILocalVariable(name: "flags", arg: 2, scope: !5261, file: !136, line: 662, type: !713)
!5320 = !DILocation(line: 662, column: 48, scope: !5261)
!5321 = !DILocation(line: 664, column: 17, scope: !5261)
!5322 = !DILocation(line: 664, column: 23, scope: !5261)
!5323 = !DILocation(line: 664, column: 29, scope: !5261)
!5324 = !DILocation(line: 540, column: 27, scope: !5271, inlinedAt: !5273)
!5325 = !DILocation(line: 540, column: 6, scope: !5271, inlinedAt: !5273)
!5326 = !DILocation(line: 540, column: 6, scope: !5272, inlinedAt: !5273)
!5327 = !DILocation(line: 544, column: 7, scope: !5300, inlinedAt: !5273)
!5328 = !DILocation(line: 544, column: 12, scope: !5300, inlinedAt: !5273)
!5329 = !DILocation(line: 544, column: 7, scope: !5270, inlinedAt: !5273)
!5330 = !DILocation(line: 545, column: 25, scope: !5300, inlinedAt: !5273)
!5331 = !DILocation(line: 545, column: 31, scope: !5300, inlinedAt: !5273)
!5332 = !DILocation(line: 480, column: 33, scope: !5298, inlinedAt: !5299)
!5333 = !DILocation(line: 480, column: 23, scope: !5298, inlinedAt: !5299)
!5334 = !DILocation(line: 481, column: 29, scope: !5298, inlinedAt: !5299)
!5335 = !DILocation(line: 481, column: 35, scope: !5298, inlinedAt: !5299)
!5336 = !DILocation(line: 481, column: 42, scope: !5298, inlinedAt: !5299)
!5337 = !DILocation(line: 474, column: 23, scope: !5293, inlinedAt: !5297)
!5338 = !DILocation(line: 474, column: 29, scope: !5293, inlinedAt: !5297)
!5339 = !DILocation(line: 474, column: 36, scope: !5293, inlinedAt: !5297)
!5340 = !DILocation(line: 474, column: 9, scope: !5293, inlinedAt: !5297)
!5341 = !DILocation(line: 545, column: 4, scope: !5300, inlinedAt: !5273)
!5342 = !DILocation(line: 547, column: 25, scope: !5270, inlinedAt: !5273)
!5343 = !DILocation(line: 348, column: 7, scope: !5344, inlinedAt: !5291)
!5344 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 348, column: 6)
!5345 = !DILocation(line: 348, column: 6, scope: !5287, inlinedAt: !5291)
!5346 = !DILocation(line: 349, column: 3, scope: !5344, inlinedAt: !5291)
!5347 = !DILocation(line: 351, column: 6, scope: !5348, inlinedAt: !5291)
!5348 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 351, column: 6)
!5349 = !DILocation(line: 351, column: 11, scope: !5348, inlinedAt: !5291)
!5350 = !DILocation(line: 351, column: 6, scope: !5287, inlinedAt: !5291)
!5351 = !DILocation(line: 352, column: 3, scope: !5348, inlinedAt: !5291)
!5352 = !DILocation(line: 354, column: 32, scope: !5353, inlinedAt: !5291)
!5353 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 354, column: 6)
!5354 = !DILocation(line: 354, column: 37, scope: !5353, inlinedAt: !5291)
!5355 = !DILocation(line: 354, column: 42, scope: !5353, inlinedAt: !5291)
!5356 = !DILocation(line: 354, column: 45, scope: !5353, inlinedAt: !5291)
!5357 = !DILocation(line: 354, column: 50, scope: !5353, inlinedAt: !5291)
!5358 = !DILocation(line: 354, column: 6, scope: !5287, inlinedAt: !5291)
!5359 = !DILocation(line: 355, column: 3, scope: !5353, inlinedAt: !5291)
!5360 = !DILocation(line: 356, column: 32, scope: !5361, inlinedAt: !5291)
!5361 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 356, column: 6)
!5362 = !DILocation(line: 356, column: 37, scope: !5361, inlinedAt: !5291)
!5363 = !DILocation(line: 356, column: 43, scope: !5361, inlinedAt: !5291)
!5364 = !DILocation(line: 356, column: 46, scope: !5361, inlinedAt: !5291)
!5365 = !DILocation(line: 356, column: 51, scope: !5361, inlinedAt: !5291)
!5366 = !DILocation(line: 356, column: 6, scope: !5287, inlinedAt: !5291)
!5367 = !DILocation(line: 357, column: 3, scope: !5361, inlinedAt: !5291)
!5368 = !DILocation(line: 358, column: 6, scope: !5369, inlinedAt: !5291)
!5369 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 358, column: 6)
!5370 = !DILocation(line: 358, column: 11, scope: !5369, inlinedAt: !5291)
!5371 = !DILocation(line: 358, column: 6, scope: !5287, inlinedAt: !5291)
!5372 = !DILocation(line: 358, column: 26, scope: !5369, inlinedAt: !5291)
!5373 = !DILocation(line: 359, column: 6, scope: !5374, inlinedAt: !5291)
!5374 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 359, column: 6)
!5375 = !DILocation(line: 359, column: 11, scope: !5374, inlinedAt: !5291)
!5376 = !DILocation(line: 359, column: 6, scope: !5287, inlinedAt: !5291)
!5377 = !DILocation(line: 359, column: 26, scope: !5374, inlinedAt: !5291)
!5378 = !DILocation(line: 360, column: 6, scope: !5379, inlinedAt: !5291)
!5379 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 360, column: 6)
!5380 = !DILocation(line: 360, column: 11, scope: !5379, inlinedAt: !5291)
!5381 = !DILocation(line: 360, column: 6, scope: !5287, inlinedAt: !5291)
!5382 = !DILocation(line: 360, column: 26, scope: !5379, inlinedAt: !5291)
!5383 = !DILocation(line: 361, column: 6, scope: !5384, inlinedAt: !5291)
!5384 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 361, column: 6)
!5385 = !DILocation(line: 361, column: 11, scope: !5384, inlinedAt: !5291)
!5386 = !DILocation(line: 361, column: 6, scope: !5287, inlinedAt: !5291)
!5387 = !DILocation(line: 361, column: 26, scope: !5384, inlinedAt: !5291)
!5388 = !DILocation(line: 362, column: 6, scope: !5389, inlinedAt: !5291)
!5389 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 362, column: 6)
!5390 = !DILocation(line: 362, column: 11, scope: !5389, inlinedAt: !5291)
!5391 = !DILocation(line: 362, column: 6, scope: !5287, inlinedAt: !5291)
!5392 = !DILocation(line: 362, column: 26, scope: !5389, inlinedAt: !5291)
!5393 = !DILocation(line: 363, column: 6, scope: !5394, inlinedAt: !5291)
!5394 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 363, column: 6)
!5395 = !DILocation(line: 363, column: 11, scope: !5394, inlinedAt: !5291)
!5396 = !DILocation(line: 363, column: 6, scope: !5287, inlinedAt: !5291)
!5397 = !DILocation(line: 363, column: 26, scope: !5394, inlinedAt: !5291)
!5398 = !DILocation(line: 364, column: 6, scope: !5399, inlinedAt: !5291)
!5399 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 364, column: 6)
!5400 = !DILocation(line: 364, column: 11, scope: !5399, inlinedAt: !5291)
!5401 = !DILocation(line: 364, column: 6, scope: !5287, inlinedAt: !5291)
!5402 = !DILocation(line: 364, column: 26, scope: !5399, inlinedAt: !5291)
!5403 = !DILocation(line: 365, column: 6, scope: !5404, inlinedAt: !5291)
!5404 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 365, column: 6)
!5405 = !DILocation(line: 365, column: 11, scope: !5404, inlinedAt: !5291)
!5406 = !DILocation(line: 365, column: 6, scope: !5287, inlinedAt: !5291)
!5407 = !DILocation(line: 365, column: 26, scope: !5404, inlinedAt: !5291)
!5408 = !DILocation(line: 366, column: 6, scope: !5409, inlinedAt: !5291)
!5409 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 366, column: 6)
!5410 = !DILocation(line: 366, column: 11, scope: !5409, inlinedAt: !5291)
!5411 = !DILocation(line: 366, column: 6, scope: !5287, inlinedAt: !5291)
!5412 = !DILocation(line: 366, column: 26, scope: !5409, inlinedAt: !5291)
!5413 = !DILocation(line: 367, column: 6, scope: !5414, inlinedAt: !5291)
!5414 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 367, column: 6)
!5415 = !DILocation(line: 367, column: 11, scope: !5414, inlinedAt: !5291)
!5416 = !DILocation(line: 367, column: 6, scope: !5287, inlinedAt: !5291)
!5417 = !DILocation(line: 367, column: 26, scope: !5414, inlinedAt: !5291)
!5418 = !DILocation(line: 368, column: 6, scope: !5419, inlinedAt: !5291)
!5419 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 368, column: 6)
!5420 = !DILocation(line: 368, column: 11, scope: !5419, inlinedAt: !5291)
!5421 = !DILocation(line: 368, column: 6, scope: !5287, inlinedAt: !5291)
!5422 = !DILocation(line: 368, column: 26, scope: !5419, inlinedAt: !5291)
!5423 = !DILocation(line: 369, column: 6, scope: !5424, inlinedAt: !5291)
!5424 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 369, column: 6)
!5425 = !DILocation(line: 369, column: 11, scope: !5424, inlinedAt: !5291)
!5426 = !DILocation(line: 369, column: 6, scope: !5287, inlinedAt: !5291)
!5427 = !DILocation(line: 369, column: 26, scope: !5424, inlinedAt: !5291)
!5428 = !DILocation(line: 370, column: 6, scope: !5429, inlinedAt: !5291)
!5429 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 370, column: 6)
!5430 = !DILocation(line: 370, column: 11, scope: !5429, inlinedAt: !5291)
!5431 = !DILocation(line: 370, column: 6, scope: !5287, inlinedAt: !5291)
!5432 = !DILocation(line: 370, column: 26, scope: !5429, inlinedAt: !5291)
!5433 = !DILocation(line: 371, column: 6, scope: !5434, inlinedAt: !5291)
!5434 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 371, column: 6)
!5435 = !DILocation(line: 371, column: 11, scope: !5434, inlinedAt: !5291)
!5436 = !DILocation(line: 371, column: 6, scope: !5287, inlinedAt: !5291)
!5437 = !DILocation(line: 371, column: 26, scope: !5434, inlinedAt: !5291)
!5438 = !DILocation(line: 372, column: 6, scope: !5439, inlinedAt: !5291)
!5439 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 372, column: 6)
!5440 = !DILocation(line: 372, column: 11, scope: !5439, inlinedAt: !5291)
!5441 = !DILocation(line: 372, column: 6, scope: !5287, inlinedAt: !5291)
!5442 = !DILocation(line: 372, column: 26, scope: !5439, inlinedAt: !5291)
!5443 = !DILocation(line: 373, column: 6, scope: !5444, inlinedAt: !5291)
!5444 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 373, column: 6)
!5445 = !DILocation(line: 373, column: 11, scope: !5444, inlinedAt: !5291)
!5446 = !DILocation(line: 373, column: 6, scope: !5287, inlinedAt: !5291)
!5447 = !DILocation(line: 373, column: 26, scope: !5444, inlinedAt: !5291)
!5448 = !DILocation(line: 374, column: 6, scope: !5449, inlinedAt: !5291)
!5449 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 374, column: 6)
!5450 = !DILocation(line: 374, column: 11, scope: !5449, inlinedAt: !5291)
!5451 = !DILocation(line: 374, column: 6, scope: !5287, inlinedAt: !5291)
!5452 = !DILocation(line: 374, column: 26, scope: !5449, inlinedAt: !5291)
!5453 = !DILocation(line: 375, column: 6, scope: !5454, inlinedAt: !5291)
!5454 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 375, column: 6)
!5455 = !DILocation(line: 375, column: 11, scope: !5454, inlinedAt: !5291)
!5456 = !DILocation(line: 375, column: 6, scope: !5287, inlinedAt: !5291)
!5457 = !DILocation(line: 375, column: 27, scope: !5454, inlinedAt: !5291)
!5458 = !DILocation(line: 376, column: 6, scope: !5459, inlinedAt: !5291)
!5459 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 376, column: 6)
!5460 = !DILocation(line: 376, column: 11, scope: !5459, inlinedAt: !5291)
!5461 = !DILocation(line: 376, column: 6, scope: !5287, inlinedAt: !5291)
!5462 = !DILocation(line: 376, column: 32, scope: !5459, inlinedAt: !5291)
!5463 = !DILocation(line: 377, column: 6, scope: !5464, inlinedAt: !5291)
!5464 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 377, column: 6)
!5465 = !DILocation(line: 377, column: 11, scope: !5464, inlinedAt: !5291)
!5466 = !DILocation(line: 377, column: 6, scope: !5287, inlinedAt: !5291)
!5467 = !DILocation(line: 377, column: 32, scope: !5464, inlinedAt: !5291)
!5468 = !DILocation(line: 378, column: 6, scope: !5469, inlinedAt: !5291)
!5469 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 378, column: 6)
!5470 = !DILocation(line: 378, column: 11, scope: !5469, inlinedAt: !5291)
!5471 = !DILocation(line: 378, column: 6, scope: !5287, inlinedAt: !5291)
!5472 = !DILocation(line: 378, column: 32, scope: !5469, inlinedAt: !5291)
!5473 = !DILocation(line: 379, column: 6, scope: !5474, inlinedAt: !5291)
!5474 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 379, column: 6)
!5475 = !DILocation(line: 379, column: 11, scope: !5474, inlinedAt: !5291)
!5476 = !DILocation(line: 379, column: 6, scope: !5287, inlinedAt: !5291)
!5477 = !DILocation(line: 379, column: 33, scope: !5474, inlinedAt: !5291)
!5478 = !DILocation(line: 380, column: 6, scope: !5479, inlinedAt: !5291)
!5479 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 380, column: 6)
!5480 = !DILocation(line: 380, column: 11, scope: !5479, inlinedAt: !5291)
!5481 = !DILocation(line: 380, column: 6, scope: !5287, inlinedAt: !5291)
!5482 = !DILocation(line: 380, column: 33, scope: !5479, inlinedAt: !5291)
!5483 = !DILocation(line: 381, column: 6, scope: !5484, inlinedAt: !5291)
!5484 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 381, column: 6)
!5485 = !DILocation(line: 381, column: 11, scope: !5484, inlinedAt: !5291)
!5486 = !DILocation(line: 381, column: 6, scope: !5287, inlinedAt: !5291)
!5487 = !DILocation(line: 381, column: 33, scope: !5484, inlinedAt: !5291)
!5488 = !DILocation(line: 382, column: 2, scope: !5489, inlinedAt: !5291)
!5489 = distinct !DILexicalBlock(scope: !5490, file: !136, line: 382, column: 2)
!5490 = distinct !DILexicalBlock(scope: !5287, file: !136, line: 382, column: 2)
!5491 = !{i32 -2144069784, i32 -2144069755, i32 -2144069709, i32 -2144069651, i32 -2144069597, i32 -2144069543, i32 -2144069488, i32 -2144069457}
!5492 = !DILocation(line: 382, column: 2, scope: !5493, inlinedAt: !5291)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !136, line: 382, column: 2)
!5494 = distinct !DILexicalBlock(scope: !5490, file: !136, line: 382, column: 2)
!5495 = !{i32 -2144069014, i32 -2144069007, i32 -2144068953, i32 -2144068922, i32 -2144068892}
!5496 = !DILocation(line: 382, column: 2, scope: !5494, inlinedAt: !5291)
!5497 = !DILocation(line: 386, column: 1, scope: !5287, inlinedAt: !5291)
!5498 = !DILocation(line: 547, column: 9, scope: !5270, inlinedAt: !5273)
!5499 = !DILocation(line: 549, column: 8, scope: !5500, inlinedAt: !5273)
!5500 = distinct !DILexicalBlock(scope: !5270, file: !136, line: 549, column: 7)
!5501 = !DILocation(line: 549, column: 7, scope: !5270, inlinedAt: !5273)
!5502 = !DILocation(line: 550, column: 4, scope: !5500, inlinedAt: !5273)
!5503 = !DILocation(line: 553, column: 33, scope: !5270, inlinedAt: !5273)
!5504 = !DILocation(line: 325, column: 6, scope: !5505, inlinedAt: !5285)
!5505 = distinct !DILexicalBlock(scope: !5281, file: !136, line: 325, column: 6)
!5506 = !DILocation(line: 325, column: 6, scope: !5281, inlinedAt: !5285)
!5507 = !DILocation(line: 326, column: 3, scope: !5505, inlinedAt: !5285)
!5508 = !DILocation(line: 332, column: 9, scope: !5281, inlinedAt: !5285)
!5509 = !DILocation(line: 332, column: 15, scope: !5281, inlinedAt: !5285)
!5510 = !DILocation(line: 332, column: 2, scope: !5281, inlinedAt: !5285)
!5511 = !DILocation(line: 336, column: 1, scope: !5281, inlinedAt: !5285)
!5512 = !DILocation(line: 553, column: 5, scope: !5270, inlinedAt: !5273)
!5513 = !DILocation(line: 553, column: 41, scope: !5270, inlinedAt: !5273)
!5514 = !DILocation(line: 554, column: 5, scope: !5270, inlinedAt: !5273)
!5515 = !DILocation(line: 554, column: 12, scope: !5270, inlinedAt: !5273)
!5516 = !DILocation(line: 448, column: 31, scope: !5265, inlinedAt: !5269)
!5517 = !DILocation(line: 448, column: 34, scope: !5265, inlinedAt: !5269)
!5518 = !DILocation(line: 448, column: 14, scope: !5265, inlinedAt: !5269)
!5519 = !DILocation(line: 450, column: 22, scope: !5265, inlinedAt: !5269)
!5520 = !DILocation(line: 450, column: 25, scope: !5265, inlinedAt: !5269)
!5521 = !DILocation(line: 450, column: 30, scope: !5265, inlinedAt: !5269)
!5522 = !DILocation(line: 450, column: 36, scope: !5265, inlinedAt: !5269)
!5523 = !DILocation(line: 450, column: 8, scope: !5265, inlinedAt: !5269)
!5524 = !DILocation(line: 450, column: 6, scope: !5265, inlinedAt: !5269)
!5525 = !DILocation(line: 451, column: 9, scope: !5265, inlinedAt: !5269)
!5526 = !DILocation(line: 552, column: 3, scope: !5270, inlinedAt: !5273)
!5527 = !DILocation(line: 557, column: 19, scope: !5272, inlinedAt: !5273)
!5528 = !DILocation(line: 557, column: 25, scope: !5272, inlinedAt: !5273)
!5529 = !DILocation(line: 557, column: 9, scope: !5272, inlinedAt: !5273)
!5530 = !DILocation(line: 557, column: 2, scope: !5272, inlinedAt: !5273)
!5531 = !DILocation(line: 558, column: 1, scope: !5272, inlinedAt: !5273)
!5532 = !DILocation(line: 664, column: 2, scope: !5261)
!5533 = distinct !DISubprogram(name: "change_protocol", scope: !3, file: !3, line: 245, type: !4157, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5534 = !DILocalVariable(name: "dev", arg: 1, scope: !5533, file: !3, line: 245, type: !185)
!5535 = !DILocation(line: 245, column: 43, scope: !5533)
!5536 = !DILocalVariable(name: "rc_proto", arg: 2, scope: !5533, file: !3, line: 245, type: !3621)
!5537 = !DILocation(line: 245, column: 53, scope: !5533)
!5538 = !DILocalVariable(name: "handler", scope: !5533, file: !3, line: 247, type: !165)
!5539 = !DILocation(line: 247, column: 25, scope: !5533)
!5540 = !DILocalVariable(name: "timeout", scope: !5533, file: !3, line: 248, type: !150)
!5541 = !DILocation(line: 248, column: 6, scope: !5533)
!5542 = !DILocation(line: 250, column: 2, scope: !5533)
!5543 = !DILocalVariable(name: "__mptr", scope: !5544, file: !3, line: 251, type: !164)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 251, column: 2)
!5545 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 251, column: 2)
!5546 = !DILocation(line: 251, column: 2, scope: !5544)
!5547 = !DILocation(line: 251, column: 2, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 251, column: 2)
!5549 = !DILocation(line: 251, column: 2, scope: !5545)
!5550 = !DILocation(line: 251, column: 2, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 251, column: 2)
!5552 = !DILocation(line: 252, column: 9, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 252, column: 7)
!5554 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 251, column: 59)
!5555 = !DILocation(line: 252, column: 14, scope: !5553)
!5556 = !DILocation(line: 252, column: 34, scope: !5553)
!5557 = !DILocation(line: 252, column: 43, scope: !5553)
!5558 = !DILocation(line: 252, column: 32, scope: !5553)
!5559 = !DILocation(line: 252, column: 54, scope: !5553)
!5560 = !DILocation(line: 253, column: 9, scope: !5553)
!5561 = !DILocation(line: 253, column: 8, scope: !5553)
!5562 = !DILocation(line: 253, column: 20, scope: !5553)
!5563 = !DILocation(line: 253, column: 29, scope: !5553)
!5564 = !DILocation(line: 253, column: 18, scope: !5553)
!5565 = !DILocation(line: 253, column: 40, scope: !5553)
!5566 = !DILocation(line: 253, column: 43, scope: !5553)
!5567 = !DILocation(line: 253, column: 52, scope: !5553)
!5568 = !DILocation(line: 252, column: 7, scope: !5554)
!5569 = !DILocation(line: 254, column: 4, scope: !5553)
!5570 = !DILocation(line: 254, column: 13, scope: !5553)
!5571 = !DILocation(line: 254, column: 26, scope: !5553)
!5572 = !DILocation(line: 256, column: 8, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 256, column: 7)
!5574 = !DILocation(line: 256, column: 13, scope: !5573)
!5575 = !DILocation(line: 256, column: 33, scope: !5573)
!5576 = !DILocation(line: 256, column: 42, scope: !5573)
!5577 = !DILocation(line: 256, column: 31, scope: !5573)
!5578 = !DILocation(line: 256, column: 53, scope: !5573)
!5579 = !DILocation(line: 257, column: 10, scope: !5573)
!5580 = !DILocation(line: 257, column: 9, scope: !5573)
!5581 = !DILocation(line: 257, column: 21, scope: !5573)
!5582 = !DILocation(line: 257, column: 30, scope: !5573)
!5583 = !DILocation(line: 257, column: 19, scope: !5573)
!5584 = !DILocation(line: 257, column: 41, scope: !5573)
!5585 = !DILocation(line: 258, column: 7, scope: !5573)
!5586 = !DILocation(line: 258, column: 16, scope: !5573)
!5587 = !DILocation(line: 256, column: 7, scope: !5554)
!5588 = !DILocation(line: 259, column: 4, scope: !5573)
!5589 = !DILocation(line: 259, column: 13, scope: !5573)
!5590 = !DILocation(line: 259, column: 28, scope: !5573)
!5591 = !DILocation(line: 260, column: 2, scope: !5554)
!5592 = !DILocalVariable(name: "__mptr", scope: !5593, file: !3, line: 251, type: !164)
!5593 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 251, column: 2)
!5594 = !DILocation(line: 251, column: 2, scope: !5593)
!5595 = !DILocation(line: 251, column: 2, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 251, column: 2)
!5597 = distinct !{!5597, !5549, !5598}
!5598 = !DILocation(line: 260, column: 2, scope: !5545)
!5599 = !DILocation(line: 261, column: 2, scope: !5533)
!5600 = !DILocation(line: 263, column: 7, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 263, column: 6)
!5602 = !DILocation(line: 263, column: 12, scope: !5601)
!5603 = !DILocation(line: 263, column: 6, scope: !5533)
!5604 = !DILocation(line: 264, column: 3, scope: !5601)
!5605 = !DILocation(line: 266, column: 2, scope: !5533)
!5606 = !DILocalVariable(name: "__mptr", scope: !5607, file: !3, line: 267, type: !164)
!5607 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 267, column: 2)
!5608 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 267, column: 2)
!5609 = !DILocation(line: 267, column: 2, scope: !5607)
!5610 = !DILocation(line: 267, column: 2, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 267, column: 2)
!5612 = !DILocation(line: 267, column: 2, scope: !5608)
!5613 = !DILocation(line: 267, column: 2, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 267, column: 2)
!5615 = !DILocation(line: 268, column: 7, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 268, column: 7)
!5617 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 267, column: 59)
!5618 = !DILocation(line: 268, column: 16, scope: !5616)
!5619 = !DILocation(line: 268, column: 29, scope: !5616)
!5620 = !DILocation(line: 268, column: 28, scope: !5616)
!5621 = !DILocation(line: 268, column: 26, scope: !5616)
!5622 = !DILocation(line: 268, column: 7, scope: !5617)
!5623 = !DILocation(line: 269, column: 8, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 269, column: 8)
!5625 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 268, column: 39)
!5626 = !DILocation(line: 269, column: 18, scope: !5624)
!5627 = !DILocation(line: 269, column: 27, scope: !5624)
!5628 = !DILocation(line: 269, column: 16, scope: !5624)
!5629 = !DILocation(line: 269, column: 8, scope: !5625)
!5630 = !DILocation(line: 270, column: 15, scope: !5624)
!5631 = !DILocation(line: 270, column: 24, scope: !5624)
!5632 = !DILocation(line: 270, column: 13, scope: !5624)
!5633 = !DILocation(line: 270, column: 5, scope: !5624)
!5634 = !DILocation(line: 271, column: 3, scope: !5625)
!5635 = !DILocation(line: 272, column: 2, scope: !5617)
!5636 = !DILocalVariable(name: "__mptr", scope: !5637, file: !3, line: 267, type: !164)
!5637 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 267, column: 2)
!5638 = !DILocation(line: 267, column: 2, scope: !5637)
!5639 = !DILocation(line: 267, column: 2, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 267, column: 2)
!5641 = distinct !{!5641, !5612, !5642}
!5642 = !DILocation(line: 272, column: 2, scope: !5608)
!5643 = !DILocation(line: 273, column: 2, scope: !5533)
!5644 = !DILocation(line: 275, column: 6, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 275, column: 6)
!5646 = !DILocation(line: 275, column: 14, scope: !5645)
!5647 = !DILocation(line: 275, column: 6, scope: !5533)
!5648 = !DILocation(line: 276, column: 11, scope: !5645)
!5649 = !DILocation(line: 276, column: 3, scope: !5645)
!5650 = !DILocation(line: 278, column: 11, scope: !5645)
!5651 = !DILocation(line: 280, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 280, column: 6)
!5653 = !DILocation(line: 280, column: 16, scope: !5652)
!5654 = !DILocation(line: 280, column: 21, scope: !5652)
!5655 = !DILocation(line: 280, column: 14, scope: !5652)
!5656 = !DILocation(line: 280, column: 6, scope: !5533)
!5657 = !DILocation(line: 281, column: 13, scope: !5652)
!5658 = !DILocation(line: 281, column: 18, scope: !5652)
!5659 = !DILocation(line: 281, column: 11, scope: !5652)
!5660 = !DILocation(line: 281, column: 3, scope: !5652)
!5661 = !DILocation(line: 282, column: 11, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 282, column: 11)
!5663 = !DILocation(line: 282, column: 21, scope: !5662)
!5664 = !DILocation(line: 282, column: 26, scope: !5662)
!5665 = !DILocation(line: 282, column: 19, scope: !5662)
!5666 = !DILocation(line: 282, column: 11, scope: !5652)
!5667 = !DILocation(line: 283, column: 13, scope: !5662)
!5668 = !DILocation(line: 283, column: 18, scope: !5662)
!5669 = !DILocation(line: 283, column: 11, scope: !5662)
!5670 = !DILocation(line: 283, column: 3, scope: !5662)
!5671 = !DILocation(line: 285, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 285, column: 6)
!5673 = !DILocation(line: 285, column: 11, scope: !5672)
!5674 = !DILocation(line: 285, column: 6, scope: !5533)
!5675 = !DILocation(line: 286, column: 3, scope: !5672)
!5676 = !DILocation(line: 286, column: 8, scope: !5672)
!5677 = !DILocation(line: 286, column: 18, scope: !5672)
!5678 = !DILocation(line: 286, column: 23, scope: !5672)
!5679 = !DILocation(line: 288, column: 18, scope: !5672)
!5680 = !DILocation(line: 288, column: 3, scope: !5672)
!5681 = !DILocation(line: 288, column: 8, scope: !5672)
!5682 = !DILocation(line: 288, column: 16, scope: !5672)
!5683 = !DILocation(line: 290, column: 2, scope: !5533)
!5684 = !DILocation(line: 291, column: 1, scope: !5533)
!5685 = distinct !DISubprogram(name: "ir_raw_edge_handle", scope: !3, file: !3, line: 555, type: !3532, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5686 = !DILocalVariable(name: "lock", arg: 1, scope: !5687, file: !4326, line: 407, type: !1034)
!5687 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4326, file: !4326, line: 407, type: !5688, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{null, !1034, !298}
!5690 = !DILocation(line: 407, column: 64, scope: !5687, inlinedAt: !5691)
!5691 = distinct !DILocation(line: 576, column: 2, scope: !5685)
!5692 = !DILocalVariable(name: "flags", arg: 2, scope: !5687, file: !4326, line: 407, type: !298)
!5693 = !DILocation(line: 407, column: 84, scope: !5687, inlinedAt: !5691)
!5694 = !DILocalVariable(name: "u", arg: 1, scope: !5695, file: !4333, line: 410, type: !2780)
!5695 = distinct !DISubprogram(name: "usecs_to_jiffies", scope: !4333, file: !4333, line: 410, type: !4334, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5696 = !DILocation(line: 410, column: 74, scope: !5695, inlinedAt: !5697)
!5697 = distinct !DILocation(line: 573, column: 16, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 571, column: 9)
!5699 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 564, column: 6)
!5700 = !DILocation(line: 327, column: 67, scope: !5217, inlinedAt: !5701)
!5701 = distinct !DILocation(line: 562, column: 2, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 562, column: 2)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 562, column: 2)
!5704 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 562, column: 2)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 562, column: 2)
!5706 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 562, column: 2)
!5707 = !DILocalVariable(name: "t", arg: 1, scope: !5685, file: !3, line: 555, type: !3534)
!5708 = !DILocation(line: 555, column: 51, scope: !5685)
!5709 = !DILocalVariable(name: "raw", scope: !5685, file: !3, line: 557, type: !3816)
!5710 = !DILocation(line: 557, column: 28, scope: !5685)
!5711 = !DILocalVariable(name: "__mptr", scope: !5712, file: !3, line: 557, type: !164)
!5712 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 557, column: 34)
!5713 = !DILocation(line: 557, column: 34, scope: !5712)
!5714 = !DILocation(line: 557, column: 34, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 557, column: 34)
!5716 = !DILocalVariable(name: "dev", scope: !5685, file: !3, line: 558, type: !185)
!5717 = !DILocation(line: 558, column: 17, scope: !5685)
!5718 = !DILocation(line: 558, column: 23, scope: !5685)
!5719 = !DILocation(line: 558, column: 28, scope: !5685)
!5720 = !DILocalVariable(name: "flags", scope: !5685, file: !3, line: 559, type: !298)
!5721 = !DILocation(line: 559, column: 16, scope: !5685)
!5722 = !DILocalVariable(name: "interval", scope: !5685, file: !3, line: 560, type: !1254)
!5723 = !DILocation(line: 560, column: 10, scope: !5685)
!5724 = !DILocation(line: 562, column: 2, scope: !5685)
!5725 = !DILocation(line: 562, column: 2, scope: !5706)
!5726 = !DILocalVariable(name: "__dummy", scope: !5727, file: !3, line: 562, type: !298)
!5727 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 562, column: 2)
!5728 = !DILocation(line: 562, column: 2, scope: !5727)
!5729 = !DILocalVariable(name: "__dummy2", scope: !5727, file: !3, line: 562, type: !298)
!5730 = !DILocation(line: 562, column: 2, scope: !5705)
!5731 = !DILocation(line: 562, column: 2, scope: !5704)
!5732 = !DILocation(line: 562, column: 2, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 562, column: 2)
!5734 = !DILocalVariable(name: "__dummy", scope: !5735, file: !3, line: 562, type: !298)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 562, column: 2)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 562, column: 2)
!5737 = !DILocation(line: 562, column: 2, scope: !5735)
!5738 = !DILocalVariable(name: "__dummy2", scope: !5735, file: !3, line: 562, type: !298)
!5739 = !DILocation(line: 562, column: 2, scope: !5736)
!5740 = !DILocation(line: 562, column: 2, scope: !5703)
!5741 = !{i32 -2141842964}
!5742 = !DILocation(line: 562, column: 2, scope: !5702)
!5743 = !DILocation(line: 329, column: 10, scope: !5217, inlinedAt: !5701)
!5744 = !DILocation(line: 329, column: 16, scope: !5217, inlinedAt: !5701)
!5745 = !DILocation(line: 563, column: 13, scope: !5685)
!5746 = !DILocation(line: 563, column: 11, scope: !5685)
!5747 = !DILocation(line: 564, column: 18, scope: !5699)
!5748 = !DILocation(line: 564, column: 6, scope: !5699)
!5749 = !DILocation(line: 564, column: 31, scope: !5699)
!5750 = !DILocation(line: 564, column: 36, scope: !5699)
!5751 = !DILocation(line: 564, column: 28, scope: !5699)
!5752 = !DILocation(line: 564, column: 6, scope: !5685)
!5753 = !DILocalVariable(name: "ev", scope: !5754, file: !3, line: 565, type: !144)
!5754 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 564, column: 45)
!5755 = !DILocation(line: 565, column: 23, scope: !5754)
!5756 = !DILocation(line: 565, column: 28, scope: !5754)
!5757 = !DILocation(line: 567, column: 4, scope: !5754)
!5758 = !DILocation(line: 567, column: 28, scope: !5754)
!5759 = !DILocation(line: 567, column: 16, scope: !5754)
!5760 = !DILocation(line: 570, column: 22, scope: !5754)
!5761 = !DILocation(line: 570, column: 3, scope: !5754)
!5762 = !DILocation(line: 571, column: 2, scope: !5754)
!5763 = !DILocation(line: 572, column: 14, scope: !5698)
!5764 = !DILocation(line: 572, column: 19, scope: !5698)
!5765 = !DILocation(line: 572, column: 24, scope: !5698)
!5766 = !DILocation(line: 573, column: 6, scope: !5698)
!5767 = !DILocation(line: 573, column: 33, scope: !5698)
!5768 = !DILocation(line: 573, column: 38, scope: !5698)
!5769 = !DILocation(line: 574, column: 24, scope: !5698)
!5770 = !DILocation(line: 574, column: 12, scope: !5698)
!5771 = !DILocation(line: 573, column: 46, scope: !5698)
!5772 = !DILocation(line: 412, column: 27, scope: !5773, inlinedAt: !5697)
!5773 = distinct !DILexicalBlock(scope: !5695, file: !4333, line: 412, column: 6)
!5774 = !DILocation(line: 412, column: 6, scope: !5773, inlinedAt: !5697)
!5775 = !DILocation(line: 412, column: 6, scope: !5695, inlinedAt: !5697)
!5776 = !DILocation(line: 413, column: 7, scope: !5777, inlinedAt: !5697)
!5777 = distinct !DILexicalBlock(scope: !5778, file: !4333, line: 413, column: 7)
!5778 = distinct !DILexicalBlock(scope: !5773, file: !4333, line: 412, column: 31)
!5779 = !DILocation(line: 413, column: 11, scope: !5777, inlinedAt: !5697)
!5780 = !DILocation(line: 413, column: 9, scope: !5777, inlinedAt: !5697)
!5781 = !DILocation(line: 413, column: 7, scope: !5778, inlinedAt: !5697)
!5782 = !DILocation(line: 414, column: 4, scope: !5777, inlinedAt: !5697)
!5783 = !DILocation(line: 415, column: 28, scope: !5778, inlinedAt: !5697)
!5784 = !DILocation(line: 415, column: 10, scope: !5778, inlinedAt: !5697)
!5785 = !DILocation(line: 415, column: 3, scope: !5778, inlinedAt: !5697)
!5786 = !DILocation(line: 417, column: 29, scope: !5787, inlinedAt: !5697)
!5787 = distinct !DILexicalBlock(scope: !5773, file: !4333, line: 416, column: 9)
!5788 = !DILocation(line: 417, column: 10, scope: !5787, inlinedAt: !5697)
!5789 = !DILocation(line: 417, column: 3, scope: !5787, inlinedAt: !5697)
!5790 = !DILocation(line: 419, column: 1, scope: !5695, inlinedAt: !5697)
!5791 = !DILocation(line: 573, column: 14, scope: !5698)
!5792 = !DILocation(line: 572, column: 3, scope: !5698)
!5793 = !DILocation(line: 576, column: 26, scope: !5685)
!5794 = !DILocation(line: 576, column: 31, scope: !5685)
!5795 = !DILocation(line: 576, column: 36, scope: !5685)
!5796 = !DILocation(line: 576, column: 51, scope: !5685)
!5797 = !DILocalVariable(name: "__dummy", scope: !5798, file: !4326, line: 409, type: !298)
!5798 = distinct !DILexicalBlock(scope: !5799, file: !4326, line: 409, column: 2)
!5799 = distinct !DILexicalBlock(scope: !5687, file: !4326, line: 409, column: 2)
!5800 = !DILocation(line: 409, column: 2, scope: !5798, inlinedAt: !5691)
!5801 = !DILocalVariable(name: "__dummy2", scope: !5798, file: !4326, line: 409, type: !298)
!5802 = !DILocalVariable(name: "__dummy", scope: !5803, file: !4326, line: 409, type: !298)
!5803 = distinct !DILexicalBlock(scope: !5804, file: !4326, line: 409, column: 2)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !4326, line: 409, column: 2)
!5805 = distinct !DILexicalBlock(scope: !5806, file: !4326, line: 409, column: 2)
!5806 = distinct !DILexicalBlock(scope: !5799, file: !4326, line: 409, column: 2)
!5807 = !DILocation(line: 409, column: 2, scope: !5803, inlinedAt: !5691)
!5808 = !DILocalVariable(name: "__dummy2", scope: !5803, file: !4326, line: 409, type: !298)
!5809 = !DILocation(line: 409, column: 2, scope: !5804, inlinedAt: !5691)
!5810 = !DILocation(line: 409, column: 2, scope: !5811, inlinedAt: !5691)
!5811 = distinct !DILexicalBlock(scope: !5806, file: !4326, line: 409, column: 2)
!5812 = !{i32 -2145313679}
!5813 = !DILocation(line: 409, column: 2, scope: !5814, inlinedAt: !5691)
!5814 = distinct !DILexicalBlock(scope: !5811, file: !4326, line: 409, column: 2)
!5815 = !DILocation(line: 578, column: 22, scope: !5685)
!5816 = !DILocation(line: 578, column: 2, scope: !5685)
!5817 = !DILocation(line: 579, column: 1, scope: !5685)
!5818 = distinct !DISubprogram(name: "ir_raw_event_register", scope: !3, file: !3, line: 633, type: !4161, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5819 = !DILocalVariable(name: "dev", arg: 1, scope: !5818, file: !3, line: 633, type: !185)
!5820 = !DILocation(line: 633, column: 42, scope: !5818)
!5821 = !DILocalVariable(name: "thread", scope: !5818, file: !3, line: 635, type: !1170)
!5822 = !DILocation(line: 635, column: 22, scope: !5818)
!5823 = !DILocalVariable(name: "__k", scope: !5824, file: !3, line: 637, type: !1170)
!5824 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 637, column: 11)
!5825 = !DILocation(line: 637, column: 11, scope: !5824)
!5826 = !DILocation(line: 637, column: 11, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 637, column: 11)
!5828 = !DILocation(line: 637, column: 9, scope: !5818)
!5829 = !DILocation(line: 638, column: 13, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 638, column: 6)
!5831 = !DILocation(line: 638, column: 6, scope: !5830)
!5832 = !DILocation(line: 638, column: 6, scope: !5818)
!5833 = !DILocation(line: 639, column: 18, scope: !5830)
!5834 = !DILocation(line: 639, column: 10, scope: !5830)
!5835 = !DILocation(line: 639, column: 3, scope: !5830)
!5836 = !DILocation(line: 641, column: 21, scope: !5818)
!5837 = !DILocation(line: 641, column: 2, scope: !5818)
!5838 = !DILocation(line: 641, column: 7, scope: !5818)
!5839 = !DILocation(line: 641, column: 12, scope: !5818)
!5840 = !DILocation(line: 641, column: 19, scope: !5818)
!5841 = !DILocation(line: 643, column: 2, scope: !5818)
!5842 = !DILocation(line: 644, column: 17, scope: !5818)
!5843 = !DILocation(line: 644, column: 22, scope: !5818)
!5844 = !DILocation(line: 644, column: 27, scope: !5818)
!5845 = !DILocation(line: 644, column: 2, scope: !5818)
!5846 = !DILocation(line: 645, column: 2, scope: !5818)
!5847 = !DILocation(line: 647, column: 2, scope: !5818)
!5848 = !DILocation(line: 648, column: 1, scope: !5818)
!5849 = !DILocalVariable(name: "pscr_ret__", scope: !5850, file: !5851, line: 15, type: !1170)
!5850 = distinct !DILexicalBlock(scope: !5852, file: !5851, line: 15, column: 9)
!5851 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5852 = distinct !DISubprogram(name: "get_current", scope: !5851, file: !5851, line: 13, type: !5853, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!1170}
!5855 = !DILocation(line: 15, column: 9, scope: !5850, inlinedAt: !5856)
!5856 = distinct !DILocation(line: 56, column: 4, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 56, column: 4)
!5858 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 56, column: 4)
!5859 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 56, column: 4)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 55, column: 14)
!5861 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 52, column: 7)
!5862 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 28, column: 12)
!5863 = !DILocalVariable(name: "__vpp_verify", scope: !5864, file: !5851, line: 15, type: !2080)
!5864 = distinct !DILexicalBlock(scope: !5850, file: !5851, line: 15, column: 9)
!5865 = !DILocation(line: 15, column: 9, scope: !5864, inlinedAt: !5856)
!5866 = !DILocalVariable(name: "pfo_val__", scope: !5867, file: !5851, line: 15, type: !177)
!5867 = distinct !DILexicalBlock(scope: !5850, file: !5851, line: 15, column: 9)
!5868 = !DILocation(line: 15, column: 9, scope: !5867, inlinedAt: !5856)
!5869 = !DILocation(line: 15, column: 9, scope: !5850, inlinedAt: !5870)
!5870 = distinct !DILocation(line: 53, column: 4, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 52, column: 30)
!5872 = !DILocation(line: 15, column: 9, scope: !5864, inlinedAt: !5870)
!5873 = !DILocation(line: 15, column: 9, scope: !5867, inlinedAt: !5870)
!5874 = !DILocation(line: 15, column: 9, scope: !5850, inlinedAt: !5875)
!5875 = distinct !DILocation(line: 50, column: 3, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 50, column: 3)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 50, column: 3)
!5878 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 50, column: 3)
!5879 = !DILocation(line: 15, column: 9, scope: !5864, inlinedAt: !5875)
!5880 = !DILocation(line: 15, column: 9, scope: !5867, inlinedAt: !5875)
!5881 = !DILocalVariable(name: "data", arg: 1, scope: !4225, file: !3, line: 21, type: !164)
!5882 = !DILocation(line: 21, column: 38, scope: !4225)
!5883 = !DILocalVariable(name: "ev", scope: !4225, file: !3, line: 23, type: !144)
!5884 = !DILocation(line: 23, column: 22, scope: !4225)
!5885 = !DILocalVariable(name: "handler", scope: !4225, file: !3, line: 24, type: !165)
!5886 = !DILocation(line: 24, column: 25, scope: !4225)
!5887 = !DILocalVariable(name: "raw", scope: !4225, file: !3, line: 25, type: !3816)
!5888 = !DILocation(line: 25, column: 28, scope: !4225)
!5889 = !DILocation(line: 25, column: 34, scope: !4225)
!5890 = !DILocalVariable(name: "dev", scope: !4225, file: !3, line: 26, type: !185)
!5891 = !DILocation(line: 26, column: 17, scope: !4225)
!5892 = !DILocation(line: 26, column: 23, scope: !4225)
!5893 = !DILocation(line: 26, column: 28, scope: !4225)
!5894 = !DILocation(line: 28, column: 2, scope: !4225)
!5895 = !DILocation(line: 29, column: 3, scope: !5862)
!5896 = !DILocation(line: 30, column: 3, scope: !5862)
!5897 = !DILocalVariable(name: "__tmp", scope: !5898, file: !3, line: 30, type: !4255)
!5898 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 30, column: 10)
!5899 = !DILocation(line: 30, column: 10, scope: !5898)
!5900 = !DILocalVariable(name: "__buf", scope: !5898, file: !3, line: 30, type: !143)
!5901 = !DILocalVariable(name: "__n", scope: !5898, file: !3, line: 30, type: !298)
!5902 = !DILocalVariable(name: "__recsize", scope: !5898, file: !3, line: 30, type: !5903)
!5903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!5904 = !DILocalVariable(name: "__kfifo", scope: !5898, file: !3, line: 30, type: !4261)
!5905 = !DILocation(line: 30, column: 10, scope: !5862)
!5906 = !DILocation(line: 31, column: 8, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 31, column: 8)
!5908 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 30, column: 42)
!5909 = !DILocation(line: 31, column: 8, scope: !5908)
!5910 = !DILocation(line: 32, column: 12, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 32, column: 9)
!5912 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 31, column: 29)
!5913 = !DILocation(line: 32, column: 21, scope: !5911)
!5914 = !DILocation(line: 32, column: 9, scope: !5912)
!5915 = !DILocation(line: 33, column: 6, scope: !5911)
!5916 = !DILocation(line: 33, column: 6, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 33, column: 6)
!5918 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 33, column: 6)
!5919 = !DILocation(line: 33, column: 6, scope: !5918)
!5920 = !DILocation(line: 33, column: 6, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 33, column: 6)
!5922 = !DILocation(line: 34, column: 25, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 34, column: 9)
!5924 = !DILocation(line: 34, column: 30, scope: !5923)
!5925 = !DILocation(line: 34, column: 9, scope: !5923)
!5926 = !DILocation(line: 34, column: 39, scope: !5923)
!5927 = !DILocation(line: 35, column: 30, scope: !5923)
!5928 = !DILocation(line: 35, column: 35, scope: !5923)
!5929 = !DILocation(line: 35, column: 10, scope: !5923)
!5930 = !DILocation(line: 34, column: 9, scope: !5912)
!5931 = !DILocation(line: 36, column: 6, scope: !5923)
!5932 = !DILocation(line: 36, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 36, column: 6)
!5934 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 36, column: 6)
!5935 = !DILocation(line: 36, column: 6, scope: !5934)
!5936 = !DILocation(line: 36, column: 6, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 36, column: 6)
!5938 = !DILocation(line: 38, column: 9, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 38, column: 9)
!5940 = !DILocation(line: 38, column: 14, scope: !5939)
!5941 = !DILocation(line: 38, column: 22, scope: !5939)
!5942 = !DILocation(line: 38, column: 28, scope: !5939)
!5943 = !DILocation(line: 38, column: 34, scope: !5939)
!5944 = !DILocation(line: 38, column: 40, scope: !5939)
!5945 = !DILocation(line: 38, column: 9, scope: !5912)
!5946 = !DILocation(line: 39, column: 6, scope: !5939)
!5947 = !DILocation(line: 39, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 39, column: 6)
!5949 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 39, column: 6)
!5950 = !DILocation(line: 39, column: 6, scope: !5949)
!5951 = !DILocation(line: 39, column: 6, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 39, column: 6)
!5953 = !DILocation(line: 40, column: 4, scope: !5912)
!5954 = !DILocalVariable(name: "__mptr", scope: !5955, file: !3, line: 41, type: !164)
!5955 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 41, column: 4)
!5956 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 41, column: 4)
!5957 = !DILocation(line: 41, column: 4, scope: !5955)
!5958 = !DILocation(line: 41, column: 4, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !3, line: 41, column: 4)
!5960 = !DILocation(line: 41, column: 4, scope: !5956)
!5961 = !DILocation(line: 41, column: 4, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 41, column: 4)
!5963 = !DILocation(line: 42, column: 9, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 42, column: 9)
!5965 = !DILocation(line: 42, column: 14, scope: !5964)
!5966 = !DILocation(line: 43, column: 9, scope: !5964)
!5967 = !DILocation(line: 43, column: 18, scope: !5964)
!5968 = !DILocation(line: 42, column: 32, scope: !5964)
!5969 = !DILocation(line: 43, column: 28, scope: !5964)
!5970 = !DILocation(line: 43, column: 32, scope: !5964)
!5971 = !DILocation(line: 43, column: 41, scope: !5964)
!5972 = !DILocation(line: 42, column: 9, scope: !5962)
!5973 = !DILocation(line: 44, column: 6, scope: !5964)
!5974 = !DILocation(line: 44, column: 15, scope: !5964)
!5975 = !DILocation(line: 44, column: 22, scope: !5964)
!5976 = !DILocalVariable(name: "__mptr", scope: !5977, file: !3, line: 41, type: !164)
!5977 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 41, column: 4)
!5978 = !DILocation(line: 41, column: 4, scope: !5977)
!5979 = !DILocation(line: 41, column: 4, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 41, column: 4)
!5981 = distinct !{!5981, !5960, !5982}
!5982 = !DILocation(line: 44, column: 29, scope: !5956)
!5983 = !DILocation(line: 45, column: 19, scope: !5908)
!5984 = !DILocation(line: 45, column: 4, scope: !5908)
!5985 = !DILocation(line: 46, column: 4, scope: !5908)
!5986 = !DILocation(line: 46, column: 9, scope: !5908)
!5987 = !DILocation(line: 46, column: 19, scope: !5908)
!5988 = distinct !{!5988, !5896, !5989}
!5989 = !DILocation(line: 47, column: 3, scope: !5862)
!5990 = !DILocation(line: 48, column: 3, scope: !5862)
!5991 = !DILocation(line: 50, column: 3, scope: !5862)
!5992 = !DILocation(line: 50, column: 3, scope: !5878)
!5993 = !DILocation(line: 50, column: 3, scope: !5877)
!5994 = !DILocation(line: 50, column: 3, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 50, column: 3)
!5996 = !{i32 -2146832262}
!5997 = !DILocation(line: 50, column: 3, scope: !5876)
!5998 = !{i32 -2141863323}
!5999 = !DILocation(line: 52, column: 7, scope: !5861)
!6000 = !DILocation(line: 52, column: 7, scope: !5862)
!6001 = !DILocation(line: 53, column: 4, scope: !5871)
!6002 = !DILocation(line: 54, column: 4, scope: !5871)
!6003 = !DILocalVariable(name: "__tmpq", scope: !6004, file: !3, line: 55, type: !4255)
!6004 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 55, column: 15)
!6005 = !DILocation(line: 55, column: 15, scope: !6004)
!6006 = !DILocation(line: 55, column: 15, scope: !5860)
!6007 = !DILocation(line: 55, column: 14, scope: !5861)
!6008 = !DILocation(line: 56, column: 4, scope: !5860)
!6009 = !DILocation(line: 56, column: 4, scope: !5859)
!6010 = !DILocation(line: 56, column: 4, scope: !5858)
!6011 = !DILocation(line: 56, column: 4, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 56, column: 4)
!6013 = !DILocation(line: 56, column: 4, scope: !5857)
!6014 = !{i32 -2141861494}
!6015 = !DILocation(line: 58, column: 3, scope: !5862)
!6016 = distinct !{!6016, !5894, !6017}
!6017 = !DILocation(line: 59, column: 2, scope: !4225)
!6018 = !DILocation(line: 61, column: 2, scope: !4225)
!6019 = distinct !DISubprogram(name: "IS_ERR", scope: !6020, file: !6020, line: 34, type: !6021, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6020 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6021 = !DISubroutineType(types: !6022)
!6022 = !{!456, !2080}
!6023 = !DILocalVariable(name: "ptr", arg: 1, scope: !6019, file: !6020, line: 34, type: !2080)
!6024 = !DILocation(line: 34, column: 60, scope: !6019)
!6025 = !DILocation(line: 36, column: 9, scope: !6019)
!6026 = !DILocation(line: 36, column: 2, scope: !6019)
!6027 = distinct !DISubprogram(name: "PTR_ERR", scope: !6020, file: !6020, line: 29, type: !6028, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!163, !2080}
!6030 = !DILocalVariable(name: "ptr", arg: 1, scope: !6027, file: !6020, line: 29, type: !2080)
!6031 = !DILocation(line: 29, column: 61, scope: !6027)
!6032 = !DILocation(line: 31, column: 16, scope: !6027)
!6033 = !DILocation(line: 31, column: 9, scope: !6027)
!6034 = !DILocation(line: 31, column: 2, scope: !6027)
!6035 = distinct !DISubprogram(name: "list_add_tail", scope: !6036, file: !6036, line: 98, type: !6037, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6036 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6037 = !DISubroutineType(types: !6038)
!6038 = !{null, !174, !174}
!6039 = !DILocalVariable(name: "new", arg: 1, scope: !6035, file: !6036, line: 98, type: !174)
!6040 = !DILocation(line: 98, column: 52, scope: !6035)
!6041 = !DILocalVariable(name: "head", arg: 2, scope: !6035, file: !6036, line: 98, type: !174)
!6042 = !DILocation(line: 98, column: 75, scope: !6035)
!6043 = !DILocation(line: 100, column: 13, scope: !6035)
!6044 = !DILocation(line: 100, column: 18, scope: !6035)
!6045 = !DILocation(line: 100, column: 24, scope: !6035)
!6046 = !DILocation(line: 100, column: 30, scope: !6035)
!6047 = !DILocation(line: 100, column: 2, scope: !6035)
!6048 = !DILocation(line: 101, column: 1, scope: !6035)
!6049 = distinct !DISubprogram(name: "ir_raw_event_free", scope: !3, file: !3, line: 650, type: !4165, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6050 = !DILocalVariable(name: "dev", arg: 1, scope: !6049, file: !3, line: 650, type: !185)
!6051 = !DILocation(line: 650, column: 39, scope: !6049)
!6052 = !DILocation(line: 652, column: 7, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 652, column: 6)
!6054 = !DILocation(line: 652, column: 6, scope: !6049)
!6055 = !DILocation(line: 653, column: 3, scope: !6053)
!6056 = !DILocation(line: 655, column: 8, scope: !6049)
!6057 = !DILocation(line: 655, column: 13, scope: !6049)
!6058 = !DILocation(line: 655, column: 2, scope: !6049)
!6059 = !DILocation(line: 656, column: 2, scope: !6049)
!6060 = !DILocation(line: 656, column: 7, scope: !6049)
!6061 = !DILocation(line: 656, column: 11, scope: !6049)
!6062 = !DILocation(line: 657, column: 1, scope: !6049)
!6063 = distinct !DISubprogram(name: "ir_raw_event_unregister", scope: !3, file: !3, line: 659, type: !4165, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6064 = !DILocalVariable(name: "dev", arg: 1, scope: !6063, file: !3, line: 659, type: !185)
!6065 = !DILocation(line: 659, column: 45, scope: !6063)
!6066 = !DILocalVariable(name: "handler", scope: !6063, file: !3, line: 661, type: !165)
!6067 = !DILocation(line: 661, column: 25, scope: !6063)
!6068 = !DILocation(line: 663, column: 7, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 663, column: 6)
!6070 = !DILocation(line: 663, column: 11, scope: !6069)
!6071 = !DILocation(line: 663, column: 15, scope: !6069)
!6072 = !DILocation(line: 663, column: 20, scope: !6069)
!6073 = !DILocation(line: 663, column: 6, scope: !6063)
!6074 = !DILocation(line: 664, column: 3, scope: !6069)
!6075 = !DILocation(line: 666, column: 15, scope: !6063)
!6076 = !DILocation(line: 666, column: 20, scope: !6063)
!6077 = !DILocation(line: 666, column: 25, scope: !6063)
!6078 = !DILocation(line: 666, column: 2, scope: !6063)
!6079 = !DILocation(line: 667, column: 2, scope: !6063)
!6080 = !DILocation(line: 669, column: 2, scope: !6063)
!6081 = !DILocation(line: 670, column: 12, scope: !6063)
!6082 = !DILocation(line: 670, column: 17, scope: !6063)
!6083 = !DILocation(line: 670, column: 22, scope: !6063)
!6084 = !DILocation(line: 670, column: 2, scope: !6063)
!6085 = !DILocalVariable(name: "__mptr", scope: !6086, file: !3, line: 671, type: !164)
!6086 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 671, column: 2)
!6087 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 671, column: 2)
!6088 = !DILocation(line: 671, column: 2, scope: !6086)
!6089 = !DILocation(line: 671, column: 2, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 671, column: 2)
!6091 = !DILocation(line: 671, column: 2, scope: !6087)
!6092 = !DILocation(line: 671, column: 2, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 671, column: 2)
!6094 = !DILocation(line: 672, column: 7, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 672, column: 7)
!6096 = !DILocation(line: 672, column: 16, scope: !6095)
!6097 = !DILocation(line: 672, column: 31, scope: !6095)
!6098 = !DILocation(line: 673, column: 8, scope: !6095)
!6099 = !DILocation(line: 673, column: 17, scope: !6095)
!6100 = !DILocation(line: 673, column: 29, scope: !6095)
!6101 = !DILocation(line: 673, column: 34, scope: !6095)
!6102 = !DILocation(line: 673, column: 27, scope: !6095)
!6103 = !DILocation(line: 672, column: 7, scope: !6093)
!6104 = !DILocation(line: 674, column: 4, scope: !6095)
!6105 = !DILocation(line: 674, column: 13, scope: !6095)
!6106 = !DILocation(line: 674, column: 28, scope: !6095)
!6107 = !DILocation(line: 673, column: 51, scope: !6095)
!6108 = !DILocalVariable(name: "__mptr", scope: !6109, file: !3, line: 671, type: !164)
!6109 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 671, column: 2)
!6110 = !DILocation(line: 671, column: 2, scope: !6109)
!6111 = !DILocation(line: 671, column: 2, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 671, column: 2)
!6113 = distinct !{!6113, !6091, !6114}
!6114 = !DILocation(line: 674, column: 31, scope: !6087)
!6115 = !DILocation(line: 676, column: 16, scope: !6063)
!6116 = !DILocation(line: 676, column: 2, scope: !6063)
!6117 = !DILocation(line: 678, column: 20, scope: !6063)
!6118 = !DILocation(line: 678, column: 2, scope: !6063)
!6119 = !DILocation(line: 685, column: 2, scope: !6063)
!6120 = !DILocation(line: 686, column: 1, scope: !6063)
!6121 = distinct !DISubprogram(name: "list_del", scope: !6036, file: !6036, line: 144, type: !6122, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6122 = !DISubroutineType(types: !6123)
!6123 = !{null, !174}
!6124 = !DILocalVariable(name: "entry", arg: 1, scope: !6121, file: !6036, line: 144, type: !174)
!6125 = !DILocation(line: 144, column: 47, scope: !6121)
!6126 = !DILocation(line: 146, column: 19, scope: !6121)
!6127 = !DILocation(line: 146, column: 2, scope: !6121)
!6128 = !DILocation(line: 147, column: 2, scope: !6121)
!6129 = !DILocation(line: 147, column: 9, scope: !6121)
!6130 = !DILocation(line: 147, column: 14, scope: !6121)
!6131 = !DILocation(line: 148, column: 2, scope: !6121)
!6132 = !DILocation(line: 148, column: 9, scope: !6121)
!6133 = !DILocation(line: 148, column: 14, scope: !6121)
!6134 = !DILocation(line: 149, column: 1, scope: !6121)
!6135 = distinct !DISubprogram(name: "lirc_bpf_free", scope: !167, file: !167, line: 347, type: !4165, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6136 = !DILocalVariable(name: "dev", arg: 1, scope: !6135, file: !167, line: 347, type: !185)
!6137 = !DILocation(line: 347, column: 49, scope: !6135)
!6138 = !DILocation(line: 347, column: 56, scope: !6135)
!6139 = distinct !DISubprogram(name: "ir_raw_handler_register", scope: !3, file: !3, line: 692, type: !6140, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6140 = !DISubroutineType(types: !6141)
!6141 = !{!184, !165}
!6142 = !DILocalVariable(name: "v", arg: 1, scope: !6143, file: !4593, line: 99, type: !4596)
!6143 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4593, file: !4593, line: 99, type: !4594, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6144 = !DILocation(line: 99, column: 79, scope: !6143, inlinedAt: !6145)
!6145 = distinct !DILocation(line: 1327, column: 2, scope: !6146, inlinedAt: !6150)
!6146 = distinct !DISubprogram(name: "atomic64_or", scope: !4602, file: !4602, line: 1325, type: !6147, scopeLine: 1326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !747, !6149}
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!6150 = distinct !DILocation(line: 696, column: 2, scope: !6139)
!6151 = !DILocalVariable(name: "size", arg: 2, scope: !6143, file: !4593, line: 99, type: !295)
!6152 = !DILocation(line: 99, column: 89, scope: !6143, inlinedAt: !6145)
!6153 = !DILocalVariable(name: "i", arg: 1, scope: !6146, file: !4602, line: 1325, type: !747)
!6154 = !DILocation(line: 1325, column: 17, scope: !6146, inlinedAt: !6150)
!6155 = !DILocalVariable(name: "v", arg: 2, scope: !6146, file: !4602, line: 1325, type: !6149)
!6156 = !DILocation(line: 1325, column: 32, scope: !6146, inlinedAt: !6150)
!6157 = !DILocalVariable(name: "ir_raw_handler", arg: 1, scope: !6139, file: !3, line: 692, type: !165)
!6158 = !DILocation(line: 692, column: 52, scope: !6139)
!6159 = !DILocation(line: 694, column: 2, scope: !6139)
!6160 = !DILocation(line: 695, column: 17, scope: !6139)
!6161 = !DILocation(line: 695, column: 33, scope: !6139)
!6162 = !DILocation(line: 695, column: 2, scope: !6139)
!6163 = !DILocation(line: 696, column: 14, scope: !6139)
!6164 = !DILocation(line: 696, column: 30, scope: !6139)
!6165 = !DILocation(line: 1327, column: 31, scope: !6146, inlinedAt: !6150)
!6166 = !DILocation(line: 101, column: 20, scope: !6143, inlinedAt: !6145)
!6167 = !DILocation(line: 101, column: 23, scope: !6143, inlinedAt: !6145)
!6168 = !DILocation(line: 101, column: 2, scope: !6143, inlinedAt: !6145)
!6169 = !DILocation(line: 102, column: 2, scope: !6143, inlinedAt: !6145)
!6170 = !DILocation(line: 1328, column: 19, scope: !6146, inlinedAt: !6150)
!6171 = !DILocation(line: 1328, column: 22, scope: !6146, inlinedAt: !6150)
!6172 = !DILocation(line: 1328, column: 2, scope: !6146, inlinedAt: !6150)
!6173 = !DILocation(line: 697, column: 2, scope: !6139)
!6174 = !DILocation(line: 699, column: 2, scope: !6139)
!6175 = distinct !DISubprogram(name: "ir_raw_handler_unregister", scope: !3, file: !3, line: 703, type: !6176, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6176 = !DISubroutineType(types: !6177)
!6177 = !{null, !165}
!6178 = !DILocalVariable(name: "i", arg: 1, scope: !6179, file: !6180, line: 1759, type: !747)
!6179 = distinct !DISubprogram(name: "arch_atomic64_andnot", scope: !6180, file: !6180, line: 1759, type: !6147, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6180 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!6181 = !DILocation(line: 1759, column: 26, scope: !6179, inlinedAt: !6182)
!6182 = distinct !DILocation(line: 1279, column: 2, scope: !6183, inlinedAt: !6184)
!6183 = distinct !DISubprogram(name: "atomic64_andnot", scope: !4602, file: !4602, line: 1276, type: !6147, scopeLine: 1277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6184 = distinct !DILocation(line: 716, column: 2, scope: !6175)
!6185 = !DILocalVariable(name: "v", arg: 2, scope: !6179, file: !6180, line: 1759, type: !6149)
!6186 = !DILocation(line: 1759, column: 41, scope: !6179, inlinedAt: !6182)
!6187 = !DILocation(line: 99, column: 79, scope: !6143, inlinedAt: !6188)
!6188 = distinct !DILocation(line: 1278, column: 2, scope: !6183, inlinedAt: !6184)
!6189 = !DILocation(line: 99, column: 89, scope: !6143, inlinedAt: !6188)
!6190 = !DILocalVariable(name: "i", arg: 1, scope: !6183, file: !4602, line: 1276, type: !747)
!6191 = !DILocation(line: 1276, column: 21, scope: !6183, inlinedAt: !6184)
!6192 = !DILocalVariable(name: "v", arg: 2, scope: !6183, file: !4602, line: 1276, type: !6149)
!6193 = !DILocation(line: 1276, column: 36, scope: !6183, inlinedAt: !6184)
!6194 = !DILocalVariable(name: "ir_raw_handler", arg: 1, scope: !6175, file: !3, line: 703, type: !165)
!6195 = !DILocation(line: 703, column: 55, scope: !6175)
!6196 = !DILocalVariable(name: "raw", scope: !6175, file: !3, line: 705, type: !3816)
!6197 = !DILocation(line: 705, column: 28, scope: !6175)
!6198 = !DILocalVariable(name: "protocols", scope: !6175, file: !3, line: 706, type: !177)
!6199 = !DILocation(line: 706, column: 6, scope: !6175)
!6200 = !DILocation(line: 706, column: 18, scope: !6175)
!6201 = !DILocation(line: 706, column: 34, scope: !6175)
!6202 = !DILocation(line: 708, column: 2, scope: !6175)
!6203 = !DILocation(line: 709, column: 12, scope: !6175)
!6204 = !DILocation(line: 709, column: 28, scope: !6175)
!6205 = !DILocation(line: 709, column: 2, scope: !6175)
!6206 = !DILocalVariable(name: "__mptr", scope: !6207, file: !3, line: 710, type: !164)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 710, column: 2)
!6208 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 710, column: 2)
!6209 = !DILocation(line: 710, column: 2, scope: !6207)
!6210 = !DILocation(line: 710, column: 2, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 710, column: 2)
!6212 = !DILocation(line: 710, column: 2, scope: !6208)
!6213 = !DILocation(line: 710, column: 2, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 710, column: 2)
!6215 = !DILocation(line: 711, column: 7, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 711, column: 7)
!6217 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 710, column: 54)
!6218 = !DILocation(line: 711, column: 23, scope: !6216)
!6219 = !DILocation(line: 711, column: 38, scope: !6216)
!6220 = !DILocation(line: 712, column: 8, scope: !6216)
!6221 = !DILocation(line: 712, column: 13, scope: !6216)
!6222 = !DILocation(line: 712, column: 18, scope: !6216)
!6223 = !DILocation(line: 712, column: 38, scope: !6216)
!6224 = !DILocation(line: 712, column: 36, scope: !6216)
!6225 = !DILocation(line: 711, column: 7, scope: !6217)
!6226 = !DILocation(line: 713, column: 4, scope: !6216)
!6227 = !DILocation(line: 713, column: 20, scope: !6216)
!6228 = !DILocation(line: 713, column: 35, scope: !6216)
!6229 = !DILocation(line: 713, column: 40, scope: !6216)
!6230 = !DILocation(line: 714, column: 28, scope: !6217)
!6231 = !DILocation(line: 714, column: 33, scope: !6217)
!6232 = !DILocation(line: 714, column: 38, scope: !6217)
!6233 = !DILocation(line: 714, column: 3, scope: !6217)
!6234 = !DILocation(line: 715, column: 2, scope: !6217)
!6235 = !DILocalVariable(name: "__mptr", scope: !6236, file: !3, line: 710, type: !164)
!6236 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 710, column: 2)
!6237 = !DILocation(line: 710, column: 2, scope: !6236)
!6238 = !DILocation(line: 710, column: 2, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 710, column: 2)
!6240 = distinct !{!6240, !6212, !6241}
!6241 = !DILocation(line: 715, column: 2, scope: !6208)
!6242 = !DILocation(line: 716, column: 18, scope: !6175)
!6243 = !DILocation(line: 1278, column: 31, scope: !6183, inlinedAt: !6184)
!6244 = !DILocation(line: 101, column: 20, scope: !6143, inlinedAt: !6188)
!6245 = !DILocation(line: 101, column: 23, scope: !6143, inlinedAt: !6188)
!6246 = !DILocation(line: 101, column: 2, scope: !6143, inlinedAt: !6188)
!6247 = !DILocation(line: 102, column: 2, scope: !6143, inlinedAt: !6188)
!6248 = !DILocation(line: 1279, column: 23, scope: !6183, inlinedAt: !6184)
!6249 = !DILocation(line: 1279, column: 26, scope: !6183, inlinedAt: !6184)
!6250 = !DILocation(line: 1761, column: 21, scope: !6179, inlinedAt: !6182)
!6251 = !DILocation(line: 1761, column: 20, scope: !6179, inlinedAt: !6182)
!6252 = !DILocation(line: 1761, column: 24, scope: !6179, inlinedAt: !6182)
!6253 = !DILocation(line: 1761, column: 2, scope: !6179, inlinedAt: !6182)
!6254 = !DILocation(line: 717, column: 2, scope: !6175)
!6255 = !DILocation(line: 718, column: 1, scope: !6175)
!6256 = distinct !DISubprogram(name: "ir_raw_disable_protocols", scope: !3, file: !3, line: 293, type: !6257, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6257 = !DISubroutineType(types: !6258)
!6258 = !{null, !185, !177}
!6259 = !DILocalVariable(name: "dev", arg: 1, scope: !6256, file: !3, line: 293, type: !185)
!6260 = !DILocation(line: 293, column: 53, scope: !6256)
!6261 = !DILocalVariable(name: "protocols", arg: 2, scope: !6256, file: !3, line: 293, type: !177)
!6262 = !DILocation(line: 293, column: 62, scope: !6256)
!6263 = !DILocation(line: 295, column: 14, scope: !6256)
!6264 = !DILocation(line: 295, column: 19, scope: !6256)
!6265 = !DILocation(line: 295, column: 2, scope: !6256)
!6266 = !DILocation(line: 296, column: 29, scope: !6256)
!6267 = !DILocation(line: 296, column: 28, scope: !6256)
!6268 = !DILocation(line: 296, column: 2, scope: !6256)
!6269 = !DILocation(line: 296, column: 7, scope: !6256)
!6270 = !DILocation(line: 296, column: 25, scope: !6256)
!6271 = !DILocation(line: 297, column: 16, scope: !6256)
!6272 = !DILocation(line: 297, column: 21, scope: !6256)
!6273 = !DILocation(line: 297, column: 2, scope: !6256)
!6274 = !DILocation(line: 298, column: 1, scope: !6256)
!6275 = distinct !DISubprogram(name: "ktime_divns", scope: !1255, file: !1255, line: 148, type: !6276, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6276 = !DISubroutineType(types: !6277)
!6277 = !{!747, !4317, !747}
!6278 = !DILocalVariable(name: "kt", arg: 1, scope: !6275, file: !1255, line: 148, type: !4317)
!6279 = !DILocation(line: 148, column: 45, scope: !6275)
!6280 = !DILocalVariable(name: "div", arg: 2, scope: !6275, file: !1255, line: 148, type: !747)
!6281 = !DILocation(line: 148, column: 53, scope: !6275)
!6282 = !DILocalVariable(name: "__ret_warn_on", scope: !6283, file: !1255, line: 154, type: !184)
!6283 = distinct !DILexicalBlock(scope: !6275, file: !1255, line: 154, column: 2)
!6284 = !DILocation(line: 154, column: 2, scope: !6283)
!6285 = !DILocation(line: 154, column: 2, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6283, file: !1255, line: 154, column: 2)
!6287 = !DILocation(line: 154, column: 2, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6286, file: !1255, line: 154, column: 2)
!6289 = !DILocation(line: 154, column: 2, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6288, file: !1255, line: 154, column: 2)
!6291 = !DILocation(line: 154, column: 2, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6288, file: !1255, line: 154, column: 2)
!6293 = !{i32 -2145175366, i32 -2145175337, i32 -2145175291, i32 -2145175233, i32 -2145175179, i32 -2145175125, i32 -2145175070, i32 -2145175039}
!6294 = !DILocation(line: 154, column: 2, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6288, file: !1255, line: 154, column: 2)
!6296 = !{i32 -2145174636, i32 -2145174629, i32 -2145174577, i32 -2145174546, i32 -2145174516}
!6297 = !DILocation(line: 154, column: 2, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6288, file: !1255, line: 154, column: 2)
!6299 = !DILocation(line: 155, column: 9, scope: !6275)
!6300 = !DILocation(line: 155, column: 14, scope: !6275)
!6301 = !DILocation(line: 155, column: 12, scope: !6275)
!6302 = !DILocation(line: 155, column: 2, scope: !6275)
!6303 = distinct !DISubprogram(name: "hlist_unhashed_lockless", scope: !6036, file: !6036, line: 819, type: !6304, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{!184, !6306}
!6306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6307, size: 64)
!6307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!6308 = !DILocalVariable(name: "h", arg: 1, scope: !6303, file: !6036, line: 819, type: !6306)
!6309 = !DILocation(line: 819, column: 68, scope: !6303)
!6310 = !DILocation(line: 821, column: 10, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6303, file: !6036, line: 821, column: 10)
!6312 = !DILocation(line: 821, column: 10, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6311, file: !6036, line: 821, column: 10)
!6314 = !DILocation(line: 821, column: 9, scope: !6303)
!6315 = !DILocation(line: 821, column: 2, scope: !6303)
!6316 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4333, file: !4333, line: 308, type: !4334, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6317 = !DILocalVariable(name: "m", arg: 1, scope: !6316, file: !4333, line: 308, type: !2780)
!6318 = !DILocation(line: 308, column: 66, scope: !6316)
!6319 = !DILocation(line: 310, column: 10, scope: !6316)
!6320 = !DILocation(line: 310, column: 12, scope: !6316)
!6321 = !DILocation(line: 310, column: 34, scope: !6316)
!6322 = !DILocation(line: 310, column: 39, scope: !6316)
!6323 = !DILocation(line: 310, column: 2, scope: !6316)
!6324 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6325, file: !6325, line: 20, type: !4603, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6325 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/lizy2001/genbc/linux")
!6326 = !DILocalVariable(name: "v", arg: 1, scope: !6324, file: !6325, line: 20, type: !4605)
!6327 = !DILocation(line: 20, column: 56, scope: !6324)
!6328 = !DILocation(line: 22, column: 9, scope: !6324)
!6329 = !DILocation(line: 22, column: 2, scope: !6324)
!6330 = distinct !DISubprogram(name: "kasan_check_read", scope: !6331, file: !6331, line: 34, type: !6332, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6331 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!456, !4596, !7}
!6334 = !DILocalVariable(name: "p", arg: 1, scope: !6330, file: !6331, line: 34, type: !4596)
!6335 = !DILocation(line: 34, column: 58, scope: !6330)
!6336 = !DILocalVariable(name: "size", arg: 2, scope: !6330, file: !6331, line: 34, type: !7)
!6337 = !DILocation(line: 34, column: 74, scope: !6330)
!6338 = !DILocation(line: 36, column: 2, scope: !6330)
!6339 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6340, file: !6340, line: 178, type: !6341, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6340 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6341 = !DISubroutineType(types: !6342)
!6342 = !{null, !4596, !295, !184}
!6343 = !DILocalVariable(name: "ptr", arg: 1, scope: !6339, file: !6340, line: 178, type: !4596)
!6344 = !DILocation(line: 178, column: 60, scope: !6339)
!6345 = !DILocalVariable(name: "size", arg: 2, scope: !6339, file: !6340, line: 178, type: !295)
!6346 = !DILocation(line: 178, column: 72, scope: !6339)
!6347 = !DILocalVariable(name: "type", arg: 3, scope: !6339, file: !6340, line: 179, type: !184)
!6348 = !DILocation(line: 179, column: 15, scope: !6339)
!6349 = !DILocation(line: 179, column: 23, scope: !6339)
!6350 = distinct !DISubprogram(name: "get_order", scope: !6351, file: !6351, line: 29, type: !6352, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6351 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!184, !298}
!6354 = !DILocalVariable(name: "x", arg: 1, scope: !6355, file: !6356, line: 366, type: !178)
!6355 = distinct !DISubprogram(name: "fls64", scope: !6356, file: !6356, line: 366, type: !6357, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6356 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!184, !178}
!6359 = !DILocation(line: 366, column: 40, scope: !6355, inlinedAt: !6360)
!6360 = distinct !DILocation(line: 46, column: 9, scope: !6350)
!6361 = !DILocalVariable(name: "bitpos", scope: !6355, file: !6356, line: 368, type: !184)
!6362 = !DILocation(line: 368, column: 6, scope: !6355, inlinedAt: !6360)
!6363 = !DILocalVariable(name: "size", arg: 1, scope: !6350, file: !6351, line: 29, type: !298)
!6364 = !DILocation(line: 29, column: 63, scope: !6350)
!6365 = !DILocation(line: 31, column: 27, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6350, file: !6351, line: 31, column: 6)
!6367 = !DILocation(line: 31, column: 6, scope: !6366)
!6368 = !DILocation(line: 31, column: 6, scope: !6350)
!6369 = !DILocation(line: 32, column: 8, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6371, file: !6351, line: 32, column: 7)
!6371 = distinct !DILexicalBlock(scope: !6366, file: !6351, line: 31, column: 34)
!6372 = !DILocation(line: 32, column: 7, scope: !6371)
!6373 = !DILocation(line: 33, column: 4, scope: !6370)
!6374 = !DILocation(line: 35, column: 7, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6371, file: !6351, line: 35, column: 7)
!6376 = !DILocation(line: 35, column: 12, scope: !6375)
!6377 = !DILocation(line: 35, column: 7, scope: !6371)
!6378 = !DILocation(line: 36, column: 4, scope: !6375)
!6379 = !DILocation(line: 38, column: 10, scope: !6371)
!6380 = !DILocation(line: 38, column: 28, scope: !6371)
!6381 = !DILocation(line: 38, column: 41, scope: !6371)
!6382 = !DILocation(line: 38, column: 3, scope: !6371)
!6383 = !DILocation(line: 41, column: 6, scope: !6350)
!6384 = !DILocation(line: 42, column: 7, scope: !6350)
!6385 = !DILocation(line: 46, column: 15, scope: !6350)
!6386 = !DILocation(line: 374, column: 2, scope: !6355, inlinedAt: !6360)
!6387 = !DILocation(line: 376, column: 14, scope: !6355, inlinedAt: !6360)
!6388 = !{i32 358813}
!6389 = !DILocation(line: 377, column: 9, scope: !6355, inlinedAt: !6360)
!6390 = !DILocation(line: 377, column: 16, scope: !6355, inlinedAt: !6360)
!6391 = !DILocation(line: 46, column: 2, scope: !6350)
!6392 = !DILocation(line: 48, column: 1, scope: !6350)
!6393 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6394, file: !6394, line: 30, type: !6395, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6394 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6395 = !DISubroutineType(types: !6396)
!6396 = !{!184, !177}
!6397 = !DILocation(line: 366, column: 40, scope: !6355, inlinedAt: !6398)
!6398 = distinct !DILocation(line: 32, column: 9, scope: !6393)
!6399 = !DILocation(line: 368, column: 6, scope: !6355, inlinedAt: !6398)
!6400 = !DILocalVariable(name: "n", arg: 1, scope: !6393, file: !6394, line: 30, type: !177)
!6401 = !DILocation(line: 30, column: 21, scope: !6393)
!6402 = !DILocation(line: 32, column: 15, scope: !6393)
!6403 = !DILocation(line: 374, column: 2, scope: !6355, inlinedAt: !6398)
!6404 = !DILocation(line: 376, column: 14, scope: !6355, inlinedAt: !6398)
!6405 = !DILocation(line: 377, column: 9, scope: !6355, inlinedAt: !6398)
!6406 = !DILocation(line: 377, column: 16, scope: !6355, inlinedAt: !6398)
!6407 = !DILocation(line: 32, column: 18, scope: !6393)
!6408 = !DILocation(line: 32, column: 2, scope: !6393)
!6409 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6410, file: !6410, line: 137, type: !6411, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6410 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6411 = !DISubroutineType(types: !6412)
!6412 = !{!164, !905, !2080, !295, !713}
!6413 = !DILocalVariable(name: "s", arg: 1, scope: !6409, file: !6410, line: 137, type: !905)
!6414 = !DILocation(line: 137, column: 54, scope: !6409)
!6415 = !DILocalVariable(name: "object", arg: 2, scope: !6409, file: !6410, line: 137, type: !2080)
!6416 = !DILocation(line: 137, column: 69, scope: !6409)
!6417 = !DILocalVariable(name: "size", arg: 3, scope: !6409, file: !6410, line: 138, type: !295)
!6418 = !DILocation(line: 138, column: 12, scope: !6409)
!6419 = !DILocalVariable(name: "flags", arg: 4, scope: !6409, file: !6410, line: 138, type: !713)
!6420 = !DILocation(line: 138, column: 24, scope: !6409)
!6421 = !DILocation(line: 140, column: 17, scope: !6409)
!6422 = !DILocation(line: 140, column: 2, scope: !6409)
!6423 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6424, file: !6424, line: 666, type: !6425, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6424 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!298}
!6427 = !DILocalVariable(name: "f", scope: !6423, file: !6424, line: 668, type: !298)
!6428 = !DILocation(line: 668, column: 16, scope: !6423)
!6429 = !DILocation(line: 670, column: 6, scope: !6423)
!6430 = !DILocation(line: 670, column: 4, scope: !6423)
!6431 = !DILocation(line: 671, column: 2, scope: !6423)
!6432 = !DILocation(line: 672, column: 9, scope: !6423)
!6433 = !DILocation(line: 672, column: 2, scope: !6423)
!6434 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6424, file: !6424, line: 646, type: !6425, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6435 = !DILocalVariable(name: "__ret", scope: !6436, file: !6424, line: 648, type: !298)
!6436 = distinct !DILexicalBlock(scope: !6434, file: !6424, line: 648, column: 9)
!6437 = !DILocation(line: 648, column: 9, scope: !6436)
!6438 = !DILocalVariable(name: "__edi", scope: !6436, file: !6424, line: 648, type: !298)
!6439 = !DILocalVariable(name: "__esi", scope: !6436, file: !6424, line: 648, type: !298)
!6440 = !DILocalVariable(name: "__edx", scope: !6436, file: !6424, line: 648, type: !298)
!6441 = !DILocalVariable(name: "__ecx", scope: !6436, file: !6424, line: 648, type: !298)
!6442 = !DILocalVariable(name: "__eax", scope: !6436, file: !6424, line: 648, type: !298)
!6443 = !DILocation(line: 648, column: 9, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6445, file: !6424, line: 648, column: 9)
!6445 = distinct !DILexicalBlock(scope: !6436, file: !6424, line: 648, column: 9)
!6446 = !{i32 -2145780062, i32 -2145777747, i32 -2145777513, i32 -2145777462, i32 -2145777434, i32 -2145777409, i32 -2145777725, i32 -2145777712, i32 -2145777274, i32 -2145777155, i32 -2145777620, i32 -2145777593, i32 -2145777565, i32 -2145777535}
!6447 = !DILocalVariable(name: "__mask", scope: !6448, file: !6424, line: 648, type: !298)
!6448 = distinct !DILexicalBlock(scope: !6444, file: !6424, line: 648, column: 9)
!6449 = !DILocation(line: 648, column: 9, scope: !6448)
!6450 = !DILocation(line: 648, column: 9, scope: !6445)
!6451 = !DILocation(line: 648, column: 2, scope: !6434)
!6452 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6424, file: !6424, line: 656, type: !1831, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6453 = !DILocalVariable(name: "__edi", scope: !6454, file: !6424, line: 658, type: !298)
!6454 = distinct !DILexicalBlock(scope: !6452, file: !6424, line: 658, column: 2)
!6455 = !DILocation(line: 658, column: 2, scope: !6454)
!6456 = !DILocalVariable(name: "__esi", scope: !6454, file: !6424, line: 658, type: !298)
!6457 = !DILocalVariable(name: "__edx", scope: !6454, file: !6424, line: 658, type: !298)
!6458 = !DILocalVariable(name: "__ecx", scope: !6454, file: !6424, line: 658, type: !298)
!6459 = !DILocalVariable(name: "__eax", scope: !6454, file: !6424, line: 658, type: !298)
!6460 = !{i32 -2145772968, i32 -2145772236, i32 -2145772002, i32 -2145771951, i32 -2145771923, i32 -2145771898, i32 -2145772214, i32 -2145772201, i32 -2145771763, i32 -2145771644, i32 -2145772109, i32 -2145772082, i32 -2145772054, i32 -2145772024}
!6461 = !DILocation(line: 659, column: 1, scope: !6452)
!6462 = distinct !DISubprogram(name: "_usecs_to_jiffies", scope: !4333, file: !4333, line: 376, type: !4334, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6463 = !DILocalVariable(name: "u", arg: 1, scope: !6462, file: !4333, line: 376, type: !2780)
!6464 = !DILocation(line: 376, column: 66, scope: !6462)
!6465 = !DILocation(line: 378, column: 10, scope: !6462)
!6466 = !DILocation(line: 378, column: 12, scope: !6462)
!6467 = !DILocation(line: 378, column: 34, scope: !6462)
!6468 = !DILocation(line: 378, column: 39, scope: !6462)
!6469 = !DILocation(line: 378, column: 2, scope: !6462)
!6470 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6424, file: !6424, line: 651, type: !6471, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6471 = !DISubroutineType(types: !6472)
!6472 = !{null, !298}
!6473 = !DILocalVariable(name: "f", arg: 1, scope: !6470, file: !6424, line: 651, type: !298)
!6474 = !DILocation(line: 651, column: 65, scope: !6470)
!6475 = !DILocalVariable(name: "__edi", scope: !6476, file: !6424, line: 653, type: !298)
!6476 = distinct !DILexicalBlock(scope: !6470, file: !6424, line: 653, column: 2)
!6477 = !DILocation(line: 653, column: 2, scope: !6476)
!6478 = !DILocalVariable(name: "__esi", scope: !6476, file: !6424, line: 653, type: !298)
!6479 = !DILocalVariable(name: "__edx", scope: !6476, file: !6424, line: 653, type: !298)
!6480 = !DILocalVariable(name: "__ecx", scope: !6476, file: !6424, line: 653, type: !298)
!6481 = !DILocalVariable(name: "__eax", scope: !6476, file: !6424, line: 653, type: !298)
!6482 = !{i32 -2145775595, i32 -2145774845, i32 -2145774611, i32 -2145774560, i32 -2145774532, i32 -2145774507, i32 -2145774823, i32 -2145774810, i32 -2145774372, i32 -2145774253, i32 -2145774718, i32 -2145774691, i32 -2145774663, i32 -2145774633}
!6483 = !DILocation(line: 654, column: 1, scope: !6470)
!6484 = distinct !DISubprogram(name: "__kfifo_uint_must_check_helper", scope: !3829, file: !3829, line: 163, type: !6485, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6485 = !DISubroutineType(types: !6486)
!6486 = !{!7, !7}
!6487 = !DILocalVariable(name: "val", arg: 1, scope: !6484, file: !3829, line: 163, type: !7)
!6488 = !DILocation(line: 163, column: 45, scope: !6484)
!6489 = !DILocation(line: 165, column: 9, scope: !6484)
!6490 = !DILocation(line: 165, column: 2, scope: !6484)
!6491 = distinct !DISubprogram(name: "is_timing_event", scope: !167, file: !167, line: 191, type: !6492, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!456, !144}
!6494 = !DILocalVariable(name: "ev", arg: 1, scope: !6491, file: !167, line: 191, type: !144)
!6495 = !DILocation(line: 191, column: 56, scope: !6491)
!6496 = !DILocation(line: 193, column: 13, scope: !6491)
!6497 = !DILocation(line: 193, column: 10, scope: !6491)
!6498 = !DILocation(line: 193, column: 28, scope: !6491)
!6499 = !DILocation(line: 193, column: 35, scope: !6491)
!6500 = !DILocation(line: 193, column: 31, scope: !6491)
!6501 = !DILocation(line: 0, scope: !6491)
!6502 = !DILocation(line: 193, column: 2, scope: !6491)
!6503 = distinct !DISubprogram(name: "is_transition", scope: !167, file: !167, line: 177, type: !6504, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!456, !143, !143}
!6506 = !DILocalVariable(name: "x", arg: 1, scope: !6503, file: !167, line: 177, type: !143)
!6507 = !DILocation(line: 177, column: 55, scope: !6503)
!6508 = !DILocalVariable(name: "y", arg: 2, scope: !6503, file: !167, line: 177, type: !143)
!6509 = !DILocation(line: 177, column: 79, scope: !6503)
!6510 = !DILocation(line: 179, column: 9, scope: !6503)
!6511 = !DILocation(line: 179, column: 12, scope: !6503)
!6512 = !DILocation(line: 179, column: 21, scope: !6503)
!6513 = !DILocation(line: 179, column: 24, scope: !6503)
!6514 = !DILocation(line: 179, column: 18, scope: !6503)
!6515 = !DILocation(line: 179, column: 2, scope: !6503)
!6516 = distinct !DISubprogram(name: "lirc_raw_event", scope: !167, file: !167, line: 332, type: !6517, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !185, !144}
!6519 = !DILocalVariable(name: "dev", arg: 1, scope: !6516, file: !167, line: 332, type: !185)
!6520 = !DILocation(line: 332, column: 50, scope: !6516)
!6521 = !DILocalVariable(name: "ev", arg: 2, scope: !6516, file: !167, line: 333, type: !144)
!6522 = !DILocation(line: 333, column: 27, scope: !6516)
!6523 = !DILocation(line: 333, column: 33, scope: !6516)
!6524 = distinct !DISubprogram(name: "__list_add", scope: !6036, file: !6036, line: 63, type: !6525, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6525 = !DISubroutineType(types: !6526)
!6526 = !{null, !174, !174, !174}
!6527 = !DILocalVariable(name: "new", arg: 1, scope: !6524, file: !6036, line: 63, type: !174)
!6528 = !DILocation(line: 63, column: 49, scope: !6524)
!6529 = !DILocalVariable(name: "prev", arg: 2, scope: !6524, file: !6036, line: 64, type: !174)
!6530 = !DILocation(line: 64, column: 28, scope: !6524)
!6531 = !DILocalVariable(name: "next", arg: 3, scope: !6524, file: !6036, line: 65, type: !174)
!6532 = !DILocation(line: 65, column: 28, scope: !6524)
!6533 = !DILocation(line: 67, column: 24, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6524, file: !6036, line: 67, column: 6)
!6535 = !DILocation(line: 67, column: 29, scope: !6534)
!6536 = !DILocation(line: 67, column: 35, scope: !6534)
!6537 = !DILocation(line: 67, column: 7, scope: !6534)
!6538 = !DILocation(line: 67, column: 6, scope: !6524)
!6539 = !DILocation(line: 68, column: 3, scope: !6534)
!6540 = !DILocation(line: 70, column: 15, scope: !6524)
!6541 = !DILocation(line: 70, column: 2, scope: !6524)
!6542 = !DILocation(line: 70, column: 8, scope: !6524)
!6543 = !DILocation(line: 70, column: 13, scope: !6524)
!6544 = !DILocation(line: 71, column: 14, scope: !6524)
!6545 = !DILocation(line: 71, column: 2, scope: !6524)
!6546 = !DILocation(line: 71, column: 7, scope: !6524)
!6547 = !DILocation(line: 71, column: 12, scope: !6524)
!6548 = !DILocation(line: 72, column: 14, scope: !6524)
!6549 = !DILocation(line: 72, column: 2, scope: !6524)
!6550 = !DILocation(line: 72, column: 7, scope: !6524)
!6551 = !DILocation(line: 72, column: 12, scope: !6524)
!6552 = !DILocation(line: 73, column: 2, scope: !6524)
!6553 = !DILocation(line: 73, column: 2, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6524, file: !6036, line: 73, column: 2)
!6555 = !DILocation(line: 73, column: 2, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6554, file: !6036, line: 73, column: 2)
!6557 = !DILocation(line: 73, column: 2, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6554, file: !6036, line: 73, column: 2)
!6559 = !DILocation(line: 74, column: 1, scope: !6524)
!6560 = distinct !DISubprogram(name: "__list_add_valid", scope: !6036, file: !6036, line: 45, type: !6561, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6561 = !DISubroutineType(types: !6562)
!6562 = !{!456, !174, !174, !174}
!6563 = !DILocalVariable(name: "new", arg: 1, scope: !6560, file: !6036, line: 45, type: !174)
!6564 = !DILocation(line: 45, column: 55, scope: !6560)
!6565 = !DILocalVariable(name: "prev", arg: 2, scope: !6560, file: !6036, line: 46, type: !174)
!6566 = !DILocation(line: 46, column: 23, scope: !6560)
!6567 = !DILocalVariable(name: "next", arg: 3, scope: !6560, file: !6036, line: 47, type: !174)
!6568 = !DILocation(line: 47, column: 23, scope: !6560)
!6569 = !DILocation(line: 49, column: 2, scope: !6560)
!6570 = distinct !DISubprogram(name: "__list_del_entry", scope: !6036, file: !6036, line: 130, type: !6122, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6571 = !DILocalVariable(name: "entry", arg: 1, scope: !6570, file: !6036, line: 130, type: !174)
!6572 = !DILocation(line: 130, column: 55, scope: !6570)
!6573 = !DILocation(line: 132, column: 30, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6570, file: !6036, line: 132, column: 6)
!6575 = !DILocation(line: 132, column: 7, scope: !6574)
!6576 = !DILocation(line: 132, column: 6, scope: !6570)
!6577 = !DILocation(line: 133, column: 3, scope: !6574)
!6578 = !DILocation(line: 135, column: 13, scope: !6570)
!6579 = !DILocation(line: 135, column: 20, scope: !6570)
!6580 = !DILocation(line: 135, column: 26, scope: !6570)
!6581 = !DILocation(line: 135, column: 33, scope: !6570)
!6582 = !DILocation(line: 135, column: 2, scope: !6570)
!6583 = !DILocation(line: 136, column: 1, scope: !6570)
!6584 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6036, file: !6036, line: 51, type: !6585, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{!456, !174}
!6587 = !DILocalVariable(name: "entry", arg: 1, scope: !6584, file: !6036, line: 51, type: !174)
!6588 = !DILocation(line: 51, column: 61, scope: !6584)
!6589 = !DILocation(line: 53, column: 2, scope: !6584)
!6590 = distinct !DISubprogram(name: "__list_del", scope: !6036, file: !6036, line: 110, type: !6037, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6591 = !DILocalVariable(name: "prev", arg: 1, scope: !6590, file: !6036, line: 110, type: !174)
!6592 = !DILocation(line: 110, column: 50, scope: !6590)
!6593 = !DILocalVariable(name: "next", arg: 2, scope: !6590, file: !6036, line: 110, type: !174)
!6594 = !DILocation(line: 110, column: 75, scope: !6590)
!6595 = !DILocation(line: 112, column: 15, scope: !6590)
!6596 = !DILocation(line: 112, column: 2, scope: !6590)
!6597 = !DILocation(line: 112, column: 8, scope: !6590)
!6598 = !DILocation(line: 112, column: 13, scope: !6590)
!6599 = !DILocation(line: 113, column: 2, scope: !6590)
!6600 = !DILocation(line: 113, column: 2, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6590, file: !6036, line: 113, column: 2)
!6602 = !DILocation(line: 113, column: 2, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6601, file: !6036, line: 113, column: 2)
!6604 = !DILocation(line: 113, column: 2, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6601, file: !6036, line: 113, column: 2)
!6606 = !DILocation(line: 114, column: 1, scope: !6590)
!6607 = distinct !DISubprogram(name: "arch_atomic64_or", scope: !6325, file: !6325, line: 218, type: !6147, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6608 = !DILocalVariable(name: "i", arg: 1, scope: !6607, file: !6325, line: 218, type: !747)
!6609 = !DILocation(line: 218, column: 41, scope: !6607)
!6610 = !DILocalVariable(name: "v", arg: 2, scope: !6607, file: !6325, line: 218, type: !6149)
!6611 = !DILocation(line: 218, column: 56, scope: !6607)
!6612 = !DILocation(line: 221, column: 12, scope: !6607)
!6613 = !DILocation(line: 221, column: 15, scope: !6607)
!6614 = !DILocation(line: 222, column: 12, scope: !6607)
!6615 = !DILocation(line: 220, column: 2, scope: !6607)
!6616 = !{i32 -2146628014}
!6617 = !DILocation(line: 224, column: 1, scope: !6607)
!6618 = distinct !DISubprogram(name: "kasan_check_write", scope: !6331, file: !6331, line: 38, type: !6332, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6619 = !DILocalVariable(name: "p", arg: 1, scope: !6618, file: !6331, line: 38, type: !4596)
!6620 = !DILocation(line: 38, column: 59, scope: !6618)
!6621 = !DILocalVariable(name: "size", arg: 2, scope: !6618, file: !6331, line: 38, type: !7)
!6622 = !DILocation(line: 38, column: 75, scope: !6618)
!6623 = !DILocation(line: 40, column: 2, scope: !6618)
!6624 = distinct !DISubprogram(name: "arch_atomic64_and", scope: !6325, file: !6325, line: 200, type: !6147, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6625 = !DILocalVariable(name: "i", arg: 1, scope: !6624, file: !6325, line: 200, type: !747)
!6626 = !DILocation(line: 200, column: 42, scope: !6624)
!6627 = !DILocalVariable(name: "v", arg: 2, scope: !6624, file: !6325, line: 200, type: !6149)
!6628 = !DILocation(line: 200, column: 57, scope: !6624)
!6629 = !DILocation(line: 203, column: 12, scope: !6624)
!6630 = !DILocation(line: 203, column: 15, scope: !6624)
!6631 = !DILocation(line: 204, column: 12, scope: !6624)
!6632 = !DILocation(line: 202, column: 2, scope: !6624)
!6633 = !{i32 -2146628373}
!6634 = !DILocation(line: 206, column: 1, scope: !6624)
