; ModuleID = '../bcout/drivers/firewire/core-iso.llvm.bc'
source_filename = "drivers/firewire/core-iso.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.38, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.41 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i64, i64 }
%union.anon.41 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.37, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.8, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.8 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.42, %struct.list_head, %struct.list_head, %union.anon.43 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.44 }
%union.anon.44 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.45 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.45 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.14, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.15, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.16, %union.anon.20, %struct.key_restriction* }
%union.anon.14 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.15 = type { i64 }
%union.anon.16 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.17, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.17 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.20 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.36, i32, [12 x i8] }
%union.anon.36 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.37 = type { %struct.callback_head }
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
%struct.fw_iso_buffer = type { i32, %struct.page**, i32, i32 }
%struct.fw_card = type { %struct.fw_card_driver*, %struct.device*, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, %struct.fw_node*, %struct.fw_node*, %struct.fw_node*, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.fw_card_driver = type { i32 (%struct.fw_card*, i32*, i64)*, i32 (%struct.fw_card*, i32)*, i32 (%struct.fw_card*, i32, i32, i32)*, i32 (%struct.fw_card*, i32*, i64)*, void (%struct.fw_card*, %struct.fw_packet*)*, void (%struct.fw_card*, %struct.fw_packet*)*, i32 (%struct.fw_card*, %struct.fw_packet*)*, i32 (%struct.fw_card*, i32, i32)*, i32 (%struct.fw_card*, i32)*, void (%struct.fw_card*, i32, i32)*, %struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)*, void (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*, i32, i32, i32)*, i32 (%struct.fw_iso_context*, i64*)*, i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)*, void (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)* }
%struct.fw_packet = type { i32, i32, [4 x i32], i64, i8*, i64, i64, i8, i32, void (%struct.fw_packet*, %struct.fw_card*, i32)*, i32, %struct.list_head, i8* }
%struct.fw_iso_context = type { %struct.fw_card*, i32, i32, i32, i8, i64, %union.anon.64, i8* }
%union.anon.64 = type { void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* }
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.fw_node = type { i16, i8, i8, i8, i8, %struct.refcount_struct, %struct.list_head, i8*, [0 x %struct.fw_node*] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.nodemask_t = type { [1 x i64] }

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_buffer_alloc(%struct.fw_iso_buffer* %buffer, i32 %page_count) #0 !dbg !136 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %page_count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !2986, metadata !DIExpression()), !dbg !2987
  store i32 %page_count, i32* %page_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page_count.addr, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2990, metadata !DIExpression()), !dbg !2991
  %0 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !2992
  %page_count1 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %0, i32 0, i32 2, !dbg !2993
  store i32 0, i32* %page_count1, align 8, !dbg !2994
  %1 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !2995
  %page_count_mapped = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %1, i32 0, i32 3, !dbg !2996
  store i32 0, i32* %page_count_mapped, align 4, !dbg !2997
  %2 = load i32, i32* %page_count.addr, align 4, !dbg !2998
  %conv = sext i32 %2 to i64, !dbg !2998
  %call = call i8* @kmalloc_array(i64 %conv, i64 8, i32 3264) #8, !dbg !2999
  %3 = bitcast i8* %call to %struct.page**, !dbg !2999
  %4 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !3000
  %pages = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %4, i32 0, i32 1, !dbg !3001
  store %struct.page** %3, %struct.page*** %pages, align 8, !dbg !3002
  %5 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !3003
  %pages2 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %5, i32 0, i32 1, !dbg !3005
  %6 = load %struct.page**, %struct.page*** %pages2, align 8, !dbg !3005
  %cmp = icmp eq %struct.page** %6, null, !dbg !3006
  br i1 %cmp, label %if.then, label %if.end, !dbg !3007

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3008
  br label %return, !dbg !3008

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !3009
  br label %for.cond, !dbg !3011

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !3012
  %8 = load i32, i32* %page_count.addr, align 4, !dbg !3014
  %cmp4 = icmp slt i32 %7, %8, !dbg !3015
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3016

for.body:                                         ; preds = %for.cond
  %call6 = call %struct.page* @alloc_pages(i32 3524, i32 0) #8, !dbg !3017
  %9 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !3019
  %pages7 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %9, i32 0, i32 1, !dbg !3020
  %10 = load %struct.page**, %struct.page*** %pages7, align 8, !dbg !3020
  %11 = load i32, i32* %i, align 4, !dbg !3021
  %idxprom = sext i32 %11 to i64, !dbg !3019
  %arrayidx = getelementptr %struct.page*, %struct.page** %10, i64 %idxprom, !dbg !3019
  store %struct.page* %call6, %struct.page** %arrayidx, align 8, !dbg !3022
  %12 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !3023
  %pages8 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %12, i32 0, i32 1, !dbg !3025
  %13 = load %struct.page**, %struct.page*** %pages8, align 8, !dbg !3025
  %14 = load i32, i32* %i, align 4, !dbg !3026
  %idxprom9 = sext i32 %14 to i64, !dbg !3023
  %arrayidx10 = getelementptr %struct.page*, %struct.page** %13, i64 %idxprom9, !dbg !3023
  %15 = load %struct.page*, %struct.page** %arrayidx10, align 8, !dbg !3023
  %cmp11 = icmp eq %struct.page* %15, null, !dbg !3027
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3028

if.then13:                                        ; preds = %for.body
  br label %for.end, !dbg !3029

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !3030

for.inc:                                          ; preds = %if.end14
  %16 = load i32, i32* %i, align 4, !dbg !3031
  %inc = add i32 %16, 1, !dbg !3031
  store i32 %inc, i32* %i, align 4, !dbg !3031
  br label %for.cond, !dbg !3032, !llvm.loop !3033

for.end:                                          ; preds = %if.then13, %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !3035
  %18 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !3036
  %page_count15 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %18, i32 0, i32 2, !dbg !3037
  store i32 %17, i32* %page_count15, align 8, !dbg !3038
  %19 = load i32, i32* %i, align 4, !dbg !3039
  %20 = load i32, i32* %page_count.addr, align 4, !dbg !3041
  %cmp16 = icmp slt i32 %19, %20, !dbg !3042
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !3043

if.then18:                                        ; preds = %for.end
  %21 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !3044
  call void @fw_iso_buffer_destroy(%struct.fw_iso_buffer* %21, %struct.fw_card* null) #8, !dbg !3046
  store i32 -12, i32* %retval, align 4, !dbg !3047
  br label %return, !dbg !3047

if.end19:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !3048
  br label %return, !dbg !3048

return:                                           ; preds = %if.end19, %if.then18, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !3049
  ret i32 %22, !dbg !3049
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3050 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3053, metadata !DIExpression()), !dbg !3057
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3066, metadata !DIExpression()), !dbg !3067
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3068, metadata !DIExpression()), !dbg !3069
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3070, metadata !DIExpression()), !dbg !3071
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3072, metadata !DIExpression()), !dbg !3076
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3078, metadata !DIExpression()), !dbg !3082
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3084, metadata !DIExpression()), !dbg !3088
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3093, metadata !DIExpression()), !dbg !3094
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3095, metadata !DIExpression()), !dbg !3096
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3097, metadata !DIExpression()), !dbg !3098
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3099, metadata !DIExpression()), !dbg !3100
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3101, metadata !DIExpression()), !dbg !3102
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3103, metadata !DIExpression()), !dbg !3104
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3105, metadata !DIExpression()), !dbg !3106
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3107, metadata !DIExpression()), !dbg !3108
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3109, metadata !DIExpression()), !dbg !3110
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3111, metadata !DIExpression()), !dbg !3112
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3117, metadata !DIExpression()), !dbg !3120
  %0 = load i64, i64* %n.addr, align 8, !dbg !3120
  store i64 %0, i64* %__a, align 8, !dbg !3120
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3121, metadata !DIExpression()), !dbg !3120
  %1 = load i64, i64* %size.addr, align 8, !dbg !3120
  store i64 %1, i64* %__b, align 8, !dbg !3120
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3122, metadata !DIExpression()), !dbg !3120
  store i64* %bytes, i64** %__d, align 8, !dbg !3120
  %cmp = icmp eq i64* %__a, %__b, !dbg !3120
  %conv = zext i1 %cmp to i32, !dbg !3120
  %2 = load i64*, i64** %__d, align 8, !dbg !3120
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3120
  %conv2 = zext i1 %cmp1 to i32, !dbg !3120
  %3 = load i64, i64* %__a, align 8, !dbg !3120
  %4 = load i64, i64* %__b, align 8, !dbg !3120
  %5 = load i64*, i64** %__d, align 8, !dbg !3120
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3120
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3120
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3120
  store i64 %8, i64* %5, align 8, !dbg !3120
  %frombool = zext i1 %7 to i8, !dbg !3120
  store i8 %frombool, i8* %tmp, align 1, !dbg !3120
  %9 = load i8, i8* %tmp, align 1, !dbg !3120
  %tobool = trunc i8 %9 to i1, !dbg !3120
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !3124
  %lnot = xor i1 %call, true, !dbg !3124
  %lnot3 = xor i1 %lnot, true, !dbg !3124
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3124
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3124
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3124
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3125

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3126
  br label %return, !dbg !3126

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3127
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3128
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3129

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3130
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3131
  br i1 %13, label %if.then6, label %if.end8, !dbg !3132

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3133
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3134
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3135
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !3136
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3137

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3138
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3139
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3140

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3141
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3142
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3143
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !3144
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3102
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3145
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3146
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3147
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3148
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3149
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3150
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !3151
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3151
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3151
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3151
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !3151
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3152
  br label %kmalloc.exit, !dbg !3152

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3153
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3154
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3154
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3156

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3157
  br label %kmalloc_index.exit.i, !dbg !3157

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3158
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3160
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3161

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3162
  br label %kmalloc_index.exit.i, !dbg !3162

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3163
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3165
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3166

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3167
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3168
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3169

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3170
  br label %kmalloc_index.exit.i, !dbg !3170

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3171
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3173
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3174

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3175
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3176
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3177

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3178
  br label %kmalloc_index.exit.i, !dbg !3178

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3179
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3181
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3182

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3183
  br label %kmalloc_index.exit.i, !dbg !3183

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3184
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3186
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3187

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3188
  br label %kmalloc_index.exit.i, !dbg !3188

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3189
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3191
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3192

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3193
  br label %kmalloc_index.exit.i, !dbg !3193

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3194
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3196
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3197

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3198
  br label %kmalloc_index.exit.i, !dbg !3198

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3199
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3201
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3202

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3203
  br label %kmalloc_index.exit.i, !dbg !3203

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3204
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3206
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3207

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3211
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3212

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3213
  br label %kmalloc_index.exit.i, !dbg !3213

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3214
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3216
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3217

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3218
  br label %kmalloc_index.exit.i, !dbg !3218

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3219
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3221
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3222

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3223
  br label %kmalloc_index.exit.i, !dbg !3223

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3224
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3226
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3227

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3228
  br label %kmalloc_index.exit.i, !dbg !3228

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3229
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3231
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3232

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3233
  br label %kmalloc_index.exit.i, !dbg !3233

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3234
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3236
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3237

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3238
  br label %kmalloc_index.exit.i, !dbg !3238

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3239
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3241
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3242

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3243
  br label %kmalloc_index.exit.i, !dbg !3243

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3244
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3246
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3247

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3248
  br label %kmalloc_index.exit.i, !dbg !3248

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3249
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3251
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3252

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3253
  br label %kmalloc_index.exit.i, !dbg !3253

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3254
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3256
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3257

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3258
  br label %kmalloc_index.exit.i, !dbg !3258

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3259
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3261
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3262

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3263
  br label %kmalloc_index.exit.i, !dbg !3263

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3264
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3266
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3267

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3268
  br label %kmalloc_index.exit.i, !dbg !3268

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3269
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3271
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3272

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3273
  br label %kmalloc_index.exit.i, !dbg !3273

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3274
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3276
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3277

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3278
  br label %kmalloc_index.exit.i, !dbg !3278

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3279
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3281
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3282

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3283
  br label %kmalloc_index.exit.i, !dbg !3283

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3284
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3286
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3287

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3288
  br label %kmalloc_index.exit.i, !dbg !3288

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3289
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3291
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3292

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3293
  br label %kmalloc_index.exit.i, !dbg !3293

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3294
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3296
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3297

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3298
  br label %kmalloc_index.exit.i, !dbg !3298

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3299, !srcloc !3302
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 228) #7, !dbg !3303, !srcloc !3306
  unreachable, !dbg !3307

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3308
  store i32 %59, i32* %index.i, align 4, !dbg !3309
  %60 = load i32, i32* %index.i, align 4, !dbg !3310
  %tobool.i = icmp ne i32 %60, 0, !dbg !3310
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3312

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3313
  br label %kmalloc.exit, !dbg !3313

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3314
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3315
  %and.i.i = and i32 %62, 17, !dbg !3315
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3315
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3315
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3315
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3315
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3317

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3318
  br label %kmalloc_type.exit.i, !dbg !3318

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3319
  %and2.i.i = and i32 %63, 1, !dbg !3320
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3319
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3319
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3319
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3321
  br label %kmalloc_type.exit.i, !dbg !3321

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3322
  %idxprom.i = zext i32 %65 to i64, !dbg !3323
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3323
  %66 = load i32, i32* %index.i, align 4, !dbg !3324
  %idxprom6.i = zext i32 %66 to i64, !dbg !3323
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3323
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3323
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3325
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3326
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3327
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3328
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !3329
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3329
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3329
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3329
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3329
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3071
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3330
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3331
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3332
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3333
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !3334
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3335
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3336
  store i8* %76, i8** %retval.i, align 8, !dbg !3337
  br label %kmalloc.exit, !dbg !3337

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3338
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3339
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !3340
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3340
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3340
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3340
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3340
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3341
  br label %kmalloc.exit, !dbg !3341

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3342
  store i8* %79, i8** %retval, align 8, !dbg !3343
  br label %return, !dbg !3343

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3344
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3345
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !3346
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3346
  %maskedptr = and i64 %ptrint, 7, !dbg !3346
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3346
  call void @llvm.assume(i1 %maskcond), !dbg !3346
  store i8* %call9, i8** %retval, align 8, !dbg !3347
  br label %return, !dbg !3347

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3348
  ret i8* %82, !dbg !3348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages(i32 %gfp_mask, i32 %order) #0 !dbg !3349 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !3353, metadata !DIExpression()), !dbg !3354
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !3355, metadata !DIExpression()), !dbg !3356
  %call = call i32 @numa_node_id() #8, !dbg !3357
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !3358
  %1 = load i32, i32* %order.addr, align 4, !dbg !3359
  %call1 = call %struct.page* @alloc_pages_node(i32 %call, i32 %0, i32 %1) #8, !dbg !3360
  ret %struct.page* %call1, !dbg !3361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_iso_buffer_destroy(%struct.fw_iso_buffer* %buffer, %struct.fw_card* %card) #0 !dbg !3362 {
entry:
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %card.addr = alloca %struct.fw_card*, align 8
  %i = alloca i32, align 4
  %address = alloca i64, align 8
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !4286, metadata !DIExpression()), !dbg !4287
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4288, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata i64* %address, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i32 0, i32* %i, align 4, !dbg !4294
  br label %for.cond, !dbg !4296

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4297
  %1 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4299
  %page_count_mapped = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %1, i32 0, i32 3, !dbg !4300
  %2 = load i32, i32* %page_count_mapped, align 4, !dbg !4300
  %cmp = icmp slt i32 %0, %2, !dbg !4301
  br i1 %cmp, label %for.body, label %for.end, !dbg !4302

for.body:                                         ; preds = %for.cond
  %3 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4303
  %pages = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %3, i32 0, i32 1, !dbg !4303
  %4 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4303
  %5 = load i32, i32* %i, align 4, !dbg !4303
  %idxprom = sext i32 %5 to i64, !dbg !4303
  %arrayidx = getelementptr %struct.page*, %struct.page** %4, i64 %idxprom, !dbg !4303
  %6 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4303
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 1, !dbg !4303
  %8 = bitcast %union.anon* %7 to %struct.anon*, !dbg !4303
  %private = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 3, !dbg !4303
  %9 = load i64, i64* %private, align 8, !dbg !4303
  store i64 %9, i64* %address, align 8, !dbg !4305
  %10 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4306
  %device = getelementptr inbounds %struct.fw_card, %struct.fw_card* %10, i32 0, i32 1, !dbg !4306
  %11 = load %struct.device*, %struct.device** %device, align 8, !dbg !4306
  %12 = load i64, i64* %address, align 8, !dbg !4306
  %13 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4306
  %direction = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %13, i32 0, i32 0, !dbg !4306
  %14 = load i32, i32* %direction, align 8, !dbg !4306
  call void @dma_unmap_page_attrs(%struct.device* %11, i64 %12, i64 4096, i32 %14, i64 0) #8, !dbg !4306
  br label %for.inc, !dbg !4307

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !4308
  %inc = add i32 %15, 1, !dbg !4308
  store i32 %inc, i32* %i, align 4, !dbg !4308
  br label %for.cond, !dbg !4309, !llvm.loop !4310

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4312
  br label %for.cond1, !dbg !4314

for.cond1:                                        ; preds = %for.inc7, %for.end
  %16 = load i32, i32* %i, align 4, !dbg !4315
  %17 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4317
  %page_count = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %17, i32 0, i32 2, !dbg !4318
  %18 = load i32, i32* %page_count, align 8, !dbg !4318
  %cmp2 = icmp slt i32 %16, %18, !dbg !4319
  br i1 %cmp2, label %for.body3, label %for.end9, !dbg !4320

for.body3:                                        ; preds = %for.cond1
  %19 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4321
  %pages4 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %19, i32 0, i32 1, !dbg !4321
  %20 = load %struct.page**, %struct.page*** %pages4, align 8, !dbg !4321
  %21 = load i32, i32* %i, align 4, !dbg !4321
  %idxprom5 = sext i32 %21 to i64, !dbg !4321
  %arrayidx6 = getelementptr %struct.page*, %struct.page** %20, i64 %idxprom5, !dbg !4321
  %22 = load %struct.page*, %struct.page** %arrayidx6, align 8, !dbg !4321
  call void @__free_pages(%struct.page* %22, i32 0) #8, !dbg !4321
  br label %for.inc7, !dbg !4321

for.inc7:                                         ; preds = %for.body3
  %23 = load i32, i32* %i, align 4, !dbg !4322
  %inc8 = add i32 %23, 1, !dbg !4322
  store i32 %inc8, i32* %i, align 4, !dbg !4322
  br label %for.cond1, !dbg !4323, !llvm.loop !4324

for.end9:                                         ; preds = %for.cond1
  %24 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4326
  %pages10 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %24, i32 0, i32 1, !dbg !4327
  %25 = load %struct.page**, %struct.page*** %pages10, align 8, !dbg !4327
  %26 = bitcast %struct.page** %25 to i8*, !dbg !4326
  call void @kfree(i8* %26) #8, !dbg !4328
  %27 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4329
  %pages11 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %27, i32 0, i32 1, !dbg !4330
  store %struct.page** null, %struct.page*** %pages11, align 8, !dbg !4331
  %28 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4332
  %page_count12 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %28, i32 0, i32 2, !dbg !4333
  store i32 0, i32* %page_count12, align 8, !dbg !4334
  %29 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4335
  %page_count_mapped13 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %29, i32 0, i32 3, !dbg !4336
  store i32 0, i32* %page_count_mapped13, align 4, !dbg !4337
  ret void, !dbg !4338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_buffer_map_dma(%struct.fw_iso_buffer* %buffer, %struct.fw_card* %card, i32 %direction) #0 !dbg !4339 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %card.addr = alloca %struct.fw_card*, align 8
  %direction.addr = alloca i32, align 4
  %address = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata i64* %address, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4350, metadata !DIExpression()), !dbg !4351
  %0 = load i32, i32* %direction.addr, align 4, !dbg !4352
  %1 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4353
  %direction1 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %1, i32 0, i32 0, !dbg !4354
  store i32 %0, i32* %direction1, align 8, !dbg !4355
  store i32 0, i32* %i, align 4, !dbg !4356
  br label %for.cond, !dbg !4358

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4359
  %3 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4361
  %page_count = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %3, i32 0, i32 2, !dbg !4362
  %4 = load i32, i32* %page_count, align 8, !dbg !4362
  %cmp = icmp slt i32 %2, %4, !dbg !4363
  br i1 %cmp, label %for.body, label %for.end, !dbg !4364

for.body:                                         ; preds = %for.cond
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4365
  %device = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 1, !dbg !4365
  %6 = load %struct.device*, %struct.device** %device, align 8, !dbg !4365
  %7 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4365
  %pages = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %7, i32 0, i32 1, !dbg !4365
  %8 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4365
  %9 = load i32, i32* %i, align 4, !dbg !4365
  %idxprom = sext i32 %9 to i64, !dbg !4365
  %arrayidx = getelementptr %struct.page*, %struct.page** %8, i64 %idxprom, !dbg !4365
  %10 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4365
  %11 = load i32, i32* %direction.addr, align 4, !dbg !4365
  %call = call i64 @dma_map_page_attrs(%struct.device* %6, %struct.page* %10, i64 0, i64 4096, i32 %11, i64 0) #8, !dbg !4365
  store i64 %call, i64* %address, align 8, !dbg !4367
  %12 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4368
  %device2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 1, !dbg !4370
  %13 = load %struct.device*, %struct.device** %device2, align 8, !dbg !4370
  %14 = load i64, i64* %address, align 8, !dbg !4371
  %call3 = call i32 @dma_mapping_error(%struct.device* %13, i64 %14) #8, !dbg !4372
  %tobool = icmp ne i32 %call3, 0, !dbg !4372
  br i1 %tobool, label %if.then, label %if.end, !dbg !4373

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4374

if.end:                                           ; preds = %for.body
  %15 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4375
  %pages4 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %15, i32 0, i32 1, !dbg !4376
  %16 = load %struct.page**, %struct.page*** %pages4, align 8, !dbg !4376
  %17 = load i32, i32* %i, align 4, !dbg !4377
  %idxprom5 = sext i32 %17 to i64, !dbg !4375
  %arrayidx6 = getelementptr %struct.page*, %struct.page** %16, i64 %idxprom5, !dbg !4375
  %18 = load %struct.page*, %struct.page** %arrayidx6, align 8, !dbg !4375
  %19 = load i64, i64* %address, align 8, !dbg !4378
  call void @set_page_private(%struct.page* %18, i64 %19) #8, !dbg !4379
  br label %for.inc, !dbg !4380

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !dbg !4381
  %inc = add i32 %20, 1, !dbg !4381
  store i32 %inc, i32* %i, align 4, !dbg !4381
  br label %for.cond, !dbg !4382, !llvm.loop !4383

for.end:                                          ; preds = %if.then, %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !4385
  %22 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4386
  %page_count_mapped = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %22, i32 0, i32 3, !dbg !4387
  store i32 %21, i32* %page_count_mapped, align 4, !dbg !4388
  %23 = load i32, i32* %i, align 4, !dbg !4389
  %24 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4391
  %page_count7 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %24, i32 0, i32 2, !dbg !4392
  %25 = load i32, i32* %page_count7, align 8, !dbg !4392
  %cmp8 = icmp slt i32 %23, %25, !dbg !4393
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4394

if.then9:                                         ; preds = %for.end
  store i32 -12, i32* %retval, align 4, !dbg !4395
  br label %return, !dbg !4395

if.end10:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !4396
  br label %return, !dbg !4396

return:                                           ; preds = %if.end10, %if.then9
  %26 = load i32, i32* %retval, align 4, !dbg !4397
  ret i32 %26, !dbg !4397
}

; Function Attrs: noredzone
declare dso_local i64 @dma_map_page_attrs(%struct.device*, %struct.page*, i64, i64, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #0 !dbg !4398 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4406
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !4407
  call void @debug_dma_mapping_error(%struct.device* %0, i64 %1) #8, !dbg !4408
  %2 = load i64, i64* %dma_addr.addr, align 8, !dbg !4409
  %cmp = icmp eq i64 %2, -1, !dbg !4411
  br i1 %cmp, label %if.then, label %if.end, !dbg !4412

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4413
  br label %return, !dbg !4413

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4414
  br label %return, !dbg !4414

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4415
  ret i32 %3, !dbg !4415
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_page_private(%struct.page* %page, i64 %private) #0 !dbg !4416 {
entry:
  %page.addr = alloca %struct.page*, align 8
  %private.addr = alloca i64, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !4419, metadata !DIExpression()), !dbg !4420
  store i64 %private, i64* %private.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %private.addr, metadata !4421, metadata !DIExpression()), !dbg !4422
  %0 = load i64, i64* %private.addr, align 8, !dbg !4423
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !4424
  %2 = getelementptr inbounds %struct.page, %struct.page* %1, i32 0, i32 1, !dbg !4425
  %3 = bitcast %union.anon* %2 to %struct.anon*, !dbg !4425
  %private1 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 3, !dbg !4425
  store i64 %0, i64* %private1, align 8, !dbg !4426
  ret void, !dbg !4427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_buffer_init(%struct.fw_iso_buffer* %buffer, %struct.fw_card* %card, i32 %page_count, i32 %direction) #0 !dbg !4428 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %card.addr = alloca %struct.fw_card*, align 8
  %page_count.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !4431, metadata !DIExpression()), !dbg !4432
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  store i32 %page_count, i32* %page_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page_count.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4439, metadata !DIExpression()), !dbg !4440
  %0 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4441
  %1 = load i32, i32* %page_count.addr, align 4, !dbg !4442
  %call = call i32 @fw_iso_buffer_alloc(%struct.fw_iso_buffer* %0, i32 %1) #8, !dbg !4443
  store i32 %call, i32* %ret, align 4, !dbg !4444
  %2 = load i32, i32* %ret, align 4, !dbg !4445
  %cmp = icmp slt i32 %2, 0, !dbg !4447
  br i1 %cmp, label %if.then, label %if.end, !dbg !4448

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4449
  store i32 %3, i32* %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

if.end:                                           ; preds = %entry
  %4 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4451
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4452
  %6 = load i32, i32* %direction.addr, align 4, !dbg !4453
  %call1 = call i32 @fw_iso_buffer_map_dma(%struct.fw_iso_buffer* %4, %struct.fw_card* %5, i32 %6) #8, !dbg !4454
  store i32 %call1, i32* %ret, align 4, !dbg !4455
  %7 = load i32, i32* %ret, align 4, !dbg !4456
  %cmp2 = icmp slt i32 %7, 0, !dbg !4458
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4459

if.then3:                                         ; preds = %if.end
  %8 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4460
  %9 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4461
  call void @fw_iso_buffer_destroy(%struct.fw_iso_buffer* %8, %struct.fw_card* %9) #8, !dbg !4462
  br label %if.end4, !dbg !4462

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !4463
  store i32 %10, i32* %retval, align 4, !dbg !4464
  br label %return, !dbg !4464

return:                                           ; preds = %if.end4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4465
  ret i32 %11, !dbg !4465
}

; Function Attrs: noredzone
declare dso_local void @dma_unmap_page_attrs(%struct.device*, i64, i64, i32, i64) #2

; Function Attrs: noredzone
declare dso_local void @__free_pages(%struct.page*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @fw_iso_buffer_lookup(%struct.fw_iso_buffer* %buffer, i64 %completed) #0 !dbg !4466 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %completed.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %address = alloca i64, align 8
  %offset = alloca i64, align 8
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  store i64 %completed, i64* %completed.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %completed.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata i64* %address, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !4477, metadata !DIExpression()), !dbg !4478
  store i64 0, i64* %i, align 8, !dbg !4479
  br label %for.cond, !dbg !4481

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !4482
  %1 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4484
  %page_count = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %1, i32 0, i32 2, !dbg !4485
  %2 = load i32, i32* %page_count, align 8, !dbg !4485
  %conv = sext i32 %2 to i64, !dbg !4484
  %cmp = icmp ult i64 %0, %conv, !dbg !4486
  br i1 %cmp, label %for.body, label %for.end, !dbg !4487

for.body:                                         ; preds = %for.cond
  %3 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4488
  %pages = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %3, i32 0, i32 1, !dbg !4488
  %4 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4488
  %5 = load i64, i64* %i, align 8, !dbg !4488
  %arrayidx = getelementptr %struct.page*, %struct.page** %4, i64 %5, !dbg !4488
  %6 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4488
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 1, !dbg !4488
  %8 = bitcast %union.anon* %7 to %struct.anon*, !dbg !4488
  %private = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 3, !dbg !4488
  %9 = load i64, i64* %private, align 8, !dbg !4488
  store i64 %9, i64* %address, align 8, !dbg !4490
  %10 = load i64, i64* %completed.addr, align 8, !dbg !4491
  %11 = load i64, i64* %address, align 8, !dbg !4492
  %sub = sub i64 %10, %11, !dbg !4493
  store i64 %sub, i64* %offset, align 8, !dbg !4494
  %12 = load i64, i64* %offset, align 8, !dbg !4495
  %cmp2 = icmp sgt i64 %12, 0, !dbg !4497
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !4498

land.lhs.true:                                    ; preds = %for.body
  %13 = load i64, i64* %offset, align 8, !dbg !4499
  %cmp4 = icmp ule i64 %13, 4096, !dbg !4500
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4501

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, i64* %i, align 8, !dbg !4502
  %shl = shl i64 %14, 12, !dbg !4503
  %15 = load i64, i64* %offset, align 8, !dbg !4504
  %add = add i64 %shl, %15, !dbg !4505
  store i64 %add, i64* %retval, align 8, !dbg !4506
  br label %return, !dbg !4506

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4507

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8, !dbg !4508
  %inc = add i64 %16, 1, !dbg !4508
  store i64 %inc, i64* %i, align 8, !dbg !4508
  br label %for.cond, !dbg !4509, !llvm.loop !4510

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %retval, align 8, !dbg !4512
  br label %return, !dbg !4512

return:                                           ; preds = %for.end, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !4513
  ret i64 %17, !dbg !4513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fw_iso_context* @fw_iso_context_create(%struct.fw_card* %card, i32 %type, i32 %channel, i32 %speed, i64 %header_size, void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* %callback, i8* %callback_data) #0 !dbg !4514 {
entry:
  %retval = alloca %struct.fw_iso_context*, align 8
  %card.addr = alloca %struct.fw_card*, align 8
  %type.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %speed.addr = alloca i32, align 4
  %header_size.addr = alloca i64, align 8
  %callback.addr = alloca void (%struct.fw_iso_context*, i32, i64, i8*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %ctx = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  store i64 %header_size, i64* %header_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %header_size.addr, metadata !4525, metadata !DIExpression()), !dbg !4526
  store void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* %callback, void (%struct.fw_iso_context*, i32, i64, i8*, i8*)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.fw_iso_context*, i32, i64, i8*, i8*)** %callback.addr, metadata !4527, metadata !DIExpression()), !dbg !4528
  store i8* %callback_data, i8** %callback_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %callback_data.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx, metadata !4531, metadata !DIExpression()), !dbg !4532
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4533
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %0, i32 0, i32 0, !dbg !4534
  %1 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4534
  %allocate_iso_context = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %1, i32 0, i32 10, !dbg !4535
  %2 = load %struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)*, %struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)** %allocate_iso_context, align 8, !dbg !4535
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4536
  %4 = load i32, i32* %type.addr, align 4, !dbg !4537
  %5 = load i32, i32* %channel.addr, align 4, !dbg !4538
  %6 = load i64, i64* %header_size.addr, align 8, !dbg !4539
  %call = call %struct.fw_iso_context* %2(%struct.fw_card* %3, i32 %4, i32 %5, i64 %6) #8, !dbg !4533
  store %struct.fw_iso_context* %call, %struct.fw_iso_context** %ctx, align 8, !dbg !4540
  %7 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4541
  %8 = bitcast %struct.fw_iso_context* %7 to i8*, !dbg !4541
  %call1 = call zeroext i1 @IS_ERR(i8* %8) #8, !dbg !4543
  br i1 %call1, label %if.then, label %if.end, !dbg !4544

if.then:                                          ; preds = %entry
  %9 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4545
  store %struct.fw_iso_context* %9, %struct.fw_iso_context** %retval, align 8, !dbg !4546
  br label %return, !dbg !4546

if.end:                                           ; preds = %entry
  %10 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4547
  %11 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4548
  %card2 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %11, i32 0, i32 0, !dbg !4549
  store %struct.fw_card* %10, %struct.fw_card** %card2, align 8, !dbg !4550
  %12 = load i32, i32* %type.addr, align 4, !dbg !4551
  %13 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4552
  %type3 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %13, i32 0, i32 1, !dbg !4553
  store i32 %12, i32* %type3, align 8, !dbg !4554
  %14 = load i32, i32* %channel.addr, align 4, !dbg !4555
  %15 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4556
  %channel4 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %15, i32 0, i32 2, !dbg !4557
  store i32 %14, i32* %channel4, align 4, !dbg !4558
  %16 = load i32, i32* %speed.addr, align 4, !dbg !4559
  %17 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4560
  %speed5 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %17, i32 0, i32 3, !dbg !4561
  store i32 %16, i32* %speed5, align 8, !dbg !4562
  %18 = load i64, i64* %header_size.addr, align 8, !dbg !4563
  %19 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4564
  %header_size6 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %19, i32 0, i32 5, !dbg !4565
  store i64 %18, i64* %header_size6, align 8, !dbg !4566
  %20 = load void (%struct.fw_iso_context*, i32, i64, i8*, i8*)*, void (%struct.fw_iso_context*, i32, i64, i8*, i8*)** %callback.addr, align 8, !dbg !4567
  %21 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4568
  %callback7 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %21, i32 0, i32 6, !dbg !4569
  %sc = bitcast %union.anon.64* %callback7 to void (%struct.fw_iso_context*, i32, i64, i8*, i8*)**, !dbg !4570
  store void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* %20, void (%struct.fw_iso_context*, i32, i64, i8*, i8*)** %sc, align 8, !dbg !4571
  %22 = load i8*, i8** %callback_data.addr, align 8, !dbg !4572
  %23 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4573
  %callback_data8 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %23, i32 0, i32 7, !dbg !4574
  store i8* %22, i8** %callback_data8, align 8, !dbg !4575
  %24 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx, align 8, !dbg !4576
  store %struct.fw_iso_context* %24, %struct.fw_iso_context** %retval, align 8, !dbg !4577
  br label %return, !dbg !4577

return:                                           ; preds = %if.end, %if.then
  %25 = load %struct.fw_iso_context*, %struct.fw_iso_context** %retval, align 8, !dbg !4578
  ret %struct.fw_iso_context* %25, !dbg !4578
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4579 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4585
  %1 = ptrtoint i8* %0 to i64, !dbg !4585
  %2 = inttoptr i64 %1 to i8*, !dbg !4585
  %3 = ptrtoint i8* %2 to i64, !dbg !4585
  %cmp = icmp uge i64 %3, -4095, !dbg !4585
  %lnot = xor i1 %cmp, true, !dbg !4585
  %lnot1 = xor i1 %lnot, true, !dbg !4585
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4585
  %conv = sext i32 %lnot.ext to i64, !dbg !4585
  %tobool = icmp ne i64 %conv, 0, !dbg !4585
  ret i1 %tobool, !dbg !4586
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_iso_context_destroy(%struct.fw_iso_context* %ctx) #0 !dbg !4587 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4590
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4591
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4591
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4592
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4592
  %free_iso_context = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 11, !dbg !4593
  %3 = load void (%struct.fw_iso_context*)*, void (%struct.fw_iso_context*)** %free_iso_context, align 8, !dbg !4593
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4594
  call void %3(%struct.fw_iso_context* %4) #8, !dbg !4590
  ret void, !dbg !4595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_context_start(%struct.fw_iso_context* %ctx, i32 %cycle, i32 %sync, i32 %tags) #0 !dbg !4596 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  %cycle.addr = alloca i32, align 4
  %sync.addr = alloca i32, align 4
  %tags.addr = alloca i32, align 4
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  store i32 %cycle, i32* %cycle.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cycle.addr, metadata !4601, metadata !DIExpression()), !dbg !4602
  store i32 %sync, i32* %sync.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sync.addr, metadata !4603, metadata !DIExpression()), !dbg !4604
  store i32 %tags, i32* %tags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tags.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4607
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4608
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4608
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4609
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4609
  %start_iso = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 12, !dbg !4610
  %3 = load i32 (%struct.fw_iso_context*, i32, i32, i32)*, i32 (%struct.fw_iso_context*, i32, i32, i32)** %start_iso, align 8, !dbg !4610
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4611
  %5 = load i32, i32* %cycle.addr, align 4, !dbg !4612
  %6 = load i32, i32* %sync.addr, align 4, !dbg !4613
  %7 = load i32, i32* %tags.addr, align 4, !dbg !4614
  %call = call i32 %3(%struct.fw_iso_context* %4, i32 %5, i32 %6, i32 %7) #8, !dbg !4607
  ret i32 %call, !dbg !4615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_context_set_channels(%struct.fw_iso_context* %ctx, i64* %channels) #0 !dbg !4616 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  %channels.addr = alloca i64*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i64* %channels, i64** %channels.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %channels.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4621
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4622
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4622
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4623
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4623
  %set_iso_channels = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 13, !dbg !4624
  %3 = load i32 (%struct.fw_iso_context*, i64*)*, i32 (%struct.fw_iso_context*, i64*)** %set_iso_channels, align 8, !dbg !4624
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4625
  %5 = load i64*, i64** %channels.addr, align 8, !dbg !4626
  %call = call i32 %3(%struct.fw_iso_context* %4, i64* %5) #8, !dbg !4621
  ret i32 %call, !dbg !4627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_context_queue(%struct.fw_iso_context* %ctx, %struct.fw_iso_packet* %packet, %struct.fw_iso_buffer* %buffer, i64 %payload) #0 !dbg !4628 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  %packet.addr = alloca %struct.fw_iso_packet*, align 8
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %payload.addr = alloca i64, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  store %struct.fw_iso_packet* %packet, %struct.fw_iso_packet** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_packet** %packet.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  store i64 %payload, i64* %payload.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %payload.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4637
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4638
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4638
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4639
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4639
  %queue_iso = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 14, !dbg !4640
  %3 = load i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)*, i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)** %queue_iso, align 8, !dbg !4640
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4641
  %5 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %packet.addr, align 8, !dbg !4642
  %6 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %buffer.addr, align 8, !dbg !4643
  %7 = load i64, i64* %payload.addr, align 8, !dbg !4644
  %call = call i32 %3(%struct.fw_iso_context* %4, %struct.fw_iso_packet* %5, %struct.fw_iso_buffer* %6, i64 %7) #8, !dbg !4637
  ret i32 %call, !dbg !4645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_iso_context_queue_flush(%struct.fw_iso_context* %ctx) #0 !dbg !4646 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4649
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4650
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4650
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4651
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4651
  %flush_queue_iso = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 15, !dbg !4652
  %3 = load void (%struct.fw_iso_context*)*, void (%struct.fw_iso_context*)** %flush_queue_iso, align 8, !dbg !4652
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4653
  call void %3(%struct.fw_iso_context* %4) #8, !dbg !4649
  ret void, !dbg !4654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_context_flush_completions(%struct.fw_iso_context* %ctx) #0 !dbg !4655 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4658
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4659
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4659
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4660
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4660
  %flush_iso_completions = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 16, !dbg !4661
  %3 = load i32 (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)** %flush_iso_completions, align 8, !dbg !4661
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4662
  %call = call i32 %3(%struct.fw_iso_context* %4) #8, !dbg !4658
  ret i32 %call, !dbg !4663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_iso_context_stop(%struct.fw_iso_context* %ctx) #0 !dbg !4664 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  %0 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4667
  %card = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %0, i32 0, i32 0, !dbg !4668
  %1 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4668
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !4669
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4669
  %stop_iso = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 17, !dbg !4670
  %3 = load i32 (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)** %stop_iso, align 8, !dbg !4670
  %4 = load %struct.fw_iso_context*, %struct.fw_iso_context** %ctx.addr, align 8, !dbg !4671
  %call = call i32 %3(%struct.fw_iso_context* %4) #8, !dbg !4667
  ret i32 %call, !dbg !4672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_iso_resource_manage(%struct.fw_card* %card, i32 %generation, i64 %channels_mask, i32* %channel, i32* %bandwidth, i1 zeroext %allocate) #0 !dbg !4673 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !4676, metadata !DIExpression()), !dbg !4681
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4683, metadata !DIExpression()), !dbg !4685
  %card.addr = alloca %struct.fw_card*, align 8
  %generation.addr = alloca i32, align 4
  %channels_mask.addr = alloca i64, align 8
  %channel.addr = alloca i32*, align 8
  %bandwidth.addr = alloca i32*, align 8
  %allocate.addr = alloca i8, align 1
  %channels_hi = alloca i32, align 4
  %channels_lo = alloca i32, align 4
  %irm_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i64 %channels_mask, i64* %channels_mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %channels_mask.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  store i32* %channel, i32** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %channel.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  store i32* %bandwidth, i32** %bandwidth.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bandwidth.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  %frombool = zext i1 %allocate to i8
  store i8 %frombool, i8* %allocate.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %allocate.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata i32* %channels_hi, metadata !4699, metadata !DIExpression()), !dbg !4700
  %0 = load i64, i64* %channels_mask.addr, align 8, !dbg !4701
  %conv = trunc i64 %0 to i32, !dbg !4701
  store i32 %conv, i32* %channels_hi, align 4, !dbg !4700
  call void @llvm.dbg.declare(metadata i32* %channels_lo, metadata !4702, metadata !DIExpression()), !dbg !4703
  %1 = load i64, i64* %channels_mask.addr, align 8, !dbg !4704
  %shr = lshr i64 %1, 32, !dbg !4705
  %conv1 = trunc i64 %shr to i32, !dbg !4704
  store i32 %conv1, i32* %channels_lo, align 4, !dbg !4703
  call void @llvm.dbg.declare(metadata i32* %irm_id, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4708, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.declare(metadata i32* %c, metadata !4710, metadata !DIExpression()), !dbg !4711
  store i32 -22, i32* %c, align 4, !dbg !4711
  %2 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4712
  %lock = getelementptr inbounds %struct.fw_card, %struct.fw_card* %2, i32 0, i32 18, !dbg !4713
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !4714
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4717, !srcloc !4719
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4720
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4720
  %rlock.i = bitcast %union.anon.0* %4 to %struct.raw_spinlock*, !dbg !4720
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4722
  %irm_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 21, !dbg !4723
  %6 = load %struct.fw_node*, %struct.fw_node** %irm_node, align 8, !dbg !4723
  %node_id = getelementptr inbounds %struct.fw_node, %struct.fw_node* %6, i32 0, i32 0, !dbg !4724
  %7 = load i16, i16* %node_id, align 8, !dbg !4724
  %conv2 = zext i16 %7 to i32, !dbg !4722
  store i32 %conv2, i32* %irm_id, align 4, !dbg !4725
  %8 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4726
  %lock3 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 18, !dbg !4727
  store %struct.spinlock* %lock3, %struct.spinlock** %lock.addr.i46, align 8
  call void @arch_local_irq_enable() #10, !dbg !4728
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4731, !srcloc !4733
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !4734
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !4734
  %rlock.i47 = bitcast %union.anon.0* %10 to %struct.raw_spinlock*, !dbg !4734
  %11 = load i32, i32* %channels_hi, align 4, !dbg !4736
  %tobool = icmp ne i32 %11, 0, !dbg !4736
  br i1 %tobool, label %if.then, label %if.end, !dbg !4738

if.then:                                          ; preds = %entry
  %12 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4739
  %13 = load i32, i32* %irm_id, align 4, !dbg !4740
  %14 = load i32, i32* %generation.addr, align 4, !dbg !4741
  %15 = load i32, i32* %channels_hi, align 4, !dbg !4742
  %16 = load i8, i8* %allocate.addr, align 1, !dbg !4743
  %tobool4 = trunc i8 %16 to i1, !dbg !4743
  %call = call i32 @manage_channel(%struct.fw_card* %12, i32 %13, i32 %14, i32 %15, i64 281474708275748, i1 zeroext %tobool4) #8, !dbg !4744
  store i32 %call, i32* %c, align 4, !dbg !4745
  br label %if.end, !dbg !4746

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %channels_lo, align 4, !dbg !4747
  %tobool5 = icmp ne i32 %17, 0, !dbg !4747
  br i1 %tobool5, label %land.lhs.true, label %if.end14, !dbg !4749

land.lhs.true:                                    ; preds = %if.end
  %18 = load i32, i32* %c, align 4, !dbg !4750
  %cmp = icmp slt i32 %18, 0, !dbg !4751
  br i1 %cmp, label %if.then7, label %if.end14, !dbg !4752

if.then7:                                         ; preds = %land.lhs.true
  %19 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4753
  %20 = load i32, i32* %irm_id, align 4, !dbg !4755
  %21 = load i32, i32* %generation.addr, align 4, !dbg !4756
  %22 = load i32, i32* %channels_lo, align 4, !dbg !4757
  %23 = load i8, i8* %allocate.addr, align 1, !dbg !4758
  %tobool8 = trunc i8 %23 to i1, !dbg !4758
  %call9 = call i32 @manage_channel(%struct.fw_card* %19, i32 %20, i32 %21, i32 %22, i64 281474708275752, i1 zeroext %tobool8) #8, !dbg !4759
  store i32 %call9, i32* %c, align 4, !dbg !4760
  %24 = load i32, i32* %c, align 4, !dbg !4761
  %cmp10 = icmp sge i32 %24, 0, !dbg !4763
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4764

if.then12:                                        ; preds = %if.then7
  %25 = load i32, i32* %c, align 4, !dbg !4765
  %add = add i32 %25, 32, !dbg !4765
  store i32 %add, i32* %c, align 4, !dbg !4765
  br label %if.end13, !dbg !4766

if.end13:                                         ; preds = %if.then12, %if.then7
  br label %if.end14, !dbg !4767

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %if.end
  %26 = load i32, i32* %c, align 4, !dbg !4768
  %27 = load i32*, i32** %channel.addr, align 8, !dbg !4769
  store i32 %26, i32* %27, align 4, !dbg !4770
  %28 = load i8, i8* %allocate.addr, align 1, !dbg !4771
  %tobool15 = trunc i8 %28 to i1, !dbg !4771
  br i1 %tobool15, label %land.lhs.true17, label %if.end24, !dbg !4773

land.lhs.true17:                                  ; preds = %if.end14
  %29 = load i64, i64* %channels_mask.addr, align 8, !dbg !4774
  %cmp18 = icmp ne i64 %29, 0, !dbg !4775
  br i1 %cmp18, label %land.lhs.true20, label %if.end24, !dbg !4776

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %30 = load i32, i32* %c, align 4, !dbg !4777
  %cmp21 = icmp slt i32 %30, 0, !dbg !4778
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !4779

if.then23:                                        ; preds = %land.lhs.true20
  %31 = load i32*, i32** %bandwidth.addr, align 8, !dbg !4780
  store i32 0, i32* %31, align 4, !dbg !4781
  br label %if.end24, !dbg !4782

if.end24:                                         ; preds = %if.then23, %land.lhs.true20, %land.lhs.true17, %if.end14
  %32 = load i32*, i32** %bandwidth.addr, align 8, !dbg !4783
  %33 = load i32, i32* %32, align 4, !dbg !4785
  %cmp25 = icmp eq i32 %33, 0, !dbg !4786
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4787

if.then27:                                        ; preds = %if.end24
  br label %if.end45, !dbg !4788

if.end28:                                         ; preds = %if.end24
  %34 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4789
  %35 = load i32, i32* %irm_id, align 4, !dbg !4790
  %36 = load i32, i32* %generation.addr, align 4, !dbg !4791
  %37 = load i32*, i32** %bandwidth.addr, align 8, !dbg !4792
  %38 = load i32, i32* %37, align 4, !dbg !4793
  %39 = load i8, i8* %allocate.addr, align 1, !dbg !4794
  %tobool29 = trunc i8 %39 to i1, !dbg !4794
  %call30 = call i32 @manage_bandwidth(%struct.fw_card* %34, i32 %35, i32 %36, i32 %38, i1 zeroext %tobool29) #8, !dbg !4795
  store i32 %call30, i32* %ret, align 4, !dbg !4796
  %40 = load i32, i32* %ret, align 4, !dbg !4797
  %cmp31 = icmp slt i32 %40, 0, !dbg !4799
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4800

if.then33:                                        ; preds = %if.end28
  %41 = load i32*, i32** %bandwidth.addr, align 8, !dbg !4801
  store i32 0, i32* %41, align 4, !dbg !4802
  br label %if.end34, !dbg !4803

if.end34:                                         ; preds = %if.then33, %if.end28
  %42 = load i8, i8* %allocate.addr, align 1, !dbg !4804
  %tobool35 = trunc i8 %42 to i1, !dbg !4804
  br i1 %tobool35, label %land.lhs.true37, label %if.end45, !dbg !4806

land.lhs.true37:                                  ; preds = %if.end34
  %43 = load i32, i32* %ret, align 4, !dbg !4807
  %cmp38 = icmp slt i32 %43, 0, !dbg !4808
  br i1 %cmp38, label %if.then40, label %if.end45, !dbg !4809

if.then40:                                        ; preds = %land.lhs.true37
  %44 = load i32, i32* %c, align 4, !dbg !4810
  %cmp41 = icmp sge i32 %44, 0, !dbg !4813
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !4814

if.then43:                                        ; preds = %if.then40
  %45 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4815
  %46 = load i32, i32* %irm_id, align 4, !dbg !4816
  %47 = load i32, i32* %generation.addr, align 4, !dbg !4817
  %48 = load i32, i32* %c, align 4, !dbg !4818
  call void @deallocate_channel(%struct.fw_card* %45, i32 %46, i32 %47, i32 %48) #8, !dbg !4819
  br label %if.end44, !dbg !4819

if.end44:                                         ; preds = %if.then43, %if.then40
  %49 = load i32, i32* %ret, align 4, !dbg !4820
  %50 = load i32*, i32** %channel.addr, align 8, !dbg !4821
  store i32 %49, i32* %50, align 4, !dbg !4822
  br label %if.end45, !dbg !4823

if.end45:                                         ; preds = %if.then27, %if.end44, %land.lhs.true37, %if.end34
  ret void, !dbg !4824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @manage_channel(%struct.fw_card* %card, i32 %irm_id, i32 %generation, i32 %channels_mask, i64 %offset, i1 zeroext %allocate) #0 !dbg !4825 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.fw_card*, align 8
  %irm_id.addr = alloca i32, align 4
  %generation.addr = alloca i32, align 4
  %channels_mask.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %allocate.addr = alloca i8, align 1
  %bit = alloca i32, align 4
  %all = alloca i32, align 4
  %old = alloca i32, align 4
  %data = alloca [2 x i32], align 4
  %channel = alloca i32, align 4
  %ret = alloca i32, align 4
  %retry = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  store i32 %irm_id, i32* %irm_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irm_id.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store i32 %channels_mask, i32* %channels_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channels_mask.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  %frombool = zext i1 %allocate to i8
  store i8 %frombool, i8* %allocate.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %allocate.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !4840, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.declare(metadata i32* %all, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4844, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.declare(metadata [2 x i32]* %data, metadata !4846, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.declare(metadata i32* %channel, metadata !4849, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4851, metadata !DIExpression()), !dbg !4852
  store i32 -5, i32* %ret, align 4, !dbg !4852
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !4853, metadata !DIExpression()), !dbg !4854
  store i32 5, i32* %retry, align 4, !dbg !4854
  %0 = load i8, i8* %allocate.addr, align 1, !dbg !4855
  %tobool = trunc i8 %0 to i1, !dbg !4855
  %1 = zext i1 %tobool to i64, !dbg !4855
  %cond = select i1 %tobool, i32 -1, i32 0, !dbg !4855
  store i32 %cond, i32* %all, align 4, !dbg !4856
  store i32 %cond, i32* %old, align 4, !dbg !4857
  store i32 0, i32* %channel, align 4, !dbg !4858
  br label %for.cond, !dbg !4860

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %channel, align 4, !dbg !4861
  %cmp = icmp slt i32 %2, 32, !dbg !4863
  br i1 %cmp, label %for.body, label %for.end, !dbg !4864

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %channels_mask.addr, align 4, !dbg !4865
  %4 = load i32, i32* %channel, align 4, !dbg !4868
  %shl = shl i32 1, %4, !dbg !4869
  %and = and i32 %3, %shl, !dbg !4870
  %tobool1 = icmp ne i32 %and, 0, !dbg !4870
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4871

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4872

if.end:                                           ; preds = %for.body
  store i32 -16, i32* %ret, align 4, !dbg !4873
  %5 = load i32, i32* %channel, align 4, !dbg !4874
  %sub = sub i32 31, %5, !dbg !4874
  %shl2 = shl i32 1, %sub, !dbg !4874
  %6 = call i1 @llvm.is.constant.i32(i32 %shl2), !dbg !4874
  br i1 %6, label %cond.true, label %cond.false, !dbg !4874

cond.true:                                        ; preds = %if.end
  %7 = load i32, i32* %channel, align 4, !dbg !4874
  %sub3 = sub i32 31, %7, !dbg !4874
  %shl4 = shl i32 1, %sub3, !dbg !4874
  %and5 = and i32 %shl4, 255, !dbg !4874
  %shl6 = shl i32 %and5, 24, !dbg !4874
  %8 = load i32, i32* %channel, align 4, !dbg !4874
  %sub7 = sub i32 31, %8, !dbg !4874
  %shl8 = shl i32 1, %sub7, !dbg !4874
  %and9 = and i32 %shl8, 65280, !dbg !4874
  %shl10 = shl i32 %and9, 8, !dbg !4874
  %or = or i32 %shl6, %shl10, !dbg !4874
  %9 = load i32, i32* %channel, align 4, !dbg !4874
  %sub11 = sub i32 31, %9, !dbg !4874
  %shl12 = shl i32 1, %sub11, !dbg !4874
  %and13 = and i32 %shl12, 16711680, !dbg !4874
  %shr = lshr i32 %and13, 8, !dbg !4874
  %or14 = or i32 %or, %shr, !dbg !4874
  %10 = load i32, i32* %channel, align 4, !dbg !4874
  %sub15 = sub i32 31, %10, !dbg !4874
  %shl16 = shl i32 1, %sub15, !dbg !4874
  %and17 = and i32 %shl16, -16777216, !dbg !4874
  %shr18 = lshr i32 %and17, 24, !dbg !4874
  %or19 = or i32 %or14, %shr18, !dbg !4874
  br label %cond.end, !dbg !4874

cond.false:                                       ; preds = %if.end
  %11 = load i32, i32* %channel, align 4, !dbg !4874
  %sub20 = sub i32 31, %11, !dbg !4874
  %shl21 = shl i32 1, %sub20, !dbg !4874
  %call = call i32 @__fswab32(i32 %shl21) #9, !dbg !4874
  br label %cond.end, !dbg !4874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ %or19, %cond.true ], [ %call, %cond.false ], !dbg !4874
  store i32 %cond22, i32* %bit, align 4, !dbg !4875
  %12 = load i32, i32* %old, align 4, !dbg !4876
  %13 = load i32, i32* %bit, align 4, !dbg !4878
  %and23 = and i32 %12, %13, !dbg !4879
  %14 = load i32, i32* %all, align 4, !dbg !4880
  %15 = load i32, i32* %bit, align 4, !dbg !4881
  %and24 = and i32 %14, %15, !dbg !4882
  %cmp25 = icmp ne i32 %and23, %and24, !dbg !4883
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !4884

if.then26:                                        ; preds = %cond.end
  br label %for.inc, !dbg !4885

if.end27:                                         ; preds = %cond.end
  %16 = load i32, i32* %old, align 4, !dbg !4886
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !4887
  store i32 %16, i32* %arrayidx, align 4, !dbg !4888
  %17 = load i32, i32* %old, align 4, !dbg !4889
  %18 = load i32, i32* %bit, align 4, !dbg !4890
  %xor = xor i32 %17, %18, !dbg !4891
  %arrayidx28 = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 1, !dbg !4892
  store i32 %xor, i32* %arrayidx28, align 4, !dbg !4893
  %19 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4894
  %20 = load i32, i32* %irm_id.addr, align 4, !dbg !4895
  %21 = load i32, i32* %generation.addr, align 4, !dbg !4896
  %22 = load i64, i64* %offset.addr, align 8, !dbg !4897
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !4898
  %23 = bitcast i32* %arraydecay to i8*, !dbg !4898
  %call29 = call i32 @fw_run_transaction(%struct.fw_card* %19, i32 18, i32 %20, i32 %21, i32 0, i64 %22, i8* %23, i64 8) #8, !dbg !4899
  switch i32 %call29, label %sw.default [
    i32 19, label %sw.bb
    i32 0, label %sw.bb35
  ], !dbg !4900

sw.bb:                                            ; preds = %if.end27
  %24 = load i8, i8* %allocate.addr, align 1, !dbg !4901
  %tobool30 = trunc i8 %24 to i1, !dbg !4901
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4901

cond.true31:                                      ; preds = %sw.bb
  br label %cond.end33, !dbg !4901

cond.false32:                                     ; preds = %sw.bb
  %25 = load i32, i32* %channel, align 4, !dbg !4903
  br label %cond.end33, !dbg !4901

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i32 [ -11, %cond.true31 ], [ %25, %cond.false32 ], !dbg !4901
  store i32 %cond34, i32* %retval, align 4, !dbg !4904
  br label %return, !dbg !4904

sw.bb35:                                          ; preds = %if.end27
  %arrayidx36 = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !4905
  %26 = load i32, i32* %arrayidx36, align 4, !dbg !4905
  %27 = load i32, i32* %old, align 4, !dbg !4907
  %cmp37 = icmp eq i32 %26, %27, !dbg !4908
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !4909

if.then38:                                        ; preds = %sw.bb35
  %28 = load i32, i32* %channel, align 4, !dbg !4910
  store i32 %28, i32* %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

if.end39:                                         ; preds = %sw.bb35
  %arrayidx40 = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !4912
  %29 = load i32, i32* %arrayidx40, align 4, !dbg !4912
  store i32 %29, i32* %old, align 4, !dbg !4913
  %arrayidx41 = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !4914
  %30 = load i32, i32* %arrayidx41, align 4, !dbg !4914
  %31 = load i32, i32* %bit, align 4, !dbg !4916
  %and42 = and i32 %30, %31, !dbg !4917
  %arrayidx43 = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 1, !dbg !4918
  %32 = load i32, i32* %arrayidx43, align 4, !dbg !4918
  %33 = load i32, i32* %bit, align 4, !dbg !4919
  %and44 = and i32 %32, %33, !dbg !4920
  %cmp45 = icmp eq i32 %and42, %and44, !dbg !4921
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4922

if.then46:                                        ; preds = %if.end39
  br label %for.inc, !dbg !4923

if.end47:                                         ; preds = %if.end39
  br label %sw.default, !dbg !4924

sw.default:                                       ; preds = %if.end27, %if.end47
  %34 = load i32, i32* %retry, align 4, !dbg !4925
  %tobool48 = icmp ne i32 %34, 0, !dbg !4925
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !4927

if.then49:                                        ; preds = %sw.default
  %35 = load i32, i32* %retry, align 4, !dbg !4928
  %dec = add i32 %35, -1, !dbg !4928
  store i32 %dec, i32* %retry, align 4, !dbg !4928
  %36 = load i32, i32* %channel, align 4, !dbg !4930
  %dec50 = add i32 %36, -1, !dbg !4930
  store i32 %dec50, i32* %channel, align 4, !dbg !4930
  br label %if.end51, !dbg !4931

if.else:                                          ; preds = %sw.default
  store i32 -5, i32* %ret, align 4, !dbg !4932
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  br label %sw.epilog, !dbg !4934

sw.epilog:                                        ; preds = %if.end51
  br label %for.inc, !dbg !4935

for.inc:                                          ; preds = %sw.epilog, %if.then46, %if.then26, %if.then
  %37 = load i32, i32* %channel, align 4, !dbg !4936
  %inc = add i32 %37, 1, !dbg !4936
  store i32 %inc, i32* %channel, align 4, !dbg !4936
  br label %for.cond, !dbg !4937, !llvm.loop !4938

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %ret, align 4, !dbg !4940
  store i32 %38, i32* %retval, align 4, !dbg !4941
  br label %return, !dbg !4941

return:                                           ; preds = %for.end, %if.then38, %cond.end33
  %39 = load i32, i32* %retval, align 4, !dbg !4942
  ret i32 %39, !dbg !4942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @manage_bandwidth(%struct.fw_card* %card, i32 %irm_id, i32 %generation, i32 %bandwidth, i1 zeroext %allocate) #0 !dbg !4943 {
entry:
  %p.addr.i.i47 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i47, metadata !4946, metadata !DIExpression()), !dbg !4953
  %p.addr.i48 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i48, metadata !4964, metadata !DIExpression()), !dbg !4965
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !4946, metadata !DIExpression()), !dbg !4966
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !4964, metadata !DIExpression()), !dbg !4970
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.fw_card*, align 8
  %irm_id.addr = alloca i32, align 4
  %generation.addr = alloca i32, align 4
  %bandwidth.addr = alloca i32, align 4
  %allocate.addr = alloca i8, align 1
  %try = alloca i32, align 4
  %new = alloca i32, align 4
  %old = alloca i32, align 4
  %data = alloca [2 x i32], align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  store i32 %irm_id, i32* %irm_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irm_id.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !4975, metadata !DIExpression()), !dbg !4976
  store i32 %bandwidth, i32* %bandwidth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  %frombool = zext i1 %allocate to i8
  store i8 %frombool, i8* %allocate.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %allocate.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.declare(metadata i32* %try, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata i32* %new, metadata !4983, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4985, metadata !DIExpression()), !dbg !4986
  %0 = load i8, i8* %allocate.addr, align 1, !dbg !4987
  %tobool = trunc i8 %0 to i1, !dbg !4987
  %1 = zext i1 %tobool to i64, !dbg !4987
  %cond = select i1 %tobool, i32 4915, i32 0, !dbg !4987
  store i32 %cond, i32* %old, align 4, !dbg !4986
  call void @llvm.dbg.declare(metadata [2 x i32]* %data, metadata !4988, metadata !DIExpression()), !dbg !4989
  store i32 0, i32* %try, align 4, !dbg !4990
  br label %for.cond, !dbg !4991

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %try, align 4, !dbg !4992
  %cmp = icmp slt i32 %2, 5, !dbg !4993
  br i1 %cmp, label %for.body, label %for.end, !dbg !4994

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %allocate.addr, align 1, !dbg !4995
  %tobool1 = trunc i8 %3 to i1, !dbg !4995
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !4995

cond.true:                                        ; preds = %for.body
  %4 = load i32, i32* %old, align 4, !dbg !4996
  %5 = load i32, i32* %bandwidth.addr, align 4, !dbg !4997
  %sub = sub i32 %4, %5, !dbg !4998
  br label %cond.end, !dbg !4995

cond.false:                                       ; preds = %for.body
  %6 = load i32, i32* %old, align 4, !dbg !4999
  %7 = load i32, i32* %bandwidth.addr, align 4, !dbg !5000
  %add = add i32 %6, %7, !dbg !5001
  br label %cond.end, !dbg !4995

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ], !dbg !4995
  store i32 %cond2, i32* %new, align 4, !dbg !5002
  %8 = load i32, i32* %new, align 4, !dbg !5003
  %cmp3 = icmp slt i32 %8, 0, !dbg !5005
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !5006

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load i32, i32* %new, align 4, !dbg !5007
  %cmp4 = icmp sgt i32 %9, 4915, !dbg !5008
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5009

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -16, i32* %retval, align 4, !dbg !5010
  br label %return, !dbg !5010

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %old, align 4, !dbg !5011
  %11 = call i1 @llvm.is.constant.i32(i32 %10), !dbg !5011
  br i1 %11, label %cond.true5, label %cond.false13, !dbg !5011

cond.true5:                                       ; preds = %if.end
  %12 = load i32, i32* %old, align 4, !dbg !5011
  %and = and i32 %12, 255, !dbg !5011
  %shl = shl i32 %and, 24, !dbg !5011
  %13 = load i32, i32* %old, align 4, !dbg !5011
  %and6 = and i32 %13, 65280, !dbg !5011
  %shl7 = shl i32 %and6, 8, !dbg !5011
  %or = or i32 %shl, %shl7, !dbg !5011
  %14 = load i32, i32* %old, align 4, !dbg !5011
  %and8 = and i32 %14, 16711680, !dbg !5011
  %shr = lshr i32 %and8, 8, !dbg !5011
  %or9 = or i32 %or, %shr, !dbg !5011
  %15 = load i32, i32* %old, align 4, !dbg !5011
  %and10 = and i32 %15, -16777216, !dbg !5011
  %shr11 = lshr i32 %and10, 24, !dbg !5011
  %or12 = or i32 %or9, %shr11, !dbg !5011
  br label %cond.end14, !dbg !5011

cond.false13:                                     ; preds = %if.end
  %16 = load i32, i32* %old, align 4, !dbg !5011
  %call = call i32 @__fswab32(i32 %16) #9, !dbg !5011
  br label %cond.end14, !dbg !5011

cond.end14:                                       ; preds = %cond.false13, %cond.true5
  %cond15 = phi i32 [ %or12, %cond.true5 ], [ %call, %cond.false13 ], !dbg !5011
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !5012
  store i32 %cond15, i32* %arrayidx, align 4, !dbg !5013
  %17 = load i32, i32* %new, align 4, !dbg !5014
  %18 = call i1 @llvm.is.constant.i32(i32 %17), !dbg !5014
  br i1 %18, label %cond.true16, label %cond.false28, !dbg !5014

cond.true16:                                      ; preds = %cond.end14
  %19 = load i32, i32* %new, align 4, !dbg !5014
  %and17 = and i32 %19, 255, !dbg !5014
  %shl18 = shl i32 %and17, 24, !dbg !5014
  %20 = load i32, i32* %new, align 4, !dbg !5014
  %and19 = and i32 %20, 65280, !dbg !5014
  %shl20 = shl i32 %and19, 8, !dbg !5014
  %or21 = or i32 %shl18, %shl20, !dbg !5014
  %21 = load i32, i32* %new, align 4, !dbg !5014
  %and22 = and i32 %21, 16711680, !dbg !5014
  %shr23 = lshr i32 %and22, 8, !dbg !5014
  %or24 = or i32 %or21, %shr23, !dbg !5014
  %22 = load i32, i32* %new, align 4, !dbg !5014
  %and25 = and i32 %22, -16777216, !dbg !5014
  %shr26 = lshr i32 %and25, 24, !dbg !5014
  %or27 = or i32 %or24, %shr26, !dbg !5014
  br label %cond.end30, !dbg !5014

cond.false28:                                     ; preds = %cond.end14
  %23 = load i32, i32* %new, align 4, !dbg !5014
  %call29 = call i32 @__fswab32(i32 %23) #9, !dbg !5014
  br label %cond.end30, !dbg !5014

cond.end30:                                       ; preds = %cond.false28, %cond.true16
  %cond31 = phi i32 [ %or27, %cond.true16 ], [ %call29, %cond.false28 ], !dbg !5014
  %arrayidx32 = getelementptr [2 x i32], [2 x i32]* %data, i64 0, i64 1, !dbg !5015
  store i32 %cond31, i32* %arrayidx32, align 4, !dbg !5016
  %24 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5017
  %25 = load i32, i32* %irm_id.addr, align 4, !dbg !5018
  %26 = load i32, i32* %generation.addr, align 4, !dbg !5019
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !5020
  %27 = bitcast i32* %arraydecay to i8*, !dbg !5020
  %call33 = call i32 @fw_run_transaction(%struct.fw_card* %24, i32 18, i32 %25, i32 %26, i32 0, i64 281474708275744, i8* %27, i64 8) #8, !dbg !5021
  switch i32 %call33, label %sw.epilog [
    i32 19, label %sw.bb
    i32 0, label %sw.bb39
  ], !dbg !5022

sw.bb:                                            ; preds = %cond.end30
  %28 = load i8, i8* %allocate.addr, align 1, !dbg !5023
  %tobool34 = trunc i8 %28 to i1, !dbg !5023
  br i1 %tobool34, label %cond.true35, label %cond.false36, !dbg !5023

cond.true35:                                      ; preds = %sw.bb
  br label %cond.end37, !dbg !5023

cond.false36:                                     ; preds = %sw.bb
  %29 = load i32, i32* %bandwidth.addr, align 4, !dbg !5024
  br label %cond.end37, !dbg !5023

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %cond38 = phi i32 [ -11, %cond.true35 ], [ %29, %cond.false36 ], !dbg !5023
  store i32 %cond38, i32* %retval, align 4, !dbg !5025
  br label %return, !dbg !5025

sw.bb39:                                          ; preds = %cond.end30
  %arraydecay40 = getelementptr inbounds [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !5026
  store i32* %arraydecay40, i32** %p.addr.i, align 8
  %30 = load i32*, i32** %p.addr.i, align 8, !dbg !5027
  store i32* %30, i32** %p.addr.i.i, align 8
  %31 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5028
  %32 = load i32, i32* %31, align 4, !dbg !5028
  %33 = call i1 @llvm.is.constant.i32(i32 %32) #7, !dbg !5028
  br i1 %33, label %cond.true.i.i, label %cond.false.i.i, !dbg !5028

cond.true.i.i:                                    ; preds = %sw.bb39
  %34 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5028
  %35 = load i32, i32* %34, align 4, !dbg !5028
  %and.i.i = and i32 %35, 255, !dbg !5028
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !5028
  %36 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5028
  %37 = load i32, i32* %36, align 4, !dbg !5028
  %and1.i.i = and i32 %37, 65280, !dbg !5028
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !5028
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !5028
  %38 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5028
  %39 = load i32, i32* %38, align 4, !dbg !5028
  %and3.i.i = and i32 %39, 16711680, !dbg !5028
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !5028
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !5028
  %40 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5028
  %41 = load i32, i32* %40, align 4, !dbg !5028
  %and5.i.i = and i32 %41, -16777216, !dbg !5028
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !5028
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !5028
  br label %__be32_to_cpup.exit, !dbg !5028

cond.false.i.i:                                   ; preds = %sw.bb39
  %42 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5028
  %43 = load i32, i32* %42, align 4, !dbg !5028
  %call.i.i = call i32 @__fswab32(i32 %43) #9, !dbg !5028
  br label %__be32_to_cpup.exit, !dbg !5028

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !5028
  %44 = load i32, i32* %old, align 4, !dbg !5029
  %cmp42 = icmp eq i32 %cond.i.i, %44, !dbg !5030
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5031

if.then43:                                        ; preds = %__be32_to_cpup.exit
  %45 = load i32, i32* %bandwidth.addr, align 4, !dbg !5032
  store i32 %45, i32* %retval, align 4, !dbg !5033
  br label %return, !dbg !5033

if.end44:                                         ; preds = %__be32_to_cpup.exit
  %arraydecay45 = getelementptr inbounds [2 x i32], [2 x i32]* %data, i64 0, i64 0, !dbg !5034
  store i32* %arraydecay45, i32** %p.addr.i48, align 8
  %46 = load i32*, i32** %p.addr.i48, align 8, !dbg !5035
  store i32* %46, i32** %p.addr.i.i47, align 8
  %47 = load i32*, i32** %p.addr.i.i47, align 8, !dbg !5036
  %48 = load i32, i32* %47, align 4, !dbg !5036
  %49 = call i1 @llvm.is.constant.i32(i32 %48) #7, !dbg !5036
  br i1 %49, label %cond.true.i.i60, label %cond.false.i.i62, !dbg !5036

cond.true.i.i60:                                  ; preds = %if.end44
  %50 = load i32*, i32** %p.addr.i.i47, align 8, !dbg !5036
  %51 = load i32, i32* %50, align 4, !dbg !5036
  %and.i.i49 = and i32 %51, 255, !dbg !5036
  %shl.i.i50 = shl i32 %and.i.i49, 24, !dbg !5036
  %52 = load i32*, i32** %p.addr.i.i47, align 8, !dbg !5036
  %53 = load i32, i32* %52, align 4, !dbg !5036
  %and1.i.i51 = and i32 %53, 65280, !dbg !5036
  %shl2.i.i52 = shl i32 %and1.i.i51, 8, !dbg !5036
  %or.i.i53 = or i32 %shl.i.i50, %shl2.i.i52, !dbg !5036
  %54 = load i32*, i32** %p.addr.i.i47, align 8, !dbg !5036
  %55 = load i32, i32* %54, align 4, !dbg !5036
  %and3.i.i54 = and i32 %55, 16711680, !dbg !5036
  %shr.i.i55 = lshr i32 %and3.i.i54, 8, !dbg !5036
  %or4.i.i56 = or i32 %or.i.i53, %shr.i.i55, !dbg !5036
  %56 = load i32*, i32** %p.addr.i.i47, align 8, !dbg !5036
  %57 = load i32, i32* %56, align 4, !dbg !5036
  %and5.i.i57 = and i32 %57, -16777216, !dbg !5036
  %shr6.i.i58 = lshr i32 %and5.i.i57, 24, !dbg !5036
  %or7.i.i59 = or i32 %or4.i.i56, %shr6.i.i58, !dbg !5036
  br label %__be32_to_cpup.exit64, !dbg !5036

cond.false.i.i62:                                 ; preds = %if.end44
  %58 = load i32*, i32** %p.addr.i.i47, align 8, !dbg !5036
  %59 = load i32, i32* %58, align 4, !dbg !5036
  %call.i.i61 = call i32 @__fswab32(i32 %59) #9, !dbg !5036
  br label %__be32_to_cpup.exit64, !dbg !5036

__be32_to_cpup.exit64:                            ; preds = %cond.true.i.i60, %cond.false.i.i62
  %cond.i.i63 = phi i32 [ %or7.i.i59, %cond.true.i.i60 ], [ %call.i.i61, %cond.false.i.i62 ], !dbg !5036
  store i32 %cond.i.i63, i32* %old, align 4, !dbg !5037
  br label %sw.epilog, !dbg !5038

sw.epilog:                                        ; preds = %__be32_to_cpup.exit64, %cond.end30
  br label %for.inc, !dbg !5039

for.inc:                                          ; preds = %sw.epilog
  %60 = load i32, i32* %try, align 4, !dbg !5040
  %inc = add i32 %60, 1, !dbg !5040
  store i32 %inc, i32* %try, align 4, !dbg !5040
  br label %for.cond, !dbg !5041, !llvm.loop !5042

for.end:                                          ; preds = %for.cond
  store i32 -5, i32* %retval, align 4, !dbg !5044
  br label %return, !dbg !5044

return:                                           ; preds = %for.end, %if.then43, %cond.end37, %if.then
  %61 = load i32, i32* %retval, align 4, !dbg !5045
  ret i32 %61, !dbg !5045
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @deallocate_channel(%struct.fw_card* %card, i32 %irm_id, i32 %generation, i32 %channel) #0 !dbg !5046 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %irm_id.addr = alloca i32, align 4
  %generation.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %offset = alloca i64, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5049, metadata !DIExpression()), !dbg !5050
  store i32 %irm_id, i32* %irm_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irm_id.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5057, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !5059, metadata !DIExpression()), !dbg !5060
  %0 = load i32, i32* %channel.addr, align 4, !dbg !5061
  %cmp = icmp slt i32 %0, 32, !dbg !5062
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5061

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %channel.addr, align 4, !dbg !5063
  %shl = shl i32 1, %1, !dbg !5064
  br label %cond.end, !dbg !5061

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %channel.addr, align 4, !dbg !5065
  %sub = sub i32 %2, 32, !dbg !5066
  %shl1 = shl i32 1, %sub, !dbg !5067
  br label %cond.end, !dbg !5061

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ %shl1, %cond.false ], !dbg !5061
  store i32 %cond, i32* %mask, align 4, !dbg !5068
  %3 = load i32, i32* %channel.addr, align 4, !dbg !5069
  %cmp2 = icmp slt i32 %3, 32, !dbg !5070
  %4 = zext i1 %cmp2 to i64, !dbg !5069
  %cond3 = select i1 %cmp2, i64 281474708275748, i64 281474708275752, !dbg !5069
  store i64 %cond3, i64* %offset, align 8, !dbg !5071
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5072
  %6 = load i32, i32* %irm_id.addr, align 4, !dbg !5073
  %7 = load i32, i32* %generation.addr, align 4, !dbg !5074
  %8 = load i32, i32* %mask, align 4, !dbg !5075
  %9 = load i64, i64* %offset, align 8, !dbg !5076
  %call = call i32 @manage_channel(%struct.fw_card* %5, i32 %6, i32 %7, i32 %8, i64 %9, i1 zeroext false) #8, !dbg !5077
  ret void, !dbg !5078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5079 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5085
  %tobool = trunc i8 %0 to i1, !dbg !5085
  %lnot = xor i1 %tobool, true, !dbg !5085
  %lnot1 = xor i1 %lnot, true, !dbg !5085
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5085
  %conv = sext i32 %lnot.ext to i64, !dbg !5085
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5085
  ret i1 %tobool2, !dbg !5086
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !5087 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5096
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5098, metadata !DIExpression()), !dbg !5099
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load i64, i64* %size.addr, align 8, !dbg !5102
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5104
  br i1 %1, label %if.then, label %if.end447, !dbg !5105

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5106
  %tobool = icmp ne i64 %2, 0, !dbg !5106
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5109

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5111
  %cmp = icmp ult i64 %3, 4096, !dbg !5113
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5114

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub = sub i64 %4, 1, !dbg !5116
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5116
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5116

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub4 = sub i64 %6, 1, !dbg !5116
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5116
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5116

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub6 = sub i64 %8, 1, !dbg !5116
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5116
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5116

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5116

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub9 = sub i64 %9, 1, !dbg !5116
  %and = and i64 %sub9, -9223372036854775808, !dbg !5116
  %tobool10 = icmp ne i64 %and, 0, !dbg !5116
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5116

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5116

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub13 = sub i64 %10, 1, !dbg !5116
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5116
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5116
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5116

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5116

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub18 = sub i64 %11, 1, !dbg !5116
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5116
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5116
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5116

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5116

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub23 = sub i64 %12, 1, !dbg !5116
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5116
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5116
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5116

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5116

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub28 = sub i64 %13, 1, !dbg !5116
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5116
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5116
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5116

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5116

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub33 = sub i64 %14, 1, !dbg !5116
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5116
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5116
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5116

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5116

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub38 = sub i64 %15, 1, !dbg !5116
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5116
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5116
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5116

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5116

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub43 = sub i64 %16, 1, !dbg !5116
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5116
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5116
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5116

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5116

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub48 = sub i64 %17, 1, !dbg !5116
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5116
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5116
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5116

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5116

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub53 = sub i64 %18, 1, !dbg !5116
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5116
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5116
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5116

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5116

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub58 = sub i64 %19, 1, !dbg !5116
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5116
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5116
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5116

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5116

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub63 = sub i64 %20, 1, !dbg !5116
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5116
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5116
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5116

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5116

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub68 = sub i64 %21, 1, !dbg !5116
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5116
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5116
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5116

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5116

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub73 = sub i64 %22, 1, !dbg !5116
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5116
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5116
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5116

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5116

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub78 = sub i64 %23, 1, !dbg !5116
  %and79 = and i64 %sub78, 562949953421312, !dbg !5116
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5116
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5116

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5116

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub83 = sub i64 %24, 1, !dbg !5116
  %and84 = and i64 %sub83, 281474976710656, !dbg !5116
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5116
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5116

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5116

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub88 = sub i64 %25, 1, !dbg !5116
  %and89 = and i64 %sub88, 140737488355328, !dbg !5116
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5116
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5116

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5116

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub93 = sub i64 %26, 1, !dbg !5116
  %and94 = and i64 %sub93, 70368744177664, !dbg !5116
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5116
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5116

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5116

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub98 = sub i64 %27, 1, !dbg !5116
  %and99 = and i64 %sub98, 35184372088832, !dbg !5116
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5116
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5116

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5116

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub103 = sub i64 %28, 1, !dbg !5116
  %and104 = and i64 %sub103, 17592186044416, !dbg !5116
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5116
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5116

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5116

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub108 = sub i64 %29, 1, !dbg !5116
  %and109 = and i64 %sub108, 8796093022208, !dbg !5116
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5116
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5116

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5116

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub113 = sub i64 %30, 1, !dbg !5116
  %and114 = and i64 %sub113, 4398046511104, !dbg !5116
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5116
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5116

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5116

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub118 = sub i64 %31, 1, !dbg !5116
  %and119 = and i64 %sub118, 2199023255552, !dbg !5116
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5116
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5116

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5116

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub123 = sub i64 %32, 1, !dbg !5116
  %and124 = and i64 %sub123, 1099511627776, !dbg !5116
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5116
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5116

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5116

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub128 = sub i64 %33, 1, !dbg !5116
  %and129 = and i64 %sub128, 549755813888, !dbg !5116
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5116
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5116

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5116

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub133 = sub i64 %34, 1, !dbg !5116
  %and134 = and i64 %sub133, 274877906944, !dbg !5116
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5116
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5116

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5116

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub138 = sub i64 %35, 1, !dbg !5116
  %and139 = and i64 %sub138, 137438953472, !dbg !5116
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5116
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5116

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5116

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub143 = sub i64 %36, 1, !dbg !5116
  %and144 = and i64 %sub143, 68719476736, !dbg !5116
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5116
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5116

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5116

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub148 = sub i64 %37, 1, !dbg !5116
  %and149 = and i64 %sub148, 34359738368, !dbg !5116
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5116
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5116

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5116

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub153 = sub i64 %38, 1, !dbg !5116
  %and154 = and i64 %sub153, 17179869184, !dbg !5116
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5116
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5116

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5116

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub158 = sub i64 %39, 1, !dbg !5116
  %and159 = and i64 %sub158, 8589934592, !dbg !5116
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5116
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5116

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5116

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub163 = sub i64 %40, 1, !dbg !5116
  %and164 = and i64 %sub163, 4294967296, !dbg !5116
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5116
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5116

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5116

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub168 = sub i64 %41, 1, !dbg !5116
  %and169 = and i64 %sub168, 2147483648, !dbg !5116
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5116
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5116

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5116

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub173 = sub i64 %42, 1, !dbg !5116
  %and174 = and i64 %sub173, 1073741824, !dbg !5116
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5116
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5116

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5116

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub178 = sub i64 %43, 1, !dbg !5116
  %and179 = and i64 %sub178, 536870912, !dbg !5116
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5116
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5116

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5116

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub183 = sub i64 %44, 1, !dbg !5116
  %and184 = and i64 %sub183, 268435456, !dbg !5116
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5116
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5116

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5116

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub188 = sub i64 %45, 1, !dbg !5116
  %and189 = and i64 %sub188, 134217728, !dbg !5116
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5116
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5116

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5116

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub193 = sub i64 %46, 1, !dbg !5116
  %and194 = and i64 %sub193, 67108864, !dbg !5116
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5116
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5116

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5116

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub198 = sub i64 %47, 1, !dbg !5116
  %and199 = and i64 %sub198, 33554432, !dbg !5116
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5116
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5116

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5116

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub203 = sub i64 %48, 1, !dbg !5116
  %and204 = and i64 %sub203, 16777216, !dbg !5116
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5116
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5116

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5116

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub208 = sub i64 %49, 1, !dbg !5116
  %and209 = and i64 %sub208, 8388608, !dbg !5116
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5116
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5116

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5116

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub213 = sub i64 %50, 1, !dbg !5116
  %and214 = and i64 %sub213, 4194304, !dbg !5116
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5116
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5116

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5116

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub218 = sub i64 %51, 1, !dbg !5116
  %and219 = and i64 %sub218, 2097152, !dbg !5116
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5116
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5116

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5116

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub223 = sub i64 %52, 1, !dbg !5116
  %and224 = and i64 %sub223, 1048576, !dbg !5116
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5116
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5116

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5116

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub228 = sub i64 %53, 1, !dbg !5116
  %and229 = and i64 %sub228, 524288, !dbg !5116
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5116
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5116

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5116

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub233 = sub i64 %54, 1, !dbg !5116
  %and234 = and i64 %sub233, 262144, !dbg !5116
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5116
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5116

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5116

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub238 = sub i64 %55, 1, !dbg !5116
  %and239 = and i64 %sub238, 131072, !dbg !5116
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5116
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5116

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5116

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub243 = sub i64 %56, 1, !dbg !5116
  %and244 = and i64 %sub243, 65536, !dbg !5116
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5116
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5116

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5116

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub248 = sub i64 %57, 1, !dbg !5116
  %and249 = and i64 %sub248, 32768, !dbg !5116
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5116
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5116

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5116

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub253 = sub i64 %58, 1, !dbg !5116
  %and254 = and i64 %sub253, 16384, !dbg !5116
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5116
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5116

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5116

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub258 = sub i64 %59, 1, !dbg !5116
  %and259 = and i64 %sub258, 8192, !dbg !5116
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5116
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5116

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5116

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub263 = sub i64 %60, 1, !dbg !5116
  %and264 = and i64 %sub263, 4096, !dbg !5116
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5116
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5116

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5116

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub268 = sub i64 %61, 1, !dbg !5116
  %and269 = and i64 %sub268, 2048, !dbg !5116
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5116
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5116

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5116

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub273 = sub i64 %62, 1, !dbg !5116
  %and274 = and i64 %sub273, 1024, !dbg !5116
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5116
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5116

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5116

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub278 = sub i64 %63, 1, !dbg !5116
  %and279 = and i64 %sub278, 512, !dbg !5116
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5116
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5116

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5116

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub283 = sub i64 %64, 1, !dbg !5116
  %and284 = and i64 %sub283, 256, !dbg !5116
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5116
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5116

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5116

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub288 = sub i64 %65, 1, !dbg !5116
  %and289 = and i64 %sub288, 128, !dbg !5116
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5116
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5116

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5116

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub293 = sub i64 %66, 1, !dbg !5116
  %and294 = and i64 %sub293, 64, !dbg !5116
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5116
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5116

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5116

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub298 = sub i64 %67, 1, !dbg !5116
  %and299 = and i64 %sub298, 32, !dbg !5116
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5116
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5116

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5116

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub303 = sub i64 %68, 1, !dbg !5116
  %and304 = and i64 %sub303, 16, !dbg !5116
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5116
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5116

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5116

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub308 = sub i64 %69, 1, !dbg !5116
  %and309 = and i64 %sub308, 8, !dbg !5116
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5116
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5116

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5116

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub313 = sub i64 %70, 1, !dbg !5116
  %and314 = and i64 %sub313, 4, !dbg !5116
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5116
  %71 = zext i1 %tobool315 to i64, !dbg !5116
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5116
  br label %cond.end, !dbg !5116

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5116
  br label %cond.end317, !dbg !5116

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5116
  br label %cond.end319, !dbg !5116

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5116
  br label %cond.end321, !dbg !5116

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5116
  br label %cond.end323, !dbg !5116

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5116
  br label %cond.end325, !dbg !5116

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5116
  br label %cond.end327, !dbg !5116

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5116
  br label %cond.end329, !dbg !5116

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5116
  br label %cond.end331, !dbg !5116

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5116
  br label %cond.end333, !dbg !5116

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5116
  br label %cond.end335, !dbg !5116

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5116
  br label %cond.end337, !dbg !5116

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5116
  br label %cond.end339, !dbg !5116

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5116
  br label %cond.end341, !dbg !5116

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5116
  br label %cond.end343, !dbg !5116

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5116
  br label %cond.end345, !dbg !5116

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5116
  br label %cond.end347, !dbg !5116

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5116
  br label %cond.end349, !dbg !5116

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5116
  br label %cond.end351, !dbg !5116

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5116
  br label %cond.end353, !dbg !5116

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5116
  br label %cond.end355, !dbg !5116

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5116
  br label %cond.end357, !dbg !5116

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5116
  br label %cond.end359, !dbg !5116

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5116
  br label %cond.end361, !dbg !5116

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5116
  br label %cond.end363, !dbg !5116

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5116
  br label %cond.end365, !dbg !5116

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5116
  br label %cond.end367, !dbg !5116

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5116
  br label %cond.end369, !dbg !5116

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5116
  br label %cond.end371, !dbg !5116

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5116
  br label %cond.end373, !dbg !5116

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5116
  br label %cond.end375, !dbg !5116

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5116
  br label %cond.end377, !dbg !5116

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5116
  br label %cond.end379, !dbg !5116

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5116
  br label %cond.end381, !dbg !5116

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5116
  br label %cond.end383, !dbg !5116

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5116
  br label %cond.end385, !dbg !5116

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5116
  br label %cond.end387, !dbg !5116

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5116
  br label %cond.end389, !dbg !5116

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5116
  br label %cond.end391, !dbg !5116

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5116
  br label %cond.end393, !dbg !5116

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5116
  br label %cond.end395, !dbg !5116

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5116
  br label %cond.end397, !dbg !5116

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5116
  br label %cond.end399, !dbg !5116

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5116
  br label %cond.end401, !dbg !5116

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5116
  br label %cond.end403, !dbg !5116

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5116
  br label %cond.end405, !dbg !5116

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5116
  br label %cond.end407, !dbg !5116

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5116
  br label %cond.end409, !dbg !5116

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5116
  br label %cond.end411, !dbg !5116

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5116
  br label %cond.end413, !dbg !5116

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5116
  br label %cond.end415, !dbg !5116

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5116
  br label %cond.end417, !dbg !5116

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5116
  br label %cond.end419, !dbg !5116

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5116
  br label %cond.end421, !dbg !5116

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5116
  br label %cond.end423, !dbg !5116

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5116
  br label %cond.end425, !dbg !5116

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5116
  br label %cond.end427, !dbg !5116

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5116
  br label %cond.end429, !dbg !5116

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5116
  br label %cond.end431, !dbg !5116

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5116
  br label %cond.end433, !dbg !5116

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5116
  br label %cond.end435, !dbg !5116

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5116
  br label %cond.end437, !dbg !5116

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5116
  br label %cond.end440, !dbg !5116

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5116

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5116
  br label %cond.end444, !dbg !5116

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub443 = sub i64 %72, 1, !dbg !5116
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !5116
  br label %cond.end444, !dbg !5116

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5116
  %sub446 = sub i32 %cond445, 12, !dbg !5117
  %add = add i32 %sub446, 1, !dbg !5118
  store i32 %add, i32* %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5120
  %dec = add i64 %73, -1, !dbg !5120
  store i64 %dec, i64* %size.addr, align 8, !dbg !5120
  %74 = load i64, i64* %size.addr, align 8, !dbg !5121
  %shr = lshr i64 %74, 12, !dbg !5121
  store i64 %shr, i64* %size.addr, align 8, !dbg !5121
  %75 = load i64, i64* %size.addr, align 8, !dbg !5122
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5099
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5123
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5124
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !5123, !srcloc !5125
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5123
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5126
  %add.i = add i32 %79, 1, !dbg !5127
  store i32 %add.i, i32* %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5129
  ret i32 %80, !dbg !5129
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !5130 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5134
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5098, metadata !DIExpression()), !dbg !5136
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load i64, i64* %n.addr, align 8, !dbg !5139
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5136
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5140
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5141
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !5140, !srcloc !5125
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5140
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5142
  %add.i = add i32 %4, 1, !dbg !5143
  %sub = sub i32 %add.i, 1, !dbg !5144
  ret i32 %sub, !dbg !5145
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5146 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5158
  ret i8* %0, !dbg !5159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !5160 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load i32, i32* %nid.addr, align 4, !dbg !5169
  %cmp = icmp eq i32 %0, -1, !dbg !5171
  br i1 %cmp, label %if.then, label %if.end, !dbg !5172

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #8, !dbg !5173
  store i32 %call, i32* %nid.addr, align 4, !dbg !5174
  br label %if.end, !dbg !5175

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %nid.addr, align 4, !dbg !5176
  %2 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5177
  %3 = load i32, i32* %order.addr, align 4, !dbg !5178
  %call1 = call %struct.page* @__alloc_pages_node(i32 %1, i32 %2, i32 %3) #8, !dbg !5179
  ret %struct.page* %call1, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_node_id() #0 !dbg !5181 {
entry:
  ret i32 0, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_mem_id() #0 !dbg !5186 {
entry:
  %call = call i32 @numa_node_id() #8, !dbg !5188
  ret i32 %call, !dbg !5189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !5190 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5197
  %1 = load i32, i32* %order.addr, align 4, !dbg !5198
  %2 = load i32, i32* %nid.addr, align 4, !dbg !5199
  %call = call %struct.page* @__alloc_pages(i32 %0, i32 %1, i32 %2) #8, !dbg !5200
  ret %struct.page* %call, !dbg !5201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages(i32 %gfp_mask, i32 %order, i32 %preferred_nid) #0 !dbg !5202 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %preferred_nid.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  store i32 %preferred_nid, i32* %preferred_nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preferred_nid.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5211
  %1 = load i32, i32* %order.addr, align 4, !dbg !5212
  %2 = load i32, i32* %preferred_nid.addr, align 4, !dbg !5213
  %call = call %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, i32 %2, %struct.nodemask_t* null) #8, !dbg !5214
  ret %struct.page* %call, !dbg !5215
}

; Function Attrs: noredzone
declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, %struct.nodemask_t*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debug_dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #0 !dbg !5216 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  ret void, !dbg !5223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5224 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5226, metadata !DIExpression()), !dbg !5228
  %0 = load i64, i64* %__edi, align 8, !dbg !5228
  store i64 %0, i64* %__edi, align 8, !dbg !5228
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5229, metadata !DIExpression()), !dbg !5228
  %1 = load i64, i64* %__esi, align 8, !dbg !5228
  store i64 %1, i64* %__esi, align 8, !dbg !5228
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5230, metadata !DIExpression()), !dbg !5228
  %2 = load i64, i64* %__edx, align 8, !dbg !5228
  store i64 %2, i64* %__edx, align 8, !dbg !5228
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5231, metadata !DIExpression()), !dbg !5228
  %3 = load i64, i64* %__ecx, align 8, !dbg !5228
  store i64 %3, i64* %__ecx, align 8, !dbg !5228
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5232, metadata !DIExpression()), !dbg !5228
  %4 = load i64, i64* %__eax, align 8, !dbg !5228
  store i64 %4, i64* %__eax, align 8, !dbg !5228
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5228
  %6 = call i64 @llvm.read_register.i64(metadata !130), !dbg !5228
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !5228, !srcloc !5233
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5228
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5228
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5228
  call void @llvm.write_register.i64(metadata !130, i64 %asmresult1), !dbg !5228
  ret void, !dbg !5234
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5235 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5236, metadata !DIExpression()), !dbg !5238
  %0 = load i64, i64* %__edi, align 8, !dbg !5238
  store i64 %0, i64* %__edi, align 8, !dbg !5238
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5239, metadata !DIExpression()), !dbg !5238
  %1 = load i64, i64* %__esi, align 8, !dbg !5238
  store i64 %1, i64* %__esi, align 8, !dbg !5238
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5240, metadata !DIExpression()), !dbg !5238
  %2 = load i64, i64* %__edx, align 8, !dbg !5238
  store i64 %2, i64* %__edx, align 8, !dbg !5238
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5241, metadata !DIExpression()), !dbg !5238
  %3 = load i64, i64* %__ecx, align 8, !dbg !5238
  store i64 %3, i64* %__ecx, align 8, !dbg !5238
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5242, metadata !DIExpression()), !dbg !5238
  %4 = load i64, i64* %__eax, align 8, !dbg !5238
  store i64 %4, i64* %__eax, align 8, !dbg !5238
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5238
  %6 = call i64 @llvm.read_register.i64(metadata !130), !dbg !5238
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #7, !dbg !5238, !srcloc !5243
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5238
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5238
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5238
  call void @llvm.write_register.i64(metadata !130, i64 %asmresult1), !dbg !5238
  ret void, !dbg !5244
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #5 !dbg !5245 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load i32, i32* %val.addr, align 4, !dbg !5250
  %call = call i32 @__arch_swab32(i32 %0) #9, !dbg !5251
  ret i32 %call, !dbg !5252
}

; Function Attrs: noredzone
declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #5 !dbg !5253 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load i32, i32* %val.addr, align 4, !dbg !5257
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !5258, !srcloc !5259
  store i32 %1, i32* %val.addr, align 4, !dbg !5258
  %2 = load i32, i32* %val.addr, align 4, !dbg !5260
  ret i32 %2, !dbg !5261
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !110, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/firewire/core-iso.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !37, !45, !51, !58, !65, !71, !77, !84, !92, !98, !105}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !4, line: 5, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !12, line: 54, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !23, line: 546, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !29, line: 296, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !38, line: 9, baseType: !5, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !46, line: 16, baseType: !5, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !52, line: 15, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !59, line: 59, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !66, line: 26, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !72, line: 44, baseType: !5, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !78, line: 343, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !85, line: 524, baseType: !5, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !85, line: 502, baseType: !5, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !99, line: 305, baseType: !5, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !5, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!110 = !{!111, !113, !114, !119, !125, !126, !128, !129}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !112, line: 148, baseType: !5)
!112 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !112, line: 60, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !116, line: 73, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !116, line: 15, baseType: !118)
!118 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !112, line: 143, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !121, line: 23, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !124)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !127, line: 32, baseType: !128)
!127 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !5)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!130 = !{!"rsp"}
!131 = !{i32 7, !"Dwarf Version", i32 4}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"Code Model", i32 2}
!135 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!136 = distinct !DISubprogram(name: "fw_iso_buffer_alloc", scope: !1, file: !1, line: 29, type: !137, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !140, !139}
!139 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_buffer", file: !142, line: 421, size: 192, elements: !143)
!142 = !DIFile(filename: "./include/linux/firewire.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !145, !2984, !2985}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !141, file: !142, line: 422, baseType: !3, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !141, file: !142, line: 423, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !149, line: 68, size: 512, align: 128, elements: !150)
!149 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !2976, !2983}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !149, line: 69, baseType: !125, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !149, line: 77, baseType: !153, size: 320, offset: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !149, line: 77, size: 320, elements: !154)
!154 = !{!155, !2851, !2855, !2881, !2889, !2895, !2907, !2975}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 78, baseType: !156, size: 320)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 78, size: 320, elements: !157)
!157 = !{!158, !164, !2849, !2850}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !156, file: !149, line: 84, baseType: !159, size: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !112, line: 178, size: 128, elements: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !112, line: 179, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !159, file: !112, line: 179, baseType: !162, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !156, file: !149, line: 86, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !29, line: 451, size: 1216, align: 64, elements: !167)
!167 = !{!168, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2844, !2845, !2846, !2847, !2848}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !166, file: !29, line: 452, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !29, line: 610, size: 4224, elements: !171)
!171 = !{!172, !175, !176, !184, !191, !192, !2675, !2676, !2677, !2678, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2719, !2727, !2728, !2729, !2739, !2740, !2741, !2742}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !170, file: !29, line: 611, baseType: !173, size: 16)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !112, line: 19, baseType: !174)
!174 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !170, file: !29, line: 612, baseType: !174, size: 16, offset: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !170, file: !29, line: 613, baseType: !177, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !178, line: 23, baseType: !179)
!178 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 21, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !178, line: 22, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !112, line: 32, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !116, line: 49, baseType: !5)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !170, file: !29, line: 614, baseType: !185, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !178, line: 28, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 26, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !178, line: 27, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !112, line: 33, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !116, line: 50, baseType: !5)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !170, file: !29, line: 615, baseType: !5, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !170, file: !29, line: 622, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !29, line: 1864, size: 1536, align: 512, elements: !196)
!196 = !{!197, !2549, !2562, !2566, !2572, !2576, !2580, !2584, !2588, !2592, !2596, !2597, !2601, !2605, !2625, !2651, !2655, !2661, !2666, !2670, !2671}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !195, file: !29, line: 1865, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !169, !201, !5}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !203, line: 89, size: 1536, elements: !204)
!203 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !206, !216, !224, !225, !242, !243, !247, !274, !348, !2533, !2534, !2535, !2541, !2542, !2543}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !202, file: !203, line: 91, baseType: !5, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !202, file: !203, line: 92, baseType: !207, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !208, line: 277, baseType: !209)
!208 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !208, line: 277, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !209, file: !208, line: 277, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !208, line: 70, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !208, line: 65, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !213, file: !208, line: 66, baseType: !5, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !202, file: !203, line: 93, baseType: !217, size: 128, offset: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !218, line: 38, size: 128, elements: !219)
!218 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!219 = !{!220, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !218, line: 39, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !217, file: !218, line: 39, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !202, file: !203, line: 94, baseType: !201, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !202, file: !203, line: 95, baseType: !226, size: 128, offset: 256)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !203, line: 47, size: 128, elements: !227)
!227 = !{!228, !238}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !203, line: 48, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !203, line: 48, size: 64, elements: !230)
!230 = !{!231, !237}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !203, line: 49, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !203, line: 49, size: 64, elements: !233)
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !232, file: !203, line: 50, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !121, line: 21, baseType: !128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !232, file: !203, line: 50, baseType: !235, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !229, file: !203, line: 52, baseType: !120, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !203, line: 54, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !202, file: !203, line: 96, baseType: !169, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !202, file: !203, line: 98, baseType: !244, size: 256, offset: 448)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !202, file: !203, line: 101, baseType: !248, size: 32, offset: 704)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !249, line: 25, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !249, line: 26, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !249, line: 26, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !249, line: 30, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !249, line: 30, size: 32, elements: !256)
!256 = !{!257, !273}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !255, file: !249, line: 31, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !259, line: 83, baseType: !260)
!259 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !259, line: 71, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !259, line: 72, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !259, line: 72, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !263, file: !259, line: 73, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !259, line: 20, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !266, file: !259, line: 21, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !270, line: 25, baseType: !271)
!270 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 25, elements: !272)
!272 = !{}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !255, file: !249, line: 32, baseType: !139, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !202, file: !203, line: 102, baseType: !275, size: 64, offset: 768)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !203, line: 135, size: 1024, align: 512, elements: !278)
!278 = !{!279, !283, !284, !291, !300, !304, !308, !312, !313, !317, !322, !334, !342}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !277, file: !203, line: 136, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!139, !201, !5}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !277, file: !203, line: 137, baseType: !280, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !277, file: !203, line: 138, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!139, !288, !290}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !277, file: !203, line: 139, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!139, !288, !5, !295, !298}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !277, file: !203, line: 141, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!139, !288}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !277, file: !203, line: 142, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!139, !201}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !277, file: !203, line: 143, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !201}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !277, file: !203, line: 144, baseType: !309, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !277, file: !203, line: 145, baseType: !314, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !201, !169}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !277, file: !203, line: 146, baseType: !318, size: 64, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !201, !321, !139}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !277, file: !203, line: 147, baseType: !323, size: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !203, line: 18, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !330, line: 8, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !329, file: !330, line: 9, baseType: !326, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !329, file: !330, line: 10, baseType: !201, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !277, file: !203, line: 148, baseType: !335, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!139, !338, !340}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !112, line: 30, baseType: !341)
!341 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !277, file: !203, line: 149, baseType: !343, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!201, !201, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !202, file: !203, line: 103, baseType: !349, size: 64, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !29, line: 1416, size: 9472, elements: !351)
!351 = !{!352, !353, !356, !357, !358, !362, !414, !497, !599, !682, !686, !687, !688, !689, !690, !699, !700, !701, !706, !710, !711, !714, !718, !721, !722, !723, !764, !2462, !2463, !2464, !2465, !2466, !2467, !2470, !2472, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2500, !2501, !2502, !2503, !2504, !2507, !2508, !2509, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !350, file: !29, line: 1417, baseType: !159, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !350, file: !29, line: 1418, baseType: !354, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !112, line: 16, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !112, line: 13, baseType: !235)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !350, file: !29, line: 1419, baseType: !241, size: 8, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !350, file: !29, line: 1420, baseType: !125, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !350, file: !29, line: 1421, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !112, line: 46, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !116, line: 88, baseType: !361)
!361 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !350, file: !29, line: 1422, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !29, line: 2228, size: 576, elements: !365)
!365 = !{!366, !367, !368, !375, !379, !383, !387, !391, !392, !402, !405, !406, !407, !411, !412, !413}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !29, line: 2229, baseType: !295, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !364, file: !29, line: 2230, baseType: !139, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !364, file: !29, line: 2238, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!139, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !374, line: 28, flags: DIFlagFwdDecl)
!374 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !364, file: !29, line: 2239, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !29, line: 70, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !364, file: !29, line: 2240, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!201, !363, !139, !295, !113}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !364, file: !29, line: 2242, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !349}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !364, file: !29, line: 2243, baseType: !388, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !390, line: 189, flags: DIFlagFwdDecl)
!390 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !29, line: 2244, baseType: !363, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !364, file: !29, line: 2245, baseType: !393, size: 64, offset: 512)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !112, line: 182, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !393, file: !112, line: 183, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !112, line: 186, size: 128, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !112, line: 187, baseType: !396, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !397, file: !112, line: 187, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !364, file: !29, line: 2247, baseType: !403, offset: 576)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !404, line: 187, elements: !272)
!404 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !364, file: !29, line: 2248, baseType: !403, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !364, file: !29, line: 2249, baseType: !403, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !364, file: !29, line: 2250, baseType: !408, offset: 576)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 3)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !364, file: !29, line: 2252, baseType: !403, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !364, file: !29, line: 2253, baseType: !403, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !364, file: !29, line: 2254, baseType: !403, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !350, file: !29, line: 1423, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !29, line: 1935, size: 1472, elements: !418)
!418 = !{!419, !423, !427, !428, !432, !438, !442, !443, !444, !448, !452, !453, !454, !455, !461, !466, !467, !474, !475, !476, !477, !481, !496}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !417, file: !29, line: 1936, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!169, !349}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !417, file: !29, line: 1937, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !169}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !417, file: !29, line: 1938, baseType: !424, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !417, file: !29, line: 1940, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !169, !139}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !417, file: !29, line: 1941, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!139, !169, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !23, line: 40, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !417, file: !29, line: 1942, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!139, !169}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !417, file: !29, line: 1943, baseType: !424, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !417, file: !29, line: 1944, baseType: !384, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !417, file: !29, line: 1945, baseType: !445, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!139, !349, !139}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !417, file: !29, line: 1946, baseType: !449, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!139, !349}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !417, file: !29, line: 1947, baseType: !449, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !417, file: !29, line: 1948, baseType: !449, size: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !417, file: !29, line: 1949, baseType: !449, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !417, file: !29, line: 1950, baseType: !456, size: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!139, !201, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !29, line: 57, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !417, file: !29, line: 1951, baseType: !462, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!139, !349, !465, !321}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !417, file: !29, line: 1952, baseType: !384, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !417, file: !29, line: 1954, baseType: !468, size: 64, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!139, !471, !201}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !473, line: 539, flags: DIFlagFwdDecl)
!473 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!474 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !417, file: !29, line: 1955, baseType: !468, size: 64, offset: 1088)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !417, file: !29, line: 1956, baseType: !468, size: 64, offset: 1152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !417, file: !29, line: 1957, baseType: !468, size: 64, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !417, file: !29, line: 1963, baseType: !478, size: 64, offset: 1280)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!139, !349, !147, !111}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !417, file: !29, line: 1964, baseType: !482, size: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!118, !349, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !487, line: 12, size: 256, elements: !488)
!487 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !490, !491, !492, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !486, file: !487, line: 13, baseType: !111, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !486, file: !487, line: 16, baseType: !139, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !486, file: !487, line: 23, baseType: !125, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !486, file: !487, line: 30, baseType: !125, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !486, file: !487, line: 33, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !149, line: 27, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !417, file: !29, line: 1966, baseType: !482, size: 64, offset: 1408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !350, file: !29, line: 1424, baseType: !498, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !501)
!501 = !{!502, !568, !572, !576, !577, !578, !579, !580, !585, !590, !594}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !500, file: !12, line: 323, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!139, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !528, !529, !534, !535, !551, !552, !553}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !507, file: !12, line: 295, baseType: !397, size: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !507, file: !12, line: 296, baseType: !159, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !507, file: !12, line: 297, baseType: !159, size: 128, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !507, file: !12, line: 298, baseType: !159, size: 128, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !507, file: !12, line: 299, baseType: !514, size: 192, offset: 512)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !515, line: 53, size: 192, elements: !516)
!515 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !526, !527}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !514, file: !515, line: 54, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !519, line: 13, baseType: !520)
!519 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !112, line: 175, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 173, size: 64, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !521, file: !112, line: 174, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !121, line: 22, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !361)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !514, file: !515, line: 55, baseType: !258, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !514, file: !515, line: 59, baseType: !159, size: 128, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !507, file: !12, line: 300, baseType: !258, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !507, file: !12, line: 301, baseType: !530, size: 32, offset: 704)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !112, line: 168, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 166, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !531, file: !112, line: 167, baseType: !139, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !507, file: !12, line: 302, baseType: !349, size: 64, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !507, file: !12, line: 303, baseType: !536, size: 64, offset: 832)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !537)
!537 = !{!538, !550}
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !12, line: 69, baseType: !539, size: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !12, line: 69, size: 32, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !539, file: !12, line: 70, baseType: !177, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !539, file: !12, line: 71, baseType: !185, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !539, file: !12, line: 72, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !545, line: 24, baseType: !546)
!545 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 22, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !545, line: 23, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !545, line: 20, baseType: !183)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !507, file: !12, line: 304, baseType: !359, size: 64, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !507, file: !12, line: 305, baseType: !125, size: 64, offset: 960)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !507, file: !12, line: 306, baseType: !554, size: 576, offset: 1024)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !555)
!555 = !{!556, !558, !559, !560, !561, !562, !563, !564, !567}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !554, file: !12, line: 206, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !361)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !554, file: !12, line: 207, baseType: !557, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !554, file: !12, line: 208, baseType: !557, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !554, file: !12, line: 209, baseType: !557, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !554, file: !12, line: 210, baseType: !557, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !554, file: !12, line: 211, baseType: !557, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !554, file: !12, line: 212, baseType: !557, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !554, file: !12, line: 213, baseType: !565, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !566, line: 8, baseType: !525)
!566 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !554, file: !12, line: 214, baseType: !565, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !500, file: !12, line: 324, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!506, !349, !139}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !500, file: !12, line: 325, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !506}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !500, file: !12, line: 326, baseType: !503, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !500, file: !12, line: 327, baseType: !503, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !500, file: !12, line: 328, baseType: !503, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !500, file: !12, line: 329, baseType: !445, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !500, file: !12, line: 332, baseType: !581, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!584, !169}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !500, file: !12, line: 333, baseType: !586, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!139, !169, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !500, file: !12, line: 335, baseType: !591, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!139, !169, !584}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !500, file: !12, line: 337, baseType: !595, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!139, !349, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !350, file: !29, line: 1425, baseType: !600, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !603)
!603 = !{!604, !608, !609, !613, !614, !615, !630, !653, !657, !658, !681}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !602, file: !12, line: 429, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!139, !349, !139, !139, !338}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !602, file: !12, line: 430, baseType: !445, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !602, file: !12, line: 431, baseType: !610, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!139, !349, !5}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !602, file: !12, line: 432, baseType: !610, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !602, file: !12, line: 433, baseType: !445, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !602, file: !12, line: 434, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!139, !349, !139, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !620, file: !12, line: 416, baseType: !139, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !620, file: !12, line: 417, baseType: !5, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !620, file: !12, line: 418, baseType: !5, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !620, file: !12, line: 420, baseType: !5, size: 32, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !620, file: !12, line: 421, baseType: !5, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !620, file: !12, line: 422, baseType: !5, size: 32, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !620, file: !12, line: 423, baseType: !5, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !620, file: !12, line: 424, baseType: !5, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !602, file: !12, line: 435, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!139, !349, !536, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !635, file: !12, line: 344, baseType: !139, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !635, file: !12, line: 345, baseType: !120, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !635, file: !12, line: 346, baseType: !120, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !635, file: !12, line: 347, baseType: !120, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !635, file: !12, line: 348, baseType: !120, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !635, file: !12, line: 349, baseType: !120, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !635, file: !12, line: 350, baseType: !120, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !635, file: !12, line: 351, baseType: !524, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !635, file: !12, line: 353, baseType: !524, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !635, file: !12, line: 354, baseType: !139, size: 32, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !635, file: !12, line: 355, baseType: !139, size: 32, offset: 608)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !635, file: !12, line: 356, baseType: !120, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !635, file: !12, line: 357, baseType: !120, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !635, file: !12, line: 358, baseType: !120, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !635, file: !12, line: 359, baseType: !524, size: 64, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !635, file: !12, line: 360, baseType: !139, size: 32, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !602, file: !12, line: 436, baseType: !654, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!139, !349, !598, !634}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !602, file: !12, line: 438, baseType: !631, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !602, file: !12, line: 439, baseType: !659, size: 64, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!139, !349, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !663, file: !12, line: 410, baseType: !5, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !663, file: !12, line: 411, baseType: !667, size: 1344, offset: 64)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 1344, elements: !409)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !12, line: 396, baseType: !5, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !668, file: !12, line: 397, baseType: !5, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !668, file: !12, line: 399, baseType: !5, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !668, file: !12, line: 400, baseType: !5, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !668, file: !12, line: 401, baseType: !5, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !668, file: !12, line: 402, baseType: !5, size: 32, offset: 160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !668, file: !12, line: 403, baseType: !5, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !668, file: !12, line: 404, baseType: !124, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !668, file: !12, line: 405, baseType: !679, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !112, line: 126, baseType: !120)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !668, file: !12, line: 406, baseType: !679, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !602, file: !12, line: 440, baseType: !610, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !350, file: !29, line: 1426, baseType: !683, size: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !29, line: 49, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !350, file: !29, line: 1427, baseType: !125, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !350, file: !29, line: 1428, baseType: !125, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !350, file: !29, line: 1429, baseType: !125, size: 64, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !350, file: !29, line: 1430, baseType: !201, size: 64, offset: 832)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !350, file: !29, line: 1431, baseType: !691, size: 256, offset: 896)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !692, line: 35, size: 256, elements: !693)
!692 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !696, !698}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !691, file: !692, line: 36, baseType: !518, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !691, file: !692, line: 42, baseType: !518, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !691, file: !692, line: 46, baseType: !697, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !259, line: 29, baseType: !266)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !691, file: !692, line: 47, baseType: !159, size: 128, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !350, file: !29, line: 1432, baseType: !139, size: 32, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !350, file: !29, line: 1433, baseType: !530, size: 32, offset: 1184)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !350, file: !29, line: 1437, baseType: !702, size: 64, offset: 1216)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !29, line: 1437, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !350, file: !29, line: 1449, baseType: !707, size: 64, offset: 1280)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !218, line: 34, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !707, file: !218, line: 35, baseType: !221, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !350, file: !29, line: 1450, baseType: !159, size: 128, offset: 1344)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !350, file: !29, line: 1451, baseType: !712, size: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !29, line: 699, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !350, file: !29, line: 1452, baseType: !715, size: 64, offset: 1536)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !717, line: 40, flags: DIFlagFwdDecl)
!717 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !350, file: !29, line: 1453, baseType: !719, size: 64, offset: 1600)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !29, line: 1453, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !350, file: !29, line: 1454, baseType: !397, size: 128, offset: 1664)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !350, file: !29, line: 1455, baseType: !5, size: 32, offset: 1792)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !350, file: !29, line: 1456, baseType: !724, size: 2432, offset: 1856)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !725)
!725 = !{!726, !727, !728, !730, !762}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !12, line: 519, baseType: !5, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !724, file: !12, line: 520, baseType: !691, size: 256, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !724, file: !12, line: 521, baseType: !729, size: 192, offset: 320)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 192, elements: !409)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !724, file: !12, line: 522, baseType: !731, size: 1728, offset: 512)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 1728, elements: !409)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !733)
!733 = !{!734, !754, !755, !756, !757, !758, !759, !760, !761}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !732, file: !12, line: 223, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !737)
!737 = !{!738, !739, !752, !753}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !736, file: !12, line: 444, baseType: !139, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !736, file: !12, line: 445, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !742, file: !12, line: 311, baseType: !445, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !742, file: !12, line: 312, baseType: !445, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !742, file: !12, line: 313, baseType: !445, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !742, file: !12, line: 314, baseType: !445, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !742, file: !12, line: 315, baseType: !503, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !742, file: !12, line: 316, baseType: !503, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !742, file: !12, line: 317, baseType: !503, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !742, file: !12, line: 318, baseType: !595, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !736, file: !12, line: 446, baseType: !388, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !736, file: !12, line: 447, baseType: !735, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !732, file: !12, line: 224, baseType: !139, size: 32, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !732, file: !12, line: 226, baseType: !159, size: 128, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !732, file: !12, line: 227, baseType: !125, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !732, file: !12, line: 228, baseType: !5, size: 32, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !732, file: !12, line: 229, baseType: !5, size: 32, offset: 352)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !732, file: !12, line: 230, baseType: !557, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !732, file: !12, line: 231, baseType: !557, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !732, file: !12, line: 232, baseType: !113, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !724, file: !12, line: 523, baseType: !763, size: 192, offset: 2240)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 192, elements: !409)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !350, file: !29, line: 1458, baseType: !765, size: 2112, offset: 4288)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !29, line: 1410, size: 2112, elements: !766)
!766 = !{!767, !768, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !765, file: !29, line: 1411, baseType: !139, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !765, file: !29, line: 1412, baseType: !769, size: 128, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !770, line: 40, baseType: !771)
!770 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !770, line: 36, size: 128, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !771, file: !770, line: 37, baseType: !258)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !771, file: !770, line: 38, baseType: !159, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !765, file: !29, line: 1413, baseType: !776, size: 1920, offset: 192)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 1920, elements: !409)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !778, line: 12, size: 640, elements: !779)
!778 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !796, !798, !2460, !2461}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !777, file: !778, line: 13, baseType: !781, size: 320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !782, line: 17, size: 320, elements: !783)
!782 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785, !786, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !781, file: !782, line: 18, baseType: !139, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !781, file: !782, line: 19, baseType: !139, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !781, file: !782, line: 20, baseType: !769, size: 128, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !781, file: !782, line: 22, baseType: !788, size: 128, align: 64, offset: 192)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !112, line: 216, size: 128, align: 64, elements: !789)
!789 = !{!790, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !112, line: 217, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !788, file: !112, line: 218, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !791}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !777, file: !778, line: 14, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !777, file: !778, line: 15, baseType: !799, size: 64, offset: 384)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !800, line: 16, size: 64, elements: !801)
!800 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !799, file: !800, line: 17, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !717, line: 640, size: 48640, elements: !805)
!805 = !{!806, !812, !814, !815, !821, !822, !823, !824, !825, !826, !827, !828, !832, !857, !868, !960, !961, !962, !973, !974, !976, !977, !1754, !1755, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1832, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1847, !1848, !1849, !1851, !1852, !1853, !1854, !1855, !1856, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1880, !1885, !1886, !1887, !1888, !1889, !1893, !1896, !1899, !1902, !1905, !1908, !2009, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2057, !2058, !2059, !2060, !2061, !2066, !2067, !2068, !2071, !2072, !2075, !2078, !2081, !2082, !2122, !2125, !2126, !2205, !2206, !2209, !2210, !2213, !2214, !2215, !2219, !2220, !2221, !2234, !2235, !2236, !2246, !2251, !2252, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !804, file: !717, line: 646, baseType: !807, size: 128)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !808, line: 56, size: 128, elements: !809)
!808 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !808, line: 57, baseType: !125, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !807, file: !808, line: 58, baseType: !235, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !804, file: !717, line: 649, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !804, file: !717, line: 657, baseType: !113, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !804, file: !717, line: 658, baseType: !816, size: 32, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !817, line: 113, baseType: !818)
!817 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !817, line: 111, size: 32, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !818, file: !817, line: 112, baseType: !530, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !717, line: 660, baseType: !5, size: 32, offset: 288)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !804, file: !717, line: 661, baseType: !5, size: 32, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !804, file: !717, line: 684, baseType: !139, size: 32, offset: 352)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !804, file: !717, line: 686, baseType: !139, size: 32, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !804, file: !717, line: 687, baseType: !139, size: 32, offset: 416)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !804, file: !717, line: 688, baseType: !139, size: 32, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !804, file: !717, line: 689, baseType: !5, size: 32, offset: 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !804, file: !717, line: 691, baseType: !829, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !717, line: 691, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !804, file: !717, line: 692, baseType: !833, size: 832, offset: 576)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !717, line: 451, size: 832, elements: !834)
!834 = !{!835, !840, !848, !849, !850, !851, !852, !853, !854, !855}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !833, file: !717, line: 453, baseType: !836, size: 128)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !717, line: 325, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !836, file: !717, line: 326, baseType: !125, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !836, file: !717, line: 327, baseType: !235, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !833, file: !717, line: 454, baseType: !841, size: 192, align: 64, offset: 128)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !842, line: 24, size: 192, align: 64, elements: !843)
!842 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844, !845, !847}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !841, file: !842, line: 25, baseType: !125, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !841, file: !842, line: 26, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !841, file: !842, line: 27, baseType: !846, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !833, file: !717, line: 455, baseType: !159, size: 128, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !833, file: !717, line: 456, baseType: !5, size: 32, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !833, file: !717, line: 458, baseType: !120, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !833, file: !717, line: 459, baseType: !120, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !833, file: !717, line: 460, baseType: !120, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !833, file: !717, line: 461, baseType: !120, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !833, file: !717, line: 463, baseType: !120, size: 64, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !833, file: !717, line: 465, baseType: !856, offset: 832)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !717, line: 415, elements: !272)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !804, file: !717, line: 693, baseType: !858, size: 384, offset: 1408)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !717, line: 489, size: 384, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !858, file: !717, line: 490, baseType: !159, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !858, file: !717, line: 491, baseType: !125, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !858, file: !717, line: 492, baseType: !125, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !858, file: !717, line: 493, baseType: !5, size: 32, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !858, file: !717, line: 494, baseType: !174, size: 16, offset: 288)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !858, file: !717, line: 495, baseType: !174, size: 16, offset: 304)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !858, file: !717, line: 497, baseType: !867, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !804, file: !717, line: 697, baseType: !869, size: 1792, offset: 1792)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !717, line: 507, size: 1792, elements: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !957, !958}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !869, file: !717, line: 508, baseType: !841, size: 192, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !869, file: !717, line: 515, baseType: !120, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !869, file: !717, line: 516, baseType: !120, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !869, file: !717, line: 517, baseType: !120, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !869, file: !717, line: 518, baseType: !120, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !869, file: !717, line: 519, baseType: !120, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !869, file: !717, line: 526, baseType: !524, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !869, file: !717, line: 527, baseType: !120, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !717, line: 528, baseType: !5, size: 32, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !869, file: !717, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !869, file: !717, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !869, file: !717, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !869, file: !717, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !869, file: !717, line: 563, baseType: !885, size: 512, offset: 704)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !886)
!886 = !{!887, !895, !896, !901, !951, !954, !955, !956}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !885, file: !18, line: 119, baseType: !888, size: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !889, line: 9, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !888, file: !889, line: 10, baseType: !841, size: 192, align: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !888, file: !889, line: 11, baseType: !893, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !894, line: 29, baseType: !524)
!894 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !885, file: !18, line: 120, baseType: !893, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !885, file: !18, line: 121, baseType: !897, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!17, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !885, file: !18, line: 122, baseType: !902, size: 64, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !904)
!904 = !{!905, !925, !926, !929, !934, !935, !946, !950}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !903, file: !18, line: 160, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !908)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !907, file: !18, line: 215, baseType: !697)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !907, file: !18, line: 216, baseType: !5, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !907, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !907, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !907, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !907, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !907, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !907, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !907, file: !18, line: 233, baseType: !893, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !907, file: !18, line: 234, baseType: !900, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !907, file: !18, line: 235, baseType: !893, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !907, file: !18, line: 236, baseType: !900, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !907, file: !18, line: 237, baseType: !922, size: 4096, offset: 512)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 4096, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 8)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !903, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !903, file: !18, line: 162, baseType: !927, size: 32, offset: 96)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !112, line: 27, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !116, line: 96, baseType: !139)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !903, file: !18, line: 163, baseType: !930, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !208, line: 276, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !208, line: 276, size: 32, elements: !932)
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !931, file: !208, line: 276, baseType: !212, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !903, file: !18, line: 164, baseType: !900, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !903, file: !18, line: 165, baseType: !936, size: 128, offset: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !889, line: 14, size: 128, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !936, file: !889, line: 15, baseType: !939, size: 128)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !842, line: 125, size: 128, elements: !940)
!940 = !{!941, !945}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !939, file: !842, line: 126, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !842, line: 31, size: 64, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !942, file: !842, line: 32, baseType: !846, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !939, file: !842, line: 127, baseType: !846, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !903, file: !18, line: 166, baseType: !947, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!893}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !903, file: !18, line: 167, baseType: !893, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !885, file: !18, line: 123, baseType: !952, size: 8, offset: 448)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !121, line: 17, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !241)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !885, file: !18, line: 124, baseType: !952, size: 8, offset: 456)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !885, file: !18, line: 125, baseType: !952, size: 8, offset: 464)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !885, file: !18, line: 126, baseType: !952, size: 8, offset: 472)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !869, file: !717, line: 572, baseType: !885, size: 512, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !869, file: !717, line: 580, baseType: !959, size: 64, offset: 1728)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !804, file: !717, line: 721, baseType: !5, size: 32, offset: 3584)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !804, file: !717, line: 722, baseType: !139, size: 32, offset: 3616)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !804, file: !717, line: 723, baseType: !963, size: 64, offset: 3648)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !966, line: 17, baseType: !967)
!966 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !966, line: 17, size: 64, elements: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !967, file: !966, line: 17, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 1)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !804, file: !717, line: 724, baseType: !965, size: 64, offset: 3712)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !804, file: !717, line: 749, baseType: !975, offset: 3776)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !717, line: 290, elements: !272)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !804, file: !717, line: 751, baseType: !159, size: 128, offset: 3776)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !804, file: !717, line: 757, baseType: !978, size: 64, offset: 3904)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !149, line: 388, size: 7296, elements: !980)
!980 = !{!981, !1750}
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !149, line: 389, baseType: !982, size: 7296)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !149, line: 389, size: 7296, elements: !983)
!983 = !{!984, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1668, !1674, !1677, !1700, !1701, !1723, !1724, !1727, !1728, !1729, !1732, !1733, !1734, !1737, !1749}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !982, file: !149, line: 390, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !149, line: 305, size: 1472, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !1002, !1003, !1008, !1009, !1012, !1097, !1098, !1616, !1617, !1618}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !986, file: !149, line: 308, baseType: !125, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !986, file: !149, line: 309, baseType: !125, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !986, file: !149, line: 313, baseType: !985, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !986, file: !149, line: 313, baseType: !985, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !986, file: !149, line: 315, baseType: !841, size: 192, align: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !986, file: !149, line: 323, baseType: !125, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !986, file: !149, line: 327, baseType: !978, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !986, file: !149, line: 333, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !473, line: 284, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !473, line: 284, size: 64, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !997, file: !473, line: 284, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1001, line: 19, baseType: !125)
!1001 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !986, file: !149, line: 334, baseType: !125, size: 64, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !986, file: !149, line: 343, baseType: !1004, size: 256, offset: 704)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !149, line: 340, size: 256, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1004, file: !149, line: 341, baseType: !841, size: 192, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1004, file: !149, line: 342, baseType: !125, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !986, file: !149, line: 351, baseType: !159, size: 128, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !986, file: !149, line: 353, baseType: !1010, size: 64, offset: 1088)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !149, line: 353, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !986, file: !149, line: 356, baseType: !1013, size: 64, offset: 1152)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !23, line: 557, size: 832, elements: !1016)
!1016 = !{!1017, !1021, !1022, !1026, !1030, !1071, !1075, !1079, !1083, !1084, !1085, !1089, !1093}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1015, file: !23, line: 558, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !985}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1015, file: !23, line: 559, baseType: !1018, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1015, file: !23, line: 560, baseType: !1023, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!139, !985, !125}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1015, file: !23, line: 561, baseType: !1027, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!139, !985}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1015, file: !23, line: 562, baseType: !1031, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !149, line: 682, baseType: !5)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !23, line: 508, size: 768, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1050, !1057, !1063, !1064, !1065, !1067, !1069}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1036, file: !23, line: 509, baseType: !985, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !23, line: 510, baseType: !5, size: 32, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1036, file: !23, line: 511, baseType: !111, size: 32, offset: 96)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1036, file: !23, line: 512, baseType: !125, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1036, file: !23, line: 513, baseType: !125, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1036, file: !23, line: 514, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !473, line: 385, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 385, size: 64, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1046, file: !473, line: 385, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1001, line: 15, baseType: !125)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1036, file: !23, line: 516, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !473, line: 359, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 359, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1053, file: !473, line: 359, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1001, line: 16, baseType: !125)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1036, file: !23, line: 519, baseType: !1058, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1001, line: 21, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1001, line: 21, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1059, file: !1001, line: 21, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1001, line: 14, baseType: !125)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1036, file: !23, line: 521, baseType: !147, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1036, file: !23, line: 522, baseType: !147, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1036, file: !23, line: 528, baseType: !1066, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1036, file: !23, line: 532, baseType: !1068, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1036, file: !23, line: 536, baseType: !1070, size: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !473, line: 509, baseType: !147)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1015, file: !23, line: 563, baseType: !1072, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1034, !1035, !22}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1015, file: !23, line: 565, baseType: !1076, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1035, !125, !125}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1015, file: !23, line: 567, baseType: !1080, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!125, !985}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1015, file: !23, line: 571, baseType: !1031, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1015, file: !23, line: 574, baseType: !1031, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1015, file: !23, line: 579, baseType: !1086, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!139, !985, !125, !113, !139, !139}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1015, file: !23, line: 585, baseType: !1090, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!295, !985}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1015, file: !23, line: 615, baseType: !1094, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!147, !985, !125}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !986, file: !149, line: 359, baseType: !125, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !986, file: !149, line: 361, baseType: !1099, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !29, line: 916, size: 1856, align: 32, elements: !1101)
!1101 = !{!1102, !1112, !1113, !1114, !1372, !1373, !1374, !1375, !1376, !1378, !1379, !1380, !1410, !1598, !1607, !1608, !1609, !1610, !1611, !1612, !1615}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1100, file: !29, line: 920, baseType: !1103, size: 128)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !29, line: 917, size: 128, elements: !1104)
!1104 = !{!1105, !1111}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1103, file: !29, line: 918, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1107, line: 58, size: 64, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1106, file: !1107, line: 59, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1103, file: !29, line: 919, baseType: !788, size: 128, align: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1100, file: !29, line: 921, baseType: !329, size: 128, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1100, file: !29, line: 922, baseType: !169, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1100, file: !29, line: 923, baseType: !1115, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !29, line: 1822, size: 2048, elements: !1118)
!1118 = !{!1119, !1120, !1124, !1132, !1136, !1164, !1165, !1169, !1182, !1183, !1190, !1194, !1195, !1199, !1200, !1204, !1209, !1210, !1214, !1218, !1327, !1331, !1335, !1339, !1340, !1346, !1350, !1355, !1359, !1363, !1367, !1371}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1117, file: !29, line: 1823, baseType: !388, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1117, file: !29, line: 1824, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!359, !1099, !359, !139}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1117, file: !29, line: 1825, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!114, !1099, !321, !1128, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 55, baseType: !1129)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !116, line: 72, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !116, line: 16, baseType: !125)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1117, file: !29, line: 1826, baseType: !1133, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!114, !1099, !295, !1128, !1131}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1117, file: !29, line: 1827, baseType: !1137, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!114, !1140, !1162}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !29, line: 320, size: 384, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1149, !1150, !1151, !1154, !1155}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1141, file: !29, line: 321, baseType: !1099, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1141, file: !29, line: 326, baseType: !359, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1141, file: !29, line: 327, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1140, !118, !118}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1141, file: !29, line: 328, baseType: !113, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1141, file: !29, line: 329, baseType: !139, size: 32, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1141, file: !29, line: 330, baseType: !1152, size: 16, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !121, line: 19, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !174)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1141, file: !29, line: 331, baseType: !1152, size: 16, offset: 304)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !29, line: 332, baseType: !1156, size: 64, offset: 320)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !29, line: 332, size: 64, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1156, file: !29, line: 333, baseType: !5, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1156, file: !29, line: 334, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !29, line: 334, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !29, line: 64, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1117, file: !29, line: 1828, baseType: !1137, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1117, file: !29, line: 1829, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!139, !1140, !340}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1117, file: !29, line: 1830, baseType: !1170, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!139, !1099, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !29, line: 1776, size: 128, elements: !1175)
!1175 = !{!1176, !1181}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1174, file: !29, line: 1777, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !29, line: 1773, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!139, !1173, !295, !139, !359, !120, !5}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1174, file: !29, line: 1778, baseType: !359, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1117, file: !29, line: 1831, baseType: !1170, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1117, file: !29, line: 1832, baseType: !1184, size: 64, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1187, !1099, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !127, line: 52, baseType: !5)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !374, line: 27, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1117, file: !29, line: 1833, baseType: !1191, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!118, !1099, !5, !125}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1117, file: !29, line: 1834, baseType: !1191, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1117, file: !29, line: 1835, baseType: !1196, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!139, !1099, !985}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1117, file: !29, line: 1836, baseType: !125, size: 64, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1117, file: !29, line: 1837, baseType: !1201, size: 64, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!139, !169, !1099}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1117, file: !29, line: 1838, baseType: !1205, size: 64, offset: 960)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!139, !1099, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !29, line: 1007, baseType: !113)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1117, file: !29, line: 1839, baseType: !1201, size: 64, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1117, file: !29, line: 1840, baseType: !1211, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!139, !1099, !359, !359, !139}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1117, file: !29, line: 1841, baseType: !1215, size: 64, offset: 1152)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!139, !139, !1099, !139}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1117, file: !29, line: 1842, baseType: !1219, size: 64, offset: 1216)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!139, !1099, !139, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !29, line: 1062, size: 1664, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1256, !1257, !1258, !1271, !1303}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1223, file: !29, line: 1063, baseType: !1222, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1223, file: !29, line: 1064, baseType: !159, size: 128, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1223, file: !29, line: 1065, baseType: !397, size: 128, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1223, file: !29, line: 1066, baseType: !159, size: 128, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1223, file: !29, line: 1069, baseType: !159, size: 128, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1223, file: !29, line: 1072, baseType: !1208, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1223, file: !29, line: 1073, baseType: !5, size: 32, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1223, file: !29, line: 1074, baseType: !241, size: 8, offset: 672)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1223, file: !29, line: 1075, baseType: !5, size: 32, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1223, file: !29, line: 1076, baseType: !139, size: 32, offset: 736)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1223, file: !29, line: 1077, baseType: !769, size: 128, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1223, file: !29, line: 1078, baseType: !1099, size: 64, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1223, file: !29, line: 1079, baseType: !359, size: 64, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1223, file: !29, line: 1080, baseType: !359, size: 64, offset: 1024)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1223, file: !29, line: 1082, baseType: !1240, size: 64, offset: 1088)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !29, line: 1314, size: 320, elements: !1242)
!1242 = !{!1243, !1251, !1252, !1253, !1254, !1255}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1241, file: !29, line: 1315, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1245, line: 20, baseType: !1246)
!1245 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 11, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1246, file: !1245, line: 12, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !270, line: 33, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 31, elements: !272)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1241, file: !29, line: 1316, baseType: !139, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1241, file: !29, line: 1317, baseType: !139, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1241, file: !29, line: 1318, baseType: !1240, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1241, file: !29, line: 1319, baseType: !1099, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1241, file: !29, line: 1320, baseType: !788, size: 128, align: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1223, file: !29, line: 1084, baseType: !125, size: 64, offset: 1152)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1223, file: !29, line: 1085, baseType: !125, size: 64, offset: 1216)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1223, file: !29, line: 1087, baseType: !1259, size: 64, offset: 1280)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !29, line: 1011, size: 128, elements: !1262)
!1262 = !{!1263, !1267}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1261, file: !29, line: 1012, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1222, !1222}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1261, file: !29, line: 1013, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1222}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1223, file: !29, line: 1088, baseType: !1272, size: 64, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !29, line: 1016, size: 512, elements: !1275)
!1275 = !{!1276, !1280, !1284, !1285, !1289, !1293, !1297, !1302}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1274, file: !29, line: 1017, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1208, !1208}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1274, file: !29, line: 1018, baseType: !1281, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1208}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1274, file: !29, line: 1019, baseType: !1268, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1274, file: !29, line: 1020, baseType: !1286, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!139, !1222, !139}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1274, file: !29, line: 1021, baseType: !1290, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!340, !1222}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1274, file: !29, line: 1022, baseType: !1294, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!139, !1222, !139, !162}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1274, file: !29, line: 1023, baseType: !1298, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1222, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1274, file: !29, line: 1024, baseType: !1290, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1223, file: !29, line: 1097, baseType: !1304, size: 256, offset: 1408)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !29, line: 1089, size: 256, elements: !1305)
!1305 = !{!1306, !1315, !1321}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1304, file: !29, line: 1090, baseType: !1307, size: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1308, line: 10, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1311, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1307, file: !1308, line: 11, baseType: !235, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1307, file: !1308, line: 12, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1308, line: 5, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1307, file: !1308, line: 13, baseType: !159, size: 128, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1304, file: !29, line: 1091, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1308, line: 17, size: 64, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1316, file: !1308, line: 18, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1308, line: 16, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1304, file: !29, line: 1096, baseType: !1322, size: 192)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !29, line: 1092, size: 192, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1322, file: !29, line: 1093, baseType: !159, size: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1322, file: !29, line: 1094, baseType: !139, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1322, file: !29, line: 1095, baseType: !5, size: 32, offset: 160)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1117, file: !29, line: 1843, baseType: !1328, size: 64, offset: 1280)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!114, !1099, !147, !139, !1128, !1131, !139}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1117, file: !29, line: 1844, baseType: !1332, size: 64, offset: 1344)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!125, !1099, !125, !125, !125, !125}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1117, file: !29, line: 1845, baseType: !1336, size: 64, offset: 1408)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!139, !139}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1117, file: !29, line: 1846, baseType: !1219, size: 64, offset: 1472)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1117, file: !29, line: 1847, baseType: !1341, size: 64, offset: 1536)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!114, !1344, !1099, !1131, !1128, !5}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !717, line: 53, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1117, file: !29, line: 1848, baseType: !1347, size: 64, offset: 1600)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!114, !1099, !1131, !1344, !1128, !5}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1117, file: !29, line: 1849, baseType: !1351, size: 64, offset: 1664)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!139, !1099, !118, !1354, !1301}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1117, file: !29, line: 1850, baseType: !1356, size: 64, offset: 1728)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!118, !1099, !139, !359, !359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1117, file: !29, line: 1852, baseType: !1360, size: 64, offset: 1792)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !471, !1099}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1117, file: !29, line: 1856, baseType: !1364, size: 64, offset: 1856)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!114, !1099, !359, !1099, !359, !1128, !5}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1117, file: !29, line: 1858, baseType: !1368, size: 64, offset: 1920)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!359, !1099, !359, !1099, !359, !359, !5}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1117, file: !29, line: 1861, baseType: !1211, size: 64, offset: 1984)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1100, file: !29, line: 929, baseType: !258, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1100, file: !29, line: 930, baseType: !28, size: 32, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1100, file: !29, line: 931, baseType: !518, size: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1100, file: !29, line: 932, baseType: !5, size: 32, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1100, file: !29, line: 933, baseType: !1377, size: 32, offset: 544)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !112, line: 150, baseType: !5)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1100, file: !29, line: 934, baseType: !514, size: 192, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1100, file: !29, line: 935, baseType: !359, size: 64, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1100, file: !29, line: 936, baseType: !1381, size: 192, offset: 832)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !29, line: 885, size: 192, elements: !1382)
!1382 = !{!1383, !1384, !1406, !1407, !1408, !1409}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !29, line: 886, baseType: !1244)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1381, file: !29, line: 887, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !38, line: 59, size: 768, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1395, !1396, !1397, !1398}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1386, file: !38, line: 61, baseType: !816, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1386, file: !38, line: 62, baseType: !5, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !38, line: 63, baseType: !258, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1386, file: !38, line: 65, baseType: !1392, size: 256, offset: 64)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 4)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1386, file: !38, line: 66, baseType: !393, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1386, file: !38, line: 68, baseType: !769, size: 128, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1386, file: !38, line: 69, baseType: !788, size: 128, align: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1386, file: !38, line: 70, baseType: !1399, size: 128, offset: 640)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 128, elements: !971)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !38, line: 54, size: 128, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1400, file: !38, line: 55, baseType: !139, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1400, file: !38, line: 56, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !38, line: 56, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1381, file: !29, line: 888, baseType: !37, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1381, file: !29, line: 889, baseType: !177, size: 32, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1381, file: !29, line: 889, baseType: !177, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1381, file: !29, line: 890, baseType: !139, size: 32, offset: 160)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1100, file: !29, line: 937, baseType: !1411, size: 64, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1414, line: 111, size: 1280, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1435, !1436, !1437, !1438, !1439, !1440, !1551, !1552, !1553, !1554, !1580, !1583, !1593}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1413, file: !1414, line: 112, baseType: !530, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1413, file: !1414, line: 120, baseType: !177, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1413, file: !1414, line: 121, baseType: !185, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1413, file: !1414, line: 122, baseType: !177, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1413, file: !1414, line: 123, baseType: !185, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1413, file: !1414, line: 124, baseType: !177, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1413, file: !1414, line: 125, baseType: !185, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1413, file: !1414, line: 126, baseType: !177, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1413, file: !1414, line: 127, baseType: !185, size: 32, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1413, file: !1414, line: 128, baseType: !5, size: 32, offset: 288)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1413, file: !1414, line: 129, baseType: !1427, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1428, line: 26, baseType: !1429)
!1428 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1428, line: 24, size: 64, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1429, file: !1428, line: 25, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 2)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1413, file: !1414, line: 130, baseType: !1427, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1413, file: !1414, line: 131, baseType: !1427, size: 64, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1413, file: !1414, line: 132, baseType: !1427, size: 64, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1413, file: !1414, line: 133, baseType: !1427, size: 64, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1413, file: !1414, line: 135, baseType: !241, size: 8, offset: 640)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1413, file: !1414, line: 137, baseType: !1441, size: 64, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1443, line: 189, size: 1664, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !{!1445, !1446, !1451, !1456, !1457, !1460, !1461, !1466, !1467, !1468, !1469, !1472, !1473, !1474, !1476, !1477, !1515, !1536}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1442, file: !1443, line: 190, baseType: !816, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1442, file: !1443, line: 191, baseType: !1447, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1443, line: 28, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !112, line: 98, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !121, line: 20, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !139)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1443, line: 192, baseType: !1452, size: 192, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !1443, line: 192, size: 192, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1452, file: !1443, line: 193, baseType: !159, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1452, file: !1443, line: 194, baseType: !841, size: 192, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1442, file: !1443, line: 199, baseType: !691, size: 256, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1442, file: !1443, line: 200, baseType: !1458, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1443, line: 200, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1442, file: !1443, line: 201, baseType: !113, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1443, line: 202, baseType: !1462, size: 64, offset: 640)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !1443, line: 202, size: 64, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1462, file: !1443, line: 203, baseType: !565, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1462, file: !1443, line: 204, baseType: !565, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1442, file: !1443, line: 206, baseType: !565, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1442, file: !1443, line: 207, baseType: !177, size: 32, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1442, file: !1443, line: 208, baseType: !185, size: 32, offset: 800)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1442, file: !1443, line: 209, baseType: !1470, size: 32, offset: 832)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1443, line: 31, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !112, line: 104, baseType: !235)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1442, file: !1443, line: 210, baseType: !174, size: 16, offset: 864)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1442, file: !1443, line: 211, baseType: !174, size: 16, offset: 880)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1442, file: !1443, line: 215, baseType: !1475, size: 16, offset: 896)
!1475 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1442, file: !1443, line: 222, baseType: !125, size: 64, offset: 960)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1443, line: 239, baseType: !1478, size: 320, offset: 1024)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !1443, line: 239, size: 320, elements: !1479)
!1479 = !{!1480, !1507}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1478, file: !1443, line: 240, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1443, line: 108, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1496, !1499, !1506}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1481, file: !1443, line: 110, baseType: !125, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1443, line: 111, baseType: !1485, size: 64, offset: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1443, line: 111, size: 64, elements: !1486)
!1486 = !{!1487, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1443, line: 112, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1443, line: 112, size: 64, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1488, file: !1443, line: 114, baseType: !1152, size: 16)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1488, file: !1443, line: 115, baseType: !1492, size: 48, offset: 16)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 48, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 6)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1485, file: !1443, line: 121, baseType: !125, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1443, line: 123, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1443, line: 96, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1481, file: !1443, line: 124, baseType: !1500, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1443, line: 102, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1501, file: !1443, line: 103, baseType: !788, size: 128, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1501, file: !1443, line: 104, baseType: !816, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1501, file: !1443, line: 105, baseType: !340, size: 8, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1481, file: !1443, line: 125, baseType: !295, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1443, line: 241, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1443, line: 241, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1508, file: !1443, line: 242, baseType: !125, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1508, file: !1443, line: 243, baseType: !125, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1508, file: !1443, line: 244, baseType: !1497, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1508, file: !1443, line: 245, baseType: !1500, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1508, file: !1443, line: 246, baseType: !321, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1443, line: 254, baseType: !1516, size: 256, offset: 1344)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !1443, line: 254, size: 256, elements: !1517)
!1517 = !{!1518, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1516, file: !1443, line: 255, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1443, line: 128, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1519, file: !1443, line: 129, baseType: !113, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !1443, line: 130, baseType: !1523, size: 256)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !1393)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1443, line: 256, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1443, line: 256, size: 256, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1525, file: !1443, line: 258, baseType: !159, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1525, file: !1443, line: 259, baseType: !1529, size: 128, offset: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1530, line: 22, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1529, file: !1530, line: 23, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1530, line: 23, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1529, file: !1530, line: 24, baseType: !125, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1442, file: !1443, line: 274, baseType: !1537, size: 64, offset: 1600)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1443, line: 170, size: 192, elements: !1539)
!1539 = !{!1540, !1549, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1538, file: !1443, line: 171, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1443, line: 165, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!139, !1441, !1545, !1547, !1441}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1538, file: !1443, line: 172, baseType: !1441, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1538, file: !1443, line: 173, baseType: !1497, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1413, file: !1414, line: 138, baseType: !1441, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1413, file: !1414, line: 139, baseType: !1441, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1413, file: !1414, line: 140, baseType: !1441, size: 64, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1413, file: !1414, line: 145, baseType: !1555, size: 64, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1557, line: 13, size: 896, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1556, file: !1557, line: 14, baseType: !816, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1556, file: !1557, line: 15, baseType: !530, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1556, file: !1557, line: 16, baseType: !530, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1556, file: !1557, line: 21, baseType: !518, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1556, file: !1557, line: 27, baseType: !125, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1556, file: !1557, line: 28, baseType: !125, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1556, file: !1557, line: 29, baseType: !518, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1556, file: !1557, line: 32, baseType: !397, size: 128, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1556, file: !1557, line: 33, baseType: !177, size: 32, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1556, file: !1557, line: 37, baseType: !518, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1556, file: !1557, line: 44, baseType: !1570, size: 256, offset: 640)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1571, line: 15, size: 256, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1570, file: !1571, line: 16, baseType: !697)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1570, file: !1571, line: 18, baseType: !139, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1570, file: !1571, line: 19, baseType: !139, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1570, file: !1571, line: 20, baseType: !139, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1570, file: !1571, line: 21, baseType: !139, size: 32, offset: 96)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1570, file: !1571, line: 22, baseType: !125, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !1571, line: 23, baseType: !125, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1413, file: !1414, line: 146, baseType: !1581, size: 64, offset: 1024)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !178, line: 18, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1413, file: !1414, line: 147, baseType: !1584, size: 64, offset: 1088)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1414, line: 25, size: 64, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1585, file: !1414, line: 26, baseType: !530, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1585, file: !1414, line: 27, baseType: !139, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1585, file: !1414, line: 28, baseType: !1590, offset: 64)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 0)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1414, line: 149, baseType: !1594, size: 128, offset: 1152)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1413, file: !1414, line: 149, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1594, file: !1414, line: 150, baseType: !139, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1594, file: !1414, line: 151, baseType: !788, size: 128, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1100, file: !29, line: 938, baseType: !1599, size: 256, offset: 1088)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !29, line: 896, size: 256, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1599, file: !29, line: 897, baseType: !125, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1599, file: !29, line: 898, baseType: !5, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1599, file: !29, line: 899, baseType: !5, size: 32, offset: 96)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1599, file: !29, line: 902, baseType: !5, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1599, file: !29, line: 903, baseType: !5, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1599, file: !29, line: 904, baseType: !359, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1100, file: !29, line: 940, baseType: !120, size: 64, offset: 1344)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1100, file: !29, line: 945, baseType: !113, size: 64, offset: 1408)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1100, file: !29, line: 949, baseType: !159, size: 128, offset: 1472)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1100, file: !29, line: 950, baseType: !159, size: 128, offset: 1600)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1100, file: !29, line: 952, baseType: !165, size: 64, offset: 1728)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1100, file: !29, line: 953, baseType: !1613, size: 32, offset: 1792)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1614, line: 8, baseType: !235)
!1614 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1100, file: !29, line: 954, baseType: !1613, size: 32, offset: 1824)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !986, file: !149, line: 362, baseType: !113, size: 64, offset: 1344)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !986, file: !149, line: 365, baseType: !518, size: 64, offset: 1408)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !986, file: !149, line: 373, baseType: !1619, offset: 1472)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !149, line: 296, elements: !272)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !982, file: !149, line: 391, baseType: !942, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !982, file: !149, line: 392, baseType: !120, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !982, file: !149, line: 394, baseType: !1332, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !982, file: !149, line: 398, baseType: !125, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !982, file: !149, line: 399, baseType: !125, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !982, file: !149, line: 405, baseType: !125, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !982, file: !149, line: 406, baseType: !125, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !982, file: !149, line: 407, baseType: !1628, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !473, line: 286, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 286, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1630, file: !473, line: 286, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1001, line: 18, baseType: !125)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !982, file: !149, line: 416, baseType: !530, size: 32, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !982, file: !149, line: 428, baseType: !530, size: 32, offset: 608)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !982, file: !149, line: 437, baseType: !530, size: 32, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !982, file: !149, line: 447, baseType: !530, size: 32, offset: 672)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !982, file: !149, line: 450, baseType: !518, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !982, file: !149, line: 452, baseType: !139, size: 32, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !982, file: !149, line: 454, baseType: !258, offset: 800)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !982, file: !149, line: 457, baseType: !691, size: 256, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !982, file: !149, line: 459, baseType: !159, size: 128, offset: 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !982, file: !149, line: 466, baseType: !125, size: 64, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !982, file: !149, line: 467, baseType: !125, size: 64, offset: 1280)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !982, file: !149, line: 469, baseType: !125, size: 64, offset: 1344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !982, file: !149, line: 470, baseType: !125, size: 64, offset: 1408)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !982, file: !149, line: 471, baseType: !520, size: 64, offset: 1472)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !982, file: !149, line: 472, baseType: !125, size: 64, offset: 1536)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !982, file: !149, line: 473, baseType: !125, size: 64, offset: 1600)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !982, file: !149, line: 474, baseType: !125, size: 64, offset: 1664)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !982, file: !149, line: 475, baseType: !125, size: 64, offset: 1728)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !982, file: !149, line: 477, baseType: !258, offset: 1792)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !982, file: !149, line: 478, baseType: !125, size: 64, offset: 1792)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !982, file: !149, line: 478, baseType: !125, size: 64, offset: 1856)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !982, file: !149, line: 478, baseType: !125, size: 64, offset: 1920)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !982, file: !149, line: 478, baseType: !125, size: 64, offset: 1984)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !982, file: !149, line: 479, baseType: !125, size: 64, offset: 2048)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !982, file: !149, line: 479, baseType: !125, size: 64, offset: 2112)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !982, file: !149, line: 479, baseType: !125, size: 64, offset: 2176)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !982, file: !149, line: 480, baseType: !125, size: 64, offset: 2240)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !982, file: !149, line: 480, baseType: !125, size: 64, offset: 2304)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !982, file: !149, line: 480, baseType: !125, size: 64, offset: 2368)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !982, file: !149, line: 480, baseType: !125, size: 64, offset: 2432)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !982, file: !149, line: 482, baseType: !1665, size: 2816, offset: 2496)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2816, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 44)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !982, file: !149, line: 488, baseType: !1669, size: 256, offset: 5312)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1670, line: 60, size: 256, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1669, file: !1670, line: 61, baseType: !1673, size: 256)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 256, elements: !1393)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !982, file: !149, line: 490, baseType: !1675, size: 64, offset: 5568)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !149, line: 490, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !982, file: !149, line: 493, baseType: !1678, size: 896, offset: 5632)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1679, line: 53, baseType: !1680)
!1679 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1679, line: 13, size: 896, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1688, !1689, !1690, !1691, !1695, !1696, !1697}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1680, file: !1679, line: 18, baseType: !120, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1680, file: !1679, line: 28, baseType: !520, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1680, file: !1679, line: 31, baseType: !691, size: 256, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1680, file: !1679, line: 32, baseType: !1686, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1679, line: 32, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1680, file: !1679, line: 37, baseType: !174, size: 16, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1680, file: !1679, line: 40, baseType: !514, size: 192, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1680, file: !1679, line: 41, baseType: !113, size: 64, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1680, file: !1679, line: 42, baseType: !1692, size: 64, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1679, line: 42, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1680, file: !1679, line: 44, baseType: !530, size: 32, offset: 832)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1680, file: !1679, line: 50, baseType: !1152, size: 16, offset: 864)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1680, file: !1679, line: 51, baseType: !1698, size: 16, offset: 880)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !121, line: 18, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !1475)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !149, line: 495, baseType: !125, size: 64, offset: 6528)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !982, file: !149, line: 497, baseType: !1702, size: 64, offset: 6592)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !149, line: 381, size: 384, elements: !1704)
!1704 = !{!1705, !1706, !1712}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1703, file: !149, line: 382, baseType: !530, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1703, file: !149, line: 383, baseType: !1707, size: 128, offset: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !149, line: 376, size: 128, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1707, file: !149, line: 377, baseType: !803, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1707, file: !149, line: 378, baseType: !1711, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1703, file: !149, line: 384, baseType: !1713, size: 192, offset: 192)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1714, line: 26, size: 192, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1713, file: !1714, line: 27, baseType: !5, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1713, file: !1714, line: 28, baseType: !1718, size: 128, offset: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1719, line: 43, size: 128, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1718, file: !1719, line: 44, baseType: !697)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1718, file: !1719, line: 45, baseType: !159, size: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !982, file: !149, line: 500, baseType: !258, offset: 6656)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !982, file: !149, line: 501, baseType: !1725, size: 64, offset: 6656)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !149, line: 387, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !982, file: !149, line: 516, baseType: !1581, size: 64, offset: 6720)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !982, file: !149, line: 519, baseType: !1099, size: 64, offset: 6784)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !982, file: !149, line: 521, baseType: !1730, size: 64, offset: 6848)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !149, line: 521, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !982, file: !149, line: 545, baseType: !530, size: 32, offset: 6912)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !982, file: !149, line: 548, baseType: !340, size: 8, offset: 6944)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !982, file: !149, line: 550, baseType: !1735, offset: 6952)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1736, line: 142, elements: !272)
!1736 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !982, file: !149, line: 554, baseType: !1738, size: 256, offset: 6976)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1739, line: 102, size: 256, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1738, file: !1739, line: 103, baseType: !518, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1738, file: !1739, line: 104, baseType: !159, size: 128, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1738, file: !1739, line: 105, baseType: !1744, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1739, line: 21, baseType: !1745)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !982, file: !149, line: 557, baseType: !235, size: 32, offset: 7232)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !979, file: !149, line: 565, baseType: !1751, offset: 7296)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: -1)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !804, file: !717, line: 758, baseType: !978, size: 64, offset: 3968)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !804, file: !717, line: 761, baseType: !1756, size: 320, offset: 4032)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1670, line: 34, size: 320, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1756, file: !1670, line: 35, baseType: !120, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1756, file: !1670, line: 36, baseType: !1760, size: 256, offset: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 256, elements: !1393)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !804, file: !717, line: 766, baseType: !139, size: 32, offset: 4352)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !804, file: !717, line: 767, baseType: !139, size: 32, offset: 4384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !804, file: !717, line: 768, baseType: !139, size: 32, offset: 4416)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !804, file: !717, line: 770, baseType: !139, size: 32, offset: 4448)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !804, file: !717, line: 772, baseType: !125, size: 64, offset: 4480)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !804, file: !717, line: 775, baseType: !5, size: 32, offset: 4544)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !804, file: !717, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !804, file: !717, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !804, file: !717, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !804, file: !717, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !804, file: !717, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !804, file: !717, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !804, file: !717, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !804, file: !717, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !804, file: !717, line: 831, baseType: !125, size: 64, offset: 4672)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !804, file: !717, line: 833, baseType: !1777, size: 384, offset: 4736)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !46, line: 25, size: 384, elements: !1778)
!1778 = !{!1779, !1784}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1777, file: !46, line: 26, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!118, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !46, line: 27, baseType: !1785, size: 320, offset: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1777, file: !46, line: 27, size: 320, elements: !1786)
!1786 = !{!1787, !1797, !1822}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1785, file: !46, line: 36, baseType: !1788, size: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !46, line: 29, size: 320, elements: !1789)
!1789 = !{!1790, !1792, !1793, !1794, !1795, !1796}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1788, file: !46, line: 30, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1788, file: !46, line: 31, baseType: !235, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1788, file: !46, line: 32, baseType: !235, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1788, file: !46, line: 33, baseType: !235, size: 32, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1788, file: !46, line: 34, baseType: !120, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1788, file: !46, line: 35, baseType: !1791, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1785, file: !46, line: 46, baseType: !1798, size: 192)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !46, line: 38, size: 192, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1821}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1798, file: !46, line: 39, baseType: !927, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1798, file: !46, line: 40, baseType: !45, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !46, line: 41, baseType: !1803, size: 64, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !46, line: 41, size: 64, elements: !1804)
!1804 = !{!1805, !1813}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1803, file: !46, line: 42, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1808, line: 7, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1807, file: !1808, line: 8, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !116, line: 93, baseType: !361)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1807, file: !1808, line: 9, baseType: !361, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1803, file: !46, line: 43, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1816, line: 7, size: 64, elements: !1817)
!1816 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1817 = !{!1818, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1815, file: !1816, line: 8, baseType: !1819, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1816, line: 5, baseType: !1449)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1815, file: !1816, line: 9, baseType: !1449, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1798, file: !46, line: 45, baseType: !120, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1785, file: !46, line: 54, baseType: !1823, size: 256)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !46, line: 48, size: 256, elements: !1824)
!1824 = !{!1825, !1828, !1829, !1830, !1831}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1823, file: !46, line: 49, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !46, line: 14, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1823, file: !46, line: 50, baseType: !139, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1823, file: !46, line: 51, baseType: !139, size: 32, offset: 96)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1823, file: !46, line: 52, baseType: !125, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1823, file: !46, line: 53, baseType: !125, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !804, file: !717, line: 835, baseType: !1833, size: 32, offset: 5120)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !112, line: 22, baseType: !1834)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !116, line: 28, baseType: !139)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !804, file: !717, line: 836, baseType: !1833, size: 32, offset: 5152)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !804, file: !717, line: 840, baseType: !125, size: 64, offset: 5184)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !804, file: !717, line: 849, baseType: !803, size: 64, offset: 5248)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !804, file: !717, line: 852, baseType: !803, size: 64, offset: 5312)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !804, file: !717, line: 857, baseType: !159, size: 128, offset: 5376)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !804, file: !717, line: 858, baseType: !159, size: 128, offset: 5504)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !804, file: !717, line: 859, baseType: !803, size: 64, offset: 5632)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !804, file: !717, line: 867, baseType: !159, size: 128, offset: 5696)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !804, file: !717, line: 868, baseType: !159, size: 128, offset: 5824)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !804, file: !717, line: 871, baseType: !1385, size: 64, offset: 5952)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !804, file: !717, line: 872, baseType: !1846, size: 512, offset: 6016)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 512, elements: !1393)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !804, file: !717, line: 873, baseType: !159, size: 128, offset: 6528)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !804, file: !717, line: 874, baseType: !159, size: 128, offset: 6656)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !804, file: !717, line: 876, baseType: !1850, size: 64, offset: 6784)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !804, file: !717, line: 879, baseType: !465, size: 64, offset: 6848)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !804, file: !717, line: 882, baseType: !465, size: 64, offset: 6912)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !804, file: !717, line: 884, baseType: !120, size: 64, offset: 6976)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !804, file: !717, line: 885, baseType: !120, size: 64, offset: 7040)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !804, file: !717, line: 890, baseType: !120, size: 64, offset: 7104)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !804, file: !717, line: 891, baseType: !1857, size: 128, offset: 7168)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !717, line: 242, size: 128, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1857, file: !717, line: 244, baseType: !120, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1857, file: !717, line: 245, baseType: !120, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !717, line: 246, baseType: !697, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !804, file: !717, line: 900, baseType: !125, size: 64, offset: 7296)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !804, file: !717, line: 901, baseType: !125, size: 64, offset: 7360)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !804, file: !717, line: 904, baseType: !120, size: 64, offset: 7424)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !804, file: !717, line: 907, baseType: !120, size: 64, offset: 7488)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !804, file: !717, line: 910, baseType: !125, size: 64, offset: 7552)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !804, file: !717, line: 911, baseType: !125, size: 64, offset: 7616)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !804, file: !717, line: 914, baseType: !1869, size: 640, offset: 7680)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1870, line: 123, size: 640, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1878, !1879}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1869, file: !1870, line: 124, baseType: !1873, size: 576)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, size: 576, elements: !409)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1870, line: 108, size: 192, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1874, file: !1870, line: 109, baseType: !120, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1874, file: !1870, line: 110, baseType: !936, size: 128, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1869, file: !1870, line: 125, baseType: !5, size: 32, offset: 576)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1869, file: !1870, line: 126, baseType: !5, size: 32, offset: 608)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !804, file: !717, line: 917, baseType: !1881, size: 192, offset: 8320)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1870, line: 134, size: 192, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1881, file: !1870, line: 135, baseType: !788, size: 128, align: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1881, file: !1870, line: 136, baseType: !5, size: 32, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !804, file: !717, line: 923, baseType: !1411, size: 64, offset: 8512)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !804, file: !717, line: 926, baseType: !1411, size: 64, offset: 8576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !804, file: !717, line: 929, baseType: !1411, size: 64, offset: 8640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !804, file: !717, line: 933, baseType: !1441, size: 64, offset: 8704)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !804, file: !717, line: 943, baseType: !1890, size: 128, offset: 8768)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !1891)
!1891 = !{!1892}
!1892 = !DISubrange(count: 16)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !804, file: !717, line: 945, baseType: !1894, size: 64, offset: 8896)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !717, line: 49, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !804, file: !717, line: 956, baseType: !1897, size: 64, offset: 8960)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !717, line: 45, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !804, file: !717, line: 959, baseType: !1900, size: 64, offset: 9024)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !717, line: 959, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !804, file: !717, line: 962, baseType: !1903, size: 64, offset: 9088)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !717, line: 66, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !804, file: !717, line: 966, baseType: !1906, size: 64, offset: 9152)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !717, line: 50, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !804, file: !717, line: 969, baseType: !1909, size: 64, offset: 9216)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1911, line: 82, size: 7296, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1948, !1957, !1958, !1960, !1961, !1962, !1965, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1995, !1996, !2003, !2004, !2005, !2006, !2007, !2008}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1910, file: !1911, line: 83, baseType: !816, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1910, file: !1911, line: 84, baseType: !530, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1910, file: !1911, line: 85, baseType: !139, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1910, file: !1911, line: 86, baseType: !159, size: 128, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1910, file: !1911, line: 88, baseType: !769, size: 128, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1910, file: !1911, line: 91, baseType: !803, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1910, file: !1911, line: 94, baseType: !1920, size: 192, offset: 448)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1921, line: 30, size: 192, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1920, file: !1921, line: 31, baseType: !159, size: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1920, file: !1921, line: 32, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1926, line: 25, baseType: !1927)
!1926 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1926, line: 23, size: 64, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1927, file: !1926, line: 24, baseType: !970, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1910, file: !1911, line: 97, baseType: !393, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1910, file: !1911, line: 100, baseType: !139, size: 32, offset: 704)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1910, file: !1911, line: 106, baseType: !139, size: 32, offset: 736)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1910, file: !1911, line: 107, baseType: !803, size: 64, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1910, file: !1911, line: 110, baseType: !139, size: 32, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1911, line: 111, baseType: !5, size: 32, offset: 864)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1910, file: !1911, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1910, file: !1911, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1910, file: !1911, line: 128, baseType: !139, size: 32, offset: 928)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1910, file: !1911, line: 129, baseType: !159, size: 128, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1910, file: !1911, line: 132, baseType: !885, size: 512, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1910, file: !1911, line: 133, baseType: !893, size: 64, offset: 1600)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1910, file: !1911, line: 140, baseType: !1943, size: 256, offset: 1664)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1944, size: 256, elements: !1433)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1911, line: 38, size: 128, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1944, file: !1911, line: 39, baseType: !120, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1944, file: !1911, line: 40, baseType: !120, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1910, file: !1911, line: 146, baseType: !1949, size: 192, offset: 1920)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1911, line: 66, size: 192, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1949, file: !1911, line: 67, baseType: !1952, size: 192)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1911, line: 47, size: 192, elements: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1952, file: !1911, line: 48, baseType: !520, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1952, file: !1911, line: 49, baseType: !520, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1952, file: !1911, line: 50, baseType: !520, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1910, file: !1911, line: 150, baseType: !1869, size: 640, offset: 2112)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1910, file: !1911, line: 153, baseType: !1959, size: 256, offset: 2752)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 256, elements: !1393)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1910, file: !1911, line: 159, baseType: !1385, size: 64, offset: 3008)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1910, file: !1911, line: 162, baseType: !139, size: 32, offset: 3072)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1910, file: !1911, line: 164, baseType: !1963, size: 64, offset: 3136)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1911, line: 164, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1910, file: !1911, line: 175, baseType: !1966, size: 32, offset: 3200)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !208, line: 805, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 798, size: 32, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1967, file: !208, line: 803, baseType: !207, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !208, line: 804, baseType: !258, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1910, file: !1911, line: 176, baseType: !120, size: 64, offset: 3264)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1910, file: !1911, line: 176, baseType: !120, size: 64, offset: 3328)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1910, file: !1911, line: 176, baseType: !120, size: 64, offset: 3392)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1910, file: !1911, line: 176, baseType: !120, size: 64, offset: 3456)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1910, file: !1911, line: 177, baseType: !120, size: 64, offset: 3520)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1910, file: !1911, line: 178, baseType: !120, size: 64, offset: 3584)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1910, file: !1911, line: 179, baseType: !1857, size: 128, offset: 3648)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1910, file: !1911, line: 180, baseType: !125, size: 64, offset: 3776)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1910, file: !1911, line: 180, baseType: !125, size: 64, offset: 3840)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1910, file: !1911, line: 180, baseType: !125, size: 64, offset: 3904)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1910, file: !1911, line: 180, baseType: !125, size: 64, offset: 3968)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1910, file: !1911, line: 181, baseType: !125, size: 64, offset: 4032)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1910, file: !1911, line: 181, baseType: !125, size: 64, offset: 4096)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1910, file: !1911, line: 181, baseType: !125, size: 64, offset: 4160)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1910, file: !1911, line: 181, baseType: !125, size: 64, offset: 4224)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1910, file: !1911, line: 182, baseType: !125, size: 64, offset: 4288)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1910, file: !1911, line: 182, baseType: !125, size: 64, offset: 4352)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1910, file: !1911, line: 182, baseType: !125, size: 64, offset: 4416)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1910, file: !1911, line: 182, baseType: !125, size: 64, offset: 4480)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1910, file: !1911, line: 183, baseType: !125, size: 64, offset: 4544)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1910, file: !1911, line: 183, baseType: !125, size: 64, offset: 4608)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1910, file: !1911, line: 184, baseType: !1993, offset: 4672)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1994, line: 12, elements: !272)
!1994 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1910, file: !1911, line: 192, baseType: !124, size: 64, offset: 4672)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1910, file: !1911, line: 203, baseType: !1997, size: 2048, offset: 4736)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1998, size: 2048, elements: !1891)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1999, line: 43, size: 128, elements: !2000)
!1999 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1998, file: !1999, line: 44, baseType: !1130, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1998, file: !1999, line: 45, baseType: !1130, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1910, file: !1911, line: 220, baseType: !340, size: 8, offset: 6784)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1910, file: !1911, line: 221, baseType: !1475, size: 16, offset: 6800)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1910, file: !1911, line: 222, baseType: !1475, size: 16, offset: 6816)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1910, file: !1911, line: 224, baseType: !978, size: 64, offset: 6848)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1910, file: !1911, line: 227, baseType: !514, size: 192, offset: 6912)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1910, file: !1911, line: 233, baseType: !514, size: 192, offset: 7104)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !804, file: !717, line: 970, baseType: !2010, size: 64, offset: 9280)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1911, line: 20, size: 16576, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2011, file: !1911, line: 21, baseType: !258)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2011, file: !1911, line: 22, baseType: !816, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2011, file: !1911, line: 23, baseType: !769, size: 128, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2011, file: !1911, line: 24, baseType: !2017, size: 16384, offset: 192)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2018, size: 16384, elements: !2038)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1921, line: 49, size: 256, elements: !2019)
!2019 = !{!2020}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2018, file: !1921, line: 50, baseType: !2021, size: 256)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1921, line: 35, size: 256, elements: !2022)
!2022 = !{!2023, !2030, !2031, !2037}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2021, file: !1921, line: 37, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2025, line: 19, baseType: !2026)
!2025 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2025, line: 18, baseType: !2028)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !139}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2021, file: !1921, line: 38, baseType: !125, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2021, file: !1921, line: 44, baseType: !2032, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2025, line: 22, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2025, line: 21, baseType: !2035)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2021, file: !1921, line: 46, baseType: !1925, size: 64, offset: 192)
!2038 = !{!2039}
!2039 = !DISubrange(count: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !804, file: !717, line: 971, baseType: !1925, size: 64, offset: 9344)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !804, file: !717, line: 972, baseType: !1925, size: 64, offset: 9408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !804, file: !717, line: 974, baseType: !1925, size: 64, offset: 9472)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !804, file: !717, line: 975, baseType: !1920, size: 192, offset: 9536)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !804, file: !717, line: 976, baseType: !125, size: 64, offset: 9728)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !804, file: !717, line: 977, baseType: !1128, size: 64, offset: 9792)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !804, file: !717, line: 978, baseType: !5, size: 32, offset: 9856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !804, file: !717, line: 980, baseType: !791, size: 64, offset: 9920)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !804, file: !717, line: 989, baseType: !2049, size: 128, offset: 9984)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2050, line: 35, size: 128, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2049, file: !2050, line: 36, baseType: !139, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2049, file: !2050, line: 37, baseType: !530, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2049, file: !2050, line: 38, baseType: !2055, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2050, line: 23, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !804, file: !717, line: 992, baseType: !120, size: 64, offset: 10112)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !804, file: !717, line: 993, baseType: !120, size: 64, offset: 10176)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !804, file: !717, line: 996, baseType: !258, offset: 10240)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !804, file: !717, line: 999, baseType: !697, offset: 10240)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !804, file: !717, line: 1001, baseType: !2062, size: 64, offset: 10240)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !717, line: 636, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2062, file: !717, line: 637, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !804, file: !717, line: 1005, baseType: !939, size: 128, offset: 10304)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !804, file: !717, line: 1007, baseType: !803, size: 64, offset: 10432)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !804, file: !717, line: 1009, baseType: !2069, size: 64, offset: 10496)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !717, line: 1009, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !804, file: !717, line: 1043, baseType: !113, size: 64, offset: 10560)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !804, file: !717, line: 1046, baseType: !2073, size: 64, offset: 10624)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !717, line: 41, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !804, file: !717, line: 1050, baseType: !2076, size: 64, offset: 10688)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !717, line: 42, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !804, file: !717, line: 1054, baseType: !2079, size: 64, offset: 10752)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !717, line: 55, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !804, file: !717, line: 1056, baseType: !715, size: 64, offset: 10816)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !804, file: !717, line: 1058, baseType: !2083, size: 64, offset: 10880)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2085, line: 99, size: 704, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2099, !2120, !2121}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2084, file: !2085, line: 100, baseType: !518, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2084, file: !2085, line: 101, baseType: !530, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2084, file: !2085, line: 102, baseType: !530, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2084, file: !2085, line: 105, baseType: !258, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2084, file: !2085, line: 107, baseType: !174, size: 16, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2084, file: !2085, line: 109, baseType: !2093, size: 128, offset: 192)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2094, line: 292, size: 128, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096, !2097, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2093, file: !2094, line: 293, baseType: !258)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2093, file: !2094, line: 295, baseType: !111, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2093, file: !2094, line: 296, baseType: !113, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2084, file: !2085, line: 110, baseType: !2100, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2085, line: 73, size: 448, elements: !2102)
!2102 = !{!2103, !2106, !2107, !2114, !2119}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2101, file: !2085, line: 74, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2085, line: 74, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2101, file: !2085, line: 75, baseType: !2083, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !2085, line: 83, baseType: !2108, size: 128, offset: 128)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2085, line: 83, size: 128, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2108, file: !2085, line: 84, baseType: !159, size: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2108, file: !2085, line: 85, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !149, line: 117, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !2085, line: 87, baseType: !2115, size: 128, offset: 256)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2085, line: 87, size: 128, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2115, file: !2085, line: 88, baseType: !397, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2115, file: !2085, line: 89, baseType: !788, size: 128, align: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2085, line: 92, baseType: !5, size: 32, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2084, file: !2085, line: 111, baseType: !393, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2084, file: !2085, line: 113, baseType: !1738, size: 256, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !804, file: !717, line: 1061, baseType: !2123, size: 64, offset: 10944)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !717, line: 43, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !804, file: !717, line: 1064, baseType: !125, size: 64, offset: 11008)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !804, file: !717, line: 1065, baseType: !2127, size: 64, offset: 11072)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1921, line: 14, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1921, line: 12, size: 384, elements: !2130)
!2130 = !{!2131}
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !1921, line: 13, baseType: !2132, size: 384)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2129, file: !1921, line: 13, size: 384, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2132, file: !1921, line: 13, baseType: !139, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2132, file: !1921, line: 13, baseType: !139, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2132, file: !1921, line: 13, baseType: !139, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2132, file: !1921, line: 13, baseType: !2138, size: 256, offset: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2139, line: 32, size: 256, elements: !2140)
!2139 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2146, !2159, !2165, !2174, !2194, !2199}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2138, file: !2139, line: 37, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 34, size: 64, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2142, file: !2139, line: 35, baseType: !1834, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2142, file: !2139, line: 36, baseType: !183, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2138, file: !2139, line: 45, baseType: !2147, size: 192)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 40, size: 192, elements: !2148)
!2148 = !{!2149, !2151, !2152, !2158}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2147, file: !2139, line: 41, baseType: !2150, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !116, line: 95, baseType: !139)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2147, file: !2139, line: 42, baseType: !139, size: 32, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2147, file: !2139, line: 43, baseType: !2153, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2139, line: 11, baseType: !2154)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2139, line: 8, size: 64, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2154, file: !2139, line: 9, baseType: !139, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2154, file: !2139, line: 10, baseType: !113, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2147, file: !2139, line: 44, baseType: !139, size: 32, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2138, file: !2139, line: 52, baseType: !2160, size: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 48, size: 128, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2160, file: !2139, line: 49, baseType: !1834, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2160, file: !2139, line: 50, baseType: !183, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2160, file: !2139, line: 51, baseType: !2153, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2138, file: !2139, line: 61, baseType: !2166, size: 256)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 55, size: 256, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2173}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2166, file: !2139, line: 56, baseType: !1834, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2166, file: !2139, line: 57, baseType: !183, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2166, file: !2139, line: 58, baseType: !139, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2166, file: !2139, line: 59, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !116, line: 94, baseType: !117)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2166, file: !2139, line: 60, baseType: !2172, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2138, file: !2139, line: 95, baseType: !2175, size: 256)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 64, size: 256, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2175, file: !2139, line: 65, baseType: !113, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2139, line: 77, baseType: !2179, size: 192, offset: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2139, line: 77, size: 192, elements: !2180)
!2180 = !{!2181, !2182, !2189}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2179, file: !2139, line: 82, baseType: !1475, size: 16)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2179, file: !2139, line: 88, baseType: !2183, size: 192)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2139, line: 84, size: 192, elements: !2184)
!2184 = !{!2185, !2187, !2188}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2183, file: !2139, line: 85, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !923)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2183, file: !2139, line: 86, baseType: !113, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2183, file: !2139, line: 87, baseType: !113, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2179, file: !2139, line: 93, baseType: !2190, size: 96)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !2139, line: 90, size: 96, elements: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2190, file: !2139, line: 91, baseType: !2186, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2190, file: !2139, line: 92, baseType: !128, size: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2138, file: !2139, line: 101, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 98, size: 128, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2195, file: !2139, line: 99, baseType: !118, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2195, file: !2139, line: 100, baseType: !139, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2138, file: !2139, line: 108, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2139, line: 104, size: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2200, file: !2139, line: 105, baseType: !113, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2200, file: !2139, line: 106, baseType: !139, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2200, file: !2139, line: 107, baseType: !5, size: 32, offset: 96)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !804, file: !717, line: 1067, baseType: !1993, offset: 11136)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !804, file: !717, line: 1099, baseType: !2207, size: 64, offset: 11136)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !717, line: 56, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !804, file: !717, line: 1103, baseType: !159, size: 128, offset: 11200)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !804, file: !717, line: 1104, baseType: !2211, size: 64, offset: 11328)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !717, line: 46, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !804, file: !717, line: 1105, baseType: !514, size: 192, offset: 11392)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !804, file: !717, line: 1106, baseType: !5, size: 32, offset: 11584)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !804, file: !717, line: 1109, baseType: !2216, size: 128, offset: 11648)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2217, size: 128, elements: !1433)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !717, line: 51, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !804, file: !717, line: 1110, baseType: !514, size: 192, offset: 11776)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !804, file: !717, line: 1111, baseType: !159, size: 128, offset: 11968)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !804, file: !717, line: 1173, baseType: !2222, size: 64, offset: 12096)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2224, line: 62, size: 256, align: 256, elements: !2225)
!2224 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227, !2228, !2233}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2223, file: !2224, line: 75, baseType: !128, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2223, file: !2224, line: 90, baseType: !128, size: 32, offset: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2223, file: !2224, line: 124, baseType: !2229, size: 64, offset: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2223, file: !2224, line: 109, size: 64, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2229, file: !2224, line: 110, baseType: !122, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2229, file: !2224, line: 112, baseType: !122, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2223, file: !2224, line: 144, baseType: !128, size: 32, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !804, file: !717, line: 1174, baseType: !235, size: 32, offset: 12160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !804, file: !717, line: 1179, baseType: !125, size: 64, offset: 12224)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !804, file: !717, line: 1182, baseType: !2237, size: 128, offset: 12288)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1670, line: 76, size: 128, elements: !2238)
!2238 = !{!2239, !2244, !2245}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2237, file: !1670, line: 85, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2241, line: 7, size: 64, elements: !2242)
!2241 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2240, file: !2241, line: 12, baseType: !967, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2237, file: !1670, line: 88, baseType: !340, size: 8, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2237, file: !1670, line: 95, baseType: !340, size: 8, offset: 72)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !717, line: 1184, baseType: !2247, size: 128, offset: 12416)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !717, line: 1184, size: 128, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2247, file: !717, line: 1185, baseType: !816, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2247, file: !717, line: 1186, baseType: !788, size: 128, align: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !804, file: !717, line: 1190, baseType: !1344, size: 64, offset: 12544)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !804, file: !717, line: 1192, baseType: !2253, size: 128, offset: 12608)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1670, line: 64, size: 128, elements: !2254)
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2253, file: !1670, line: 65, baseType: !147, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2253, file: !1670, line: 67, baseType: !128, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2253, file: !1670, line: 68, baseType: !128, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !804, file: !717, line: 1206, baseType: !139, size: 32, offset: 12736)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !804, file: !717, line: 1207, baseType: !139, size: 32, offset: 12768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !804, file: !717, line: 1209, baseType: !125, size: 64, offset: 12800)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !804, file: !717, line: 1219, baseType: !120, size: 64, offset: 12864)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !804, file: !717, line: 1220, baseType: !120, size: 64, offset: 12928)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !804, file: !717, line: 1317, baseType: !139, size: 32, offset: 12992)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !804, file: !717, line: 1319, baseType: !803, size: 64, offset: 13056)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !804, file: !717, line: 1322, baseType: !2266, size: 64, offset: 13120)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2268, line: 56, size: 512, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2278}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2267, file: !2268, line: 57, baseType: !2266, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2267, file: !2268, line: 58, baseType: !113, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2267, file: !2268, line: 59, baseType: !125, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 60, baseType: !125, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2267, file: !2268, line: 61, baseType: !146, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2267, file: !2268, line: 62, baseType: !5, size: 32, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2267, file: !2268, line: 63, baseType: !2277, size: 64, offset: 384)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !112, line: 153, baseType: !120)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2267, file: !2268, line: 64, baseType: !2279, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !804, file: !717, line: 1326, baseType: !816, size: 32, offset: 13184)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !804, file: !717, line: 1342, baseType: !113, size: 64, offset: 13248)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !804, file: !717, line: 1343, baseType: !122, size: 64, offset: 13312)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !804, file: !717, line: 1344, baseType: !120, size: 64, offset: 13376)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !804, file: !717, line: 1345, baseType: !122, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !804, file: !717, line: 1346, baseType: !122, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !804, file: !717, line: 1347, baseType: !122, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !804, file: !717, line: 1348, baseType: !788, size: 128, align: 64, offset: 13504)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !804, file: !717, line: 1358, baseType: !2290, size: 34816, offset: 13824)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2291, line: 485, size: 34816, elements: !2292)
!2291 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2322, !2323, !2324, !2325, !2326, !2327, !2330, !2331, !2332}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2290, file: !2291, line: 487, baseType: !2294, size: 192)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 192, elements: !409)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2296, line: 16, size: 64, elements: !2297)
!2296 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2295, file: !2296, line: 17, baseType: !1152, size: 16)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2295, file: !2296, line: 18, baseType: !1152, size: 16, offset: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2295, file: !2296, line: 19, baseType: !1152, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2295, file: !2296, line: 19, baseType: !1152, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2295, file: !2296, line: 19, baseType: !1152, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2295, file: !2296, line: 19, baseType: !1152, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2295, file: !2296, line: 19, baseType: !1152, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2295, file: !2296, line: 20, baseType: !1152, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2295, file: !2296, line: 20, baseType: !1152, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2295, file: !2296, line: 20, baseType: !1152, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2295, file: !2296, line: 20, baseType: !1152, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2295, file: !2296, line: 20, baseType: !1152, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2295, file: !2296, line: 20, baseType: !1152, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2290, file: !2291, line: 491, baseType: !125, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2290, file: !2291, line: 495, baseType: !174, size: 16, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2290, file: !2291, line: 496, baseType: !174, size: 16, offset: 272)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2290, file: !2291, line: 497, baseType: !174, size: 16, offset: 288)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2290, file: !2291, line: 498, baseType: !174, size: 16, offset: 304)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2290, file: !2291, line: 502, baseType: !125, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2290, file: !2291, line: 503, baseType: !125, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2290, file: !2291, line: 514, baseType: !2319, size: 256, offset: 448)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 256, elements: !1393)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2291, line: 483, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2290, file: !2291, line: 516, baseType: !125, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2290, file: !2291, line: 518, baseType: !125, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2290, file: !2291, line: 520, baseType: !125, size: 64, offset: 832)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2290, file: !2291, line: 521, baseType: !125, size: 64, offset: 896)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2290, file: !2291, line: 522, baseType: !125, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2290, file: !2291, line: 528, baseType: !2328, size: 64, offset: 1024)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2291, line: 10, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2290, file: !2291, line: 535, baseType: !125, size: 64, offset: 1088)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2290, file: !2291, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2290, file: !2291, line: 540, baseType: !2333, size: 33280, offset: 1536)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2334, line: 317, size: 33280, elements: !2335)
!2334 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !{!2336, !2337, !2338}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2333, file: !2334, line: 330, baseType: !5, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2333, file: !2334, line: 337, baseType: !125, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2333, file: !2334, line: 348, baseType: !2339, size: 32768, offset: 512)
!2339 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2334, line: 304, size: 32768, elements: !2340)
!2340 = !{!2341, !2356, !2393, !2443, !2456}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2339, file: !2334, line: 305, baseType: !2342, size: 896)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2334, line: 12, size: 896, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2355}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2342, file: !2334, line: 13, baseType: !235, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2342, file: !2334, line: 14, baseType: !235, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2342, file: !2334, line: 15, baseType: !235, size: 32, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2342, file: !2334, line: 16, baseType: !235, size: 32, offset: 96)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2342, file: !2334, line: 17, baseType: !235, size: 32, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2342, file: !2334, line: 18, baseType: !235, size: 32, offset: 160)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2342, file: !2334, line: 19, baseType: !235, size: 32, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2342, file: !2334, line: 22, baseType: !2352, size: 640, offset: 224)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 640, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 20)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2342, file: !2334, line: 25, baseType: !235, size: 32, offset: 864)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2339, file: !2334, line: 306, baseType: !2357, size: 4096, align: 128)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2334, line: 34, size: 4096, align: 128, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2378, !2379, !2380, !2382, !2384, !2388}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2357, file: !2334, line: 35, baseType: !1152, size: 16)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2357, file: !2334, line: 36, baseType: !1152, size: 16, offset: 16)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2357, file: !2334, line: 37, baseType: !1152, size: 16, offset: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2357, file: !2334, line: 38, baseType: !1152, size: 16, offset: 48)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !2334, line: 39, baseType: !2364, size: 128, offset: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !2334, line: 39, size: 128, elements: !2365)
!2365 = !{!2366, !2371}
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2334, line: 40, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2334, line: 40, size: 128, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2367, file: !2334, line: 41, baseType: !120, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2367, file: !2334, line: 42, baseType: !120, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2334, line: 44, baseType: !2372, size: 128)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2334, line: 44, size: 128, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2372, file: !2334, line: 45, baseType: !235, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2372, file: !2334, line: 46, baseType: !235, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2372, file: !2334, line: 47, baseType: !235, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2372, file: !2334, line: 48, baseType: !235, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2357, file: !2334, line: 51, baseType: !235, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2357, file: !2334, line: 52, baseType: !235, size: 32, offset: 224)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2357, file: !2334, line: 55, baseType: !2381, size: 1024, offset: 256)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 1024, elements: !245)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2357, file: !2334, line: 58, baseType: !2383, size: 2048, offset: 1280)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 2048, elements: !2038)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2357, file: !2334, line: 60, baseType: !2385, size: 384, offset: 3328)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 384, elements: !2386)
!2386 = !{!2387}
!2387 = !DISubrange(count: 12)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2357, file: !2334, line: 62, baseType: !2389, size: 384, offset: 3712)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !2334, line: 62, size: 384, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2389, file: !2334, line: 63, baseType: !2385, size: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2389, file: !2334, line: 64, baseType: !2385, size: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2339, file: !2334, line: 307, baseType: !2394, size: 1088)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2334, line: 79, size: 1088, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2442}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2394, file: !2334, line: 80, baseType: !235, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2394, file: !2334, line: 81, baseType: !235, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2394, file: !2334, line: 82, baseType: !235, size: 32, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2394, file: !2334, line: 83, baseType: !235, size: 32, offset: 96)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2394, file: !2334, line: 84, baseType: !235, size: 32, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2394, file: !2334, line: 85, baseType: !235, size: 32, offset: 160)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2394, file: !2334, line: 86, baseType: !235, size: 32, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2394, file: !2334, line: 88, baseType: !2352, size: 640, offset: 224)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2394, file: !2334, line: 89, baseType: !952, size: 8, offset: 864)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2394, file: !2334, line: 90, baseType: !952, size: 8, offset: 872)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2394, file: !2334, line: 91, baseType: !952, size: 8, offset: 880)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2394, file: !2334, line: 92, baseType: !952, size: 8, offset: 888)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2394, file: !2334, line: 93, baseType: !952, size: 8, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2394, file: !2334, line: 94, baseType: !952, size: 8, offset: 904)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2394, file: !2334, line: 95, baseType: !2411, size: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2413, line: 11, size: 128, elements: !2414)
!2413 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2412, file: !2413, line: 12, baseType: !118, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2412, file: !2413, line: 13, baseType: !2417, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2419, line: 56, size: 1344, elements: !2420)
!2419 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2418, file: !2419, line: 61, baseType: !125, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2418, file: !2419, line: 62, baseType: !125, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2418, file: !2419, line: 63, baseType: !125, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2418, file: !2419, line: 64, baseType: !125, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2418, file: !2419, line: 65, baseType: !125, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2418, file: !2419, line: 66, baseType: !125, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2418, file: !2419, line: 68, baseType: !125, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2418, file: !2419, line: 69, baseType: !125, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2418, file: !2419, line: 70, baseType: !125, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2418, file: !2419, line: 71, baseType: !125, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2418, file: !2419, line: 72, baseType: !125, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2418, file: !2419, line: 73, baseType: !125, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2418, file: !2419, line: 74, baseType: !125, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2418, file: !2419, line: 75, baseType: !125, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2418, file: !2419, line: 76, baseType: !125, size: 64, offset: 896)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2418, file: !2419, line: 81, baseType: !125, size: 64, offset: 960)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2418, file: !2419, line: 83, baseType: !125, size: 64, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2418, file: !2419, line: 84, baseType: !125, size: 64, offset: 1088)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2418, file: !2419, line: 85, baseType: !125, size: 64, offset: 1152)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2418, file: !2419, line: 86, baseType: !125, size: 64, offset: 1216)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2418, file: !2419, line: 87, baseType: !125, size: 64, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2394, file: !2334, line: 96, baseType: !235, size: 32, offset: 1024)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2339, file: !2334, line: 308, baseType: !2444, size: 4608, align: 512)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2334, line: 289, size: 4608, align: 512, elements: !2445)
!2445 = !{!2446, !2447, !2454}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2444, file: !2334, line: 290, baseType: !2357, size: 4096, align: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2444, file: !2334, line: 291, baseType: !2448, size: 512, offset: 4096)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2334, line: 268, size: 512, elements: !2449)
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2448, file: !2334, line: 269, baseType: !120, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2448, file: !2334, line: 270, baseType: !120, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2448, file: !2334, line: 271, baseType: !2453, size: 384, offset: 128)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 384, elements: !1493)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2444, file: !2334, line: 292, baseType: !2455, offset: 4608)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, elements: !1591)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2339, file: !2334, line: 309, baseType: !2457, size: 32768)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 32768, elements: !2458)
!2458 = !{!2459}
!2459 = !DISubrange(count: 4096)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !777, file: !778, line: 16, baseType: !769, size: 128, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !777, file: !778, line: 17, baseType: !530, size: 32, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !350, file: !29, line: 1465, baseType: !113, size: 64, offset: 6400)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !350, file: !29, line: 1468, baseType: !235, size: 32, offset: 6464)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !350, file: !29, line: 1470, baseType: !565, size: 64, offset: 6528)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !350, file: !29, line: 1471, baseType: !565, size: 64, offset: 6592)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !350, file: !29, line: 1473, baseType: !128, size: 32, offset: 6656)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !350, file: !29, line: 1474, baseType: !2468, size: 64, offset: 6720)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !29, line: 603, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !350, file: !29, line: 1477, baseType: !2471, size: 256, offset: 6784)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !245)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !350, file: !29, line: 1478, baseType: !2473, size: 128, offset: 7040)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2474, line: 18, baseType: !2475)
!2474 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2474, line: 16, size: 128, elements: !2476)
!2476 = !{!2477}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2475, file: !2474, line: 17, baseType: !2478, size: 128)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 128, elements: !1891)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !350, file: !29, line: 1480, baseType: !5, size: 32, offset: 7168)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !350, file: !29, line: 1481, baseType: !1377, size: 32, offset: 7200)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !350, file: !29, line: 1487, baseType: !514, size: 192, offset: 7232)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !350, file: !29, line: 1493, baseType: !295, size: 64, offset: 7424)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !350, file: !29, line: 1495, baseType: !275, size: 64, offset: 7488)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !350, file: !29, line: 1500, baseType: !139, size: 32, offset: 7552)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !350, file: !29, line: 1502, baseType: !2486, size: 448, offset: 7616)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !487, line: 60, size: 448, elements: !2487)
!2487 = !{!2488, !2493, !2494, !2495, !2496, !2497, !2498}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2486, file: !487, line: 61, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!125, !2492, !485}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2486, file: !487, line: 63, baseType: !2489, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2486, file: !487, line: 66, baseType: !118, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2486, file: !487, line: 67, baseType: !139, size: 32, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2486, file: !487, line: 68, baseType: !5, size: 32, offset: 224)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2486, file: !487, line: 71, baseType: !159, size: 128, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2486, file: !487, line: 77, baseType: !2499, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !350, file: !29, line: 1505, baseType: !518, size: 64, offset: 8064)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !350, file: !29, line: 1508, baseType: !518, size: 64, offset: 8128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !350, file: !29, line: 1511, baseType: !139, size: 32, offset: 8192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !350, file: !29, line: 1514, baseType: !1613, size: 32, offset: 8224)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !350, file: !29, line: 1517, baseType: !2505, size: 64, offset: 8256)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1739, line: 18, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !350, file: !29, line: 1518, baseType: !393, size: 64, offset: 8320)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !350, file: !29, line: 1525, baseType: !1581, size: 64, offset: 8384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !350, file: !29, line: 1532, baseType: !2510, size: 64, offset: 8448)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2511, line: 52, size: 64, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2512 = !{!2513}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2510, file: !2511, line: 53, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2511, line: 40, size: 256, elements: !2516)
!2516 = !{!2517, !2518, !2523}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2515, file: !2511, line: 42, baseType: !258)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2515, file: !2511, line: 44, baseType: !2519, size: 192)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2511, line: 28, size: 192, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2519, file: !2511, line: 29, baseType: !159, size: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2519, file: !2511, line: 31, baseType: !118, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2515, file: !2511, line: 49, baseType: !118, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !350, file: !29, line: 1533, baseType: !2510, size: 64, offset: 8512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !350, file: !29, line: 1534, baseType: !788, size: 128, align: 64, offset: 8576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !350, file: !29, line: 1535, baseType: !1738, size: 256, offset: 8704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !350, file: !29, line: 1537, baseType: !514, size: 192, offset: 8960)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !350, file: !29, line: 1542, baseType: !139, size: 32, offset: 9152)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !350, file: !29, line: 1545, baseType: !258, offset: 9184)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !350, file: !29, line: 1546, baseType: !159, size: 128, offset: 9216)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !350, file: !29, line: 1548, baseType: !258, offset: 9344)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !350, file: !29, line: 1549, baseType: !159, size: 128, offset: 9344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !202, file: !203, line: 104, baseType: !125, size: 64, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !202, file: !203, line: 105, baseType: !113, size: 64, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !203, line: 107, baseType: !2536, size: 128, offset: 1024)
!2536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 107, size: 128, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2536, file: !203, line: 108, baseType: !159, size: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2536, file: !203, line: 109, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !202, file: !203, line: 111, baseType: !159, size: 128, offset: 1152)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !202, file: !203, line: 112, baseType: !159, size: 128, offset: 1280)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !202, file: !203, line: 120, baseType: !2544, size: 128, offset: 1408)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 116, size: 128, elements: !2545)
!2545 = !{!2546, !2547, !2548}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2544, file: !203, line: 117, baseType: !397, size: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2544, file: !203, line: 118, baseType: !217, size: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2544, file: !203, line: 119, baseType: !788, size: 128, align: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !195, file: !29, line: 1866, baseType: !2550, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!295, !201, !169, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2555, line: 10, size: 128, elements: !2556)
!2555 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2556 = !{!2557, !2561}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2554, file: !2555, line: 11, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !113}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2554, file: !2555, line: 12, baseType: !113, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !195, file: !29, line: 1867, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!139, !169, !139}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !195, file: !29, line: 1868, baseType: !2567, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !169, !139}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !29, line: 581, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !195, file: !29, line: 1870, baseType: !2573, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!139, !201, !321, !139}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !195, file: !29, line: 1872, baseType: !2577, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!139, !169, !201, !173, !340}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !195, file: !29, line: 1873, baseType: !2581, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!139, !201, !169, !201}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !195, file: !29, line: 1874, baseType: !2585, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!139, !169, !201}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !195, file: !29, line: 1875, baseType: !2589, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!139, !169, !201, !295}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !195, file: !29, line: 1876, baseType: !2593, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!139, !169, !201, !173}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !195, file: !29, line: 1877, baseType: !2585, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !195, file: !29, line: 1878, baseType: !2598, size: 64, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!139, !169, !201, !173, !354}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !195, file: !29, line: 1879, baseType: !2602, size: 64, offset: 768)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!139, !169, !201, !169, !201, !5}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !195, file: !29, line: 1881, baseType: !2606, size: 64, offset: 832)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!139, !201, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !29, line: 219, size: 640, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2622, !2623, !2624}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2610, file: !29, line: 220, baseType: !5, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2610, file: !29, line: 221, baseType: !173, size: 16, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2610, file: !29, line: 222, baseType: !177, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2610, file: !29, line: 223, baseType: !185, size: 32, offset: 96)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2610, file: !29, line: 224, baseType: !359, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2610, file: !29, line: 225, baseType: !2618, size: 128, offset: 192)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !566, line: 13, size: 128, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2618, file: !566, line: 14, baseType: !565, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2618, file: !566, line: 15, baseType: !118, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2610, file: !29, line: 226, baseType: !2618, size: 128, offset: 320)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2610, file: !29, line: 227, baseType: !2618, size: 128, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2610, file: !29, line: 234, baseType: !1099, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !195, file: !29, line: 1882, baseType: !2626, size: 64, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!139, !338, !2629, !235, !5}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2631, line: 22, size: 1152, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2630, file: !2631, line: 23, baseType: !235, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2630, file: !2631, line: 24, baseType: !173, size: 16, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2630, file: !2631, line: 25, baseType: !5, size: 32, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2630, file: !2631, line: 26, baseType: !1471, size: 32, offset: 96)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2630, file: !2631, line: 27, baseType: !120, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2630, file: !2631, line: 28, baseType: !120, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2630, file: !2631, line: 37, baseType: !120, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2630, file: !2631, line: 38, baseType: !354, size: 32, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2630, file: !2631, line: 39, baseType: !354, size: 32, offset: 352)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2630, file: !2631, line: 40, baseType: !177, size: 32, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2630, file: !2631, line: 41, baseType: !185, size: 32, offset: 416)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2630, file: !2631, line: 42, baseType: !359, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2630, file: !2631, line: 43, baseType: !2618, size: 128, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2630, file: !2631, line: 44, baseType: !2618, size: 128, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2630, file: !2631, line: 45, baseType: !2618, size: 128, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2630, file: !2631, line: 46, baseType: !2618, size: 128, offset: 896)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2630, file: !2631, line: 47, baseType: !120, size: 64, offset: 1024)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2630, file: !2631, line: 48, baseType: !120, size: 64, offset: 1088)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !195, file: !29, line: 1883, baseType: !2652, size: 64, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!114, !201, !321, !1128}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !195, file: !29, line: 1884, baseType: !2656, size: 64, offset: 1024)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!139, !169, !2659, !120, !120}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !29, line: 50, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !195, file: !29, line: 1886, baseType: !2662, size: 64, offset: 1088)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!139, !169, !2665, !139}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !195, file: !29, line: 1887, baseType: !2667, size: 64, offset: 1152)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!139, !169, !201, !1099, !5, !173}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !195, file: !29, line: 1890, baseType: !2593, size: 64, offset: 1216)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !195, file: !29, line: 1891, baseType: !2672, size: 64, offset: 1280)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!139, !169, !2570, !139}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !170, file: !29, line: 623, baseType: !349, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !170, file: !29, line: 624, baseType: !165, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !170, file: !29, line: 631, baseType: !125, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !29, line: 639, baseType: !2679, size: 32, offset: 384)
!2679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !29, line: 639, size: 32, elements: !2680)
!2680 = !{!2681, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2679, file: !29, line: 640, baseType: !2682, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2679, file: !29, line: 641, baseType: !5, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !170, file: !29, line: 643, baseType: !354, size: 32, offset: 416)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !170, file: !29, line: 644, baseType: !359, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !170, file: !29, line: 645, baseType: !2618, size: 128, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !170, file: !29, line: 646, baseType: !2618, size: 128, offset: 640)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !170, file: !29, line: 647, baseType: !2618, size: 128, offset: 768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !170, file: !29, line: 648, baseType: !258, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !170, file: !29, line: 649, baseType: !174, size: 16, offset: 896)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !170, file: !29, line: 650, baseType: !952, size: 8, offset: 912)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !170, file: !29, line: 651, baseType: !952, size: 8, offset: 920)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !170, file: !29, line: 652, baseType: !679, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !170, file: !29, line: 659, baseType: !125, size: 64, offset: 1024)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !170, file: !29, line: 660, baseType: !691, size: 256, offset: 1088)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !170, file: !29, line: 662, baseType: !125, size: 64, offset: 1344)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !170, file: !29, line: 663, baseType: !125, size: 64, offset: 1408)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !170, file: !29, line: 665, baseType: !397, size: 128, offset: 1472)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !170, file: !29, line: 666, baseType: !159, size: 128, offset: 1600)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !170, file: !29, line: 675, baseType: !159, size: 128, offset: 1728)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !170, file: !29, line: 676, baseType: !159, size: 128, offset: 1856)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !170, file: !29, line: 677, baseType: !159, size: 128, offset: 1984)
!2703 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !29, line: 678, baseType: !2704, size: 128, offset: 2112)
!2704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !29, line: 678, size: 128, elements: !2705)
!2705 = !{!2706, !2707}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2704, file: !29, line: 679, baseType: !393, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2704, file: !29, line: 680, baseType: !788, size: 128, align: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !170, file: !29, line: 682, baseType: !520, size: 64, offset: 2240)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !170, file: !29, line: 683, baseType: !520, size: 64, offset: 2304)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !170, file: !29, line: 684, baseType: !530, size: 32, offset: 2368)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !170, file: !29, line: 685, baseType: !530, size: 32, offset: 2400)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !170, file: !29, line: 686, baseType: !530, size: 32, offset: 2432)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !170, file: !29, line: 688, baseType: !530, size: 32, offset: 2464)
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !29, line: 690, baseType: !2715, size: 64, offset: 2496)
!2715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !29, line: 690, size: 64, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2715, file: !29, line: 691, baseType: !1115, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2715, file: !29, line: 692, baseType: !424, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !170, file: !29, line: 694, baseType: !2720, size: 64, offset: 2560)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !29, line: 1100, size: 384, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2721, file: !29, line: 1101, baseType: !258)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2721, file: !29, line: 1102, baseType: !159, size: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2721, file: !29, line: 1103, baseType: !159, size: 128, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2721, file: !29, line: 1104, baseType: !159, size: 128, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !170, file: !29, line: 695, baseType: !166, size: 1216, align: 64, offset: 2624)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !170, file: !29, line: 696, baseType: !159, size: 128, offset: 3840)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !29, line: 697, baseType: !2730, size: 64, offset: 3968)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !29, line: 697, size: 64, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2737, !2738}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2730, file: !29, line: 698, baseType: !1344, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2730, file: !29, line: 699, baseType: !712, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2730, file: !29, line: 700, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !29, line: 700, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2730, file: !29, line: 701, baseType: !321, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2730, file: !29, line: 702, baseType: !5, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !170, file: !29, line: 705, baseType: !128, size: 32, offset: 4032)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !170, file: !29, line: 708, baseType: !128, size: 32, offset: 4064)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !170, file: !29, line: 709, baseType: !2468, size: 64, offset: 4096)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !170, file: !29, line: 720, baseType: !113, size: 64, offset: 4160)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !166, file: !29, line: 453, baseType: !2093, size: 128, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !166, file: !29, line: 454, baseType: !111, size: 32, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !166, file: !29, line: 455, baseType: !530, size: 32, offset: 224)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !166, file: !29, line: 460, baseType: !939, size: 128, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !166, file: !29, line: 461, baseType: !691, size: 256, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !166, file: !29, line: 462, baseType: !125, size: 64, offset: 640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !166, file: !29, line: 463, baseType: !125, size: 64, offset: 704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !166, file: !29, line: 464, baseType: !125, size: 64, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !166, file: !29, line: 465, baseType: !2752, size: 64, offset: 832)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !29, line: 367, size: 1408, elements: !2755)
!2755 = !{!2756, !2760, !2764, !2768, !2772, !2776, !2782, !2786, !2790, !2795, !2799, !2803, !2807, !2808, !2812, !2818, !2819, !2820, !2824, !2829, !2833, !2840}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2754, file: !29, line: 368, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!139, !147, !436}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2754, file: !29, line: 369, baseType: !2761, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!139, !1099, !147}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2754, file: !29, line: 372, baseType: !2765, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!139, !165, !436}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2754, file: !29, line: 375, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!139, !147}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2754, file: !29, line: 381, baseType: !2773, size: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!139, !1099, !165, !162, !5}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2754, file: !29, line: 383, baseType: !2777, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !29, line: 290, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2754, file: !29, line: 385, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!139, !1099, !165, !359, !5, !5, !146, !1301}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2754, file: !29, line: 388, baseType: !2787, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!139, !1099, !165, !359, !5, !5, !147, !113}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2754, file: !29, line: 393, baseType: !2791, size: 64, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!2794, !165, !2794}
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !112, line: 125, baseType: !120)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2754, file: !29, line: 394, baseType: !2796, size: 64, offset: 576)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !147, !5, !5}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2754, file: !29, line: 395, baseType: !2800, size: 64, offset: 640)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!139, !147, !111}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2754, file: !29, line: 396, baseType: !2804, size: 64, offset: 704)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !147}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2754, file: !29, line: 397, baseType: !1137, size: 64, offset: 768)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2754, file: !29, line: 402, baseType: !2809, size: 64, offset: 832)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!139, !165, !147, !147, !51}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2754, file: !29, line: 404, baseType: !2813, size: 64, offset: 896)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!340, !147, !2816}
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2817, line: 305, baseType: !5)
!2817 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2754, file: !29, line: 405, baseType: !2804, size: 64, offset: 960)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2754, file: !29, line: 406, baseType: !2769, size: 64, offset: 1024)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2754, file: !29, line: 407, baseType: !2821, size: 64, offset: 1088)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!139, !147, !125, !125}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2754, file: !29, line: 409, baseType: !2825, size: 64, offset: 1152)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !147, !2828, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2754, file: !29, line: 410, baseType: !2830, size: 64, offset: 1216)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!139, !165, !147}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2754, file: !29, line: 413, baseType: !2834, size: 64, offset: 1280)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!139, !2837, !1099, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !29, line: 61, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2754, file: !29, line: 415, baseType: !2841, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !1099}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !29, line: 466, baseType: !125, size: 64, offset: 896)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !166, file: !29, line: 467, baseType: !1613, size: 32, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !166, file: !29, line: 468, baseType: !258, offset: 992)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !166, file: !29, line: 469, baseType: !159, size: 128, offset: 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !166, file: !29, line: 470, baseType: !113, size: 64, offset: 1152)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !156, file: !149, line: 87, baseType: !125, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !156, file: !149, line: 94, baseType: !125, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 96, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 96, size: 64, elements: !2853)
!2853 = !{!2854}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2852, file: !149, line: 101, baseType: !119, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 103, baseType: !2856, size: 320)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 103, size: 320, elements: !2857)
!2857 = !{!2858, !2868, !2869, !2870}
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !2856, file: !149, line: 104, baseType: !2859, size: 128)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2856, file: !149, line: 104, size: 128, elements: !2860)
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2859, file: !149, line: 105, baseType: !159, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, scope: !2859, file: !149, line: 106, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2859, file: !149, line: 106, size: 128, elements: !2864)
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2863, file: !149, line: 107, baseType: !147, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2863, file: !149, line: 109, baseType: !139, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2863, file: !149, line: 110, baseType: !139, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2856, file: !149, line: 117, baseType: !2112, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2856, file: !149, line: 119, baseType: !113, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !2856, file: !149, line: 120, baseType: !2871, size: 64, offset: 256)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2856, file: !149, line: 120, size: 64, elements: !2872)
!2872 = !{!2873, !2874, !2875}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2871, file: !149, line: 121, baseType: !113, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2871, file: !149, line: 122, baseType: !125, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2871, file: !149, line: 123, baseType: !2876, size: 32)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2871, file: !149, line: 123, size: 32, elements: !2877)
!2877 = !{!2878, !2879, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2876, file: !149, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2876, file: !149, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2876, file: !149, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 130, baseType: !2882, size: 192)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 130, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2887, !2888}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2882, file: !149, line: 131, baseType: !125, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2882, file: !149, line: 134, baseType: !241, size: 8, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2882, file: !149, line: 135, baseType: !241, size: 8, offset: 72)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2882, file: !149, line: 136, baseType: !530, size: 32, offset: 96)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2882, file: !149, line: 137, baseType: !5, size: 32, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 139, baseType: !2890, size: 256)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 139, size: 256, elements: !2891)
!2891 = !{!2892, !2893, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2890, file: !149, line: 140, baseType: !125, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2890, file: !149, line: 141, baseType: !530, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2890, file: !149, line: 143, baseType: !159, size: 128, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 145, baseType: !2896, size: 256)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 145, size: 256, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2906}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2896, file: !149, line: 146, baseType: !125, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2896, file: !149, line: 147, baseType: !1070, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2896, file: !149, line: 148, baseType: !125, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !149, line: 149, baseType: !2902, size: 64, offset: 192)
!2902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2896, file: !149, line: 149, size: 64, elements: !2903)
!2903 = !{!2904, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2902, file: !149, line: 150, baseType: !978, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2902, file: !149, line: 151, baseType: !530, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2896, file: !149, line: 156, baseType: !258, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !149, line: 159, baseType: !2908, size: 128)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !149, line: 159, size: 128, elements: !2909)
!2909 = !{!2910, !2974}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2908, file: !149, line: 161, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !59, line: 110, size: 1152, elements: !2913)
!2913 = !{!2914, !2924, !2945, !2946, !2947, !2948, !2949, !2961, !2962, !2963}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2912, file: !59, line: 111, baseType: !2915, size: 384)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !59, line: 19, size: 384, elements: !2916)
!2916 = !{!2917, !2919, !2920, !2921, !2922, !2923}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2915, file: !59, line: 20, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2915, file: !59, line: 21, baseType: !2918, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2915, file: !59, line: 22, baseType: !2918, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2915, file: !59, line: 23, baseType: !125, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2915, file: !59, line: 24, baseType: !125, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2915, file: !59, line: 25, baseType: !125, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2912, file: !59, line: 112, baseType: !2925, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2927, line: 105, size: 128, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2926, file: !2927, line: 110, baseType: !125, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2926, file: !2927, line: 118, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2927, line: 95, size: 448, elements: !2933)
!2933 = !{!2934, !2935, !2940, !2941, !2942, !2943, !2944}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2932, file: !2927, line: 96, baseType: !518, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2932, file: !2927, line: 97, baseType: !2936, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2927, line: 60, baseType: !2938)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2925}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2932, file: !2927, line: 98, baseType: !2936, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2932, file: !2927, line: 99, baseType: !340, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2932, file: !2927, line: 100, baseType: !340, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2932, file: !2927, line: 101, baseType: !788, size: 128, align: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2932, file: !2927, line: 102, baseType: !2925, size: 64, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2912, file: !59, line: 113, baseType: !2926, size: 128, offset: 448)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2912, file: !59, line: 114, baseType: !1713, size: 192, offset: 576)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2912, file: !59, line: 115, baseType: !58, size: 32, offset: 768)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2912, file: !59, line: 116, baseType: !5, size: 32, offset: 800)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2912, file: !59, line: 117, baseType: !2950, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !59, line: 67, size: 256, elements: !2953)
!2953 = !{!2954, !2955, !2959, !2960}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2952, file: !59, line: 73, baseType: !2804, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2952, file: !59, line: 78, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !2911}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2952, file: !59, line: 83, baseType: !2956, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2952, file: !59, line: 89, baseType: !1031, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2912, file: !59, line: 118, baseType: !113, size: 64, offset: 896)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2912, file: !59, line: 119, baseType: !139, size: 32, offset: 960)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !59, line: 120, baseType: !2964, size: 128, offset: 1024)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !59, line: 120, size: 128, elements: !2965)
!2965 = !{!2966, !2972}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2964, file: !59, line: 121, baseType: !2967, size: 128)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2968, line: 6, size: 128, elements: !2969)
!2968 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2967, file: !2968, line: 7, baseType: !120, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2967, file: !2968, line: 8, baseType: !120, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2964, file: !59, line: 122, baseType: !2973)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2967, elements: !1591)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2908, file: !149, line: 162, baseType: !113, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !153, file: !149, line: 176, baseType: !788, size: 128, align: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !149, line: 179, baseType: !2977, size: 32, offset: 384)
!2977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !149, line: 179, size: 32, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2977, file: !149, line: 184, baseType: !530, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2977, file: !149, line: 192, baseType: !5, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2977, file: !149, line: 194, baseType: !5, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2977, file: !149, line: 195, baseType: !139, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !148, file: !149, line: 199, baseType: !530, size: 32, offset: 416)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !141, file: !142, line: 424, baseType: !139, size: 32, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "page_count_mapped", scope: !141, file: !142, line: 425, baseType: !139, size: 32, offset: 160)
!2986 = !DILocalVariable(name: "buffer", arg: 1, scope: !136, file: !1, line: 29, type: !140)
!2987 = !DILocation(line: 29, column: 47, scope: !136)
!2988 = !DILocalVariable(name: "page_count", arg: 2, scope: !136, file: !1, line: 29, type: !139)
!2989 = !DILocation(line: 29, column: 59, scope: !136)
!2990 = !DILocalVariable(name: "i", scope: !136, file: !1, line: 31, type: !139)
!2991 = !DILocation(line: 31, column: 6, scope: !136)
!2992 = !DILocation(line: 33, column: 2, scope: !136)
!2993 = !DILocation(line: 33, column: 10, scope: !136)
!2994 = !DILocation(line: 33, column: 21, scope: !136)
!2995 = !DILocation(line: 34, column: 2, scope: !136)
!2996 = !DILocation(line: 34, column: 10, scope: !136)
!2997 = !DILocation(line: 34, column: 28, scope: !136)
!2998 = !DILocation(line: 35, column: 32, scope: !136)
!2999 = !DILocation(line: 35, column: 18, scope: !136)
!3000 = !DILocation(line: 35, column: 2, scope: !136)
!3001 = !DILocation(line: 35, column: 10, scope: !136)
!3002 = !DILocation(line: 35, column: 16, scope: !136)
!3003 = !DILocation(line: 37, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !136, file: !1, line: 37, column: 6)
!3005 = !DILocation(line: 37, column: 14, scope: !3004)
!3006 = !DILocation(line: 37, column: 20, scope: !3004)
!3007 = !DILocation(line: 37, column: 6, scope: !136)
!3008 = !DILocation(line: 38, column: 3, scope: !3004)
!3009 = !DILocation(line: 40, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !136, file: !1, line: 40, column: 2)
!3011 = !DILocation(line: 40, column: 7, scope: !3010)
!3012 = !DILocation(line: 40, column: 14, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !1, line: 40, column: 2)
!3014 = !DILocation(line: 40, column: 18, scope: !3013)
!3015 = !DILocation(line: 40, column: 16, scope: !3013)
!3016 = !DILocation(line: 40, column: 2, scope: !3010)
!3017 = !DILocation(line: 41, column: 22, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !1, line: 40, column: 35)
!3019 = !DILocation(line: 41, column: 3, scope: !3018)
!3020 = !DILocation(line: 41, column: 11, scope: !3018)
!3021 = !DILocation(line: 41, column: 17, scope: !3018)
!3022 = !DILocation(line: 41, column: 20, scope: !3018)
!3023 = !DILocation(line: 42, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3018, file: !1, line: 42, column: 7)
!3025 = !DILocation(line: 42, column: 15, scope: !3024)
!3026 = !DILocation(line: 42, column: 21, scope: !3024)
!3027 = !DILocation(line: 42, column: 24, scope: !3024)
!3028 = !DILocation(line: 42, column: 7, scope: !3018)
!3029 = !DILocation(line: 43, column: 4, scope: !3024)
!3030 = !DILocation(line: 44, column: 2, scope: !3018)
!3031 = !DILocation(line: 40, column: 31, scope: !3013)
!3032 = !DILocation(line: 40, column: 2, scope: !3013)
!3033 = distinct !{!3033, !3016, !3034}
!3034 = !DILocation(line: 44, column: 2, scope: !3010)
!3035 = !DILocation(line: 45, column: 23, scope: !136)
!3036 = !DILocation(line: 45, column: 2, scope: !136)
!3037 = !DILocation(line: 45, column: 10, scope: !136)
!3038 = !DILocation(line: 45, column: 21, scope: !136)
!3039 = !DILocation(line: 46, column: 6, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !136, file: !1, line: 46, column: 6)
!3041 = !DILocation(line: 46, column: 10, scope: !3040)
!3042 = !DILocation(line: 46, column: 8, scope: !3040)
!3043 = !DILocation(line: 46, column: 6, scope: !136)
!3044 = !DILocation(line: 47, column: 25, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !1, line: 46, column: 22)
!3046 = !DILocation(line: 47, column: 3, scope: !3045)
!3047 = !DILocation(line: 48, column: 3, scope: !3045)
!3048 = !DILocation(line: 51, column: 2, scope: !136)
!3049 = !DILocation(line: 52, column: 1, scope: !136)
!3050 = distinct !DISubprogram(name: "kmalloc_array", scope: !99, file: !99, line: 584, type: !3051, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!113, !1128, !1128, !111}
!3053 = !DILocalVariable(name: "s", arg: 1, scope: !3054, file: !99, line: 445, type: !2112)
!3054 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !99, file: !99, line: 445, type: !3055, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!113, !2112, !111, !1128}
!3057 = !DILocation(line: 445, column: 72, scope: !3054, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 552, column: 10, scope: !3059, inlinedAt: !3064)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !99, line: 540, column: 34)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !99, line: 540, column: 6)
!3061 = distinct !DISubprogram(name: "kmalloc", scope: !99, file: !99, line: 538, type: !3062, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!113, !1128, !111}
!3064 = distinct !DILocation(line: 591, column: 10, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3050, file: !99, line: 590, column: 6)
!3066 = !DILocalVariable(name: "flags", arg: 2, scope: !3054, file: !99, line: 446, type: !111)
!3067 = !DILocation(line: 446, column: 9, scope: !3054, inlinedAt: !3058)
!3068 = !DILocalVariable(name: "size", arg: 3, scope: !3054, file: !99, line: 446, type: !1128)
!3069 = !DILocation(line: 446, column: 23, scope: !3054, inlinedAt: !3058)
!3070 = !DILocalVariable(name: "ret", scope: !3054, file: !99, line: 448, type: !113)
!3071 = !DILocation(line: 448, column: 8, scope: !3054, inlinedAt: !3058)
!3072 = !DILocalVariable(name: "flags", arg: 1, scope: !3073, file: !99, line: 318, type: !111)
!3073 = distinct !DISubprogram(name: "kmalloc_type", scope: !99, file: !99, line: 318, type: !3074, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!98, !111}
!3076 = !DILocation(line: 318, column: 67, scope: !3073, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 553, column: 20, scope: !3059, inlinedAt: !3064)
!3078 = !DILocalVariable(name: "size", arg: 1, scope: !3079, file: !99, line: 346, type: !1128)
!3079 = distinct !DISubprogram(name: "kmalloc_index", scope: !99, file: !99, line: 346, type: !3080, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!5, !1128}
!3082 = !DILocation(line: 346, column: 58, scope: !3079, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 547, column: 11, scope: !3059, inlinedAt: !3064)
!3084 = !DILocalVariable(name: "size", arg: 1, scope: !3085, file: !99, line: 472, type: !1128)
!3085 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !99, file: !99, line: 472, type: !3086, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!113, !1128, !111, !5}
!3088 = !DILocation(line: 472, column: 28, scope: !3085, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 481, column: 9, scope: !3090, inlinedAt: !3091)
!3090 = distinct !DISubprogram(name: "kmalloc_large", scope: !99, file: !99, line: 478, type: !3062, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3091 = distinct !DILocation(line: 545, column: 11, scope: !3092, inlinedAt: !3064)
!3092 = distinct !DILexicalBlock(scope: !3059, file: !99, line: 544, column: 7)
!3093 = !DILocalVariable(name: "flags", arg: 2, scope: !3085, file: !99, line: 472, type: !111)
!3094 = !DILocation(line: 472, column: 40, scope: !3085, inlinedAt: !3089)
!3095 = !DILocalVariable(name: "order", arg: 3, scope: !3085, file: !99, line: 472, type: !5)
!3096 = !DILocation(line: 472, column: 60, scope: !3085, inlinedAt: !3089)
!3097 = !DILocalVariable(name: "size", arg: 1, scope: !3090, file: !99, line: 478, type: !1128)
!3098 = !DILocation(line: 478, column: 51, scope: !3090, inlinedAt: !3091)
!3099 = !DILocalVariable(name: "flags", arg: 2, scope: !3090, file: !99, line: 478, type: !111)
!3100 = !DILocation(line: 478, column: 63, scope: !3090, inlinedAt: !3091)
!3101 = !DILocalVariable(name: "order", scope: !3090, file: !99, line: 480, type: !5)
!3102 = !DILocation(line: 480, column: 15, scope: !3090, inlinedAt: !3091)
!3103 = !DILocalVariable(name: "size", arg: 1, scope: !3061, file: !99, line: 538, type: !1128)
!3104 = !DILocation(line: 538, column: 45, scope: !3061, inlinedAt: !3064)
!3105 = !DILocalVariable(name: "flags", arg: 2, scope: !3061, file: !99, line: 538, type: !111)
!3106 = !DILocation(line: 538, column: 57, scope: !3061, inlinedAt: !3064)
!3107 = !DILocalVariable(name: "index", scope: !3059, file: !99, line: 542, type: !5)
!3108 = !DILocation(line: 542, column: 16, scope: !3059, inlinedAt: !3064)
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3050, file: !99, line: 584, type: !1128)
!3110 = !DILocation(line: 584, column: 42, scope: !3050)
!3111 = !DILocalVariable(name: "size", arg: 2, scope: !3050, file: !99, line: 584, type: !1128)
!3112 = !DILocation(line: 584, column: 52, scope: !3050)
!3113 = !DILocalVariable(name: "flags", arg: 3, scope: !3050, file: !99, line: 584, type: !111)
!3114 = !DILocation(line: 584, column: 64, scope: !3050)
!3115 = !DILocalVariable(name: "bytes", scope: !3050, file: !99, line: 586, type: !1128)
!3116 = !DILocation(line: 586, column: 9, scope: !3050)
!3117 = !DILocalVariable(name: "__a", scope: !3118, file: !99, line: 588, type: !1128)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !99, line: 588, column: 6)
!3119 = distinct !DILexicalBlock(scope: !3050, file: !99, line: 588, column: 6)
!3120 = !DILocation(line: 588, column: 6, scope: !3118)
!3121 = !DILocalVariable(name: "__b", scope: !3118, file: !99, line: 588, type: !1128)
!3122 = !DILocalVariable(name: "__d", scope: !3118, file: !99, line: 588, type: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!3124 = !DILocation(line: 588, column: 6, scope: !3119)
!3125 = !DILocation(line: 588, column: 6, scope: !3050)
!3126 = !DILocation(line: 589, column: 3, scope: !3119)
!3127 = !DILocation(line: 590, column: 27, scope: !3065)
!3128 = !DILocation(line: 590, column: 6, scope: !3065)
!3129 = !DILocation(line: 590, column: 30, scope: !3065)
!3130 = !DILocation(line: 590, column: 54, scope: !3065)
!3131 = !DILocation(line: 590, column: 33, scope: !3065)
!3132 = !DILocation(line: 590, column: 6, scope: !3050)
!3133 = !DILocation(line: 591, column: 18, scope: !3065)
!3134 = !DILocation(line: 591, column: 25, scope: !3065)
!3135 = !DILocation(line: 540, column: 27, scope: !3060, inlinedAt: !3064)
!3136 = !DILocation(line: 540, column: 6, scope: !3060, inlinedAt: !3064)
!3137 = !DILocation(line: 540, column: 6, scope: !3061, inlinedAt: !3064)
!3138 = !DILocation(line: 544, column: 7, scope: !3092, inlinedAt: !3064)
!3139 = !DILocation(line: 544, column: 12, scope: !3092, inlinedAt: !3064)
!3140 = !DILocation(line: 544, column: 7, scope: !3059, inlinedAt: !3064)
!3141 = !DILocation(line: 545, column: 25, scope: !3092, inlinedAt: !3064)
!3142 = !DILocation(line: 545, column: 31, scope: !3092, inlinedAt: !3064)
!3143 = !DILocation(line: 480, column: 33, scope: !3090, inlinedAt: !3091)
!3144 = !DILocation(line: 480, column: 23, scope: !3090, inlinedAt: !3091)
!3145 = !DILocation(line: 481, column: 29, scope: !3090, inlinedAt: !3091)
!3146 = !DILocation(line: 481, column: 35, scope: !3090, inlinedAt: !3091)
!3147 = !DILocation(line: 481, column: 42, scope: !3090, inlinedAt: !3091)
!3148 = !DILocation(line: 474, column: 23, scope: !3085, inlinedAt: !3089)
!3149 = !DILocation(line: 474, column: 29, scope: !3085, inlinedAt: !3089)
!3150 = !DILocation(line: 474, column: 36, scope: !3085, inlinedAt: !3089)
!3151 = !DILocation(line: 474, column: 9, scope: !3085, inlinedAt: !3089)
!3152 = !DILocation(line: 545, column: 4, scope: !3092, inlinedAt: !3064)
!3153 = !DILocation(line: 547, column: 25, scope: !3059, inlinedAt: !3064)
!3154 = !DILocation(line: 348, column: 7, scope: !3155, inlinedAt: !3083)
!3155 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 348, column: 6)
!3156 = !DILocation(line: 348, column: 6, scope: !3079, inlinedAt: !3083)
!3157 = !DILocation(line: 349, column: 3, scope: !3155, inlinedAt: !3083)
!3158 = !DILocation(line: 351, column: 6, scope: !3159, inlinedAt: !3083)
!3159 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 351, column: 6)
!3160 = !DILocation(line: 351, column: 11, scope: !3159, inlinedAt: !3083)
!3161 = !DILocation(line: 351, column: 6, scope: !3079, inlinedAt: !3083)
!3162 = !DILocation(line: 352, column: 3, scope: !3159, inlinedAt: !3083)
!3163 = !DILocation(line: 354, column: 32, scope: !3164, inlinedAt: !3083)
!3164 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 354, column: 6)
!3165 = !DILocation(line: 354, column: 37, scope: !3164, inlinedAt: !3083)
!3166 = !DILocation(line: 354, column: 42, scope: !3164, inlinedAt: !3083)
!3167 = !DILocation(line: 354, column: 45, scope: !3164, inlinedAt: !3083)
!3168 = !DILocation(line: 354, column: 50, scope: !3164, inlinedAt: !3083)
!3169 = !DILocation(line: 354, column: 6, scope: !3079, inlinedAt: !3083)
!3170 = !DILocation(line: 355, column: 3, scope: !3164, inlinedAt: !3083)
!3171 = !DILocation(line: 356, column: 32, scope: !3172, inlinedAt: !3083)
!3172 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 356, column: 6)
!3173 = !DILocation(line: 356, column: 37, scope: !3172, inlinedAt: !3083)
!3174 = !DILocation(line: 356, column: 43, scope: !3172, inlinedAt: !3083)
!3175 = !DILocation(line: 356, column: 46, scope: !3172, inlinedAt: !3083)
!3176 = !DILocation(line: 356, column: 51, scope: !3172, inlinedAt: !3083)
!3177 = !DILocation(line: 356, column: 6, scope: !3079, inlinedAt: !3083)
!3178 = !DILocation(line: 357, column: 3, scope: !3172, inlinedAt: !3083)
!3179 = !DILocation(line: 358, column: 6, scope: !3180, inlinedAt: !3083)
!3180 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 358, column: 6)
!3181 = !DILocation(line: 358, column: 11, scope: !3180, inlinedAt: !3083)
!3182 = !DILocation(line: 358, column: 6, scope: !3079, inlinedAt: !3083)
!3183 = !DILocation(line: 358, column: 26, scope: !3180, inlinedAt: !3083)
!3184 = !DILocation(line: 359, column: 6, scope: !3185, inlinedAt: !3083)
!3185 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 359, column: 6)
!3186 = !DILocation(line: 359, column: 11, scope: !3185, inlinedAt: !3083)
!3187 = !DILocation(line: 359, column: 6, scope: !3079, inlinedAt: !3083)
!3188 = !DILocation(line: 359, column: 26, scope: !3185, inlinedAt: !3083)
!3189 = !DILocation(line: 360, column: 6, scope: !3190, inlinedAt: !3083)
!3190 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 360, column: 6)
!3191 = !DILocation(line: 360, column: 11, scope: !3190, inlinedAt: !3083)
!3192 = !DILocation(line: 360, column: 6, scope: !3079, inlinedAt: !3083)
!3193 = !DILocation(line: 360, column: 26, scope: !3190, inlinedAt: !3083)
!3194 = !DILocation(line: 361, column: 6, scope: !3195, inlinedAt: !3083)
!3195 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 361, column: 6)
!3196 = !DILocation(line: 361, column: 11, scope: !3195, inlinedAt: !3083)
!3197 = !DILocation(line: 361, column: 6, scope: !3079, inlinedAt: !3083)
!3198 = !DILocation(line: 361, column: 26, scope: !3195, inlinedAt: !3083)
!3199 = !DILocation(line: 362, column: 6, scope: !3200, inlinedAt: !3083)
!3200 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 362, column: 6)
!3201 = !DILocation(line: 362, column: 11, scope: !3200, inlinedAt: !3083)
!3202 = !DILocation(line: 362, column: 6, scope: !3079, inlinedAt: !3083)
!3203 = !DILocation(line: 362, column: 26, scope: !3200, inlinedAt: !3083)
!3204 = !DILocation(line: 363, column: 6, scope: !3205, inlinedAt: !3083)
!3205 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 363, column: 6)
!3206 = !DILocation(line: 363, column: 11, scope: !3205, inlinedAt: !3083)
!3207 = !DILocation(line: 363, column: 6, scope: !3079, inlinedAt: !3083)
!3208 = !DILocation(line: 363, column: 26, scope: !3205, inlinedAt: !3083)
!3209 = !DILocation(line: 364, column: 6, scope: !3210, inlinedAt: !3083)
!3210 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 364, column: 6)
!3211 = !DILocation(line: 364, column: 11, scope: !3210, inlinedAt: !3083)
!3212 = !DILocation(line: 364, column: 6, scope: !3079, inlinedAt: !3083)
!3213 = !DILocation(line: 364, column: 26, scope: !3210, inlinedAt: !3083)
!3214 = !DILocation(line: 365, column: 6, scope: !3215, inlinedAt: !3083)
!3215 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 365, column: 6)
!3216 = !DILocation(line: 365, column: 11, scope: !3215, inlinedAt: !3083)
!3217 = !DILocation(line: 365, column: 6, scope: !3079, inlinedAt: !3083)
!3218 = !DILocation(line: 365, column: 26, scope: !3215, inlinedAt: !3083)
!3219 = !DILocation(line: 366, column: 6, scope: !3220, inlinedAt: !3083)
!3220 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 366, column: 6)
!3221 = !DILocation(line: 366, column: 11, scope: !3220, inlinedAt: !3083)
!3222 = !DILocation(line: 366, column: 6, scope: !3079, inlinedAt: !3083)
!3223 = !DILocation(line: 366, column: 26, scope: !3220, inlinedAt: !3083)
!3224 = !DILocation(line: 367, column: 6, scope: !3225, inlinedAt: !3083)
!3225 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 367, column: 6)
!3226 = !DILocation(line: 367, column: 11, scope: !3225, inlinedAt: !3083)
!3227 = !DILocation(line: 367, column: 6, scope: !3079, inlinedAt: !3083)
!3228 = !DILocation(line: 367, column: 26, scope: !3225, inlinedAt: !3083)
!3229 = !DILocation(line: 368, column: 6, scope: !3230, inlinedAt: !3083)
!3230 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 368, column: 6)
!3231 = !DILocation(line: 368, column: 11, scope: !3230, inlinedAt: !3083)
!3232 = !DILocation(line: 368, column: 6, scope: !3079, inlinedAt: !3083)
!3233 = !DILocation(line: 368, column: 26, scope: !3230, inlinedAt: !3083)
!3234 = !DILocation(line: 369, column: 6, scope: !3235, inlinedAt: !3083)
!3235 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 369, column: 6)
!3236 = !DILocation(line: 369, column: 11, scope: !3235, inlinedAt: !3083)
!3237 = !DILocation(line: 369, column: 6, scope: !3079, inlinedAt: !3083)
!3238 = !DILocation(line: 369, column: 26, scope: !3235, inlinedAt: !3083)
!3239 = !DILocation(line: 370, column: 6, scope: !3240, inlinedAt: !3083)
!3240 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 370, column: 6)
!3241 = !DILocation(line: 370, column: 11, scope: !3240, inlinedAt: !3083)
!3242 = !DILocation(line: 370, column: 6, scope: !3079, inlinedAt: !3083)
!3243 = !DILocation(line: 370, column: 26, scope: !3240, inlinedAt: !3083)
!3244 = !DILocation(line: 371, column: 6, scope: !3245, inlinedAt: !3083)
!3245 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 371, column: 6)
!3246 = !DILocation(line: 371, column: 11, scope: !3245, inlinedAt: !3083)
!3247 = !DILocation(line: 371, column: 6, scope: !3079, inlinedAt: !3083)
!3248 = !DILocation(line: 371, column: 26, scope: !3245, inlinedAt: !3083)
!3249 = !DILocation(line: 372, column: 6, scope: !3250, inlinedAt: !3083)
!3250 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 372, column: 6)
!3251 = !DILocation(line: 372, column: 11, scope: !3250, inlinedAt: !3083)
!3252 = !DILocation(line: 372, column: 6, scope: !3079, inlinedAt: !3083)
!3253 = !DILocation(line: 372, column: 26, scope: !3250, inlinedAt: !3083)
!3254 = !DILocation(line: 373, column: 6, scope: !3255, inlinedAt: !3083)
!3255 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 373, column: 6)
!3256 = !DILocation(line: 373, column: 11, scope: !3255, inlinedAt: !3083)
!3257 = !DILocation(line: 373, column: 6, scope: !3079, inlinedAt: !3083)
!3258 = !DILocation(line: 373, column: 26, scope: !3255, inlinedAt: !3083)
!3259 = !DILocation(line: 374, column: 6, scope: !3260, inlinedAt: !3083)
!3260 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 374, column: 6)
!3261 = !DILocation(line: 374, column: 11, scope: !3260, inlinedAt: !3083)
!3262 = !DILocation(line: 374, column: 6, scope: !3079, inlinedAt: !3083)
!3263 = !DILocation(line: 374, column: 26, scope: !3260, inlinedAt: !3083)
!3264 = !DILocation(line: 375, column: 6, scope: !3265, inlinedAt: !3083)
!3265 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 375, column: 6)
!3266 = !DILocation(line: 375, column: 11, scope: !3265, inlinedAt: !3083)
!3267 = !DILocation(line: 375, column: 6, scope: !3079, inlinedAt: !3083)
!3268 = !DILocation(line: 375, column: 27, scope: !3265, inlinedAt: !3083)
!3269 = !DILocation(line: 376, column: 6, scope: !3270, inlinedAt: !3083)
!3270 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 376, column: 6)
!3271 = !DILocation(line: 376, column: 11, scope: !3270, inlinedAt: !3083)
!3272 = !DILocation(line: 376, column: 6, scope: !3079, inlinedAt: !3083)
!3273 = !DILocation(line: 376, column: 32, scope: !3270, inlinedAt: !3083)
!3274 = !DILocation(line: 377, column: 6, scope: !3275, inlinedAt: !3083)
!3275 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 377, column: 6)
!3276 = !DILocation(line: 377, column: 11, scope: !3275, inlinedAt: !3083)
!3277 = !DILocation(line: 377, column: 6, scope: !3079, inlinedAt: !3083)
!3278 = !DILocation(line: 377, column: 32, scope: !3275, inlinedAt: !3083)
!3279 = !DILocation(line: 378, column: 6, scope: !3280, inlinedAt: !3083)
!3280 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 378, column: 6)
!3281 = !DILocation(line: 378, column: 11, scope: !3280, inlinedAt: !3083)
!3282 = !DILocation(line: 378, column: 6, scope: !3079, inlinedAt: !3083)
!3283 = !DILocation(line: 378, column: 32, scope: !3280, inlinedAt: !3083)
!3284 = !DILocation(line: 379, column: 6, scope: !3285, inlinedAt: !3083)
!3285 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 379, column: 6)
!3286 = !DILocation(line: 379, column: 11, scope: !3285, inlinedAt: !3083)
!3287 = !DILocation(line: 379, column: 6, scope: !3079, inlinedAt: !3083)
!3288 = !DILocation(line: 379, column: 33, scope: !3285, inlinedAt: !3083)
!3289 = !DILocation(line: 380, column: 6, scope: !3290, inlinedAt: !3083)
!3290 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 380, column: 6)
!3291 = !DILocation(line: 380, column: 11, scope: !3290, inlinedAt: !3083)
!3292 = !DILocation(line: 380, column: 6, scope: !3079, inlinedAt: !3083)
!3293 = !DILocation(line: 380, column: 33, scope: !3290, inlinedAt: !3083)
!3294 = !DILocation(line: 381, column: 6, scope: !3295, inlinedAt: !3083)
!3295 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 381, column: 6)
!3296 = !DILocation(line: 381, column: 11, scope: !3295, inlinedAt: !3083)
!3297 = !DILocation(line: 381, column: 6, scope: !3079, inlinedAt: !3083)
!3298 = !DILocation(line: 381, column: 33, scope: !3295, inlinedAt: !3083)
!3299 = !DILocation(line: 382, column: 2, scope: !3300, inlinedAt: !3083)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !99, line: 382, column: 2)
!3301 = distinct !DILexicalBlock(scope: !3079, file: !99, line: 382, column: 2)
!3302 = !{i32 -2142257699, i32 -2142257670, i32 -2142257624, i32 -2142257566, i32 -2142257512, i32 -2142257458, i32 -2142257403, i32 -2142257372}
!3303 = !DILocation(line: 382, column: 2, scope: !3304, inlinedAt: !3083)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !99, line: 382, column: 2)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !99, line: 382, column: 2)
!3306 = !{i32 -2142256929, i32 -2142256922, i32 -2142256868, i32 -2142256837, i32 -2142256807}
!3307 = !DILocation(line: 382, column: 2, scope: !3305, inlinedAt: !3083)
!3308 = !DILocation(line: 386, column: 1, scope: !3079, inlinedAt: !3083)
!3309 = !DILocation(line: 547, column: 9, scope: !3059, inlinedAt: !3064)
!3310 = !DILocation(line: 549, column: 8, scope: !3311, inlinedAt: !3064)
!3311 = distinct !DILexicalBlock(scope: !3059, file: !99, line: 549, column: 7)
!3312 = !DILocation(line: 549, column: 7, scope: !3059, inlinedAt: !3064)
!3313 = !DILocation(line: 550, column: 4, scope: !3311, inlinedAt: !3064)
!3314 = !DILocation(line: 553, column: 33, scope: !3059, inlinedAt: !3064)
!3315 = !DILocation(line: 325, column: 6, scope: !3316, inlinedAt: !3077)
!3316 = distinct !DILexicalBlock(scope: !3073, file: !99, line: 325, column: 6)
!3317 = !DILocation(line: 325, column: 6, scope: !3073, inlinedAt: !3077)
!3318 = !DILocation(line: 326, column: 3, scope: !3316, inlinedAt: !3077)
!3319 = !DILocation(line: 332, column: 9, scope: !3073, inlinedAt: !3077)
!3320 = !DILocation(line: 332, column: 15, scope: !3073, inlinedAt: !3077)
!3321 = !DILocation(line: 332, column: 2, scope: !3073, inlinedAt: !3077)
!3322 = !DILocation(line: 336, column: 1, scope: !3073, inlinedAt: !3077)
!3323 = !DILocation(line: 553, column: 5, scope: !3059, inlinedAt: !3064)
!3324 = !DILocation(line: 553, column: 41, scope: !3059, inlinedAt: !3064)
!3325 = !DILocation(line: 554, column: 5, scope: !3059, inlinedAt: !3064)
!3326 = !DILocation(line: 554, column: 12, scope: !3059, inlinedAt: !3064)
!3327 = !DILocation(line: 448, column: 31, scope: !3054, inlinedAt: !3058)
!3328 = !DILocation(line: 448, column: 34, scope: !3054, inlinedAt: !3058)
!3329 = !DILocation(line: 448, column: 14, scope: !3054, inlinedAt: !3058)
!3330 = !DILocation(line: 450, column: 22, scope: !3054, inlinedAt: !3058)
!3331 = !DILocation(line: 450, column: 25, scope: !3054, inlinedAt: !3058)
!3332 = !DILocation(line: 450, column: 30, scope: !3054, inlinedAt: !3058)
!3333 = !DILocation(line: 450, column: 36, scope: !3054, inlinedAt: !3058)
!3334 = !DILocation(line: 450, column: 8, scope: !3054, inlinedAt: !3058)
!3335 = !DILocation(line: 450, column: 6, scope: !3054, inlinedAt: !3058)
!3336 = !DILocation(line: 451, column: 9, scope: !3054, inlinedAt: !3058)
!3337 = !DILocation(line: 552, column: 3, scope: !3059, inlinedAt: !3064)
!3338 = !DILocation(line: 557, column: 19, scope: !3061, inlinedAt: !3064)
!3339 = !DILocation(line: 557, column: 25, scope: !3061, inlinedAt: !3064)
!3340 = !DILocation(line: 557, column: 9, scope: !3061, inlinedAt: !3064)
!3341 = !DILocation(line: 557, column: 2, scope: !3061, inlinedAt: !3064)
!3342 = !DILocation(line: 558, column: 1, scope: !3061, inlinedAt: !3064)
!3343 = !DILocation(line: 591, column: 3, scope: !3065)
!3344 = !DILocation(line: 592, column: 19, scope: !3050)
!3345 = !DILocation(line: 592, column: 26, scope: !3050)
!3346 = !DILocation(line: 592, column: 9, scope: !3050)
!3347 = !DILocation(line: 592, column: 2, scope: !3050)
!3348 = !DILocation(line: 593, column: 1, scope: !3050)
!3349 = distinct !DISubprogram(name: "alloc_pages", scope: !3350, file: !3350, line: 555, type: !3351, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3350 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!147, !111, !5}
!3353 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !3349, file: !3350, line: 555, type: !111)
!3354 = !DILocation(line: 555, column: 46, scope: !3349)
!3355 = !DILocalVariable(name: "order", arg: 2, scope: !3349, file: !3350, line: 555, type: !5)
!3356 = !DILocation(line: 555, column: 69, scope: !3349)
!3357 = !DILocation(line: 557, column: 26, scope: !3349)
!3358 = !DILocation(line: 557, column: 42, scope: !3349)
!3359 = !DILocation(line: 557, column: 52, scope: !3349)
!3360 = !DILocation(line: 557, column: 9, scope: !3349)
!3361 = !DILocation(line: 557, column: 2, scope: !3349)
!3362 = distinct !DISubprogram(name: "fw_iso_buffer_destroy", scope: !1, file: !1, line: 94, type: !3363, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !140, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_card", file: !142, line: 83, size: 11520, elements: !3367)
!3367 = !{!3368, !3492, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4285}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3366, file: !142, line: 84, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_card_driver", file: !3372, line: 53, size: 1152, elements: !3373)
!3372 = !DIFile(filename: "drivers/firewire/core.h", directory: "/home/lizy2001/genbc/linux")
!3373 = !{!3374, !3380, !3384, !3388, !3389, !3414, !3415, !3419, !3423, !3427, !3431, !3458, !3462, !3466, !3471, !3486, !3487, !3491}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3371, file: !3372, line: 60, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!139, !3365, !3378, !1128}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "read_phy_reg", scope: !3371, file: !3372, line: 63, baseType: !3381, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!139, !3365, !139}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "update_phy_reg", scope: !3371, file: !3372, line: 64, baseType: !3385, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!139, !3365, !139, !139, !139}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "set_config_rom", scope: !3371, file: !3372, line: 72, baseType: !3375, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "send_request", scope: !3371, file: !3372, line: 75, baseType: !3390, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3365, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_packet", file: !142, line: 291, size: 832, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3411, !3412, !3413}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3394, file: !142, line: 292, baseType: !139, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3394, file: !142, line: 293, baseType: !139, size: 32, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3394, file: !142, line: 294, baseType: !3399, size: 128, offset: 64)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !1393)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "header_length", scope: !3394, file: !142, line: 295, baseType: !1128, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3394, file: !142, line: 296, baseType: !113, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !3394, file: !142, line: 297, baseType: !1128, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "payload_bus", scope: !3394, file: !142, line: 298, baseType: !119, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "payload_mapped", scope: !3394, file: !142, line: 299, baseType: !340, size: 8, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3394, file: !142, line: 300, baseType: !235, size: 32, offset: 480)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3394, file: !142, line: 310, baseType: !3407, size: 64, offset: 512)
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_packet_callback_t", file: !142, line: 266, baseType: !3408)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3393, !3365, !139}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3394, file: !142, line: 311, baseType: !139, size: 32, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3394, file: !142, line: 312, baseType: !159, size: 128, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3394, file: !142, line: 313, baseType: !113, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "send_response", scope: !3371, file: !3372, line: 76, baseType: !3390, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_packet", scope: !3371, file: !3372, line: 78, baseType: !3416, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!139, !3365, !3393}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "enable_phys_dma", scope: !3371, file: !3372, line: 88, baseType: !3420, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!139, !3365, !139, !139}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "read_csr", scope: !3371, file: !3372, line: 91, baseType: !3424, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!235, !3365, !139}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "write_csr", scope: !3371, file: !3372, line: 92, baseType: !3428, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3365, !139, !235}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_iso_context", scope: !3371, file: !3372, line: 95, baseType: !3432, size: 64, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!3435, !3365, !139, !139, !1128}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_context", file: !142, line: 439, size: 384, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441, !3442, !3443, !3444, !3457}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !3436, file: !142, line: 440, baseType: !3365, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3436, file: !142, line: 441, baseType: !139, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !3436, file: !142, line: 442, baseType: !139, size: 32, offset: 96)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3436, file: !142, line: 443, baseType: !139, size: 32, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "drop_overflow_headers", scope: !3436, file: !142, line: 444, baseType: !340, size: 8, offset: 160)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3436, file: !142, line: 445, baseType: !1128, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3436, file: !142, line: 449, baseType: !3445, size: 64, offset: 256)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !142, line: 446, size: 64, elements: !3446)
!3446 = !{!3447, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sc", scope: !3445, file: !142, line: 447, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_iso_callback_t", file: !142, line: 434, baseType: !3449)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !3435, !235, !1128, !113, !113}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !3445, file: !142, line: 448, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_iso_mc_callback_t", file: !142, line: 437, baseType: !3454)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3435, !119, !113}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !3436, file: !142, line: 450, baseType: !113, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "free_iso_context", scope: !3371, file: !3372, line: 97, baseType: !3459, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !3435}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "start_iso", scope: !3371, file: !3372, line: 99, baseType: !3463, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!139, !3435, !1449, !235, !235}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "set_iso_channels", scope: !3371, file: !3372, line: 102, baseType: !3467, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!139, !3435, !3470}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "queue_iso", scope: !3371, file: !3372, line: 104, baseType: !3472, size: 64, offset: 896)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!139, !3435, !3475, !140, !125}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_packet", file: !142, line: 393, size: 32, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !3476, file: !142, line: 394, baseType: !1152, size: 16)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !3476, file: !142, line: 395, baseType: !235, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !3476, file: !142, line: 396, baseType: !235, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 16)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !3476, file: !142, line: 398, baseType: !235, size: 2, offset: 18, flags: DIFlagBitField, extraData: i64 16)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !3476, file: !142, line: 399, baseType: !235, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "header_length", scope: !3476, file: !142, line: 400, baseType: !235, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 16)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3476, file: !142, line: 401, baseType: !3485, offset: 32)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, elements: !1591)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue_iso", scope: !3371, file: !3372, line: 109, baseType: !3459, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iso_completions", scope: !3371, file: !3372, line: 111, baseType: !3488, size: 64, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!139, !3435}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "stop_iso", scope: !3371, file: !3372, line: 113, baseType: !3488, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3366, file: !142, line: 85, baseType: !3493, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !78, line: 461, size: 5568, elements: !3495)
!3495 = !{!3496, !3793, !3794, !3797, !3798, !3849, !3922, !3923, !3924, !3925, !3926, !3935, !4040, !4053, !4056, !4057, !4061, !4062, !4063, !4064, !4068, !4074, !4075, !4078, !4082, !4172, !4173, !4174, !4175, !4176, !4208, !4209, !4210, !4213, !4216, !4217, !4218, !4219}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3494, file: !78, line: 462, baseType: !3497, size: 512)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3498, line: 64, size: 512, elements: !3499)
!3498 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3499 = !{!3500, !3501, !3502, !3504, !3544, !3644, !3783, !3788, !3789, !3790, !3791, !3792}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3497, file: !3498, line: 65, baseType: !295, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3497, file: !3498, line: 66, baseType: !159, size: 128, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3497, file: !3498, line: 67, baseType: !3503, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3497, file: !3498, line: 68, baseType: !3505, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3498, line: 192, size: 704, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3506, file: !3498, line: 193, baseType: !159, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3506, file: !3498, line: 194, baseType: !258, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3506, file: !3498, line: 195, baseType: !3497, size: 512, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3506, file: !3498, line: 196, baseType: !3512, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3498, line: 156, size: 192, elements: !3515)
!3515 = !{!3516, !3521, !3526}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3514, file: !3498, line: 157, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!139, !3505, !3503}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3514, file: !3498, line: 158, baseType: !3522, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!295, !3505, !3503}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3514, file: !3498, line: 159, baseType: !3527, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3528)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!139, !3505, !3503, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3498, line: 148, size: 20736, elements: !3533)
!3533 = !{!3534, !3536, !3538, !3539, !3543}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3532, file: !3498, line: 149, baseType: !3535, size: 192)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 192, elements: !409)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3532, file: !3498, line: 150, baseType: !3537, size: 4096, offset: 192)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 4096, elements: !2038)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3532, file: !3498, line: 151, baseType: !139, size: 32, offset: 4288)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3532, file: !3498, line: 152, baseType: !3540, size: 16384, offset: 4320)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 16384, elements: !3541)
!3541 = !{!3542}
!3542 = !DISubrange(count: 2048)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3532, file: !3498, line: 153, baseType: !139, size: 32, offset: 20704)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3497, file: !3498, line: 69, baseType: !3545, size: 64, offset: 320)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3498, line: 138, size: 448, elements: !3547)
!3547 = !{!3548, !3552, !3571, !3573, !3606, !3634, !3638}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3546, file: !3498, line: 139, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3503}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3546, file: !3498, line: 140, baseType: !3553, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3555)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3556, line: 230, size: 128, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3567}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3555, file: !3556, line: 231, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!114, !3503, !3562, !321}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3556, line: 30, size: 128, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3563, file: !3556, line: 31, baseType: !295, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3563, file: !3556, line: 32, baseType: !173, size: 16, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3555, file: !3556, line: 232, baseType: !3568, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!114, !3503, !3562, !295, !1128}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3546, file: !3498, line: 141, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3546, file: !3498, line: 142, baseType: !3574, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3556, line: 84, size: 320, elements: !3578)
!3578 = !{!3579, !3580, !3584, !3603, !3604}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3577, file: !3556, line: 85, baseType: !295, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3577, file: !3556, line: 86, baseType: !3581, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!173, !3503, !3562, !139}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3577, file: !3556, line: 88, baseType: !3585, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!173, !3503, !3588, !139}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3556, line: 168, size: 448, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3598, !3599}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3589, file: !3556, line: 169, baseType: !3563, size: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3589, file: !3556, line: 170, baseType: !1128, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3589, file: !3556, line: 171, baseType: !113, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3589, file: !3556, line: 172, baseType: !3595, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!114, !1099, !3503, !3588, !321, !359, !1128}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3589, file: !3556, line: 174, baseType: !3595, size: 64, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3589, file: !3556, line: 176, baseType: !3600, size: 64, offset: 384)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!139, !1099, !3503, !3588, !985}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3577, file: !3556, line: 90, baseType: !3572, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3577, file: !3556, line: 91, baseType: !3605, size: 64, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3546, file: !3498, line: 143, baseType: !3607, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!3610, !3503}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !66, line: 39, size: 384, elements: !3613)
!3613 = !{!3614, !3615, !3619, !3623, !3629, !3633}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3612, file: !66, line: 40, baseType: !65, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3612, file: !66, line: 41, baseType: !3616, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!340}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3612, file: !66, line: 42, baseType: !3620, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!113}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3612, file: !66, line: 43, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!2279, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !66, line: 19, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3612, file: !66, line: 44, baseType: !3630, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!2279}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3612, file: !66, line: 45, baseType: !2558, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3546, file: !3498, line: 144, baseType: !3635, size: 64, offset: 320)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!2279, !3503}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3546, file: !3498, line: 145, baseType: !3639, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3503, !3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3497, file: !3498, line: 70, baseType: !3645, size: 64, offset: 384)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !374, line: 123, size: 1024, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3776, !3777, !3778, !3779, !3780}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3646, file: !374, line: 124, baseType: !530, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3646, file: !374, line: 125, baseType: !530, size: 32, offset: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3646, file: !374, line: 135, baseType: !3645, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3646, file: !374, line: 136, baseType: !295, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3646, file: !374, line: 138, baseType: !841, size: 192, align: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3646, file: !374, line: 140, baseType: !2279, size: 64, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3646, file: !374, line: 141, baseType: !5, size: 32, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !374, line: 142, baseType: !3656, size: 256, offset: 512)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3646, file: !374, line: 142, size: 256, elements: !3657)
!3657 = !{!3658, !3704, !3708}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3656, file: !374, line: 143, baseType: !3659, size: 192)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !374, line: 91, size: 192, elements: !3660)
!3660 = !{!3661, !3662, !3663}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3659, file: !374, line: 92, baseType: !125, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3659, file: !374, line: 94, baseType: !942, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3659, file: !374, line: 100, baseType: !3664, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !374, line: 180, size: 704, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3676, !3677, !3678, !3702, !3703}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3665, file: !374, line: 182, baseType: !3645, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3665, file: !374, line: 183, baseType: !5, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3665, file: !374, line: 186, baseType: !3670, size: 192, offset: 128)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3671, line: 19, size: 192, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3672 = !{!3673, !3674, !3675}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3670, file: !3671, line: 20, baseType: !2093, size: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3670, file: !3671, line: 21, baseType: !5, size: 32, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3670, file: !3671, line: 22, baseType: !5, size: 32, offset: 160)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3665, file: !374, line: 187, baseType: !235, size: 32, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3665, file: !374, line: 188, baseType: !235, size: 32, offset: 352)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3665, file: !374, line: 189, baseType: !3679, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !374, line: 168, size: 320, elements: !3681)
!3681 = !{!3682, !3686, !3690, !3694, !3698}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3680, file: !374, line: 169, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!139, !471, !3664}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3680, file: !374, line: 171, baseType: !3687, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!139, !3645, !295, !173}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3680, file: !374, line: 173, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!139, !3645}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3680, file: !374, line: 174, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!139, !3645, !3645, !295}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3680, file: !374, line: 176, baseType: !3699, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!139, !471, !3645, !3664}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3665, file: !374, line: 192, baseType: !159, size: 128, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3665, file: !374, line: 194, baseType: !769, size: 128, offset: 576)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3656, file: !374, line: 144, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !374, line: 103, size: 64, elements: !3706)
!3706 = !{!3707}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3705, file: !374, line: 104, baseType: !3645, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3656, file: !374, line: 145, baseType: !3709, size: 256)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !374, line: 107, size: 256, elements: !3710)
!3710 = !{!3711, !3771, !3774, !3775}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3709, file: !374, line: 108, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3714)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !374, line: 217, size: 768, elements: !3715)
!3715 = !{!3716, !3736, !3740, !3744, !3748, !3752, !3756, !3760, !3761, !3762, !3763, !3767}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3714, file: !374, line: 222, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!139, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !374, line: 197, size: 1088, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3721, file: !374, line: 199, baseType: !3645, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3721, file: !374, line: 200, baseType: !1099, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3721, file: !374, line: 201, baseType: !471, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3721, file: !374, line: 202, baseType: !113, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3721, file: !374, line: 205, baseType: !514, size: 192, offset: 256)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3721, file: !374, line: 206, baseType: !514, size: 192, offset: 448)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3721, file: !374, line: 207, baseType: !139, size: 32, offset: 640)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3721, file: !374, line: 208, baseType: !159, size: 128, offset: 704)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3721, file: !374, line: 209, baseType: !321, size: 64, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3721, file: !374, line: 211, baseType: !1128, size: 64, offset: 896)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3721, file: !374, line: 212, baseType: !340, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3721, file: !374, line: 213, baseType: !340, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3721, file: !374, line: 214, baseType: !1013, size: 64, offset: 1024)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3714, file: !374, line: 223, baseType: !3737, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3720}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3714, file: !374, line: 236, baseType: !3741, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!139, !471, !113}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3714, file: !374, line: 238, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!113, !471, !1131}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3714, file: !374, line: 239, baseType: !3749, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!113, !471, !113, !1131}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3714, file: !374, line: 240, baseType: !3753, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !471, !113}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3714, file: !374, line: 242, baseType: !3757, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!114, !3720, !321, !1128, !359}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3714, file: !374, line: 252, baseType: !1128, size: 64, offset: 448)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3714, file: !374, line: 259, baseType: !340, size: 8, offset: 512)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3714, file: !374, line: 260, baseType: !3757, size: 64, offset: 576)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3714, file: !374, line: 263, baseType: !3764, size: 64, offset: 640)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!1187, !3720, !1188}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3714, file: !374, line: 266, baseType: !3768, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!139, !3720, !985}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3709, file: !374, line: 109, baseType: !3772, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !374, line: 31, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3709, file: !374, line: 110, baseType: !359, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3709, file: !374, line: 111, baseType: !3645, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3646, file: !374, line: 148, baseType: !113, size: 64, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3646, file: !374, line: 154, baseType: !120, size: 64, offset: 832)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3646, file: !374, line: 156, baseType: !174, size: 16, offset: 896)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3646, file: !374, line: 157, baseType: !173, size: 16, offset: 912)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3646, file: !374, line: 158, baseType: !3781, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !374, line: 32, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3497, file: !3498, line: 71, baseType: !3784, size: 32, offset: 448)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3785, line: 19, size: 32, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3786 = !{!3787}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3784, file: !3785, line: 20, baseType: !816, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3497, file: !3498, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3497, file: !3498, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3497, file: !3498, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3497, file: !3498, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3497, file: !3498, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3494, file: !78, line: 463, baseType: !3493, size: 64, offset: 512)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3494, file: !78, line: 465, baseType: !3795, size: 64, offset: 576)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !78, line: 36, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3494, file: !78, line: 467, baseType: !295, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3494, file: !78, line: 468, baseType: !3799, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3801)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !78, line: 87, size: 384, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3809, !3814, !3818}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3801, file: !78, line: 88, baseType: !295, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3801, file: !78, line: 89, baseType: !3574, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3801, file: !78, line: 90, baseType: !3806, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!139, !3493, !3531}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3801, file: !78, line: 91, baseType: !3810, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!321, !3493, !3813, !3642, !3643}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3801, file: !78, line: 93, baseType: !3815, size: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !3493}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3801, file: !78, line: 95, baseType: !3819, size: 64, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3821)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !85, line: 278, size: 1472, elements: !3822)
!3822 = !{!3823, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3821, file: !85, line: 279, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!139, !3493}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3821, file: !85, line: 280, baseType: !3815, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3821, file: !85, line: 281, baseType: !3824, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3821, file: !85, line: 282, baseType: !3824, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3821, file: !85, line: 283, baseType: !3824, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3821, file: !85, line: 284, baseType: !3824, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3821, file: !85, line: 285, baseType: !3824, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3821, file: !85, line: 286, baseType: !3824, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3821, file: !85, line: 287, baseType: !3824, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3821, file: !85, line: 288, baseType: !3824, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3821, file: !85, line: 289, baseType: !3824, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3821, file: !85, line: 290, baseType: !3824, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3821, file: !85, line: 291, baseType: !3824, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3821, file: !85, line: 292, baseType: !3824, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3821, file: !85, line: 293, baseType: !3824, size: 64, offset: 896)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3821, file: !85, line: 294, baseType: !3824, size: 64, offset: 960)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3821, file: !85, line: 295, baseType: !3824, size: 64, offset: 1024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3821, file: !85, line: 296, baseType: !3824, size: 64, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3821, file: !85, line: 297, baseType: !3824, size: 64, offset: 1152)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3821, file: !85, line: 298, baseType: !3824, size: 64, offset: 1216)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3821, file: !85, line: 299, baseType: !3824, size: 64, offset: 1280)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3821, file: !85, line: 300, baseType: !3824, size: 64, offset: 1344)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3821, file: !85, line: 301, baseType: !3824, size: 64, offset: 1408)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3494, file: !78, line: 470, baseType: !3850, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3852, line: 82, size: 1408, elements: !3853)
!3852 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859, !3860, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3917, !3920, !3921}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !3852, line: 83, baseType: !295, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3851, file: !3852, line: 84, baseType: !295, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3851, file: !3852, line: 85, baseType: !3493, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3851, file: !3852, line: 86, baseType: !3574, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3851, file: !3852, line: 87, baseType: !3574, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3851, file: !3852, line: 88, baseType: !3574, size: 64, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3851, file: !3852, line: 90, baseType: !3861, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!139, !3493, !3864}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !72, line: 95, size: 1152, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3877, !3881, !3882, !3883, !3884, !3885, !3893, !3894, !3895, !3896, !3897, !3898}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3865, file: !72, line: 96, baseType: !295, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3865, file: !72, line: 97, baseType: !3850, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3865, file: !72, line: 99, baseType: !388, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3865, file: !72, line: 100, baseType: !295, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3865, file: !72, line: 102, baseType: !340, size: 8, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3865, file: !72, line: 103, baseType: !71, size: 32, offset: 288)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3865, file: !72, line: 105, baseType: !3874, size: 64, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3876)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !72, line: 105, flags: DIFlagFwdDecl)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3865, file: !72, line: 106, baseType: !3878, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3880)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !72, line: 106, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3865, file: !72, line: 108, baseType: !3824, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3865, file: !72, line: 109, baseType: !3815, size: 64, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3865, file: !72, line: 110, baseType: !3824, size: 64, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3865, file: !72, line: 111, baseType: !3815, size: 64, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3865, file: !72, line: 112, baseType: !3886, size: 64, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!139, !3493, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !85, line: 52, baseType: !3890)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !85, line: 50, size: 32, elements: !3891)
!3891 = !{!3892}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3890, file: !85, line: 51, baseType: !139, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3865, file: !72, line: 113, baseType: !3824, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3865, file: !72, line: 114, baseType: !3574, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3865, file: !72, line: 115, baseType: !3574, size: 64, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3865, file: !72, line: 117, baseType: !3819, size: 64, offset: 960)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3865, file: !72, line: 118, baseType: !3815, size: 64, offset: 1024)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3865, file: !72, line: 120, baseType: !3899, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !72, line: 120, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3851, file: !3852, line: 91, baseType: !3806, size: 64, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3851, file: !3852, line: 92, baseType: !3824, size: 64, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3851, file: !3852, line: 93, baseType: !3815, size: 64, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3851, file: !3852, line: 94, baseType: !3824, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3851, file: !3852, line: 95, baseType: !3815, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3851, file: !3852, line: 97, baseType: !3824, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3851, file: !3852, line: 98, baseType: !3824, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3851, file: !3852, line: 100, baseType: !3886, size: 64, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3851, file: !3852, line: 101, baseType: !3824, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3851, file: !3852, line: 103, baseType: !3824, size: 64, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3851, file: !3852, line: 105, baseType: !3824, size: 64, offset: 1088)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3851, file: !3852, line: 107, baseType: !3819, size: 64, offset: 1152)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3851, file: !3852, line: 109, baseType: !3914, size: 64, offset: 1216)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3916)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3852, line: 109, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3851, file: !3852, line: 111, baseType: !3918, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3852, line: 111, flags: DIFlagFwdDecl)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3851, file: !3852, line: 112, baseType: !403, offset: 1344)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3851, file: !3852, line: 114, baseType: !340, size: 8, offset: 1344)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3494, file: !78, line: 471, baseType: !3864, size: 64, offset: 832)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3494, file: !78, line: 473, baseType: !113, size: 64, offset: 896)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3494, file: !78, line: 475, baseType: !113, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3494, file: !78, line: 480, baseType: !514, size: 192, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3494, file: !78, line: 484, baseType: !3927, size: 576, offset: 1216)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !78, line: 361, size: 576, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3927, file: !78, line: 362, baseType: !159, size: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3927, file: !78, line: 363, baseType: !159, size: 128, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3927, file: !78, line: 364, baseType: !159, size: 128, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3927, file: !78, line: 365, baseType: !159, size: 128, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3927, file: !78, line: 366, baseType: !340, size: 8, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3927, file: !78, line: 367, baseType: !77, size: 32, offset: 544)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3494, file: !78, line: 485, baseType: !3936, size: 2304, offset: 1792)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !85, line: 565, size: 2304, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4033, !4037}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3936, file: !85, line: 566, baseType: !3889, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3936, file: !85, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3936, file: !85, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3936, file: !85, line: 569, baseType: !340, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3936, file: !85, line: 570, baseType: !340, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3936, file: !85, line: 571, baseType: !340, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3936, file: !85, line: 572, baseType: !340, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3936, file: !85, line: 573, baseType: !340, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3936, file: !85, line: 574, baseType: !340, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3936, file: !85, line: 575, baseType: !340, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3936, file: !85, line: 576, baseType: !340, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3936, file: !85, line: 577, baseType: !235, size: 32, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3936, file: !85, line: 578, baseType: !258, offset: 96)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3936, file: !85, line: 580, baseType: !159, size: 128, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3936, file: !85, line: 581, baseType: !1713, size: 192, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3936, file: !85, line: 582, baseType: !3954, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3956, line: 43, size: 1472, elements: !3957)
!3956 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3965, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3955, file: !3956, line: 44, baseType: !295, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3955, file: !3956, line: 45, baseType: !139, size: 32, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3955, file: !3956, line: 46, baseType: !159, size: 128, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3955, file: !3956, line: 47, baseType: !258, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3955, file: !3956, line: 48, baseType: !3963, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !85, line: 533, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3955, file: !3956, line: 49, baseType: !3966, size: 320, offset: 320)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3967, line: 11, size: 320, elements: !3968)
!3967 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !{!3969, !3970, !3971, !3976}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3966, file: !3967, line: 16, baseType: !397, size: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3966, file: !3967, line: 17, baseType: !125, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3966, file: !3967, line: 18, baseType: !3972, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3966, file: !3967, line: 19, baseType: !235, size: 32, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3955, file: !3956, line: 50, baseType: !125, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3955, file: !3956, line: 51, baseType: !893, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3955, file: !3956, line: 52, baseType: !893, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3955, file: !3956, line: 53, baseType: !893, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3955, file: !3956, line: 54, baseType: !893, size: 64, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3955, file: !3956, line: 55, baseType: !893, size: 64, offset: 960)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3955, file: !3956, line: 56, baseType: !125, size: 64, offset: 1024)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3955, file: !3956, line: 57, baseType: !125, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3955, file: !3956, line: 58, baseType: !125, size: 64, offset: 1152)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3955, file: !3956, line: 59, baseType: !125, size: 64, offset: 1216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3955, file: !3956, line: 60, baseType: !125, size: 64, offset: 1280)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3955, file: !3956, line: 61, baseType: !3493, size: 64, offset: 1344)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3955, file: !3956, line: 62, baseType: !340, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3955, file: !3956, line: 63, baseType: !340, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3936, file: !85, line: 583, baseType: !340, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3936, file: !85, line: 584, baseType: !340, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3936, file: !85, line: 585, baseType: !340, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3936, file: !85, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3936, file: !85, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3936, file: !85, line: 592, baseType: !885, size: 512, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3936, file: !85, line: 593, baseType: !120, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3936, file: !85, line: 594, baseType: !1738, size: 256, offset: 1152)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3936, file: !85, line: 595, baseType: !769, size: 128, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3936, file: !85, line: 596, baseType: !3963, size: 64, offset: 1536)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3936, file: !85, line: 597, baseType: !530, size: 32, offset: 1600)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3936, file: !85, line: 598, baseType: !530, size: 32, offset: 1632)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3936, file: !85, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3936, file: !85, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3936, file: !85, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3936, file: !85, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3936, file: !85, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3936, file: !85, line: 604, baseType: !340, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3936, file: !85, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3936, file: !85, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3936, file: !85, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3936, file: !85, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3936, file: !85, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3936, file: !85, line: 610, baseType: !5, size: 32, offset: 1696)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3936, file: !85, line: 611, baseType: !84, size: 32, offset: 1728)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3936, file: !85, line: 612, baseType: !92, size: 32, offset: 1760)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3936, file: !85, line: 613, baseType: !139, size: 32, offset: 1792)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3936, file: !85, line: 614, baseType: !139, size: 32, offset: 1824)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3936, file: !85, line: 615, baseType: !120, size: 64, offset: 1856)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3936, file: !85, line: 616, baseType: !120, size: 64, offset: 1920)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3936, file: !85, line: 617, baseType: !120, size: 64, offset: 1984)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3936, file: !85, line: 618, baseType: !120, size: 64, offset: 2048)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3936, file: !85, line: 620, baseType: !4024, size: 64, offset: 2112)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !85, line: 536, size: 256, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4025, file: !85, line: 537, baseType: !258)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4025, file: !85, line: 538, baseType: !5, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4025, file: !85, line: 540, baseType: !159, size: 128, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4025, file: !85, line: 543, baseType: !4031, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !85, line: 534, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3936, file: !85, line: 621, baseType: !4034, size: 64, offset: 2176)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !3493, !1449}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3936, file: !85, line: 622, baseType: !4038, size: 64, offset: 2240)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !85, line: 622, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3494, file: !78, line: 486, baseType: !4041, size: 64, offset: 4096)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !85, line: 642, size: 1792, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4050, !4051, !4052}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4042, file: !85, line: 643, baseType: !3821, size: 1472)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4042, file: !85, line: 644, baseType: !3824, size: 64, offset: 1472)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4042, file: !85, line: 645, baseType: !4047, size: 64, offset: 1536)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !3493, !340}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4042, file: !85, line: 646, baseType: !3824, size: 64, offset: 1600)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4042, file: !85, line: 647, baseType: !3815, size: 64, offset: 1664)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4042, file: !85, line: 648, baseType: !3815, size: 64, offset: 1728)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3494, file: !78, line: 493, baseType: !4054, size: 64, offset: 4160)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !78, line: 493, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3494, file: !78, line: 499, baseType: !159, size: 128, offset: 4224)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3494, file: !78, line: 502, baseType: !4058, size: 64, offset: 4352)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4060)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !78, line: 502, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3494, file: !78, line: 504, baseType: !3470, size: 64, offset: 4416)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3494, file: !78, line: 505, baseType: !120, size: 64, offset: 4480)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3494, file: !78, line: 510, baseType: !120, size: 64, offset: 4544)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3494, file: !78, line: 511, baseType: !4065, size: 64, offset: 4608)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4067)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !78, line: 511, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3494, file: !78, line: 513, baseType: !4069, size: 64, offset: 4672)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !78, line: 288, size: 128, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4070, file: !78, line: 293, baseType: !5, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4070, file: !78, line: 294, baseType: !125, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3494, file: !78, line: 515, baseType: !159, size: 128, offset: 4736)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3494, file: !78, line: 526, baseType: !4076, offset: 4864)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4077, line: 5, elements: !272)
!4077 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3494, file: !78, line: 528, baseType: !4079, size: 64, offset: 4864)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4081, line: 14, flags: DIFlagFwdDecl)
!4081 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3494, file: !78, line: 529, baseType: !4083, size: 64, offset: 4928)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4085, line: 17, size: 192, elements: !4086)
!4085 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4086 = !{!4087, !4088, !4171}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4084, file: !4085, line: 18, baseType: !4083, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4084, file: !4085, line: 19, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4085, line: 110, size: 1152, elements: !4092)
!4092 = !{!4093, !4097, !4101, !4107, !4113, !4117, !4121, !4126, !4130, !4131, !4135, !4139, !4143, !4154, !4155, !4156, !4157, !4167}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4091, file: !4085, line: 111, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!4083, !4083}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4091, file: !4085, line: 112, baseType: !4098, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4083}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4091, file: !4085, line: 113, baseType: !4102, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!340, !4105}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4091, file: !4085, line: 114, baseType: !4108, size: 64, offset: 192)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!2279, !4105, !4111}
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4091, file: !4085, line: 116, baseType: !4114, size: 64, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!340, !4105, !295}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4091, file: !4085, line: 118, baseType: !4118, size: 64, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!139, !4105, !295, !5, !113, !1128}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4091, file: !4085, line: 123, baseType: !4122, size: 64, offset: 384)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!139, !4105, !295, !4125, !1128}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4091, file: !4085, line: 126, baseType: !4127, size: 64, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!295, !4105}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4091, file: !4085, line: 127, baseType: !4127, size: 64, offset: 512)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4091, file: !4085, line: 128, baseType: !4132, size: 64, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!4083, !4105}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4091, file: !4085, line: 130, baseType: !4136, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!4083, !4105, !4083}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4091, file: !4085, line: 133, baseType: !4140, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!4083, !4105, !295}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4091, file: !4085, line: 135, baseType: !4144, size: 64, offset: 768)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!139, !4105, !295, !295, !5, !5, !4147}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4085, line: 43, size: 640, elements: !4149)
!4149 = !{!4150, !4151, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4148, file: !4085, line: 44, baseType: !4083, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4148, file: !4085, line: 45, baseType: !5, size: 32, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4148, file: !4085, line: 46, baseType: !4153, size: 512, offset: 128)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !923)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4091, file: !4085, line: 140, baseType: !4136, size: 64, offset: 832)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4091, file: !4085, line: 143, baseType: !4132, size: 64, offset: 896)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4091, file: !4085, line: 145, baseType: !4094, size: 64, offset: 960)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4091, file: !4085, line: 146, baseType: !4158, size: 64, offset: 1024)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!139, !4105, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4085, line: 29, size: 128, elements: !4163)
!4163 = !{!4164, !4165, !4166}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4162, file: !4085, line: 30, baseType: !5, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4162, file: !4085, line: 31, baseType: !5, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4162, file: !4085, line: 32, baseType: !4105, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4091, file: !4085, line: 148, baseType: !4168, size: 64, offset: 1088)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!139, !4105, !3493}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4084, file: !4085, line: 20, baseType: !3493, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3494, file: !78, line: 534, baseType: !354, size: 32, offset: 4992)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3494, file: !78, line: 535, baseType: !235, size: 32, offset: 5024)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3494, file: !78, line: 537, baseType: !258, offset: 5056)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3494, file: !78, line: 538, baseType: !159, size: 128, offset: 5056)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3494, file: !78, line: 540, baseType: !4177, size: 64, offset: 5184)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4179, line: 54, size: 960, elements: !4180)
!4179 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186, !4187, !4191, !4195, !4196, !4197, !4198, !4202, !4206, !4207}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4178, file: !4179, line: 55, baseType: !295, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4178, file: !4179, line: 56, baseType: !388, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4178, file: !4179, line: 58, baseType: !3574, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4178, file: !4179, line: 59, baseType: !3574, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4178, file: !4179, line: 60, baseType: !3503, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4178, file: !4179, line: 62, baseType: !3806, size: 64, offset: 320)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4178, file: !4179, line: 63, baseType: !4188, size: 64, offset: 384)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!321, !3493, !3813}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4178, file: !4179, line: 65, baseType: !4192, size: 64, offset: 448)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4177}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4178, file: !4179, line: 66, baseType: !3815, size: 64, offset: 512)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4178, file: !4179, line: 68, baseType: !3824, size: 64, offset: 576)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4178, file: !4179, line: 70, baseType: !3610, size: 64, offset: 640)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4178, file: !4179, line: 71, baseType: !4199, size: 64, offset: 704)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!2279, !3493}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4178, file: !4179, line: 73, baseType: !4203, size: 64, offset: 768)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !3493, !3642, !3643}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4178, file: !4179, line: 75, baseType: !3819, size: 64, offset: 832)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4178, file: !4179, line: 77, baseType: !3918, size: 64, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3494, file: !78, line: 541, baseType: !3574, size: 64, offset: 5248)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3494, file: !78, line: 543, baseType: !3815, size: 64, offset: 5312)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3494, file: !78, line: 544, baseType: !4211, size: 64, offset: 5376)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !78, line: 45, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3494, file: !78, line: 545, baseType: !4214, size: 64, offset: 5440)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !78, line: 47, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3494, file: !78, line: 547, baseType: !340, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3494, file: !78, line: 548, baseType: !340, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3494, file: !78, line: 549, baseType: !340, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3494, file: !78, line: 550, baseType: !340, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3366, file: !142, line: 86, baseType: !3784, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3366, file: !142, line: 87, baseType: !1713, size: 192, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3366, file: !142, line: 89, baseType: !139, size: 32, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3366, file: !142, line: 90, baseType: !139, size: 32, offset: 416)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "current_tlabel", scope: !3366, file: !142, line: 91, baseType: !139, size: 32, offset: 448)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "tlabel_mask", scope: !3366, file: !142, line: 92, baseType: !120, size: 64, offset: 512)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "transaction_list", scope: !3366, file: !142, line: 93, baseType: !159, size: 128, offset: 576)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "reset_jiffies", scope: !3366, file: !142, line: 94, baseType: !120, size: 64, offset: 704)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_hi", scope: !3366, file: !142, line: 96, baseType: !235, size: 32, offset: 768)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_lo", scope: !3366, file: !142, line: 97, baseType: !235, size: 32, offset: 800)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_cycles", scope: !3366, file: !142, line: 98, baseType: !5, size: 32, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_jiffies", scope: !3366, file: !142, line: 99, baseType: !5, size: 32, offset: 864)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !3366, file: !142, line: 101, baseType: !124, size: 64, offset: 896)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "max_receive", scope: !3366, file: !142, line: 102, baseType: !5, size: 32, offset: 960)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "link_speed", scope: !3366, file: !142, line: 103, baseType: !139, size: 32, offset: 992)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "config_rom_generation", scope: !3366, file: !142, line: 104, baseType: !139, size: 32, offset: 1024)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3366, file: !142, line: 106, baseType: !258, offset: 1056)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "local_node", scope: !3366, file: !142, line: 108, baseType: !4238, size: 64, offset: 1088)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_node", file: !3372, line: 174, size: 320, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4239, file: !3372, line: 175, baseType: !1152, size: 16)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4239, file: !3372, line: 176, baseType: !952, size: 8, offset: 16)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "port_count", scope: !4239, file: !3372, line: 177, baseType: !952, size: 8, offset: 24)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "link_on", scope: !4239, file: !3372, line: 178, baseType: !952, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "initiated_reset", scope: !4239, file: !3372, line: 179, baseType: !952, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "b_path", scope: !4239, file: !3372, line: 180, baseType: !952, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "phy_speed", scope: !4239, file: !3372, line: 181, baseType: !952, size: 2, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !4239, file: !3372, line: 182, baseType: !952, size: 2, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4239, file: !3372, line: 184, baseType: !952, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "max_hops", scope: !4239, file: !3372, line: 185, baseType: !952, size: 4, offset: 44, flags: DIFlagBitField, extraData: i64 40)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !4239, file: !3372, line: 186, baseType: !816, size: 32, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4239, file: !3372, line: 189, baseType: !159, size: 128, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4239, file: !3372, line: 192, baseType: !113, size: 64, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4239, file: !3372, line: 194, baseType: !4255, offset: 320)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4238, elements: !1752)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "root_node", scope: !3366, file: !142, line: 109, baseType: !4238, size: 64, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "irm_node", scope: !3366, file: !142, line: 110, baseType: !4238, size: 64, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !3366, file: !142, line: 111, baseType: !952, size: 8, offset: 1280)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "gap_count", scope: !3366, file: !142, line: 112, baseType: !139, size: 32, offset: 1312)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "beta_repeaters_present", scope: !3366, file: !142, line: 113, baseType: !340, size: 8, offset: 1344)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3366, file: !142, line: 115, baseType: !139, size: 32, offset: 1376)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3366, file: !142, line: 116, baseType: !159, size: 128, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "phy_receiver_list", scope: !3366, file: !142, line: 118, baseType: !159, size: 128, offset: 1536)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "br_work", scope: !3366, file: !142, line: 120, baseType: !4265, size: 704, offset: 1664)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1739, line: 115, size: 704, elements: !4266)
!4266 = !{!4267, !4268, !4269, !4270}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4265, file: !1739, line: 116, baseType: !1738, size: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4265, file: !1739, line: 117, baseType: !3966, size: 320, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4265, file: !1739, line: 120, baseType: !2505, size: 64, offset: 576)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4265, file: !1739, line: 121, baseType: !139, size: 32, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "br_short", scope: !3366, file: !142, line: 121, baseType: !340, size: 8, offset: 2368)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bm_work", scope: !3366, file: !142, line: 123, baseType: !4265, size: 704, offset: 2432)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bm_retries", scope: !3366, file: !142, line: 124, baseType: !139, size: 32, offset: 3136)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "bm_generation", scope: !3366, file: !142, line: 125, baseType: !139, size: 32, offset: 3168)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "bm_node_id", scope: !3366, file: !142, line: 126, baseType: !139, size: 32, offset: 3200)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "bm_abdicate", scope: !3366, file: !142, line: 127, baseType: !340, size: 8, offset: 3232)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "priority_budget_implemented", scope: !3366, file: !142, line: 129, baseType: !340, size: 8, offset: 3240)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel_auto_allocated", scope: !3366, file: !142, line: 130, baseType: !340, size: 8, offset: 3248)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel_allocated", scope: !3366, file: !142, line: 132, baseType: !340, size: 8, offset: 3256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel", scope: !3366, file: !142, line: 133, baseType: !235, size: 32, offset: 3264)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "topology_map", scope: !3366, file: !142, line: 134, baseType: !4282, size: 8192, offset: 3296)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 8192, elements: !4283)
!4283 = !{!4284}
!4284 = !DISubrange(count: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "maint_utility_register", scope: !3366, file: !142, line: 136, baseType: !126, size: 32, offset: 11488)
!4286 = !DILocalVariable(name: "buffer", arg: 1, scope: !3362, file: !1, line: 94, type: !140)
!4287 = !DILocation(line: 94, column: 50, scope: !3362)
!4288 = !DILocalVariable(name: "card", arg: 2, scope: !3362, file: !1, line: 95, type: !3365)
!4289 = !DILocation(line: 95, column: 23, scope: !3362)
!4290 = !DILocalVariable(name: "i", scope: !3362, file: !1, line: 97, type: !139)
!4291 = !DILocation(line: 97, column: 6, scope: !3362)
!4292 = !DILocalVariable(name: "address", scope: !3362, file: !1, line: 98, type: !119)
!4293 = !DILocation(line: 98, column: 13, scope: !3362)
!4294 = !DILocation(line: 100, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !3362, file: !1, line: 100, column: 2)
!4296 = !DILocation(line: 100, column: 7, scope: !4295)
!4297 = !DILocation(line: 100, column: 14, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !1, line: 100, column: 2)
!4299 = !DILocation(line: 100, column: 18, scope: !4298)
!4300 = !DILocation(line: 100, column: 26, scope: !4298)
!4301 = !DILocation(line: 100, column: 16, scope: !4298)
!4302 = !DILocation(line: 100, column: 2, scope: !4295)
!4303 = !DILocation(line: 101, column: 13, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4298, file: !1, line: 100, column: 50)
!4305 = !DILocation(line: 101, column: 11, scope: !4304)
!4306 = !DILocation(line: 102, column: 3, scope: !4304)
!4307 = !DILocation(line: 104, column: 2, scope: !4304)
!4308 = !DILocation(line: 100, column: 46, scope: !4298)
!4309 = !DILocation(line: 100, column: 2, scope: !4298)
!4310 = distinct !{!4310, !4302, !4311}
!4311 = !DILocation(line: 104, column: 2, scope: !4295)
!4312 = !DILocation(line: 105, column: 9, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !3362, file: !1, line: 105, column: 2)
!4314 = !DILocation(line: 105, column: 7, scope: !4313)
!4315 = !DILocation(line: 105, column: 14, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !1, line: 105, column: 2)
!4317 = !DILocation(line: 105, column: 18, scope: !4316)
!4318 = !DILocation(line: 105, column: 26, scope: !4316)
!4319 = !DILocation(line: 105, column: 16, scope: !4316)
!4320 = !DILocation(line: 105, column: 2, scope: !4313)
!4321 = !DILocation(line: 106, column: 3, scope: !4316)
!4322 = !DILocation(line: 105, column: 39, scope: !4316)
!4323 = !DILocation(line: 105, column: 2, scope: !4316)
!4324 = distinct !{!4324, !4320, !4325}
!4325 = !DILocation(line: 106, column: 3, scope: !4313)
!4326 = !DILocation(line: 108, column: 8, scope: !3362)
!4327 = !DILocation(line: 108, column: 16, scope: !3362)
!4328 = !DILocation(line: 108, column: 2, scope: !3362)
!4329 = !DILocation(line: 109, column: 2, scope: !3362)
!4330 = !DILocation(line: 109, column: 10, scope: !3362)
!4331 = !DILocation(line: 109, column: 16, scope: !3362)
!4332 = !DILocation(line: 110, column: 2, scope: !3362)
!4333 = !DILocation(line: 110, column: 10, scope: !3362)
!4334 = !DILocation(line: 110, column: 21, scope: !3362)
!4335 = !DILocation(line: 111, column: 2, scope: !3362)
!4336 = !DILocation(line: 111, column: 10, scope: !3362)
!4337 = !DILocation(line: 111, column: 28, scope: !3362)
!4338 = !DILocation(line: 112, column: 1, scope: !3362)
!4339 = distinct !DISubprogram(name: "fw_iso_buffer_map_dma", scope: !1, file: !1, line: 54, type: !4340, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!139, !140, !3365, !3}
!4342 = !DILocalVariable(name: "buffer", arg: 1, scope: !4339, file: !1, line: 54, type: !140)
!4343 = !DILocation(line: 54, column: 49, scope: !4339)
!4344 = !DILocalVariable(name: "card", arg: 2, scope: !4339, file: !1, line: 54, type: !3365)
!4345 = !DILocation(line: 54, column: 73, scope: !4339)
!4346 = !DILocalVariable(name: "direction", arg: 3, scope: !4339, file: !1, line: 55, type: !3)
!4347 = !DILocation(line: 55, column: 30, scope: !4339)
!4348 = !DILocalVariable(name: "address", scope: !4339, file: !1, line: 57, type: !119)
!4349 = !DILocation(line: 57, column: 13, scope: !4339)
!4350 = !DILocalVariable(name: "i", scope: !4339, file: !1, line: 58, type: !139)
!4351 = !DILocation(line: 58, column: 6, scope: !4339)
!4352 = !DILocation(line: 60, column: 22, scope: !4339)
!4353 = !DILocation(line: 60, column: 2, scope: !4339)
!4354 = !DILocation(line: 60, column: 10, scope: !4339)
!4355 = !DILocation(line: 60, column: 20, scope: !4339)
!4356 = !DILocation(line: 62, column: 9, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4339, file: !1, line: 62, column: 2)
!4358 = !DILocation(line: 62, column: 7, scope: !4357)
!4359 = !DILocation(line: 62, column: 14, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 62, column: 2)
!4361 = !DILocation(line: 62, column: 18, scope: !4360)
!4362 = !DILocation(line: 62, column: 26, scope: !4360)
!4363 = !DILocation(line: 62, column: 16, scope: !4360)
!4364 = !DILocation(line: 62, column: 2, scope: !4357)
!4365 = !DILocation(line: 63, column: 13, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4360, file: !1, line: 62, column: 43)
!4367 = !DILocation(line: 63, column: 11, scope: !4366)
!4368 = !DILocation(line: 65, column: 25, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !1, line: 65, column: 7)
!4370 = !DILocation(line: 65, column: 31, scope: !4369)
!4371 = !DILocation(line: 65, column: 39, scope: !4369)
!4372 = !DILocation(line: 65, column: 7, scope: !4369)
!4373 = !DILocation(line: 65, column: 7, scope: !4366)
!4374 = !DILocation(line: 66, column: 4, scope: !4369)
!4375 = !DILocation(line: 68, column: 20, scope: !4366)
!4376 = !DILocation(line: 68, column: 28, scope: !4366)
!4377 = !DILocation(line: 68, column: 34, scope: !4366)
!4378 = !DILocation(line: 68, column: 38, scope: !4366)
!4379 = !DILocation(line: 68, column: 3, scope: !4366)
!4380 = !DILocation(line: 69, column: 2, scope: !4366)
!4381 = !DILocation(line: 62, column: 39, scope: !4360)
!4382 = !DILocation(line: 62, column: 2, scope: !4360)
!4383 = distinct !{!4383, !4364, !4384}
!4384 = !DILocation(line: 69, column: 2, scope: !4357)
!4385 = !DILocation(line: 70, column: 30, scope: !4339)
!4386 = !DILocation(line: 70, column: 2, scope: !4339)
!4387 = !DILocation(line: 70, column: 10, scope: !4339)
!4388 = !DILocation(line: 70, column: 28, scope: !4339)
!4389 = !DILocation(line: 71, column: 6, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4339, file: !1, line: 71, column: 6)
!4391 = !DILocation(line: 71, column: 10, scope: !4390)
!4392 = !DILocation(line: 71, column: 18, scope: !4390)
!4393 = !DILocation(line: 71, column: 8, scope: !4390)
!4394 = !DILocation(line: 71, column: 6, scope: !4339)
!4395 = !DILocation(line: 72, column: 3, scope: !4390)
!4396 = !DILocation(line: 74, column: 2, scope: !4339)
!4397 = !DILocation(line: 75, column: 1, scope: !4339)
!4398 = distinct !DISubprogram(name: "dma_mapping_error", scope: !4399, file: !4399, line: 94, type: !4400, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4399 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!139, !3493, !119}
!4402 = !DILocalVariable(name: "dev", arg: 1, scope: !4398, file: !4399, line: 94, type: !3493)
!4403 = !DILocation(line: 94, column: 52, scope: !4398)
!4404 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !4398, file: !4399, line: 94, type: !119)
!4405 = !DILocation(line: 94, column: 68, scope: !4398)
!4406 = !DILocation(line: 96, column: 26, scope: !4398)
!4407 = !DILocation(line: 96, column: 31, scope: !4398)
!4408 = !DILocation(line: 96, column: 2, scope: !4398)
!4409 = !DILocation(line: 98, column: 6, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4398, file: !4399, line: 98, column: 6)
!4411 = !DILocation(line: 98, column: 15, scope: !4410)
!4412 = !DILocation(line: 98, column: 6, scope: !4398)
!4413 = !DILocation(line: 99, column: 3, scope: !4410)
!4414 = !DILocation(line: 100, column: 2, scope: !4398)
!4415 = !DILocation(line: 101, column: 1, scope: !4398)
!4416 = distinct !DISubprogram(name: "set_page_private", scope: !149, file: !149, line: 248, type: !4417, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{null, !147, !125}
!4419 = !DILocalVariable(name: "page", arg: 1, scope: !4416, file: !149, line: 248, type: !147)
!4420 = !DILocation(line: 248, column: 50, scope: !4416)
!4421 = !DILocalVariable(name: "private", arg: 2, scope: !4416, file: !149, line: 248, type: !125)
!4422 = !DILocation(line: 248, column: 70, scope: !4416)
!4423 = !DILocation(line: 250, column: 18, scope: !4416)
!4424 = !DILocation(line: 250, column: 2, scope: !4416)
!4425 = !DILocation(line: 250, column: 8, scope: !4416)
!4426 = !DILocation(line: 250, column: 16, scope: !4416)
!4427 = !DILocation(line: 251, column: 1, scope: !4416)
!4428 = distinct !DISubprogram(name: "fw_iso_buffer_init", scope: !1, file: !1, line: 77, type: !4429, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!139, !140, !3365, !139, !3}
!4431 = !DILocalVariable(name: "buffer", arg: 1, scope: !4428, file: !1, line: 77, type: !140)
!4432 = !DILocation(line: 77, column: 46, scope: !4428)
!4433 = !DILocalVariable(name: "card", arg: 2, scope: !4428, file: !1, line: 77, type: !3365)
!4434 = !DILocation(line: 77, column: 70, scope: !4428)
!4435 = !DILocalVariable(name: "page_count", arg: 3, scope: !4428, file: !1, line: 78, type: !139)
!4436 = !DILocation(line: 78, column: 14, scope: !4428)
!4437 = !DILocalVariable(name: "direction", arg: 4, scope: !4428, file: !1, line: 78, type: !3)
!4438 = !DILocation(line: 78, column: 50, scope: !4428)
!4439 = !DILocalVariable(name: "ret", scope: !4428, file: !1, line: 80, type: !139)
!4440 = !DILocation(line: 80, column: 6, scope: !4428)
!4441 = !DILocation(line: 82, column: 28, scope: !4428)
!4442 = !DILocation(line: 82, column: 36, scope: !4428)
!4443 = !DILocation(line: 82, column: 8, scope: !4428)
!4444 = !DILocation(line: 82, column: 6, scope: !4428)
!4445 = !DILocation(line: 83, column: 6, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4428, file: !1, line: 83, column: 6)
!4447 = !DILocation(line: 83, column: 10, scope: !4446)
!4448 = !DILocation(line: 83, column: 6, scope: !4428)
!4449 = !DILocation(line: 84, column: 10, scope: !4446)
!4450 = !DILocation(line: 84, column: 3, scope: !4446)
!4451 = !DILocation(line: 86, column: 30, scope: !4428)
!4452 = !DILocation(line: 86, column: 38, scope: !4428)
!4453 = !DILocation(line: 86, column: 44, scope: !4428)
!4454 = !DILocation(line: 86, column: 8, scope: !4428)
!4455 = !DILocation(line: 86, column: 6, scope: !4428)
!4456 = !DILocation(line: 87, column: 6, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4428, file: !1, line: 87, column: 6)
!4458 = !DILocation(line: 87, column: 10, scope: !4457)
!4459 = !DILocation(line: 87, column: 6, scope: !4428)
!4460 = !DILocation(line: 88, column: 25, scope: !4457)
!4461 = !DILocation(line: 88, column: 33, scope: !4457)
!4462 = !DILocation(line: 88, column: 3, scope: !4457)
!4463 = !DILocation(line: 90, column: 9, scope: !4428)
!4464 = !DILocation(line: 90, column: 2, scope: !4428)
!4465 = !DILocation(line: 91, column: 1, scope: !4428)
!4466 = distinct !DISubprogram(name: "fw_iso_buffer_lookup", scope: !1, file: !1, line: 116, type: !4467, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!1128, !140, !119}
!4469 = !DILocalVariable(name: "buffer", arg: 1, scope: !4466, file: !1, line: 116, type: !140)
!4470 = !DILocation(line: 116, column: 51, scope: !4466)
!4471 = !DILocalVariable(name: "completed", arg: 2, scope: !4466, file: !1, line: 116, type: !119)
!4472 = !DILocation(line: 116, column: 70, scope: !4466)
!4473 = !DILocalVariable(name: "i", scope: !4466, file: !1, line: 118, type: !1128)
!4474 = !DILocation(line: 118, column: 9, scope: !4466)
!4475 = !DILocalVariable(name: "address", scope: !4466, file: !1, line: 119, type: !119)
!4476 = !DILocation(line: 119, column: 13, scope: !4466)
!4477 = !DILocalVariable(name: "offset", scope: !4466, file: !1, line: 120, type: !114)
!4478 = !DILocation(line: 120, column: 10, scope: !4466)
!4479 = !DILocation(line: 122, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4466, file: !1, line: 122, column: 2)
!4481 = !DILocation(line: 122, column: 7, scope: !4480)
!4482 = !DILocation(line: 122, column: 14, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 122, column: 2)
!4484 = !DILocation(line: 122, column: 18, scope: !4483)
!4485 = !DILocation(line: 122, column: 26, scope: !4483)
!4486 = !DILocation(line: 122, column: 16, scope: !4483)
!4487 = !DILocation(line: 122, column: 2, scope: !4480)
!4488 = !DILocation(line: 123, column: 13, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4483, file: !1, line: 122, column: 43)
!4490 = !DILocation(line: 123, column: 11, scope: !4489)
!4491 = !DILocation(line: 124, column: 21, scope: !4489)
!4492 = !DILocation(line: 124, column: 42, scope: !4489)
!4493 = !DILocation(line: 124, column: 31, scope: !4489)
!4494 = !DILocation(line: 124, column: 10, scope: !4489)
!4495 = !DILocation(line: 125, column: 7, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4489, file: !1, line: 125, column: 7)
!4497 = !DILocation(line: 125, column: 14, scope: !4496)
!4498 = !DILocation(line: 125, column: 18, scope: !4496)
!4499 = !DILocation(line: 125, column: 21, scope: !4496)
!4500 = !DILocation(line: 125, column: 28, scope: !4496)
!4501 = !DILocation(line: 125, column: 7, scope: !4489)
!4502 = !DILocation(line: 126, column: 12, scope: !4496)
!4503 = !DILocation(line: 126, column: 14, scope: !4496)
!4504 = !DILocation(line: 126, column: 31, scope: !4496)
!4505 = !DILocation(line: 126, column: 29, scope: !4496)
!4506 = !DILocation(line: 126, column: 4, scope: !4496)
!4507 = !DILocation(line: 127, column: 2, scope: !4489)
!4508 = !DILocation(line: 122, column: 39, scope: !4483)
!4509 = !DILocation(line: 122, column: 2, scope: !4483)
!4510 = distinct !{!4510, !4487, !4511}
!4511 = !DILocation(line: 127, column: 2, scope: !4480)
!4512 = !DILocation(line: 129, column: 2, scope: !4466)
!4513 = !DILocation(line: 130, column: 1, scope: !4466)
!4514 = distinct !DISubprogram(name: "fw_iso_context_create", scope: !1, file: !1, line: 132, type: !4515, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!3435, !3365, !139, !139, !139, !1128, !3448, !113}
!4517 = !DILocalVariable(name: "card", arg: 1, scope: !4514, file: !1, line: 132, type: !3365)
!4518 = !DILocation(line: 132, column: 62, scope: !4514)
!4519 = !DILocalVariable(name: "type", arg: 2, scope: !4514, file: !1, line: 133, type: !139)
!4520 = !DILocation(line: 133, column: 7, scope: !4514)
!4521 = !DILocalVariable(name: "channel", arg: 3, scope: !4514, file: !1, line: 133, type: !139)
!4522 = !DILocation(line: 133, column: 17, scope: !4514)
!4523 = !DILocalVariable(name: "speed", arg: 4, scope: !4514, file: !1, line: 133, type: !139)
!4524 = !DILocation(line: 133, column: 30, scope: !4514)
!4525 = !DILocalVariable(name: "header_size", arg: 5, scope: !4514, file: !1, line: 133, type: !1128)
!4526 = !DILocation(line: 133, column: 44, scope: !4514)
!4527 = !DILocalVariable(name: "callback", arg: 6, scope: !4514, file: !1, line: 134, type: !3448)
!4528 = !DILocation(line: 134, column: 21, scope: !4514)
!4529 = !DILocalVariable(name: "callback_data", arg: 7, scope: !4514, file: !1, line: 134, type: !113)
!4530 = !DILocation(line: 134, column: 37, scope: !4514)
!4531 = !DILocalVariable(name: "ctx", scope: !4514, file: !1, line: 136, type: !3435)
!4532 = !DILocation(line: 136, column: 25, scope: !4514)
!4533 = !DILocation(line: 138, column: 8, scope: !4514)
!4534 = !DILocation(line: 138, column: 14, scope: !4514)
!4535 = !DILocation(line: 138, column: 22, scope: !4514)
!4536 = !DILocation(line: 138, column: 43, scope: !4514)
!4537 = !DILocation(line: 139, column: 8, scope: !4514)
!4538 = !DILocation(line: 139, column: 14, scope: !4514)
!4539 = !DILocation(line: 139, column: 23, scope: !4514)
!4540 = !DILocation(line: 138, column: 6, scope: !4514)
!4541 = !DILocation(line: 140, column: 13, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4514, file: !1, line: 140, column: 6)
!4543 = !DILocation(line: 140, column: 6, scope: !4542)
!4544 = !DILocation(line: 140, column: 6, scope: !4514)
!4545 = !DILocation(line: 141, column: 10, scope: !4542)
!4546 = !DILocation(line: 141, column: 3, scope: !4542)
!4547 = !DILocation(line: 143, column: 14, scope: !4514)
!4548 = !DILocation(line: 143, column: 2, scope: !4514)
!4549 = !DILocation(line: 143, column: 7, scope: !4514)
!4550 = !DILocation(line: 143, column: 12, scope: !4514)
!4551 = !DILocation(line: 144, column: 14, scope: !4514)
!4552 = !DILocation(line: 144, column: 2, scope: !4514)
!4553 = !DILocation(line: 144, column: 7, scope: !4514)
!4554 = !DILocation(line: 144, column: 12, scope: !4514)
!4555 = !DILocation(line: 145, column: 17, scope: !4514)
!4556 = !DILocation(line: 145, column: 2, scope: !4514)
!4557 = !DILocation(line: 145, column: 7, scope: !4514)
!4558 = !DILocation(line: 145, column: 15, scope: !4514)
!4559 = !DILocation(line: 146, column: 15, scope: !4514)
!4560 = !DILocation(line: 146, column: 2, scope: !4514)
!4561 = !DILocation(line: 146, column: 7, scope: !4514)
!4562 = !DILocation(line: 146, column: 13, scope: !4514)
!4563 = !DILocation(line: 147, column: 21, scope: !4514)
!4564 = !DILocation(line: 147, column: 2, scope: !4514)
!4565 = !DILocation(line: 147, column: 7, scope: !4514)
!4566 = !DILocation(line: 147, column: 19, scope: !4514)
!4567 = !DILocation(line: 148, column: 21, scope: !4514)
!4568 = !DILocation(line: 148, column: 2, scope: !4514)
!4569 = !DILocation(line: 148, column: 7, scope: !4514)
!4570 = !DILocation(line: 148, column: 16, scope: !4514)
!4571 = !DILocation(line: 148, column: 19, scope: !4514)
!4572 = !DILocation(line: 149, column: 23, scope: !4514)
!4573 = !DILocation(line: 149, column: 2, scope: !4514)
!4574 = !DILocation(line: 149, column: 7, scope: !4514)
!4575 = !DILocation(line: 149, column: 21, scope: !4514)
!4576 = !DILocation(line: 151, column: 9, scope: !4514)
!4577 = !DILocation(line: 151, column: 2, scope: !4514)
!4578 = !DILocation(line: 152, column: 1, scope: !4514)
!4579 = distinct !DISubprogram(name: "IS_ERR", scope: !4580, file: !4580, line: 34, type: !4581, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4580 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!340, !2279}
!4583 = !DILocalVariable(name: "ptr", arg: 1, scope: !4579, file: !4580, line: 34, type: !2279)
!4584 = !DILocation(line: 34, column: 60, scope: !4579)
!4585 = !DILocation(line: 36, column: 9, scope: !4579)
!4586 = !DILocation(line: 36, column: 2, scope: !4579)
!4587 = distinct !DISubprogram(name: "fw_iso_context_destroy", scope: !1, file: !1, line: 155, type: !3460, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4588 = !DILocalVariable(name: "ctx", arg: 1, scope: !4587, file: !1, line: 155, type: !3435)
!4589 = !DILocation(line: 155, column: 52, scope: !4587)
!4590 = !DILocation(line: 157, column: 2, scope: !4587)
!4591 = !DILocation(line: 157, column: 7, scope: !4587)
!4592 = !DILocation(line: 157, column: 13, scope: !4587)
!4593 = !DILocation(line: 157, column: 21, scope: !4587)
!4594 = !DILocation(line: 157, column: 38, scope: !4587)
!4595 = !DILocation(line: 158, column: 1, scope: !4587)
!4596 = distinct !DISubprogram(name: "fw_iso_context_start", scope: !1, file: !1, line: 161, type: !4597, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!139, !3435, !139, !139, !139}
!4599 = !DILocalVariable(name: "ctx", arg: 1, scope: !4596, file: !1, line: 161, type: !3435)
!4600 = !DILocation(line: 161, column: 49, scope: !4596)
!4601 = !DILocalVariable(name: "cycle", arg: 2, scope: !4596, file: !1, line: 162, type: !139)
!4602 = !DILocation(line: 162, column: 9, scope: !4596)
!4603 = !DILocalVariable(name: "sync", arg: 3, scope: !4596, file: !1, line: 162, type: !139)
!4604 = !DILocation(line: 162, column: 20, scope: !4596)
!4605 = !DILocalVariable(name: "tags", arg: 4, scope: !4596, file: !1, line: 162, type: !139)
!4606 = !DILocation(line: 162, column: 30, scope: !4596)
!4607 = !DILocation(line: 164, column: 9, scope: !4596)
!4608 = !DILocation(line: 164, column: 14, scope: !4596)
!4609 = !DILocation(line: 164, column: 20, scope: !4596)
!4610 = !DILocation(line: 164, column: 28, scope: !4596)
!4611 = !DILocation(line: 164, column: 38, scope: !4596)
!4612 = !DILocation(line: 164, column: 43, scope: !4596)
!4613 = !DILocation(line: 164, column: 50, scope: !4596)
!4614 = !DILocation(line: 164, column: 56, scope: !4596)
!4615 = !DILocation(line: 164, column: 2, scope: !4596)
!4616 = distinct !DISubprogram(name: "fw_iso_context_set_channels", scope: !1, file: !1, line: 168, type: !3468, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4617 = !DILocalVariable(name: "ctx", arg: 1, scope: !4616, file: !1, line: 168, type: !3435)
!4618 = !DILocation(line: 168, column: 56, scope: !4616)
!4619 = !DILocalVariable(name: "channels", arg: 2, scope: !4616, file: !1, line: 168, type: !3470)
!4620 = !DILocation(line: 168, column: 66, scope: !4616)
!4621 = !DILocation(line: 170, column: 9, scope: !4616)
!4622 = !DILocation(line: 170, column: 14, scope: !4616)
!4623 = !DILocation(line: 170, column: 20, scope: !4616)
!4624 = !DILocation(line: 170, column: 28, scope: !4616)
!4625 = !DILocation(line: 170, column: 45, scope: !4616)
!4626 = !DILocation(line: 170, column: 50, scope: !4616)
!4627 = !DILocation(line: 170, column: 2, scope: !4616)
!4628 = distinct !DISubprogram(name: "fw_iso_context_queue", scope: !1, file: !1, line: 173, type: !3473, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4629 = !DILocalVariable(name: "ctx", arg: 1, scope: !4628, file: !1, line: 173, type: !3435)
!4630 = !DILocation(line: 173, column: 49, scope: !4628)
!4631 = !DILocalVariable(name: "packet", arg: 2, scope: !4628, file: !1, line: 174, type: !3475)
!4632 = !DILocation(line: 174, column: 27, scope: !4628)
!4633 = !DILocalVariable(name: "buffer", arg: 3, scope: !4628, file: !1, line: 175, type: !140)
!4634 = !DILocation(line: 175, column: 27, scope: !4628)
!4635 = !DILocalVariable(name: "payload", arg: 4, scope: !4628, file: !1, line: 176, type: !125)
!4636 = !DILocation(line: 176, column: 19, scope: !4628)
!4637 = !DILocation(line: 178, column: 9, scope: !4628)
!4638 = !DILocation(line: 178, column: 14, scope: !4628)
!4639 = !DILocation(line: 178, column: 20, scope: !4628)
!4640 = !DILocation(line: 178, column: 28, scope: !4628)
!4641 = !DILocation(line: 178, column: 38, scope: !4628)
!4642 = !DILocation(line: 178, column: 43, scope: !4628)
!4643 = !DILocation(line: 178, column: 51, scope: !4628)
!4644 = !DILocation(line: 178, column: 59, scope: !4628)
!4645 = !DILocation(line: 178, column: 2, scope: !4628)
!4646 = distinct !DISubprogram(name: "fw_iso_context_queue_flush", scope: !1, file: !1, line: 182, type: !3460, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4647 = !DILocalVariable(name: "ctx", arg: 1, scope: !4646, file: !1, line: 182, type: !3435)
!4648 = !DILocation(line: 182, column: 56, scope: !4646)
!4649 = !DILocation(line: 184, column: 2, scope: !4646)
!4650 = !DILocation(line: 184, column: 7, scope: !4646)
!4651 = !DILocation(line: 184, column: 13, scope: !4646)
!4652 = !DILocation(line: 184, column: 21, scope: !4646)
!4653 = !DILocation(line: 184, column: 37, scope: !4646)
!4654 = !DILocation(line: 185, column: 1, scope: !4646)
!4655 = distinct !DISubprogram(name: "fw_iso_context_flush_completions", scope: !1, file: !1, line: 188, type: !3489, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4656 = !DILocalVariable(name: "ctx", arg: 1, scope: !4655, file: !1, line: 188, type: !3435)
!4657 = !DILocation(line: 188, column: 61, scope: !4655)
!4658 = !DILocation(line: 190, column: 9, scope: !4655)
!4659 = !DILocation(line: 190, column: 14, scope: !4655)
!4660 = !DILocation(line: 190, column: 20, scope: !4655)
!4661 = !DILocation(line: 190, column: 28, scope: !4655)
!4662 = !DILocation(line: 190, column: 50, scope: !4655)
!4663 = !DILocation(line: 190, column: 2, scope: !4655)
!4664 = distinct !DISubprogram(name: "fw_iso_context_stop", scope: !1, file: !1, line: 194, type: !3489, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4665 = !DILocalVariable(name: "ctx", arg: 1, scope: !4664, file: !1, line: 194, type: !3435)
!4666 = !DILocation(line: 194, column: 48, scope: !4664)
!4667 = !DILocation(line: 196, column: 9, scope: !4664)
!4668 = !DILocation(line: 196, column: 14, scope: !4664)
!4669 = !DILocation(line: 196, column: 20, scope: !4664)
!4670 = !DILocation(line: 196, column: 28, scope: !4664)
!4671 = !DILocation(line: 196, column: 37, scope: !4664)
!4672 = !DILocation(line: 196, column: 2, scope: !4664)
!4673 = distinct !DISubprogram(name: "fw_iso_resource_manage", scope: !1, file: !1, line: 338, type: !4674, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{null, !3365, !139, !120, !465, !465, !340}
!4676 = !DILocalVariable(name: "lock", arg: 1, scope: !4677, file: !4678, line: 402, type: !1068)
!4677 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4678, file: !4678, line: 402, type: !4679, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4678 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !1068}
!4681 = !DILocation(line: 402, column: 57, scope: !4677, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 348, column: 2, scope: !4673)
!4683 = !DILocalVariable(name: "lock", arg: 1, scope: !4684, file: !4678, line: 377, type: !1068)
!4684 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4678, file: !4678, line: 377, type: !4679, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4685 = !DILocation(line: 377, column: 55, scope: !4684, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 346, column: 2, scope: !4673)
!4687 = !DILocalVariable(name: "card", arg: 1, scope: !4673, file: !1, line: 338, type: !3365)
!4688 = !DILocation(line: 338, column: 45, scope: !4673)
!4689 = !DILocalVariable(name: "generation", arg: 2, scope: !4673, file: !1, line: 338, type: !139)
!4690 = !DILocation(line: 338, column: 55, scope: !4673)
!4691 = !DILocalVariable(name: "channels_mask", arg: 3, scope: !4673, file: !1, line: 339, type: !120)
!4692 = !DILocation(line: 339, column: 12, scope: !4673)
!4693 = !DILocalVariable(name: "channel", arg: 4, scope: !4673, file: !1, line: 339, type: !465)
!4694 = !DILocation(line: 339, column: 32, scope: !4673)
!4695 = !DILocalVariable(name: "bandwidth", arg: 5, scope: !4673, file: !1, line: 339, type: !465)
!4696 = !DILocation(line: 339, column: 46, scope: !4673)
!4697 = !DILocalVariable(name: "allocate", arg: 6, scope: !4673, file: !1, line: 340, type: !340)
!4698 = !DILocation(line: 340, column: 13, scope: !4673)
!4699 = !DILocalVariable(name: "channels_hi", scope: !4673, file: !1, line: 342, type: !235)
!4700 = !DILocation(line: 342, column: 6, scope: !4673)
!4701 = !DILocation(line: 342, column: 20, scope: !4673)
!4702 = !DILocalVariable(name: "channels_lo", scope: !4673, file: !1, line: 343, type: !235)
!4703 = !DILocation(line: 343, column: 6, scope: !4673)
!4704 = !DILocation(line: 343, column: 20, scope: !4673)
!4705 = !DILocation(line: 343, column: 34, scope: !4673)
!4706 = !DILocalVariable(name: "irm_id", scope: !4673, file: !1, line: 344, type: !139)
!4707 = !DILocation(line: 344, column: 6, scope: !4673)
!4708 = !DILocalVariable(name: "ret", scope: !4673, file: !1, line: 344, type: !139)
!4709 = !DILocation(line: 344, column: 14, scope: !4673)
!4710 = !DILocalVariable(name: "c", scope: !4673, file: !1, line: 344, type: !139)
!4711 = !DILocation(line: 344, column: 19, scope: !4673)
!4712 = !DILocation(line: 346, column: 17, scope: !4673)
!4713 = !DILocation(line: 346, column: 23, scope: !4673)
!4714 = !DILocation(line: 379, column: 2, scope: !4715, inlinedAt: !4686)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !4678, line: 379, column: 2)
!4716 = distinct !DILexicalBlock(scope: !4684, file: !4678, line: 379, column: 2)
!4717 = !DILocation(line: 379, column: 2, scope: !4718, inlinedAt: !4686)
!4718 = distinct !DILexicalBlock(scope: !4716, file: !4678, line: 379, column: 2)
!4719 = !{i32 -2145269195}
!4720 = !DILocation(line: 379, column: 2, scope: !4721, inlinedAt: !4686)
!4721 = distinct !DILexicalBlock(scope: !4718, file: !4678, line: 379, column: 2)
!4722 = !DILocation(line: 347, column: 11, scope: !4673)
!4723 = !DILocation(line: 347, column: 17, scope: !4673)
!4724 = !DILocation(line: 347, column: 27, scope: !4673)
!4725 = !DILocation(line: 347, column: 9, scope: !4673)
!4726 = !DILocation(line: 348, column: 19, scope: !4673)
!4727 = !DILocation(line: 348, column: 25, scope: !4673)
!4728 = !DILocation(line: 404, column: 2, scope: !4729, inlinedAt: !4682)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !4678, line: 404, column: 2)
!4730 = distinct !DILexicalBlock(scope: !4677, file: !4678, line: 404, column: 2)
!4731 = !DILocation(line: 404, column: 2, scope: !4732, inlinedAt: !4682)
!4732 = distinct !DILexicalBlock(scope: !4730, file: !4678, line: 404, column: 2)
!4733 = !{i32 -2145267447}
!4734 = !DILocation(line: 404, column: 2, scope: !4735, inlinedAt: !4682)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !4678, line: 404, column: 2)
!4736 = !DILocation(line: 350, column: 6, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 350, column: 6)
!4738 = !DILocation(line: 350, column: 6, scope: !4673)
!4739 = !DILocation(line: 351, column: 22, scope: !4737)
!4740 = !DILocation(line: 351, column: 28, scope: !4737)
!4741 = !DILocation(line: 351, column: 36, scope: !4737)
!4742 = !DILocation(line: 351, column: 48, scope: !4737)
!4743 = !DILocation(line: 353, column: 5, scope: !4737)
!4744 = !DILocation(line: 351, column: 7, scope: !4737)
!4745 = !DILocation(line: 351, column: 5, scope: !4737)
!4746 = !DILocation(line: 351, column: 3, scope: !4737)
!4747 = !DILocation(line: 354, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 354, column: 6)
!4749 = !DILocation(line: 354, column: 18, scope: !4748)
!4750 = !DILocation(line: 354, column: 21, scope: !4748)
!4751 = !DILocation(line: 354, column: 23, scope: !4748)
!4752 = !DILocation(line: 354, column: 6, scope: !4673)
!4753 = !DILocation(line: 355, column: 22, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4748, file: !1, line: 354, column: 28)
!4755 = !DILocation(line: 355, column: 28, scope: !4754)
!4756 = !DILocation(line: 355, column: 36, scope: !4754)
!4757 = !DILocation(line: 355, column: 48, scope: !4754)
!4758 = !DILocation(line: 357, column: 5, scope: !4754)
!4759 = !DILocation(line: 355, column: 7, scope: !4754)
!4760 = !DILocation(line: 355, column: 5, scope: !4754)
!4761 = !DILocation(line: 358, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4754, file: !1, line: 358, column: 7)
!4763 = !DILocation(line: 358, column: 9, scope: !4762)
!4764 = !DILocation(line: 358, column: 7, scope: !4754)
!4765 = !DILocation(line: 359, column: 6, scope: !4762)
!4766 = !DILocation(line: 359, column: 4, scope: !4762)
!4767 = !DILocation(line: 360, column: 2, scope: !4754)
!4768 = !DILocation(line: 361, column: 13, scope: !4673)
!4769 = !DILocation(line: 361, column: 3, scope: !4673)
!4770 = !DILocation(line: 361, column: 11, scope: !4673)
!4771 = !DILocation(line: 363, column: 6, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 363, column: 6)
!4773 = !DILocation(line: 363, column: 15, scope: !4772)
!4774 = !DILocation(line: 363, column: 18, scope: !4772)
!4775 = !DILocation(line: 363, column: 32, scope: !4772)
!4776 = !DILocation(line: 363, column: 37, scope: !4772)
!4777 = !DILocation(line: 363, column: 40, scope: !4772)
!4778 = !DILocation(line: 363, column: 42, scope: !4772)
!4779 = !DILocation(line: 363, column: 6, scope: !4673)
!4780 = !DILocation(line: 364, column: 4, scope: !4772)
!4781 = !DILocation(line: 364, column: 14, scope: !4772)
!4782 = !DILocation(line: 364, column: 3, scope: !4772)
!4783 = !DILocation(line: 366, column: 7, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 366, column: 6)
!4785 = !DILocation(line: 366, column: 6, scope: !4784)
!4786 = !DILocation(line: 366, column: 17, scope: !4784)
!4787 = !DILocation(line: 366, column: 6, scope: !4673)
!4788 = !DILocation(line: 367, column: 3, scope: !4784)
!4789 = !DILocation(line: 369, column: 25, scope: !4673)
!4790 = !DILocation(line: 369, column: 31, scope: !4673)
!4791 = !DILocation(line: 369, column: 39, scope: !4673)
!4792 = !DILocation(line: 369, column: 52, scope: !4673)
!4793 = !DILocation(line: 369, column: 51, scope: !4673)
!4794 = !DILocation(line: 369, column: 63, scope: !4673)
!4795 = !DILocation(line: 369, column: 8, scope: !4673)
!4796 = !DILocation(line: 369, column: 6, scope: !4673)
!4797 = !DILocation(line: 370, column: 6, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 370, column: 6)
!4799 = !DILocation(line: 370, column: 10, scope: !4798)
!4800 = !DILocation(line: 370, column: 6, scope: !4673)
!4801 = !DILocation(line: 371, column: 4, scope: !4798)
!4802 = !DILocation(line: 371, column: 14, scope: !4798)
!4803 = !DILocation(line: 371, column: 3, scope: !4798)
!4804 = !DILocation(line: 373, column: 6, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 373, column: 6)
!4806 = !DILocation(line: 373, column: 15, scope: !4805)
!4807 = !DILocation(line: 373, column: 18, scope: !4805)
!4808 = !DILocation(line: 373, column: 22, scope: !4805)
!4809 = !DILocation(line: 373, column: 6, scope: !4673)
!4810 = !DILocation(line: 374, column: 7, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !1, line: 374, column: 7)
!4812 = distinct !DILexicalBlock(scope: !4805, file: !1, line: 373, column: 27)
!4813 = !DILocation(line: 374, column: 9, scope: !4811)
!4814 = !DILocation(line: 374, column: 7, scope: !4812)
!4815 = !DILocation(line: 375, column: 23, scope: !4811)
!4816 = !DILocation(line: 375, column: 29, scope: !4811)
!4817 = !DILocation(line: 375, column: 37, scope: !4811)
!4818 = !DILocation(line: 375, column: 49, scope: !4811)
!4819 = !DILocation(line: 375, column: 4, scope: !4811)
!4820 = !DILocation(line: 376, column: 14, scope: !4812)
!4821 = !DILocation(line: 376, column: 4, scope: !4812)
!4822 = !DILocation(line: 376, column: 12, scope: !4812)
!4823 = !DILocation(line: 377, column: 2, scope: !4812)
!4824 = !DILocation(line: 378, column: 1, scope: !4673)
!4825 = distinct !DISubprogram(name: "manage_channel", scope: !1, file: !1, line: 242, type: !4826, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!139, !3365, !139, !139, !235, !120, !340}
!4828 = !DILocalVariable(name: "card", arg: 1, scope: !4825, file: !1, line: 242, type: !3365)
!4829 = !DILocation(line: 242, column: 43, scope: !4825)
!4830 = !DILocalVariable(name: "irm_id", arg: 2, scope: !4825, file: !1, line: 242, type: !139)
!4831 = !DILocation(line: 242, column: 53, scope: !4825)
!4832 = !DILocalVariable(name: "generation", arg: 3, scope: !4825, file: !1, line: 242, type: !139)
!4833 = !DILocation(line: 242, column: 65, scope: !4825)
!4834 = !DILocalVariable(name: "channels_mask", arg: 4, scope: !4825, file: !1, line: 243, type: !235)
!4835 = !DILocation(line: 243, column: 7, scope: !4825)
!4836 = !DILocalVariable(name: "offset", arg: 5, scope: !4825, file: !1, line: 243, type: !120)
!4837 = !DILocation(line: 243, column: 26, scope: !4825)
!4838 = !DILocalVariable(name: "allocate", arg: 6, scope: !4825, file: !1, line: 243, type: !340)
!4839 = !DILocation(line: 243, column: 39, scope: !4825)
!4840 = !DILocalVariable(name: "bit", scope: !4825, file: !1, line: 245, type: !126)
!4841 = !DILocation(line: 245, column: 9, scope: !4825)
!4842 = !DILocalVariable(name: "all", scope: !4825, file: !1, line: 245, type: !126)
!4843 = !DILocation(line: 245, column: 14, scope: !4825)
!4844 = !DILocalVariable(name: "old", scope: !4825, file: !1, line: 245, type: !126)
!4845 = !DILocation(line: 245, column: 19, scope: !4825)
!4846 = !DILocalVariable(name: "data", scope: !4825, file: !1, line: 246, type: !4847)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !1433)
!4848 = !DILocation(line: 246, column: 9, scope: !4825)
!4849 = !DILocalVariable(name: "channel", scope: !4825, file: !1, line: 247, type: !139)
!4850 = !DILocation(line: 247, column: 6, scope: !4825)
!4851 = !DILocalVariable(name: "ret", scope: !4825, file: !1, line: 247, type: !139)
!4852 = !DILocation(line: 247, column: 15, scope: !4825)
!4853 = !DILocalVariable(name: "retry", scope: !4825, file: !1, line: 247, type: !139)
!4854 = !DILocation(line: 247, column: 27, scope: !4825)
!4855 = !DILocation(line: 249, column: 14, scope: !4825)
!4856 = !DILocation(line: 249, column: 12, scope: !4825)
!4857 = !DILocation(line: 249, column: 6, scope: !4825)
!4858 = !DILocation(line: 251, column: 15, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4825, file: !1, line: 251, column: 2)
!4860 = !DILocation(line: 251, column: 7, scope: !4859)
!4861 = !DILocation(line: 251, column: 20, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4859, file: !1, line: 251, column: 2)
!4863 = !DILocation(line: 251, column: 28, scope: !4862)
!4864 = !DILocation(line: 251, column: 2, scope: !4859)
!4865 = !DILocation(line: 252, column: 9, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 252, column: 7)
!4867 = distinct !DILexicalBlock(scope: !4862, file: !1, line: 251, column: 45)
!4868 = !DILocation(line: 252, column: 30, scope: !4866)
!4869 = !DILocation(line: 252, column: 27, scope: !4866)
!4870 = !DILocation(line: 252, column: 23, scope: !4866)
!4871 = !DILocation(line: 252, column: 7, scope: !4867)
!4872 = !DILocation(line: 253, column: 4, scope: !4866)
!4873 = !DILocation(line: 255, column: 7, scope: !4867)
!4874 = !DILocation(line: 257, column: 9, scope: !4867)
!4875 = !DILocation(line: 257, column: 7, scope: !4867)
!4876 = !DILocation(line: 258, column: 8, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 258, column: 7)
!4878 = !DILocation(line: 258, column: 14, scope: !4877)
!4879 = !DILocation(line: 258, column: 12, scope: !4877)
!4880 = !DILocation(line: 258, column: 23, scope: !4877)
!4881 = !DILocation(line: 258, column: 29, scope: !4877)
!4882 = !DILocation(line: 258, column: 27, scope: !4877)
!4883 = !DILocation(line: 258, column: 19, scope: !4877)
!4884 = !DILocation(line: 258, column: 7, scope: !4867)
!4885 = !DILocation(line: 259, column: 4, scope: !4877)
!4886 = !DILocation(line: 261, column: 13, scope: !4867)
!4887 = !DILocation(line: 261, column: 3, scope: !4867)
!4888 = !DILocation(line: 261, column: 11, scope: !4867)
!4889 = !DILocation(line: 262, column: 13, scope: !4867)
!4890 = !DILocation(line: 262, column: 19, scope: !4867)
!4891 = !DILocation(line: 262, column: 17, scope: !4867)
!4892 = !DILocation(line: 262, column: 3, scope: !4867)
!4893 = !DILocation(line: 262, column: 11, scope: !4867)
!4894 = !DILocation(line: 263, column: 30, scope: !4867)
!4895 = !DILocation(line: 264, column: 9, scope: !4867)
!4896 = !DILocation(line: 264, column: 17, scope: !4867)
!4897 = !DILocation(line: 265, column: 9, scope: !4867)
!4898 = !DILocation(line: 265, column: 17, scope: !4867)
!4899 = !DILocation(line: 263, column: 11, scope: !4867)
!4900 = !DILocation(line: 263, column: 3, scope: !4867)
!4901 = !DILocation(line: 268, column: 11, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 265, column: 27)
!4903 = !DILocation(line: 268, column: 32, scope: !4902)
!4904 = !DILocation(line: 268, column: 4, scope: !4902)
!4905 = !DILocation(line: 271, column: 8, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4902, file: !1, line: 271, column: 8)
!4907 = !DILocation(line: 271, column: 19, scope: !4906)
!4908 = !DILocation(line: 271, column: 16, scope: !4906)
!4909 = !DILocation(line: 271, column: 8, scope: !4902)
!4910 = !DILocation(line: 272, column: 12, scope: !4906)
!4911 = !DILocation(line: 272, column: 5, scope: !4906)
!4912 = !DILocation(line: 274, column: 10, scope: !4902)
!4913 = !DILocation(line: 274, column: 8, scope: !4902)
!4914 = !DILocation(line: 277, column: 9, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4902, file: !1, line: 277, column: 8)
!4916 = !DILocation(line: 277, column: 19, scope: !4915)
!4917 = !DILocation(line: 277, column: 17, scope: !4915)
!4918 = !DILocation(line: 277, column: 28, scope: !4915)
!4919 = !DILocation(line: 277, column: 38, scope: !4915)
!4920 = !DILocation(line: 277, column: 36, scope: !4915)
!4921 = !DILocation(line: 277, column: 24, scope: !4915)
!4922 = !DILocation(line: 277, column: 8, scope: !4902)
!4923 = !DILocation(line: 278, column: 5, scope: !4915)
!4924 = !DILocation(line: 277, column: 41, scope: !4915)
!4925 = !DILocation(line: 282, column: 8, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4902, file: !1, line: 282, column: 8)
!4927 = !DILocation(line: 282, column: 8, scope: !4902)
!4928 = !DILocation(line: 283, column: 10, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !1, line: 282, column: 15)
!4930 = !DILocation(line: 284, column: 12, scope: !4929)
!4931 = !DILocation(line: 285, column: 4, scope: !4929)
!4932 = !DILocation(line: 286, column: 9, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4926, file: !1, line: 285, column: 11)
!4934 = !DILocation(line: 288, column: 3, scope: !4902)
!4935 = !DILocation(line: 289, column: 2, scope: !4867)
!4936 = !DILocation(line: 251, column: 41, scope: !4862)
!4937 = !DILocation(line: 251, column: 2, scope: !4862)
!4938 = distinct !{!4938, !4864, !4939}
!4939 = !DILocation(line: 289, column: 2, scope: !4859)
!4940 = !DILocation(line: 291, column: 9, scope: !4825)
!4941 = !DILocation(line: 291, column: 2, scope: !4825)
!4942 = !DILocation(line: 292, column: 1, scope: !4825)
!4943 = distinct !DISubprogram(name: "manage_bandwidth", scope: !1, file: !1, line: 204, type: !4944, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!139, !3365, !139, !139, !139, !340}
!4946 = !DILocalVariable(name: "p", arg: 1, scope: !4947, file: !4948, line: 184, type: !4951)
!4947 = distinct !DISubprogram(name: "__swab32p", scope: !4948, file: !4948, line: 184, type: !4949, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4948 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!128, !4951}
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!4953 = !DILocation(line: 184, column: 53, scope: !4947, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 82, column: 9, scope: !4955, inlinedAt: !4959)
!4955 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !4956, file: !4956, line: 80, type: !4957, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!4956 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!128, !3378}
!4959 = distinct !DILocation(line: 234, column: 10, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !1, line: 225, column: 15)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !1, line: 215, column: 32)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !1, line: 215, column: 2)
!4963 = distinct !DILexicalBlock(scope: !4943, file: !1, line: 215, column: 2)
!4964 = !DILocalVariable(name: "p", arg: 1, scope: !4955, file: !4956, line: 80, type: !3378)
!4965 = !DILocation(line: 80, column: 59, scope: !4955, inlinedAt: !4959)
!4966 = !DILocation(line: 184, column: 53, scope: !4947, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 82, column: 9, scope: !4955, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 231, column: 8, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4960, file: !1, line: 231, column: 8)
!4970 = !DILocation(line: 80, column: 59, scope: !4955, inlinedAt: !4968)
!4971 = !DILocalVariable(name: "card", arg: 1, scope: !4943, file: !1, line: 204, type: !3365)
!4972 = !DILocation(line: 204, column: 45, scope: !4943)
!4973 = !DILocalVariable(name: "irm_id", arg: 2, scope: !4943, file: !1, line: 204, type: !139)
!4974 = !DILocation(line: 204, column: 55, scope: !4943)
!4975 = !DILocalVariable(name: "generation", arg: 3, scope: !4943, file: !1, line: 204, type: !139)
!4976 = !DILocation(line: 204, column: 67, scope: !4943)
!4977 = !DILocalVariable(name: "bandwidth", arg: 4, scope: !4943, file: !1, line: 205, type: !139)
!4978 = !DILocation(line: 205, column: 12, scope: !4943)
!4979 = !DILocalVariable(name: "allocate", arg: 5, scope: !4943, file: !1, line: 205, type: !340)
!4980 = !DILocation(line: 205, column: 28, scope: !4943)
!4981 = !DILocalVariable(name: "try", scope: !4943, file: !1, line: 207, type: !139)
!4982 = !DILocation(line: 207, column: 6, scope: !4943)
!4983 = !DILocalVariable(name: "new", scope: !4943, file: !1, line: 207, type: !139)
!4984 = !DILocation(line: 207, column: 11, scope: !4943)
!4985 = !DILocalVariable(name: "old", scope: !4943, file: !1, line: 207, type: !139)
!4986 = !DILocation(line: 207, column: 16, scope: !4943)
!4987 = !DILocation(line: 207, column: 22, scope: !4943)
!4988 = !DILocalVariable(name: "data", scope: !4943, file: !1, line: 208, type: !4847)
!4989 = !DILocation(line: 208, column: 9, scope: !4943)
!4990 = !DILocation(line: 215, column: 11, scope: !4963)
!4991 = !DILocation(line: 215, column: 7, scope: !4963)
!4992 = !DILocation(line: 215, column: 16, scope: !4962)
!4993 = !DILocation(line: 215, column: 20, scope: !4962)
!4994 = !DILocation(line: 215, column: 2, scope: !4963)
!4995 = !DILocation(line: 216, column: 9, scope: !4961)
!4996 = !DILocation(line: 216, column: 20, scope: !4961)
!4997 = !DILocation(line: 216, column: 26, scope: !4961)
!4998 = !DILocation(line: 216, column: 24, scope: !4961)
!4999 = !DILocation(line: 216, column: 38, scope: !4961)
!5000 = !DILocation(line: 216, column: 44, scope: !4961)
!5001 = !DILocation(line: 216, column: 42, scope: !4961)
!5002 = !DILocation(line: 216, column: 7, scope: !4961)
!5003 = !DILocation(line: 217, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4961, file: !1, line: 217, column: 7)
!5005 = !DILocation(line: 217, column: 11, scope: !5004)
!5006 = !DILocation(line: 217, column: 15, scope: !5004)
!5007 = !DILocation(line: 217, column: 18, scope: !5004)
!5008 = !DILocation(line: 217, column: 22, scope: !5004)
!5009 = !DILocation(line: 217, column: 7, scope: !4961)
!5010 = !DILocation(line: 218, column: 4, scope: !5004)
!5011 = !DILocation(line: 220, column: 13, scope: !4961)
!5012 = !DILocation(line: 220, column: 3, scope: !4961)
!5013 = !DILocation(line: 220, column: 11, scope: !4961)
!5014 = !DILocation(line: 221, column: 13, scope: !4961)
!5015 = !DILocation(line: 221, column: 3, scope: !4961)
!5016 = !DILocation(line: 221, column: 11, scope: !4961)
!5017 = !DILocation(line: 222, column: 30, scope: !4961)
!5018 = !DILocation(line: 223, column: 5, scope: !4961)
!5019 = !DILocation(line: 223, column: 13, scope: !4961)
!5020 = !DILocation(line: 225, column: 5, scope: !4961)
!5021 = !DILocation(line: 222, column: 11, scope: !4961)
!5022 = !DILocation(line: 222, column: 3, scope: !4961)
!5023 = !DILocation(line: 228, column: 11, scope: !4960)
!5024 = !DILocation(line: 228, column: 32, scope: !4960)
!5025 = !DILocation(line: 228, column: 4, scope: !4960)
!5026 = !DILocation(line: 231, column: 21, scope: !4969)
!5027 = !DILocation(line: 82, column: 28, scope: !4955, inlinedAt: !4968)
!5028 = !DILocation(line: 189, column: 9, scope: !4947, inlinedAt: !4967)
!5029 = !DILocation(line: 231, column: 30, scope: !4969)
!5030 = !DILocation(line: 231, column: 27, scope: !4969)
!5031 = !DILocation(line: 231, column: 8, scope: !4960)
!5032 = !DILocation(line: 232, column: 12, scope: !4969)
!5033 = !DILocation(line: 232, column: 5, scope: !4969)
!5034 = !DILocation(line: 234, column: 23, scope: !4960)
!5035 = !DILocation(line: 82, column: 28, scope: !4955, inlinedAt: !4959)
!5036 = !DILocation(line: 189, column: 9, scope: !4947, inlinedAt: !4954)
!5037 = !DILocation(line: 234, column: 8, scope: !4960)
!5038 = !DILocation(line: 236, column: 3, scope: !4960)
!5039 = !DILocation(line: 237, column: 2, scope: !4961)
!5040 = !DILocation(line: 215, column: 28, scope: !4962)
!5041 = !DILocation(line: 215, column: 2, scope: !4962)
!5042 = distinct !{!5042, !4994, !5043}
!5043 = !DILocation(line: 237, column: 2, scope: !4963)
!5044 = !DILocation(line: 239, column: 2, scope: !4943)
!5045 = !DILocation(line: 240, column: 1, scope: !4943)
!5046 = distinct !DISubprogram(name: "deallocate_channel", scope: !1, file: !1, line: 294, type: !5047, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !3365, !139, !139, !139}
!5049 = !DILocalVariable(name: "card", arg: 1, scope: !5046, file: !1, line: 294, type: !3365)
!5050 = !DILocation(line: 294, column: 48, scope: !5046)
!5051 = !DILocalVariable(name: "irm_id", arg: 2, scope: !5046, file: !1, line: 294, type: !139)
!5052 = !DILocation(line: 294, column: 58, scope: !5046)
!5053 = !DILocalVariable(name: "generation", arg: 3, scope: !5046, file: !1, line: 295, type: !139)
!5054 = !DILocation(line: 295, column: 15, scope: !5046)
!5055 = !DILocalVariable(name: "channel", arg: 4, scope: !5046, file: !1, line: 295, type: !139)
!5056 = !DILocation(line: 295, column: 31, scope: !5046)
!5057 = !DILocalVariable(name: "mask", scope: !5046, file: !1, line: 297, type: !235)
!5058 = !DILocation(line: 297, column: 6, scope: !5046)
!5059 = !DILocalVariable(name: "offset", scope: !5046, file: !1, line: 298, type: !120)
!5060 = !DILocation(line: 298, column: 6, scope: !5046)
!5061 = !DILocation(line: 300, column: 9, scope: !5046)
!5062 = !DILocation(line: 300, column: 17, scope: !5046)
!5063 = !DILocation(line: 300, column: 29, scope: !5046)
!5064 = !DILocation(line: 300, column: 26, scope: !5046)
!5065 = !DILocation(line: 300, column: 45, scope: !5046)
!5066 = !DILocation(line: 300, column: 53, scope: !5046)
!5067 = !DILocation(line: 300, column: 41, scope: !5046)
!5068 = !DILocation(line: 300, column: 7, scope: !5046)
!5069 = !DILocation(line: 301, column: 11, scope: !5046)
!5070 = !DILocation(line: 301, column: 19, scope: !5046)
!5071 = !DILocation(line: 301, column: 9, scope: !5046)
!5072 = !DILocation(line: 304, column: 17, scope: !5046)
!5073 = !DILocation(line: 304, column: 23, scope: !5046)
!5074 = !DILocation(line: 304, column: 31, scope: !5046)
!5075 = !DILocation(line: 304, column: 43, scope: !5046)
!5076 = !DILocation(line: 304, column: 49, scope: !5046)
!5077 = !DILocation(line: 304, column: 2, scope: !5046)
!5078 = !DILocation(line: 305, column: 1, scope: !5046)
!5079 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5080, file: !5080, line: 52, type: !5081, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5080 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!340, !340}
!5083 = !DILocalVariable(name: "overflow", arg: 1, scope: !5079, file: !5080, line: 52, type: !340)
!5084 = !DILocation(line: 52, column: 60, scope: !5079)
!5085 = !DILocation(line: 54, column: 9, scope: !5079)
!5086 = !DILocation(line: 54, column: 2, scope: !5079)
!5087 = distinct !DISubprogram(name: "get_order", scope: !5088, file: !5088, line: 29, type: !5089, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5088 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!139, !125}
!5091 = !DILocalVariable(name: "x", arg: 1, scope: !5092, file: !5093, line: 366, type: !122)
!5092 = distinct !DISubprogram(name: "fls64", scope: !5093, file: !5093, line: 366, type: !5094, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5093 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!139, !122}
!5096 = !DILocation(line: 366, column: 40, scope: !5092, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 46, column: 9, scope: !5087)
!5098 = !DILocalVariable(name: "bitpos", scope: !5092, file: !5093, line: 368, type: !139)
!5099 = !DILocation(line: 368, column: 6, scope: !5092, inlinedAt: !5097)
!5100 = !DILocalVariable(name: "size", arg: 1, scope: !5087, file: !5088, line: 29, type: !125)
!5101 = !DILocation(line: 29, column: 63, scope: !5087)
!5102 = !DILocation(line: 31, column: 27, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5087, file: !5088, line: 31, column: 6)
!5104 = !DILocation(line: 31, column: 6, scope: !5103)
!5105 = !DILocation(line: 31, column: 6, scope: !5087)
!5106 = !DILocation(line: 32, column: 8, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !5088, line: 32, column: 7)
!5108 = distinct !DILexicalBlock(scope: !5103, file: !5088, line: 31, column: 34)
!5109 = !DILocation(line: 32, column: 7, scope: !5108)
!5110 = !DILocation(line: 33, column: 4, scope: !5107)
!5111 = !DILocation(line: 35, column: 7, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5108, file: !5088, line: 35, column: 7)
!5113 = !DILocation(line: 35, column: 12, scope: !5112)
!5114 = !DILocation(line: 35, column: 7, scope: !5108)
!5115 = !DILocation(line: 36, column: 4, scope: !5112)
!5116 = !DILocation(line: 38, column: 10, scope: !5108)
!5117 = !DILocation(line: 38, column: 28, scope: !5108)
!5118 = !DILocation(line: 38, column: 41, scope: !5108)
!5119 = !DILocation(line: 38, column: 3, scope: !5108)
!5120 = !DILocation(line: 41, column: 6, scope: !5087)
!5121 = !DILocation(line: 42, column: 7, scope: !5087)
!5122 = !DILocation(line: 46, column: 15, scope: !5087)
!5123 = !DILocation(line: 374, column: 2, scope: !5092, inlinedAt: !5097)
!5124 = !DILocation(line: 376, column: 14, scope: !5092, inlinedAt: !5097)
!5125 = !{i32 662714}
!5126 = !DILocation(line: 377, column: 9, scope: !5092, inlinedAt: !5097)
!5127 = !DILocation(line: 377, column: 16, scope: !5092, inlinedAt: !5097)
!5128 = !DILocation(line: 46, column: 2, scope: !5087)
!5129 = !DILocation(line: 48, column: 1, scope: !5087)
!5130 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5131, file: !5131, line: 30, type: !5132, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5131 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!139, !120}
!5134 = !DILocation(line: 366, column: 40, scope: !5092, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 32, column: 9, scope: !5130)
!5136 = !DILocation(line: 368, column: 6, scope: !5092, inlinedAt: !5135)
!5137 = !DILocalVariable(name: "n", arg: 1, scope: !5130, file: !5131, line: 30, type: !120)
!5138 = !DILocation(line: 30, column: 21, scope: !5130)
!5139 = !DILocation(line: 32, column: 15, scope: !5130)
!5140 = !DILocation(line: 374, column: 2, scope: !5092, inlinedAt: !5135)
!5141 = !DILocation(line: 376, column: 14, scope: !5092, inlinedAt: !5135)
!5142 = !DILocation(line: 377, column: 9, scope: !5092, inlinedAt: !5135)
!5143 = !DILocation(line: 377, column: 16, scope: !5092, inlinedAt: !5135)
!5144 = !DILocation(line: 32, column: 18, scope: !5130)
!5145 = !DILocation(line: 32, column: 2, scope: !5130)
!5146 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5147, file: !5147, line: 137, type: !5148, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5147 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!113, !2112, !2279, !1128, !111}
!5150 = !DILocalVariable(name: "s", arg: 1, scope: !5146, file: !5147, line: 137, type: !2112)
!5151 = !DILocation(line: 137, column: 54, scope: !5146)
!5152 = !DILocalVariable(name: "object", arg: 2, scope: !5146, file: !5147, line: 137, type: !2279)
!5153 = !DILocation(line: 137, column: 69, scope: !5146)
!5154 = !DILocalVariable(name: "size", arg: 3, scope: !5146, file: !5147, line: 138, type: !1128)
!5155 = !DILocation(line: 138, column: 12, scope: !5146)
!5156 = !DILocalVariable(name: "flags", arg: 4, scope: !5146, file: !5147, line: 138, type: !111)
!5157 = !DILocation(line: 138, column: 24, scope: !5146)
!5158 = !DILocation(line: 140, column: 17, scope: !5146)
!5159 = !DILocation(line: 140, column: 2, scope: !5146)
!5160 = distinct !DISubprogram(name: "alloc_pages_node", scope: !3350, file: !3350, line: 532, type: !5161, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!147, !139, !111, !5}
!5163 = !DILocalVariable(name: "nid", arg: 1, scope: !5160, file: !3350, line: 532, type: !139)
!5164 = !DILocation(line: 532, column: 49, scope: !5160)
!5165 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5160, file: !3350, line: 532, type: !111)
!5166 = !DILocation(line: 532, column: 60, scope: !5160)
!5167 = !DILocalVariable(name: "order", arg: 3, scope: !5160, file: !3350, line: 533, type: !5)
!5168 = !DILocation(line: 533, column: 20, scope: !5160)
!5169 = !DILocation(line: 535, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5160, file: !3350, line: 535, column: 6)
!5171 = !DILocation(line: 535, column: 10, scope: !5170)
!5172 = !DILocation(line: 535, column: 6, scope: !5160)
!5173 = !DILocation(line: 536, column: 9, scope: !5170)
!5174 = !DILocation(line: 536, column: 7, scope: !5170)
!5175 = !DILocation(line: 536, column: 3, scope: !5170)
!5176 = !DILocation(line: 538, column: 28, scope: !5160)
!5177 = !DILocation(line: 538, column: 33, scope: !5160)
!5178 = !DILocation(line: 538, column: 43, scope: !5160)
!5179 = !DILocation(line: 538, column: 9, scope: !5160)
!5180 = !DILocation(line: 538, column: 2, scope: !5160)
!5181 = distinct !DISubprogram(name: "numa_node_id", scope: !5182, file: !5182, line: 85, type: !5183, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5182 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!139}
!5185 = !DILocation(line: 87, column: 2, scope: !5181)
!5186 = distinct !DISubprogram(name: "numa_mem_id", scope: !5187, file: !5187, line: 167, type: !5183, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5187 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/lizy2001/genbc/linux")
!5188 = !DILocation(line: 169, column: 9, scope: !5186)
!5189 = !DILocation(line: 169, column: 2, scope: !5186)
!5190 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !3350, file: !3350, line: 519, type: !5161, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5191 = !DILocalVariable(name: "nid", arg: 1, scope: !5190, file: !3350, line: 519, type: !139)
!5192 = !DILocation(line: 519, column: 24, scope: !5190)
!5193 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5190, file: !3350, line: 519, type: !111)
!5194 = !DILocation(line: 519, column: 35, scope: !5190)
!5195 = !DILocalVariable(name: "order", arg: 3, scope: !5190, file: !3350, line: 519, type: !5)
!5196 = !DILocation(line: 519, column: 58, scope: !5190)
!5197 = !DILocation(line: 524, column: 23, scope: !5190)
!5198 = !DILocation(line: 524, column: 33, scope: !5190)
!5199 = !DILocation(line: 524, column: 40, scope: !5190)
!5200 = !DILocation(line: 524, column: 9, scope: !5190)
!5201 = !DILocation(line: 524, column: 2, scope: !5190)
!5202 = distinct !DISubprogram(name: "__alloc_pages", scope: !3350, file: !3350, line: 509, type: !5203, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!147, !111, !5, !139}
!5205 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5202, file: !3350, line: 509, type: !111)
!5206 = !DILocation(line: 509, column: 21, scope: !5202)
!5207 = !DILocalVariable(name: "order", arg: 2, scope: !5202, file: !3350, line: 509, type: !5)
!5208 = !DILocation(line: 509, column: 44, scope: !5202)
!5209 = !DILocalVariable(name: "preferred_nid", arg: 3, scope: !5202, file: !3350, line: 509, type: !139)
!5210 = !DILocation(line: 509, column: 55, scope: !5202)
!5211 = !DILocation(line: 511, column: 32, scope: !5202)
!5212 = !DILocation(line: 511, column: 42, scope: !5202)
!5213 = !DILocation(line: 511, column: 49, scope: !5202)
!5214 = !DILocation(line: 511, column: 9, scope: !5202)
!5215 = !DILocation(line: 511, column: 2, scope: !5202)
!5216 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !4399, file: !4399, line: 83, type: !5217, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !3493, !119}
!5219 = !DILocalVariable(name: "dev", arg: 1, scope: !5216, file: !4399, line: 83, type: !3493)
!5220 = !DILocation(line: 83, column: 59, scope: !5216)
!5221 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5216, file: !4399, line: 84, type: !119)
!5222 = !DILocation(line: 84, column: 14, scope: !5216)
!5223 = !DILocation(line: 86, column: 1, scope: !5216)
!5224 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5225, file: !5225, line: 656, type: !2035, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5225 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5226 = !DILocalVariable(name: "__edi", scope: !5227, file: !5225, line: 658, type: !125)
!5227 = distinct !DILexicalBlock(scope: !5224, file: !5225, line: 658, column: 2)
!5228 = !DILocation(line: 658, column: 2, scope: !5227)
!5229 = !DILocalVariable(name: "__esi", scope: !5227, file: !5225, line: 658, type: !125)
!5230 = !DILocalVariable(name: "__edx", scope: !5227, file: !5225, line: 658, type: !125)
!5231 = !DILocalVariable(name: "__ecx", scope: !5227, file: !5225, line: 658, type: !125)
!5232 = !DILocalVariable(name: "__eax", scope: !5227, file: !5225, line: 658, type: !125)
!5233 = !{i32 -2145736152, i32 -2145735420, i32 -2145735186, i32 -2145735135, i32 -2145735107, i32 -2145735082, i32 -2145735398, i32 -2145735385, i32 -2145734947, i32 -2145734828, i32 -2145735293, i32 -2145735266, i32 -2145735238, i32 -2145735208}
!5234 = !DILocation(line: 659, column: 1, scope: !5224)
!5235 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5225, file: !5225, line: 661, type: !2035, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5236 = !DILocalVariable(name: "__edi", scope: !5237, file: !5225, line: 663, type: !125)
!5237 = distinct !DILexicalBlock(scope: !5235, file: !5225, line: 663, column: 2)
!5238 = !DILocation(line: 663, column: 2, scope: !5237)
!5239 = !DILocalVariable(name: "__esi", scope: !5237, file: !5225, line: 663, type: !125)
!5240 = !DILocalVariable(name: "__edx", scope: !5237, file: !5225, line: 663, type: !125)
!5241 = !DILocalVariable(name: "__ecx", scope: !5237, file: !5225, line: 663, type: !125)
!5242 = !DILocalVariable(name: "__eax", scope: !5237, file: !5225, line: 663, type: !125)
!5243 = !{i32 -2145733568, i32 -2145732838, i32 -2145732604, i32 -2145732553, i32 -2145732525, i32 -2145732500, i32 -2145732816, i32 -2145732803, i32 -2145732365, i32 -2145732246, i32 -2145732711, i32 -2145732684, i32 -2145732656, i32 -2145732626}
!5244 = !DILocation(line: 664, column: 1, scope: !5235)
!5245 = distinct !DISubprogram(name: "__fswab32", scope: !4948, file: !4948, line: 57, type: !5246, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!128, !128}
!5248 = !DILocalVariable(name: "val", arg: 1, scope: !5245, file: !4948, line: 57, type: !128)
!5249 = !DILocation(line: 57, column: 57, scope: !5245)
!5250 = !DILocation(line: 60, column: 23, scope: !5245)
!5251 = !DILocation(line: 60, column: 9, scope: !5245)
!5252 = !DILocation(line: 60, column: 2, scope: !5245)
!5253 = distinct !DISubprogram(name: "__arch_swab32", scope: !5254, file: !5254, line: 8, type: !5246, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !272)
!5254 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5255 = !DILocalVariable(name: "val", arg: 1, scope: !5253, file: !5254, line: 8, type: !128)
!5256 = !DILocation(line: 8, column: 61, scope: !5253)
!5257 = !DILocation(line: 10, column: 38, scope: !5253)
!5258 = !DILocation(line: 10, column: 2, scope: !5253)
!5259 = !{i32 714037}
!5260 = !DILocation(line: 11, column: 9, scope: !5253)
!5261 = !DILocation(line: 11, column: 2, scope: !5253)
