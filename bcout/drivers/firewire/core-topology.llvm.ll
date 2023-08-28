; ModuleID = '../bcout/drivers/firewire/core-topology.llvm.bc'
source_filename = "drivers/firewire/core-topology.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.39, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.42 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i64, i64 }
%union.anon.42 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.9, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.9 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.0, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.43, %struct.list_head, %struct.list_head, %union.anon.44 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.7, i32 }
%union.anon.7 = type { %struct.kuid_t }
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
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.45 }
%union.anon.45 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.46 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.46 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.15, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.17, %union.anon.21, %struct.key_restriction* }
%union.anon.15 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.16 = type { i64 }
%union.anon.17 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.18, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.18 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.21 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.24, %union.anon.25, i32 }
%struct.request_queue = type opaque
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.26 }
%struct.anon.26 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.30 }
%struct.anon.30 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.38 = type { %struct.callback_head }
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
%struct.kmem_cache = type opaque
%struct.fw_card = type { %struct.fw_card_driver*, %struct.device*, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, %struct.fw_node*, %struct.fw_node*, %struct.fw_node*, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.fw_card_driver = type { i32 (%struct.fw_card*, i32*, i64)*, i32 (%struct.fw_card*, i32)*, i32 (%struct.fw_card*, i32, i32, i32)*, i32 (%struct.fw_card*, i32*, i64)*, void (%struct.fw_card*, %struct.fw_packet*)*, void (%struct.fw_card*, %struct.fw_packet*)*, i32 (%struct.fw_card*, %struct.fw_packet*)*, i32 (%struct.fw_card*, i32, i32)*, i32 (%struct.fw_card*, i32)*, void (%struct.fw_card*, i32, i32)*, %struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)*, void (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*, i32, i32, i32)*, i32 (%struct.fw_iso_context*, i64*)*, i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)*, void (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)* }
%struct.fw_packet = type { i32, i32, [4 x i32], i64, i8*, i64, i64, i8, i32, void (%struct.fw_packet*, %struct.fw_card*, i32)*, i32, %struct.list_head, i8* }
%struct.fw_iso_context = type { %struct.fw_card*, i32, i32, i32, i8, i64, %union.anon, i8* }
%union.anon = type { void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* }
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
%struct.fw_iso_buffer = type { i32, %struct.page**, i32, i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.61 = type { %struct.kernfs_elem_attr }
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

@.str = private unnamed_addr constant [23 x i8] c"topology build failed\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@jiffies = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"inconsistent extended self IDs\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"PHY ID mismatch in self ID: %d != %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"topology stack underflow\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"out of memory while building topology\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"parent port inconsistency for node %d: parent_count=%d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__const.update_hop_count.depths = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/firewire/core-topology.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_destroy_nodes(%struct.fw_card* %card) #0 !dbg !194 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !3941, metadata !DIExpression()), !dbg !3946
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3948, metadata !DIExpression()), !dbg !3949
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3950, metadata !DIExpression()), !dbg !3955
  %card.addr = alloca %struct.fw_card*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3964, metadata !DIExpression()), !dbg !3965
  br label %do.body, !dbg !3966

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3967

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3971, metadata !DIExpression()), !dbg !3970
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3970
  %conv = zext i1 %cmp to i32, !dbg !3970
  store i32 1, i32* %tmp, align 4, !dbg !3970
  %0 = load i32, i32* %tmp, align 4, !dbg !3970
  br label %do.body2, !dbg !3972

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3973

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3974

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3976, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3980, metadata !DIExpression()), !dbg !3979
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3979
  %conv8 = zext i1 %cmp7 to i32, !dbg !3979
  store i32 1, i32* %tmp9, align 4, !dbg !3979
  %1 = load i32, i32* %tmp9, align 4, !dbg !3979
  %call = call i64 @arch_local_irq_save() #9, !dbg !3981
  store i64 %call, i64* %flags, align 8, !dbg !3981
  br label %do.end, !dbg !3981

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3974

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3973

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3982, !srcloc !3983
  br label %do.body12, !dbg !3982

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !3984
  %lock = getelementptr inbounds %struct.fw_card, %struct.fw_card* %2, i32 0, i32 18, !dbg !3984
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3985
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3986
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !3986
  br label %do.end14, !dbg !3984

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3982

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3973

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3972

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3967

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !3987
  %color = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 22, !dbg !3988
  %6 = load i8, i8* %color, align 8, !dbg !3989
  %inc = add i8 %6, 1, !dbg !3989
  store i8 %inc, i8* %color, align 8, !dbg !3989
  %7 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !3990
  %local_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 19, !dbg !3992
  %8 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !3992
  %cmp19 = icmp ne %struct.fw_node* %8, null, !dbg !3993
  br i1 %cmp19, label %if.then, label %if.end, !dbg !3994

if.then:                                          ; preds = %do.end18
  %9 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !3995
  %10 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !3996
  %local_node21 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %10, i32 0, i32 19, !dbg !3997
  %11 = load %struct.fw_node*, %struct.fw_node** %local_node21, align 8, !dbg !3997
  call void @for_each_fw_node(%struct.fw_card* %9, %struct.fw_node* %11, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* @report_lost_node) #9, !dbg !3998
  br label %if.end, !dbg !3998

if.end:                                           ; preds = %if.then, %do.end18
  %12 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !3999
  %local_node22 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 19, !dbg !4000
  store %struct.fw_node* null, %struct.fw_node** %local_node22, align 8, !dbg !4001
  %13 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4002
  %lock23 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 18, !dbg !4003
  %14 = load i64, i64* %flags, align 8, !dbg !4004
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !451, metadata !4005, metadata !DIExpression()) #4, !dbg !4008
  call void @llvm.dbg.declare(metadata !451, metadata !4009, metadata !DIExpression()) #4, !dbg !4008
  store i32 1, i32* %tmp.i, align 4, !dbg !4008
  %15 = load i32, i32* %tmp.i, align 4, !dbg !4008
  call void @llvm.dbg.declare(metadata !451, metadata !4010, metadata !DIExpression()) #4, !dbg !4015
  call void @llvm.dbg.declare(metadata !451, metadata !4016, metadata !DIExpression()) #4, !dbg !4015
  store i32 1, i32* %tmp8.i, align 4, !dbg !4015
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !4015
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !4017
  call void @arch_local_irq_restore(i64 %17) #10, !dbg !4017
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4018, !srcloc !4020
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !4021
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !4021
  %rlock.i25 = bitcast %union.anon.1* %19 to %struct.raw_spinlock*, !dbg !4021
  ret void, !dbg !4023
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4024 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4028, metadata !DIExpression()), !dbg !4029
  %call = call i64 @arch_local_save_flags() #9, !dbg !4030
  store i64 %call, i64* %f, align 8, !dbg !4031
  call void @arch_local_irq_disable() #9, !dbg !4032
  %0 = load i64, i64* %f, align 8, !dbg !4033
  ret i64 %0, !dbg !4034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @for_each_fw_node(%struct.fw_card* %card, %struct.fw_node* %root, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* %callback) #0 !dbg !4035 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %root.addr = alloca %struct.fw_node*, align 8
  %callback.addr = alloca void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)*, align 8
  %list = alloca %struct.list_head, align 8
  %node = alloca %struct.fw_node*, align 8
  %next = alloca %struct.fw_node*, align 8
  %child = alloca %struct.fw_node*, align 8
  %parent = alloca %struct.fw_node*, align 8
  %i = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_node*, align 8
  %__mptr19 = alloca i8*, align 8
  %tmp24 = alloca %struct.fw_node*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp31 = alloca %struct.fw_node*, align 8
  %__mptr33 = alloca i8*, align 8
  %tmp38 = alloca %struct.fw_node*, align 8
  %__mptr47 = alloca i8*, align 8
  %tmp52 = alloca %struct.fw_node*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  store %struct.fw_node* %root, %struct.fw_node** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %root.addr, metadata !4044, metadata !DIExpression()), !dbg !4045
  store void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* %callback, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)** %callback.addr, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.declare(metadata %struct.list_head* %list, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.declare(metadata %struct.fw_node** %next, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.declare(metadata %struct.fw_node** %child, metadata !4054, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.declare(metadata %struct.fw_node** %parent, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4058, metadata !DIExpression()), !dbg !4059
  call void @INIT_LIST_HEAD(%struct.list_head* %list) #9, !dbg !4060
  %0 = load %struct.fw_node*, %struct.fw_node** %root.addr, align 8, !dbg !4061
  %call = call %struct.fw_node* @fw_node_get(%struct.fw_node* %0) #9, !dbg !4062
  %1 = load %struct.fw_node*, %struct.fw_node** %root.addr, align 8, !dbg !4063
  %link = getelementptr inbounds %struct.fw_node, %struct.fw_node* %1, i32 0, i32 6, !dbg !4064
  call void @list_add_tail(%struct.list_head* %link, %struct.list_head* %list) #9, !dbg !4065
  store %struct.fw_node* null, %struct.fw_node** %parent, align 8, !dbg !4066
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4067, metadata !DIExpression()), !dbg !4070
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4070
  %2 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !4070
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4070
  store i8* %3, i8** %__mptr, align 8, !dbg !4070
  br label %do.body, !dbg !4070

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4071

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4070
  %add.ptr = getelementptr i8, i8* %4, i64 -16, !dbg !4070
  %5 = bitcast i8* %add.ptr to %struct.fw_node*, !dbg !4070
  store %struct.fw_node* %5, %struct.fw_node** %tmp, align 8, !dbg !4071
  %6 = load %struct.fw_node*, %struct.fw_node** %tmp, align 8, !dbg !4070
  store %struct.fw_node* %6, %struct.fw_node** %node, align 8, !dbg !4073
  br label %for.cond, !dbg !4073

for.cond:                                         ; preds = %do.end23, %do.end
  %7 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4074
  %link2 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %7, i32 0, i32 6, !dbg !4074
  %cmp = icmp eq %struct.list_head* %link2, %list, !dbg !4074
  %lnot = xor i1 %cmp, true, !dbg !4074
  br i1 %lnot, label %for.body, label %for.end26, !dbg !4073

for.body:                                         ; preds = %for.cond
  %8 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4076
  %color = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 22, !dbg !4078
  %9 = load i8, i8* %color, align 8, !dbg !4078
  %10 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4079
  %color3 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %10, i32 0, i32 1, !dbg !4080
  store i8 %9, i8* %color3, align 2, !dbg !4081
  store i32 0, i32* %i, align 4, !dbg !4082
  br label %for.cond4, !dbg !4084

for.cond4:                                        ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4, !dbg !4085
  %12 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4087
  %port_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %12, i32 0, i32 2, !dbg !4088
  %13 = load i8, i8* %port_count, align 1, !dbg !4088
  %conv = zext i8 %13 to i32, !dbg !4087
  %cmp5 = icmp slt i32 %11, %conv, !dbg !4089
  br i1 %cmp5, label %for.body7, label %for.end, !dbg !4090

for.body7:                                        ; preds = %for.cond4
  %14 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4091
  %ports = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 8, !dbg !4093
  %15 = load i32, i32* %i, align 4, !dbg !4094
  %idxprom = sext i32 %15 to i64, !dbg !4091
  %arrayidx = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports, i64 0, i64 %idxprom, !dbg !4091
  %16 = load %struct.fw_node*, %struct.fw_node** %arrayidx, align 8, !dbg !4091
  store %struct.fw_node* %16, %struct.fw_node** %child, align 8, !dbg !4095
  %17 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4096
  %tobool = icmp ne %struct.fw_node* %17, null, !dbg !4096
  br i1 %tobool, label %if.end, label %if.then, !dbg !4098

if.then:                                          ; preds = %for.body7
  br label %for.inc, !dbg !4099

if.end:                                           ; preds = %for.body7
  %18 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4100
  %color8 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %18, i32 0, i32 1, !dbg !4102
  %19 = load i8, i8* %color8, align 2, !dbg !4102
  %conv9 = zext i8 %19 to i32, !dbg !4100
  %20 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4103
  %color10 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %20, i32 0, i32 22, !dbg !4104
  %21 = load i8, i8* %color10, align 8, !dbg !4104
  %conv11 = zext i8 %21 to i32, !dbg !4103
  %cmp12 = icmp eq i32 %conv9, %conv11, !dbg !4105
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4106

if.then14:                                        ; preds = %if.end
  %22 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4107
  store %struct.fw_node* %22, %struct.fw_node** %parent, align 8, !dbg !4108
  br label %if.end17, !dbg !4109

if.else:                                          ; preds = %if.end
  %23 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4110
  %call15 = call %struct.fw_node* @fw_node_get(%struct.fw_node* %23) #9, !dbg !4112
  %24 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4113
  %link16 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %24, i32 0, i32 6, !dbg !4114
  call void @list_add_tail(%struct.list_head* %link16, %struct.list_head* %list) #9, !dbg !4115
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  br label %for.inc, !dbg !4116

for.inc:                                          ; preds = %if.end17, %if.then
  %25 = load i32, i32* %i, align 4, !dbg !4117
  %inc = add i32 %25, 1, !dbg !4117
  store i32 %inc, i32* %i, align 4, !dbg !4117
  br label %for.cond4, !dbg !4118, !llvm.loop !4119

for.end:                                          ; preds = %for.cond4
  %26 = load void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)*, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)** %callback.addr, align 8, !dbg !4121
  %27 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4122
  %28 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4123
  %29 = load %struct.fw_node*, %struct.fw_node** %parent, align 8, !dbg !4124
  call void %26(%struct.fw_card* %27, %struct.fw_node* %28, %struct.fw_node* %29) #9, !dbg !4121
  br label %for.inc18, !dbg !4125

for.inc18:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__mptr19, metadata !4126, metadata !DIExpression()), !dbg !4128
  %30 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4128
  %link20 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %30, i32 0, i32 6, !dbg !4128
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %link20, i32 0, i32 0, !dbg !4128
  %31 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !4128
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !4128
  store i8* %32, i8** %__mptr19, align 8, !dbg !4128
  br label %do.body22, !dbg !4128

do.body22:                                        ; preds = %for.inc18
  br label %do.end23, !dbg !4129

do.end23:                                         ; preds = %do.body22
  %33 = load i8*, i8** %__mptr19, align 8, !dbg !4128
  %add.ptr25 = getelementptr i8, i8* %33, i64 -16, !dbg !4128
  %34 = bitcast i8* %add.ptr25 to %struct.fw_node*, !dbg !4128
  store %struct.fw_node* %34, %struct.fw_node** %tmp24, align 8, !dbg !4129
  %35 = load %struct.fw_node*, %struct.fw_node** %tmp24, align 8, !dbg !4128
  store %struct.fw_node* %35, %struct.fw_node** %node, align 8, !dbg !4074
  br label %for.cond, !dbg !4074, !llvm.loop !4131

for.end26:                                        ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !4133, metadata !DIExpression()), !dbg !4136
  %next28 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4136
  %36 = load %struct.list_head*, %struct.list_head** %next28, align 8, !dbg !4136
  %37 = bitcast %struct.list_head* %36 to i8*, !dbg !4136
  store i8* %37, i8** %__mptr27, align 8, !dbg !4136
  br label %do.body29, !dbg !4136

do.body29:                                        ; preds = %for.end26
  br label %do.end30, !dbg !4137

do.end30:                                         ; preds = %do.body29
  %38 = load i8*, i8** %__mptr27, align 8, !dbg !4136
  %add.ptr32 = getelementptr i8, i8* %38, i64 -16, !dbg !4136
  %39 = bitcast i8* %add.ptr32 to %struct.fw_node*, !dbg !4136
  store %struct.fw_node* %39, %struct.fw_node** %tmp31, align 8, !dbg !4137
  %40 = load %struct.fw_node*, %struct.fw_node** %tmp31, align 8, !dbg !4136
  store %struct.fw_node* %40, %struct.fw_node** %node, align 8, !dbg !4139
  call void @llvm.dbg.declare(metadata i8** %__mptr33, metadata !4140, metadata !DIExpression()), !dbg !4142
  %41 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4142
  %link34 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %41, i32 0, i32 6, !dbg !4142
  %next35 = getelementptr inbounds %struct.list_head, %struct.list_head* %link34, i32 0, i32 0, !dbg !4142
  %42 = load %struct.list_head*, %struct.list_head** %next35, align 8, !dbg !4142
  %43 = bitcast %struct.list_head* %42 to i8*, !dbg !4142
  store i8* %43, i8** %__mptr33, align 8, !dbg !4142
  br label %do.body36, !dbg !4142

do.body36:                                        ; preds = %do.end30
  br label %do.end37, !dbg !4143

do.end37:                                         ; preds = %do.body36
  %44 = load i8*, i8** %__mptr33, align 8, !dbg !4142
  %add.ptr39 = getelementptr i8, i8* %44, i64 -16, !dbg !4142
  %45 = bitcast i8* %add.ptr39 to %struct.fw_node*, !dbg !4142
  store %struct.fw_node* %45, %struct.fw_node** %tmp38, align 8, !dbg !4143
  %46 = load %struct.fw_node*, %struct.fw_node** %tmp38, align 8, !dbg !4142
  store %struct.fw_node* %46, %struct.fw_node** %next, align 8, !dbg !4139
  br label %for.cond40, !dbg !4139

for.cond40:                                       ; preds = %do.end51, %do.end37
  %47 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4145
  %link41 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %47, i32 0, i32 6, !dbg !4145
  %cmp42 = icmp eq %struct.list_head* %link41, %list, !dbg !4145
  %lnot44 = xor i1 %cmp42, true, !dbg !4145
  br i1 %lnot44, label %for.body45, label %for.end54, !dbg !4139

for.body45:                                       ; preds = %for.cond40
  %48 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4147
  call void @fw_node_put(%struct.fw_node* %48) #9, !dbg !4148
  br label %for.inc46, !dbg !4148

for.inc46:                                        ; preds = %for.body45
  %49 = load %struct.fw_node*, %struct.fw_node** %next, align 8, !dbg !4145
  store %struct.fw_node* %49, %struct.fw_node** %node, align 8, !dbg !4145
  call void @llvm.dbg.declare(metadata i8** %__mptr47, metadata !4149, metadata !DIExpression()), !dbg !4151
  %50 = load %struct.fw_node*, %struct.fw_node** %next, align 8, !dbg !4151
  %link48 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %50, i32 0, i32 6, !dbg !4151
  %next49 = getelementptr inbounds %struct.list_head, %struct.list_head* %link48, i32 0, i32 0, !dbg !4151
  %51 = load %struct.list_head*, %struct.list_head** %next49, align 8, !dbg !4151
  %52 = bitcast %struct.list_head* %51 to i8*, !dbg !4151
  store i8* %52, i8** %__mptr47, align 8, !dbg !4151
  br label %do.body50, !dbg !4151

do.body50:                                        ; preds = %for.inc46
  br label %do.end51, !dbg !4152

do.end51:                                         ; preds = %do.body50
  %53 = load i8*, i8** %__mptr47, align 8, !dbg !4151
  %add.ptr53 = getelementptr i8, i8* %53, i64 -16, !dbg !4151
  %54 = bitcast i8* %add.ptr53 to %struct.fw_node*, !dbg !4151
  store %struct.fw_node* %54, %struct.fw_node** %tmp52, align 8, !dbg !4152
  %55 = load %struct.fw_node*, %struct.fw_node** %tmp52, align 8, !dbg !4151
  store %struct.fw_node* %55, %struct.fw_node** %next, align 8, !dbg !4145
  br label %for.cond40, !dbg !4145, !llvm.loop !4154

for.end54:                                        ; preds = %for.cond40
  ret void, !dbg !4156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @report_lost_node(%struct.fw_card* %card, %struct.fw_node* %node, %struct.fw_node* %parent) #0 !dbg !4157 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %node.addr = alloca %struct.fw_node*, align 8
  %parent.addr = alloca %struct.fw_node*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  store %struct.fw_node* %parent, %struct.fw_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %parent.addr, metadata !4162, metadata !DIExpression()), !dbg !4163
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4164
  %1 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4165
  call void @fw_node_event(%struct.fw_card* %0, %struct.fw_node* %1, i32 2) #9, !dbg !4166
  %2 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4167
  call void @fw_node_put(%struct.fw_node* %2) #9, !dbg !4168
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4169
  %bm_retries = getelementptr inbounds %struct.fw_card, %struct.fw_card* %3, i32 0, i32 31, !dbg !4170
  store i32 0, i32* %bm_retries, align 8, !dbg !4171
  ret void, !dbg !4172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_core_handle_bus_reset(%struct.fw_card* %card, i32 %node_id, i32 %generation, i32 %self_id_count, i32* %self_ids, i1 zeroext %bm_abdicate) #0 !dbg !4173 {
entry:
  %lock.addr.i43 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i43, metadata !3941, metadata !DIExpression()), !dbg !4176
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3948, metadata !DIExpression()), !dbg !4178
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3950, metadata !DIExpression()), !dbg !4179
  %card.addr = alloca %struct.fw_card*, align 8
  %node_id.addr = alloca i32, align 4
  %generation.addr = alloca i32, align 4
  %self_id_count.addr = alloca i32, align 4
  %self_ids.addr = alloca i32*, align 8
  %bm_abdicate.addr = alloca i8, align 1
  %local_node = alloca %struct.fw_node*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  store i32 %node_id, i32* %node_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node_id.addr, metadata !4188, metadata !DIExpression()), !dbg !4189
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !4190, metadata !DIExpression()), !dbg !4191
  store i32 %self_id_count, i32* %self_id_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %self_id_count.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  store i32* %self_ids, i32** %self_ids.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %self_ids.addr, metadata !4194, metadata !DIExpression()), !dbg !4195
  %frombool = zext i1 %bm_abdicate to i8
  store i8 %frombool, i8* %bm_abdicate.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bm_abdicate.addr, metadata !4196, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.declare(metadata %struct.fw_node** %local_node, metadata !4198, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4200, metadata !DIExpression()), !dbg !4201
  %0 = load i32, i32* %generation.addr, align 4, !dbg !4202
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4204
  %generation1 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 5, !dbg !4205
  %2 = load i32, i32* %generation1, align 4, !dbg !4205
  %call = call zeroext i1 @is_next_generation(i32 %0, i32 %2) #9, !dbg !4206
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !4207

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4208
  %local_node2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %3, i32 0, i32 19, !dbg !4209
  %4 = load %struct.fw_node*, %struct.fw_node** %local_node2, align 8, !dbg !4209
  %cmp = icmp ne %struct.fw_node* %4, null, !dbg !4210
  br i1 %cmp, label %if.then, label %if.end, !dbg !4211

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4212
  call void @fw_destroy_nodes(%struct.fw_card* %5) #9, !dbg !4214
  %6 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4215
  %bm_retries = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 31, !dbg !4216
  store i32 0, i32* %bm_retries, align 8, !dbg !4217
  br label %if.end, !dbg !4218

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body, !dbg !4219

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !4220

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4221, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4224, metadata !DIExpression()), !dbg !4223
  %cmp4 = icmp eq i64* %__dummy, %__dummy2, !dbg !4223
  %conv = zext i1 %cmp4 to i32, !dbg !4223
  store i32 1, i32* %tmp, align 4, !dbg !4223
  %7 = load i32, i32* %tmp, align 4, !dbg !4223
  br label %do.body5, !dbg !4225

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !4226

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !4227

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !4229, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !4233, metadata !DIExpression()), !dbg !4232
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !4232
  %conv11 = zext i1 %cmp10 to i32, !dbg !4232
  store i32 1, i32* %tmp12, align 4, !dbg !4232
  %8 = load i32, i32* %tmp12, align 4, !dbg !4232
  %call13 = call i64 @arch_local_irq_save() #9, !dbg !4234
  store i64 %call13, i64* %flags, align 8, !dbg !4234
  br label %do.end, !dbg !4234

do.end:                                           ; preds = %do.body7
  br label %do.end14, !dbg !4227

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !4226

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4235, !srcloc !4236
  br label %do.body16, !dbg !4235

do.body16:                                        ; preds = %do.body15
  %9 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4237
  %lock = getelementptr inbounds %struct.fw_card, %struct.fw_card* %9, i32 0, i32 18, !dbg !4237
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4238
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4239
  %rlock.i = bitcast %union.anon.1* %11 to %struct.raw_spinlock*, !dbg !4239
  br label %do.end18, !dbg !4237

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !4235

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4226

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !4225

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !4220

do.end22:                                         ; preds = %do.end21
  %12 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4240
  %broadcast_channel_auto_allocated = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 36, !dbg !4241
  %13 = load i8, i8* %broadcast_channel_auto_allocated, align 2, !dbg !4241
  %tobool = trunc i8 %13 to i1, !dbg !4241
  %14 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4242
  %broadcast_channel_allocated = getelementptr inbounds %struct.fw_card, %struct.fw_card* %14, i32 0, i32 37, !dbg !4243
  %frombool23 = zext i1 %tobool to i8, !dbg !4244
  store i8 %frombool23, i8* %broadcast_channel_allocated, align 1, !dbg !4244
  %15 = load i32, i32* %node_id.addr, align 4, !dbg !4245
  %16 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4246
  %node_id24 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 4, !dbg !4247
  store i32 %15, i32* %node_id24, align 8, !dbg !4248
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4249, !srcloc !4250
  %17 = load i32, i32* %generation.addr, align 4, !dbg !4251
  %18 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4252
  %generation25 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %18, i32 0, i32 5, !dbg !4253
  store i32 %17, i32* %generation25, align 4, !dbg !4254
  %call26 = call i64 @get_jiffies_64() #9, !dbg !4255
  %19 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4256
  %reset_jiffies = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 9, !dbg !4257
  store i64 %call26, i64* %reset_jiffies, align 8, !dbg !4258
  %20 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4259
  %bm_node_id = getelementptr inbounds %struct.fw_card, %struct.fw_card* %20, i32 0, i32 33, !dbg !4260
  store i32 65535, i32* %bm_node_id, align 8, !dbg !4261
  %21 = load i8, i8* %bm_abdicate.addr, align 1, !dbg !4262
  %tobool27 = trunc i8 %21 to i1, !dbg !4262
  %22 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4263
  %bm_abdicate28 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 34, !dbg !4264
  %frombool29 = zext i1 %tobool27 to i8, !dbg !4265
  store i8 %frombool29, i8* %bm_abdicate28, align 4, !dbg !4265
  %23 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4266
  call void @fw_schedule_bm_work(%struct.fw_card* %23, i64 0) #9, !dbg !4267
  %24 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4268
  %25 = load i32*, i32** %self_ids.addr, align 8, !dbg !4269
  %26 = load i32, i32* %self_id_count.addr, align 4, !dbg !4270
  %call30 = call %struct.fw_node* @build_tree(%struct.fw_card* %24, i32* %25, i32 %26) #9, !dbg !4271
  store %struct.fw_node* %call30, %struct.fw_node** %local_node, align 8, !dbg !4272
  %27 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4273
  %28 = load i32*, i32** %self_ids.addr, align 8, !dbg !4274
  %29 = load i32, i32* %self_id_count.addr, align 4, !dbg !4275
  call void @update_topology_map(%struct.fw_card* %27, i32* %28, i32 %29) #9, !dbg !4276
  %30 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4277
  %color = getelementptr inbounds %struct.fw_card, %struct.fw_card* %30, i32 0, i32 22, !dbg !4278
  %31 = load i8, i8* %color, align 8, !dbg !4279
  %inc = add i8 %31, 1, !dbg !4279
  store i8 %inc, i8* %color, align 8, !dbg !4279
  %32 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4280
  %cmp31 = icmp eq %struct.fw_node* %32, null, !dbg !4282
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !4283

if.then33:                                        ; preds = %do.end22
  %33 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4284
  call void (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4286
  br label %if.end41, !dbg !4287

if.else:                                          ; preds = %do.end22
  %34 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4288
  %local_node34 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %34, i32 0, i32 19, !dbg !4290
  %35 = load %struct.fw_node*, %struct.fw_node** %local_node34, align 8, !dbg !4290
  %cmp35 = icmp eq %struct.fw_node* %35, null, !dbg !4291
  br i1 %cmp35, label %if.then37, label %if.else39, !dbg !4292

if.then37:                                        ; preds = %if.else
  %36 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4293
  %37 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4295
  %local_node38 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %37, i32 0, i32 19, !dbg !4296
  store %struct.fw_node* %36, %struct.fw_node** %local_node38, align 8, !dbg !4297
  %38 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4298
  %39 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4299
  call void @for_each_fw_node(%struct.fw_card* %38, %struct.fw_node* %39, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* @report_found_node) #9, !dbg !4300
  br label %if.end40, !dbg !4301

if.else39:                                        ; preds = %if.else
  %40 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4302
  %41 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4304
  call void @update_tree(%struct.fw_card* %40, %struct.fw_node* %41) #9, !dbg !4305
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then33
  %42 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4306
  %lock42 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %42, i32 0, i32 18, !dbg !4307
  %43 = load i64, i64* %flags, align 8, !dbg !4308
  store %struct.spinlock* %lock42, %struct.spinlock** %lock.addr.i43, align 8
  store i64 %43, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !451, metadata !4005, metadata !DIExpression()) #4, !dbg !4309
  call void @llvm.dbg.declare(metadata !451, metadata !4009, metadata !DIExpression()) #4, !dbg !4309
  store i32 1, i32* %tmp.i, align 4, !dbg !4309
  %44 = load i32, i32* %tmp.i, align 4, !dbg !4309
  call void @llvm.dbg.declare(metadata !451, metadata !4010, metadata !DIExpression()) #4, !dbg !4310
  call void @llvm.dbg.declare(metadata !451, metadata !4016, metadata !DIExpression()) #4, !dbg !4310
  store i32 1, i32* %tmp8.i, align 4, !dbg !4310
  %45 = load i32, i32* %tmp8.i, align 4, !dbg !4310
  %46 = load i64, i64* %flags.addr.i, align 8, !dbg !4311
  call void @arch_local_irq_restore(i64 %46) #10, !dbg !4311
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4312, !srcloc !4020
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i43, align 8, !dbg !4313
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4313
  %rlock.i44 = bitcast %union.anon.1* %48 to %struct.raw_spinlock*, !dbg !4313
  ret void, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_next_generation(i32 %new_generation, i32 %old_generation) #0 !dbg !4315 {
entry:
  %new_generation.addr = alloca i32, align 4
  %old_generation.addr = alloca i32, align 4
  store i32 %new_generation, i32* %new_generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %new_generation.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  store i32 %old_generation, i32* %old_generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %old_generation.addr, metadata !4320, metadata !DIExpression()), !dbg !4321
  %0 = load i32, i32* %new_generation.addr, align 4, !dbg !4322
  %and = and i32 %0, 255, !dbg !4323
  %1 = load i32, i32* %old_generation.addr, align 4, !dbg !4324
  %add = add i32 %1, 1, !dbg !4325
  %and1 = and i32 %add, 255, !dbg !4326
  %cmp = icmp eq i32 %and, %and1, !dbg !4327
  ret i1 %cmp, !dbg !4328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_jiffies_64() #0 !dbg !4329 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !4333
  ret i64 %0, !dbg !4334
}

; Function Attrs: noredzone
declare dso_local void @fw_schedule_bm_work(%struct.fw_card*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_node* @build_tree(%struct.fw_card* %card, i32* %sid, i32 %self_id_count) #0 !dbg !4335 {
entry:
  %retval = alloca %struct.fw_node*, align 8
  %card.addr = alloca %struct.fw_card*, align 8
  %sid.addr = alloca i32*, align 8
  %self_id_count.addr = alloca i32, align 4
  %node = alloca %struct.fw_node*, align 8
  %child = alloca %struct.fw_node*, align 8
  %local_node = alloca %struct.fw_node*, align 8
  %irm_node = alloca %struct.fw_node*, align 8
  %stack = alloca %struct.list_head, align 8
  %h = alloca %struct.list_head*, align 8
  %next_sid = alloca i32*, align 8
  %end = alloca i32*, align 8
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  %port_count = alloca i32, align 4
  %child_port_count = alloca i32, align 4
  %phy_id = alloca i32, align 4
  %parent_count = alloca i32, align 4
  %stack_depth = alloca i32, align 4
  %gap_count = alloca i32, align 4
  %beta_repeaters_present = alloca i8, align 1
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i32* %sid, i32** %sid.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sid.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  store i32 %self_id_count, i32* %self_id_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %self_id_count.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata %struct.fw_node** %child, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata %struct.fw_node** %local_node, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata %struct.fw_node** %irm_node, metadata !4350, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata %struct.list_head* %stack, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata %struct.list_head** %h, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata i32** %next_sid, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata i32** %end, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.declare(metadata i32* %q, metadata !4360, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4362, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.declare(metadata i32* %port_count, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.declare(metadata i32* %child_port_count, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.declare(metadata i32* %phy_id, metadata !4368, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.declare(metadata i32* %parent_count, metadata !4370, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.declare(metadata i32* %stack_depth, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata i32* %gap_count, metadata !4374, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.declare(metadata i8* %beta_repeaters_present, metadata !4376, metadata !DIExpression()), !dbg !4377
  store %struct.fw_node* null, %struct.fw_node** %local_node, align 8, !dbg !4378
  store %struct.fw_node* null, %struct.fw_node** %node, align 8, !dbg !4379
  call void @INIT_LIST_HEAD(%struct.list_head* %stack) #9, !dbg !4380
  store i32 0, i32* %stack_depth, align 4, !dbg !4381
  %0 = load i32*, i32** %sid.addr, align 8, !dbg !4382
  %1 = load i32, i32* %self_id_count.addr, align 4, !dbg !4383
  %idx.ext = sext i32 %1 to i64, !dbg !4384
  %add.ptr = getelementptr i32, i32* %0, i64 %idx.ext, !dbg !4384
  store i32* %add.ptr, i32** %end, align 8, !dbg !4385
  store i32 0, i32* %phy_id, align 4, !dbg !4386
  store %struct.fw_node* null, %struct.fw_node** %irm_node, align 8, !dbg !4387
  %2 = load i32*, i32** %sid.addr, align 8, !dbg !4388
  %3 = load i32, i32* %2, align 4, !dbg !4388
  %shr = lshr i32 %3, 16, !dbg !4388
  %and = and i32 %shr, 63, !dbg !4388
  store i32 %and, i32* %gap_count, align 4, !dbg !4389
  store i8 0, i8* %beta_repeaters_present, align 1, !dbg !4390
  br label %while.cond, !dbg !4391

while.cond:                                       ; preds = %if.end74, %entry
  %4 = load i32*, i32** %sid.addr, align 8, !dbg !4392
  %5 = load i32*, i32** %end, align 8, !dbg !4393
  %cmp = icmp ult i32* %4, %5, !dbg !4394
  br i1 %cmp, label %while.body, label %while.end, !dbg !4391

while.body:                                       ; preds = %while.cond
  %6 = load i32*, i32** %sid.addr, align 8, !dbg !4395
  %call = call i32* @count_ports(i32* %6, i32* %port_count, i32* %child_port_count) #9, !dbg !4397
  store i32* %call, i32** %next_sid, align 8, !dbg !4398
  %7 = load i32*, i32** %next_sid, align 8, !dbg !4399
  %cmp1 = icmp eq i32* %7, null, !dbg !4401
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4402

if.then:                                          ; preds = %while.body
  %8 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4403
  call void (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4405
  store %struct.fw_node* null, %struct.fw_node** %retval, align 8, !dbg !4406
  br label %return, !dbg !4406

if.end:                                           ; preds = %while.body
  %9 = load i32*, i32** %sid.addr, align 8, !dbg !4407
  %10 = load i32, i32* %9, align 4, !dbg !4408
  store i32 %10, i32* %q, align 4, !dbg !4409
  %11 = load i32, i32* %phy_id, align 4, !dbg !4410
  %12 = load i32, i32* %q, align 4, !dbg !4412
  %shr2 = lshr i32 %12, 24, !dbg !4412
  %and3 = and i32 %shr2, 63, !dbg !4412
  %cmp4 = icmp ne i32 %11, %and3, !dbg !4413
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !4414

if.then5:                                         ; preds = %if.end
  %13 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4415
  %14 = load i32, i32* %phy_id, align 4, !dbg !4417
  %15 = load i32, i32* %q, align 4, !dbg !4418
  %shr6 = lshr i32 %15, 24, !dbg !4418
  %and7 = and i32 %shr6, 63, !dbg !4418
  call void (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %and7) #9, !dbg !4419
  store %struct.fw_node* null, %struct.fw_node** %retval, align 8, !dbg !4420
  br label %return, !dbg !4420

if.end8:                                          ; preds = %if.end
  %16 = load i32, i32* %child_port_count, align 4, !dbg !4421
  %17 = load i32, i32* %stack_depth, align 4, !dbg !4423
  %cmp9 = icmp sgt i32 %16, %17, !dbg !4424
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4425

if.then10:                                        ; preds = %if.end8
  %18 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4426
  call void (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4428
  store %struct.fw_node* null, %struct.fw_node** %retval, align 8, !dbg !4429
  br label %return, !dbg !4429

if.end11:                                         ; preds = %if.end8
  store i32 0, i32* %i, align 4, !dbg !4430
  store %struct.list_head* %stack, %struct.list_head** %h, align 8, !dbg !4432
  br label %for.cond, !dbg !4433

for.cond:                                         ; preds = %for.inc, %if.end11
  %19 = load i32, i32* %i, align 4, !dbg !4434
  %20 = load i32, i32* %child_port_count, align 4, !dbg !4436
  %cmp12 = icmp slt i32 %19, %20, !dbg !4437
  br i1 %cmp12, label %for.body, label %for.end, !dbg !4438

for.body:                                         ; preds = %for.cond
  %21 = load %struct.list_head*, %struct.list_head** %h, align 8, !dbg !4439
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 1, !dbg !4440
  %22 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4440
  store %struct.list_head* %22, %struct.list_head** %h, align 8, !dbg !4441
  br label %for.inc, !dbg !4442

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !4443
  %inc = add i32 %23, 1, !dbg !4443
  store i32 %inc, i32* %i, align 4, !dbg !4443
  br label %for.cond, !dbg !4444, !llvm.loop !4445

for.end:                                          ; preds = %for.cond
  %24 = load %struct.list_head*, %struct.list_head** %h, align 8, !dbg !4447
  %call13 = call %struct.fw_node* @fw_node(%struct.list_head* %24) #9, !dbg !4448
  store %struct.fw_node* %call13, %struct.fw_node** %child, align 8, !dbg !4449
  %25 = load i32, i32* %q, align 4, !dbg !4450
  %26 = load i32, i32* %port_count, align 4, !dbg !4451
  %27 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4452
  %color = getelementptr inbounds %struct.fw_card, %struct.fw_card* %27, i32 0, i32 22, !dbg !4453
  %28 = load i8, i8* %color, align 8, !dbg !4453
  %conv = zext i8 %28 to i32, !dbg !4452
  %call14 = call %struct.fw_node* @fw_node_create(i32 %25, i32 %26, i32 %conv) #9, !dbg !4454
  store %struct.fw_node* %call14, %struct.fw_node** %node, align 8, !dbg !4455
  %29 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4456
  %cmp15 = icmp eq %struct.fw_node* %29, null, !dbg !4458
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4459

if.then17:                                        ; preds = %for.end
  %30 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4460
  call void (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4462
  store %struct.fw_node* null, %struct.fw_node** %retval, align 8, !dbg !4463
  br label %return, !dbg !4463

if.end18:                                         ; preds = %for.end
  %31 = load i32, i32* %phy_id, align 4, !dbg !4464
  %32 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4466
  %node_id = getelementptr inbounds %struct.fw_card, %struct.fw_card* %32, i32 0, i32 4, !dbg !4467
  %33 = load i32, i32* %node_id, align 8, !dbg !4467
  %and19 = and i32 %33, 63, !dbg !4468
  %cmp20 = icmp eq i32 %31, %and19, !dbg !4469
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4470

if.then22:                                        ; preds = %if.end18
  %34 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4471
  store %struct.fw_node* %34, %struct.fw_node** %local_node, align 8, !dbg !4472
  br label %if.end23, !dbg !4473

if.end23:                                         ; preds = %if.then22, %if.end18
  %35 = load i32, i32* %q, align 4, !dbg !4474
  %shr24 = lshr i32 %35, 11, !dbg !4474
  %and25 = and i32 %shr24, 1, !dbg !4474
  %tobool = icmp ne i32 %and25, 0, !dbg !4474
  br i1 %tobool, label %if.then26, label %if.end27, !dbg !4476

if.then26:                                        ; preds = %if.end23
  %36 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4477
  store %struct.fw_node* %36, %struct.fw_node** %irm_node, align 8, !dbg !4478
  br label %if.end27, !dbg !4479

if.end27:                                         ; preds = %if.then26, %if.end23
  store i32 0, i32* %parent_count, align 4, !dbg !4480
  store i32 0, i32* %i, align 4, !dbg !4481
  br label %for.cond28, !dbg !4483

for.cond28:                                       ; preds = %for.inc44, %if.end27
  %37 = load i32, i32* %i, align 4, !dbg !4484
  %38 = load i32, i32* %port_count, align 4, !dbg !4486
  %cmp29 = icmp slt i32 %37, %38, !dbg !4487
  br i1 %cmp29, label %for.body31, label %for.end46, !dbg !4488

for.body31:                                       ; preds = %for.cond28
  %39 = load i32*, i32** %sid.addr, align 8, !dbg !4489
  %40 = load i32, i32* %i, align 4, !dbg !4491
  %call32 = call i32 @get_port_type(i32* %39, i32 %40) #9, !dbg !4492
  switch i32 %call32, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb36
  ], !dbg !4493

sw.bb:                                            ; preds = %for.body31
  %41 = load i32, i32* %parent_count, align 4, !dbg !4494
  %inc33 = add i32 %41, 1, !dbg !4494
  store i32 %inc33, i32* %parent_count, align 4, !dbg !4494
  %42 = load i32, i32* %i, align 4, !dbg !4496
  %conv34 = trunc i32 %42 to i8, !dbg !4496
  %43 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4497
  %color35 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %43, i32 0, i32 1, !dbg !4498
  store i8 %conv34, i8* %color35, align 2, !dbg !4499
  br label %sw.epilog, !dbg !4500

sw.bb36:                                          ; preds = %for.body31
  %44 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4501
  %45 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4502
  %ports = getelementptr inbounds %struct.fw_node, %struct.fw_node* %45, i32 0, i32 8, !dbg !4503
  %46 = load i32, i32* %i, align 4, !dbg !4504
  %idxprom = sext i32 %46 to i64, !dbg !4502
  %arrayidx = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports, i64 0, i64 %idxprom, !dbg !4502
  store %struct.fw_node* %44, %struct.fw_node** %arrayidx, align 8, !dbg !4505
  %47 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4506
  %48 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4507
  %ports37 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %48, i32 0, i32 8, !dbg !4508
  %49 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4509
  %color38 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %49, i32 0, i32 1, !dbg !4510
  %50 = load i8, i8* %color38, align 2, !dbg !4510
  %idxprom39 = zext i8 %50 to i64, !dbg !4507
  %arrayidx40 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports37, i64 0, i64 %idxprom39, !dbg !4507
  store %struct.fw_node* %47, %struct.fw_node** %arrayidx40, align 8, !dbg !4511
  %51 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4512
  %color41 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %51, i32 0, i32 22, !dbg !4513
  %52 = load i8, i8* %color41, align 8, !dbg !4513
  %53 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4514
  %color42 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %53, i32 0, i32 1, !dbg !4515
  store i8 %52, i8* %color42, align 2, !dbg !4516
  %54 = load %struct.fw_node*, %struct.fw_node** %child, align 8, !dbg !4517
  %link = getelementptr inbounds %struct.fw_node, %struct.fw_node* %54, i32 0, i32 6, !dbg !4518
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %link, i32 0, i32 0, !dbg !4519
  %55 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4519
  %call43 = call %struct.fw_node* @fw_node(%struct.list_head* %55) #9, !dbg !4520
  store %struct.fw_node* %call43, %struct.fw_node** %child, align 8, !dbg !4521
  br label %sw.epilog, !dbg !4522

sw.epilog:                                        ; preds = %for.body31, %sw.bb36, %sw.bb
  br label %for.inc44, !dbg !4523

for.inc44:                                        ; preds = %sw.epilog
  %56 = load i32, i32* %i, align 4, !dbg !4524
  %inc45 = add i32 %56, 1, !dbg !4524
  store i32 %inc45, i32* %i, align 4, !dbg !4524
  br label %for.cond28, !dbg !4525, !llvm.loop !4526

for.end46:                                        ; preds = %for.cond28
  %57 = load i32*, i32** %next_sid, align 8, !dbg !4528
  %58 = load i32*, i32** %end, align 8, !dbg !4530
  %cmp47 = icmp eq i32* %57, %58, !dbg !4531
  br i1 %cmp47, label %land.lhs.true, label %lor.lhs.false, !dbg !4532

land.lhs.true:                                    ; preds = %for.end46
  %59 = load i32, i32* %parent_count, align 4, !dbg !4533
  %cmp49 = icmp ne i32 %59, 0, !dbg !4534
  br i1 %cmp49, label %if.then56, label %lor.lhs.false, !dbg !4535

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end46
  %60 = load i32*, i32** %next_sid, align 8, !dbg !4536
  %61 = load i32*, i32** %end, align 8, !dbg !4537
  %cmp51 = icmp ult i32* %60, %61, !dbg !4538
  br i1 %cmp51, label %land.lhs.true53, label %if.end57, !dbg !4539

land.lhs.true53:                                  ; preds = %lor.lhs.false
  %62 = load i32, i32* %parent_count, align 4, !dbg !4540
  %cmp54 = icmp ne i32 %62, 1, !dbg !4541
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !4542

if.then56:                                        ; preds = %land.lhs.true53, %land.lhs.true
  %63 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4543
  %64 = load i32, i32* %phy_id, align 4, !dbg !4545
  %65 = load i32, i32* %parent_count, align 4, !dbg !4546
  call void (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %63, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %65) #9, !dbg !4547
  store %struct.fw_node* null, %struct.fw_node** %retval, align 8, !dbg !4548
  br label %return, !dbg !4548

if.end57:                                         ; preds = %land.lhs.true53, %lor.lhs.false
  %66 = load %struct.list_head*, %struct.list_head** %h, align 8, !dbg !4549
  %prev58 = getelementptr inbounds %struct.list_head, %struct.list_head* %66, i32 0, i32 1, !dbg !4550
  %67 = load %struct.list_head*, %struct.list_head** %prev58, align 8, !dbg !4550
  call void @__list_del(%struct.list_head* %67, %struct.list_head* %stack) #9, !dbg !4551
  %68 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4552
  %link59 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %68, i32 0, i32 6, !dbg !4553
  call void @list_add_tail(%struct.list_head* %link59, %struct.list_head* %stack) #9, !dbg !4554
  %69 = load i32, i32* %child_port_count, align 4, !dbg !4555
  %sub = sub i32 1, %69, !dbg !4556
  %70 = load i32, i32* %stack_depth, align 4, !dbg !4557
  %add = add i32 %70, %sub, !dbg !4557
  store i32 %add, i32* %stack_depth, align 4, !dbg !4557
  %71 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4558
  %phy_speed = getelementptr inbounds %struct.fw_node, %struct.fw_node* %71, i32 0, i32 3, !dbg !4560
  %bf.load = load i8, i8* %phy_speed, align 4, !dbg !4560
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !4560
  %bf.clear = and i8 %bf.lshr, 3, !dbg !4560
  %conv60 = zext i8 %bf.clear to i32, !dbg !4558
  %cmp61 = icmp eq i32 %conv60, 3, !dbg !4561
  br i1 %cmp61, label %land.lhs.true63, label %if.end68, !dbg !4562

land.lhs.true63:                                  ; preds = %if.end57
  %72 = load i32, i32* %parent_count, align 4, !dbg !4563
  %73 = load i32, i32* %child_port_count, align 4, !dbg !4564
  %add64 = add i32 %72, %73, !dbg !4565
  %cmp65 = icmp sgt i32 %add64, 1, !dbg !4566
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !4567

if.then67:                                        ; preds = %land.lhs.true63
  store i8 1, i8* %beta_repeaters_present, align 1, !dbg !4568
  br label %if.end68, !dbg !4569

if.end68:                                         ; preds = %if.then67, %land.lhs.true63, %if.end57
  %74 = load i32, i32* %q, align 4, !dbg !4570
  %shr69 = lshr i32 %74, 16, !dbg !4570
  %and70 = and i32 %shr69, 63, !dbg !4570
  %75 = load i32, i32* %gap_count, align 4, !dbg !4572
  %cmp71 = icmp ne i32 %and70, %75, !dbg !4573
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !4574

if.then73:                                        ; preds = %if.end68
  store i32 0, i32* %gap_count, align 4, !dbg !4575
  br label %if.end74, !dbg !4576

if.end74:                                         ; preds = %if.then73, %if.end68
  %76 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4577
  call void @update_hop_count(%struct.fw_node* %76) #9, !dbg !4578
  %77 = load i32*, i32** %next_sid, align 8, !dbg !4579
  store i32* %77, i32** %sid.addr, align 8, !dbg !4580
  %78 = load i32, i32* %phy_id, align 4, !dbg !4581
  %inc75 = add i32 %78, 1, !dbg !4581
  store i32 %inc75, i32* %phy_id, align 4, !dbg !4581
  br label %while.cond, !dbg !4391, !llvm.loop !4582

while.end:                                        ; preds = %while.cond
  %79 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !4584
  %80 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4585
  %root_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %80, i32 0, i32 20, !dbg !4586
  store %struct.fw_node* %79, %struct.fw_node** %root_node, align 8, !dbg !4587
  %81 = load %struct.fw_node*, %struct.fw_node** %irm_node, align 8, !dbg !4588
  %82 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4589
  %irm_node76 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %82, i32 0, i32 21, !dbg !4590
  store %struct.fw_node* %81, %struct.fw_node** %irm_node76, align 8, !dbg !4591
  %83 = load i32, i32* %gap_count, align 4, !dbg !4592
  %84 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4593
  %gap_count77 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %84, i32 0, i32 23, !dbg !4594
  store i32 %83, i32* %gap_count77, align 4, !dbg !4595
  %85 = load i8, i8* %beta_repeaters_present, align 1, !dbg !4596
  %tobool78 = trunc i8 %85 to i1, !dbg !4596
  %86 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4597
  %beta_repeaters_present79 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %86, i32 0, i32 24, !dbg !4598
  %frombool = zext i1 %tobool78 to i8, !dbg !4599
  store i8 %frombool, i8* %beta_repeaters_present79, align 8, !dbg !4599
  %87 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4600
  store %struct.fw_node* %87, %struct.fw_node** %retval, align 8, !dbg !4601
  br label %return, !dbg !4601

return:                                           ; preds = %while.end, %if.then56, %if.then17, %if.then10, %if.then5, %if.then
  %88 = load %struct.fw_node*, %struct.fw_node** %retval, align 8, !dbg !4602
  ret %struct.fw_node* %88, !dbg !4602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @update_topology_map(%struct.fw_card* %card, i32* %self_ids, i32 %self_id_count) #0 !dbg !4603 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !4606, metadata !DIExpression()), !dbg !4613
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !4620, metadata !DIExpression()), !dbg !4621
  %card.addr = alloca %struct.fw_card*, align 8
  %self_ids.addr = alloca i32*, align 8
  %self_id_count.addr = alloca i32, align 4
  %node_count = alloca i32, align 4
  %map = alloca i32*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i32* %self_ids, i32** %self_ids.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %self_ids.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i32 %self_id_count, i32* %self_id_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %self_id_count.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.declare(metadata i32* %node_count, metadata !4628, metadata !DIExpression()), !dbg !4629
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4630
  %root_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %0, i32 0, i32 20, !dbg !4631
  %1 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4631
  %node_id = getelementptr inbounds %struct.fw_node, %struct.fw_node* %1, i32 0, i32 0, !dbg !4632
  %2 = load i16, i16* %node_id, align 8, !dbg !4632
  %conv = zext i16 %2 to i32, !dbg !4630
  %and = and i32 %conv, 63, !dbg !4633
  %add = add i32 %and, 1, !dbg !4634
  store i32 %add, i32* %node_count, align 4, !dbg !4629
  call void @llvm.dbg.declare(metadata i32** %map, metadata !4635, metadata !DIExpression()), !dbg !4637
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4638
  %topology_map = getelementptr inbounds %struct.fw_card, %struct.fw_card* %3, i32 0, i32 39, !dbg !4639
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %topology_map, i64 0, i64 0, !dbg !4638
  store i32* %arraydecay, i32** %map, align 8, !dbg !4637
  %4 = load i32, i32* %self_id_count.addr, align 4, !dbg !4640
  %add1 = add i32 %4, 2, !dbg !4640
  %shl = shl i32 %add1, 16, !dbg !4640
  %5 = call i1 @llvm.is.constant.i32(i32 %shl), !dbg !4640
  br i1 %5, label %cond.true, label %cond.false, !dbg !4640

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %self_id_count.addr, align 4, !dbg !4640
  %add2 = add i32 %6, 2, !dbg !4640
  %shl3 = shl i32 %add2, 16, !dbg !4640
  %and4 = and i32 %shl3, 255, !dbg !4640
  %shl5 = shl i32 %and4, 24, !dbg !4640
  %7 = load i32, i32* %self_id_count.addr, align 4, !dbg !4640
  %add6 = add i32 %7, 2, !dbg !4640
  %shl7 = shl i32 %add6, 16, !dbg !4640
  %and8 = and i32 %shl7, 65280, !dbg !4640
  %shl9 = shl i32 %and8, 8, !dbg !4640
  %or = or i32 %shl5, %shl9, !dbg !4640
  %8 = load i32, i32* %self_id_count.addr, align 4, !dbg !4640
  %add10 = add i32 %8, 2, !dbg !4640
  %shl11 = shl i32 %add10, 16, !dbg !4640
  %and12 = and i32 %shl11, 16711680, !dbg !4640
  %shr = lshr i32 %and12, 8, !dbg !4640
  %or13 = or i32 %or, %shr, !dbg !4640
  %9 = load i32, i32* %self_id_count.addr, align 4, !dbg !4640
  %add14 = add i32 %9, 2, !dbg !4640
  %shl15 = shl i32 %add14, 16, !dbg !4640
  %and16 = and i32 %shl15, -16777216, !dbg !4640
  %shr17 = lshr i32 %and16, 24, !dbg !4640
  %or18 = or i32 %or13, %shr17, !dbg !4640
  br label %cond.end, !dbg !4640

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %self_id_count.addr, align 4, !dbg !4640
  %add19 = add i32 %10, 2, !dbg !4640
  %shl20 = shl i32 %add19, 16, !dbg !4640
  %call = call i32 @__fswab32(i32 %shl20) #11, !dbg !4640
  br label %cond.end, !dbg !4640

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or18, %cond.true ], [ %call, %cond.false ], !dbg !4640
  %11 = load i32*, i32** %map, align 8, !dbg !4641
  %incdec.ptr = getelementptr i32, i32* %11, i32 1, !dbg !4641
  store i32* %incdec.ptr, i32** %map, align 8, !dbg !4641
  store i32 %cond, i32* %11, align 4, !dbg !4642
  %12 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map21 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 39, !dbg !4643
  %arrayidx = getelementptr [256 x i32], [256 x i32]* %topology_map21, i64 0, i64 1, !dbg !4643
  %13 = load i32, i32* %arrayidx, align 4, !dbg !4643
  %14 = call i1 @llvm.is.constant.i32(i32 %13), !dbg !4643
  br i1 %14, label %cond.true22, label %cond.false42, !dbg !4643

cond.true22:                                      ; preds = %cond.end
  %15 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map23 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %15, i32 0, i32 39, !dbg !4643
  %arrayidx24 = getelementptr [256 x i32], [256 x i32]* %topology_map23, i64 0, i64 1, !dbg !4643
  %16 = load i32, i32* %arrayidx24, align 4, !dbg !4643
  %and25 = and i32 %16, 255, !dbg !4643
  %shl26 = shl i32 %and25, 24, !dbg !4643
  %17 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map27 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %17, i32 0, i32 39, !dbg !4643
  %arrayidx28 = getelementptr [256 x i32], [256 x i32]* %topology_map27, i64 0, i64 1, !dbg !4643
  %18 = load i32, i32* %arrayidx28, align 4, !dbg !4643
  %and29 = and i32 %18, 65280, !dbg !4643
  %shl30 = shl i32 %and29, 8, !dbg !4643
  %or31 = or i32 %shl26, %shl30, !dbg !4643
  %19 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map32 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 39, !dbg !4643
  %arrayidx33 = getelementptr [256 x i32], [256 x i32]* %topology_map32, i64 0, i64 1, !dbg !4643
  %20 = load i32, i32* %arrayidx33, align 4, !dbg !4643
  %and34 = and i32 %20, 16711680, !dbg !4643
  %shr35 = lshr i32 %and34, 8, !dbg !4643
  %or36 = or i32 %or31, %shr35, !dbg !4643
  %21 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map37 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %21, i32 0, i32 39, !dbg !4643
  %arrayidx38 = getelementptr [256 x i32], [256 x i32]* %topology_map37, i64 0, i64 1, !dbg !4643
  %22 = load i32, i32* %arrayidx38, align 4, !dbg !4643
  %and39 = and i32 %22, -16777216, !dbg !4643
  %shr40 = lshr i32 %and39, 24, !dbg !4643
  %or41 = or i32 %or36, %shr40, !dbg !4643
  br label %cond.end46, !dbg !4643

cond.false42:                                     ; preds = %cond.end
  %23 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map43 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %23, i32 0, i32 39, !dbg !4643
  %arrayidx44 = getelementptr [256 x i32], [256 x i32]* %topology_map43, i64 0, i64 1, !dbg !4643
  %24 = load i32, i32* %arrayidx44, align 4, !dbg !4643
  %call45 = call i32 @__fswab32(i32 %24) #11, !dbg !4643
  br label %cond.end46, !dbg !4643

cond.end46:                                       ; preds = %cond.false42, %cond.true22
  %cond47 = phi i32 [ %or41, %cond.true22 ], [ %call45, %cond.false42 ], !dbg !4643
  %add48 = add i32 %cond47, 1, !dbg !4643
  %25 = call i1 @llvm.is.constant.i32(i32 %add48), !dbg !4643
  br i1 %25, label %cond.true49, label %cond.false177, !dbg !4643

cond.true49:                                      ; preds = %cond.end46
  %26 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map50 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %26, i32 0, i32 39, !dbg !4643
  %arrayidx51 = getelementptr [256 x i32], [256 x i32]* %topology_map50, i64 0, i64 1, !dbg !4643
  %27 = load i32, i32* %arrayidx51, align 4, !dbg !4643
  %28 = call i1 @llvm.is.constant.i32(i32 %27), !dbg !4643
  br i1 %28, label %cond.true52, label %cond.false72, !dbg !4643

cond.true52:                                      ; preds = %cond.true49
  %29 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map53 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %29, i32 0, i32 39, !dbg !4643
  %arrayidx54 = getelementptr [256 x i32], [256 x i32]* %topology_map53, i64 0, i64 1, !dbg !4643
  %30 = load i32, i32* %arrayidx54, align 4, !dbg !4643
  %and55 = and i32 %30, 255, !dbg !4643
  %shl56 = shl i32 %and55, 24, !dbg !4643
  %31 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map57 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %31, i32 0, i32 39, !dbg !4643
  %arrayidx58 = getelementptr [256 x i32], [256 x i32]* %topology_map57, i64 0, i64 1, !dbg !4643
  %32 = load i32, i32* %arrayidx58, align 4, !dbg !4643
  %and59 = and i32 %32, 65280, !dbg !4643
  %shl60 = shl i32 %and59, 8, !dbg !4643
  %or61 = or i32 %shl56, %shl60, !dbg !4643
  %33 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map62 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %33, i32 0, i32 39, !dbg !4643
  %arrayidx63 = getelementptr [256 x i32], [256 x i32]* %topology_map62, i64 0, i64 1, !dbg !4643
  %34 = load i32, i32* %arrayidx63, align 4, !dbg !4643
  %and64 = and i32 %34, 16711680, !dbg !4643
  %shr65 = lshr i32 %and64, 8, !dbg !4643
  %or66 = or i32 %or61, %shr65, !dbg !4643
  %35 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map67 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %35, i32 0, i32 39, !dbg !4643
  %arrayidx68 = getelementptr [256 x i32], [256 x i32]* %topology_map67, i64 0, i64 1, !dbg !4643
  %36 = load i32, i32* %arrayidx68, align 4, !dbg !4643
  %and69 = and i32 %36, -16777216, !dbg !4643
  %shr70 = lshr i32 %and69, 24, !dbg !4643
  %or71 = or i32 %or66, %shr70, !dbg !4643
  br label %cond.end76, !dbg !4643

cond.false72:                                     ; preds = %cond.true49
  %37 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map73 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %37, i32 0, i32 39, !dbg !4643
  %arrayidx74 = getelementptr [256 x i32], [256 x i32]* %topology_map73, i64 0, i64 1, !dbg !4643
  %38 = load i32, i32* %arrayidx74, align 4, !dbg !4643
  %call75 = call i32 @__fswab32(i32 %38) #11, !dbg !4643
  br label %cond.end76, !dbg !4643

cond.end76:                                       ; preds = %cond.false72, %cond.true52
  %cond77 = phi i32 [ %or71, %cond.true52 ], [ %call75, %cond.false72 ], !dbg !4643
  %add78 = add i32 %cond77, 1, !dbg !4643
  %and79 = and i32 %add78, 255, !dbg !4643
  %shl80 = shl i32 %and79, 24, !dbg !4643
  %39 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map81 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %39, i32 0, i32 39, !dbg !4643
  %arrayidx82 = getelementptr [256 x i32], [256 x i32]* %topology_map81, i64 0, i64 1, !dbg !4643
  %40 = load i32, i32* %arrayidx82, align 4, !dbg !4643
  %41 = call i1 @llvm.is.constant.i32(i32 %40), !dbg !4643
  br i1 %41, label %cond.true83, label %cond.false103, !dbg !4643

cond.true83:                                      ; preds = %cond.end76
  %42 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map84 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %42, i32 0, i32 39, !dbg !4643
  %arrayidx85 = getelementptr [256 x i32], [256 x i32]* %topology_map84, i64 0, i64 1, !dbg !4643
  %43 = load i32, i32* %arrayidx85, align 4, !dbg !4643
  %and86 = and i32 %43, 255, !dbg !4643
  %shl87 = shl i32 %and86, 24, !dbg !4643
  %44 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map88 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %44, i32 0, i32 39, !dbg !4643
  %arrayidx89 = getelementptr [256 x i32], [256 x i32]* %topology_map88, i64 0, i64 1, !dbg !4643
  %45 = load i32, i32* %arrayidx89, align 4, !dbg !4643
  %and90 = and i32 %45, 65280, !dbg !4643
  %shl91 = shl i32 %and90, 8, !dbg !4643
  %or92 = or i32 %shl87, %shl91, !dbg !4643
  %46 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map93 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %46, i32 0, i32 39, !dbg !4643
  %arrayidx94 = getelementptr [256 x i32], [256 x i32]* %topology_map93, i64 0, i64 1, !dbg !4643
  %47 = load i32, i32* %arrayidx94, align 4, !dbg !4643
  %and95 = and i32 %47, 16711680, !dbg !4643
  %shr96 = lshr i32 %and95, 8, !dbg !4643
  %or97 = or i32 %or92, %shr96, !dbg !4643
  %48 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map98 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %48, i32 0, i32 39, !dbg !4643
  %arrayidx99 = getelementptr [256 x i32], [256 x i32]* %topology_map98, i64 0, i64 1, !dbg !4643
  %49 = load i32, i32* %arrayidx99, align 4, !dbg !4643
  %and100 = and i32 %49, -16777216, !dbg !4643
  %shr101 = lshr i32 %and100, 24, !dbg !4643
  %or102 = or i32 %or97, %shr101, !dbg !4643
  br label %cond.end107, !dbg !4643

cond.false103:                                    ; preds = %cond.end76
  %50 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map104 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %50, i32 0, i32 39, !dbg !4643
  %arrayidx105 = getelementptr [256 x i32], [256 x i32]* %topology_map104, i64 0, i64 1, !dbg !4643
  %51 = load i32, i32* %arrayidx105, align 4, !dbg !4643
  %call106 = call i32 @__fswab32(i32 %51) #11, !dbg !4643
  br label %cond.end107, !dbg !4643

cond.end107:                                      ; preds = %cond.false103, %cond.true83
  %cond108 = phi i32 [ %or102, %cond.true83 ], [ %call106, %cond.false103 ], !dbg !4643
  %add109 = add i32 %cond108, 1, !dbg !4643
  %and110 = and i32 %add109, 65280, !dbg !4643
  %shl111 = shl i32 %and110, 8, !dbg !4643
  %or112 = or i32 %shl80, %shl111, !dbg !4643
  %52 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map113 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %52, i32 0, i32 39, !dbg !4643
  %arrayidx114 = getelementptr [256 x i32], [256 x i32]* %topology_map113, i64 0, i64 1, !dbg !4643
  %53 = load i32, i32* %arrayidx114, align 4, !dbg !4643
  %54 = call i1 @llvm.is.constant.i32(i32 %53), !dbg !4643
  br i1 %54, label %cond.true115, label %cond.false135, !dbg !4643

cond.true115:                                     ; preds = %cond.end107
  %55 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map116 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %55, i32 0, i32 39, !dbg !4643
  %arrayidx117 = getelementptr [256 x i32], [256 x i32]* %topology_map116, i64 0, i64 1, !dbg !4643
  %56 = load i32, i32* %arrayidx117, align 4, !dbg !4643
  %and118 = and i32 %56, 255, !dbg !4643
  %shl119 = shl i32 %and118, 24, !dbg !4643
  %57 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map120 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %57, i32 0, i32 39, !dbg !4643
  %arrayidx121 = getelementptr [256 x i32], [256 x i32]* %topology_map120, i64 0, i64 1, !dbg !4643
  %58 = load i32, i32* %arrayidx121, align 4, !dbg !4643
  %and122 = and i32 %58, 65280, !dbg !4643
  %shl123 = shl i32 %and122, 8, !dbg !4643
  %or124 = or i32 %shl119, %shl123, !dbg !4643
  %59 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map125 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %59, i32 0, i32 39, !dbg !4643
  %arrayidx126 = getelementptr [256 x i32], [256 x i32]* %topology_map125, i64 0, i64 1, !dbg !4643
  %60 = load i32, i32* %arrayidx126, align 4, !dbg !4643
  %and127 = and i32 %60, 16711680, !dbg !4643
  %shr128 = lshr i32 %and127, 8, !dbg !4643
  %or129 = or i32 %or124, %shr128, !dbg !4643
  %61 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map130 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %61, i32 0, i32 39, !dbg !4643
  %arrayidx131 = getelementptr [256 x i32], [256 x i32]* %topology_map130, i64 0, i64 1, !dbg !4643
  %62 = load i32, i32* %arrayidx131, align 4, !dbg !4643
  %and132 = and i32 %62, -16777216, !dbg !4643
  %shr133 = lshr i32 %and132, 24, !dbg !4643
  %or134 = or i32 %or129, %shr133, !dbg !4643
  br label %cond.end139, !dbg !4643

cond.false135:                                    ; preds = %cond.end107
  %63 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map136 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %63, i32 0, i32 39, !dbg !4643
  %arrayidx137 = getelementptr [256 x i32], [256 x i32]* %topology_map136, i64 0, i64 1, !dbg !4643
  %64 = load i32, i32* %arrayidx137, align 4, !dbg !4643
  %call138 = call i32 @__fswab32(i32 %64) #11, !dbg !4643
  br label %cond.end139, !dbg !4643

cond.end139:                                      ; preds = %cond.false135, %cond.true115
  %cond140 = phi i32 [ %or134, %cond.true115 ], [ %call138, %cond.false135 ], !dbg !4643
  %add141 = add i32 %cond140, 1, !dbg !4643
  %and142 = and i32 %add141, 16711680, !dbg !4643
  %shr143 = lshr i32 %and142, 8, !dbg !4643
  %or144 = or i32 %or112, %shr143, !dbg !4643
  %65 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map145 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %65, i32 0, i32 39, !dbg !4643
  %arrayidx146 = getelementptr [256 x i32], [256 x i32]* %topology_map145, i64 0, i64 1, !dbg !4643
  %66 = load i32, i32* %arrayidx146, align 4, !dbg !4643
  %67 = call i1 @llvm.is.constant.i32(i32 %66), !dbg !4643
  br i1 %67, label %cond.true147, label %cond.false167, !dbg !4643

cond.true147:                                     ; preds = %cond.end139
  %68 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map148 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %68, i32 0, i32 39, !dbg !4643
  %arrayidx149 = getelementptr [256 x i32], [256 x i32]* %topology_map148, i64 0, i64 1, !dbg !4643
  %69 = load i32, i32* %arrayidx149, align 4, !dbg !4643
  %and150 = and i32 %69, 255, !dbg !4643
  %shl151 = shl i32 %and150, 24, !dbg !4643
  %70 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map152 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %70, i32 0, i32 39, !dbg !4643
  %arrayidx153 = getelementptr [256 x i32], [256 x i32]* %topology_map152, i64 0, i64 1, !dbg !4643
  %71 = load i32, i32* %arrayidx153, align 4, !dbg !4643
  %and154 = and i32 %71, 65280, !dbg !4643
  %shl155 = shl i32 %and154, 8, !dbg !4643
  %or156 = or i32 %shl151, %shl155, !dbg !4643
  %72 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map157 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %72, i32 0, i32 39, !dbg !4643
  %arrayidx158 = getelementptr [256 x i32], [256 x i32]* %topology_map157, i64 0, i64 1, !dbg !4643
  %73 = load i32, i32* %arrayidx158, align 4, !dbg !4643
  %and159 = and i32 %73, 16711680, !dbg !4643
  %shr160 = lshr i32 %and159, 8, !dbg !4643
  %or161 = or i32 %or156, %shr160, !dbg !4643
  %74 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map162 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %74, i32 0, i32 39, !dbg !4643
  %arrayidx163 = getelementptr [256 x i32], [256 x i32]* %topology_map162, i64 0, i64 1, !dbg !4643
  %75 = load i32, i32* %arrayidx163, align 4, !dbg !4643
  %and164 = and i32 %75, -16777216, !dbg !4643
  %shr165 = lshr i32 %and164, 24, !dbg !4643
  %or166 = or i32 %or161, %shr165, !dbg !4643
  br label %cond.end171, !dbg !4643

cond.false167:                                    ; preds = %cond.end139
  %76 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map168 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %76, i32 0, i32 39, !dbg !4643
  %arrayidx169 = getelementptr [256 x i32], [256 x i32]* %topology_map168, i64 0, i64 1, !dbg !4643
  %77 = load i32, i32* %arrayidx169, align 4, !dbg !4643
  %call170 = call i32 @__fswab32(i32 %77) #11, !dbg !4643
  br label %cond.end171, !dbg !4643

cond.end171:                                      ; preds = %cond.false167, %cond.true147
  %cond172 = phi i32 [ %or166, %cond.true147 ], [ %call170, %cond.false167 ], !dbg !4643
  %add173 = add i32 %cond172, 1, !dbg !4643
  %and174 = and i32 %add173, -16777216, !dbg !4643
  %shr175 = lshr i32 %and174, 24, !dbg !4643
  %or176 = or i32 %or144, %shr175, !dbg !4643
  br label %cond.end208, !dbg !4643

cond.false177:                                    ; preds = %cond.end46
  %78 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map178 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %78, i32 0, i32 39, !dbg !4643
  %arrayidx179 = getelementptr [256 x i32], [256 x i32]* %topology_map178, i64 0, i64 1, !dbg !4643
  %79 = load i32, i32* %arrayidx179, align 4, !dbg !4643
  %80 = call i1 @llvm.is.constant.i32(i32 %79), !dbg !4643
  br i1 %80, label %cond.true180, label %cond.false200, !dbg !4643

cond.true180:                                     ; preds = %cond.false177
  %81 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map181 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %81, i32 0, i32 39, !dbg !4643
  %arrayidx182 = getelementptr [256 x i32], [256 x i32]* %topology_map181, i64 0, i64 1, !dbg !4643
  %82 = load i32, i32* %arrayidx182, align 4, !dbg !4643
  %and183 = and i32 %82, 255, !dbg !4643
  %shl184 = shl i32 %and183, 24, !dbg !4643
  %83 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map185 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %83, i32 0, i32 39, !dbg !4643
  %arrayidx186 = getelementptr [256 x i32], [256 x i32]* %topology_map185, i64 0, i64 1, !dbg !4643
  %84 = load i32, i32* %arrayidx186, align 4, !dbg !4643
  %and187 = and i32 %84, 65280, !dbg !4643
  %shl188 = shl i32 %and187, 8, !dbg !4643
  %or189 = or i32 %shl184, %shl188, !dbg !4643
  %85 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map190 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %85, i32 0, i32 39, !dbg !4643
  %arrayidx191 = getelementptr [256 x i32], [256 x i32]* %topology_map190, i64 0, i64 1, !dbg !4643
  %86 = load i32, i32* %arrayidx191, align 4, !dbg !4643
  %and192 = and i32 %86, 16711680, !dbg !4643
  %shr193 = lshr i32 %and192, 8, !dbg !4643
  %or194 = or i32 %or189, %shr193, !dbg !4643
  %87 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map195 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %87, i32 0, i32 39, !dbg !4643
  %arrayidx196 = getelementptr [256 x i32], [256 x i32]* %topology_map195, i64 0, i64 1, !dbg !4643
  %88 = load i32, i32* %arrayidx196, align 4, !dbg !4643
  %and197 = and i32 %88, -16777216, !dbg !4643
  %shr198 = lshr i32 %and197, 24, !dbg !4643
  %or199 = or i32 %or194, %shr198, !dbg !4643
  br label %cond.end204, !dbg !4643

cond.false200:                                    ; preds = %cond.false177
  %89 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4643
  %topology_map201 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %89, i32 0, i32 39, !dbg !4643
  %arrayidx202 = getelementptr [256 x i32], [256 x i32]* %topology_map201, i64 0, i64 1, !dbg !4643
  %90 = load i32, i32* %arrayidx202, align 4, !dbg !4643
  %call203 = call i32 @__fswab32(i32 %90) #11, !dbg !4643
  br label %cond.end204, !dbg !4643

cond.end204:                                      ; preds = %cond.false200, %cond.true180
  %cond205 = phi i32 [ %or199, %cond.true180 ], [ %call203, %cond.false200 ], !dbg !4643
  %add206 = add i32 %cond205, 1, !dbg !4643
  %call207 = call i32 @__fswab32(i32 %add206) #11, !dbg !4643
  br label %cond.end208, !dbg !4643

cond.end208:                                      ; preds = %cond.end204, %cond.end171
  %cond209 = phi i32 [ %or176, %cond.end171 ], [ %call207, %cond.end204 ], !dbg !4643
  %91 = load i32*, i32** %map, align 8, !dbg !4644
  %incdec.ptr210 = getelementptr i32, i32* %91, i32 1, !dbg !4644
  store i32* %incdec.ptr210, i32** %map, align 8, !dbg !4644
  store i32 %cond209, i32* %91, align 4, !dbg !4645
  %92 = load i32, i32* %node_count, align 4, !dbg !4646
  %shl211 = shl i32 %92, 16, !dbg !4646
  %93 = load i32, i32* %self_id_count.addr, align 4, !dbg !4646
  %or212 = or i32 %shl211, %93, !dbg !4646
  %94 = call i1 @llvm.is.constant.i32(i32 %or212), !dbg !4646
  br i1 %94, label %cond.true213, label %cond.false233, !dbg !4646

cond.true213:                                     ; preds = %cond.end208
  %95 = load i32, i32* %node_count, align 4, !dbg !4646
  %shl214 = shl i32 %95, 16, !dbg !4646
  %96 = load i32, i32* %self_id_count.addr, align 4, !dbg !4646
  %or215 = or i32 %shl214, %96, !dbg !4646
  %and216 = and i32 %or215, 255, !dbg !4646
  %shl217 = shl i32 %and216, 24, !dbg !4646
  %97 = load i32, i32* %node_count, align 4, !dbg !4646
  %shl218 = shl i32 %97, 16, !dbg !4646
  %98 = load i32, i32* %self_id_count.addr, align 4, !dbg !4646
  %or219 = or i32 %shl218, %98, !dbg !4646
  %and220 = and i32 %or219, 65280, !dbg !4646
  %shl221 = shl i32 %and220, 8, !dbg !4646
  %or222 = or i32 %shl217, %shl221, !dbg !4646
  %99 = load i32, i32* %node_count, align 4, !dbg !4646
  %shl223 = shl i32 %99, 16, !dbg !4646
  %100 = load i32, i32* %self_id_count.addr, align 4, !dbg !4646
  %or224 = or i32 %shl223, %100, !dbg !4646
  %and225 = and i32 %or224, 16711680, !dbg !4646
  %shr226 = lshr i32 %and225, 8, !dbg !4646
  %or227 = or i32 %or222, %shr226, !dbg !4646
  %101 = load i32, i32* %node_count, align 4, !dbg !4646
  %shl228 = shl i32 %101, 16, !dbg !4646
  %102 = load i32, i32* %self_id_count.addr, align 4, !dbg !4646
  %or229 = or i32 %shl228, %102, !dbg !4646
  %and230 = and i32 %or229, -16777216, !dbg !4646
  %shr231 = lshr i32 %and230, 24, !dbg !4646
  %or232 = or i32 %or227, %shr231, !dbg !4646
  br label %cond.end237, !dbg !4646

cond.false233:                                    ; preds = %cond.end208
  %103 = load i32, i32* %node_count, align 4, !dbg !4646
  %shl234 = shl i32 %103, 16, !dbg !4646
  %104 = load i32, i32* %self_id_count.addr, align 4, !dbg !4646
  %or235 = or i32 %shl234, %104, !dbg !4646
  %call236 = call i32 @__fswab32(i32 %or235) #11, !dbg !4646
  br label %cond.end237, !dbg !4646

cond.end237:                                      ; preds = %cond.false233, %cond.true213
  %cond238 = phi i32 [ %or232, %cond.true213 ], [ %call236, %cond.false233 ], !dbg !4646
  %105 = load i32*, i32** %map, align 8, !dbg !4647
  %incdec.ptr239 = getelementptr i32, i32* %105, i32 1, !dbg !4647
  store i32* %incdec.ptr239, i32** %map, align 8, !dbg !4647
  store i32 %cond238, i32* %105, align 4, !dbg !4648
  br label %while.cond, !dbg !4649

while.cond:                                       ; preds = %__cpu_to_be32p.exit, %cond.end237
  %106 = load i32, i32* %self_id_count.addr, align 4, !dbg !4650
  %dec = add i32 %106, -1, !dbg !4650
  store i32 %dec, i32* %self_id_count.addr, align 4, !dbg !4650
  %tobool = icmp ne i32 %106, 0, !dbg !4649
  br i1 %tobool, label %while.body, label %while.end, !dbg !4649

while.body:                                       ; preds = %while.cond
  %107 = load i32*, i32** %self_ids.addr, align 8, !dbg !4651
  %incdec.ptr240 = getelementptr i32, i32* %107, i32 1, !dbg !4651
  store i32* %incdec.ptr240, i32** %self_ids.addr, align 8, !dbg !4651
  store i32* %107, i32** %p.addr.i, align 8
  %108 = load i32*, i32** %p.addr.i, align 8, !dbg !4652
  store i32* %108, i32** %p.addr.i.i, align 8
  %109 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4653
  %110 = load i32, i32* %109, align 4, !dbg !4653
  %111 = call i1 @llvm.is.constant.i32(i32 %110) #4, !dbg !4653
  br i1 %111, label %cond.true.i.i, label %cond.false.i.i, !dbg !4653

cond.true.i.i:                                    ; preds = %while.body
  %112 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4653
  %113 = load i32, i32* %112, align 4, !dbg !4653
  %and.i.i = and i32 %113, 255, !dbg !4653
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !4653
  %114 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4653
  %115 = load i32, i32* %114, align 4, !dbg !4653
  %and1.i.i = and i32 %115, 65280, !dbg !4653
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !4653
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !4653
  %116 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4653
  %117 = load i32, i32* %116, align 4, !dbg !4653
  %and3.i.i = and i32 %117, 16711680, !dbg !4653
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !4653
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !4653
  %118 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4653
  %119 = load i32, i32* %118, align 4, !dbg !4653
  %and5.i.i = and i32 %119, -16777216, !dbg !4653
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !4653
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !4653
  br label %__cpu_to_be32p.exit, !dbg !4653

cond.false.i.i:                                   ; preds = %while.body
  %120 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4653
  %121 = load i32, i32* %120, align 4, !dbg !4653
  %call.i.i = call i32 @__fswab32(i32 %121) #11, !dbg !4653
  br label %__cpu_to_be32p.exit, !dbg !4653

__cpu_to_be32p.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !4653
  %122 = load i32*, i32** %map, align 8, !dbg !4654
  %incdec.ptr242 = getelementptr i32, i32* %122, i32 1, !dbg !4654
  store i32* %incdec.ptr242, i32** %map, align 8, !dbg !4654
  store i32 %cond.i.i, i32* %122, align 4, !dbg !4655
  br label %while.cond, !dbg !4649, !llvm.loop !4656

while.end:                                        ; preds = %while.cond
  %123 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4658
  %topology_map243 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %123, i32 0, i32 39, !dbg !4659
  %arraydecay244 = getelementptr inbounds [256 x i32], [256 x i32]* %topology_map243, i64 0, i64 0, !dbg !4658
  %call245 = call i32 @fw_compute_block_crc(i32* %arraydecay244) #9, !dbg !4660
  ret void, !dbg !4661
}

; Function Attrs: noredzone
declare dso_local void @fw_err(%struct.fw_card*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @report_found_node(%struct.fw_card* %card, %struct.fw_node* %node, %struct.fw_node* %parent) #0 !dbg !4662 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %node.addr = alloca %struct.fw_node*, align 8
  %parent.addr = alloca %struct.fw_node*, align 8
  %b_path = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4663, metadata !DIExpression()), !dbg !4664
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  store %struct.fw_node* %parent, %struct.fw_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %parent.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.declare(metadata i32* %b_path, metadata !4669, metadata !DIExpression()), !dbg !4670
  %0 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4671
  %phy_speed = getelementptr inbounds %struct.fw_node, %struct.fw_node* %0, i32 0, i32 3, !dbg !4672
  %bf.load = load i8, i8* %phy_speed, align 4, !dbg !4672
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !4672
  %bf.clear = and i8 %bf.lshr, 3, !dbg !4672
  %conv = zext i8 %bf.clear to i32, !dbg !4671
  %cmp = icmp eq i32 %conv, 3, !dbg !4673
  %conv1 = zext i1 %cmp to i32, !dbg !4673
  store i32 %conv1, i32* %b_path, align 4, !dbg !4670
  %1 = load %struct.fw_node*, %struct.fw_node** %parent.addr, align 8, !dbg !4674
  %cmp2 = icmp ne %struct.fw_node* %1, null, !dbg !4676
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4677

if.then:                                          ; preds = %entry
  %2 = load %struct.fw_node*, %struct.fw_node** %parent.addr, align 8, !dbg !4678
  %max_speed = getelementptr inbounds %struct.fw_node, %struct.fw_node* %2, i32 0, i32 3, !dbg !4680
  %bf.load4 = load i8, i8* %max_speed, align 4, !dbg !4680
  %bf.lshr5 = lshr i8 %bf.load4, 5, !dbg !4680
  %bf.clear6 = and i8 %bf.lshr5, 3, !dbg !4680
  %conv7 = zext i8 %bf.clear6 to i32, !dbg !4678
  %3 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4681
  %phy_speed8 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %3, i32 0, i32 3, !dbg !4682
  %bf.load9 = load i8, i8* %phy_speed8, align 4, !dbg !4682
  %bf.lshr10 = lshr i8 %bf.load9, 3, !dbg !4682
  %bf.clear11 = and i8 %bf.lshr10, 3, !dbg !4682
  %conv12 = zext i8 %bf.clear11 to i32, !dbg !4681
  %cmp13 = icmp slt i32 %conv7, %conv12, !dbg !4683
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !4678

cond.true:                                        ; preds = %if.then
  %4 = load %struct.fw_node*, %struct.fw_node** %parent.addr, align 8, !dbg !4684
  %max_speed15 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %4, i32 0, i32 3, !dbg !4685
  %bf.load16 = load i8, i8* %max_speed15, align 4, !dbg !4685
  %bf.lshr17 = lshr i8 %bf.load16, 5, !dbg !4685
  %bf.clear18 = and i8 %bf.lshr17, 3, !dbg !4685
  %conv19 = zext i8 %bf.clear18 to i32, !dbg !4684
  br label %cond.end, !dbg !4678

cond.false:                                       ; preds = %if.then
  %5 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4686
  %phy_speed20 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %5, i32 0, i32 3, !dbg !4687
  %bf.load21 = load i8, i8* %phy_speed20, align 4, !dbg !4687
  %bf.lshr22 = lshr i8 %bf.load21, 3, !dbg !4687
  %bf.clear23 = and i8 %bf.lshr22, 3, !dbg !4687
  %conv24 = zext i8 %bf.clear23 to i32, !dbg !4686
  br label %cond.end, !dbg !4678

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv19, %cond.true ], [ %conv24, %cond.false ], !dbg !4678
  %conv25 = trunc i32 %cond to i8, !dbg !4678
  %6 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4688
  %max_speed26 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %6, i32 0, i32 3, !dbg !4689
  %bf.load27 = load i8, i8* %max_speed26, align 4, !dbg !4690
  %bf.value = and i8 %conv25, 3, !dbg !4690
  %bf.shl = shl i8 %bf.value, 5, !dbg !4690
  %bf.clear28 = and i8 %bf.load27, -97, !dbg !4690
  %bf.set = or i8 %bf.clear28, %bf.shl, !dbg !4690
  store i8 %bf.set, i8* %max_speed26, align 4, !dbg !4690
  %7 = load %struct.fw_node*, %struct.fw_node** %parent.addr, align 8, !dbg !4691
  %b_path29 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %7, i32 0, i32 3, !dbg !4692
  %bf.load30 = load i8, i8* %b_path29, align 4, !dbg !4692
  %bf.lshr31 = lshr i8 %bf.load30, 2, !dbg !4692
  %bf.clear32 = and i8 %bf.lshr31, 1, !dbg !4692
  %conv33 = zext i8 %bf.clear32 to i32, !dbg !4691
  %tobool = icmp ne i32 %conv33, 0, !dbg !4691
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4693

land.rhs:                                         ; preds = %cond.end
  %8 = load i32, i32* %b_path, align 4, !dbg !4694
  %tobool34 = icmp ne i32 %8, 0, !dbg !4693
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %9 = phi i1 [ false, %cond.end ], [ %tobool34, %land.rhs ], !dbg !4695
  %land.ext = zext i1 %9 to i32, !dbg !4693
  %conv35 = trunc i32 %land.ext to i8, !dbg !4691
  %10 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4696
  %b_path36 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %10, i32 0, i32 3, !dbg !4697
  %bf.load37 = load i8, i8* %b_path36, align 4, !dbg !4698
  %bf.value38 = and i8 %conv35, 1, !dbg !4698
  %bf.shl39 = shl i8 %bf.value38, 2, !dbg !4698
  %bf.clear40 = and i8 %bf.load37, -5, !dbg !4698
  %bf.set41 = or i8 %bf.clear40, %bf.shl39, !dbg !4698
  store i8 %bf.set41, i8* %b_path36, align 4, !dbg !4698
  br label %if.end, !dbg !4699

if.else:                                          ; preds = %entry
  %11 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4700
  %phy_speed42 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %11, i32 0, i32 3, !dbg !4702
  %bf.load43 = load i8, i8* %phy_speed42, align 4, !dbg !4702
  %bf.lshr44 = lshr i8 %bf.load43, 3, !dbg !4702
  %bf.clear45 = and i8 %bf.lshr44, 3, !dbg !4702
  %12 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4703
  %max_speed46 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %12, i32 0, i32 3, !dbg !4704
  %bf.load47 = load i8, i8* %max_speed46, align 4, !dbg !4705
  %bf.value48 = and i8 %bf.clear45, 3, !dbg !4705
  %bf.shl49 = shl i8 %bf.value48, 5, !dbg !4705
  %bf.clear50 = and i8 %bf.load47, -97, !dbg !4705
  %bf.set51 = or i8 %bf.clear50, %bf.shl49, !dbg !4705
  store i8 %bf.set51, i8* %max_speed46, align 4, !dbg !4705
  %13 = load i32, i32* %b_path, align 4, !dbg !4706
  %conv52 = trunc i32 %13 to i8, !dbg !4706
  %14 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4707
  %b_path53 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 3, !dbg !4708
  %bf.load54 = load i8, i8* %b_path53, align 4, !dbg !4709
  %bf.value55 = and i8 %conv52, 1, !dbg !4709
  %bf.shl56 = shl i8 %bf.value55, 2, !dbg !4709
  %bf.clear57 = and i8 %bf.load54, -5, !dbg !4709
  %bf.set58 = or i8 %bf.clear57, %bf.shl56, !dbg !4709
  store i8 %bf.set58, i8* %b_path53, align 4, !dbg !4709
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end
  %15 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4710
  %16 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !4711
  call void @fw_node_event(%struct.fw_card* %15, %struct.fw_node* %16, i32 0) #9, !dbg !4712
  %17 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4713
  %bm_retries = getelementptr inbounds %struct.fw_card, %struct.fw_card* %17, i32 0, i32 31, !dbg !4714
  store i32 0, i32* %bm_retries, align 8, !dbg !4715
  ret void, !dbg !4716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @update_tree(%struct.fw_card* %card, %struct.fw_node* %root) #0 !dbg !4717 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %root.addr = alloca %struct.fw_node*, align 8
  %list0 = alloca %struct.list_head, align 8
  %list1 = alloca %struct.list_head, align 8
  %node0 = alloca %struct.fw_node*, align 8
  %node1 = alloca %struct.fw_node*, align 8
  %next1 = alloca %struct.fw_node*, align 8
  %i = alloca i32, align 4
  %event = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4720, metadata !DIExpression()), !dbg !4721
  store %struct.fw_node* %root, %struct.fw_node** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %root.addr, metadata !4722, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.declare(metadata %struct.list_head* %list0, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata %struct.list_head* %list1, metadata !4726, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node0, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node1, metadata !4730, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.declare(metadata %struct.fw_node** %next1, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.declare(metadata i32* %event, metadata !4736, metadata !DIExpression()), !dbg !4737
  call void @INIT_LIST_HEAD(%struct.list_head* %list0) #9, !dbg !4738
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4739
  %local_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %0, i32 0, i32 19, !dbg !4740
  %1 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4740
  %link = getelementptr inbounds %struct.fw_node, %struct.fw_node* %1, i32 0, i32 6, !dbg !4741
  call void @list_add_tail(%struct.list_head* %link, %struct.list_head* %list0) #9, !dbg !4742
  call void @INIT_LIST_HEAD(%struct.list_head* %list1) #9, !dbg !4743
  %2 = load %struct.fw_node*, %struct.fw_node** %root.addr, align 8, !dbg !4744
  %link1 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %2, i32 0, i32 6, !dbg !4745
  call void @list_add_tail(%struct.list_head* %link1, %struct.list_head* %list1) #9, !dbg !4746
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list0, i32 0, i32 0, !dbg !4747
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4747
  %call = call %struct.fw_node* @fw_node(%struct.list_head* %3) #9, !dbg !4748
  store %struct.fw_node* %call, %struct.fw_node** %node0, align 8, !dbg !4749
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list1, i32 0, i32 0, !dbg !4750
  %4 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !4750
  %call3 = call %struct.fw_node* @fw_node(%struct.list_head* %4) #9, !dbg !4751
  store %struct.fw_node* %call3, %struct.fw_node** %node1, align 8, !dbg !4752
  br label %while.cond, !dbg !4753

while.cond:                                       ; preds = %for.end, %entry
  %5 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4754
  %link4 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %5, i32 0, i32 6, !dbg !4755
  %cmp = icmp ne %struct.list_head* %link4, %list0, !dbg !4756
  br i1 %cmp, label %while.body, label %while.end, !dbg !4753

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4757, metadata !DIExpression()), !dbg !4760
  %6 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4760
  %port_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %6, i32 0, i32 2, !dbg !4760
  %7 = load i8, i8* %port_count, align 1, !dbg !4760
  %conv = zext i8 %7 to i32, !dbg !4760
  %8 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4760
  %port_count5 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %8, i32 0, i32 2, !dbg !4760
  %9 = load i8, i8* %port_count5, align 1, !dbg !4760
  %conv6 = zext i8 %9 to i32, !dbg !4760
  %cmp7 = icmp ne i32 %conv, %conv6, !dbg !4760
  %lnot = xor i1 %cmp7, true, !dbg !4760
  %lnot9 = xor i1 %lnot, true, !dbg !4760
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4760
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4760
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !4761
  %tobool = icmp ne i32 %10, 0, !dbg !4761
  %lnot10 = xor i1 %tobool, true, !dbg !4761
  %lnot12 = xor i1 %lnot10, true, !dbg !4761
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4761
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !4761
  %tobool15 = icmp ne i64 %conv14, 0, !dbg !4761
  br i1 %tobool15, label %if.then, label %if.end, !dbg !4760

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !4761

do.body:                                          ; preds = %if.then
  br label %do.body16, !dbg !4763

do.body16:                                        ; preds = %do.body
  br label %do.end, !dbg !4765

do.end:                                           ; preds = %do.body16
  br label %do.body17, !dbg !4763

do.body17:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 424, i32 2305, i64 12) #4, !dbg !4767, !srcloc !4769
  br label %do.end18, !dbg !4767

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 241) #4, !dbg !4770, !srcloc !4772
  br label %do.body19, !dbg !4763

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4773

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !4763

do.end21:                                         ; preds = %do.end20
  br label %if.end, !dbg !4763

if.end:                                           ; preds = %do.end21, %while.body
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !4760
  %tobool22 = icmp ne i32 %11, 0, !dbg !4760
  %lnot23 = xor i1 %tobool22, true, !dbg !4760
  %lnot25 = xor i1 %lnot23, true, !dbg !4760
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !4760
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !4760
  store i64 %conv27, i64* %tmp, align 8, !dbg !4761
  %12 = load i64, i64* %tmp, align 8, !dbg !4760
  %13 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4775
  %link_on = getelementptr inbounds %struct.fw_node, %struct.fw_node* %13, i32 0, i32 3, !dbg !4777
  %bf.load = load i8, i8* %link_on, align 4, !dbg !4777
  %bf.clear = and i8 %bf.load, 1, !dbg !4777
  %conv28 = zext i8 %bf.clear to i32, !dbg !4775
  %tobool29 = icmp ne i32 %conv28, 0, !dbg !4775
  br i1 %tobool29, label %land.lhs.true, label %if.else, !dbg !4778

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4779
  %link_on30 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 3, !dbg !4780
  %bf.load31 = load i8, i8* %link_on30, align 4, !dbg !4780
  %bf.clear32 = and i8 %bf.load31, 1, !dbg !4780
  %tobool33 = icmp ne i8 %bf.clear32, 0, !dbg !4779
  br i1 %tobool33, label %if.else, label %if.then34, !dbg !4781

if.then34:                                        ; preds = %land.lhs.true
  store i32 4, i32* %event, align 4, !dbg !4782
  br label %if.end61, !dbg !4783

if.else:                                          ; preds = %land.lhs.true, %if.end
  %15 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4784
  %link_on35 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %15, i32 0, i32 3, !dbg !4786
  %bf.load36 = load i8, i8* %link_on35, align 4, !dbg !4786
  %bf.clear37 = and i8 %bf.load36, 1, !dbg !4786
  %tobool38 = icmp ne i8 %bf.clear37, 0, !dbg !4784
  br i1 %tobool38, label %if.else46, label %land.lhs.true39, !dbg !4787

land.lhs.true39:                                  ; preds = %if.else
  %16 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4788
  %link_on40 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %16, i32 0, i32 3, !dbg !4789
  %bf.load41 = load i8, i8* %link_on40, align 4, !dbg !4789
  %bf.clear42 = and i8 %bf.load41, 1, !dbg !4789
  %conv43 = zext i8 %bf.clear42 to i32, !dbg !4788
  %tobool44 = icmp ne i32 %conv43, 0, !dbg !4788
  br i1 %tobool44, label %if.then45, label %if.else46, !dbg !4790

if.then45:                                        ; preds = %land.lhs.true39
  store i32 3, i32* %event, align 4, !dbg !4791
  br label %if.end60, !dbg !4792

if.else46:                                        ; preds = %land.lhs.true39, %if.else
  %17 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4793
  %initiated_reset = getelementptr inbounds %struct.fw_node, %struct.fw_node* %17, i32 0, i32 3, !dbg !4795
  %bf.load47 = load i8, i8* %initiated_reset, align 4, !dbg !4795
  %bf.lshr = lshr i8 %bf.load47, 1, !dbg !4795
  %bf.clear48 = and i8 %bf.lshr, 1, !dbg !4795
  %conv49 = zext i8 %bf.clear48 to i32, !dbg !4793
  %tobool50 = icmp ne i32 %conv49, 0, !dbg !4793
  br i1 %tobool50, label %land.lhs.true51, label %if.else58, !dbg !4796

land.lhs.true51:                                  ; preds = %if.else46
  %18 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4797
  %link_on52 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %18, i32 0, i32 3, !dbg !4798
  %bf.load53 = load i8, i8* %link_on52, align 4, !dbg !4798
  %bf.clear54 = and i8 %bf.load53, 1, !dbg !4798
  %conv55 = zext i8 %bf.clear54 to i32, !dbg !4797
  %tobool56 = icmp ne i32 %conv55, 0, !dbg !4797
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !4799

if.then57:                                        ; preds = %land.lhs.true51
  store i32 5, i32* %event, align 4, !dbg !4800
  br label %if.end59, !dbg !4801

if.else58:                                        ; preds = %land.lhs.true51, %if.else46
  store i32 1, i32* %event, align 4, !dbg !4802
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then45
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then34
  %19 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4803
  %node_id = getelementptr inbounds %struct.fw_node, %struct.fw_node* %19, i32 0, i32 0, !dbg !4804
  %20 = load i16, i16* %node_id, align 8, !dbg !4804
  %21 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4805
  %node_id62 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %21, i32 0, i32 0, !dbg !4806
  store i16 %20, i16* %node_id62, align 8, !dbg !4807
  %22 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4808
  %color = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 22, !dbg !4809
  %23 = load i8, i8* %color, align 8, !dbg !4809
  %24 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4810
  %color63 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %24, i32 0, i32 1, !dbg !4811
  store i8 %23, i8* %color63, align 2, !dbg !4812
  %25 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4813
  %link_on64 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %25, i32 0, i32 3, !dbg !4814
  %bf.load65 = load i8, i8* %link_on64, align 4, !dbg !4814
  %bf.clear66 = and i8 %bf.load65, 1, !dbg !4814
  %26 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4815
  %link_on67 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %26, i32 0, i32 3, !dbg !4816
  %bf.load68 = load i8, i8* %link_on67, align 4, !dbg !4817
  %bf.value = and i8 %bf.clear66, 1, !dbg !4817
  %bf.clear69 = and i8 %bf.load68, -2, !dbg !4817
  %bf.set = or i8 %bf.clear69, %bf.value, !dbg !4817
  store i8 %bf.set, i8* %link_on67, align 4, !dbg !4817
  %27 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4818
  %initiated_reset70 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %27, i32 0, i32 3, !dbg !4819
  %bf.load71 = load i8, i8* %initiated_reset70, align 4, !dbg !4819
  %bf.lshr72 = lshr i8 %bf.load71, 1, !dbg !4819
  %bf.clear73 = and i8 %bf.lshr72, 1, !dbg !4819
  %28 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4820
  %initiated_reset74 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %28, i32 0, i32 3, !dbg !4821
  %bf.load75 = load i8, i8* %initiated_reset74, align 4, !dbg !4822
  %bf.value76 = and i8 %bf.clear73, 1, !dbg !4822
  %bf.shl = shl i8 %bf.value76, 1, !dbg !4822
  %bf.clear77 = and i8 %bf.load75, -3, !dbg !4822
  %bf.set78 = or i8 %bf.clear77, %bf.shl, !dbg !4822
  store i8 %bf.set78, i8* %initiated_reset74, align 4, !dbg !4822
  %29 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4823
  %max_hops = getelementptr inbounds %struct.fw_node, %struct.fw_node* %29, i32 0, i32 4, !dbg !4824
  %bf.load79 = load i8, i8* %max_hops, align 1, !dbg !4824
  %bf.lshr80 = lshr i8 %bf.load79, 4, !dbg !4824
  %30 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4825
  %max_hops81 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %30, i32 0, i32 4, !dbg !4826
  %bf.load82 = load i8, i8* %max_hops81, align 1, !dbg !4827
  %bf.value83 = and i8 %bf.lshr80, 15, !dbg !4827
  %bf.shl84 = shl i8 %bf.value83, 4, !dbg !4827
  %bf.clear85 = and i8 %bf.load82, 15, !dbg !4827
  %bf.set86 = or i8 %bf.clear85, %bf.shl84, !dbg !4827
  store i8 %bf.set86, i8* %max_hops81, align 1, !dbg !4827
  %31 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4828
  %color87 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %31, i32 0, i32 22, !dbg !4829
  %32 = load i8, i8* %color87, align 8, !dbg !4829
  %33 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4830
  %color88 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %33, i32 0, i32 1, !dbg !4831
  store i8 %32, i8* %color88, align 2, !dbg !4832
  %34 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4833
  %35 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4834
  %36 = load i32, i32* %event, align 4, !dbg !4835
  call void @fw_node_event(%struct.fw_card* %34, %struct.fw_node* %35, i32 %36) #9, !dbg !4836
  %37 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4837
  %root_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %37, i32 0, i32 20, !dbg !4839
  %38 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4839
  %39 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4840
  %cmp89 = icmp eq %struct.fw_node* %38, %39, !dbg !4841
  br i1 %cmp89, label %if.then91, label %if.end93, !dbg !4842

if.then91:                                        ; preds = %if.end61
  %40 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4843
  %41 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4844
  %root_node92 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %41, i32 0, i32 20, !dbg !4845
  store %struct.fw_node* %40, %struct.fw_node** %root_node92, align 8, !dbg !4846
  br label %if.end93, !dbg !4844

if.end93:                                         ; preds = %if.then91, %if.end61
  %42 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4847
  %irm_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %42, i32 0, i32 21, !dbg !4849
  %43 = load %struct.fw_node*, %struct.fw_node** %irm_node, align 8, !dbg !4849
  %44 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4850
  %cmp94 = icmp eq %struct.fw_node* %43, %44, !dbg !4851
  br i1 %cmp94, label %if.then96, label %if.end98, !dbg !4852

if.then96:                                        ; preds = %if.end93
  %45 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4853
  %46 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4854
  %irm_node97 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %46, i32 0, i32 21, !dbg !4855
  store %struct.fw_node* %45, %struct.fw_node** %irm_node97, align 8, !dbg !4856
  br label %if.end98, !dbg !4854

if.end98:                                         ; preds = %if.then96, %if.end93
  store i32 0, i32* %i, align 4, !dbg !4857
  br label %for.cond, !dbg !4859

for.cond:                                         ; preds = %for.inc, %if.end98
  %47 = load i32, i32* %i, align 4, !dbg !4860
  %48 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4862
  %port_count99 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %48, i32 0, i32 2, !dbg !4863
  %49 = load i8, i8* %port_count99, align 1, !dbg !4863
  %conv100 = zext i8 %49 to i32, !dbg !4862
  %cmp101 = icmp slt i32 %47, %conv100, !dbg !4864
  br i1 %cmp101, label %for.body, label %for.end, !dbg !4865

for.body:                                         ; preds = %for.cond
  %50 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4866
  %ports = getelementptr inbounds %struct.fw_node, %struct.fw_node* %50, i32 0, i32 8, !dbg !4869
  %51 = load i32, i32* %i, align 4, !dbg !4870
  %idxprom = sext i32 %51 to i64, !dbg !4866
  %arrayidx = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports, i64 0, i64 %idxprom, !dbg !4866
  %52 = load %struct.fw_node*, %struct.fw_node** %arrayidx, align 8, !dbg !4866
  %tobool103 = icmp ne %struct.fw_node* %52, null, !dbg !4866
  br i1 %tobool103, label %land.lhs.true104, label %if.else129, !dbg !4871

land.lhs.true104:                                 ; preds = %for.body
  %53 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4872
  %ports105 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %53, i32 0, i32 8, !dbg !4873
  %54 = load i32, i32* %i, align 4, !dbg !4874
  %idxprom106 = sext i32 %54 to i64, !dbg !4872
  %arrayidx107 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports105, i64 0, i64 %idxprom106, !dbg !4872
  %55 = load %struct.fw_node*, %struct.fw_node** %arrayidx107, align 8, !dbg !4872
  %tobool108 = icmp ne %struct.fw_node* %55, null, !dbg !4872
  br i1 %tobool108, label %if.then109, label %if.else129, !dbg !4875

if.then109:                                       ; preds = %land.lhs.true104
  %56 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4876
  %ports110 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %56, i32 0, i32 8, !dbg !4879
  %57 = load i32, i32* %i, align 4, !dbg !4880
  %idxprom111 = sext i32 %57 to i64, !dbg !4876
  %arrayidx112 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports110, i64 0, i64 %idxprom111, !dbg !4876
  %58 = load %struct.fw_node*, %struct.fw_node** %arrayidx112, align 8, !dbg !4876
  %color113 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %58, i32 0, i32 1, !dbg !4881
  %59 = load i8, i8* %color113, align 2, !dbg !4881
  %conv114 = zext i8 %59 to i32, !dbg !4876
  %60 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4882
  %color115 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %60, i32 0, i32 22, !dbg !4883
  %61 = load i8, i8* %color115, align 8, !dbg !4883
  %conv116 = zext i8 %61 to i32, !dbg !4882
  %cmp117 = icmp eq i32 %conv114, %conv116, !dbg !4884
  br i1 %cmp117, label %if.then119, label %if.end120, !dbg !4885

if.then119:                                       ; preds = %if.then109
  br label %for.inc, !dbg !4886

if.end120:                                        ; preds = %if.then109
  %62 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4887
  %ports121 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %62, i32 0, i32 8, !dbg !4888
  %63 = load i32, i32* %i, align 4, !dbg !4889
  %idxprom122 = sext i32 %63 to i64, !dbg !4887
  %arrayidx123 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports121, i64 0, i64 %idxprom122, !dbg !4887
  %64 = load %struct.fw_node*, %struct.fw_node** %arrayidx123, align 8, !dbg !4887
  %link124 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %64, i32 0, i32 6, !dbg !4890
  call void @list_add_tail(%struct.list_head* %link124, %struct.list_head* %list0) #9, !dbg !4891
  %65 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4892
  %ports125 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %65, i32 0, i32 8, !dbg !4893
  %66 = load i32, i32* %i, align 4, !dbg !4894
  %idxprom126 = sext i32 %66 to i64, !dbg !4892
  %arrayidx127 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports125, i64 0, i64 %idxprom126, !dbg !4892
  %67 = load %struct.fw_node*, %struct.fw_node** %arrayidx127, align 8, !dbg !4892
  %link128 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %67, i32 0, i32 6, !dbg !4895
  call void @list_add_tail(%struct.list_head* %link128, %struct.list_head* %list1) #9, !dbg !4896
  br label %if.end152, !dbg !4897

if.else129:                                       ; preds = %land.lhs.true104, %for.body
  %68 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4898
  %ports130 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %68, i32 0, i32 8, !dbg !4900
  %69 = load i32, i32* %i, align 4, !dbg !4901
  %idxprom131 = sext i32 %69 to i64, !dbg !4898
  %arrayidx132 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports130, i64 0, i64 %idxprom131, !dbg !4898
  %70 = load %struct.fw_node*, %struct.fw_node** %arrayidx132, align 8, !dbg !4898
  %tobool133 = icmp ne %struct.fw_node* %70, null, !dbg !4898
  br i1 %tobool133, label %if.then134, label %if.else141, !dbg !4902

if.then134:                                       ; preds = %if.else129
  %71 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4903
  %72 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4905
  %ports135 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %72, i32 0, i32 8, !dbg !4906
  %73 = load i32, i32* %i, align 4, !dbg !4907
  %idxprom136 = sext i32 %73 to i64, !dbg !4905
  %arrayidx137 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports135, i64 0, i64 %idxprom136, !dbg !4905
  %74 = load %struct.fw_node*, %struct.fw_node** %arrayidx137, align 8, !dbg !4905
  call void @for_each_fw_node(%struct.fw_card* %71, %struct.fw_node* %74, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* @report_lost_node) #9, !dbg !4908
  %75 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4909
  %ports138 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %75, i32 0, i32 8, !dbg !4910
  %76 = load i32, i32* %i, align 4, !dbg !4911
  %idxprom139 = sext i32 %76 to i64, !dbg !4909
  %arrayidx140 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports138, i64 0, i64 %idxprom139, !dbg !4909
  store %struct.fw_node* null, %struct.fw_node** %arrayidx140, align 8, !dbg !4912
  br label %if.end151, !dbg !4913

if.else141:                                       ; preds = %if.else129
  %77 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4914
  %ports142 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %77, i32 0, i32 8, !dbg !4916
  %78 = load i32, i32* %i, align 4, !dbg !4917
  %idxprom143 = sext i32 %78 to i64, !dbg !4914
  %arrayidx144 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports142, i64 0, i64 %idxprom143, !dbg !4914
  %79 = load %struct.fw_node*, %struct.fw_node** %arrayidx144, align 8, !dbg !4914
  %tobool145 = icmp ne %struct.fw_node* %79, null, !dbg !4914
  br i1 %tobool145, label %if.then146, label %if.end150, !dbg !4918

if.then146:                                       ; preds = %if.else141
  %80 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4919
  %81 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4921
  %82 = load i32, i32* %i, align 4, !dbg !4922
  call void @move_tree(%struct.fw_node* %80, %struct.fw_node* %81, i32 %82) #9, !dbg !4923
  %83 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4924
  %84 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4925
  %ports147 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %84, i32 0, i32 8, !dbg !4926
  %85 = load i32, i32* %i, align 4, !dbg !4927
  %idxprom148 = sext i32 %85 to i64, !dbg !4925
  %arrayidx149 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports147, i64 0, i64 %idxprom148, !dbg !4925
  %86 = load %struct.fw_node*, %struct.fw_node** %arrayidx149, align 8, !dbg !4925
  call void @for_each_fw_node(%struct.fw_card* %83, %struct.fw_node* %86, void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* @report_found_node) #9, !dbg !4928
  br label %if.end150, !dbg !4929

if.end150:                                        ; preds = %if.then146, %if.else141
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then134
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end120
  br label %for.inc, !dbg !4930

for.inc:                                          ; preds = %if.end152, %if.then119
  %87 = load i32, i32* %i, align 4, !dbg !4931
  %inc = add i32 %87, 1, !dbg !4931
  store i32 %inc, i32* %i, align 4, !dbg !4931
  br label %for.cond, !dbg !4932, !llvm.loop !4933

for.end:                                          ; preds = %for.cond
  %88 = load %struct.fw_node*, %struct.fw_node** %node0, align 8, !dbg !4935
  %link153 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %88, i32 0, i32 6, !dbg !4936
  %next154 = getelementptr inbounds %struct.list_head, %struct.list_head* %link153, i32 0, i32 0, !dbg !4937
  %89 = load %struct.list_head*, %struct.list_head** %next154, align 8, !dbg !4937
  %call155 = call %struct.fw_node* @fw_node(%struct.list_head* %89) #9, !dbg !4938
  store %struct.fw_node* %call155, %struct.fw_node** %node0, align 8, !dbg !4939
  %90 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4940
  %link156 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %90, i32 0, i32 6, !dbg !4941
  %next157 = getelementptr inbounds %struct.list_head, %struct.list_head* %link156, i32 0, i32 0, !dbg !4942
  %91 = load %struct.list_head*, %struct.list_head** %next157, align 8, !dbg !4942
  %call158 = call %struct.fw_node* @fw_node(%struct.list_head* %91) #9, !dbg !4943
  store %struct.fw_node* %call158, %struct.fw_node** %next1, align 8, !dbg !4944
  %92 = load %struct.fw_node*, %struct.fw_node** %node1, align 8, !dbg !4945
  call void @fw_node_put(%struct.fw_node* %92) #9, !dbg !4946
  %93 = load %struct.fw_node*, %struct.fw_node** %next1, align 8, !dbg !4947
  store %struct.fw_node* %93, %struct.fw_node** %node1, align 8, !dbg !4948
  br label %while.cond, !dbg !4753, !llvm.loop !4949

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4952 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4953, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4956, metadata !DIExpression()), !dbg !4955
  %0 = load i64, i64* %__edi, align 8, !dbg !4955
  store i64 %0, i64* %__edi, align 8, !dbg !4955
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4957, metadata !DIExpression()), !dbg !4955
  %1 = load i64, i64* %__esi, align 8, !dbg !4955
  store i64 %1, i64* %__esi, align 8, !dbg !4955
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4958, metadata !DIExpression()), !dbg !4955
  %2 = load i64, i64* %__edx, align 8, !dbg !4955
  store i64 %2, i64* %__edx, align 8, !dbg !4955
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4959, metadata !DIExpression()), !dbg !4955
  %3 = load i64, i64* %__ecx, align 8, !dbg !4955
  store i64 %3, i64* %__ecx, align 8, !dbg !4955
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4960, metadata !DIExpression()), !dbg !4955
  %4 = load i64, i64* %__eax, align 8, !dbg !4955
  store i64 %4, i64* %__eax, align 8, !dbg !4955
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4955
  %6 = call i64 @llvm.read_register.i64(metadata !188), !dbg !4961
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !4961, !srcloc !4964
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4961
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4961
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4961
  call void @llvm.write_register.i64(metadata !188, i64 %asmresult1), !dbg !4961
  %8 = load i64, i64* %__eax, align 8, !dbg !4961
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4965, metadata !DIExpression()), !dbg !4967
  store i64 -1, i64* %__mask, align 8, !dbg !4967
  %9 = load i64, i64* %__mask, align 8, !dbg !4967
  store i64 %9, i64* %tmp, align 8, !dbg !4967
  %10 = load i64, i64* %tmp, align 8, !dbg !4967
  %and = and i64 %8, %10, !dbg !4961
  store i64 %and, i64* %__ret, align 8, !dbg !4961
  %11 = load i64, i64* %__ret, align 8, !dbg !4955
  store i64 %11, i64* %tmp2, align 8, !dbg !4968
  %12 = load i64, i64* %tmp2, align 8, !dbg !4955
  ret i64 %12, !dbg !4969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4970 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4971, metadata !DIExpression()), !dbg !4973
  %0 = load i64, i64* %__edi, align 8, !dbg !4973
  store i64 %0, i64* %__edi, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4974, metadata !DIExpression()), !dbg !4973
  %1 = load i64, i64* %__esi, align 8, !dbg !4973
  store i64 %1, i64* %__esi, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4975, metadata !DIExpression()), !dbg !4973
  %2 = load i64, i64* %__edx, align 8, !dbg !4973
  store i64 %2, i64* %__edx, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4976, metadata !DIExpression()), !dbg !4973
  %3 = load i64, i64* %__ecx, align 8, !dbg !4973
  store i64 %3, i64* %__ecx, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4977, metadata !DIExpression()), !dbg !4973
  %4 = load i64, i64* %__eax, align 8, !dbg !4973
  store i64 %4, i64* %__eax, align 8, !dbg !4973
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4973
  %6 = call i64 @llvm.read_register.i64(metadata !188), !dbg !4973
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !4973, !srcloc !4978
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4973
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4973
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4973
  call void @llvm.write_register.i64(metadata !188, i64 %asmresult1), !dbg !4973
  ret void, !dbg !4979
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4980 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  br label %do.body, !dbg !4986

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4987

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4989

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4987

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4991
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4991
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4991
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4991
  br label %do.end3, !dbg !4991

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4987

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4993
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4994
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4995
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4996
  ret void, !dbg !4997
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_node* @fw_node_get(%struct.fw_node* %node) #0 !dbg !4998 {
entry:
  %node.addr = alloca %struct.fw_node*, align 8
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  %0 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5003
  %ref_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %0, i32 0, i32 5, !dbg !5004
  call void @refcount_inc(%struct.refcount_struct* %ref_count) #9, !dbg !5005
  %1 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5006
  ret %struct.fw_node* %1, !dbg !5007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5008 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5015
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5016
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5017
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5017
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5018
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !5019
  ret void, !dbg !5020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fw_node_put(%struct.fw_node* %node) #0 !dbg !5021 {
entry:
  %node.addr = alloca %struct.fw_node*, align 8
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  %0 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5026
  %ref_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %0, i32 0, i32 5, !dbg !5028
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %ref_count) #9, !dbg !5029
  br i1 %call, label %if.then, label %if.end, !dbg !5030

if.then:                                          ; preds = %entry
  %1 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5031
  %2 = bitcast %struct.fw_node* %1 to i8*, !dbg !5031
  call void @kfree(i8* %2) #9, !dbg !5032
  br label %if.end, !dbg !5032

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5034 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5040
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5041
  ret void, !dbg !5042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5043 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5050
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5051
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5052
  ret void, !dbg !5053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5054 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5057, metadata !DIExpression()), !dbg !5063
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5068, metadata !DIExpression()), !dbg !5069
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5070, metadata !DIExpression()), !dbg !5072
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5073, metadata !DIExpression()), !dbg !5081
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5083, metadata !DIExpression()), !dbg !5084
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5085, metadata !DIExpression()), !dbg !5086
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5087, metadata !DIExpression()), !dbg !5088
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5095, metadata !DIExpression()), !dbg !5096
  %0 = load i32, i32* %i.addr, align 4, !dbg !5097
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5098
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5099
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5100
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5100
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5101
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5102
  %conv.i.i = trunc i64 %5 to i32, !dbg !5102
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5103
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5104
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5104
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !5104
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5105
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5106
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5072
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5072
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5072
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5072
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5072
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #4, !dbg !5072, !srcloc !5107
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5072
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5072
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5072
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5072
  store i32 %15, i32* %old, align 4, !dbg !5096
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5108
  %tobool = icmp ne i32* %16, null, !dbg !5108
  br i1 %tobool, label %if.then, label %if.end, !dbg !5110

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5111
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5112
  store i32 %17, i32* %18, align 4, !dbg !5113
  br label %if.end, !dbg !5114

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5115
  %tobool1 = icmp ne i32 %19, 0, !dbg !5115
  %lnot = xor i1 %tobool1, true, !dbg !5115
  %lnot2 = xor i1 %lnot, true, !dbg !5115
  %lnot3 = xor i1 %lnot2, true, !dbg !5115
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5115
  %conv = sext i32 %lnot.ext to i64, !dbg !5115
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5115
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5117

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5118
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !5119
  br label %if.end17, !dbg !5119

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5120
  %cmp = icmp slt i32 %21, 0, !dbg !5120
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5120

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5120
  %23 = load i32, i32* %i.addr, align 4, !dbg !5120
  %add = add i32 %22, %23, !dbg !5120
  %cmp7 = icmp slt i32 %add, 0, !dbg !5120
  br label %lor.end, !dbg !5120

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5120
  %lnot11 = xor i1 %lnot9, true, !dbg !5120
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5120
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5120
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5120
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5122

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5123
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !5124
  br label %if.end16, !dbg !5124

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5125
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5126 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5132, metadata !DIExpression()), !dbg !5133
  ret i1 true, !dbg !5134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5135 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  ret void, !dbg !5145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5146 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5153, metadata !DIExpression()), !dbg !5154
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5155
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5157
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5158
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !5159
  br i1 %call, label %if.end, label %if.then, !dbg !5160

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5161

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5162
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5163
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5164
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5165
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5166
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5167
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5168
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5169
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5170
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5171
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5172
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5173
  br label %do.body, !dbg !5174

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5175

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5177

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5175

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5179
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5179
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5179
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5179
  br label %do.end7, !dbg !5179

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5175

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5182 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  ret i1 true, !dbg !5191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5192 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5197
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5198
  ret i1 %call, !dbg !5199
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5200 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5203, metadata !DIExpression()), !dbg !5204
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5207
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5208
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5209
  ret i1 %call, !dbg !5210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5211 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5214, metadata !DIExpression()), !dbg !5216
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5220, metadata !DIExpression()), !dbg !5221
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5222, metadata !DIExpression()), !dbg !5224
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5073, metadata !DIExpression()), !dbg !5225
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5083, metadata !DIExpression()), !dbg !5227
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5228, metadata !DIExpression()), !dbg !5229
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5230, metadata !DIExpression()), !dbg !5231
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5238, metadata !DIExpression()), !dbg !5239
  %0 = load i32, i32* %i.addr, align 4, !dbg !5240
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5241
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5242
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5243
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5243
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5244
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5245
  %conv.i.i = trunc i64 %5 to i32, !dbg !5245
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5246
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5247
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5247
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !5247
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5248
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5249
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5224
  %sub.i.i = sub i32 0, %10, !dbg !5224
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5224
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5224
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5224
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5224
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #4, !dbg !5224, !srcloc !5250
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5224
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5224
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5224
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5224
  store i32 %15, i32* %old, align 4, !dbg !5239
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5251
  %tobool = icmp ne i32* %16, null, !dbg !5251
  br i1 %tobool, label %if.then, label %if.end, !dbg !5253

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5254
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5255
  store i32 %17, i32* %18, align 4, !dbg !5256
  br label %if.end, !dbg !5257

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5258
  %20 = load i32, i32* %i.addr, align 4, !dbg !5260
  %cmp = icmp eq i32 %19, %20, !dbg !5261
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5262

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5263, !srcloc !5265
  store i1 true, i1* %retval, align 1, !dbg !5266
  br label %return, !dbg !5266

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5267
  %cmp3 = icmp slt i32 %21, 0, !dbg !5267
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5267

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5267
  %23 = load i32, i32* %i.addr, align 4, !dbg !5267
  %sub = sub i32 %22, %23, !dbg !5267
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5267
  br label %lor.end, !dbg !5267

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5267
  %lnot5 = xor i1 %lnot, true, !dbg !5267
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5267
  %conv = sext i32 %lnot.ext to i64, !dbg !5267
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5267
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5269

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5270
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5271
  br label %if.end8, !dbg !5271

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5272
  br label %return, !dbg !5272

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5273
  ret i1 %26, !dbg !5273
}

; Function Attrs: noredzone
declare dso_local void @fw_node_event(%struct.fw_card*, %struct.fw_node*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5274 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5279, metadata !DIExpression()), !dbg !5281
  %0 = load i64, i64* %__edi, align 8, !dbg !5281
  store i64 %0, i64* %__edi, align 8, !dbg !5281
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5282, metadata !DIExpression()), !dbg !5281
  %1 = load i64, i64* %__esi, align 8, !dbg !5281
  store i64 %1, i64* %__esi, align 8, !dbg !5281
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5283, metadata !DIExpression()), !dbg !5281
  %2 = load i64, i64* %__edx, align 8, !dbg !5281
  store i64 %2, i64* %__edx, align 8, !dbg !5281
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5284, metadata !DIExpression()), !dbg !5281
  %3 = load i64, i64* %__ecx, align 8, !dbg !5281
  store i64 %3, i64* %__ecx, align 8, !dbg !5281
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5285, metadata !DIExpression()), !dbg !5281
  %4 = load i64, i64* %__eax, align 8, !dbg !5281
  store i64 %4, i64* %__eax, align 8, !dbg !5281
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5281
  %6 = call i64 @llvm.read_register.i64(metadata !188), !dbg !5281
  %7 = load i64, i64* %f.addr, align 8, !dbg !5281
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !5281, !srcloc !5286
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5281
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5281
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5281
  call void @llvm.write_register.i64(metadata !188, i64 %asmresult1), !dbg !5281
  ret void, !dbg !5287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32* @count_ports(i32* %sid, i32* %total_port_count, i32* %child_port_count) #0 !dbg !5288 {
entry:
  %retval = alloca i32*, align 8
  %sid.addr = alloca i32*, align 8
  %total_port_count.addr = alloca i32*, align 8
  %child_port_count.addr = alloca i32*, align 8
  %q = alloca i32, align 4
  %port_type = alloca i32, align 4
  %shift = alloca i32, align 4
  %seq = alloca i32, align 4
  store i32* %sid, i32** %sid.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sid.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  store i32* %total_port_count, i32** %total_port_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %total_port_count.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i32* %child_port_count, i32** %child_port_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %child_port_count.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata i32* %q, metadata !5297, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.declare(metadata i32* %port_type, metadata !5299, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5301, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.declare(metadata i32* %seq, metadata !5303, metadata !DIExpression()), !dbg !5304
  %0 = load i32*, i32** %total_port_count.addr, align 8, !dbg !5305
  store i32 0, i32* %0, align 4, !dbg !5306
  %1 = load i32*, i32** %child_port_count.addr, align 8, !dbg !5307
  store i32 0, i32* %1, align 4, !dbg !5308
  store i32 6, i32* %shift, align 4, !dbg !5309
  %2 = load i32*, i32** %sid.addr, align 8, !dbg !5310
  %3 = load i32, i32* %2, align 4, !dbg !5311
  store i32 %3, i32* %q, align 4, !dbg !5312
  store i32 0, i32* %seq, align 4, !dbg !5313
  br label %while.body, !dbg !5314

while.body:                                       ; preds = %entry, %if.end16
  %4 = load i32, i32* %q, align 4, !dbg !5315
  %5 = load i32, i32* %shift, align 4, !dbg !5317
  %shr = lshr i32 %4, %5, !dbg !5318
  %and = and i32 %shr, 3, !dbg !5319
  store i32 %and, i32* %port_type, align 4, !dbg !5320
  %6 = load i32, i32* %port_type, align 4, !dbg !5321
  switch i32 %6, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
  ], !dbg !5322

sw.bb:                                            ; preds = %while.body
  %7 = load i32*, i32** %child_port_count.addr, align 8, !dbg !5323
  %8 = load i32, i32* %7, align 4, !dbg !5325
  %inc = add i32 %8, 1, !dbg !5325
  store i32 %inc, i32* %7, align 4, !dbg !5325
  br label %sw.bb1, !dbg !5326

sw.bb1:                                           ; preds = %while.body, %while.body, %sw.bb
  %9 = load i32*, i32** %total_port_count.addr, align 8, !dbg !5327
  %10 = load i32, i32* %9, align 4, !dbg !5328
  %inc2 = add i32 %10, 1, !dbg !5328
  store i32 %inc2, i32* %9, align 4, !dbg !5328
  br label %sw.bb3, !dbg !5329

sw.bb3:                                           ; preds = %while.body, %sw.bb1
  br label %sw.epilog, !dbg !5330

sw.epilog:                                        ; preds = %while.body, %sw.bb3
  %11 = load i32, i32* %shift, align 4, !dbg !5331
  %sub = sub i32 %11, 2, !dbg !5331
  store i32 %sub, i32* %shift, align 4, !dbg !5331
  %12 = load i32, i32* %shift, align 4, !dbg !5332
  %cmp = icmp eq i32 %12, 0, !dbg !5334
  br i1 %cmp, label %if.then, label %if.end16, !dbg !5335

if.then:                                          ; preds = %sw.epilog
  %13 = load i32, i32* %q, align 4, !dbg !5336
  %shr4 = lshr i32 %13, 0, !dbg !5336
  %and5 = and i32 %shr4, 1, !dbg !5336
  %tobool = icmp ne i32 %and5, 0, !dbg !5336
  br i1 %tobool, label %if.end, label %if.then6, !dbg !5339

if.then6:                                         ; preds = %if.then
  %14 = load i32*, i32** %sid.addr, align 8, !dbg !5340
  %add.ptr = getelementptr i32, i32* %14, i64 1, !dbg !5341
  store i32* %add.ptr, i32** %retval, align 8, !dbg !5342
  br label %return, !dbg !5342

if.end:                                           ; preds = %if.then
  store i32 16, i32* %shift, align 4, !dbg !5343
  %15 = load i32*, i32** %sid.addr, align 8, !dbg !5344
  %incdec.ptr = getelementptr i32, i32* %15, i32 1, !dbg !5344
  store i32* %incdec.ptr, i32** %sid.addr, align 8, !dbg !5344
  %16 = load i32*, i32** %sid.addr, align 8, !dbg !5345
  %17 = load i32, i32* %16, align 4, !dbg !5346
  store i32 %17, i32* %q, align 4, !dbg !5347
  %18 = load i32, i32* %q, align 4, !dbg !5348
  %shr7 = lshr i32 %18, 23, !dbg !5348
  %and8 = and i32 %shr7, 1, !dbg !5348
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5348
  br i1 %tobool9, label %lor.lhs.false, label %if.then13, !dbg !5350

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i32, i32* %seq, align 4, !dbg !5351
  %20 = load i32, i32* %q, align 4, !dbg !5352
  %shr10 = lshr i32 %20, 20, !dbg !5352
  %and11 = and i32 %shr10, 7, !dbg !5352
  %cmp12 = icmp ne i32 %19, %and11, !dbg !5353
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5354

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  store i32* null, i32** %retval, align 8, !dbg !5355
  br label %return, !dbg !5355

if.end14:                                         ; preds = %lor.lhs.false
  %21 = load i32, i32* %seq, align 4, !dbg !5356
  %inc15 = add i32 %21, 1, !dbg !5356
  store i32 %inc15, i32* %seq, align 4, !dbg !5356
  br label %if.end16, !dbg !5357

if.end16:                                         ; preds = %if.end14, %sw.epilog
  br label %while.body, !dbg !5314, !llvm.loop !5358

return:                                           ; preds = %if.then13, %if.then6
  %22 = load i32*, i32** %retval, align 8, !dbg !5360
  ret i32* %22, !dbg !5360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_node* @fw_node(%struct.list_head* %l) #0 !dbg !5361 {
entry:
  %l.addr = alloca %struct.list_head*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_node*, align 8
  store %struct.list_head* %l, %struct.list_head** %l.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %l.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5366, metadata !DIExpression()), !dbg !5368
  %0 = load %struct.list_head*, %struct.list_head** %l.addr, align 8, !dbg !5368
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5368
  store i8* %1, i8** %__mptr, align 8, !dbg !5368
  br label %do.body, !dbg !5368

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5369

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5368
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5368
  %3 = bitcast i8* %add.ptr to %struct.fw_node*, !dbg !5368
  store %struct.fw_node* %3, %struct.fw_node** %tmp, align 8, !dbg !5369
  %4 = load %struct.fw_node*, %struct.fw_node** %tmp, align 8, !dbg !5368
  ret %struct.fw_node* %4, !dbg !5371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_node* @fw_node_create(i32 %sid, i32 %port_count, i32 %color) #0 !dbg !5372 {
entry:
  %retval = alloca %struct.fw_node*, align 8
  %sid.addr = alloca i32, align 4
  %port_count.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %node = alloca %struct.fw_node*, align 8
  store i32 %sid, i32* %sid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sid.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  store i32 %port_count, i32* %port_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port_count.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load i32, i32* %port_count.addr, align 4, !dbg !5383
  %conv = sext i32 %0 to i64, !dbg !5383
  %call = call i64 @__ab_c_size(i64 %conv, i64 8, i64 40) #9, !dbg !5383
  %call1 = call i8* @kzalloc(i64 %call, i32 2592) #9, !dbg !5384
  %1 = bitcast i8* %call1 to %struct.fw_node*, !dbg !5384
  store %struct.fw_node* %1, %struct.fw_node** %node, align 8, !dbg !5385
  %2 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5386
  %cmp = icmp eq %struct.fw_node* %2, null, !dbg !5388
  br i1 %cmp, label %if.then, label %if.end, !dbg !5389

if.then:                                          ; preds = %entry
  store %struct.fw_node* null, %struct.fw_node** %retval, align 8, !dbg !5390
  br label %return, !dbg !5390

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %color.addr, align 4, !dbg !5391
  %conv3 = trunc i32 %3 to i8, !dbg !5391
  %4 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5392
  %color4 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %4, i32 0, i32 1, !dbg !5393
  store i8 %conv3, i8* %color4, align 2, !dbg !5394
  %5 = load i32, i32* %sid.addr, align 4, !dbg !5395
  %shr = lshr i32 %5, 24, !dbg !5395
  %and = and i32 %shr, 63, !dbg !5395
  %or = or i32 65472, %and, !dbg !5396
  %conv5 = trunc i32 %or to i16, !dbg !5397
  %6 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5398
  %node_id = getelementptr inbounds %struct.fw_node, %struct.fw_node* %6, i32 0, i32 0, !dbg !5399
  store i16 %conv5, i16* %node_id, align 8, !dbg !5400
  %7 = load i32, i32* %sid.addr, align 4, !dbg !5401
  %shr6 = lshr i32 %7, 22, !dbg !5401
  %and7 = and i32 %shr6, 1, !dbg !5401
  %conv8 = trunc i32 %and7 to i8, !dbg !5401
  %8 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5402
  %link_on = getelementptr inbounds %struct.fw_node, %struct.fw_node* %8, i32 0, i32 3, !dbg !5403
  %bf.load = load i8, i8* %link_on, align 4, !dbg !5404
  %bf.value = and i8 %conv8, 1, !dbg !5404
  %bf.clear = and i8 %bf.load, -2, !dbg !5404
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !5404
  store i8 %bf.set, i8* %link_on, align 4, !dbg !5404
  %9 = load i32, i32* %sid.addr, align 4, !dbg !5405
  %shr9 = lshr i32 %9, 14, !dbg !5405
  %and10 = and i32 %shr9, 3, !dbg !5405
  %conv11 = trunc i32 %and10 to i8, !dbg !5405
  %10 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5406
  %phy_speed = getelementptr inbounds %struct.fw_node, %struct.fw_node* %10, i32 0, i32 3, !dbg !5407
  %bf.load12 = load i8, i8* %phy_speed, align 4, !dbg !5408
  %bf.value13 = and i8 %conv11, 3, !dbg !5408
  %bf.shl = shl i8 %bf.value13, 3, !dbg !5408
  %bf.clear14 = and i8 %bf.load12, -25, !dbg !5408
  %bf.set15 = or i8 %bf.clear14, %bf.shl, !dbg !5408
  store i8 %bf.set15, i8* %phy_speed, align 4, !dbg !5408
  %11 = load i32, i32* %sid.addr, align 4, !dbg !5409
  %shr16 = lshr i32 %11, 1, !dbg !5409
  %and17 = and i32 %shr16, 1, !dbg !5409
  %conv18 = trunc i32 %and17 to i8, !dbg !5409
  %12 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5410
  %initiated_reset = getelementptr inbounds %struct.fw_node, %struct.fw_node* %12, i32 0, i32 3, !dbg !5411
  %bf.load19 = load i8, i8* %initiated_reset, align 4, !dbg !5412
  %bf.value20 = and i8 %conv18, 1, !dbg !5412
  %bf.shl21 = shl i8 %bf.value20, 1, !dbg !5412
  %bf.clear22 = and i8 %bf.load19, -3, !dbg !5412
  %bf.set23 = or i8 %bf.clear22, %bf.shl21, !dbg !5412
  store i8 %bf.set23, i8* %initiated_reset, align 4, !dbg !5412
  %13 = load i32, i32* %port_count.addr, align 4, !dbg !5413
  %conv24 = trunc i32 %13 to i8, !dbg !5413
  %14 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5414
  %port_count25 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 2, !dbg !5415
  store i8 %conv24, i8* %port_count25, align 1, !dbg !5416
  %15 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5417
  %ref_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %15, i32 0, i32 5, !dbg !5418
  call void @refcount_set(%struct.refcount_struct* %ref_count, i32 1) #9, !dbg !5419
  %16 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5420
  %link = getelementptr inbounds %struct.fw_node, %struct.fw_node* %16, i32 0, i32 6, !dbg !5421
  call void @INIT_LIST_HEAD(%struct.list_head* %link) #9, !dbg !5422
  %17 = load %struct.fw_node*, %struct.fw_node** %node, align 8, !dbg !5423
  store %struct.fw_node* %17, %struct.fw_node** %retval, align 8, !dbg !5424
  br label %return, !dbg !5424

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.fw_node*, %struct.fw_node** %retval, align 8, !dbg !5425
  ret %struct.fw_node* %18, !dbg !5425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_port_type(i32* %sid, i32 %port_index) #0 !dbg !5426 {
entry:
  %sid.addr = alloca i32*, align 8
  %port_index.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32* %sid, i32** %sid.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sid.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store i32 %port_index, i32* %port_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port_index.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata i32* %index, metadata !5433, metadata !DIExpression()), !dbg !5434
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load i32, i32* %port_index.addr, align 4, !dbg !5437
  %add = add i32 %0, 5, !dbg !5438
  %div = sdiv i32 %add, 8, !dbg !5439
  store i32 %div, i32* %index, align 4, !dbg !5440
  %1 = load i32, i32* %port_index.addr, align 4, !dbg !5441
  %add1 = add i32 %1, 5, !dbg !5442
  %and = and i32 %add1, 7, !dbg !5443
  %mul = mul i32 %and, 2, !dbg !5444
  %sub = sub i32 16, %mul, !dbg !5445
  store i32 %sub, i32* %shift, align 4, !dbg !5446
  %2 = load i32*, i32** %sid.addr, align 8, !dbg !5447
  %3 = load i32, i32* %index, align 4, !dbg !5448
  %idxprom = sext i32 %3 to i64, !dbg !5447
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !5447
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5447
  %5 = load i32, i32* %shift, align 4, !dbg !5449
  %shr = lshr i32 %4, %5, !dbg !5450
  %and2 = and i32 %shr, 3, !dbg !5451
  ret i32 %and2, !dbg !5452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5453 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5458
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5459
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5460
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5461
  br label %do.body, !dbg !5462

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5463

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5465

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5463

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5467
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5467
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5467
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5467
  br label %do.end5, !dbg !5467

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5463

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @update_hop_count(%struct.fw_node* %node) #0 !dbg !5470 {
entry:
  %node.addr = alloca %struct.fw_node*, align 8
  %depths = alloca [2 x i32], align 4
  %max_child_hops = alloca i32, align 4
  %i = alloca i32, align 4
  %__UNIQUE_ID___x233 = alloca i32, align 4
  %__UNIQUE_ID___y234 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.declare(metadata [2 x i32]* %depths, metadata !5473, metadata !DIExpression()), !dbg !5475
  %0 = bitcast [2 x i32]* %depths to i8*, !dbg !5475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.update_hop_count.depths to i8*), i64 8, i1 false), !dbg !5475
  call void @llvm.dbg.declare(metadata i32* %max_child_hops, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i32 0, i32* %max_child_hops, align 4, !dbg !5477
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i32 0, i32* %i, align 4, !dbg !5480
  br label %for.cond, !dbg !5482

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5483
  %2 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5485
  %port_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %2, i32 0, i32 2, !dbg !5486
  %3 = load i8, i8* %port_count, align 1, !dbg !5486
  %conv = zext i8 %3 to i32, !dbg !5485
  %cmp = icmp slt i32 %1, %conv, !dbg !5487
  br i1 %cmp, label %for.body, label %for.end, !dbg !5488

for.body:                                         ; preds = %for.cond
  %4 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5489
  %ports = getelementptr inbounds %struct.fw_node, %struct.fw_node* %4, i32 0, i32 8, !dbg !5492
  %5 = load i32, i32* %i, align 4, !dbg !5493
  %idxprom = sext i32 %5 to i64, !dbg !5489
  %arrayidx = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports, i64 0, i64 %idxprom, !dbg !5489
  %6 = load %struct.fw_node*, %struct.fw_node** %arrayidx, align 8, !dbg !5489
  %cmp2 = icmp eq %struct.fw_node* %6, null, !dbg !5494
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5495

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5496

if.end:                                           ; preds = %for.body
  %7 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5497
  %ports4 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %7, i32 0, i32 8, !dbg !5499
  %8 = load i32, i32* %i, align 4, !dbg !5500
  %idxprom5 = sext i32 %8 to i64, !dbg !5497
  %arrayidx6 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports4, i64 0, i64 %idxprom5, !dbg !5497
  %9 = load %struct.fw_node*, %struct.fw_node** %arrayidx6, align 8, !dbg !5497
  %max_hops = getelementptr inbounds %struct.fw_node, %struct.fw_node* %9, i32 0, i32 4, !dbg !5501
  %bf.load = load i8, i8* %max_hops, align 1, !dbg !5501
  %bf.lshr = lshr i8 %bf.load, 4, !dbg !5501
  %conv7 = zext i8 %bf.lshr to i32, !dbg !5497
  %10 = load i32, i32* %max_child_hops, align 4, !dbg !5502
  %cmp8 = icmp sgt i32 %conv7, %10, !dbg !5503
  br i1 %cmp8, label %if.then10, label %if.end18, !dbg !5504

if.then10:                                        ; preds = %if.end
  %11 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5505
  %ports11 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %11, i32 0, i32 8, !dbg !5506
  %12 = load i32, i32* %i, align 4, !dbg !5507
  %idxprom12 = sext i32 %12 to i64, !dbg !5505
  %arrayidx13 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports11, i64 0, i64 %idxprom12, !dbg !5505
  %13 = load %struct.fw_node*, %struct.fw_node** %arrayidx13, align 8, !dbg !5505
  %max_hops14 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %13, i32 0, i32 4, !dbg !5508
  %bf.load15 = load i8, i8* %max_hops14, align 1, !dbg !5508
  %bf.lshr16 = lshr i8 %bf.load15, 4, !dbg !5508
  %conv17 = zext i8 %bf.lshr16 to i32, !dbg !5505
  store i32 %conv17, i32* %max_child_hops, align 4, !dbg !5509
  br label %if.end18, !dbg !5510

if.end18:                                         ; preds = %if.then10, %if.end
  %14 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5511
  %ports19 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 8, !dbg !5513
  %15 = load i32, i32* %i, align 4, !dbg !5514
  %idxprom20 = sext i32 %15 to i64, !dbg !5511
  %arrayidx21 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports19, i64 0, i64 %idxprom20, !dbg !5511
  %16 = load %struct.fw_node*, %struct.fw_node** %arrayidx21, align 8, !dbg !5511
  %max_depth = getelementptr inbounds %struct.fw_node, %struct.fw_node* %16, i32 0, i32 4, !dbg !5515
  %bf.load22 = load i8, i8* %max_depth, align 1, !dbg !5515
  %bf.clear = and i8 %bf.load22, 15, !dbg !5515
  %conv23 = zext i8 %bf.clear to i32, !dbg !5511
  %arrayidx24 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 0, !dbg !5516
  %17 = load i32, i32* %arrayidx24, align 4, !dbg !5516
  %cmp25 = icmp sgt i32 %conv23, %17, !dbg !5517
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !5518

if.then27:                                        ; preds = %if.end18
  %arrayidx28 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 0, !dbg !5519
  %18 = load i32, i32* %arrayidx28, align 4, !dbg !5519
  %arrayidx29 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 1, !dbg !5521
  store i32 %18, i32* %arrayidx29, align 4, !dbg !5522
  %19 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5523
  %ports30 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %19, i32 0, i32 8, !dbg !5524
  %20 = load i32, i32* %i, align 4, !dbg !5525
  %idxprom31 = sext i32 %20 to i64, !dbg !5523
  %arrayidx32 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports30, i64 0, i64 %idxprom31, !dbg !5523
  %21 = load %struct.fw_node*, %struct.fw_node** %arrayidx32, align 8, !dbg !5523
  %max_depth33 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %21, i32 0, i32 4, !dbg !5526
  %bf.load34 = load i8, i8* %max_depth33, align 1, !dbg !5526
  %bf.clear35 = and i8 %bf.load34, 15, !dbg !5526
  %conv36 = zext i8 %bf.clear35 to i32, !dbg !5523
  %arrayidx37 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 0, !dbg !5527
  store i32 %conv36, i32* %arrayidx37, align 4, !dbg !5528
  br label %if.end58, !dbg !5529

if.else:                                          ; preds = %if.end18
  %22 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5530
  %ports38 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %22, i32 0, i32 8, !dbg !5532
  %23 = load i32, i32* %i, align 4, !dbg !5533
  %idxprom39 = sext i32 %23 to i64, !dbg !5530
  %arrayidx40 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports38, i64 0, i64 %idxprom39, !dbg !5530
  %24 = load %struct.fw_node*, %struct.fw_node** %arrayidx40, align 8, !dbg !5530
  %max_depth41 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %24, i32 0, i32 4, !dbg !5534
  %bf.load42 = load i8, i8* %max_depth41, align 1, !dbg !5534
  %bf.clear43 = and i8 %bf.load42, 15, !dbg !5534
  %conv44 = zext i8 %bf.clear43 to i32, !dbg !5530
  %arrayidx45 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 1, !dbg !5535
  %25 = load i32, i32* %arrayidx45, align 4, !dbg !5535
  %cmp46 = icmp sgt i32 %conv44, %25, !dbg !5536
  br i1 %cmp46, label %if.then48, label %if.end57, !dbg !5537

if.then48:                                        ; preds = %if.else
  %26 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5538
  %ports49 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %26, i32 0, i32 8, !dbg !5539
  %27 = load i32, i32* %i, align 4, !dbg !5540
  %idxprom50 = sext i32 %27 to i64, !dbg !5538
  %arrayidx51 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports49, i64 0, i64 %idxprom50, !dbg !5538
  %28 = load %struct.fw_node*, %struct.fw_node** %arrayidx51, align 8, !dbg !5538
  %max_depth52 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %28, i32 0, i32 4, !dbg !5541
  %bf.load53 = load i8, i8* %max_depth52, align 1, !dbg !5541
  %bf.clear54 = and i8 %bf.load53, 15, !dbg !5541
  %conv55 = zext i8 %bf.clear54 to i32, !dbg !5538
  %arrayidx56 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 1, !dbg !5542
  store i32 %conv55, i32* %arrayidx56, align 4, !dbg !5543
  br label %if.end57, !dbg !5542

if.end57:                                         ; preds = %if.then48, %if.else
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then27
  br label %for.inc, !dbg !5544

for.inc:                                          ; preds = %if.end58, %if.then
  %29 = load i32, i32* %i, align 4, !dbg !5545
  %inc = add i32 %29, 1, !dbg !5545
  store i32 %inc, i32* %i, align 4, !dbg !5545
  br label %for.cond, !dbg !5546, !llvm.loop !5547

for.end:                                          ; preds = %for.cond
  %arrayidx59 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 0, !dbg !5549
  %30 = load i32, i32* %arrayidx59, align 4, !dbg !5549
  %add = add i32 %30, 1, !dbg !5550
  %conv60 = trunc i32 %add to i8, !dbg !5549
  %31 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5551
  %max_depth61 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %31, i32 0, i32 4, !dbg !5552
  %bf.load62 = load i8, i8* %max_depth61, align 1, !dbg !5553
  %bf.value = and i8 %conv60, 15, !dbg !5553
  %bf.clear63 = and i8 %bf.load62, -16, !dbg !5553
  %bf.set = or i8 %bf.clear63, %bf.value, !dbg !5553
  store i8 %bf.set, i8* %max_depth61, align 1, !dbg !5553
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x233, metadata !5554, metadata !DIExpression()), !dbg !5556
  %32 = load i32, i32* %max_child_hops, align 4, !dbg !5556
  store i32 %32, i32* %__UNIQUE_ID___x233, align 4, !dbg !5556
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y234, metadata !5557, metadata !DIExpression()), !dbg !5556
  %arrayidx64 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 0, !dbg !5556
  %33 = load i32, i32* %arrayidx64, align 4, !dbg !5556
  %arrayidx65 = getelementptr [2 x i32], [2 x i32]* %depths, i64 0, i64 1, !dbg !5556
  %34 = load i32, i32* %arrayidx65, align 4, !dbg !5556
  %add66 = add i32 %33, %34, !dbg !5556
  %add67 = add i32 %add66, 2, !dbg !5556
  store i32 %add67, i32* %__UNIQUE_ID___y234, align 4, !dbg !5556
  %35 = load i32, i32* %__UNIQUE_ID___x233, align 4, !dbg !5556
  %36 = load i32, i32* %__UNIQUE_ID___y234, align 4, !dbg !5556
  %cmp68 = icmp sgt i32 %35, %36, !dbg !5556
  br i1 %cmp68, label %cond.true, label %cond.false, !dbg !5556

cond.true:                                        ; preds = %for.end
  %37 = load i32, i32* %__UNIQUE_ID___x233, align 4, !dbg !5556
  br label %cond.end, !dbg !5556

cond.false:                                       ; preds = %for.end
  %38 = load i32, i32* %__UNIQUE_ID___y234, align 4, !dbg !5556
  br label %cond.end, !dbg !5556

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ], !dbg !5556
  store i32 %cond, i32* %tmp, align 4, !dbg !5556
  %39 = load i32, i32* %tmp, align 4, !dbg !5556
  %conv70 = trunc i32 %39 to i8, !dbg !5558
  %40 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5559
  %max_hops71 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %40, i32 0, i32 4, !dbg !5560
  %bf.load72 = load i8, i8* %max_hops71, align 1, !dbg !5561
  %bf.value73 = and i8 %conv70, 15, !dbg !5561
  %bf.shl = shl i8 %bf.value73, 4, !dbg !5561
  %bf.clear74 = and i8 %bf.load72, 15, !dbg !5561
  %bf.set75 = or i8 %bf.clear74, %bf.shl, !dbg !5561
  store i8 %bf.set75, i8* %max_hops71, align 1, !dbg !5561
  ret void, !dbg !5562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5563 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5566, metadata !DIExpression()), !dbg !5570
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5576, metadata !DIExpression()), !dbg !5577
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5578, metadata !DIExpression()), !dbg !5579
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5580, metadata !DIExpression()), !dbg !5581
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5582, metadata !DIExpression()), !dbg !5586
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5588, metadata !DIExpression()), !dbg !5592
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5594, metadata !DIExpression()), !dbg !5598
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5603, metadata !DIExpression()), !dbg !5604
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5605, metadata !DIExpression()), !dbg !5606
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5607, metadata !DIExpression()), !dbg !5608
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5609, metadata !DIExpression()), !dbg !5610
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5611, metadata !DIExpression()), !dbg !5612
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5613, metadata !DIExpression()), !dbg !5614
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5615, metadata !DIExpression()), !dbg !5616
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5617, metadata !DIExpression()), !dbg !5618
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  %0 = load i64, i64* %size.addr, align 8, !dbg !5623
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5624
  %or = or i32 %1, 256, !dbg !5625
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5626
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #4, !dbg !5627
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5628

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5629
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5630
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5631

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5632
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5633
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5634
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5635
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5612
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5636
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5637
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5638
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5639
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5640
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5641
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !5642
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5642
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5642
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5642
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !5642
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5643
  br label %kmalloc.exit, !dbg !5643

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5644
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5645
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5645
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5647

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5648
  br label %kmalloc_index.exit.i, !dbg !5648

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5649
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5651
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5652

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5653
  br label %kmalloc_index.exit.i, !dbg !5653

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5654
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5656
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5657

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5658
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5659
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5660

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5661
  br label %kmalloc_index.exit.i, !dbg !5661

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5662
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5664
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5665

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5666
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5667
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5668

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5669
  br label %kmalloc_index.exit.i, !dbg !5669

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5670
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5672
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5673

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5674
  br label %kmalloc_index.exit.i, !dbg !5674

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5675
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5677
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5678

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5679
  br label %kmalloc_index.exit.i, !dbg !5679

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5680
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5682
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5683

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5684
  br label %kmalloc_index.exit.i, !dbg !5684

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5685
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5687
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5688

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5689
  br label %kmalloc_index.exit.i, !dbg !5689

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5690
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5692
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5693

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5694
  br label %kmalloc_index.exit.i, !dbg !5694

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5695
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5697
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5698

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5699
  br label %kmalloc_index.exit.i, !dbg !5699

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5700
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5702
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5703

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5704
  br label %kmalloc_index.exit.i, !dbg !5704

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5705
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5707
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5708

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5709
  br label %kmalloc_index.exit.i, !dbg !5709

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5710
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5712
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5713

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5714
  br label %kmalloc_index.exit.i, !dbg !5714

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5715
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5717
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5718

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5719
  br label %kmalloc_index.exit.i, !dbg !5719

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5720
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5722
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5723

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5724
  br label %kmalloc_index.exit.i, !dbg !5724

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5725
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5727
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5728

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5729
  br label %kmalloc_index.exit.i, !dbg !5729

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5730
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5732
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5733

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5734
  br label %kmalloc_index.exit.i, !dbg !5734

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5735
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5737
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5738

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5739
  br label %kmalloc_index.exit.i, !dbg !5739

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5740
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5742
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5743

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5744
  br label %kmalloc_index.exit.i, !dbg !5744

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5745
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5747
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5748

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5749
  br label %kmalloc_index.exit.i, !dbg !5749

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5750
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5752
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5753

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5754
  br label %kmalloc_index.exit.i, !dbg !5754

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5755
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5757
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5758

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5759
  br label %kmalloc_index.exit.i, !dbg !5759

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5760
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5762
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5763

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5764
  br label %kmalloc_index.exit.i, !dbg !5764

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5765
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5767
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5768

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5769
  br label %kmalloc_index.exit.i, !dbg !5769

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5770
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5772
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5773

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5774
  br label %kmalloc_index.exit.i, !dbg !5774

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5775
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5777
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5778

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5779
  br label %kmalloc_index.exit.i, !dbg !5779

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5780
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5782
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5783

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5784
  br label %kmalloc_index.exit.i, !dbg !5784

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5785
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5787
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5788

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5789
  br label %kmalloc_index.exit.i, !dbg !5789

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !5790, !srcloc !5793
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 232) #4, !dbg !5794, !srcloc !5797
  unreachable, !dbg !5798

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5799
  store i32 %45, i32* %index.i, align 4, !dbg !5800
  %46 = load i32, i32* %index.i, align 4, !dbg !5801
  %tobool.i = icmp ne i32 %46, 0, !dbg !5801
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5803

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5804
  br label %kmalloc.exit, !dbg !5804

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5805
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5806
  %and.i.i = and i32 %48, 17, !dbg !5806
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5806
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5806
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5806
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5806
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5808

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5809
  br label %kmalloc_type.exit.i, !dbg !5809

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5810
  %and2.i.i = and i32 %49, 1, !dbg !5811
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5810
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5810
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5810
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5812
  br label %kmalloc_type.exit.i, !dbg !5812

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5813
  %idxprom.i = zext i32 %51 to i64, !dbg !5814
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5814
  %52 = load i32, i32* %index.i, align 4, !dbg !5815
  %idxprom6.i = zext i32 %52 to i64, !dbg !5814
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5814
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5814
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5816
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5817
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5818
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5819
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !5820
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5820
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5820
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5820
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !5820
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5581
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5821
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5822
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5823
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5824
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !5825
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5826
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5827
  store i8* %62, i8** %retval.i, align 8, !dbg !5828
  br label %kmalloc.exit, !dbg !5828

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5829
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5830
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !5831
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5831
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5831
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5831
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !5831
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5832
  br label %kmalloc.exit, !dbg !5832

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5833
  ret i8* %65, !dbg !5834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #0 !dbg !5835 {
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
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5847, metadata !DIExpression()), !dbg !5850
  %0 = load i64, i64* %a.addr, align 8, !dbg !5850
  store i64 %0, i64* %__a, align 8, !dbg !5850
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5851, metadata !DIExpression()), !dbg !5850
  %1 = load i64, i64* %b.addr, align 8, !dbg !5850
  store i64 %1, i64* %__b, align 8, !dbg !5850
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5852, metadata !DIExpression()), !dbg !5850
  store i64* %bytes, i64** %__d, align 8, !dbg !5850
  %cmp = icmp eq i64* %__a, %__b, !dbg !5850
  %conv = zext i1 %cmp to i32, !dbg !5850
  %2 = load i64*, i64** %__d, align 8, !dbg !5850
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5850
  %conv2 = zext i1 %cmp1 to i32, !dbg !5850
  %3 = load i64, i64* %__a, align 8, !dbg !5850
  %4 = load i64, i64* %__b, align 8, !dbg !5850
  %5 = load i64*, i64** %__d, align 8, !dbg !5850
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5850
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5850
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5850
  store i64 %8, i64* %5, align 8, !dbg !5850
  %frombool = zext i1 %7 to i8, !dbg !5850
  store i8 %frombool, i8* %tmp, align 1, !dbg !5850
  %9 = load i8, i8* %tmp, align 1, !dbg !5850
  %tobool = trunc i8 %9 to i1, !dbg !5850
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #9, !dbg !5854
  br i1 %call, label %if.then, label %if.end, !dbg !5855

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !5856
  br label %return, !dbg !5856

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !5857, metadata !DIExpression()), !dbg !5860
  %10 = load i64, i64* %bytes, align 8, !dbg !5860
  store i64 %10, i64* %__a3, align 8, !dbg !5860
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !5861, metadata !DIExpression()), !dbg !5860
  %11 = load i64, i64* %c.addr, align 8, !dbg !5860
  store i64 %11, i64* %__b4, align 8, !dbg !5860
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !5862, metadata !DIExpression()), !dbg !5860
  store i64* %bytes, i64** %__d5, align 8, !dbg !5860
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !5860
  %conv7 = zext i1 %cmp6 to i32, !dbg !5860
  %12 = load i64*, i64** %__d5, align 8, !dbg !5860
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !5860
  %conv9 = zext i1 %cmp8 to i32, !dbg !5860
  %13 = load i64, i64* %__a3, align 8, !dbg !5860
  %14 = load i64, i64* %__b4, align 8, !dbg !5860
  %15 = load i64*, i64** %__d5, align 8, !dbg !5860
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !5860
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !5860
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !5860
  store i64 %18, i64* %15, align 8, !dbg !5860
  %frombool11 = zext i1 %17 to i8, !dbg !5860
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !5860
  %19 = load i8, i8* %tmp10, align 1, !dbg !5860
  %tobool12 = trunc i8 %19 to i1, !dbg !5860
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #9, !dbg !5863
  br i1 %call13, label %if.then14, label %if.end15, !dbg !5864

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !5865
  br label %return, !dbg !5865

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !5866
  store i64 %20, i64* %retval, align 8, !dbg !5867
  br label %return, !dbg !5867

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !5868
  ret i64 %21, !dbg !5868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !5869 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5872, metadata !DIExpression()), !dbg !5876
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5880, metadata !DIExpression()), !dbg !5881
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5882, metadata !DIExpression()), !dbg !5884
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5886, metadata !DIExpression()), !dbg !5887
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5888, metadata !DIExpression()), !dbg !5889
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5890, metadata !DIExpression()), !dbg !5891
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5896
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5897
  %1 = load i32, i32* %n.addr, align 4, !dbg !5898
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5899
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5899
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5900
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5901
  %conv.i.i = trunc i64 %5 to i32, !dbg !5901
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5902
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5903
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5903
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #10, !dbg !5903
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5904
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5905
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5906
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5906
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5906
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5906
  ret void, !dbg !5908
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5909 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5913, metadata !DIExpression()), !dbg !5918
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5920, metadata !DIExpression()), !dbg !5921
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  %0 = load i64, i64* %size.addr, align 8, !dbg !5924
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5926
  br i1 %1, label %if.then, label %if.end447, !dbg !5927

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5928
  %tobool = icmp ne i64 %2, 0, !dbg !5928
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5931

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5932
  br label %return, !dbg !5932

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5933
  %cmp = icmp ult i64 %3, 4096, !dbg !5935
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5936

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5937
  br label %return, !dbg !5937

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub = sub i64 %4, 1, !dbg !5938
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5938
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5938

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub4 = sub i64 %6, 1, !dbg !5938
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5938
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5938

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub6 = sub i64 %8, 1, !dbg !5938
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5938
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5938

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5938

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub9 = sub i64 %9, 1, !dbg !5938
  %and = and i64 %sub9, -9223372036854775808, !dbg !5938
  %tobool10 = icmp ne i64 %and, 0, !dbg !5938
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5938

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5938

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub13 = sub i64 %10, 1, !dbg !5938
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5938
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5938
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5938

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5938

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub18 = sub i64 %11, 1, !dbg !5938
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5938
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5938
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5938

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5938

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub23 = sub i64 %12, 1, !dbg !5938
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5938
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5938
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5938

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5938

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub28 = sub i64 %13, 1, !dbg !5938
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5938
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5938
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5938

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5938

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub33 = sub i64 %14, 1, !dbg !5938
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5938
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5938
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5938

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5938

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub38 = sub i64 %15, 1, !dbg !5938
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5938
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5938
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5938

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5938

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub43 = sub i64 %16, 1, !dbg !5938
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5938
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5938
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5938

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5938

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub48 = sub i64 %17, 1, !dbg !5938
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5938
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5938
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5938

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5938

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub53 = sub i64 %18, 1, !dbg !5938
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5938
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5938
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5938

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5938

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub58 = sub i64 %19, 1, !dbg !5938
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5938
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5938
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5938

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5938

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub63 = sub i64 %20, 1, !dbg !5938
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5938
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5938
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5938

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5938

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub68 = sub i64 %21, 1, !dbg !5938
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5938
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5938
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5938

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5938

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub73 = sub i64 %22, 1, !dbg !5938
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5938
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5938
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5938

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5938

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub78 = sub i64 %23, 1, !dbg !5938
  %and79 = and i64 %sub78, 562949953421312, !dbg !5938
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5938
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5938

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5938

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub83 = sub i64 %24, 1, !dbg !5938
  %and84 = and i64 %sub83, 281474976710656, !dbg !5938
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5938
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5938

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5938

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub88 = sub i64 %25, 1, !dbg !5938
  %and89 = and i64 %sub88, 140737488355328, !dbg !5938
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5938
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5938

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5938

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub93 = sub i64 %26, 1, !dbg !5938
  %and94 = and i64 %sub93, 70368744177664, !dbg !5938
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5938
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5938

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5938

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub98 = sub i64 %27, 1, !dbg !5938
  %and99 = and i64 %sub98, 35184372088832, !dbg !5938
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5938
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5938

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5938

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub103 = sub i64 %28, 1, !dbg !5938
  %and104 = and i64 %sub103, 17592186044416, !dbg !5938
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5938
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5938

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5938

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub108 = sub i64 %29, 1, !dbg !5938
  %and109 = and i64 %sub108, 8796093022208, !dbg !5938
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5938
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5938

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5938

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub113 = sub i64 %30, 1, !dbg !5938
  %and114 = and i64 %sub113, 4398046511104, !dbg !5938
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5938
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5938

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5938

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub118 = sub i64 %31, 1, !dbg !5938
  %and119 = and i64 %sub118, 2199023255552, !dbg !5938
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5938
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5938

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5938

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub123 = sub i64 %32, 1, !dbg !5938
  %and124 = and i64 %sub123, 1099511627776, !dbg !5938
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5938
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5938

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5938

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub128 = sub i64 %33, 1, !dbg !5938
  %and129 = and i64 %sub128, 549755813888, !dbg !5938
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5938
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5938

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5938

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub133 = sub i64 %34, 1, !dbg !5938
  %and134 = and i64 %sub133, 274877906944, !dbg !5938
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5938
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5938

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5938

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub138 = sub i64 %35, 1, !dbg !5938
  %and139 = and i64 %sub138, 137438953472, !dbg !5938
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5938
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5938

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5938

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub143 = sub i64 %36, 1, !dbg !5938
  %and144 = and i64 %sub143, 68719476736, !dbg !5938
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5938
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5938

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5938

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub148 = sub i64 %37, 1, !dbg !5938
  %and149 = and i64 %sub148, 34359738368, !dbg !5938
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5938
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5938

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5938

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub153 = sub i64 %38, 1, !dbg !5938
  %and154 = and i64 %sub153, 17179869184, !dbg !5938
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5938
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5938

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5938

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub158 = sub i64 %39, 1, !dbg !5938
  %and159 = and i64 %sub158, 8589934592, !dbg !5938
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5938
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5938

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5938

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub163 = sub i64 %40, 1, !dbg !5938
  %and164 = and i64 %sub163, 4294967296, !dbg !5938
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5938
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5938

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5938

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub168 = sub i64 %41, 1, !dbg !5938
  %and169 = and i64 %sub168, 2147483648, !dbg !5938
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5938
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5938

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5938

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub173 = sub i64 %42, 1, !dbg !5938
  %and174 = and i64 %sub173, 1073741824, !dbg !5938
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5938
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5938

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5938

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub178 = sub i64 %43, 1, !dbg !5938
  %and179 = and i64 %sub178, 536870912, !dbg !5938
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5938
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5938

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5938

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub183 = sub i64 %44, 1, !dbg !5938
  %and184 = and i64 %sub183, 268435456, !dbg !5938
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5938
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5938

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5938

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub188 = sub i64 %45, 1, !dbg !5938
  %and189 = and i64 %sub188, 134217728, !dbg !5938
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5938
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5938

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5938

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub193 = sub i64 %46, 1, !dbg !5938
  %and194 = and i64 %sub193, 67108864, !dbg !5938
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5938
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5938

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5938

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub198 = sub i64 %47, 1, !dbg !5938
  %and199 = and i64 %sub198, 33554432, !dbg !5938
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5938
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5938

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5938

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub203 = sub i64 %48, 1, !dbg !5938
  %and204 = and i64 %sub203, 16777216, !dbg !5938
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5938
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5938

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5938

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub208 = sub i64 %49, 1, !dbg !5938
  %and209 = and i64 %sub208, 8388608, !dbg !5938
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5938
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5938

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5938

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub213 = sub i64 %50, 1, !dbg !5938
  %and214 = and i64 %sub213, 4194304, !dbg !5938
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5938
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5938

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5938

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub218 = sub i64 %51, 1, !dbg !5938
  %and219 = and i64 %sub218, 2097152, !dbg !5938
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5938
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5938

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5938

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub223 = sub i64 %52, 1, !dbg !5938
  %and224 = and i64 %sub223, 1048576, !dbg !5938
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5938
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5938

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5938

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub228 = sub i64 %53, 1, !dbg !5938
  %and229 = and i64 %sub228, 524288, !dbg !5938
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5938
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5938

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5938

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub233 = sub i64 %54, 1, !dbg !5938
  %and234 = and i64 %sub233, 262144, !dbg !5938
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5938
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5938

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5938

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub238 = sub i64 %55, 1, !dbg !5938
  %and239 = and i64 %sub238, 131072, !dbg !5938
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5938
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5938

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5938

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub243 = sub i64 %56, 1, !dbg !5938
  %and244 = and i64 %sub243, 65536, !dbg !5938
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5938
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5938

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5938

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub248 = sub i64 %57, 1, !dbg !5938
  %and249 = and i64 %sub248, 32768, !dbg !5938
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5938
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5938

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5938

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub253 = sub i64 %58, 1, !dbg !5938
  %and254 = and i64 %sub253, 16384, !dbg !5938
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5938
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5938

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5938

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub258 = sub i64 %59, 1, !dbg !5938
  %and259 = and i64 %sub258, 8192, !dbg !5938
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5938
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5938

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5938

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub263 = sub i64 %60, 1, !dbg !5938
  %and264 = and i64 %sub263, 4096, !dbg !5938
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5938
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5938

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5938

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub268 = sub i64 %61, 1, !dbg !5938
  %and269 = and i64 %sub268, 2048, !dbg !5938
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5938
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5938

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5938

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub273 = sub i64 %62, 1, !dbg !5938
  %and274 = and i64 %sub273, 1024, !dbg !5938
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5938
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5938

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5938

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub278 = sub i64 %63, 1, !dbg !5938
  %and279 = and i64 %sub278, 512, !dbg !5938
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5938
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5938

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5938

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub283 = sub i64 %64, 1, !dbg !5938
  %and284 = and i64 %sub283, 256, !dbg !5938
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5938
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5938

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5938

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub288 = sub i64 %65, 1, !dbg !5938
  %and289 = and i64 %sub288, 128, !dbg !5938
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5938
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5938

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5938

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub293 = sub i64 %66, 1, !dbg !5938
  %and294 = and i64 %sub293, 64, !dbg !5938
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5938
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5938

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5938

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub298 = sub i64 %67, 1, !dbg !5938
  %and299 = and i64 %sub298, 32, !dbg !5938
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5938
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5938

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5938

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub303 = sub i64 %68, 1, !dbg !5938
  %and304 = and i64 %sub303, 16, !dbg !5938
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5938
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5938

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5938

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub308 = sub i64 %69, 1, !dbg !5938
  %and309 = and i64 %sub308, 8, !dbg !5938
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5938
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5938

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5938

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub313 = sub i64 %70, 1, !dbg !5938
  %and314 = and i64 %sub313, 4, !dbg !5938
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5938
  %71 = zext i1 %tobool315 to i64, !dbg !5938
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5938
  br label %cond.end, !dbg !5938

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5938
  br label %cond.end317, !dbg !5938

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5938
  br label %cond.end319, !dbg !5938

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5938
  br label %cond.end321, !dbg !5938

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5938
  br label %cond.end323, !dbg !5938

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5938
  br label %cond.end325, !dbg !5938

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5938
  br label %cond.end327, !dbg !5938

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5938
  br label %cond.end329, !dbg !5938

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5938
  br label %cond.end331, !dbg !5938

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5938
  br label %cond.end333, !dbg !5938

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5938
  br label %cond.end335, !dbg !5938

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5938
  br label %cond.end337, !dbg !5938

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5938
  br label %cond.end339, !dbg !5938

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5938
  br label %cond.end341, !dbg !5938

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5938
  br label %cond.end343, !dbg !5938

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5938
  br label %cond.end345, !dbg !5938

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5938
  br label %cond.end347, !dbg !5938

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5938
  br label %cond.end349, !dbg !5938

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5938
  br label %cond.end351, !dbg !5938

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5938
  br label %cond.end353, !dbg !5938

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5938
  br label %cond.end355, !dbg !5938

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5938
  br label %cond.end357, !dbg !5938

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5938
  br label %cond.end359, !dbg !5938

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5938
  br label %cond.end361, !dbg !5938

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5938
  br label %cond.end363, !dbg !5938

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5938
  br label %cond.end365, !dbg !5938

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5938
  br label %cond.end367, !dbg !5938

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5938
  br label %cond.end369, !dbg !5938

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5938
  br label %cond.end371, !dbg !5938

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5938
  br label %cond.end373, !dbg !5938

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5938
  br label %cond.end375, !dbg !5938

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5938
  br label %cond.end377, !dbg !5938

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5938
  br label %cond.end379, !dbg !5938

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5938
  br label %cond.end381, !dbg !5938

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5938
  br label %cond.end383, !dbg !5938

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5938
  br label %cond.end385, !dbg !5938

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5938
  br label %cond.end387, !dbg !5938

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5938
  br label %cond.end389, !dbg !5938

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5938
  br label %cond.end391, !dbg !5938

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5938
  br label %cond.end393, !dbg !5938

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5938
  br label %cond.end395, !dbg !5938

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5938
  br label %cond.end397, !dbg !5938

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5938
  br label %cond.end399, !dbg !5938

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5938
  br label %cond.end401, !dbg !5938

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5938
  br label %cond.end403, !dbg !5938

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5938
  br label %cond.end405, !dbg !5938

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5938
  br label %cond.end407, !dbg !5938

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5938
  br label %cond.end409, !dbg !5938

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5938
  br label %cond.end411, !dbg !5938

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5938
  br label %cond.end413, !dbg !5938

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5938
  br label %cond.end415, !dbg !5938

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5938
  br label %cond.end417, !dbg !5938

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5938
  br label %cond.end419, !dbg !5938

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5938
  br label %cond.end421, !dbg !5938

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5938
  br label %cond.end423, !dbg !5938

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5938
  br label %cond.end425, !dbg !5938

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5938
  br label %cond.end427, !dbg !5938

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5938
  br label %cond.end429, !dbg !5938

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5938
  br label %cond.end431, !dbg !5938

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5938
  br label %cond.end433, !dbg !5938

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5938
  br label %cond.end435, !dbg !5938

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5938
  br label %cond.end437, !dbg !5938

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5938
  br label %cond.end440, !dbg !5938

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5938

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5938
  br label %cond.end444, !dbg !5938

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5938
  %sub443 = sub i64 %72, 1, !dbg !5938
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5938
  br label %cond.end444, !dbg !5938

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5938
  %sub446 = sub i32 %cond445, 12, !dbg !5939
  %add = add i32 %sub446, 1, !dbg !5940
  store i32 %add, i32* %retval, align 4, !dbg !5941
  br label %return, !dbg !5941

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5942
  %dec = add i64 %73, -1, !dbg !5942
  store i64 %dec, i64* %size.addr, align 8, !dbg !5942
  %74 = load i64, i64* %size.addr, align 8, !dbg !5943
  %shr = lshr i64 %74, 12, !dbg !5943
  store i64 %shr, i64* %size.addr, align 8, !dbg !5943
  %75 = load i64, i64* %size.addr, align 8, !dbg !5944
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5921
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5945
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5946
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #3, !dbg !5945, !srcloc !5947
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5945
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5948
  %add.i = add i32 %79, 1, !dbg !5949
  store i32 %add.i, i32* %retval, align 4, !dbg !5950
  br label %return, !dbg !5950

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5951
  ret i32 %80, !dbg !5951
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5952 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5913, metadata !DIExpression()), !dbg !5956
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5920, metadata !DIExpression()), !dbg !5958
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  %0 = load i64, i64* %n.addr, align 8, !dbg !5961
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5958
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5962
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5963
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #3, !dbg !5962, !srcloc !5947
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5962
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5964
  %add.i = add i32 %4, 1, !dbg !5965
  %sub = sub i32 %add.i, 1, !dbg !5966
  ret i32 %sub, !dbg !5967
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5968 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5980
  ret i8* %0, !dbg !5981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5982 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5987
  %tobool = trunc i8 %0 to i1, !dbg !5987
  %lnot = xor i1 %tobool, true, !dbg !5987
  %lnot1 = xor i1 %lnot, true, !dbg !5987
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5987
  %conv = sext i32 %lnot.ext to i64, !dbg !5987
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5987
  ret i1 %tobool2, !dbg !5988
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #7 !dbg !5989 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  %0 = load i32, i32* %val.addr, align 4, !dbg !5994
  %call = call i32 @__arch_swab32(i32 %0) #11, !dbg !5995
  ret i32 %call, !dbg !5996
}

; Function Attrs: noredzone
declare dso_local i32 @fw_compute_block_crc(i32*) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #7 !dbg !5997 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load i32, i32* %val.addr, align 4, !dbg !6001
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !6002, !srcloc !6003
  store i32 %1, i32* %val.addr, align 4, !dbg !6002
  %2 = load i32, i32* %val.addr, align 4, !dbg !6004
  ret i32 %2, !dbg !6005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @move_tree(%struct.fw_node* %node0, %struct.fw_node* %node1, i32 %port) #0 !dbg !6006 {
entry:
  %node0.addr = alloca %struct.fw_node*, align 8
  %node1.addr = alloca %struct.fw_node*, align 8
  %port.addr = alloca i32, align 4
  %tree = alloca %struct.fw_node*, align 8
  %i = alloca i32, align 4
  store %struct.fw_node* %node0, %struct.fw_node** %node0.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node0.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  store %struct.fw_node* %node1, %struct.fw_node** %node1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node1.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  call void @llvm.dbg.declare(metadata %struct.fw_node** %tree, metadata !6015, metadata !DIExpression()), !dbg !6016
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6017, metadata !DIExpression()), !dbg !6018
  %0 = load %struct.fw_node*, %struct.fw_node** %node1.addr, align 8, !dbg !6019
  %ports = getelementptr inbounds %struct.fw_node, %struct.fw_node* %0, i32 0, i32 8, !dbg !6020
  %1 = load i32, i32* %port.addr, align 4, !dbg !6021
  %idxprom = sext i32 %1 to i64, !dbg !6019
  %arrayidx = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports, i64 0, i64 %idxprom, !dbg !6019
  %2 = load %struct.fw_node*, %struct.fw_node** %arrayidx, align 8, !dbg !6019
  store %struct.fw_node* %2, %struct.fw_node** %tree, align 8, !dbg !6022
  %3 = load %struct.fw_node*, %struct.fw_node** %tree, align 8, !dbg !6023
  %4 = load %struct.fw_node*, %struct.fw_node** %node0.addr, align 8, !dbg !6024
  %ports1 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %4, i32 0, i32 8, !dbg !6025
  %5 = load i32, i32* %port.addr, align 4, !dbg !6026
  %idxprom2 = sext i32 %5 to i64, !dbg !6024
  %arrayidx3 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports1, i64 0, i64 %idxprom2, !dbg !6024
  store %struct.fw_node* %3, %struct.fw_node** %arrayidx3, align 8, !dbg !6027
  store i32 0, i32* %i, align 4, !dbg !6028
  br label %for.cond, !dbg !6030

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !6031
  %7 = load %struct.fw_node*, %struct.fw_node** %tree, align 8, !dbg !6033
  %port_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %7, i32 0, i32 2, !dbg !6034
  %8 = load i8, i8* %port_count, align 1, !dbg !6034
  %conv = zext i8 %8 to i32, !dbg !6033
  %cmp = icmp slt i32 %6, %conv, !dbg !6035
  br i1 %cmp, label %for.body, label %for.end, !dbg !6036

for.body:                                         ; preds = %for.cond
  %9 = load %struct.fw_node*, %struct.fw_node** %tree, align 8, !dbg !6037
  %ports5 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %9, i32 0, i32 8, !dbg !6040
  %10 = load i32, i32* %i, align 4, !dbg !6041
  %idxprom6 = sext i32 %10 to i64, !dbg !6037
  %arrayidx7 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports5, i64 0, i64 %idxprom6, !dbg !6037
  %11 = load %struct.fw_node*, %struct.fw_node** %arrayidx7, align 8, !dbg !6037
  %12 = load %struct.fw_node*, %struct.fw_node** %node1.addr, align 8, !dbg !6042
  %cmp8 = icmp eq %struct.fw_node* %11, %12, !dbg !6043
  br i1 %cmp8, label %if.then, label %if.end, !dbg !6044

if.then:                                          ; preds = %for.body
  %13 = load %struct.fw_node*, %struct.fw_node** %node0.addr, align 8, !dbg !6045
  %14 = load %struct.fw_node*, %struct.fw_node** %tree, align 8, !dbg !6047
  %ports10 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 8, !dbg !6048
  %15 = load i32, i32* %i, align 4, !dbg !6049
  %idxprom11 = sext i32 %15 to i64, !dbg !6047
  %arrayidx12 = getelementptr [0 x %struct.fw_node*], [0 x %struct.fw_node*]* %ports10, i64 0, i64 %idxprom11, !dbg !6047
  store %struct.fw_node* %13, %struct.fw_node** %arrayidx12, align 8, !dbg !6050
  br label %for.end, !dbg !6051

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6052

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !dbg !6053
  %inc = add i32 %16, 1, !dbg !6053
  store i32 %inc, i32* %i, align 4, !dbg !6053
  br label %for.cond, !dbg !6054, !llvm.loop !6055

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !6057
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!188}
!llvm.module.flags = !{!189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/firewire/core-topology.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !37, !45, !51, !58, !65, !71, !77, !84, !92, !98, !106, !111, !120}
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
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !99, line: 119, baseType: !5, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105}
!101 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 10, baseType: !5, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 165, baseType: !5, size: 32, elements: !113)
!112 = !DIFile(filename: "drivers/firewire/core.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIEnumerator(name: "FW_NODE_CREATED", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "FW_NODE_UPDATED", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "FW_NODE_DESTROYED", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "FW_NODE_LINK_ON", value: 3, isUnsigned: true)
!118 = !DIEnumerator(name: "FW_NODE_LINK_OFF", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "FW_NODE_INITIATED_RESET", value: 5, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !121, line: 305, baseType: !5, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!127 = !{!128, !129, !130, !173, !175, !161, !178, !179, !183, !185, !187}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_node", file: !112, line: 174, size: 320, elements: !132)
!132 = !{!133, !139, !143, !144, !145, !146, !147, !148, !149, !150, !151, !162, !168, !169}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !131, file: !112, line: 175, baseType: !134, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !135, line: 19, baseType: !136)
!135 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !137, line: 24, baseType: !138)
!137 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !131, file: !112, line: 176, baseType: !140, size: 8, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !135, line: 17, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !137, line: 21, baseType: !142)
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "port_count", scope: !131, file: !112, line: 177, baseType: !140, size: 8, offset: 24)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "link_on", scope: !131, file: !112, line: 178, baseType: !140, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "initiated_reset", scope: !131, file: !112, line: 179, baseType: !140, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "b_path", scope: !131, file: !112, line: 180, baseType: !140, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "phy_speed", scope: !131, file: !112, line: 181, baseType: !140, size: 2, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !131, file: !112, line: 182, baseType: !140, size: 2, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !131, file: !112, line: 184, baseType: !140, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "max_hops", scope: !131, file: !112, line: 185, baseType: !140, size: 4, offset: 44, flags: DIFlagBitField, extraData: i64 40)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !131, file: !112, line: 186, baseType: !152, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !99, line: 113, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !99, line: 111, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !153, file: !99, line: 112, baseType: !156, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !157, line: 168, baseType: !158)
!157 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 166, size: 32, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !158, file: !157, line: 167, baseType: !161, size: 32)
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !131, file: !112, line: 189, baseType: !163, size: 128, offset: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !157, line: 178, size: 128, elements: !164)
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !157, line: 179, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !157, line: 179, baseType: !166, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !131, file: !112, line: 192, baseType: !128, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !131, file: !112, line: 194, baseType: !170, offset: 320)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: -1)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !166)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !135, line: 23, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !137, line: 31, baseType: !177)
!177 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !157, line: 148, baseType: !5)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 55, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !181, line: 72, baseType: !182)
!181 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !181, line: 16, baseType: !129)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !186, line: 32, baseType: !187)
!186 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !137, line: 27, baseType: !5)
!188 = !{!"rsp"}
!189 = !{i32 7, !"Dwarf Version", i32 4}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"Code Model", i32 2}
!193 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!194 = distinct !DISubprogram(name: "fw_destroy_nodes", scope: !1, file: !1, line: 377, type: !195, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !451)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_card", file: !199, line: 83, size: 11520, elements: !200)
!199 = !DIFile(filename: "./include/linux/firewire.h", directory: "/home/lizy2001/genbc/linux")
!200 = !{!201, !3165, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3940}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !198, file: !199, line: 84, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_card_driver", file: !112, line: 53, size: 1152, elements: !205)
!205 = !{!206, !212, !216, !220, !221, !252, !253, !257, !261, !265, !269, !296, !300, !306, !311, !3159, !3160, !3164}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !204, file: !112, line: 60, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!161, !197, !210, !179}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "read_phy_reg", scope: !204, file: !112, line: 63, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!161, !197, !161}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "update_phy_reg", scope: !204, file: !112, line: 64, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!161, !197, !161, !161, !161}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "set_config_rom", scope: !204, file: !112, line: 72, baseType: !207, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "send_request", scope: !204, file: !112, line: 75, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !197, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_packet", file: !199, line: 291, size: 832, elements: !227)
!227 = !{!228, !229, !230, !235, !236, !237, !238, !240, !243, !244, !249, !250, !251}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !226, file: !199, line: 292, baseType: !161, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !226, file: !199, line: 293, baseType: !161, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !226, file: !199, line: 294, baseType: !231, size: 128, offset: 64)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !233)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !135, line: 21, baseType: !187)
!233 = !{!234}
!234 = !DISubrange(count: 4)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "header_length", scope: !226, file: !199, line: 295, baseType: !179, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !226, file: !199, line: 296, baseType: !128, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !226, file: !199, line: 297, baseType: !179, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "payload_bus", scope: !226, file: !199, line: 298, baseType: !239, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !157, line: 143, baseType: !175)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "payload_mapped", scope: !226, file: !199, line: 299, baseType: !241, size: 8, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !157, line: 30, baseType: !242)
!242 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !226, file: !199, line: 300, baseType: !232, size: 32, offset: 480)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !226, file: !199, line: 310, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_packet_callback_t", file: !199, line: 266, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !225, !197, !161}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !226, file: !199, line: 311, baseType: !161, size: 32, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !226, file: !199, line: 312, baseType: !163, size: 128, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !226, file: !199, line: 313, baseType: !128, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "send_response", scope: !204, file: !112, line: 76, baseType: !222, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_packet", scope: !204, file: !112, line: 78, baseType: !254, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!161, !197, !225}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "enable_phys_dma", scope: !204, file: !112, line: 88, baseType: !258, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!161, !197, !161, !161}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "read_csr", scope: !204, file: !112, line: 91, baseType: !262, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!232, !197, !161}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "write_csr", scope: !204, file: !112, line: 92, baseType: !266, size: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !197, !161, !232}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_iso_context", scope: !204, file: !112, line: 95, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !197, !161, !161, !179}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_context", file: !199, line: 439, size: 384, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !295}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !274, file: !199, line: 440, baseType: !197, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !199, line: 441, baseType: !161, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !274, file: !199, line: 442, baseType: !161, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !274, file: !199, line: 443, baseType: !161, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "drop_overflow_headers", scope: !274, file: !199, line: 444, baseType: !241, size: 8, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !274, file: !199, line: 445, baseType: !179, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !274, file: !199, line: 449, baseType: !283, size: 64, offset: 256)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !199, line: 446, size: 64, elements: !284)
!284 = !{!285, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sc", scope: !283, file: !199, line: 447, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_iso_callback_t", file: !199, line: 434, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !273, !232, !179, !128, !128}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !283, file: !199, line: 448, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_iso_mc_callback_t", file: !199, line: 437, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !273, !239, !128}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !274, file: !199, line: 450, baseType: !128, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "free_iso_context", scope: !204, file: !112, line: 97, baseType: !297, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !273}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "start_iso", scope: !204, file: !112, line: 99, baseType: !301, size: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!161, !273, !304, !232, !232}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !135, line: 20, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !137, line: 26, baseType: !161)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "set_iso_channels", scope: !204, file: !112, line: 102, baseType: !307, size: 64, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!161, !273, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "queue_iso", scope: !204, file: !112, line: 104, baseType: !312, size: 64, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!161, !273, !315, !328, !129}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_packet", file: !199, line: 393, size: 32, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !316, file: !199, line: 394, baseType: !134, size: 16)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !316, file: !199, line: 395, baseType: !232, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !316, file: !199, line: 396, baseType: !232, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !316, file: !199, line: 398, baseType: !232, size: 2, offset: 18, flags: DIFlagBitField, extraData: i64 16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !316, file: !199, line: 399, baseType: !232, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "header_length", scope: !316, file: !199, line: 400, baseType: !232, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !316, file: !199, line: 401, baseType: !325, offset: 32)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 0)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_buffer", file: !199, line: 421, size: 192, elements: !330)
!330 = !{!331, !332, !3157, !3158}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !329, file: !199, line: 422, baseType: !3, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !329, file: !199, line: 423, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !336, line: 68, size: 512, align: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !339, !3149, !3156}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !336, line: 69, baseType: !129, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 77, baseType: !340, size: 320, offset: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 77, size: 320, elements: !341)
!341 = !{!342, !3024, !3028, !3054, !3062, !3068, !3080, !3148}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 78, baseType: !343, size: 320)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 78, size: 320, elements: !344)
!344 = !{!345, !346, !3022, !3023}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !343, file: !336, line: 84, baseType: !163, size: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !343, file: !336, line: 86, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !29, line: 451, size: 1216, align: 64, elements: !349)
!349 = !{!350, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !3017, !3018, !3019, !3020, !3021}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !348, file: !29, line: 452, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !29, line: 610, size: 4224, elements: !353)
!353 = !{!354, !356, !357, !365, !372, !373, !2848, !2849, !2850, !2851, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2892, !2900, !2901, !2902, !2912, !2913, !2914, !2915}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !352, file: !29, line: 611, baseType: !355, size: 16)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !157, line: 19, baseType: !138)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !352, file: !29, line: 612, baseType: !138, size: 16, offset: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !352, file: !29, line: 613, baseType: !358, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !359, line: 23, baseType: !360)
!359 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 21, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !360, file: !359, line: 22, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !157, line: 32, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !181, line: 49, baseType: !5)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !352, file: !29, line: 614, baseType: !366, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !359, line: 28, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 26, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !367, file: !359, line: 27, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !157, line: 33, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !181, line: 50, baseType: !5)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !352, file: !29, line: 615, baseType: !5, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !352, file: !29, line: 622, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !29, line: 1864, size: 1536, align: 512, elements: !377)
!377 = !{!378, !2722, !2735, !2739, !2745, !2749, !2753, !2757, !2761, !2765, !2769, !2770, !2774, !2778, !2798, !2824, !2828, !2834, !2839, !2843, !2844}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !376, file: !29, line: 1865, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !351, !382, !5}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !384, line: 89, size: 1536, elements: !385)
!384 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !387, !397, !405, !406, !421, !422, !426, !453, !525, !2706, !2707, !2708, !2714, !2715, !2716}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !383, file: !384, line: 91, baseType: !5, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !383, file: !384, line: 92, baseType: !388, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !389, line: 277, baseType: !390)
!389 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !389, line: 277, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !390, file: !389, line: 277, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !389, line: 70, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !389, line: 65, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !394, file: !389, line: 66, baseType: !5, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !383, file: !384, line: 93, baseType: !398, size: 128, offset: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !399, line: 38, size: 128, elements: !400)
!399 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !399, line: 39, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !398, file: !399, line: 39, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !383, file: !384, line: 94, baseType: !382, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !383, file: !384, line: 95, baseType: !407, size: 128, offset: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !384, line: 47, size: 128, elements: !408)
!408 = !{!409, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !384, line: 48, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !384, line: 48, size: 64, elements: !411)
!411 = !{!412, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !384, line: 49, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !384, line: 49, size: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !413, file: !384, line: 50, baseType: !232, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !413, file: !384, line: 50, baseType: !232, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !410, file: !384, line: 52, baseType: !175, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !384, line: 54, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !383, file: !384, line: 96, baseType: !351, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !383, file: !384, line: 98, baseType: !423, size: 256, offset: 448)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !383, file: !384, line: 101, baseType: !427, size: 32, offset: 704)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !428, line: 25, size: 32, elements: !429)
!428 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !428, line: 26, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !428, line: 26, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !428, line: 30, baseType: !434, size: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !428, line: 30, size: 32, elements: !435)
!435 = !{!436, !452}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !434, file: !428, line: 31, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !438, line: 83, baseType: !439)
!438 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !438, line: 71, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !438, line: 72, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !438, line: 72, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !442, file: !438, line: 73, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !438, line: 20, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !445, file: !438, line: 21, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !449, line: 25, baseType: !450)
!449 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 25, elements: !451)
!451 = !{}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !434, file: !428, line: 32, baseType: !161, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !383, file: !384, line: 102, baseType: !454, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !384, line: 135, size: 1024, align: 512, elements: !457)
!457 = !{!458, !462, !463, !470, !479, !483, !487, !491, !492, !496, !501, !513, !519}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !456, file: !384, line: 136, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!161, !382, !5}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !456, file: !384, line: 137, baseType: !459, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !456, file: !384, line: 138, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!161, !467, !469}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !456, file: !384, line: 139, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!161, !467, !5, !474, !477}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !456, file: !384, line: 141, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!161, !467}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !456, file: !384, line: 142, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!161, !382}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !456, file: !384, line: 143, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !382}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !456, file: !384, line: 144, baseType: !488, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !456, file: !384, line: 145, baseType: !493, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !382, !351}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !456, file: !384, line: 146, baseType: !497, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !382, !500, !161}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !456, file: !384, line: 147, baseType: !502, size: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !507}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !384, line: 18, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !509, line: 8, size: 128, elements: !510)
!509 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !508, file: !509, line: 9, baseType: !505, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !508, file: !509, line: 10, baseType: !382, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !456, file: !384, line: 148, baseType: !514, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!161, !517, !241}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !456, file: !384, line: 149, baseType: !520, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!382, !382, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !383, file: !384, line: 103, baseType: !526, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !29, line: 1416, size: 9472, elements: !528)
!528 = !{!529, !530, !533, !534, !535, !539, !591, !675, !773, !856, !860, !861, !862, !863, !864, !873, !874, !875, !880, !884, !885, !888, !892, !895, !896, !897, !938, !2635, !2636, !2637, !2638, !2639, !2640, !2643, !2645, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2673, !2674, !2675, !2676, !2677, !2680, !2681, !2682, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !527, file: !29, line: 1417, baseType: !163, size: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !527, file: !29, line: 1418, baseType: !531, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !157, line: 16, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !157, line: 13, baseType: !232)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !527, file: !29, line: 1419, baseType: !142, size: 8, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !527, file: !29, line: 1420, baseType: !129, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !527, file: !29, line: 1421, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !157, line: 46, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !181, line: 88, baseType: !538)
!538 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !527, file: !29, line: 1422, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !29, line: 2228, size: 576, elements: !542)
!542 = !{!543, !544, !545, !552, !556, !560, !564, !568, !569, !579, !582, !583, !584, !588, !589, !590}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !29, line: 2229, baseType: !474, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !541, file: !29, line: 2230, baseType: !161, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !541, file: !29, line: 2238, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!161, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !551, line: 28, flags: DIFlagFwdDecl)
!551 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!552 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !541, file: !29, line: 2239, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !29, line: 70, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !541, file: !29, line: 2240, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!382, !540, !161, !474, !128}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !541, file: !29, line: 2242, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !526}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !29, line: 2243, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !567, line: 76, flags: DIFlagFwdDecl)
!567 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !29, line: 2244, baseType: !540, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !541, file: !29, line: 2245, baseType: !570, size: 64, offset: 512)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !157, line: 182, size: 64, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !570, file: !157, line: 183, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !157, line: 186, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !157, line: 187, baseType: !573, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !574, file: !157, line: 187, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !541, file: !29, line: 2247, baseType: !580, offset: 576)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !581, line: 187, elements: !451)
!581 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !541, file: !29, line: 2248, baseType: !580, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !541, file: !29, line: 2249, baseType: !580, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !541, file: !29, line: 2250, baseType: !585, offset: 576)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 3)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !541, file: !29, line: 2252, baseType: !580, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !541, file: !29, line: 2253, baseType: !580, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !541, file: !29, line: 2254, baseType: !580, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !527, file: !29, line: 1423, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !29, line: 1935, size: 1472, elements: !595)
!595 = !{!596, !600, !604, !605, !609, !615, !619, !620, !621, !625, !629, !630, !631, !632, !638, !643, !644, !651, !652, !653, !654, !658, !674}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !594, file: !29, line: 1936, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!351, !526}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !594, file: !29, line: 1937, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !351}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !594, file: !29, line: 1938, baseType: !601, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !594, file: !29, line: 1940, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !351, !161}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !594, file: !29, line: 1941, baseType: !610, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!161, !351, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !23, line: 40, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !594, file: !29, line: 1942, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!161, !351}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !594, file: !29, line: 1943, baseType: !601, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !594, file: !29, line: 1944, baseType: !561, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !594, file: !29, line: 1945, baseType: !622, size: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!161, !526, !161}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !594, file: !29, line: 1946, baseType: !626, size: 64, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!161, !526}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !594, file: !29, line: 1947, baseType: !626, size: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !594, file: !29, line: 1948, baseType: !626, size: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !594, file: !29, line: 1949, baseType: !626, size: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !594, file: !29, line: 1950, baseType: !633, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!161, !382, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !29, line: 57, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !594, file: !29, line: 1951, baseType: !639, size: 64, offset: 896)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!161, !526, !642, !500}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !594, file: !29, line: 1952, baseType: !561, size: 64, offset: 960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !594, file: !29, line: 1954, baseType: !645, size: 64, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!161, !648, !382}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !650, line: 539, flags: DIFlagFwdDecl)
!650 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!651 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !594, file: !29, line: 1955, baseType: !645, size: 64, offset: 1088)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !594, file: !29, line: 1956, baseType: !645, size: 64, offset: 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !594, file: !29, line: 1957, baseType: !645, size: 64, offset: 1216)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !594, file: !29, line: 1963, baseType: !655, size: 64, offset: 1280)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!161, !526, !334, !178}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !594, file: !29, line: 1964, baseType: !659, size: 64, offset: 1344)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!662, !526, !663}
!662 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !665, line: 12, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !668, !669, !670, !671}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !664, file: !665, line: 13, baseType: !178, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !664, file: !665, line: 16, baseType: !161, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !664, file: !665, line: 23, baseType: !129, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !664, file: !665, line: 30, baseType: !129, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !664, file: !665, line: 33, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !336, line: 27, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !594, file: !29, line: 1966, baseType: !659, size: 64, offset: 1408)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !527, file: !29, line: 1424, baseType: !676, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !679)
!679 = !{!680, !742, !746, !750, !751, !752, !753, !754, !759, !764, !768}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !678, file: !12, line: 323, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!161, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !706, !707, !708, !709, !725, !726, !727}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !685, file: !12, line: 295, baseType: !574, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !685, file: !12, line: 296, baseType: !163, size: 128, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !685, file: !12, line: 297, baseType: !163, size: 128, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !685, file: !12, line: 298, baseType: !163, size: 128, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !685, file: !12, line: 299, baseType: !692, size: 192, offset: 512)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !693, line: 53, size: 192, elements: !694)
!693 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !704, !705}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !692, file: !693, line: 54, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !697, line: 13, baseType: !698)
!697 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !157, line: 175, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 173, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !699, file: !157, line: 174, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !135, line: 22, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !137, line: 30, baseType: !538)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !692, file: !693, line: 55, baseType: !437, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !692, file: !693, line: 59, baseType: !163, size: 128, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !685, file: !12, line: 300, baseType: !437, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !685, file: !12, line: 301, baseType: !156, size: 32, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !685, file: !12, line: 302, baseType: !526, size: 64, offset: 768)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !685, file: !12, line: 303, baseType: !710, size: 64, offset: 832)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !711)
!711 = !{!712, !724}
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !12, line: 69, baseType: !713, size: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !12, line: 69, size: 32, elements: !714)
!714 = !{!715, !716, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !713, file: !12, line: 70, baseType: !358, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !713, file: !12, line: 71, baseType: !366, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !713, file: !12, line: 72, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !719, line: 24, baseType: !720)
!719 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !719, line: 22, size: 32, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !720, file: !719, line: 23, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !719, line: 20, baseType: !364)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !685, file: !12, line: 304, baseType: !536, size: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !685, file: !12, line: 305, baseType: !129, size: 64, offset: 960)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !685, file: !12, line: 306, baseType: !728, size: 576, offset: 1024)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !729)
!729 = !{!730, !732, !733, !734, !735, !736, !737, !738, !741}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !728, file: !12, line: 206, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !538)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !728, file: !12, line: 207, baseType: !731, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !728, file: !12, line: 208, baseType: !731, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !728, file: !12, line: 209, baseType: !731, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !728, file: !12, line: 210, baseType: !731, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !728, file: !12, line: 211, baseType: !731, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !728, file: !12, line: 212, baseType: !731, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !728, file: !12, line: 213, baseType: !739, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !740, line: 8, baseType: !703)
!740 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !728, file: !12, line: 214, baseType: !739, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !678, file: !12, line: 324, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!684, !526, !161}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !678, file: !12, line: 325, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !684}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !678, file: !12, line: 326, baseType: !681, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !678, file: !12, line: 327, baseType: !681, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !678, file: !12, line: 328, baseType: !681, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !678, file: !12, line: 329, baseType: !622, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !678, file: !12, line: 332, baseType: !755, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !351}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !678, file: !12, line: 333, baseType: !760, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!161, !351, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !678, file: !12, line: 335, baseType: !765, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!161, !351, !758}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !678, file: !12, line: 337, baseType: !769, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!161, !526, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !527, file: !29, line: 1425, baseType: !774, size: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !777)
!777 = !{!778, !782, !783, !787, !788, !789, !804, !827, !831, !832, !855}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !776, file: !12, line: 429, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!161, !526, !161, !161, !517}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !776, file: !12, line: 430, baseType: !622, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !776, file: !12, line: 431, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!161, !526, !5}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !776, file: !12, line: 432, baseType: !784, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !776, file: !12, line: 433, baseType: !622, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !776, file: !12, line: 434, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!161, !526, !161, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !794, file: !12, line: 416, baseType: !161, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !794, file: !12, line: 417, baseType: !5, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !794, file: !12, line: 418, baseType: !5, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !794, file: !12, line: 420, baseType: !5, size: 32, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !794, file: !12, line: 421, baseType: !5, size: 32, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !794, file: !12, line: 422, baseType: !5, size: 32, offset: 160)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !794, file: !12, line: 423, baseType: !5, size: 32, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !794, file: !12, line: 424, baseType: !5, size: 32, offset: 224)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !776, file: !12, line: 435, baseType: !805, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!161, !526, !710, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !809, file: !12, line: 344, baseType: !161, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !809, file: !12, line: 345, baseType: !175, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !809, file: !12, line: 346, baseType: !175, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !809, file: !12, line: 347, baseType: !175, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !809, file: !12, line: 348, baseType: !175, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !809, file: !12, line: 349, baseType: !175, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !809, file: !12, line: 350, baseType: !175, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !809, file: !12, line: 351, baseType: !702, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !809, file: !12, line: 353, baseType: !702, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !809, file: !12, line: 354, baseType: !161, size: 32, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !809, file: !12, line: 355, baseType: !161, size: 32, offset: 608)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !809, file: !12, line: 356, baseType: !175, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !809, file: !12, line: 357, baseType: !175, size: 64, offset: 704)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !809, file: !12, line: 358, baseType: !175, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !809, file: !12, line: 359, baseType: !702, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !809, file: !12, line: 360, baseType: !161, size: 32, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !776, file: !12, line: 436, baseType: !828, size: 64, offset: 448)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!161, !526, !772, !808}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !776, file: !12, line: 438, baseType: !805, size: 64, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !776, file: !12, line: 439, baseType: !833, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!161, !526, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !837, file: !12, line: 410, baseType: !5, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !837, file: !12, line: 411, baseType: !841, size: 1344, offset: 64)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 1344, elements: !586)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !854}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !12, line: 396, baseType: !5, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !842, file: !12, line: 397, baseType: !5, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !842, file: !12, line: 399, baseType: !5, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !842, file: !12, line: 400, baseType: !5, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !842, file: !12, line: 401, baseType: !5, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !842, file: !12, line: 402, baseType: !5, size: 32, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !842, file: !12, line: 403, baseType: !5, size: 32, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !842, file: !12, line: 404, baseType: !177, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !842, file: !12, line: 405, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !157, line: 126, baseType: !175)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !842, file: !12, line: 406, baseType: !853, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !776, file: !12, line: 440, baseType: !784, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !527, file: !29, line: 1426, baseType: !857, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !29, line: 49, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !527, file: !29, line: 1427, baseType: !129, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !527, file: !29, line: 1428, baseType: !129, size: 64, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !527, file: !29, line: 1429, baseType: !129, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !527, file: !29, line: 1430, baseType: !382, size: 64, offset: 832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !527, file: !29, line: 1431, baseType: !865, size: 256, offset: 896)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !866, line: 35, size: 256, elements: !867)
!866 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !869, !870, !872}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !865, file: !866, line: 36, baseType: !696, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !865, file: !866, line: 42, baseType: !696, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !865, file: !866, line: 46, baseType: !871, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !438, line: 29, baseType: !445)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !865, file: !866, line: 47, baseType: !163, size: 128, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !527, file: !29, line: 1432, baseType: !161, size: 32, offset: 1152)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !527, file: !29, line: 1433, baseType: !156, size: 32, offset: 1184)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !527, file: !29, line: 1437, baseType: !876, size: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !29, line: 1437, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !527, file: !29, line: 1449, baseType: !881, size: 64, offset: 1280)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !399, line: 34, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !881, file: !399, line: 35, baseType: !402, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !527, file: !29, line: 1450, baseType: !163, size: 128, offset: 1344)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !527, file: !29, line: 1451, baseType: !886, size: 64, offset: 1472)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !29, line: 699, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !527, file: !29, line: 1452, baseType: !889, size: 64, offset: 1536)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !891, line: 40, flags: DIFlagFwdDecl)
!891 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !527, file: !29, line: 1453, baseType: !893, size: 64, offset: 1600)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !29, line: 1453, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !527, file: !29, line: 1454, baseType: !574, size: 128, offset: 1664)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !527, file: !29, line: 1455, baseType: !5, size: 32, offset: 1792)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !527, file: !29, line: 1456, baseType: !898, size: 2432, offset: 1856)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !899)
!899 = !{!900, !901, !902, !904, !936}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !12, line: 519, baseType: !5, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !898, file: !12, line: 520, baseType: !865, size: 256, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !898, file: !12, line: 521, baseType: !903, size: 192, offset: 320)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 192, elements: !586)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !898, file: !12, line: 522, baseType: !905, size: 1728, offset: 512)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 1728, elements: !586)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !907)
!907 = !{!908, !928, !929, !930, !931, !932, !933, !934, !935}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !906, file: !12, line: 223, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !911)
!911 = !{!912, !913, !926, !927}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !910, file: !12, line: 444, baseType: !161, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !910, file: !12, line: 445, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !916, file: !12, line: 311, baseType: !622, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !916, file: !12, line: 312, baseType: !622, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !916, file: !12, line: 313, baseType: !622, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !916, file: !12, line: 314, baseType: !622, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !916, file: !12, line: 315, baseType: !681, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !916, file: !12, line: 316, baseType: !681, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !916, file: !12, line: 317, baseType: !681, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !916, file: !12, line: 318, baseType: !769, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !910, file: !12, line: 446, baseType: !565, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !910, file: !12, line: 447, baseType: !909, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !906, file: !12, line: 224, baseType: !161, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !906, file: !12, line: 226, baseType: !163, size: 128, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !906, file: !12, line: 227, baseType: !129, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !906, file: !12, line: 228, baseType: !5, size: 32, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !906, file: !12, line: 229, baseType: !5, size: 32, offset: 352)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !906, file: !12, line: 230, baseType: !731, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !906, file: !12, line: 231, baseType: !731, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !906, file: !12, line: 232, baseType: !128, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !898, file: !12, line: 523, baseType: !937, size: 192, offset: 2240)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 192, elements: !586)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !527, file: !29, line: 1458, baseType: !939, size: 2112, offset: 4288)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !29, line: 1410, size: 2112, elements: !940)
!940 = !{!941, !942, !949}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !939, file: !29, line: 1411, baseType: !161, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !939, file: !29, line: 1412, baseType: !943, size: 128, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !944, line: 40, baseType: !945)
!944 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !944, line: 36, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !944, line: 37, baseType: !437)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !945, file: !944, line: 38, baseType: !163, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !939, file: !29, line: 1413, baseType: !950, size: 1920, offset: 192)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 1920, elements: !586)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !952, line: 12, size: 640, elements: !953)
!952 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954, !970, !972, !2633, !2634}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !951, file: !952, line: 13, baseType: !955, size: 320)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !956, line: 17, size: 320, elements: !957)
!956 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !955, file: !956, line: 18, baseType: !161, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !955, file: !956, line: 19, baseType: !161, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !955, file: !956, line: 20, baseType: !943, size: 128, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !955, file: !956, line: 22, baseType: !962, size: 128, align: 64, offset: 192)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !157, line: 216, size: 128, align: 64, elements: !963)
!963 = !{!964, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !962, file: !157, line: 217, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !962, file: !157, line: 218, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !965}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !951, file: !952, line: 14, baseType: !971, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !951, file: !952, line: 15, baseType: !973, size: 64, offset: 384)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !974, line: 16, size: 64, elements: !975)
!974 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !973, file: !974, line: 17, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !891, line: 640, size: 48640, elements: !979)
!979 = !{!980, !986, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !1001, !1026, !1037, !1127, !1128, !1129, !1140, !1141, !1143, !1144, !1927, !1928, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !2005, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2020, !2021, !2022, !2024, !2025, !2026, !2027, !2028, !2029, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2053, !2058, !2059, !2060, !2061, !2062, !2066, !2069, !2072, !2075, !2078, !2081, !2182, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2230, !2231, !2232, !2233, !2234, !2239, !2240, !2241, !2244, !2245, !2248, !2251, !2254, !2255, !2295, !2298, !2299, !2378, !2379, !2382, !2383, !2386, !2387, !2388, !2392, !2393, !2394, !2407, !2408, !2409, !2419, !2424, !2425, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !978, file: !891, line: 646, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !982, line: 56, size: 128, elements: !983)
!982 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !982, line: 57, baseType: !129, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !981, file: !982, line: 58, baseType: !232, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !978, file: !891, line: 649, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !662)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !978, file: !891, line: 657, baseType: !128, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !978, file: !891, line: 658, baseType: !152, size: 32, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !891, line: 660, baseType: !5, size: 32, offset: 288)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !978, file: !891, line: 661, baseType: !5, size: 32, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !978, file: !891, line: 684, baseType: !161, size: 32, offset: 352)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !978, file: !891, line: 686, baseType: !161, size: 32, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !978, file: !891, line: 687, baseType: !161, size: 32, offset: 416)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !978, file: !891, line: 688, baseType: !161, size: 32, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !978, file: !891, line: 689, baseType: !5, size: 32, offset: 480)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !978, file: !891, line: 691, baseType: !998, size: 64, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !891, line: 691, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !978, file: !891, line: 692, baseType: !1002, size: 832, offset: 576)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !891, line: 451, size: 832, elements: !1003)
!1003 = !{!1004, !1009, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1002, file: !891, line: 453, baseType: !1005, size: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !891, line: 325, size: 128, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1005, file: !891, line: 326, baseType: !129, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1005, file: !891, line: 327, baseType: !232, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1002, file: !891, line: 454, baseType: !1010, size: 192, align: 64, offset: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1011, line: 24, size: 192, align: 64, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1012 = !{!1013, !1014, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1010, file: !1011, line: 25, baseType: !129, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1010, file: !1011, line: 26, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1010, file: !1011, line: 27, baseType: !1015, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1002, file: !891, line: 455, baseType: !163, size: 128, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1002, file: !891, line: 456, baseType: !5, size: 32, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1002, file: !891, line: 458, baseType: !175, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1002, file: !891, line: 459, baseType: !175, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1002, file: !891, line: 460, baseType: !175, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1002, file: !891, line: 461, baseType: !175, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1002, file: !891, line: 463, baseType: !175, size: 64, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1002, file: !891, line: 465, baseType: !1025, offset: 832)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !891, line: 415, elements: !451)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !978, file: !891, line: 693, baseType: !1027, size: 384, offset: 1408)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !891, line: 489, size: 384, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1027, file: !891, line: 490, baseType: !163, size: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1027, file: !891, line: 491, baseType: !129, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1027, file: !891, line: 492, baseType: !129, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1027, file: !891, line: 493, baseType: !5, size: 32, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1027, file: !891, line: 494, baseType: !138, size: 16, offset: 288)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1027, file: !891, line: 495, baseType: !138, size: 16, offset: 304)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1027, file: !891, line: 497, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !978, file: !891, line: 697, baseType: !1038, size: 1792, offset: 1792)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !891, line: 507, size: 1792, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1124, !1125}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1038, file: !891, line: 508, baseType: !1010, size: 192, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1038, file: !891, line: 515, baseType: !175, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1038, file: !891, line: 516, baseType: !175, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1038, file: !891, line: 517, baseType: !175, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1038, file: !891, line: 518, baseType: !175, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1038, file: !891, line: 519, baseType: !175, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1038, file: !891, line: 526, baseType: !702, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1038, file: !891, line: 527, baseType: !175, size: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !891, line: 528, baseType: !5, size: 32, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1038, file: !891, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1038, file: !891, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1038, file: !891, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1038, file: !891, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1038, file: !891, line: 563, baseType: !1054, size: 512, offset: 704)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1055)
!1055 = !{!1056, !1064, !1065, !1070, !1120, !1121, !1122, !1123}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !18, line: 119, baseType: !1057, size: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1058, line: 9, size: 256, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1057, file: !1058, line: 10, baseType: !1010, size: 192, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1057, file: !1058, line: 11, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1063, line: 29, baseType: !702)
!1063 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1054, file: !18, line: 120, baseType: !1062, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1054, file: !18, line: 121, baseType: !1066, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!17, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1054, file: !18, line: 122, baseType: !1071, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1073)
!1073 = !{!1074, !1094, !1095, !1098, !1103, !1104, !1115, !1119}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1072, file: !18, line: 160, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1076, file: !18, line: 215, baseType: !871)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1076, file: !18, line: 216, baseType: !5, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1076, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1076, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1076, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1076, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1076, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1076, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1076, file: !18, line: 233, baseType: !1062, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1076, file: !18, line: 234, baseType: !1069, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1076, file: !18, line: 235, baseType: !1062, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1076, file: !18, line: 236, baseType: !1069, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1076, file: !18, line: 237, baseType: !1091, size: 4096, offset: 512)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 4096, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 8)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1072, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1072, file: !18, line: 162, baseType: !1096, size: 32, offset: 96)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !157, line: 27, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !181, line: 96, baseType: !161)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1072, file: !18, line: 163, baseType: !1099, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !389, line: 276, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !389, line: 276, size: 32, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1100, file: !389, line: 276, baseType: !393, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1072, file: !18, line: 164, baseType: !1069, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1072, file: !18, line: 165, baseType: !1105, size: 128, offset: 256)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1058, line: 14, size: 128, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1105, file: !1058, line: 15, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1011, line: 125, size: 128, elements: !1109)
!1109 = !{!1110, !1114}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1108, file: !1011, line: 126, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1011, line: 31, size: 64, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1111, file: !1011, line: 32, baseType: !1015, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1108, file: !1011, line: 127, baseType: !1015, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1072, file: !18, line: 166, baseType: !1116, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1062}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1072, file: !18, line: 167, baseType: !1062, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1054, file: !18, line: 123, baseType: !140, size: 8, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1054, file: !18, line: 124, baseType: !140, size: 8, offset: 456)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1054, file: !18, line: 125, baseType: !140, size: 8, offset: 464)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1054, file: !18, line: 126, baseType: !140, size: 8, offset: 472)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1038, file: !891, line: 572, baseType: !1054, size: 512, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1038, file: !891, line: 580, baseType: !1126, size: 64, offset: 1728)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !978, file: !891, line: 721, baseType: !5, size: 32, offset: 3584)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !978, file: !891, line: 722, baseType: !161, size: 32, offset: 3616)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !978, file: !891, line: 723, baseType: !1130, size: 64, offset: 3648)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1133, line: 17, baseType: !1134)
!1133 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1133, line: 17, size: 64, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1134, file: !1133, line: 17, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 1)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !978, file: !891, line: 724, baseType: !1132, size: 64, offset: 3712)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !978, file: !891, line: 749, baseType: !1142, offset: 3776)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !891, line: 290, elements: !451)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !978, file: !891, line: 751, baseType: !163, size: 128, offset: 3776)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !978, file: !891, line: 757, baseType: !1145, size: 64, offset: 3904)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !336, line: 388, size: 7296, elements: !1147)
!1147 = !{!1148, !1925}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !336, line: 389, baseType: !1149, size: 7296)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !336, line: 389, size: 7296, elements: !1150)
!1150 = !{!1151, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1827, !1833, !1836, !1875, !1876, !1898, !1899, !1902, !1903, !1904, !1907, !1908, !1909, !1912, !1924}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1149, file: !336, line: 390, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !336, line: 305, size: 1472, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1169, !1170, !1175, !1176, !1179, !1264, !1265, !1775, !1776, !1777}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1153, file: !336, line: 308, baseType: !129, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1153, file: !336, line: 309, baseType: !129, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1153, file: !336, line: 313, baseType: !1152, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1153, file: !336, line: 313, baseType: !1152, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1153, file: !336, line: 315, baseType: !1010, size: 192, align: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1153, file: !336, line: 323, baseType: !129, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1153, file: !336, line: 327, baseType: !1145, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1153, file: !336, line: 333, baseType: !1163, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !650, line: 284, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !650, line: 284, size: 64, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1164, file: !650, line: 284, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1168, line: 19, baseType: !129)
!1168 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1153, file: !336, line: 334, baseType: !129, size: 64, offset: 640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1153, file: !336, line: 343, baseType: !1171, size: 256, offset: 704)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1153, file: !336, line: 340, size: 256, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1171, file: !336, line: 341, baseType: !1010, size: 192, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1171, file: !336, line: 342, baseType: !129, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1153, file: !336, line: 351, baseType: !163, size: 128, offset: 960)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1153, file: !336, line: 353, baseType: !1177, size: 64, offset: 1088)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !336, line: 353, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1153, file: !336, line: 356, baseType: !1180, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !23, line: 557, size: 832, elements: !1183)
!1183 = !{!1184, !1188, !1189, !1193, !1197, !1238, !1242, !1246, !1250, !1251, !1252, !1256, !1260}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1182, file: !23, line: 558, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1152}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1182, file: !23, line: 559, baseType: !1185, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1182, file: !23, line: 560, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!161, !1152, !129}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1182, file: !23, line: 561, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!161, !1152}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1182, file: !23, line: 562, baseType: !1198, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !336, line: 682, baseType: !5)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !23, line: 508, size: 768, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1217, !1224, !1230, !1231, !1232, !1234, !1236}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1203, file: !23, line: 509, baseType: !1152, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1203, file: !23, line: 510, baseType: !5, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1203, file: !23, line: 511, baseType: !178, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1203, file: !23, line: 512, baseType: !129, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1203, file: !23, line: 513, baseType: !129, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1203, file: !23, line: 514, baseType: !1211, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !650, line: 385, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !650, line: 385, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1213, file: !650, line: 385, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1168, line: 15, baseType: !129)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1203, file: !23, line: 516, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !650, line: 359, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !650, line: 359, size: 64, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1220, file: !650, line: 359, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1168, line: 16, baseType: !129)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1203, file: !23, line: 519, baseType: !1225, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1168, line: 21, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1168, line: 21, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1226, file: !1168, line: 21, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1168, line: 14, baseType: !129)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1203, file: !23, line: 521, baseType: !334, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1203, file: !23, line: 522, baseType: !334, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1203, file: !23, line: 528, baseType: !1233, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1203, file: !23, line: 532, baseType: !1235, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1203, file: !23, line: 536, baseType: !1237, size: 64, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !650, line: 509, baseType: !334)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1182, file: !23, line: 563, baseType: !1239, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1201, !1202, !22}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1182, file: !23, line: 565, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !1202, !129, !129}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1182, file: !23, line: 567, baseType: !1247, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!129, !1152}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1182, file: !23, line: 571, baseType: !1198, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1182, file: !23, line: 574, baseType: !1198, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1182, file: !23, line: 579, baseType: !1253, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!161, !1152, !129, !128, !161, !161}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1182, file: !23, line: 585, baseType: !1257, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!474, !1152}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1182, file: !23, line: 615, baseType: !1261, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!334, !1152, !129}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1153, file: !336, line: 359, baseType: !129, size: 64, offset: 1216)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1153, file: !336, line: 361, baseType: !1266, size: 64, offset: 1280)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !29, line: 916, size: 1856, align: 32, elements: !1268)
!1268 = !{!1269, !1279, !1280, !1281, !1537, !1538, !1539, !1540, !1541, !1543, !1544, !1545, !1573, !1757, !1766, !1767, !1768, !1769, !1770, !1771, !1774}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1267, file: !29, line: 920, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !29, line: 917, size: 128, elements: !1271)
!1271 = !{!1272, !1278}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1270, file: !29, line: 918, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1274, line: 58, size: 64, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1273, file: !1274, line: 59, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1270, file: !29, line: 919, baseType: !962, size: 128, align: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1267, file: !29, line: 921, baseType: !508, size: 128, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1267, file: !29, line: 922, baseType: !351, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1267, file: !29, line: 923, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !29, line: 1822, size: 2048, elements: !1285)
!1285 = !{!1286, !1287, !1291, !1299, !1303, !1329, !1330, !1334, !1347, !1348, !1355, !1359, !1360, !1364, !1365, !1369, !1374, !1375, !1379, !1383, !1492, !1496, !1500, !1504, !1505, !1511, !1515, !1520, !1524, !1528, !1532, !1536}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1284, file: !29, line: 1823, baseType: !565, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1284, file: !29, line: 1824, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!536, !1266, !536, !161}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1284, file: !29, line: 1825, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!1295, !1266, !500, !179, !1298}
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !157, line: 60, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !181, line: 73, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !181, line: 15, baseType: !662)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1284, file: !29, line: 1826, baseType: !1300, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1295, !1266, !474, !179, !1298}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1284, file: !29, line: 1827, baseType: !1304, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1295, !1307, !1327}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !29, line: 320, size: 384, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1316, !1317, !1318, !1319, !1320}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1308, file: !29, line: 321, baseType: !1266, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1308, file: !29, line: 326, baseType: !536, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1308, file: !29, line: 327, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1307, !662, !662}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1308, file: !29, line: 328, baseType: !128, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1308, file: !29, line: 329, baseType: !161, size: 32, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1308, file: !29, line: 330, baseType: !134, size: 16, offset: 288)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1308, file: !29, line: 331, baseType: !134, size: 16, offset: 304)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !29, line: 332, baseType: !1321, size: 64, offset: 320)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !29, line: 332, size: 64, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1321, file: !29, line: 333, baseType: !5, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1321, file: !29, line: 334, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !29, line: 334, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !29, line: 64, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1284, file: !29, line: 1828, baseType: !1304, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1284, file: !29, line: 1829, baseType: !1331, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!161, !1307, !241}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1284, file: !29, line: 1830, baseType: !1335, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!161, !1266, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !29, line: 1776, size: 128, elements: !1340)
!1340 = !{!1341, !1346}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1339, file: !29, line: 1777, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !29, line: 1773, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!161, !1338, !474, !161, !536, !175, !5}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1339, file: !29, line: 1778, baseType: !536, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1284, file: !29, line: 1831, baseType: !1335, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1284, file: !29, line: 1832, baseType: !1349, size: 64, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !1266, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !186, line: 52, baseType: !5)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !551, line: 27, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1284, file: !29, line: 1833, baseType: !1356, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!662, !1266, !5, !129}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1284, file: !29, line: 1834, baseType: !1356, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1284, file: !29, line: 1835, baseType: !1361, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!161, !1266, !1152}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1284, file: !29, line: 1836, baseType: !129, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1284, file: !29, line: 1837, baseType: !1366, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!161, !351, !1266}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1284, file: !29, line: 1838, baseType: !1370, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!161, !1266, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !29, line: 1007, baseType: !128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1284, file: !29, line: 1839, baseType: !1366, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1284, file: !29, line: 1840, baseType: !1376, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!161, !1266, !536, !536, !161}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1284, file: !29, line: 1841, baseType: !1380, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!161, !161, !1266, !161}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1284, file: !29, line: 1842, baseType: !1384, size: 64, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!161, !1266, !161, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !29, line: 1062, size: 1664, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1421, !1422, !1423, !1436, !1468}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1388, file: !29, line: 1063, baseType: !1387, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1388, file: !29, line: 1064, baseType: !163, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1388, file: !29, line: 1065, baseType: !574, size: 128, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1388, file: !29, line: 1066, baseType: !163, size: 128, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1388, file: !29, line: 1069, baseType: !163, size: 128, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1388, file: !29, line: 1072, baseType: !1373, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1388, file: !29, line: 1073, baseType: !5, size: 32, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1388, file: !29, line: 1074, baseType: !142, size: 8, offset: 672)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1388, file: !29, line: 1075, baseType: !5, size: 32, offset: 704)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1388, file: !29, line: 1076, baseType: !161, size: 32, offset: 736)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1388, file: !29, line: 1077, baseType: !943, size: 128, offset: 768)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1388, file: !29, line: 1078, baseType: !1266, size: 64, offset: 896)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1388, file: !29, line: 1079, baseType: !536, size: 64, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1388, file: !29, line: 1080, baseType: !536, size: 64, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1388, file: !29, line: 1082, baseType: !1405, size: 64, offset: 1088)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !29, line: 1314, size: 320, elements: !1407)
!1407 = !{!1408, !1416, !1417, !1418, !1419, !1420}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1406, file: !29, line: 1315, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1410, line: 20, baseType: !1411)
!1410 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 11, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1411, file: !1410, line: 12, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !449, line: 33, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 31, elements: !451)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1406, file: !29, line: 1316, baseType: !161, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1406, file: !29, line: 1317, baseType: !161, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1406, file: !29, line: 1318, baseType: !1405, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1406, file: !29, line: 1319, baseType: !1266, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1406, file: !29, line: 1320, baseType: !962, size: 128, align: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1388, file: !29, line: 1084, baseType: !129, size: 64, offset: 1152)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1388, file: !29, line: 1085, baseType: !129, size: 64, offset: 1216)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1388, file: !29, line: 1087, baseType: !1424, size: 64, offset: 1280)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !29, line: 1011, size: 128, elements: !1427)
!1427 = !{!1428, !1432}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1426, file: !29, line: 1012, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !1387, !1387}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1426, file: !29, line: 1013, baseType: !1433, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1387}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1388, file: !29, line: 1088, baseType: !1437, size: 64, offset: 1344)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !29, line: 1016, size: 512, elements: !1440)
!1440 = !{!1441, !1445, !1449, !1450, !1454, !1458, !1462, !1467}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1439, file: !29, line: 1017, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1373, !1373}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1439, file: !29, line: 1018, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1373}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1439, file: !29, line: 1019, baseType: !1433, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1439, file: !29, line: 1020, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!161, !1387, !161}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1439, file: !29, line: 1021, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!241, !1387}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1439, file: !29, line: 1022, baseType: !1459, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!161, !1387, !161, !166}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1439, file: !29, line: 1023, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1387, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1439, file: !29, line: 1024, baseType: !1455, size: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1388, file: !29, line: 1097, baseType: !1469, size: 256, offset: 1408)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !29, line: 1089, size: 256, elements: !1470)
!1470 = !{!1471, !1480, !1486}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1469, file: !29, line: 1090, baseType: !1472, size: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1473, line: 10, size: 256, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476, !1479}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1472, file: !1473, line: 11, baseType: !232, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1472, file: !1473, line: 12, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1473, line: 5, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1472, file: !1473, line: 13, baseType: !163, size: 128, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1469, file: !29, line: 1091, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1473, line: 17, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1481, file: !1473, line: 18, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1473, line: 16, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1469, file: !29, line: 1096, baseType: !1487, size: 192)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !29, line: 1092, size: 192, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1487, file: !29, line: 1093, baseType: !163, size: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1487, file: !29, line: 1094, baseType: !161, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1487, file: !29, line: 1095, baseType: !5, size: 32, offset: 160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1284, file: !29, line: 1843, baseType: !1493, size: 64, offset: 1280)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1295, !1266, !334, !161, !179, !1298, !161}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1284, file: !29, line: 1844, baseType: !1497, size: 64, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!129, !1266, !129, !129, !129, !129}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1284, file: !29, line: 1845, baseType: !1501, size: 64, offset: 1408)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!161, !161}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1284, file: !29, line: 1846, baseType: !1384, size: 64, offset: 1472)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1284, file: !29, line: 1847, baseType: !1506, size: 64, offset: 1536)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1295, !1509, !1266, !1298, !179, !5}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !891, line: 53, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1284, file: !29, line: 1848, baseType: !1512, size: 64, offset: 1600)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1295, !1266, !1298, !1509, !179, !5}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1284, file: !29, line: 1849, baseType: !1516, size: 64, offset: 1664)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!161, !1266, !662, !1519, !1466}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1284, file: !29, line: 1850, baseType: !1521, size: 64, offset: 1728)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!662, !1266, !161, !536, !536}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1284, file: !29, line: 1852, baseType: !1525, size: 64, offset: 1792)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !648, !1266}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1284, file: !29, line: 1856, baseType: !1529, size: 64, offset: 1856)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1295, !1266, !536, !1266, !536, !179, !5}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1284, file: !29, line: 1858, baseType: !1533, size: 64, offset: 1920)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!536, !1266, !536, !1266, !536, !536, !5}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1284, file: !29, line: 1861, baseType: !1376, size: 64, offset: 1984)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1267, file: !29, line: 929, baseType: !437, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1267, file: !29, line: 930, baseType: !28, size: 32, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1267, file: !29, line: 931, baseType: !696, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1267, file: !29, line: 932, baseType: !5, size: 32, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1267, file: !29, line: 933, baseType: !1542, size: 32, offset: 544)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !157, line: 150, baseType: !5)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1267, file: !29, line: 934, baseType: !692, size: 192, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1267, file: !29, line: 935, baseType: !536, size: 64, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1267, file: !29, line: 936, baseType: !1546, size: 192, offset: 832)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !29, line: 885, size: 192, elements: !1547)
!1547 = !{!1548, !1549, !1569, !1570, !1571, !1572}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1546, file: !29, line: 886, baseType: !1409)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1546, file: !29, line: 887, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !38, line: 59, size: 768, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1558, !1559, !1560, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1551, file: !38, line: 61, baseType: !152, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1551, file: !38, line: 62, baseType: !5, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1551, file: !38, line: 63, baseType: !437, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1551, file: !38, line: 65, baseType: !1557, size: 256, offset: 64)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 256, elements: !233)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1551, file: !38, line: 66, baseType: !570, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1551, file: !38, line: 68, baseType: !943, size: 128, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1551, file: !38, line: 69, baseType: !962, size: 128, align: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1551, file: !38, line: 70, baseType: !1562, size: 128, offset: 640)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 128, elements: !1138)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !38, line: 54, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1563, file: !38, line: 55, baseType: !161, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1563, file: !38, line: 56, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !38, line: 56, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1546, file: !29, line: 888, baseType: !37, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !29, line: 889, baseType: !358, size: 32, offset: 96)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1546, file: !29, line: 889, baseType: !358, size: 32, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1546, file: !29, line: 890, baseType: !161, size: 32, offset: 160)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1267, file: !29, line: 937, baseType: !1574, size: 64, offset: 1024)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1577, line: 111, size: 1280, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1598, !1599, !1600, !1601, !1602, !1603, !1712, !1713, !1714, !1715, !1741, !1744, !1752}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1576, file: !1577, line: 112, baseType: !156, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1576, file: !1577, line: 120, baseType: !358, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1576, file: !1577, line: 121, baseType: !366, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1576, file: !1577, line: 122, baseType: !358, size: 32, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1576, file: !1577, line: 123, baseType: !366, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1576, file: !1577, line: 124, baseType: !358, size: 32, offset: 160)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1576, file: !1577, line: 125, baseType: !366, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1576, file: !1577, line: 126, baseType: !358, size: 32, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1576, file: !1577, line: 127, baseType: !366, size: 32, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1576, file: !1577, line: 128, baseType: !5, size: 32, offset: 288)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1576, file: !1577, line: 129, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1591, line: 26, baseType: !1592)
!1591 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1591, line: 24, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1592, file: !1591, line: 25, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 2)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1576, file: !1577, line: 130, baseType: !1590, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1576, file: !1577, line: 131, baseType: !1590, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1576, file: !1577, line: 132, baseType: !1590, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1576, file: !1577, line: 133, baseType: !1590, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1576, file: !1577, line: 135, baseType: !142, size: 8, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1576, file: !1577, line: 137, baseType: !1604, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1606, line: 189, size: 1664, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1609, !1612, !1617, !1618, !1621, !1622, !1627, !1628, !1629, !1630, !1633, !1634, !1635, !1637, !1638, !1676, !1697}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1605, file: !1606, line: 190, baseType: !152, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1605, file: !1606, line: 191, baseType: !1610, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1606, line: 28, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !157, line: 98, baseType: !304)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 192, baseType: !1613, size: 192, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 192, size: 192, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1613, file: !1606, line: 193, baseType: !163, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1613, file: !1606, line: 194, baseType: !1010, size: 192, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1605, file: !1606, line: 199, baseType: !865, size: 256, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1605, file: !1606, line: 200, baseType: !1619, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1606, line: 200, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1605, file: !1606, line: 201, baseType: !128, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 202, baseType: !1623, size: 64, offset: 640)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 202, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1623, file: !1606, line: 203, baseType: !739, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1623, file: !1606, line: 204, baseType: !739, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1605, file: !1606, line: 206, baseType: !739, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1605, file: !1606, line: 207, baseType: !358, size: 32, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1605, file: !1606, line: 208, baseType: !366, size: 32, offset: 800)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1605, file: !1606, line: 209, baseType: !1631, size: 32, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1606, line: 31, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !157, line: 104, baseType: !232)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1605, file: !1606, line: 210, baseType: !138, size: 16, offset: 864)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1605, file: !1606, line: 211, baseType: !138, size: 16, offset: 880)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1605, file: !1606, line: 215, baseType: !1636, size: 16, offset: 896)
!1636 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !1606, line: 222, baseType: !129, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 239, baseType: !1639, size: 320, offset: 1024)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 239, size: 320, elements: !1640)
!1640 = !{!1641, !1668}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1639, file: !1606, line: 240, baseType: !1642, size: 320)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1606, line: 108, size: 320, elements: !1643)
!1643 = !{!1644, !1645, !1657, !1660, !1667}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1642, file: !1606, line: 110, baseType: !129, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1606, line: 111, baseType: !1646, size: 64, offset: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !1606, line: 111, size: 64, elements: !1647)
!1647 = !{!1648, !1656}
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1606, line: 112, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1606, line: 112, size: 64, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1649, file: !1606, line: 114, baseType: !134, size: 16)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1649, file: !1606, line: 115, baseType: !1653, size: 48, offset: 16)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 48, elements: !1654)
!1654 = !{!1655}
!1655 = !DISubrange(count: 6)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1646, file: !1606, line: 121, baseType: !129, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1642, file: !1606, line: 123, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1606, line: 96, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1642, file: !1606, line: 124, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1606, line: 102, size: 192, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1662, file: !1606, line: 103, baseType: !962, size: 128, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1662, file: !1606, line: 104, baseType: !152, size: 32, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1662, file: !1606, line: 105, baseType: !241, size: 8, offset: 160)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1642, file: !1606, line: 125, baseType: !474, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1606, line: 241, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !1606, line: 241, size: 320, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1669, file: !1606, line: 242, baseType: !129, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1669, file: !1606, line: 243, baseType: !129, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !1606, line: 244, baseType: !1658, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1669, file: !1606, line: 245, baseType: !1661, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1669, file: !1606, line: 246, baseType: !500, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 254, baseType: !1677, size: 256, offset: 1344)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 254, size: 256, elements: !1678)
!1678 = !{!1679, !1685}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1677, file: !1606, line: 255, baseType: !1680, size: 256)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1606, line: 128, size: 256, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1680, file: !1606, line: 129, baseType: !128, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1680, file: !1606, line: 130, baseType: !1684, size: 256)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !233)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !1606, line: 256, baseType: !1686, size: 256)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !1606, line: 256, size: 256, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1686, file: !1606, line: 258, baseType: !163, size: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1686, file: !1606, line: 259, baseType: !1690, size: 128, offset: 128)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1691, line: 22, size: 128, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !{!1693, !1696}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1690, file: !1691, line: 23, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1691, line: 23, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1690, file: !1691, line: 24, baseType: !129, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1605, file: !1606, line: 274, baseType: !1698, size: 64, offset: 1600)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1606, line: 170, size: 192, elements: !1700)
!1700 = !{!1701, !1710, !1711}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1699, file: !1606, line: 171, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1606, line: 165, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!161, !1604, !1706, !1708, !1604}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1699, file: !1606, line: 172, baseType: !1604, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1699, file: !1606, line: 173, baseType: !1658, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1576, file: !1577, line: 138, baseType: !1604, size: 64, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1576, file: !1577, line: 139, baseType: !1604, size: 64, offset: 832)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1576, file: !1577, line: 140, baseType: !1604, size: 64, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1576, file: !1577, line: 145, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1718, line: 13, size: 896, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1717, file: !1718, line: 14, baseType: !152, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1717, file: !1718, line: 15, baseType: !156, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1717, file: !1718, line: 16, baseType: !156, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1717, file: !1718, line: 21, baseType: !696, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1717, file: !1718, line: 27, baseType: !129, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1717, file: !1718, line: 28, baseType: !129, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1717, file: !1718, line: 29, baseType: !696, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1717, file: !1718, line: 32, baseType: !574, size: 128, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1717, file: !1718, line: 33, baseType: !358, size: 32, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1717, file: !1718, line: 37, baseType: !696, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1717, file: !1718, line: 44, baseType: !1731, size: 256, offset: 640)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1732, line: 15, size: 256, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !1732, line: 16, baseType: !871)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1731, file: !1732, line: 18, baseType: !161, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1731, file: !1732, line: 19, baseType: !161, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1731, file: !1732, line: 20, baseType: !161, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1731, file: !1732, line: 21, baseType: !161, size: 32, offset: 96)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1731, file: !1732, line: 22, baseType: !129, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1732, line: 23, baseType: !129, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1576, file: !1577, line: 146, baseType: !1742, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !359, line: 18, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1576, file: !1577, line: 147, baseType: !1745, size: 64, offset: 1088)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1577, line: 25, size: 64, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1746, file: !1577, line: 26, baseType: !156, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1746, file: !1577, line: 27, baseType: !161, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1746, file: !1577, line: 28, baseType: !1751, offset: 64)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, elements: !326)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 149, baseType: !1753, size: 128, offset: 1152)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 149, size: 128, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1753, file: !1577, line: 150, baseType: !161, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1753, file: !1577, line: 151, baseType: !962, size: 128, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1267, file: !29, line: 938, baseType: !1758, size: 256, offset: 1088)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !29, line: 896, size: 256, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1758, file: !29, line: 897, baseType: !129, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1758, file: !29, line: 898, baseType: !5, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1758, file: !29, line: 899, baseType: !5, size: 32, offset: 96)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1758, file: !29, line: 902, baseType: !5, size: 32, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1758, file: !29, line: 903, baseType: !5, size: 32, offset: 160)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1758, file: !29, line: 904, baseType: !536, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1267, file: !29, line: 940, baseType: !175, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1267, file: !29, line: 945, baseType: !128, size: 64, offset: 1408)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1267, file: !29, line: 949, baseType: !163, size: 128, offset: 1472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1267, file: !29, line: 950, baseType: !163, size: 128, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1267, file: !29, line: 952, baseType: !347, size: 64, offset: 1728)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1267, file: !29, line: 953, baseType: !1772, size: 32, offset: 1792)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1773, line: 8, baseType: !232)
!1773 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1267, file: !29, line: 954, baseType: !1772, size: 32, offset: 1824)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1153, file: !336, line: 362, baseType: !128, size: 64, offset: 1344)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1153, file: !336, line: 365, baseType: !696, size: 64, offset: 1408)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1153, file: !336, line: 373, baseType: !1778, offset: 1472)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !336, line: 296, elements: !451)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1149, file: !336, line: 391, baseType: !1111, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1149, file: !336, line: 392, baseType: !175, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1149, file: !336, line: 394, baseType: !1497, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1149, file: !336, line: 398, baseType: !129, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1149, file: !336, line: 399, baseType: !129, size: 64, offset: 320)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1149, file: !336, line: 405, baseType: !129, size: 64, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1149, file: !336, line: 406, baseType: !129, size: 64, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1149, file: !336, line: 407, baseType: !1787, size: 64, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !650, line: 286, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !650, line: 286, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1789, file: !650, line: 286, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1168, line: 18, baseType: !129)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1149, file: !336, line: 416, baseType: !156, size: 32, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1149, file: !336, line: 428, baseType: !156, size: 32, offset: 608)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1149, file: !336, line: 437, baseType: !156, size: 32, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1149, file: !336, line: 447, baseType: !156, size: 32, offset: 672)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1149, file: !336, line: 450, baseType: !696, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1149, file: !336, line: 452, baseType: !161, size: 32, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1149, file: !336, line: 454, baseType: !437, offset: 800)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1149, file: !336, line: 457, baseType: !865, size: 256, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1149, file: !336, line: 459, baseType: !163, size: 128, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1149, file: !336, line: 466, baseType: !129, size: 64, offset: 1216)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1149, file: !336, line: 467, baseType: !129, size: 64, offset: 1280)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1149, file: !336, line: 469, baseType: !129, size: 64, offset: 1344)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1149, file: !336, line: 470, baseType: !129, size: 64, offset: 1408)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1149, file: !336, line: 471, baseType: !698, size: 64, offset: 1472)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1149, file: !336, line: 472, baseType: !129, size: 64, offset: 1536)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1149, file: !336, line: 473, baseType: !129, size: 64, offset: 1600)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1149, file: !336, line: 474, baseType: !129, size: 64, offset: 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1149, file: !336, line: 475, baseType: !129, size: 64, offset: 1728)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1149, file: !336, line: 477, baseType: !437, offset: 1792)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1149, file: !336, line: 478, baseType: !129, size: 64, offset: 1792)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1149, file: !336, line: 478, baseType: !129, size: 64, offset: 1856)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1149, file: !336, line: 478, baseType: !129, size: 64, offset: 1920)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1149, file: !336, line: 478, baseType: !129, size: 64, offset: 1984)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1149, file: !336, line: 479, baseType: !129, size: 64, offset: 2048)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1149, file: !336, line: 479, baseType: !129, size: 64, offset: 2112)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1149, file: !336, line: 479, baseType: !129, size: 64, offset: 2176)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1149, file: !336, line: 480, baseType: !129, size: 64, offset: 2240)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1149, file: !336, line: 480, baseType: !129, size: 64, offset: 2304)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1149, file: !336, line: 480, baseType: !129, size: 64, offset: 2368)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1149, file: !336, line: 480, baseType: !129, size: 64, offset: 2432)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1149, file: !336, line: 482, baseType: !1824, size: 2816, offset: 2496)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 2816, elements: !1825)
!1825 = !{!1826}
!1826 = !DISubrange(count: 44)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1149, file: !336, line: 488, baseType: !1828, size: 256, offset: 5312)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1829, line: 60, size: 256, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1828, file: !1829, line: 61, baseType: !1832, size: 256)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !233)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1149, file: !336, line: 490, baseType: !1834, size: 64, offset: 5568)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !336, line: 490, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1149, file: !336, line: 493, baseType: !1837, size: 896, offset: 5632)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1838, line: 53, baseType: !1839)
!1838 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1838, line: 13, size: 896, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1847, !1848, !1849, !1850, !1870, !1871, !1872}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1839, file: !1838, line: 18, baseType: !175, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1839, file: !1838, line: 28, baseType: !698, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1839, file: !1838, line: 31, baseType: !865, size: 256, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1839, file: !1838, line: 32, baseType: !1845, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1838, line: 32, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1839, file: !1838, line: 37, baseType: !138, size: 16, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !1838, line: 40, baseType: !692, size: 192, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1839, file: !1838, line: 41, baseType: !128, size: 64, offset: 704)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1839, file: !1838, line: 42, baseType: !1851, size: 64, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1854, line: 13, size: 896, elements: !1855)
!1854 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1853, file: !1854, line: 14, baseType: !128, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1853, file: !1854, line: 15, baseType: !129, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1853, file: !1854, line: 17, baseType: !129, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1853, file: !1854, line: 17, baseType: !129, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1853, file: !1854, line: 19, baseType: !662, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1853, file: !1854, line: 21, baseType: !662, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1853, file: !1854, line: 22, baseType: !662, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1853, file: !1854, line: 23, baseType: !662, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1853, file: !1854, line: 24, baseType: !662, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1853, file: !1854, line: 25, baseType: !662, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1853, file: !1854, line: 26, baseType: !662, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1853, file: !1854, line: 27, baseType: !662, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1853, file: !1854, line: 28, baseType: !662, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1853, file: !1854, line: 29, baseType: !662, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1839, file: !1838, line: 44, baseType: !156, size: 32, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1839, file: !1838, line: 50, baseType: !134, size: 16, offset: 864)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1839, file: !1838, line: 51, baseType: !1873, size: 16, offset: 880)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !135, line: 18, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !137, line: 23, baseType: !1636)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !336, line: 495, baseType: !129, size: 64, offset: 6528)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1149, file: !336, line: 497, baseType: !1877, size: 64, offset: 6592)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !336, line: 381, size: 384, elements: !1879)
!1879 = !{!1880, !1881, !1887}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1878, file: !336, line: 382, baseType: !156, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1878, file: !336, line: 383, baseType: !1882, size: 128, offset: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !336, line: 376, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1882, file: !336, line: 377, baseType: !977, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1882, file: !336, line: 378, baseType: !1886, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1878, file: !336, line: 384, baseType: !1888, size: 192, offset: 192)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1889, line: 26, size: 192, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1888, file: !1889, line: 27, baseType: !5, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1888, file: !1889, line: 28, baseType: !1893, size: 128, offset: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1894, line: 43, size: 128, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1893, file: !1894, line: 44, baseType: !871)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1893, file: !1894, line: 45, baseType: !163, size: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1149, file: !336, line: 500, baseType: !437, offset: 6656)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1149, file: !336, line: 501, baseType: !1900, size: 64, offset: 6656)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !336, line: 387, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1149, file: !336, line: 516, baseType: !1742, size: 64, offset: 6720)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1149, file: !336, line: 519, baseType: !1266, size: 64, offset: 6784)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1149, file: !336, line: 521, baseType: !1905, size: 64, offset: 6848)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !336, line: 521, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1149, file: !336, line: 545, baseType: !156, size: 32, offset: 6912)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1149, file: !336, line: 548, baseType: !241, size: 8, offset: 6944)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1149, file: !336, line: 550, baseType: !1910, offset: 6952)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1911, line: 142, elements: !451)
!1911 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1149, file: !336, line: 554, baseType: !1913, size: 256, offset: 6976)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1914, line: 102, size: 256, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1913, file: !1914, line: 103, baseType: !696, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1913, file: !1914, line: 104, baseType: !163, size: 128, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1913, file: !1914, line: 105, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1914, line: 21, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1149, file: !336, line: 557, baseType: !232, size: 32, offset: 7232)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1146, file: !336, line: 565, baseType: !1926, offset: 7296)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !171)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !978, file: !891, line: 758, baseType: !1145, size: 64, offset: 3968)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !978, file: !891, line: 761, baseType: !1929, size: 320, offset: 4032)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1829, line: 34, size: 320, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1929, file: !1829, line: 35, baseType: !175, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1929, file: !1829, line: 36, baseType: !1933, size: 256, offset: 64)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 256, elements: !233)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !978, file: !891, line: 766, baseType: !161, size: 32, offset: 4352)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !978, file: !891, line: 767, baseType: !161, size: 32, offset: 4384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !978, file: !891, line: 768, baseType: !161, size: 32, offset: 4416)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !978, file: !891, line: 770, baseType: !161, size: 32, offset: 4448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !978, file: !891, line: 772, baseType: !129, size: 64, offset: 4480)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !978, file: !891, line: 775, baseType: !5, size: 32, offset: 4544)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !978, file: !891, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !978, file: !891, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !978, file: !891, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !978, file: !891, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !978, file: !891, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !978, file: !891, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !978, file: !891, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !978, file: !891, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !978, file: !891, line: 831, baseType: !129, size: 64, offset: 4672)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !978, file: !891, line: 833, baseType: !1950, size: 384, offset: 4736)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !46, line: 25, size: 384, elements: !1951)
!1951 = !{!1952, !1957}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1950, file: !46, line: 26, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!662, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !46, line: 27, baseType: !1958, size: 320, offset: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !46, line: 27, size: 320, elements: !1959)
!1959 = !{!1960, !1970, !1995}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1958, file: !46, line: 36, baseType: !1961, size: 320)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !46, line: 29, size: 320, elements: !1962)
!1962 = !{!1963, !1965, !1966, !1967, !1968, !1969}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1961, file: !46, line: 30, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1961, file: !46, line: 31, baseType: !232, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !46, line: 32, baseType: !232, size: 32, offset: 96)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1961, file: !46, line: 33, baseType: !232, size: 32, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1961, file: !46, line: 34, baseType: !175, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1961, file: !46, line: 35, baseType: !1964, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1958, file: !46, line: 46, baseType: !1971, size: 192)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !46, line: 38, size: 192, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1994}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1971, file: !46, line: 39, baseType: !1096, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1971, file: !46, line: 40, baseType: !45, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !46, line: 41, baseType: !1976, size: 64, offset: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !46, line: 41, size: 64, elements: !1977)
!1977 = !{!1978, !1986}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1976, file: !46, line: 42, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1981, line: 7, size: 128, elements: !1982)
!1981 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1982 = !{!1983, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1980, file: !1981, line: 8, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !181, line: 93, baseType: !538)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1980, file: !1981, line: 9, baseType: !538, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1976, file: !46, line: 43, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1989, line: 7, size: 64, elements: !1990)
!1989 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !{!1991, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1988, file: !1989, line: 8, baseType: !1992, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1989, line: 5, baseType: !304)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1988, file: !1989, line: 9, baseType: !304, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1971, file: !46, line: 45, baseType: !175, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1958, file: !46, line: 54, baseType: !1996, size: 256)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !46, line: 48, size: 256, elements: !1997)
!1997 = !{!1998, !2001, !2002, !2003, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1996, file: !46, line: 49, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !46, line: 14, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1996, file: !46, line: 50, baseType: !161, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1996, file: !46, line: 51, baseType: !161, size: 32, offset: 96)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1996, file: !46, line: 52, baseType: !129, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1996, file: !46, line: 53, baseType: !129, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !978, file: !891, line: 835, baseType: !2006, size: 32, offset: 5120)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !157, line: 22, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !181, line: 28, baseType: !161)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !978, file: !891, line: 836, baseType: !2006, size: 32, offset: 5152)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !978, file: !891, line: 840, baseType: !129, size: 64, offset: 5184)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !978, file: !891, line: 849, baseType: !977, size: 64, offset: 5248)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !978, file: !891, line: 852, baseType: !977, size: 64, offset: 5312)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !978, file: !891, line: 857, baseType: !163, size: 128, offset: 5376)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !978, file: !891, line: 858, baseType: !163, size: 128, offset: 5504)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !978, file: !891, line: 859, baseType: !977, size: 64, offset: 5632)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !978, file: !891, line: 867, baseType: !163, size: 128, offset: 5696)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !978, file: !891, line: 868, baseType: !163, size: 128, offset: 5824)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !978, file: !891, line: 871, baseType: !1550, size: 64, offset: 5952)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !978, file: !891, line: 872, baseType: !2019, size: 512, offset: 6016)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 512, elements: !233)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !978, file: !891, line: 873, baseType: !163, size: 128, offset: 6528)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !978, file: !891, line: 874, baseType: !163, size: 128, offset: 6656)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !978, file: !891, line: 876, baseType: !2023, size: 64, offset: 6784)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !978, file: !891, line: 879, baseType: !642, size: 64, offset: 6848)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !978, file: !891, line: 882, baseType: !642, size: 64, offset: 6912)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !978, file: !891, line: 884, baseType: !175, size: 64, offset: 6976)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !978, file: !891, line: 885, baseType: !175, size: 64, offset: 7040)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !978, file: !891, line: 890, baseType: !175, size: 64, offset: 7104)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !978, file: !891, line: 891, baseType: !2030, size: 128, offset: 7168)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !891, line: 242, size: 128, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2030, file: !891, line: 244, baseType: !175, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2030, file: !891, line: 245, baseType: !175, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2030, file: !891, line: 246, baseType: !871, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !978, file: !891, line: 900, baseType: !129, size: 64, offset: 7296)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !978, file: !891, line: 901, baseType: !129, size: 64, offset: 7360)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !978, file: !891, line: 904, baseType: !175, size: 64, offset: 7424)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !978, file: !891, line: 907, baseType: !175, size: 64, offset: 7488)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !978, file: !891, line: 910, baseType: !129, size: 64, offset: 7552)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !978, file: !891, line: 911, baseType: !129, size: 64, offset: 7616)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !978, file: !891, line: 914, baseType: !2042, size: 640, offset: 7680)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2043, line: 123, size: 640, elements: !2044)
!2043 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !{!2045, !2051, !2052}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2042, file: !2043, line: 124, baseType: !2046, size: 576)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2047, size: 576, elements: !586)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2043, line: 108, size: 192, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2047, file: !2043, line: 109, baseType: !175, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2047, file: !2043, line: 110, baseType: !1105, size: 128, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2042, file: !2043, line: 125, baseType: !5, size: 32, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2042, file: !2043, line: 126, baseType: !5, size: 32, offset: 608)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !978, file: !891, line: 917, baseType: !2054, size: 192, offset: 8320)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2043, line: 134, size: 192, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2054, file: !2043, line: 135, baseType: !962, size: 128, align: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2054, file: !2043, line: 136, baseType: !5, size: 32, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !978, file: !891, line: 923, baseType: !1574, size: 64, offset: 8512)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !978, file: !891, line: 926, baseType: !1574, size: 64, offset: 8576)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !978, file: !891, line: 929, baseType: !1574, size: 64, offset: 8640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !978, file: !891, line: 933, baseType: !1604, size: 64, offset: 8704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !978, file: !891, line: 943, baseType: !2063, size: 128, offset: 8768)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 128, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !978, file: !891, line: 945, baseType: !2067, size: 64, offset: 8896)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !891, line: 49, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !978, file: !891, line: 956, baseType: !2070, size: 64, offset: 8960)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !891, line: 45, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !978, file: !891, line: 959, baseType: !2073, size: 64, offset: 9024)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !891, line: 959, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !978, file: !891, line: 962, baseType: !2076, size: 64, offset: 9088)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !891, line: 66, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !978, file: !891, line: 966, baseType: !2079, size: 64, offset: 9152)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !891, line: 50, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !978, file: !891, line: 969, baseType: !2082, size: 64, offset: 9216)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2084, line: 82, size: 7296, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2121, !2130, !2131, !2133, !2134, !2135, !2138, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2168, !2169, !2176, !2177, !2178, !2179, !2180, !2181}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2083, file: !2084, line: 83, baseType: !152, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2083, file: !2084, line: 84, baseType: !156, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2083, file: !2084, line: 85, baseType: !161, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2083, file: !2084, line: 86, baseType: !163, size: 128, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2083, file: !2084, line: 88, baseType: !943, size: 128, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2083, file: !2084, line: 91, baseType: !977, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2083, file: !2084, line: 94, baseType: !2093, size: 192, offset: 448)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2094, line: 30, size: 192, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2093, file: !2094, line: 31, baseType: !163, size: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2093, file: !2094, line: 32, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2099, line: 25, baseType: !2100)
!2099 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2099, line: 23, size: 64, elements: !2101)
!2101 = !{!2102}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2100, file: !2099, line: 24, baseType: !1137, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2083, file: !2084, line: 97, baseType: !570, size: 64, offset: 640)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2083, file: !2084, line: 100, baseType: !161, size: 32, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2083, file: !2084, line: 106, baseType: !161, size: 32, offset: 736)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2083, file: !2084, line: 107, baseType: !977, size: 64, offset: 768)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2083, file: !2084, line: 110, baseType: !161, size: 32, offset: 832)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 111, baseType: !5, size: 32, offset: 864)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2083, file: !2084, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2083, file: !2084, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2083, file: !2084, line: 128, baseType: !161, size: 32, offset: 928)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2083, file: !2084, line: 129, baseType: !163, size: 128, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2083, file: !2084, line: 132, baseType: !1054, size: 512, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2083, file: !2084, line: 133, baseType: !1062, size: 64, offset: 1600)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2083, file: !2084, line: 140, baseType: !2116, size: 256, offset: 1664)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2117, size: 256, elements: !1596)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2084, line: 38, size: 128, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2117, file: !2084, line: 39, baseType: !175, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2117, file: !2084, line: 40, baseType: !175, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2083, file: !2084, line: 146, baseType: !2122, size: 192, offset: 1920)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2084, line: 66, size: 192, elements: !2123)
!2123 = !{!2124}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2122, file: !2084, line: 67, baseType: !2125, size: 192)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2084, line: 47, size: 192, elements: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2125, file: !2084, line: 48, baseType: !698, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2125, file: !2084, line: 49, baseType: !698, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2125, file: !2084, line: 50, baseType: !698, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2083, file: !2084, line: 150, baseType: !2042, size: 640, offset: 2112)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2083, file: !2084, line: 153, baseType: !2132, size: 256, offset: 2752)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1550, size: 256, elements: !233)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2083, file: !2084, line: 159, baseType: !1550, size: 64, offset: 3008)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2083, file: !2084, line: 162, baseType: !161, size: 32, offset: 3072)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2083, file: !2084, line: 164, baseType: !2136, size: 64, offset: 3136)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2084, line: 164, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2083, file: !2084, line: 175, baseType: !2139, size: 32, offset: 3200)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !389, line: 805, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 798, size: 32, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2140, file: !389, line: 803, baseType: !388, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2140, file: !389, line: 804, baseType: !437, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2083, file: !2084, line: 176, baseType: !175, size: 64, offset: 3264)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2083, file: !2084, line: 176, baseType: !175, size: 64, offset: 3328)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2083, file: !2084, line: 176, baseType: !175, size: 64, offset: 3392)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2083, file: !2084, line: 176, baseType: !175, size: 64, offset: 3456)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2083, file: !2084, line: 177, baseType: !175, size: 64, offset: 3520)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2083, file: !2084, line: 178, baseType: !175, size: 64, offset: 3584)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2083, file: !2084, line: 179, baseType: !2030, size: 128, offset: 3648)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2083, file: !2084, line: 180, baseType: !129, size: 64, offset: 3776)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2083, file: !2084, line: 180, baseType: !129, size: 64, offset: 3840)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2083, file: !2084, line: 180, baseType: !129, size: 64, offset: 3904)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2083, file: !2084, line: 180, baseType: !129, size: 64, offset: 3968)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2083, file: !2084, line: 181, baseType: !129, size: 64, offset: 4032)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2083, file: !2084, line: 181, baseType: !129, size: 64, offset: 4096)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2083, file: !2084, line: 181, baseType: !129, size: 64, offset: 4160)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2083, file: !2084, line: 181, baseType: !129, size: 64, offset: 4224)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2083, file: !2084, line: 182, baseType: !129, size: 64, offset: 4288)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2083, file: !2084, line: 182, baseType: !129, size: 64, offset: 4352)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2083, file: !2084, line: 182, baseType: !129, size: 64, offset: 4416)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2083, file: !2084, line: 182, baseType: !129, size: 64, offset: 4480)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2083, file: !2084, line: 183, baseType: !129, size: 64, offset: 4544)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2083, file: !2084, line: 183, baseType: !129, size: 64, offset: 4608)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2083, file: !2084, line: 184, baseType: !2166, offset: 4672)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2167, line: 12, elements: !451)
!2167 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2083, file: !2084, line: 192, baseType: !177, size: 64, offset: 4672)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2083, file: !2084, line: 203, baseType: !2170, size: 2048, offset: 4736)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2171, size: 2048, elements: !2064)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2172, line: 43, size: 128, elements: !2173)
!2172 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2171, file: !2172, line: 44, baseType: !182, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2171, file: !2172, line: 45, baseType: !182, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2083, file: !2084, line: 220, baseType: !241, size: 8, offset: 6784)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2083, file: !2084, line: 221, baseType: !1636, size: 16, offset: 6800)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2083, file: !2084, line: 222, baseType: !1636, size: 16, offset: 6816)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2083, file: !2084, line: 224, baseType: !1145, size: 64, offset: 6848)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2083, file: !2084, line: 227, baseType: !692, size: 192, offset: 6912)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2083, file: !2084, line: 233, baseType: !692, size: 192, offset: 7104)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !978, file: !891, line: 970, baseType: !2183, size: 64, offset: 9280)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2084, line: 20, size: 16576, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2184, file: !2084, line: 21, baseType: !437)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2184, file: !2084, line: 22, baseType: !152, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2184, file: !2084, line: 23, baseType: !943, size: 128, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2184, file: !2084, line: 24, baseType: !2190, size: 16384, offset: 192)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2191, size: 16384, elements: !2211)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2094, line: 49, size: 256, elements: !2192)
!2192 = !{!2193}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2191, file: !2094, line: 50, baseType: !2194, size: 256)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2094, line: 35, size: 256, elements: !2195)
!2195 = !{!2196, !2203, !2204, !2210}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2194, file: !2094, line: 37, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2198, line: 19, baseType: !2199)
!2198 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2198, line: 18, baseType: !2201)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !161}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2194, file: !2094, line: 38, baseType: !129, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2194, file: !2094, line: 44, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2198, line: 22, baseType: !2206)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2198, line: 21, baseType: !2208)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2194, file: !2094, line: 46, baseType: !2098, size: 64, offset: 192)
!2211 = !{!2212}
!2212 = !DISubrange(count: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !978, file: !891, line: 971, baseType: !2098, size: 64, offset: 9344)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !978, file: !891, line: 972, baseType: !2098, size: 64, offset: 9408)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !978, file: !891, line: 974, baseType: !2098, size: 64, offset: 9472)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !978, file: !891, line: 975, baseType: !2093, size: 192, offset: 9536)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !978, file: !891, line: 976, baseType: !129, size: 64, offset: 9728)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !978, file: !891, line: 977, baseType: !179, size: 64, offset: 9792)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !978, file: !891, line: 978, baseType: !5, size: 32, offset: 9856)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !978, file: !891, line: 980, baseType: !965, size: 64, offset: 9920)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !978, file: !891, line: 989, baseType: !2222, size: 128, offset: 9984)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2223, line: 35, size: 128, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2222, file: !2223, line: 36, baseType: !161, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2222, file: !2223, line: 37, baseType: !156, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2222, file: !2223, line: 38, baseType: !2228, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2223, line: 23, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !978, file: !891, line: 992, baseType: !175, size: 64, offset: 10112)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !978, file: !891, line: 993, baseType: !175, size: 64, offset: 10176)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !978, file: !891, line: 996, baseType: !437, offset: 10240)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !978, file: !891, line: 999, baseType: !871, offset: 10240)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !978, file: !891, line: 1001, baseType: !2235, size: 64, offset: 10240)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !891, line: 636, size: 64, elements: !2236)
!2236 = !{!2237}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2235, file: !891, line: 637, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !978, file: !891, line: 1005, baseType: !1108, size: 128, offset: 10304)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !978, file: !891, line: 1007, baseType: !977, size: 64, offset: 10432)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !978, file: !891, line: 1009, baseType: !2242, size: 64, offset: 10496)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !891, line: 1009, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !978, file: !891, line: 1043, baseType: !128, size: 64, offset: 10560)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !978, file: !891, line: 1046, baseType: !2246, size: 64, offset: 10624)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !891, line: 41, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !978, file: !891, line: 1050, baseType: !2249, size: 64, offset: 10688)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !891, line: 42, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !978, file: !891, line: 1054, baseType: !2252, size: 64, offset: 10752)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !891, line: 55, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !978, file: !891, line: 1056, baseType: !889, size: 64, offset: 10816)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !978, file: !891, line: 1058, baseType: !2256, size: 64, offset: 10880)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2258, line: 99, size: 704, elements: !2259)
!2258 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2272, !2293, !2294}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2257, file: !2258, line: 100, baseType: !696, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2257, file: !2258, line: 101, baseType: !156, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2257, file: !2258, line: 102, baseType: !156, size: 32, offset: 96)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2257, file: !2258, line: 105, baseType: !437, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2257, file: !2258, line: 107, baseType: !138, size: 16, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2257, file: !2258, line: 109, baseType: !2266, size: 128, offset: 192)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2267, line: 292, size: 128, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2266, file: !2267, line: 293, baseType: !437)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2266, file: !2267, line: 295, baseType: !178, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2266, file: !2267, line: 296, baseType: !128, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2257, file: !2258, line: 110, baseType: !2273, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2258, line: 73, size: 448, elements: !2275)
!2275 = !{!2276, !2279, !2280, !2287, !2292}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2274, file: !2258, line: 74, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2258, line: 74, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2274, file: !2258, line: 75, baseType: !2256, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !2258, line: 83, baseType: !2281, size: 128, offset: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2274, file: !2258, line: 83, size: 128, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2281, file: !2258, line: 84, baseType: !163, size: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2281, file: !2258, line: 85, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !336, line: 117, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !2258, line: 87, baseType: !2288, size: 128, offset: 256)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2274, file: !2258, line: 87, size: 128, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2288, file: !2258, line: 88, baseType: !574, size: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2288, file: !2258, line: 89, baseType: !962, size: 128, align: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !2258, line: 92, baseType: !5, size: 32, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2257, file: !2258, line: 111, baseType: !570, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2257, file: !2258, line: 113, baseType: !1913, size: 256, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !978, file: !891, line: 1061, baseType: !2296, size: 64, offset: 10944)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !891, line: 43, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !978, file: !891, line: 1064, baseType: !129, size: 64, offset: 11008)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !978, file: !891, line: 1065, baseType: !2300, size: 64, offset: 11072)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2094, line: 14, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2094, line: 12, size: 384, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2302, file: !2094, line: 13, baseType: !2305, size: 384)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2302, file: !2094, line: 13, size: 384, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2305, file: !2094, line: 13, baseType: !161, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2305, file: !2094, line: 13, baseType: !161, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2305, file: !2094, line: 13, baseType: !161, size: 32, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2305, file: !2094, line: 13, baseType: !2311, size: 256, offset: 128)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2312, line: 32, size: 256, elements: !2313)
!2312 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2313 = !{!2314, !2319, !2332, !2338, !2347, !2367, !2372}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2311, file: !2312, line: 37, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 34, size: 64, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2315, file: !2312, line: 35, baseType: !2007, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2315, file: !2312, line: 36, baseType: !364, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2311, file: !2312, line: 45, baseType: !2320, size: 192)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 40, size: 192, elements: !2321)
!2321 = !{!2322, !2324, !2325, !2331}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2320, file: !2312, line: 41, baseType: !2323, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !181, line: 95, baseType: !161)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2320, file: !2312, line: 42, baseType: !161, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2320, file: !2312, line: 43, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2312, line: 11, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2312, line: 8, size: 64, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2327, file: !2312, line: 9, baseType: !161, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2327, file: !2312, line: 10, baseType: !128, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2320, file: !2312, line: 44, baseType: !161, size: 32, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2311, file: !2312, line: 52, baseType: !2333, size: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 48, size: 128, elements: !2334)
!2334 = !{!2335, !2336, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2333, file: !2312, line: 49, baseType: !2007, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2333, file: !2312, line: 50, baseType: !364, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2333, file: !2312, line: 51, baseType: !2326, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2311, file: !2312, line: 61, baseType: !2339, size: 256)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 55, size: 256, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2346}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2339, file: !2312, line: 56, baseType: !2007, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2339, file: !2312, line: 57, baseType: !364, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2339, file: !2312, line: 58, baseType: !161, size: 32, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2339, file: !2312, line: 59, baseType: !2345, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !181, line: 94, baseType: !1297)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2339, file: !2312, line: 60, baseType: !2345, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2311, file: !2312, line: 95, baseType: !2348, size: 256)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 64, size: 256, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2348, file: !2312, line: 65, baseType: !128, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2348, file: !2312, line: 77, baseType: !2352, size: 192, offset: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2348, file: !2312, line: 77, size: 192, elements: !2353)
!2353 = !{!2354, !2355, !2362}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2352, file: !2312, line: 82, baseType: !1636, size: 16)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2352, file: !2312, line: 88, baseType: !2356, size: 192)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !2312, line: 84, size: 192, elements: !2357)
!2357 = !{!2358, !2360, !2361}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2356, file: !2312, line: 85, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 64, elements: !1092)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2356, file: !2312, line: 86, baseType: !128, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2356, file: !2312, line: 87, baseType: !128, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2352, file: !2312, line: 93, baseType: !2363, size: 96)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !2312, line: 90, size: 96, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2363, file: !2312, line: 91, baseType: !2359, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2363, file: !2312, line: 92, baseType: !187, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2311, file: !2312, line: 101, baseType: !2368, size: 128)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 98, size: 128, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2368, file: !2312, line: 99, baseType: !662, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2368, file: !2312, line: 100, baseType: !161, size: 32, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2311, file: !2312, line: 108, baseType: !2373, size: 128)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2311, file: !2312, line: 104, size: 128, elements: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2373, file: !2312, line: 105, baseType: !128, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2373, file: !2312, line: 106, baseType: !161, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2373, file: !2312, line: 107, baseType: !5, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !978, file: !891, line: 1067, baseType: !2166, offset: 11136)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !978, file: !891, line: 1099, baseType: !2380, size: 64, offset: 11136)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !891, line: 56, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !978, file: !891, line: 1103, baseType: !163, size: 128, offset: 11200)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !978, file: !891, line: 1104, baseType: !2384, size: 64, offset: 11328)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !891, line: 46, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !978, file: !891, line: 1105, baseType: !692, size: 192, offset: 11392)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !978, file: !891, line: 1106, baseType: !5, size: 32, offset: 11584)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !978, file: !891, line: 1109, baseType: !2389, size: 128, offset: 11648)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, size: 128, elements: !1596)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !891, line: 51, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !978, file: !891, line: 1110, baseType: !692, size: 192, offset: 11776)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !978, file: !891, line: 1111, baseType: !163, size: 128, offset: 11968)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !978, file: !891, line: 1173, baseType: !2395, size: 64, offset: 12096)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2397, line: 62, size: 256, align: 256, elements: !2398)
!2397 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2398 = !{!2399, !2400, !2401, !2406}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2396, file: !2397, line: 75, baseType: !187, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2396, file: !2397, line: 90, baseType: !187, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2396, file: !2397, line: 124, baseType: !2402, size: 64, offset: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !2397, line: 109, size: 64, elements: !2403)
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2402, file: !2397, line: 110, baseType: !176, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2402, file: !2397, line: 112, baseType: !176, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !2397, line: 144, baseType: !187, size: 32, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !978, file: !891, line: 1174, baseType: !232, size: 32, offset: 12160)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !978, file: !891, line: 1179, baseType: !129, size: 64, offset: 12224)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !978, file: !891, line: 1182, baseType: !2410, size: 128, offset: 12288)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1829, line: 76, size: 128, elements: !2411)
!2411 = !{!2412, !2417, !2418}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2410, file: !1829, line: 85, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2414, line: 7, size: 64, elements: !2415)
!2414 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2413, file: !2414, line: 12, baseType: !1134, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2410, file: !1829, line: 88, baseType: !241, size: 8, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2410, file: !1829, line: 95, baseType: !241, size: 8, offset: 72)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !891, line: 1184, baseType: !2420, size: 128, offset: 12416)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !891, line: 1184, size: 128, elements: !2421)
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2420, file: !891, line: 1185, baseType: !152, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2420, file: !891, line: 1186, baseType: !962, size: 128, align: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !978, file: !891, line: 1190, baseType: !1509, size: 64, offset: 12544)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !978, file: !891, line: 1192, baseType: !2426, size: 128, offset: 12608)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1829, line: 64, size: 128, elements: !2427)
!2427 = !{!2428, !2429, !2430}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2426, file: !1829, line: 65, baseType: !334, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2426, file: !1829, line: 67, baseType: !187, size: 32, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2426, file: !1829, line: 68, baseType: !187, size: 32, offset: 96)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !978, file: !891, line: 1206, baseType: !161, size: 32, offset: 12736)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !978, file: !891, line: 1207, baseType: !161, size: 32, offset: 12768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !978, file: !891, line: 1209, baseType: !129, size: 64, offset: 12800)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !978, file: !891, line: 1219, baseType: !175, size: 64, offset: 12864)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !978, file: !891, line: 1220, baseType: !175, size: 64, offset: 12928)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !978, file: !891, line: 1317, baseType: !161, size: 32, offset: 12992)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !978, file: !891, line: 1319, baseType: !977, size: 64, offset: 13056)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !978, file: !891, line: 1322, baseType: !2439, size: 64, offset: 13120)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2441, line: 56, size: 512, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2451}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2440, file: !2441, line: 57, baseType: !2439, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2440, file: !2441, line: 58, baseType: !128, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2440, file: !2441, line: 59, baseType: !129, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !2441, line: 60, baseType: !129, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2440, file: !2441, line: 61, baseType: !333, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2440, file: !2441, line: 62, baseType: !5, size: 32, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2440, file: !2441, line: 63, baseType: !2450, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !157, line: 153, baseType: !175)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2440, file: !2441, line: 64, baseType: !2452, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !978, file: !891, line: 1326, baseType: !152, size: 32, offset: 13184)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !978, file: !891, line: 1342, baseType: !128, size: 64, offset: 13248)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !978, file: !891, line: 1343, baseType: !176, size: 64, offset: 13312)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !978, file: !891, line: 1344, baseType: !175, size: 64, offset: 13376)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !978, file: !891, line: 1345, baseType: !176, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !978, file: !891, line: 1346, baseType: !176, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !978, file: !891, line: 1347, baseType: !176, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !978, file: !891, line: 1348, baseType: !962, size: 128, align: 64, offset: 13504)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !978, file: !891, line: 1358, baseType: !2463, size: 34816, offset: 13824)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2464, line: 485, size: 34816, elements: !2465)
!2464 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2495, !2496, !2497, !2498, !2499, !2500, !2503, !2504, !2505}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2463, file: !2464, line: 487, baseType: !2467, size: 192)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 192, elements: !586)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2469, line: 16, size: 64, elements: !2470)
!2469 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2468, file: !2469, line: 17, baseType: !134, size: 16)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2468, file: !2469, line: 18, baseType: !134, size: 16, offset: 16)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2468, file: !2469, line: 19, baseType: !134, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2468, file: !2469, line: 19, baseType: !134, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2468, file: !2469, line: 19, baseType: !134, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2468, file: !2469, line: 19, baseType: !134, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2468, file: !2469, line: 19, baseType: !134, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2468, file: !2469, line: 20, baseType: !134, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2468, file: !2469, line: 20, baseType: !134, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2468, file: !2469, line: 20, baseType: !134, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2468, file: !2469, line: 20, baseType: !134, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2468, file: !2469, line: 20, baseType: !134, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2468, file: !2469, line: 20, baseType: !134, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2463, file: !2464, line: 491, baseType: !129, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2463, file: !2464, line: 495, baseType: !138, size: 16, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2463, file: !2464, line: 496, baseType: !138, size: 16, offset: 272)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2463, file: !2464, line: 497, baseType: !138, size: 16, offset: 288)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2463, file: !2464, line: 498, baseType: !138, size: 16, offset: 304)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2463, file: !2464, line: 502, baseType: !129, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2463, file: !2464, line: 503, baseType: !129, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2463, file: !2464, line: 514, baseType: !2492, size: 256, offset: 448)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2493, size: 256, elements: !233)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2464, line: 483, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2463, file: !2464, line: 516, baseType: !129, size: 64, offset: 704)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2463, file: !2464, line: 518, baseType: !129, size: 64, offset: 768)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2463, file: !2464, line: 520, baseType: !129, size: 64, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2463, file: !2464, line: 521, baseType: !129, size: 64, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2463, file: !2464, line: 522, baseType: !129, size: 64, offset: 960)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2463, file: !2464, line: 528, baseType: !2501, size: 64, offset: 1024)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2464, line: 10, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2463, file: !2464, line: 535, baseType: !129, size: 64, offset: 1088)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2463, file: !2464, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2463, file: !2464, line: 540, baseType: !2506, size: 33280, offset: 1536)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2507, line: 317, size: 33280, elements: !2508)
!2507 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2506, file: !2507, line: 330, baseType: !5, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2506, file: !2507, line: 337, baseType: !129, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2506, file: !2507, line: 348, baseType: !2512, size: 32768, offset: 512)
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2507, line: 304, size: 32768, elements: !2513)
!2513 = !{!2514, !2529, !2566, !2616, !2629}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2512, file: !2507, line: 305, baseType: !2515, size: 896)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2507, line: 12, size: 896, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2528}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2515, file: !2507, line: 13, baseType: !232, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2515, file: !2507, line: 14, baseType: !232, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2515, file: !2507, line: 15, baseType: !232, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2515, file: !2507, line: 16, baseType: !232, size: 32, offset: 96)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2515, file: !2507, line: 17, baseType: !232, size: 32, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2515, file: !2507, line: 18, baseType: !232, size: 32, offset: 160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2515, file: !2507, line: 19, baseType: !232, size: 32, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2515, file: !2507, line: 22, baseType: !2525, size: 640, offset: 224)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 640, elements: !2526)
!2526 = !{!2527}
!2527 = !DISubrange(count: 20)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2515, file: !2507, line: 25, baseType: !232, size: 32, offset: 864)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2512, file: !2507, line: 306, baseType: !2530, size: 4096, align: 128)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2507, line: 34, size: 4096, align: 128, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2551, !2552, !2553, !2555, !2557, !2561}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2530, file: !2507, line: 35, baseType: !134, size: 16)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2530, file: !2507, line: 36, baseType: !134, size: 16, offset: 16)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2530, file: !2507, line: 37, baseType: !134, size: 16, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2530, file: !2507, line: 38, baseType: !134, size: 16, offset: 48)
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !2530, file: !2507, line: 39, baseType: !2537, size: 128, offset: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2530, file: !2507, line: 39, size: 128, elements: !2538)
!2538 = !{!2539, !2544}
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !2507, line: 40, baseType: !2540, size: 128)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2537, file: !2507, line: 40, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2540, file: !2507, line: 41, baseType: !175, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2540, file: !2507, line: 42, baseType: !175, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !2507, line: 44, baseType: !2545, size: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2537, file: !2507, line: 44, size: 128, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2545, file: !2507, line: 45, baseType: !232, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2545, file: !2507, line: 46, baseType: !232, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2545, file: !2507, line: 47, baseType: !232, size: 32, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2545, file: !2507, line: 48, baseType: !232, size: 32, offset: 96)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2530, file: !2507, line: 51, baseType: !232, size: 32, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2530, file: !2507, line: 52, baseType: !232, size: 32, offset: 224)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2530, file: !2507, line: 55, baseType: !2554, size: 1024, offset: 256)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 1024, elements: !424)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2530, file: !2507, line: 58, baseType: !2556, size: 2048, offset: 1280)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 2048, elements: !2211)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2530, file: !2507, line: 60, baseType: !2558, size: 384, offset: 3328)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 384, elements: !2559)
!2559 = !{!2560}
!2560 = !DISubrange(count: 12)
!2561 = !DIDerivedType(tag: DW_TAG_member, scope: !2530, file: !2507, line: 62, baseType: !2562, size: 384, offset: 3712)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2530, file: !2507, line: 62, size: 384, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2562, file: !2507, line: 63, baseType: !2558, size: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2562, file: !2507, line: 64, baseType: !2558, size: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2512, file: !2507, line: 307, baseType: !2567, size: 1088)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2507, line: 79, size: 1088, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2615}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2567, file: !2507, line: 80, baseType: !232, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2567, file: !2507, line: 81, baseType: !232, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2567, file: !2507, line: 82, baseType: !232, size: 32, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2567, file: !2507, line: 83, baseType: !232, size: 32, offset: 96)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2567, file: !2507, line: 84, baseType: !232, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2567, file: !2507, line: 85, baseType: !232, size: 32, offset: 160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2567, file: !2507, line: 86, baseType: !232, size: 32, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2567, file: !2507, line: 88, baseType: !2525, size: 640, offset: 224)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2567, file: !2507, line: 89, baseType: !140, size: 8, offset: 864)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2567, file: !2507, line: 90, baseType: !140, size: 8, offset: 872)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2567, file: !2507, line: 91, baseType: !140, size: 8, offset: 880)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2567, file: !2507, line: 92, baseType: !140, size: 8, offset: 888)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2567, file: !2507, line: 93, baseType: !140, size: 8, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2567, file: !2507, line: 94, baseType: !140, size: 8, offset: 904)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2567, file: !2507, line: 95, baseType: !2584, size: 64, offset: 960)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2586, line: 11, size: 128, elements: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2585, file: !2586, line: 12, baseType: !662, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2585, file: !2586, line: 13, baseType: !2590, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2592, line: 56, size: 1344, elements: !2593)
!2592 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2591, file: !2592, line: 61, baseType: !129, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2591, file: !2592, line: 62, baseType: !129, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2591, file: !2592, line: 63, baseType: !129, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2591, file: !2592, line: 64, baseType: !129, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2591, file: !2592, line: 65, baseType: !129, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2591, file: !2592, line: 66, baseType: !129, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2591, file: !2592, line: 68, baseType: !129, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2591, file: !2592, line: 69, baseType: !129, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2591, file: !2592, line: 70, baseType: !129, size: 64, offset: 512)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2591, file: !2592, line: 71, baseType: !129, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2591, file: !2592, line: 72, baseType: !129, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2591, file: !2592, line: 73, baseType: !129, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2591, file: !2592, line: 74, baseType: !129, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2591, file: !2592, line: 75, baseType: !129, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2591, file: !2592, line: 76, baseType: !129, size: 64, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2591, file: !2592, line: 81, baseType: !129, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2591, file: !2592, line: 83, baseType: !129, size: 64, offset: 1024)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2591, file: !2592, line: 84, baseType: !129, size: 64, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2591, file: !2592, line: 85, baseType: !129, size: 64, offset: 1152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2591, file: !2592, line: 86, baseType: !129, size: 64, offset: 1216)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2591, file: !2592, line: 87, baseType: !129, size: 64, offset: 1280)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2567, file: !2507, line: 96, baseType: !232, size: 32, offset: 1024)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2512, file: !2507, line: 308, baseType: !2617, size: 4608, align: 512)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2507, line: 289, size: 4608, align: 512, elements: !2618)
!2618 = !{!2619, !2620, !2627}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2617, file: !2507, line: 290, baseType: !2530, size: 4096, align: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2617, file: !2507, line: 291, baseType: !2621, size: 512, offset: 4096)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2507, line: 268, size: 512, elements: !2622)
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2621, file: !2507, line: 269, baseType: !175, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2621, file: !2507, line: 270, baseType: !175, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2621, file: !2507, line: 271, baseType: !2626, size: 384, offset: 128)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 384, elements: !1654)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2617, file: !2507, line: 292, baseType: !2628, offset: 4608)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, elements: !326)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2512, file: !2507, line: 309, baseType: !2630, size: 32768)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 32768, elements: !2631)
!2631 = !{!2632}
!2632 = !DISubrange(count: 4096)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !951, file: !952, line: 16, baseType: !943, size: 128, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !951, file: !952, line: 17, baseType: !156, size: 32, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !527, file: !29, line: 1465, baseType: !128, size: 64, offset: 6400)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !527, file: !29, line: 1468, baseType: !232, size: 32, offset: 6464)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !527, file: !29, line: 1470, baseType: !739, size: 64, offset: 6528)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !527, file: !29, line: 1471, baseType: !739, size: 64, offset: 6592)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !527, file: !29, line: 1473, baseType: !187, size: 32, offset: 6656)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !527, file: !29, line: 1474, baseType: !2641, size: 64, offset: 6720)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !29, line: 603, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !527, file: !29, line: 1477, baseType: !2644, size: 256, offset: 6784)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 256, elements: !424)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !527, file: !29, line: 1478, baseType: !2646, size: 128, offset: 7040)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2647, line: 18, baseType: !2648)
!2647 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2647, line: 16, size: 128, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2648, file: !2647, line: 17, baseType: !2651, size: 128)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !2064)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !527, file: !29, line: 1480, baseType: !5, size: 32, offset: 7168)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !527, file: !29, line: 1481, baseType: !1542, size: 32, offset: 7200)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !527, file: !29, line: 1487, baseType: !692, size: 192, offset: 7232)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !527, file: !29, line: 1493, baseType: !474, size: 64, offset: 7424)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !527, file: !29, line: 1495, baseType: !454, size: 64, offset: 7488)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !527, file: !29, line: 1500, baseType: !161, size: 32, offset: 7552)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !527, file: !29, line: 1502, baseType: !2659, size: 448, offset: 7616)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !665, line: 60, size: 448, elements: !2660)
!2660 = !{!2661, !2666, !2667, !2668, !2669, !2670, !2671}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2659, file: !665, line: 61, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!129, !2665, !663}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2659, file: !665, line: 63, baseType: !2662, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2659, file: !665, line: 66, baseType: !662, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2659, file: !665, line: 67, baseType: !161, size: 32, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2659, file: !665, line: 68, baseType: !5, size: 32, offset: 224)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2659, file: !665, line: 71, baseType: !163, size: 128, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2659, file: !665, line: 77, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !527, file: !29, line: 1505, baseType: !696, size: 64, offset: 8064)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !527, file: !29, line: 1508, baseType: !696, size: 64, offset: 8128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !527, file: !29, line: 1511, baseType: !161, size: 32, offset: 8192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !527, file: !29, line: 1514, baseType: !1772, size: 32, offset: 8224)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !527, file: !29, line: 1517, baseType: !2678, size: 64, offset: 8256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1914, line: 18, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !527, file: !29, line: 1518, baseType: !570, size: 64, offset: 8320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !527, file: !29, line: 1525, baseType: !1742, size: 64, offset: 8384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !527, file: !29, line: 1532, baseType: !2683, size: 64, offset: 8448)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2684, line: 52, size: 64, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2683, file: !2684, line: 53, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2684, line: 40, size: 256, elements: !2689)
!2689 = !{!2690, !2691, !2696}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2688, file: !2684, line: 42, baseType: !437)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2688, file: !2684, line: 44, baseType: !2692, size: 192)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2684, line: 28, size: 192, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2692, file: !2684, line: 29, baseType: !163, size: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2692, file: !2684, line: 31, baseType: !662, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2688, file: !2684, line: 49, baseType: !662, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !527, file: !29, line: 1533, baseType: !2683, size: 64, offset: 8512)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !527, file: !29, line: 1534, baseType: !962, size: 128, align: 64, offset: 8576)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !527, file: !29, line: 1535, baseType: !1913, size: 256, offset: 8704)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !527, file: !29, line: 1537, baseType: !692, size: 192, offset: 8960)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !527, file: !29, line: 1542, baseType: !161, size: 32, offset: 9152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !527, file: !29, line: 1545, baseType: !437, offset: 9184)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !527, file: !29, line: 1546, baseType: !163, size: 128, offset: 9216)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !527, file: !29, line: 1548, baseType: !437, offset: 9344)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !527, file: !29, line: 1549, baseType: !163, size: 128, offset: 9344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !383, file: !384, line: 104, baseType: !129, size: 64, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !383, file: !384, line: 105, baseType: !128, size: 64, offset: 960)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !384, line: 107, baseType: !2709, size: 128, offset: 1024)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 107, size: 128, elements: !2710)
!2710 = !{!2711, !2712}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2709, file: !384, line: 108, baseType: !163, size: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2709, file: !384, line: 109, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !383, file: !384, line: 111, baseType: !163, size: 128, offset: 1152)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !383, file: !384, line: 112, baseType: !163, size: 128, offset: 1280)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !383, file: !384, line: 120, baseType: !2717, size: 128, offset: 1408)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 116, size: 128, elements: !2718)
!2718 = !{!2719, !2720, !2721}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2717, file: !384, line: 117, baseType: !574, size: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2717, file: !384, line: 118, baseType: !398, size: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2717, file: !384, line: 119, baseType: !962, size: 128, align: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !376, file: !29, line: 1866, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!474, !382, !351, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2728, line: 10, size: 128, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2729 = !{!2730, !2734}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2727, file: !2728, line: 11, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !128}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2727, file: !2728, line: 12, baseType: !128, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !376, file: !29, line: 1867, baseType: !2736, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!161, !351, !161}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !376, file: !29, line: 1868, baseType: !2740, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!2743, !351, !161}
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !29, line: 581, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !376, file: !29, line: 1870, baseType: !2746, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!161, !382, !500, !161}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !376, file: !29, line: 1872, baseType: !2750, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!161, !351, !382, !355, !241}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !376, file: !29, line: 1873, baseType: !2754, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!161, !382, !351, !382}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !376, file: !29, line: 1874, baseType: !2758, size: 64, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!161, !351, !382}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !376, file: !29, line: 1875, baseType: !2762, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!161, !351, !382, !474}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !376, file: !29, line: 1876, baseType: !2766, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!161, !351, !382, !355}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !376, file: !29, line: 1877, baseType: !2758, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !376, file: !29, line: 1878, baseType: !2771, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!161, !351, !382, !355, !531}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !376, file: !29, line: 1879, baseType: !2775, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!161, !351, !382, !351, !382, !5}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !376, file: !29, line: 1881, baseType: !2779, size: 64, offset: 832)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!161, !382, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !29, line: 219, size: 640, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2795, !2796, !2797}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2783, file: !29, line: 220, baseType: !5, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2783, file: !29, line: 221, baseType: !355, size: 16, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2783, file: !29, line: 222, baseType: !358, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2783, file: !29, line: 223, baseType: !366, size: 32, offset: 96)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2783, file: !29, line: 224, baseType: !536, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2783, file: !29, line: 225, baseType: !2791, size: 128, offset: 192)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !740, line: 13, size: 128, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2791, file: !740, line: 14, baseType: !739, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2791, file: !740, line: 15, baseType: !662, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2783, file: !29, line: 226, baseType: !2791, size: 128, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2783, file: !29, line: 227, baseType: !2791, size: 128, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2783, file: !29, line: 234, baseType: !1266, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !376, file: !29, line: 1882, baseType: !2799, size: 64, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!161, !517, !2802, !232, !5}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2804, line: 22, size: 1152, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2803, file: !2804, line: 23, baseType: !232, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2803, file: !2804, line: 24, baseType: !355, size: 16, offset: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2803, file: !2804, line: 25, baseType: !5, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2803, file: !2804, line: 26, baseType: !1632, size: 32, offset: 96)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2803, file: !2804, line: 27, baseType: !175, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2803, file: !2804, line: 28, baseType: !175, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2803, file: !2804, line: 37, baseType: !175, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2803, file: !2804, line: 38, baseType: !531, size: 32, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2803, file: !2804, line: 39, baseType: !531, size: 32, offset: 352)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2803, file: !2804, line: 40, baseType: !358, size: 32, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2803, file: !2804, line: 41, baseType: !366, size: 32, offset: 416)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2803, file: !2804, line: 42, baseType: !536, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2803, file: !2804, line: 43, baseType: !2791, size: 128, offset: 512)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2803, file: !2804, line: 44, baseType: !2791, size: 128, offset: 640)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2803, file: !2804, line: 45, baseType: !2791, size: 128, offset: 768)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2803, file: !2804, line: 46, baseType: !2791, size: 128, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2803, file: !2804, line: 47, baseType: !175, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2803, file: !2804, line: 48, baseType: !175, size: 64, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !376, file: !29, line: 1883, baseType: !2825, size: 64, offset: 960)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!1295, !382, !500, !179}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !376, file: !29, line: 1884, baseType: !2829, size: 64, offset: 1024)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!161, !351, !2832, !175, !175}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !29, line: 50, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !376, file: !29, line: 1886, baseType: !2835, size: 64, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!161, !351, !2838, !161}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !376, file: !29, line: 1887, baseType: !2840, size: 64, offset: 1152)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!161, !351, !382, !1266, !5, !355}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !376, file: !29, line: 1890, baseType: !2766, size: 64, offset: 1216)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !376, file: !29, line: 1891, baseType: !2845, size: 64, offset: 1280)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!161, !351, !2743, !161}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !352, file: !29, line: 623, baseType: !526, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !352, file: !29, line: 624, baseType: !347, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !352, file: !29, line: 631, baseType: !129, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !29, line: 639, baseType: !2852, size: 32, offset: 384)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !29, line: 639, size: 32, elements: !2853)
!2853 = !{!2854, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2852, file: !29, line: 640, baseType: !2855, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2852, file: !29, line: 641, baseType: !5, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !352, file: !29, line: 643, baseType: !531, size: 32, offset: 416)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !352, file: !29, line: 644, baseType: !536, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !352, file: !29, line: 645, baseType: !2791, size: 128, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !352, file: !29, line: 646, baseType: !2791, size: 128, offset: 640)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !352, file: !29, line: 647, baseType: !2791, size: 128, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !352, file: !29, line: 648, baseType: !437, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !352, file: !29, line: 649, baseType: !138, size: 16, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !352, file: !29, line: 650, baseType: !140, size: 8, offset: 912)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !352, file: !29, line: 651, baseType: !140, size: 8, offset: 920)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !352, file: !29, line: 652, baseType: !853, size: 64, offset: 960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !352, file: !29, line: 659, baseType: !129, size: 64, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !352, file: !29, line: 660, baseType: !865, size: 256, offset: 1088)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !352, file: !29, line: 662, baseType: !129, size: 64, offset: 1344)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !352, file: !29, line: 663, baseType: !129, size: 64, offset: 1408)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !352, file: !29, line: 665, baseType: !574, size: 128, offset: 1472)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !352, file: !29, line: 666, baseType: !163, size: 128, offset: 1600)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !352, file: !29, line: 675, baseType: !163, size: 128, offset: 1728)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !352, file: !29, line: 676, baseType: !163, size: 128, offset: 1856)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !352, file: !29, line: 677, baseType: !163, size: 128, offset: 1984)
!2876 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !29, line: 678, baseType: !2877, size: 128, offset: 2112)
!2877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !29, line: 678, size: 128, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2877, file: !29, line: 679, baseType: !570, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2877, file: !29, line: 680, baseType: !962, size: 128, align: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !352, file: !29, line: 682, baseType: !698, size: 64, offset: 2240)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !352, file: !29, line: 683, baseType: !698, size: 64, offset: 2304)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !352, file: !29, line: 684, baseType: !156, size: 32, offset: 2368)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !352, file: !29, line: 685, baseType: !156, size: 32, offset: 2400)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !352, file: !29, line: 686, baseType: !156, size: 32, offset: 2432)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !352, file: !29, line: 688, baseType: !156, size: 32, offset: 2464)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !29, line: 690, baseType: !2888, size: 64, offset: 2496)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !29, line: 690, size: 64, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2888, file: !29, line: 691, baseType: !1282, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2888, file: !29, line: 692, baseType: !601, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !352, file: !29, line: 694, baseType: !2893, size: 64, offset: 2560)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !29, line: 1100, size: 384, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2894, file: !29, line: 1101, baseType: !437)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2894, file: !29, line: 1102, baseType: !163, size: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2894, file: !29, line: 1103, baseType: !163, size: 128, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2894, file: !29, line: 1104, baseType: !163, size: 128, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !352, file: !29, line: 695, baseType: !348, size: 1216, align: 64, offset: 2624)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !352, file: !29, line: 696, baseType: !163, size: 128, offset: 3840)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !29, line: 697, baseType: !2903, size: 64, offset: 3968)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !29, line: 697, size: 64, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2910, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2903, file: !29, line: 698, baseType: !1509, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2903, file: !29, line: 699, baseType: !886, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2903, file: !29, line: 700, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !29, line: 700, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2903, file: !29, line: 701, baseType: !500, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2903, file: !29, line: 702, baseType: !5, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !352, file: !29, line: 705, baseType: !187, size: 32, offset: 4032)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !352, file: !29, line: 708, baseType: !187, size: 32, offset: 4064)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !352, file: !29, line: 709, baseType: !2641, size: 64, offset: 4096)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !352, file: !29, line: 720, baseType: !128, size: 64, offset: 4160)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !348, file: !29, line: 453, baseType: !2266, size: 128, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !348, file: !29, line: 454, baseType: !178, size: 32, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !348, file: !29, line: 455, baseType: !156, size: 32, offset: 224)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !348, file: !29, line: 460, baseType: !1108, size: 128, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !348, file: !29, line: 461, baseType: !865, size: 256, offset: 384)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !348, file: !29, line: 462, baseType: !129, size: 64, offset: 640)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !348, file: !29, line: 463, baseType: !129, size: 64, offset: 704)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !348, file: !29, line: 464, baseType: !129, size: 64, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !348, file: !29, line: 465, baseType: !2925, size: 64, offset: 832)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !29, line: 367, size: 1408, elements: !2928)
!2928 = !{!2929, !2933, !2937, !2941, !2945, !2949, !2955, !2959, !2963, !2968, !2972, !2976, !2980, !2981, !2985, !2991, !2992, !2993, !2997, !3002, !3006, !3013}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2927, file: !29, line: 368, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!161, !334, !613}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2927, file: !29, line: 369, baseType: !2934, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!161, !1266, !334}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2927, file: !29, line: 372, baseType: !2938, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!161, !347, !613}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2927, file: !29, line: 375, baseType: !2942, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!161, !334}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2927, file: !29, line: 381, baseType: !2946, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!161, !1266, !347, !166, !5}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2927, file: !29, line: 383, baseType: !2950, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !29, line: 290, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2927, file: !29, line: 385, baseType: !2956, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!161, !1266, !347, !536, !5, !5, !333, !1466}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2927, file: !29, line: 388, baseType: !2960, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!161, !1266, !347, !536, !5, !5, !334, !128}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2927, file: !29, line: 393, baseType: !2964, size: 64, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!2967, !347, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !157, line: 125, baseType: !175)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2927, file: !29, line: 394, baseType: !2969, size: 64, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !334, !5, !5}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2927, file: !29, line: 395, baseType: !2973, size: 64, offset: 640)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!161, !334, !178}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2927, file: !29, line: 396, baseType: !2977, size: 64, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !334}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2927, file: !29, line: 397, baseType: !1304, size: 64, offset: 768)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2927, file: !29, line: 402, baseType: !2982, size: 64, offset: 832)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!161, !347, !334, !334, !51}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2927, file: !29, line: 404, baseType: !2986, size: 64, offset: 896)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!241, !334, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2990, line: 305, baseType: !5)
!2990 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2927, file: !29, line: 405, baseType: !2977, size: 64, offset: 960)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2927, file: !29, line: 406, baseType: !2942, size: 64, offset: 1024)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2927, file: !29, line: 407, baseType: !2994, size: 64, offset: 1088)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!161, !334, !129, !129}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2927, file: !29, line: 409, baseType: !2998, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !334, !3001, !3001}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2927, file: !29, line: 410, baseType: !3003, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!161, !347, !334}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2927, file: !29, line: 413, baseType: !3007, size: 64, offset: 1280)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!161, !3010, !1266, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !29, line: 61, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2927, file: !29, line: 415, baseType: !3014, size: 64, offset: 1344)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !1266}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !29, line: 466, baseType: !129, size: 64, offset: 896)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !348, file: !29, line: 467, baseType: !1772, size: 32, offset: 960)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !348, file: !29, line: 468, baseType: !437, offset: 992)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !348, file: !29, line: 469, baseType: !163, size: 128, offset: 1024)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !348, file: !29, line: 470, baseType: !128, size: 64, offset: 1152)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !343, file: !336, line: 87, baseType: !129, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !343, file: !336, line: 94, baseType: !129, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 96, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 96, size: 64, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3025, file: !336, line: 101, baseType: !239, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 103, baseType: !3029, size: 320)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 103, size: 320, elements: !3030)
!3030 = !{!3031, !3041, !3042, !3043}
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !3029, file: !336, line: 104, baseType: !3032, size: 128)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3029, file: !336, line: 104, size: 128, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3032, file: !336, line: 105, baseType: !163, size: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, scope: !3032, file: !336, line: 106, baseType: !3036, size: 128)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !336, line: 106, size: 128, elements: !3037)
!3037 = !{!3038, !3039, !3040}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3036, file: !336, line: 107, baseType: !334, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3036, file: !336, line: 109, baseType: !161, size: 32, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3036, file: !336, line: 110, baseType: !161, size: 32, offset: 96)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3029, file: !336, line: 117, baseType: !2285, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3029, file: !336, line: 119, baseType: !128, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !3029, file: !336, line: 120, baseType: !3044, size: 64, offset: 256)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3029, file: !336, line: 120, size: 64, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3044, file: !336, line: 121, baseType: !128, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3044, file: !336, line: 122, baseType: !129, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !3044, file: !336, line: 123, baseType: !3049, size: 32)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3044, file: !336, line: 123, size: 32, elements: !3050)
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3049, file: !336, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3049, file: !336, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3049, file: !336, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 130, baseType: !3055, size: 192)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 130, size: 192, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3055, file: !336, line: 131, baseType: !129, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3055, file: !336, line: 134, baseType: !142, size: 8, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3055, file: !336, line: 135, baseType: !142, size: 8, offset: 72)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3055, file: !336, line: 136, baseType: !156, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3055, file: !336, line: 137, baseType: !5, size: 32, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 139, baseType: !3063, size: 256)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 139, size: 256, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3063, file: !336, line: 140, baseType: !129, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3063, file: !336, line: 141, baseType: !156, size: 32, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3063, file: !336, line: 143, baseType: !163, size: 128, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 145, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 145, size: 256, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3079}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3069, file: !336, line: 146, baseType: !129, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3069, file: !336, line: 147, baseType: !1237, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3069, file: !336, line: 148, baseType: !129, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !336, line: 149, baseType: !3075, size: 64, offset: 192)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3069, file: !336, line: 149, size: 64, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3075, file: !336, line: 150, baseType: !1145, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3075, file: !336, line: 151, baseType: !156, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3069, file: !336, line: 156, baseType: !437, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 159, baseType: !3081, size: 128)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 159, size: 128, elements: !3082)
!3082 = !{!3083, !3147}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3081, file: !336, line: 161, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !59, line: 110, size: 1152, elements: !3086)
!3086 = !{!3087, !3097, !3118, !3119, !3120, !3121, !3122, !3134, !3135, !3136}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3085, file: !59, line: 111, baseType: !3088, size: 384)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !59, line: 19, size: 384, elements: !3089)
!3089 = !{!3090, !3092, !3093, !3094, !3095, !3096}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3088, file: !59, line: 20, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3088, file: !59, line: 21, baseType: !3091, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3088, file: !59, line: 22, baseType: !3091, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3088, file: !59, line: 23, baseType: !129, size: 64, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3088, file: !59, line: 24, baseType: !129, size: 64, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3088, file: !59, line: 25, baseType: !129, size: 64, offset: 320)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3085, file: !59, line: 112, baseType: !3098, size: 64, offset: 384)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3100, line: 105, size: 128, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3099, file: !3100, line: 110, baseType: !129, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3099, file: !3100, line: 118, baseType: !3104, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3100, line: 95, size: 448, elements: !3106)
!3106 = !{!3107, !3108, !3113, !3114, !3115, !3116, !3117}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3105, file: !3100, line: 96, baseType: !696, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3105, file: !3100, line: 97, baseType: !3109, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3100, line: 60, baseType: !3111)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3098}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3105, file: !3100, line: 98, baseType: !3109, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3105, file: !3100, line: 99, baseType: !241, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3105, file: !3100, line: 100, baseType: !241, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3105, file: !3100, line: 101, baseType: !962, size: 128, align: 64, offset: 256)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3105, file: !3100, line: 102, baseType: !3098, size: 64, offset: 384)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3085, file: !59, line: 113, baseType: !3099, size: 128, offset: 448)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3085, file: !59, line: 114, baseType: !1888, size: 192, offset: 576)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3085, file: !59, line: 115, baseType: !58, size: 32, offset: 768)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3085, file: !59, line: 116, baseType: !5, size: 32, offset: 800)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3085, file: !59, line: 117, baseType: !3123, size: 64, offset: 832)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !59, line: 67, size: 256, elements: !3126)
!3126 = !{!3127, !3128, !3132, !3133}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3125, file: !59, line: 73, baseType: !2977, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3125, file: !59, line: 78, baseType: !3129, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3084}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3125, file: !59, line: 83, baseType: !3129, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3125, file: !59, line: 89, baseType: !1198, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3085, file: !59, line: 118, baseType: !128, size: 64, offset: 896)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3085, file: !59, line: 119, baseType: !161, size: 32, offset: 960)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !59, line: 120, baseType: !3137, size: 128, offset: 1024)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !59, line: 120, size: 128, elements: !3138)
!3138 = !{!3139, !3145}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3137, file: !59, line: 121, baseType: !3140, size: 128)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3141, line: 6, size: 128, elements: !3142)
!3141 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3140, file: !3141, line: 7, baseType: !175, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3140, file: !3141, line: 8, baseType: !175, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3137, file: !59, line: 122, baseType: !3146)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3140, elements: !326)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3081, file: !336, line: 162, baseType: !128, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !340, file: !336, line: 176, baseType: !962, size: 128, align: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 179, baseType: !3150, size: 32, offset: 384)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 179, size: 32, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3150, file: !336, line: 184, baseType: !156, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3150, file: !336, line: 192, baseType: !5, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3150, file: !336, line: 194, baseType: !5, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3150, file: !336, line: 195, baseType: !161, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !335, file: !336, line: 199, baseType: !156, size: 32, offset: 416)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !329, file: !199, line: 424, baseType: !161, size: 32, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "page_count_mapped", scope: !329, file: !199, line: 425, baseType: !161, size: 32, offset: 160)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue_iso", scope: !204, file: !112, line: 109, baseType: !297, size: 64, offset: 960)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iso_completions", scope: !204, file: !112, line: 111, baseType: !3161, size: 64, offset: 1024)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!161, !273}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "stop_iso", scope: !204, file: !112, line: 113, baseType: !3161, size: 64, offset: 1088)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !198, file: !199, line: 85, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !78, line: 461, size: 5568, elements: !3168)
!3168 = !{!3169, !3466, !3467, !3470, !3471, !3522, !3595, !3596, !3597, !3598, !3599, !3608, !3713, !3726, !3729, !3730, !3734, !3735, !3736, !3737, !3741, !3747, !3748, !3751, !3755, !3845, !3846, !3847, !3848, !3849, !3881, !3882, !3883, !3886, !3889, !3890, !3891, !3892}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3167, file: !78, line: 462, baseType: !3170, size: 512)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3171, line: 64, size: 512, elements: !3172)
!3171 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3172 = !{!3173, !3174, !3175, !3177, !3217, !3317, !3456, !3461, !3462, !3463, !3464, !3465}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3170, file: !3171, line: 65, baseType: !474, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3170, file: !3171, line: 66, baseType: !163, size: 128, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3170, file: !3171, line: 67, baseType: !3176, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3170, file: !3171, line: 68, baseType: !3178, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3171, line: 192, size: 704, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3179, file: !3171, line: 193, baseType: !163, size: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3179, file: !3171, line: 194, baseType: !437, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3179, file: !3171, line: 195, baseType: !3170, size: 512, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3179, file: !3171, line: 196, baseType: !3185, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3171, line: 156, size: 192, elements: !3188)
!3188 = !{!3189, !3194, !3199}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3187, file: !3171, line: 157, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3191)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!161, !3178, !3176}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3187, file: !3171, line: 158, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3196)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!474, !3178, !3176}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3187, file: !3171, line: 159, baseType: !3200, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!161, !3178, !3176, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3171, line: 148, size: 20736, elements: !3206)
!3206 = !{!3207, !3209, !3211, !3212, !3216}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3205, file: !3171, line: 149, baseType: !3208, size: 192)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 192, elements: !586)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3205, file: !3171, line: 150, baseType: !3210, size: 4096, offset: 192)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 4096, elements: !2211)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3205, file: !3171, line: 151, baseType: !161, size: 32, offset: 4288)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3205, file: !3171, line: 152, baseType: !3213, size: 16384, offset: 4320)
!3213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 16384, elements: !3214)
!3214 = !{!3215}
!3215 = !DISubrange(count: 2048)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3205, file: !3171, line: 153, baseType: !161, size: 32, offset: 20704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3170, file: !3171, line: 69, baseType: !3218, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3171, line: 138, size: 448, elements: !3220)
!3220 = !{!3221, !3225, !3244, !3246, !3279, !3307, !3311}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3219, file: !3171, line: 139, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3176}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3219, file: !3171, line: 140, baseType: !3226, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3229, line: 230, size: 128, elements: !3230)
!3229 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3230 = !{!3231, !3240}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3228, file: !3229, line: 231, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!1295, !3176, !3235, !500}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3229, line: 30, size: 128, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3236, file: !3229, line: 31, baseType: !474, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3236, file: !3229, line: 32, baseType: !355, size: 16, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3228, file: !3229, line: 232, baseType: !3241, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!1295, !3176, !3235, !474, !179}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3219, file: !3171, line: 141, baseType: !3245, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3219, file: !3171, line: 142, baseType: !3247, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3250)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3229, line: 84, size: 320, elements: !3251)
!3251 = !{!3252, !3253, !3257, !3276, !3277}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3250, file: !3229, line: 85, baseType: !474, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3250, file: !3229, line: 86, baseType: !3254, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!355, !3176, !3235, !161}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3250, file: !3229, line: 88, baseType: !3258, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!355, !3176, !3261, !161}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3229, line: 168, size: 448, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3271, !3272}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3262, file: !3229, line: 169, baseType: !3236, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3262, file: !3229, line: 170, baseType: !179, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3262, file: !3229, line: 171, baseType: !128, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3262, file: !3229, line: 172, baseType: !3268, size: 64, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!1295, !1266, !3176, !3261, !500, !536, !179}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3262, file: !3229, line: 174, baseType: !3268, size: 64, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3262, file: !3229, line: 176, baseType: !3273, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!161, !1266, !3176, !3261, !1152}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3250, file: !3229, line: 90, baseType: !3245, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3250, file: !3229, line: 91, baseType: !3278, size: 64, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3219, file: !3171, line: 143, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!3283, !3176}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !66, line: 39, size: 384, elements: !3286)
!3286 = !{!3287, !3288, !3292, !3296, !3302, !3306}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3285, file: !66, line: 40, baseType: !65, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3285, file: !66, line: 41, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!241}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3285, file: !66, line: 42, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!128}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3285, file: !66, line: 43, baseType: !3297, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!2452, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !66, line: 19, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3285, file: !66, line: 44, baseType: !3303, size: 64, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!2452}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3285, file: !66, line: 45, baseType: !2731, size: 64, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3219, file: !3171, line: 144, baseType: !3308, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!2452, !3176}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3219, file: !3171, line: 145, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3176, !3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3170, file: !3171, line: 70, baseType: !3318, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !551, line: 123, size: 1024, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3449, !3450, !3451, !3452, !3453}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3319, file: !551, line: 124, baseType: !156, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3319, file: !551, line: 125, baseType: !156, size: 32, offset: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3319, file: !551, line: 135, baseType: !3318, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3319, file: !551, line: 136, baseType: !474, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3319, file: !551, line: 138, baseType: !1010, size: 192, align: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3319, file: !551, line: 140, baseType: !2452, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3319, file: !551, line: 141, baseType: !5, size: 32, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3319, file: !551, line: 142, baseType: !3329, size: 256, offset: 512)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3319, file: !551, line: 142, size: 256, elements: !3330)
!3330 = !{!3331, !3377, !3381}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3329, file: !551, line: 143, baseType: !3332, size: 192)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !551, line: 91, size: 192, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3332, file: !551, line: 92, baseType: !129, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3332, file: !551, line: 94, baseType: !1111, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3332, file: !551, line: 100, baseType: !3337, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !551, line: 180, size: 704, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3349, !3350, !3351, !3375, !3376}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3338, file: !551, line: 182, baseType: !3318, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3338, file: !551, line: 183, baseType: !5, size: 32, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3338, file: !551, line: 186, baseType: !3343, size: 192, offset: 128)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3344, line: 19, size: 192, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !{!3346, !3347, !3348}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3343, file: !3344, line: 20, baseType: !2266, size: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3343, file: !3344, line: 21, baseType: !5, size: 32, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3343, file: !3344, line: 22, baseType: !5, size: 32, offset: 160)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3338, file: !551, line: 187, baseType: !232, size: 32, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3338, file: !551, line: 188, baseType: !232, size: 32, offset: 352)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3338, file: !551, line: 189, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !551, line: 168, size: 320, elements: !3354)
!3354 = !{!3355, !3359, !3363, !3367, !3371}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3353, file: !551, line: 169, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!161, !648, !3337}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3353, file: !551, line: 171, baseType: !3360, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!161, !3318, !474, !355}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3353, file: !551, line: 173, baseType: !3364, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!161, !3318}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3353, file: !551, line: 174, baseType: !3368, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!161, !3318, !3318, !474}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3353, file: !551, line: 176, baseType: !3372, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!161, !648, !3318, !3337}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3338, file: !551, line: 192, baseType: !163, size: 128, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3338, file: !551, line: 194, baseType: !943, size: 128, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3329, file: !551, line: 144, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !551, line: 103, size: 64, elements: !3379)
!3379 = !{!3380}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3378, file: !551, line: 104, baseType: !3318, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3329, file: !551, line: 145, baseType: !3382, size: 256)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !551, line: 107, size: 256, elements: !3383)
!3383 = !{!3384, !3444, !3447, !3448}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3382, file: !551, line: 108, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !551, line: 217, size: 768, elements: !3388)
!3388 = !{!3389, !3409, !3413, !3417, !3421, !3425, !3429, !3433, !3434, !3435, !3436, !3440}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3387, file: !551, line: 222, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!161, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !551, line: 197, size: 1088, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3394, file: !551, line: 199, baseType: !3318, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3394, file: !551, line: 200, baseType: !1266, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3394, file: !551, line: 201, baseType: !648, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3394, file: !551, line: 202, baseType: !128, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3394, file: !551, line: 205, baseType: !692, size: 192, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3394, file: !551, line: 206, baseType: !692, size: 192, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3394, file: !551, line: 207, baseType: !161, size: 32, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3394, file: !551, line: 208, baseType: !163, size: 128, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3394, file: !551, line: 209, baseType: !500, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3394, file: !551, line: 211, baseType: !179, size: 64, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3394, file: !551, line: 212, baseType: !241, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3394, file: !551, line: 213, baseType: !241, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3394, file: !551, line: 214, baseType: !1180, size: 64, offset: 1024)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3387, file: !551, line: 223, baseType: !3410, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3393}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3387, file: !551, line: 236, baseType: !3414, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!161, !648, !128}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3387, file: !551, line: 238, baseType: !3418, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!128, !648, !1298}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3387, file: !551, line: 239, baseType: !3422, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!128, !648, !128, !1298}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3387, file: !551, line: 240, baseType: !3426, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !648, !128}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3387, file: !551, line: 242, baseType: !3430, size: 64, offset: 384)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!1295, !3393, !500, !179, !536}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3387, file: !551, line: 252, baseType: !179, size: 64, offset: 448)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3387, file: !551, line: 259, baseType: !241, size: 8, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3387, file: !551, line: 260, baseType: !3430, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3387, file: !551, line: 263, baseType: !3437, size: 64, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!1352, !3393, !1353}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3387, file: !551, line: 266, baseType: !3441, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!161, !3393, !1152}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3382, file: !551, line: 109, baseType: !3445, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !551, line: 31, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3382, file: !551, line: 110, baseType: !536, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3382, file: !551, line: 111, baseType: !3318, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3319, file: !551, line: 148, baseType: !128, size: 64, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3319, file: !551, line: 154, baseType: !175, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3319, file: !551, line: 156, baseType: !138, size: 16, offset: 896)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3319, file: !551, line: 157, baseType: !355, size: 16, offset: 912)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3319, file: !551, line: 158, baseType: !3454, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !551, line: 32, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3170, file: !3171, line: 71, baseType: !3457, size: 32, offset: 448)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3458, line: 19, size: 32, elements: !3459)
!3458 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3457, file: !3458, line: 20, baseType: !152, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3170, file: !3171, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3170, file: !3171, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3170, file: !3171, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3170, file: !3171, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3170, file: !3171, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3167, file: !78, line: 463, baseType: !3166, size: 64, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3167, file: !78, line: 465, baseType: !3468, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !78, line: 36, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3167, file: !78, line: 467, baseType: !474, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3167, file: !78, line: 468, baseType: !3472, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !78, line: 87, size: 384, elements: !3475)
!3475 = !{!3476, !3477, !3478, !3482, !3487, !3491}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3474, file: !78, line: 88, baseType: !474, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3474, file: !78, line: 89, baseType: !3247, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3474, file: !78, line: 90, baseType: !3479, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!161, !3166, !3204}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3474, file: !78, line: 91, baseType: !3483, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!500, !3166, !3486, !3315, !3316}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3474, file: !78, line: 93, baseType: !3488, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3166}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3474, file: !78, line: 95, baseType: !3492, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !85, line: 278, size: 1472, elements: !3495)
!3495 = !{!3496, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3494, file: !85, line: 279, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!161, !3166}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3494, file: !85, line: 280, baseType: !3488, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3494, file: !85, line: 281, baseType: !3497, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3494, file: !85, line: 282, baseType: !3497, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3494, file: !85, line: 283, baseType: !3497, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3494, file: !85, line: 284, baseType: !3497, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3494, file: !85, line: 285, baseType: !3497, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3494, file: !85, line: 286, baseType: !3497, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3494, file: !85, line: 287, baseType: !3497, size: 64, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3494, file: !85, line: 288, baseType: !3497, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3494, file: !85, line: 289, baseType: !3497, size: 64, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3494, file: !85, line: 290, baseType: !3497, size: 64, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3494, file: !85, line: 291, baseType: !3497, size: 64, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3494, file: !85, line: 292, baseType: !3497, size: 64, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3494, file: !85, line: 293, baseType: !3497, size: 64, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3494, file: !85, line: 294, baseType: !3497, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3494, file: !85, line: 295, baseType: !3497, size: 64, offset: 1024)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3494, file: !85, line: 296, baseType: !3497, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3494, file: !85, line: 297, baseType: !3497, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3494, file: !85, line: 298, baseType: !3497, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3494, file: !85, line: 299, baseType: !3497, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3494, file: !85, line: 300, baseType: !3497, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3494, file: !85, line: 301, baseType: !3497, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3167, file: !78, line: 470, baseType: !3523, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3525, line: 82, size: 1408, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3590, !3593, !3594}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3524, file: !3525, line: 83, baseType: !474, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3524, file: !3525, line: 84, baseType: !474, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3524, file: !3525, line: 85, baseType: !3166, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3524, file: !3525, line: 86, baseType: !3247, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3524, file: !3525, line: 87, baseType: !3247, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3524, file: !3525, line: 88, baseType: !3247, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3524, file: !3525, line: 90, baseType: !3534, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!161, !3166, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !72, line: 95, size: 1152, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3546, !3550, !3554, !3555, !3556, !3557, !3558, !3566, !3567, !3568, !3569, !3570, !3571}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3538, file: !72, line: 96, baseType: !474, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3538, file: !72, line: 97, baseType: !3523, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3538, file: !72, line: 99, baseType: !565, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3538, file: !72, line: 100, baseType: !474, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3538, file: !72, line: 102, baseType: !241, size: 8, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3538, file: !72, line: 103, baseType: !71, size: 32, offset: 288)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3538, file: !72, line: 105, baseType: !3547, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3549)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !72, line: 105, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3538, file: !72, line: 106, baseType: !3551, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3553)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !72, line: 106, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3538, file: !72, line: 108, baseType: !3497, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3538, file: !72, line: 109, baseType: !3488, size: 64, offset: 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3538, file: !72, line: 110, baseType: !3497, size: 64, offset: 576)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3538, file: !72, line: 111, baseType: !3488, size: 64, offset: 640)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3538, file: !72, line: 112, baseType: !3559, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!161, !3166, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !85, line: 52, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !85, line: 50, size: 32, elements: !3564)
!3564 = !{!3565}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3563, file: !85, line: 51, baseType: !161, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3538, file: !72, line: 113, baseType: !3497, size: 64, offset: 768)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3538, file: !72, line: 114, baseType: !3247, size: 64, offset: 832)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3538, file: !72, line: 115, baseType: !3247, size: 64, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3538, file: !72, line: 117, baseType: !3492, size: 64, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3538, file: !72, line: 118, baseType: !3488, size: 64, offset: 1024)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3538, file: !72, line: 120, baseType: !3572, size: 64, offset: 1088)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !72, line: 120, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3524, file: !3525, line: 91, baseType: !3479, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3524, file: !3525, line: 92, baseType: !3497, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3524, file: !3525, line: 93, baseType: !3488, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3524, file: !3525, line: 94, baseType: !3497, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3524, file: !3525, line: 95, baseType: !3488, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3524, file: !3525, line: 97, baseType: !3497, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3524, file: !3525, line: 98, baseType: !3497, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3524, file: !3525, line: 100, baseType: !3559, size: 64, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3524, file: !3525, line: 101, baseType: !3497, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3524, file: !3525, line: 103, baseType: !3497, size: 64, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3524, file: !3525, line: 105, baseType: !3497, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3524, file: !3525, line: 107, baseType: !3492, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3524, file: !3525, line: 109, baseType: !3587, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3589)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3525, line: 109, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3524, file: !3525, line: 111, baseType: !3591, size: 64, offset: 1280)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3525, line: 111, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3524, file: !3525, line: 112, baseType: !580, offset: 1344)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3524, file: !3525, line: 114, baseType: !241, size: 8, offset: 1344)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3167, file: !78, line: 471, baseType: !3537, size: 64, offset: 832)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3167, file: !78, line: 473, baseType: !128, size: 64, offset: 896)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3167, file: !78, line: 475, baseType: !128, size: 64, offset: 960)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3167, file: !78, line: 480, baseType: !692, size: 192, offset: 1024)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3167, file: !78, line: 484, baseType: !3600, size: 576, offset: 1216)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !78, line: 361, size: 576, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3600, file: !78, line: 362, baseType: !163, size: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3600, file: !78, line: 363, baseType: !163, size: 128, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3600, file: !78, line: 364, baseType: !163, size: 128, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3600, file: !78, line: 365, baseType: !163, size: 128, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3600, file: !78, line: 366, baseType: !241, size: 8, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3600, file: !78, line: 367, baseType: !77, size: 32, offset: 544)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3167, file: !78, line: 485, baseType: !3609, size: 2304, offset: 1792)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !85, line: 565, size: 2304, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3706, !3710}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3609, file: !85, line: 566, baseType: !3562, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3609, file: !85, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3609, file: !85, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3609, file: !85, line: 569, baseType: !241, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3609, file: !85, line: 570, baseType: !241, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3609, file: !85, line: 571, baseType: !241, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3609, file: !85, line: 572, baseType: !241, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3609, file: !85, line: 573, baseType: !241, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3609, file: !85, line: 574, baseType: !241, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3609, file: !85, line: 575, baseType: !241, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3609, file: !85, line: 576, baseType: !241, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3609, file: !85, line: 577, baseType: !232, size: 32, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3609, file: !85, line: 578, baseType: !437, offset: 96)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3609, file: !85, line: 580, baseType: !163, size: 128, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3609, file: !85, line: 581, baseType: !1888, size: 192, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3609, file: !85, line: 582, baseType: !3627, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3629, line: 43, size: 1472, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3638, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3628, file: !3629, line: 44, baseType: !474, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3628, file: !3629, line: 45, baseType: !161, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3628, file: !3629, line: 46, baseType: !163, size: 128, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3628, file: !3629, line: 47, baseType: !437, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3628, file: !3629, line: 48, baseType: !3636, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !85, line: 533, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3628, file: !3629, line: 49, baseType: !3639, size: 320, offset: 320)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3640, line: 11, size: 320, elements: !3641)
!3640 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3641 = !{!3642, !3643, !3644, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3639, file: !3640, line: 16, baseType: !574, size: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3639, file: !3640, line: 17, baseType: !129, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3639, file: !3640, line: 18, baseType: !3645, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3639, file: !3640, line: 19, baseType: !232, size: 32, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3628, file: !3629, line: 50, baseType: !129, size: 64, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3628, file: !3629, line: 51, baseType: !1062, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3628, file: !3629, line: 52, baseType: !1062, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3628, file: !3629, line: 53, baseType: !1062, size: 64, offset: 832)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3628, file: !3629, line: 54, baseType: !1062, size: 64, offset: 896)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3628, file: !3629, line: 55, baseType: !1062, size: 64, offset: 960)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3628, file: !3629, line: 56, baseType: !129, size: 64, offset: 1024)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3628, file: !3629, line: 57, baseType: !129, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3628, file: !3629, line: 58, baseType: !129, size: 64, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3628, file: !3629, line: 59, baseType: !129, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3628, file: !3629, line: 60, baseType: !129, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3628, file: !3629, line: 61, baseType: !3166, size: 64, offset: 1344)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3628, file: !3629, line: 62, baseType: !241, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3628, file: !3629, line: 63, baseType: !241, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3609, file: !85, line: 583, baseType: !241, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3609, file: !85, line: 584, baseType: !241, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3609, file: !85, line: 585, baseType: !241, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3609, file: !85, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3609, file: !85, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3609, file: !85, line: 592, baseType: !1054, size: 512, offset: 576)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3609, file: !85, line: 593, baseType: !175, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3609, file: !85, line: 594, baseType: !1913, size: 256, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3609, file: !85, line: 595, baseType: !943, size: 128, offset: 1408)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3609, file: !85, line: 596, baseType: !3636, size: 64, offset: 1536)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3609, file: !85, line: 597, baseType: !156, size: 32, offset: 1600)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3609, file: !85, line: 598, baseType: !156, size: 32, offset: 1632)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3609, file: !85, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3609, file: !85, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3609, file: !85, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3609, file: !85, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3609, file: !85, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3609, file: !85, line: 604, baseType: !241, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3609, file: !85, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3609, file: !85, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3609, file: !85, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3609, file: !85, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3609, file: !85, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3609, file: !85, line: 610, baseType: !5, size: 32, offset: 1696)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3609, file: !85, line: 611, baseType: !84, size: 32, offset: 1728)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3609, file: !85, line: 612, baseType: !92, size: 32, offset: 1760)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3609, file: !85, line: 613, baseType: !161, size: 32, offset: 1792)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3609, file: !85, line: 614, baseType: !161, size: 32, offset: 1824)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3609, file: !85, line: 615, baseType: !175, size: 64, offset: 1856)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3609, file: !85, line: 616, baseType: !175, size: 64, offset: 1920)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3609, file: !85, line: 617, baseType: !175, size: 64, offset: 1984)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3609, file: !85, line: 618, baseType: !175, size: 64, offset: 2048)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3609, file: !85, line: 620, baseType: !3697, size: 64, offset: 2112)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !85, line: 536, size: 256, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3698, file: !85, line: 537, baseType: !437)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3698, file: !85, line: 538, baseType: !5, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3698, file: !85, line: 540, baseType: !163, size: 128, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3698, file: !85, line: 543, baseType: !3704, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !85, line: 534, flags: DIFlagFwdDecl)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3609, file: !85, line: 621, baseType: !3707, size: 64, offset: 2176)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3166, !304}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3609, file: !85, line: 622, baseType: !3711, size: 64, offset: 2240)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !85, line: 622, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3167, file: !78, line: 486, baseType: !3714, size: 64, offset: 4096)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !85, line: 642, size: 1792, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3723, !3724, !3725}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3715, file: !85, line: 643, baseType: !3494, size: 1472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3715, file: !85, line: 644, baseType: !3497, size: 64, offset: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3715, file: !85, line: 645, baseType: !3720, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{null, !3166, !241}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3715, file: !85, line: 646, baseType: !3497, size: 64, offset: 1600)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3715, file: !85, line: 647, baseType: !3488, size: 64, offset: 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3715, file: !85, line: 648, baseType: !3488, size: 64, offset: 1728)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3167, file: !78, line: 493, baseType: !3727, size: 64, offset: 4160)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !78, line: 493, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3167, file: !78, line: 499, baseType: !163, size: 128, offset: 4224)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3167, file: !78, line: 502, baseType: !3731, size: 64, offset: 4352)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3733)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !78, line: 502, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3167, file: !78, line: 504, baseType: !310, size: 64, offset: 4416)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3167, file: !78, line: 505, baseType: !175, size: 64, offset: 4480)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3167, file: !78, line: 510, baseType: !175, size: 64, offset: 4544)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3167, file: !78, line: 511, baseType: !3738, size: 64, offset: 4608)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !78, line: 511, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3167, file: !78, line: 513, baseType: !3742, size: 64, offset: 4672)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !78, line: 288, size: 128, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3743, file: !78, line: 293, baseType: !5, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3743, file: !78, line: 294, baseType: !129, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3167, file: !78, line: 515, baseType: !163, size: 128, offset: 4736)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3167, file: !78, line: 526, baseType: !3749, offset: 4864)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3750, line: 5, elements: !451)
!3750 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3167, file: !78, line: 528, baseType: !3752, size: 64, offset: 4864)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3754, line: 14, flags: DIFlagFwdDecl)
!3754 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3167, file: !78, line: 529, baseType: !3756, size: 64, offset: 4928)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3758, line: 17, size: 192, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3759 = !{!3760, !3761, !3844}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3757, file: !3758, line: 18, baseType: !3756, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3757, file: !3758, line: 19, baseType: !3762, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3764)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3758, line: 110, size: 1152, elements: !3765)
!3765 = !{!3766, !3770, !3774, !3780, !3786, !3790, !3794, !3799, !3803, !3804, !3808, !3812, !3816, !3827, !3828, !3829, !3830, !3840}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3764, file: !3758, line: 111, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!3756, !3756}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3764, file: !3758, line: 112, baseType: !3771, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3756}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3764, file: !3758, line: 113, baseType: !3775, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!241, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3764, file: !3758, line: 114, baseType: !3781, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!2452, !3778, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3167)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3764, file: !3758, line: 116, baseType: !3787, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!241, !3778, !474}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3764, file: !3758, line: 118, baseType: !3791, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!161, !3778, !474, !5, !128, !179}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3764, file: !3758, line: 123, baseType: !3795, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!161, !3778, !474, !3798, !179}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3764, file: !3758, line: 126, baseType: !3800, size: 64, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!474, !3778}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3764, file: !3758, line: 127, baseType: !3800, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3764, file: !3758, line: 128, baseType: !3805, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!3756, !3778}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3764, file: !3758, line: 130, baseType: !3809, size: 64, offset: 640)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!3756, !3778, !3756}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3764, file: !3758, line: 133, baseType: !3813, size: 64, offset: 704)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!3756, !3778, !474}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3764, file: !3758, line: 135, baseType: !3817, size: 64, offset: 768)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!161, !3778, !474, !474, !5, !5, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3758, line: 43, size: 640, elements: !3822)
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3821, file: !3758, line: 44, baseType: !3756, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3821, file: !3758, line: 45, baseType: !5, size: 32, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3821, file: !3758, line: 46, baseType: !3826, size: 512, offset: 128)
!3826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 512, elements: !1092)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3764, file: !3758, line: 140, baseType: !3809, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3764, file: !3758, line: 143, baseType: !3805, size: 64, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3764, file: !3758, line: 145, baseType: !3767, size: 64, offset: 960)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3764, file: !3758, line: 146, baseType: !3831, size: 64, offset: 1024)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!161, !3778, !3834}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3758, line: 29, size: 128, elements: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3835, file: !3758, line: 30, baseType: !5, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3835, file: !3758, line: 31, baseType: !5, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3835, file: !3758, line: 32, baseType: !3778, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3764, file: !3758, line: 148, baseType: !3841, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!161, !3778, !3166}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3757, file: !3758, line: 20, baseType: !3166, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3167, file: !78, line: 534, baseType: !531, size: 32, offset: 4992)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3167, file: !78, line: 535, baseType: !232, size: 32, offset: 5024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3167, file: !78, line: 537, baseType: !437, offset: 5056)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3167, file: !78, line: 538, baseType: !163, size: 128, offset: 5056)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3167, file: !78, line: 540, baseType: !3850, size: 64, offset: 5184)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3852, line: 54, size: 960, elements: !3853)
!3852 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859, !3860, !3864, !3868, !3869, !3870, !3871, !3875, !3879, !3880}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !3852, line: 55, baseType: !474, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3851, file: !3852, line: 56, baseType: !565, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3851, file: !3852, line: 58, baseType: !3247, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3851, file: !3852, line: 59, baseType: !3247, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3851, file: !3852, line: 60, baseType: !3176, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3851, file: !3852, line: 62, baseType: !3479, size: 64, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3851, file: !3852, line: 63, baseType: !3861, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!500, !3166, !3486}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3851, file: !3852, line: 65, baseType: !3865, size: 64, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3850}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3851, file: !3852, line: 66, baseType: !3488, size: 64, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3851, file: !3852, line: 68, baseType: !3497, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3851, file: !3852, line: 70, baseType: !3283, size: 64, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3851, file: !3852, line: 71, baseType: !3872, size: 64, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!2452, !3166}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3851, file: !3852, line: 73, baseType: !3876, size: 64, offset: 768)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3166, !3315, !3316}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3851, file: !3852, line: 75, baseType: !3492, size: 64, offset: 832)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3851, file: !3852, line: 77, baseType: !3591, size: 64, offset: 896)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3167, file: !78, line: 541, baseType: !3247, size: 64, offset: 5248)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3167, file: !78, line: 543, baseType: !3488, size: 64, offset: 5312)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3167, file: !78, line: 544, baseType: !3884, size: 64, offset: 5376)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !78, line: 45, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3167, file: !78, line: 545, baseType: !3887, size: 64, offset: 5440)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !78, line: 47, flags: DIFlagFwdDecl)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3167, file: !78, line: 547, baseType: !241, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3167, file: !78, line: 548, baseType: !241, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3167, file: !78, line: 549, baseType: !241, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3167, file: !78, line: 550, baseType: !241, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !198, file: !199, line: 86, baseType: !3457, size: 32, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !198, file: !199, line: 87, baseType: !1888, size: 192, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !198, file: !199, line: 89, baseType: !161, size: 32, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !198, file: !199, line: 90, baseType: !161, size: 32, offset: 416)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "current_tlabel", scope: !198, file: !199, line: 91, baseType: !161, size: 32, offset: 448)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "tlabel_mask", scope: !198, file: !199, line: 92, baseType: !175, size: 64, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "transaction_list", scope: !198, file: !199, line: 93, baseType: !163, size: 128, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "reset_jiffies", scope: !198, file: !199, line: 94, baseType: !175, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_hi", scope: !198, file: !199, line: 96, baseType: !232, size: 32, offset: 768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_lo", scope: !198, file: !199, line: 97, baseType: !232, size: 32, offset: 800)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_cycles", scope: !198, file: !199, line: 98, baseType: !5, size: 32, offset: 832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_jiffies", scope: !198, file: !199, line: 99, baseType: !5, size: 32, offset: 864)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !198, file: !199, line: 101, baseType: !177, size: 64, offset: 896)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "max_receive", scope: !198, file: !199, line: 102, baseType: !5, size: 32, offset: 960)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "link_speed", scope: !198, file: !199, line: 103, baseType: !161, size: 32, offset: 992)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "config_rom_generation", scope: !198, file: !199, line: 104, baseType: !161, size: 32, offset: 1024)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !199, line: 106, baseType: !437, offset: 1056)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "local_node", scope: !198, file: !199, line: 108, baseType: !130, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "root_node", scope: !198, file: !199, line: 109, baseType: !130, size: 64, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "irm_node", scope: !198, file: !199, line: 110, baseType: !130, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !198, file: !199, line: 111, baseType: !140, size: 8, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "gap_count", scope: !198, file: !199, line: 112, baseType: !161, size: 32, offset: 1312)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "beta_repeaters_present", scope: !198, file: !199, line: 113, baseType: !241, size: 8, offset: 1344)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !198, file: !199, line: 115, baseType: !161, size: 32, offset: 1376)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !198, file: !199, line: 116, baseType: !163, size: 128, offset: 1408)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "phy_receiver_list", scope: !198, file: !199, line: 118, baseType: !163, size: 128, offset: 1536)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "br_work", scope: !198, file: !199, line: 120, baseType: !3920, size: 704, offset: 1664)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1914, line: 115, size: 704, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3920, file: !1914, line: 116, baseType: !1913, size: 256)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3920, file: !1914, line: 117, baseType: !3639, size: 320, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3920, file: !1914, line: 120, baseType: !2678, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3920, file: !1914, line: 121, baseType: !161, size: 32, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "br_short", scope: !198, file: !199, line: 121, baseType: !241, size: 8, offset: 2368)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bm_work", scope: !198, file: !199, line: 123, baseType: !3920, size: 704, offset: 2432)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bm_retries", scope: !198, file: !199, line: 124, baseType: !161, size: 32, offset: 3136)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bm_generation", scope: !198, file: !199, line: 125, baseType: !161, size: 32, offset: 3168)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bm_node_id", scope: !198, file: !199, line: 126, baseType: !161, size: 32, offset: 3200)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bm_abdicate", scope: !198, file: !199, line: 127, baseType: !241, size: 8, offset: 3232)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "priority_budget_implemented", scope: !198, file: !199, line: 129, baseType: !241, size: 8, offset: 3240)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel_auto_allocated", scope: !198, file: !199, line: 130, baseType: !241, size: 8, offset: 3248)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel_allocated", scope: !198, file: !199, line: 132, baseType: !241, size: 8, offset: 3256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel", scope: !198, file: !199, line: 133, baseType: !232, size: 32, offset: 3264)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "topology_map", scope: !198, file: !199, line: 134, baseType: !3937, size: 8192, offset: 3296)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 8192, elements: !3938)
!3938 = !{!3939}
!3939 = !DISubrange(count: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "maint_utility_register", scope: !198, file: !199, line: 136, baseType: !185, size: 32, offset: 11488)
!3941 = !DILocalVariable(name: "lock", arg: 1, scope: !3942, file: !3943, line: 407, type: !1235)
!3942 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3943, file: !3943, line: 407, type: !3944, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!3943 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !1235, !129}
!3946 = !DILocation(line: 407, column: 64, scope: !3942, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 386, column: 2, scope: !194)
!3948 = !DILocalVariable(name: "flags", arg: 2, scope: !3942, file: !3943, line: 407, type: !129)
!3949 = !DILocation(line: 407, column: 84, scope: !3942, inlinedAt: !3947)
!3950 = !DILocalVariable(name: "lock", arg: 1, scope: !3951, file: !3943, line: 327, type: !1235)
!3951 = distinct !DISubprogram(name: "spinlock_check", scope: !3943, file: !3943, line: 327, type: !3952, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!3954, !1235}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!3955 = !DILocation(line: 327, column: 67, scope: !3951, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 381, column: 2, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !1, line: 381, column: 2)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !1, line: 381, column: 2)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !1, line: 381, column: 2)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !1, line: 381, column: 2)
!3961 = distinct !DILexicalBlock(scope: !194, file: !1, line: 381, column: 2)
!3962 = !DILocalVariable(name: "card", arg: 1, scope: !194, file: !1, line: 377, type: !197)
!3963 = !DILocation(line: 377, column: 39, scope: !194)
!3964 = !DILocalVariable(name: "flags", scope: !194, file: !1, line: 379, type: !129)
!3965 = !DILocation(line: 379, column: 16, scope: !194)
!3966 = !DILocation(line: 381, column: 2, scope: !194)
!3967 = !DILocation(line: 381, column: 2, scope: !3961)
!3968 = !DILocalVariable(name: "__dummy", scope: !3969, file: !1, line: 381, type: !129)
!3969 = distinct !DILexicalBlock(scope: !3960, file: !1, line: 381, column: 2)
!3970 = !DILocation(line: 381, column: 2, scope: !3969)
!3971 = !DILocalVariable(name: "__dummy2", scope: !3969, file: !1, line: 381, type: !129)
!3972 = !DILocation(line: 381, column: 2, scope: !3960)
!3973 = !DILocation(line: 381, column: 2, scope: !3959)
!3974 = !DILocation(line: 381, column: 2, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3959, file: !1, line: 381, column: 2)
!3976 = !DILocalVariable(name: "__dummy", scope: !3977, file: !1, line: 381, type: !129)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !1, line: 381, column: 2)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !1, line: 381, column: 2)
!3979 = !DILocation(line: 381, column: 2, scope: !3977)
!3980 = !DILocalVariable(name: "__dummy2", scope: !3977, file: !1, line: 381, type: !129)
!3981 = !DILocation(line: 381, column: 2, scope: !3978)
!3982 = !DILocation(line: 381, column: 2, scope: !3958)
!3983 = !{i32 -2142099596}
!3984 = !DILocation(line: 381, column: 2, scope: !3957)
!3985 = !DILocation(line: 329, column: 10, scope: !3951, inlinedAt: !3956)
!3986 = !DILocation(line: 329, column: 16, scope: !3951, inlinedAt: !3956)
!3987 = !DILocation(line: 382, column: 2, scope: !194)
!3988 = !DILocation(line: 382, column: 8, scope: !194)
!3989 = !DILocation(line: 382, column: 13, scope: !194)
!3990 = !DILocation(line: 383, column: 6, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !194, file: !1, line: 383, column: 6)
!3992 = !DILocation(line: 383, column: 12, scope: !3991)
!3993 = !DILocation(line: 383, column: 23, scope: !3991)
!3994 = !DILocation(line: 383, column: 6, scope: !194)
!3995 = !DILocation(line: 384, column: 20, scope: !3991)
!3996 = !DILocation(line: 384, column: 26, scope: !3991)
!3997 = !DILocation(line: 384, column: 32, scope: !3991)
!3998 = !DILocation(line: 384, column: 3, scope: !3991)
!3999 = !DILocation(line: 385, column: 2, scope: !194)
!4000 = !DILocation(line: 385, column: 8, scope: !194)
!4001 = !DILocation(line: 385, column: 19, scope: !194)
!4002 = !DILocation(line: 386, column: 26, scope: !194)
!4003 = !DILocation(line: 386, column: 32, scope: !194)
!4004 = !DILocation(line: 386, column: 38, scope: !194)
!4005 = !DILocalVariable(name: "__dummy", scope: !4006, file: !3943, line: 409, type: !129)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !3943, line: 409, column: 2)
!4007 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 409, column: 2)
!4008 = !DILocation(line: 409, column: 2, scope: !4006, inlinedAt: !3947)
!4009 = !DILocalVariable(name: "__dummy2", scope: !4006, file: !3943, line: 409, type: !129)
!4010 = !DILocalVariable(name: "__dummy", scope: !4011, file: !3943, line: 409, type: !129)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !3943, line: 409, column: 2)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !3943, line: 409, column: 2)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3943, line: 409, column: 2)
!4014 = distinct !DILexicalBlock(scope: !4007, file: !3943, line: 409, column: 2)
!4015 = !DILocation(line: 409, column: 2, scope: !4011, inlinedAt: !3947)
!4016 = !DILocalVariable(name: "__dummy2", scope: !4011, file: !3943, line: 409, type: !129)
!4017 = !DILocation(line: 409, column: 2, scope: !4012, inlinedAt: !3947)
!4018 = !DILocation(line: 409, column: 2, scope: !4019, inlinedAt: !3947)
!4019 = distinct !DILexicalBlock(scope: !4014, file: !3943, line: 409, column: 2)
!4020 = !{i32 -2145585631}
!4021 = !DILocation(line: 409, column: 2, scope: !4022, inlinedAt: !3947)
!4022 = distinct !DILexicalBlock(scope: !4019, file: !3943, line: 409, column: 2)
!4023 = !DILocation(line: 387, column: 1, scope: !194)
!4024 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4025, file: !4025, line: 666, type: !4026, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4025 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!129}
!4028 = !DILocalVariable(name: "f", scope: !4024, file: !4025, line: 668, type: !129)
!4029 = !DILocation(line: 668, column: 16, scope: !4024)
!4030 = !DILocation(line: 670, column: 6, scope: !4024)
!4031 = !DILocation(line: 670, column: 4, scope: !4024)
!4032 = !DILocation(line: 671, column: 2, scope: !4024)
!4033 = !DILocation(line: 672, column: 9, scope: !4024)
!4034 = !DILocation(line: 672, column: 2, scope: !4024)
!4035 = distinct !DISubprogram(name: "for_each_fw_node", scope: !1, file: !1, line: 312, type: !4036, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !197, !130, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_node_callback_t", file: !1, line: 308, baseType: !4039)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !197, !130, !130}
!4042 = !DILocalVariable(name: "card", arg: 1, scope: !4035, file: !1, line: 312, type: !197)
!4043 = !DILocation(line: 312, column: 46, scope: !4035)
!4044 = !DILocalVariable(name: "root", arg: 2, scope: !4035, file: !1, line: 312, type: !130)
!4045 = !DILocation(line: 312, column: 68, scope: !4035)
!4046 = !DILocalVariable(name: "callback", arg: 3, scope: !4035, file: !1, line: 313, type: !4038)
!4047 = !DILocation(line: 313, column: 28, scope: !4035)
!4048 = !DILocalVariable(name: "list", scope: !4035, file: !1, line: 315, type: !163)
!4049 = !DILocation(line: 315, column: 19, scope: !4035)
!4050 = !DILocalVariable(name: "node", scope: !4035, file: !1, line: 316, type: !130)
!4051 = !DILocation(line: 316, column: 18, scope: !4035)
!4052 = !DILocalVariable(name: "next", scope: !4035, file: !1, line: 316, type: !130)
!4053 = !DILocation(line: 316, column: 25, scope: !4035)
!4054 = !DILocalVariable(name: "child", scope: !4035, file: !1, line: 316, type: !130)
!4055 = !DILocation(line: 316, column: 32, scope: !4035)
!4056 = !DILocalVariable(name: "parent", scope: !4035, file: !1, line: 316, type: !130)
!4057 = !DILocation(line: 316, column: 40, scope: !4035)
!4058 = !DILocalVariable(name: "i", scope: !4035, file: !1, line: 317, type: !161)
!4059 = !DILocation(line: 317, column: 6, scope: !4035)
!4060 = !DILocation(line: 319, column: 2, scope: !4035)
!4061 = !DILocation(line: 321, column: 14, scope: !4035)
!4062 = !DILocation(line: 321, column: 2, scope: !4035)
!4063 = !DILocation(line: 322, column: 17, scope: !4035)
!4064 = !DILocation(line: 322, column: 23, scope: !4035)
!4065 = !DILocation(line: 322, column: 2, scope: !4035)
!4066 = !DILocation(line: 323, column: 9, scope: !4035)
!4067 = !DILocalVariable(name: "__mptr", scope: !4068, file: !1, line: 324, type: !128)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !1, line: 324, column: 2)
!4069 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 324, column: 2)
!4070 = !DILocation(line: 324, column: 2, scope: !4068)
!4071 = !DILocation(line: 324, column: 2, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4068, file: !1, line: 324, column: 2)
!4073 = !DILocation(line: 324, column: 2, scope: !4069)
!4074 = !DILocation(line: 324, column: 2, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4069, file: !1, line: 324, column: 2)
!4076 = !DILocation(line: 325, column: 17, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4075, file: !1, line: 324, column: 41)
!4078 = !DILocation(line: 325, column: 23, scope: !4077)
!4079 = !DILocation(line: 325, column: 3, scope: !4077)
!4080 = !DILocation(line: 325, column: 9, scope: !4077)
!4081 = !DILocation(line: 325, column: 15, scope: !4077)
!4082 = !DILocation(line: 327, column: 10, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4077, file: !1, line: 327, column: 3)
!4084 = !DILocation(line: 327, column: 8, scope: !4083)
!4085 = !DILocation(line: 327, column: 15, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !1, line: 327, column: 3)
!4087 = !DILocation(line: 327, column: 19, scope: !4086)
!4088 = !DILocation(line: 327, column: 25, scope: !4086)
!4089 = !DILocation(line: 327, column: 17, scope: !4086)
!4090 = !DILocation(line: 327, column: 3, scope: !4083)
!4091 = !DILocation(line: 328, column: 12, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4086, file: !1, line: 327, column: 42)
!4093 = !DILocation(line: 328, column: 18, scope: !4092)
!4094 = !DILocation(line: 328, column: 24, scope: !4092)
!4095 = !DILocation(line: 328, column: 10, scope: !4092)
!4096 = !DILocation(line: 329, column: 9, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4092, file: !1, line: 329, column: 8)
!4098 = !DILocation(line: 329, column: 8, scope: !4092)
!4099 = !DILocation(line: 330, column: 5, scope: !4097)
!4100 = !DILocation(line: 331, column: 8, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4092, file: !1, line: 331, column: 8)
!4102 = !DILocation(line: 331, column: 15, scope: !4101)
!4103 = !DILocation(line: 331, column: 24, scope: !4101)
!4104 = !DILocation(line: 331, column: 30, scope: !4101)
!4105 = !DILocation(line: 331, column: 21, scope: !4101)
!4106 = !DILocation(line: 331, column: 8, scope: !4092)
!4107 = !DILocation(line: 332, column: 14, scope: !4101)
!4108 = !DILocation(line: 332, column: 12, scope: !4101)
!4109 = !DILocation(line: 332, column: 5, scope: !4101)
!4110 = !DILocation(line: 334, column: 17, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4101, file: !1, line: 333, column: 9)
!4112 = !DILocation(line: 334, column: 5, scope: !4111)
!4113 = !DILocation(line: 335, column: 20, scope: !4111)
!4114 = !DILocation(line: 335, column: 27, scope: !4111)
!4115 = !DILocation(line: 335, column: 5, scope: !4111)
!4116 = !DILocation(line: 337, column: 3, scope: !4092)
!4117 = !DILocation(line: 327, column: 38, scope: !4086)
!4118 = !DILocation(line: 327, column: 3, scope: !4086)
!4119 = distinct !{!4119, !4090, !4120}
!4120 = !DILocation(line: 337, column: 3, scope: !4083)
!4121 = !DILocation(line: 339, column: 3, scope: !4077)
!4122 = !DILocation(line: 339, column: 12, scope: !4077)
!4123 = !DILocation(line: 339, column: 18, scope: !4077)
!4124 = !DILocation(line: 339, column: 24, scope: !4077)
!4125 = !DILocation(line: 340, column: 2, scope: !4077)
!4126 = !DILocalVariable(name: "__mptr", scope: !4127, file: !1, line: 324, type: !128)
!4127 = distinct !DILexicalBlock(scope: !4075, file: !1, line: 324, column: 2)
!4128 = !DILocation(line: 324, column: 2, scope: !4127)
!4129 = !DILocation(line: 324, column: 2, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !1, line: 324, column: 2)
!4131 = distinct !{!4131, !4073, !4132}
!4132 = !DILocation(line: 340, column: 2, scope: !4069)
!4133 = !DILocalVariable(name: "__mptr", scope: !4134, file: !1, line: 342, type: !128)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !1, line: 342, column: 2)
!4135 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 342, column: 2)
!4136 = !DILocation(line: 342, column: 2, scope: !4134)
!4137 = !DILocation(line: 342, column: 2, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4134, file: !1, line: 342, column: 2)
!4139 = !DILocation(line: 342, column: 2, scope: !4135)
!4140 = !DILocalVariable(name: "__mptr", scope: !4141, file: !1, line: 342, type: !128)
!4141 = distinct !DILexicalBlock(scope: !4135, file: !1, line: 342, column: 2)
!4142 = !DILocation(line: 342, column: 2, scope: !4141)
!4143 = !DILocation(line: 342, column: 2, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4141, file: !1, line: 342, column: 2)
!4145 = !DILocation(line: 342, column: 2, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4135, file: !1, line: 342, column: 2)
!4147 = !DILocation(line: 343, column: 15, scope: !4146)
!4148 = !DILocation(line: 343, column: 3, scope: !4146)
!4149 = !DILocalVariable(name: "__mptr", scope: !4150, file: !1, line: 342, type: !128)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !1, line: 342, column: 2)
!4151 = !DILocation(line: 342, column: 2, scope: !4150)
!4152 = !DILocation(line: 342, column: 2, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !1, line: 342, column: 2)
!4154 = distinct !{!4154, !4139, !4155}
!4155 = !DILocation(line: 343, column: 19, scope: !4135)
!4156 = !DILocation(line: 344, column: 1, scope: !4035)
!4157 = distinct !DISubprogram(name: "report_lost_node", scope: !1, file: !1, line: 346, type: !4040, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4158 = !DILocalVariable(name: "card", arg: 1, scope: !4157, file: !1, line: 346, type: !197)
!4159 = !DILocation(line: 346, column: 46, scope: !4157)
!4160 = !DILocalVariable(name: "node", arg: 2, scope: !4157, file: !1, line: 347, type: !130)
!4161 = !DILocation(line: 347, column: 25, scope: !4157)
!4162 = !DILocalVariable(name: "parent", arg: 3, scope: !4157, file: !1, line: 347, type: !130)
!4163 = !DILocation(line: 347, column: 47, scope: !4157)
!4164 = !DILocation(line: 349, column: 16, scope: !4157)
!4165 = !DILocation(line: 349, column: 22, scope: !4157)
!4166 = !DILocation(line: 349, column: 2, scope: !4157)
!4167 = !DILocation(line: 350, column: 14, scope: !4157)
!4168 = !DILocation(line: 350, column: 2, scope: !4157)
!4169 = !DILocation(line: 353, column: 2, scope: !4157)
!4170 = !DILocation(line: 353, column: 8, scope: !4157)
!4171 = !DILocation(line: 353, column: 19, scope: !4157)
!4172 = !DILocation(line: 354, column: 1, scope: !4157)
!4173 = distinct !DISubprogram(name: "fw_core_handle_bus_reset", scope: !1, file: !1, line: 506, type: !4174, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{null, !197, !161, !161, !161, !1964, !241}
!4176 = !DILocation(line: 407, column: 64, scope: !3942, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 554, column: 2, scope: !4173)
!4178 = !DILocation(line: 407, column: 84, scope: !3942, inlinedAt: !4177)
!4179 = !DILocation(line: 327, column: 67, scope: !3951, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 523, column: 2, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !1, line: 523, column: 2)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !1, line: 523, column: 2)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !1, line: 523, column: 2)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !1, line: 523, column: 2)
!4185 = distinct !DILexicalBlock(scope: !4173, file: !1, line: 523, column: 2)
!4186 = !DILocalVariable(name: "card", arg: 1, scope: !4173, file: !1, line: 506, type: !197)
!4187 = !DILocation(line: 506, column: 47, scope: !4173)
!4188 = !DILocalVariable(name: "node_id", arg: 2, scope: !4173, file: !1, line: 506, type: !161)
!4189 = !DILocation(line: 506, column: 57, scope: !4173)
!4190 = !DILocalVariable(name: "generation", arg: 3, scope: !4173, file: !1, line: 506, type: !161)
!4191 = !DILocation(line: 506, column: 70, scope: !4173)
!4192 = !DILocalVariable(name: "self_id_count", arg: 4, scope: !4173, file: !1, line: 507, type: !161)
!4193 = !DILocation(line: 507, column: 14, scope: !4173)
!4194 = !DILocalVariable(name: "self_ids", arg: 5, scope: !4173, file: !1, line: 507, type: !1964)
!4195 = !DILocation(line: 507, column: 34, scope: !4173)
!4196 = !DILocalVariable(name: "bm_abdicate", arg: 6, scope: !4173, file: !1, line: 507, type: !241)
!4197 = !DILocation(line: 507, column: 49, scope: !4173)
!4198 = !DILocalVariable(name: "local_node", scope: !4173, file: !1, line: 509, type: !130)
!4199 = !DILocation(line: 509, column: 18, scope: !4173)
!4200 = !DILocalVariable(name: "flags", scope: !4173, file: !1, line: 510, type: !129)
!4201 = !DILocation(line: 510, column: 16, scope: !4173)
!4202 = !DILocation(line: 517, column: 26, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4173, file: !1, line: 517, column: 6)
!4204 = !DILocation(line: 517, column: 38, scope: !4203)
!4205 = !DILocation(line: 517, column: 44, scope: !4203)
!4206 = !DILocation(line: 517, column: 7, scope: !4203)
!4207 = !DILocation(line: 517, column: 56, scope: !4203)
!4208 = !DILocation(line: 518, column: 6, scope: !4203)
!4209 = !DILocation(line: 518, column: 12, scope: !4203)
!4210 = !DILocation(line: 518, column: 23, scope: !4203)
!4211 = !DILocation(line: 517, column: 6, scope: !4173)
!4212 = !DILocation(line: 519, column: 20, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4203, file: !1, line: 518, column: 32)
!4214 = !DILocation(line: 519, column: 3, scope: !4213)
!4215 = !DILocation(line: 520, column: 3, scope: !4213)
!4216 = !DILocation(line: 520, column: 9, scope: !4213)
!4217 = !DILocation(line: 520, column: 20, scope: !4213)
!4218 = !DILocation(line: 521, column: 2, scope: !4213)
!4219 = !DILocation(line: 523, column: 2, scope: !4173)
!4220 = !DILocation(line: 523, column: 2, scope: !4185)
!4221 = !DILocalVariable(name: "__dummy", scope: !4222, file: !1, line: 523, type: !129)
!4222 = distinct !DILexicalBlock(scope: !4184, file: !1, line: 523, column: 2)
!4223 = !DILocation(line: 523, column: 2, scope: !4222)
!4224 = !DILocalVariable(name: "__dummy2", scope: !4222, file: !1, line: 523, type: !129)
!4225 = !DILocation(line: 523, column: 2, scope: !4184)
!4226 = !DILocation(line: 523, column: 2, scope: !4183)
!4227 = !DILocation(line: 523, column: 2, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4183, file: !1, line: 523, column: 2)
!4229 = !DILocalVariable(name: "__dummy", scope: !4230, file: !1, line: 523, type: !129)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !1, line: 523, column: 2)
!4231 = distinct !DILexicalBlock(scope: !4228, file: !1, line: 523, column: 2)
!4232 = !DILocation(line: 523, column: 2, scope: !4230)
!4233 = !DILocalVariable(name: "__dummy2", scope: !4230, file: !1, line: 523, type: !129)
!4234 = !DILocation(line: 523, column: 2, scope: !4231)
!4235 = !DILocation(line: 523, column: 2, scope: !4182)
!4236 = !{i32 -2142090253}
!4237 = !DILocation(line: 523, column: 2, scope: !4181)
!4238 = !DILocation(line: 329, column: 10, scope: !3951, inlinedAt: !4180)
!4239 = !DILocation(line: 329, column: 16, scope: !3951, inlinedAt: !4180)
!4240 = !DILocation(line: 525, column: 38, scope: !4173)
!4241 = !DILocation(line: 525, column: 44, scope: !4173)
!4242 = !DILocation(line: 525, column: 2, scope: !4173)
!4243 = !DILocation(line: 525, column: 8, scope: !4173)
!4244 = !DILocation(line: 525, column: 36, scope: !4173)
!4245 = !DILocation(line: 526, column: 18, scope: !4173)
!4246 = !DILocation(line: 526, column: 2, scope: !4173)
!4247 = !DILocation(line: 526, column: 8, scope: !4173)
!4248 = !DILocation(line: 526, column: 16, scope: !4173)
!4249 = !DILocation(line: 531, column: 2, scope: !4173)
!4250 = !{i32 -2142090089}
!4251 = !DILocation(line: 532, column: 21, scope: !4173)
!4252 = !DILocation(line: 532, column: 2, scope: !4173)
!4253 = !DILocation(line: 532, column: 8, scope: !4173)
!4254 = !DILocation(line: 532, column: 19, scope: !4173)
!4255 = !DILocation(line: 533, column: 24, scope: !4173)
!4256 = !DILocation(line: 533, column: 2, scope: !4173)
!4257 = !DILocation(line: 533, column: 8, scope: !4173)
!4258 = !DILocation(line: 533, column: 22, scope: !4173)
!4259 = !DILocation(line: 534, column: 2, scope: !4173)
!4260 = !DILocation(line: 534, column: 8, scope: !4173)
!4261 = !DILocation(line: 534, column: 20, scope: !4173)
!4262 = !DILocation(line: 535, column: 22, scope: !4173)
!4263 = !DILocation(line: 535, column: 2, scope: !4173)
!4264 = !DILocation(line: 535, column: 8, scope: !4173)
!4265 = !DILocation(line: 535, column: 20, scope: !4173)
!4266 = !DILocation(line: 536, column: 22, scope: !4173)
!4267 = !DILocation(line: 536, column: 2, scope: !4173)
!4268 = !DILocation(line: 538, column: 26, scope: !4173)
!4269 = !DILocation(line: 538, column: 32, scope: !4173)
!4270 = !DILocation(line: 538, column: 42, scope: !4173)
!4271 = !DILocation(line: 538, column: 15, scope: !4173)
!4272 = !DILocation(line: 538, column: 13, scope: !4173)
!4273 = !DILocation(line: 540, column: 22, scope: !4173)
!4274 = !DILocation(line: 540, column: 28, scope: !4173)
!4275 = !DILocation(line: 540, column: 38, scope: !4173)
!4276 = !DILocation(line: 540, column: 2, scope: !4173)
!4277 = !DILocation(line: 542, column: 2, scope: !4173)
!4278 = !DILocation(line: 542, column: 8, scope: !4173)
!4279 = !DILocation(line: 542, column: 13, scope: !4173)
!4280 = !DILocation(line: 544, column: 6, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4173, file: !1, line: 544, column: 6)
!4282 = !DILocation(line: 544, column: 17, scope: !4281)
!4283 = !DILocation(line: 544, column: 6, scope: !4173)
!4284 = !DILocation(line: 545, column: 10, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4281, file: !1, line: 544, column: 26)
!4286 = !DILocation(line: 545, column: 3, scope: !4285)
!4287 = !DILocation(line: 547, column: 2, scope: !4285)
!4288 = !DILocation(line: 547, column: 13, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4281, file: !1, line: 547, column: 13)
!4290 = !DILocation(line: 547, column: 19, scope: !4289)
!4291 = !DILocation(line: 547, column: 30, scope: !4289)
!4292 = !DILocation(line: 547, column: 13, scope: !4281)
!4293 = !DILocation(line: 548, column: 22, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4289, file: !1, line: 547, column: 39)
!4295 = !DILocation(line: 548, column: 3, scope: !4294)
!4296 = !DILocation(line: 548, column: 9, scope: !4294)
!4297 = !DILocation(line: 548, column: 20, scope: !4294)
!4298 = !DILocation(line: 549, column: 20, scope: !4294)
!4299 = !DILocation(line: 549, column: 26, scope: !4294)
!4300 = !DILocation(line: 549, column: 3, scope: !4294)
!4301 = !DILocation(line: 550, column: 2, scope: !4294)
!4302 = !DILocation(line: 551, column: 15, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4289, file: !1, line: 550, column: 9)
!4304 = !DILocation(line: 551, column: 21, scope: !4303)
!4305 = !DILocation(line: 551, column: 3, scope: !4303)
!4306 = !DILocation(line: 554, column: 26, scope: !4173)
!4307 = !DILocation(line: 554, column: 32, scope: !4173)
!4308 = !DILocation(line: 554, column: 38, scope: !4173)
!4309 = !DILocation(line: 409, column: 2, scope: !4006, inlinedAt: !4177)
!4310 = !DILocation(line: 409, column: 2, scope: !4011, inlinedAt: !4177)
!4311 = !DILocation(line: 409, column: 2, scope: !4012, inlinedAt: !4177)
!4312 = !DILocation(line: 409, column: 2, scope: !4019, inlinedAt: !4177)
!4313 = !DILocation(line: 409, column: 2, scope: !4022, inlinedAt: !4177)
!4314 = !DILocation(line: 555, column: 1, scope: !4173)
!4315 = distinct !DISubprogram(name: "is_next_generation", scope: !112, file: !112, line: 218, type: !4316, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!241, !161, !161}
!4318 = !DILocalVariable(name: "new_generation", arg: 1, scope: !4315, file: !112, line: 218, type: !161)
!4319 = !DILocation(line: 218, column: 43, scope: !4315)
!4320 = !DILocalVariable(name: "old_generation", arg: 2, scope: !4315, file: !112, line: 218, type: !161)
!4321 = !DILocation(line: 218, column: 63, scope: !4315)
!4322 = !DILocation(line: 220, column: 10, scope: !4315)
!4323 = !DILocation(line: 220, column: 25, scope: !4315)
!4324 = !DILocation(line: 220, column: 38, scope: !4315)
!4325 = !DILocation(line: 220, column: 53, scope: !4315)
!4326 = !DILocation(line: 220, column: 58, scope: !4315)
!4327 = !DILocation(line: 220, column: 33, scope: !4315)
!4328 = !DILocation(line: 220, column: 2, scope: !4315)
!4329 = distinct !DISubprogram(name: "get_jiffies_64", scope: !4330, file: !4330, line: 85, type: !4331, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4330 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!175}
!4333 = !DILocation(line: 87, column: 14, scope: !4329)
!4334 = !DILocation(line: 87, column: 2, scope: !4329)
!4335 = distinct !DISubprogram(name: "build_tree", scope: !1, file: !1, line: 170, type: !4336, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!130, !197, !1964, !161}
!4338 = !DILocalVariable(name: "card", arg: 1, scope: !4335, file: !1, line: 170, type: !197)
!4339 = !DILocation(line: 170, column: 51, scope: !4335)
!4340 = !DILocalVariable(name: "sid", arg: 2, scope: !4335, file: !1, line: 171, type: !1964)
!4341 = !DILocation(line: 171, column: 12, scope: !4335)
!4342 = !DILocalVariable(name: "self_id_count", arg: 3, scope: !4335, file: !1, line: 171, type: !161)
!4343 = !DILocation(line: 171, column: 21, scope: !4335)
!4344 = !DILocalVariable(name: "node", scope: !4335, file: !1, line: 173, type: !130)
!4345 = !DILocation(line: 173, column: 18, scope: !4335)
!4346 = !DILocalVariable(name: "child", scope: !4335, file: !1, line: 173, type: !130)
!4347 = !DILocation(line: 173, column: 25, scope: !4335)
!4348 = !DILocalVariable(name: "local_node", scope: !4335, file: !1, line: 173, type: !130)
!4349 = !DILocation(line: 173, column: 33, scope: !4335)
!4350 = !DILocalVariable(name: "irm_node", scope: !4335, file: !1, line: 173, type: !130)
!4351 = !DILocation(line: 173, column: 46, scope: !4335)
!4352 = !DILocalVariable(name: "stack", scope: !4335, file: !1, line: 174, type: !163)
!4353 = !DILocation(line: 174, column: 19, scope: !4335)
!4354 = !DILocalVariable(name: "h", scope: !4335, file: !1, line: 174, type: !166)
!4355 = !DILocation(line: 174, column: 27, scope: !4335)
!4356 = !DILocalVariable(name: "next_sid", scope: !4335, file: !1, line: 175, type: !1964)
!4357 = !DILocation(line: 175, column: 7, scope: !4335)
!4358 = !DILocalVariable(name: "end", scope: !4335, file: !1, line: 175, type: !1964)
!4359 = !DILocation(line: 175, column: 18, scope: !4335)
!4360 = !DILocalVariable(name: "q", scope: !4335, file: !1, line: 175, type: !232)
!4361 = !DILocation(line: 175, column: 23, scope: !4335)
!4362 = !DILocalVariable(name: "i", scope: !4335, file: !1, line: 176, type: !161)
!4363 = !DILocation(line: 176, column: 6, scope: !4335)
!4364 = !DILocalVariable(name: "port_count", scope: !4335, file: !1, line: 176, type: !161)
!4365 = !DILocation(line: 176, column: 9, scope: !4335)
!4366 = !DILocalVariable(name: "child_port_count", scope: !4335, file: !1, line: 176, type: !161)
!4367 = !DILocation(line: 176, column: 21, scope: !4335)
!4368 = !DILocalVariable(name: "phy_id", scope: !4335, file: !1, line: 176, type: !161)
!4369 = !DILocation(line: 176, column: 39, scope: !4335)
!4370 = !DILocalVariable(name: "parent_count", scope: !4335, file: !1, line: 176, type: !161)
!4371 = !DILocation(line: 176, column: 47, scope: !4335)
!4372 = !DILocalVariable(name: "stack_depth", scope: !4335, file: !1, line: 176, type: !161)
!4373 = !DILocation(line: 176, column: 61, scope: !4335)
!4374 = !DILocalVariable(name: "gap_count", scope: !4335, file: !1, line: 177, type: !161)
!4375 = !DILocation(line: 177, column: 6, scope: !4335)
!4376 = !DILocalVariable(name: "beta_repeaters_present", scope: !4335, file: !1, line: 178, type: !241)
!4377 = !DILocation(line: 178, column: 7, scope: !4335)
!4378 = !DILocation(line: 180, column: 13, scope: !4335)
!4379 = !DILocation(line: 181, column: 7, scope: !4335)
!4380 = !DILocation(line: 182, column: 2, scope: !4335)
!4381 = !DILocation(line: 183, column: 14, scope: !4335)
!4382 = !DILocation(line: 184, column: 8, scope: !4335)
!4383 = !DILocation(line: 184, column: 14, scope: !4335)
!4384 = !DILocation(line: 184, column: 12, scope: !4335)
!4385 = !DILocation(line: 184, column: 6, scope: !4335)
!4386 = !DILocation(line: 185, column: 9, scope: !4335)
!4387 = !DILocation(line: 186, column: 11, scope: !4335)
!4388 = !DILocation(line: 187, column: 14, scope: !4335)
!4389 = !DILocation(line: 187, column: 12, scope: !4335)
!4390 = !DILocation(line: 188, column: 25, scope: !4335)
!4391 = !DILocation(line: 190, column: 2, scope: !4335)
!4392 = !DILocation(line: 190, column: 9, scope: !4335)
!4393 = !DILocation(line: 190, column: 15, scope: !4335)
!4394 = !DILocation(line: 190, column: 13, scope: !4335)
!4395 = !DILocation(line: 191, column: 26, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4335, file: !1, line: 190, column: 20)
!4397 = !DILocation(line: 191, column: 14, scope: !4396)
!4398 = !DILocation(line: 191, column: 12, scope: !4396)
!4399 = !DILocation(line: 193, column: 7, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 193, column: 7)
!4401 = !DILocation(line: 193, column: 16, scope: !4400)
!4402 = !DILocation(line: 193, column: 7, scope: !4396)
!4403 = !DILocation(line: 194, column: 11, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4400, file: !1, line: 193, column: 25)
!4405 = !DILocation(line: 194, column: 4, scope: !4404)
!4406 = !DILocation(line: 195, column: 4, scope: !4404)
!4407 = !DILocation(line: 198, column: 8, scope: !4396)
!4408 = !DILocation(line: 198, column: 7, scope: !4396)
!4409 = !DILocation(line: 198, column: 5, scope: !4396)
!4410 = !DILocation(line: 199, column: 7, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 199, column: 7)
!4412 = !DILocation(line: 199, column: 17, scope: !4411)
!4413 = !DILocation(line: 199, column: 14, scope: !4411)
!4414 = !DILocation(line: 199, column: 7, scope: !4396)
!4415 = !DILocation(line: 200, column: 11, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4411, file: !1, line: 199, column: 36)
!4417 = !DILocation(line: 201, column: 11, scope: !4416)
!4418 = !DILocation(line: 201, column: 19, scope: !4416)
!4419 = !DILocation(line: 200, column: 4, scope: !4416)
!4420 = !DILocation(line: 202, column: 4, scope: !4416)
!4421 = !DILocation(line: 205, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 205, column: 7)
!4423 = !DILocation(line: 205, column: 26, scope: !4422)
!4424 = !DILocation(line: 205, column: 24, scope: !4422)
!4425 = !DILocation(line: 205, column: 7, scope: !4396)
!4426 = !DILocation(line: 206, column: 11, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4422, file: !1, line: 205, column: 39)
!4428 = !DILocation(line: 206, column: 4, scope: !4427)
!4429 = !DILocation(line: 207, column: 4, scope: !4427)
!4430 = !DILocation(line: 214, column: 10, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 214, column: 3)
!4432 = !DILocation(line: 214, column: 17, scope: !4431)
!4433 = !DILocation(line: 214, column: 8, scope: !4431)
!4434 = !DILocation(line: 214, column: 27, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4431, file: !1, line: 214, column: 3)
!4436 = !DILocation(line: 214, column: 31, scope: !4435)
!4437 = !DILocation(line: 214, column: 29, scope: !4435)
!4438 = !DILocation(line: 214, column: 3, scope: !4431)
!4439 = !DILocation(line: 215, column: 8, scope: !4435)
!4440 = !DILocation(line: 215, column: 11, scope: !4435)
!4441 = !DILocation(line: 215, column: 6, scope: !4435)
!4442 = !DILocation(line: 215, column: 4, scope: !4435)
!4443 = !DILocation(line: 214, column: 50, scope: !4435)
!4444 = !DILocation(line: 214, column: 3, scope: !4435)
!4445 = distinct !{!4445, !4438, !4446}
!4446 = !DILocation(line: 215, column: 11, scope: !4431)
!4447 = !DILocation(line: 220, column: 19, scope: !4396)
!4448 = !DILocation(line: 220, column: 11, scope: !4396)
!4449 = !DILocation(line: 220, column: 9, scope: !4396)
!4450 = !DILocation(line: 222, column: 25, scope: !4396)
!4451 = !DILocation(line: 222, column: 28, scope: !4396)
!4452 = !DILocation(line: 222, column: 40, scope: !4396)
!4453 = !DILocation(line: 222, column: 46, scope: !4396)
!4454 = !DILocation(line: 222, column: 10, scope: !4396)
!4455 = !DILocation(line: 222, column: 8, scope: !4396)
!4456 = !DILocation(line: 223, column: 7, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 223, column: 7)
!4458 = !DILocation(line: 223, column: 12, scope: !4457)
!4459 = !DILocation(line: 223, column: 7, scope: !4396)
!4460 = !DILocation(line: 224, column: 11, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !1, line: 223, column: 21)
!4462 = !DILocation(line: 224, column: 4, scope: !4461)
!4463 = !DILocation(line: 225, column: 4, scope: !4461)
!4464 = !DILocation(line: 228, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 228, column: 7)
!4466 = !DILocation(line: 228, column: 18, scope: !4465)
!4467 = !DILocation(line: 228, column: 24, scope: !4465)
!4468 = !DILocation(line: 228, column: 32, scope: !4465)
!4469 = !DILocation(line: 228, column: 14, scope: !4465)
!4470 = !DILocation(line: 228, column: 7, scope: !4396)
!4471 = !DILocation(line: 229, column: 17, scope: !4465)
!4472 = !DILocation(line: 229, column: 15, scope: !4465)
!4473 = !DILocation(line: 229, column: 4, scope: !4465)
!4474 = !DILocation(line: 231, column: 7, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 231, column: 7)
!4476 = !DILocation(line: 231, column: 7, scope: !4396)
!4477 = !DILocation(line: 232, column: 15, scope: !4475)
!4478 = !DILocation(line: 232, column: 13, scope: !4475)
!4479 = !DILocation(line: 232, column: 4, scope: !4475)
!4480 = !DILocation(line: 234, column: 16, scope: !4396)
!4481 = !DILocation(line: 236, column: 10, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 236, column: 3)
!4483 = !DILocation(line: 236, column: 8, scope: !4482)
!4484 = !DILocation(line: 236, column: 15, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 236, column: 3)
!4486 = !DILocation(line: 236, column: 19, scope: !4485)
!4487 = !DILocation(line: 236, column: 17, scope: !4485)
!4488 = !DILocation(line: 236, column: 3, scope: !4482)
!4489 = !DILocation(line: 237, column: 26, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !1, line: 236, column: 36)
!4491 = !DILocation(line: 237, column: 31, scope: !4490)
!4492 = !DILocation(line: 237, column: 12, scope: !4490)
!4493 = !DILocation(line: 237, column: 4, scope: !4490)
!4494 = !DILocation(line: 249, column: 17, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4490, file: !1, line: 237, column: 35)
!4496 = !DILocation(line: 250, column: 19, scope: !4495)
!4497 = !DILocation(line: 250, column: 5, scope: !4495)
!4498 = !DILocation(line: 250, column: 11, scope: !4495)
!4499 = !DILocation(line: 250, column: 17, scope: !4495)
!4500 = !DILocation(line: 251, column: 5, scope: !4495)
!4501 = !DILocation(line: 254, column: 22, scope: !4495)
!4502 = !DILocation(line: 254, column: 5, scope: !4495)
!4503 = !DILocation(line: 254, column: 11, scope: !4495)
!4504 = !DILocation(line: 254, column: 17, scope: !4495)
!4505 = !DILocation(line: 254, column: 20, scope: !4495)
!4506 = !DILocation(line: 259, column: 34, scope: !4495)
!4507 = !DILocation(line: 259, column: 5, scope: !4495)
!4508 = !DILocation(line: 259, column: 12, scope: !4495)
!4509 = !DILocation(line: 259, column: 18, scope: !4495)
!4510 = !DILocation(line: 259, column: 25, scope: !4495)
!4511 = !DILocation(line: 259, column: 32, scope: !4495)
!4512 = !DILocation(line: 260, column: 20, scope: !4495)
!4513 = !DILocation(line: 260, column: 26, scope: !4495)
!4514 = !DILocation(line: 260, column: 5, scope: !4495)
!4515 = !DILocation(line: 260, column: 12, scope: !4495)
!4516 = !DILocation(line: 260, column: 18, scope: !4495)
!4517 = !DILocation(line: 261, column: 21, scope: !4495)
!4518 = !DILocation(line: 261, column: 28, scope: !4495)
!4519 = !DILocation(line: 261, column: 33, scope: !4495)
!4520 = !DILocation(line: 261, column: 13, scope: !4495)
!4521 = !DILocation(line: 261, column: 11, scope: !4495)
!4522 = !DILocation(line: 262, column: 5, scope: !4495)
!4523 = !DILocation(line: 264, column: 3, scope: !4490)
!4524 = !DILocation(line: 236, column: 32, scope: !4485)
!4525 = !DILocation(line: 236, column: 3, scope: !4485)
!4526 = distinct !{!4526, !4488, !4527}
!4527 = !DILocation(line: 264, column: 3, scope: !4482)
!4528 = !DILocation(line: 271, column: 8, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 271, column: 7)
!4530 = !DILocation(line: 271, column: 20, scope: !4529)
!4531 = !DILocation(line: 271, column: 17, scope: !4529)
!4532 = !DILocation(line: 271, column: 24, scope: !4529)
!4533 = !DILocation(line: 271, column: 27, scope: !4529)
!4534 = !DILocation(line: 271, column: 40, scope: !4529)
!4535 = !DILocation(line: 271, column: 46, scope: !4529)
!4536 = !DILocation(line: 272, column: 8, scope: !4529)
!4537 = !DILocation(line: 272, column: 19, scope: !4529)
!4538 = !DILocation(line: 272, column: 17, scope: !4529)
!4539 = !DILocation(line: 272, column: 23, scope: !4529)
!4540 = !DILocation(line: 272, column: 26, scope: !4529)
!4541 = !DILocation(line: 272, column: 39, scope: !4529)
!4542 = !DILocation(line: 271, column: 7, scope: !4396)
!4543 = !DILocation(line: 273, column: 11, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4529, file: !1, line: 272, column: 46)
!4545 = !DILocation(line: 274, column: 32, scope: !4544)
!4546 = !DILocation(line: 274, column: 40, scope: !4544)
!4547 = !DILocation(line: 273, column: 4, scope: !4544)
!4548 = !DILocation(line: 275, column: 4, scope: !4544)
!4549 = !DILocation(line: 279, column: 14, scope: !4396)
!4550 = !DILocation(line: 279, column: 17, scope: !4396)
!4551 = !DILocation(line: 279, column: 3, scope: !4396)
!4552 = !DILocation(line: 280, column: 18, scope: !4396)
!4553 = !DILocation(line: 280, column: 24, scope: !4396)
!4554 = !DILocation(line: 280, column: 3, scope: !4396)
!4555 = !DILocation(line: 281, column: 22, scope: !4396)
!4556 = !DILocation(line: 281, column: 20, scope: !4396)
!4557 = !DILocation(line: 281, column: 15, scope: !4396)
!4558 = !DILocation(line: 283, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 283, column: 7)
!4560 = !DILocation(line: 283, column: 13, scope: !4559)
!4561 = !DILocation(line: 283, column: 23, scope: !4559)
!4562 = !DILocation(line: 283, column: 37, scope: !4559)
!4563 = !DILocation(line: 284, column: 7, scope: !4559)
!4564 = !DILocation(line: 284, column: 22, scope: !4559)
!4565 = !DILocation(line: 284, column: 20, scope: !4559)
!4566 = !DILocation(line: 284, column: 39, scope: !4559)
!4567 = !DILocation(line: 283, column: 7, scope: !4396)
!4568 = !DILocation(line: 285, column: 27, scope: !4559)
!4569 = !DILocation(line: 285, column: 4, scope: !4559)
!4570 = !DILocation(line: 291, column: 7, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4396, file: !1, line: 291, column: 7)
!4572 = !DILocation(line: 291, column: 31, scope: !4571)
!4573 = !DILocation(line: 291, column: 28, scope: !4571)
!4574 = !DILocation(line: 291, column: 7, scope: !4396)
!4575 = !DILocation(line: 292, column: 14, scope: !4571)
!4576 = !DILocation(line: 292, column: 4, scope: !4571)
!4577 = !DILocation(line: 294, column: 20, scope: !4396)
!4578 = !DILocation(line: 294, column: 3, scope: !4396)
!4579 = !DILocation(line: 296, column: 9, scope: !4396)
!4580 = !DILocation(line: 296, column: 7, scope: !4396)
!4581 = !DILocation(line: 297, column: 9, scope: !4396)
!4582 = distinct !{!4582, !4391, !4583}
!4583 = !DILocation(line: 298, column: 2, scope: !4335)
!4584 = !DILocation(line: 300, column: 20, scope: !4335)
!4585 = !DILocation(line: 300, column: 2, scope: !4335)
!4586 = !DILocation(line: 300, column: 8, scope: !4335)
!4587 = !DILocation(line: 300, column: 18, scope: !4335)
!4588 = !DILocation(line: 301, column: 19, scope: !4335)
!4589 = !DILocation(line: 301, column: 2, scope: !4335)
!4590 = !DILocation(line: 301, column: 8, scope: !4335)
!4591 = !DILocation(line: 301, column: 17, scope: !4335)
!4592 = !DILocation(line: 302, column: 20, scope: !4335)
!4593 = !DILocation(line: 302, column: 2, scope: !4335)
!4594 = !DILocation(line: 302, column: 8, scope: !4335)
!4595 = !DILocation(line: 302, column: 18, scope: !4335)
!4596 = !DILocation(line: 303, column: 33, scope: !4335)
!4597 = !DILocation(line: 303, column: 2, scope: !4335)
!4598 = !DILocation(line: 303, column: 8, scope: !4335)
!4599 = !DILocation(line: 303, column: 31, scope: !4335)
!4600 = !DILocation(line: 305, column: 9, scope: !4335)
!4601 = !DILocation(line: 305, column: 2, scope: !4335)
!4602 = !DILocation(line: 306, column: 1, scope: !4335)
!4603 = distinct !DISubprogram(name: "update_topology_map", scope: !1, file: !1, line: 490, type: !4604, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !197, !1964, !161}
!4606 = !DILocalVariable(name: "p", arg: 1, scope: !4607, file: !4608, line: 184, type: !4611)
!4607 = distinct !DISubprogram(name: "__swab32p", scope: !4608, file: !4608, line: 184, type: !4609, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4608 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!187, !4611}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!4613 = !DILocation(line: 184, column: 53, scope: !4607, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 78, column: 25, scope: !4615, inlinedAt: !4619)
!4615 = distinct !DISubprogram(name: "__cpu_to_be32p", scope: !4616, file: !4616, line: 76, type: !4617, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4616 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!185, !4611}
!4619 = distinct !DILocation(line: 501, column: 12, scope: !4603)
!4620 = !DILocalVariable(name: "p", arg: 1, scope: !4615, file: !4616, line: 76, type: !4611)
!4621 = !DILocation(line: 76, column: 59, scope: !4615, inlinedAt: !4619)
!4622 = !DILocalVariable(name: "card", arg: 1, scope: !4603, file: !1, line: 490, type: !197)
!4623 = !DILocation(line: 490, column: 49, scope: !4603)
!4624 = !DILocalVariable(name: "self_ids", arg: 2, scope: !4603, file: !1, line: 491, type: !1964)
!4625 = !DILocation(line: 491, column: 10, scope: !4603)
!4626 = !DILocalVariable(name: "self_id_count", arg: 3, scope: !4603, file: !1, line: 491, type: !161)
!4627 = !DILocation(line: 491, column: 24, scope: !4603)
!4628 = !DILocalVariable(name: "node_count", scope: !4603, file: !1, line: 493, type: !161)
!4629 = !DILocation(line: 493, column: 6, scope: !4603)
!4630 = !DILocation(line: 493, column: 20, scope: !4603)
!4631 = !DILocation(line: 493, column: 26, scope: !4603)
!4632 = !DILocation(line: 493, column: 37, scope: !4603)
!4633 = !DILocation(line: 493, column: 45, scope: !4603)
!4634 = !DILocation(line: 493, column: 53, scope: !4603)
!4635 = !DILocalVariable(name: "map", scope: !4603, file: !1, line: 494, type: !4636)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!4637 = !DILocation(line: 494, column: 10, scope: !4603)
!4638 = !DILocation(line: 494, column: 16, scope: !4603)
!4639 = !DILocation(line: 494, column: 22, scope: !4603)
!4640 = !DILocation(line: 496, column: 11, scope: !4603)
!4641 = !DILocation(line: 496, column: 6, scope: !4603)
!4642 = !DILocation(line: 496, column: 9, scope: !4603)
!4643 = !DILocation(line: 497, column: 11, scope: !4603)
!4644 = !DILocation(line: 497, column: 6, scope: !4603)
!4645 = !DILocation(line: 497, column: 9, scope: !4603)
!4646 = !DILocation(line: 498, column: 11, scope: !4603)
!4647 = !DILocation(line: 498, column: 6, scope: !4603)
!4648 = !DILocation(line: 498, column: 9, scope: !4603)
!4649 = !DILocation(line: 500, column: 2, scope: !4603)
!4650 = !DILocation(line: 500, column: 22, scope: !4603)
!4651 = !DILocation(line: 501, column: 33, scope: !4603)
!4652 = !DILocation(line: 78, column: 35, scope: !4615, inlinedAt: !4619)
!4653 = !DILocation(line: 189, column: 9, scope: !4607, inlinedAt: !4614)
!4654 = !DILocation(line: 501, column: 7, scope: !4603)
!4655 = !DILocation(line: 501, column: 10, scope: !4603)
!4656 = distinct !{!4656, !4649, !4657}
!4657 = !DILocation(line: 501, column: 35, scope: !4603)
!4658 = !DILocation(line: 503, column: 23, scope: !4603)
!4659 = !DILocation(line: 503, column: 29, scope: !4603)
!4660 = !DILocation(line: 503, column: 2, scope: !4603)
!4661 = !DILocation(line: 504, column: 1, scope: !4603)
!4662 = distinct !DISubprogram(name: "report_found_node", scope: !1, file: !1, line: 356, type: !4040, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4663 = !DILocalVariable(name: "card", arg: 1, scope: !4662, file: !1, line: 356, type: !197)
!4664 = !DILocation(line: 356, column: 47, scope: !4662)
!4665 = !DILocalVariable(name: "node", arg: 2, scope: !4662, file: !1, line: 357, type: !130)
!4666 = !DILocation(line: 357, column: 26, scope: !4662)
!4667 = !DILocalVariable(name: "parent", arg: 3, scope: !4662, file: !1, line: 357, type: !130)
!4668 = !DILocation(line: 357, column: 48, scope: !4662)
!4669 = !DILocalVariable(name: "b_path", scope: !4662, file: !1, line: 359, type: !161)
!4670 = !DILocation(line: 359, column: 6, scope: !4662)
!4671 = !DILocation(line: 359, column: 16, scope: !4662)
!4672 = !DILocation(line: 359, column: 22, scope: !4662)
!4673 = !DILocation(line: 359, column: 32, scope: !4662)
!4674 = !DILocation(line: 361, column: 6, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4662, file: !1, line: 361, column: 6)
!4676 = !DILocation(line: 361, column: 13, scope: !4675)
!4677 = !DILocation(line: 361, column: 6, scope: !4662)
!4678 = !DILocation(line: 363, column: 21, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4675, file: !1, line: 361, column: 22)
!4680 = !DILocation(line: 363, column: 29, scope: !4679)
!4681 = !DILocation(line: 363, column: 41, scope: !4679)
!4682 = !DILocation(line: 363, column: 47, scope: !4679)
!4683 = !DILocation(line: 363, column: 39, scope: !4679)
!4684 = !DILocation(line: 364, column: 6, scope: !4679)
!4685 = !DILocation(line: 364, column: 14, scope: !4679)
!4686 = !DILocation(line: 364, column: 26, scope: !4679)
!4687 = !DILocation(line: 364, column: 32, scope: !4679)
!4688 = !DILocation(line: 363, column: 3, scope: !4679)
!4689 = !DILocation(line: 363, column: 9, scope: !4679)
!4690 = !DILocation(line: 363, column: 19, scope: !4679)
!4691 = !DILocation(line: 365, column: 18, scope: !4679)
!4692 = !DILocation(line: 365, column: 26, scope: !4679)
!4693 = !DILocation(line: 365, column: 33, scope: !4679)
!4694 = !DILocation(line: 365, column: 36, scope: !4679)
!4695 = !DILocation(line: 0, scope: !4679)
!4696 = !DILocation(line: 365, column: 3, scope: !4679)
!4697 = !DILocation(line: 365, column: 9, scope: !4679)
!4698 = !DILocation(line: 365, column: 16, scope: !4679)
!4699 = !DILocation(line: 366, column: 2, scope: !4679)
!4700 = !DILocation(line: 367, column: 21, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4675, file: !1, line: 366, column: 9)
!4702 = !DILocation(line: 367, column: 27, scope: !4701)
!4703 = !DILocation(line: 367, column: 3, scope: !4701)
!4704 = !DILocation(line: 367, column: 9, scope: !4701)
!4705 = !DILocation(line: 367, column: 19, scope: !4701)
!4706 = !DILocation(line: 368, column: 18, scope: !4701)
!4707 = !DILocation(line: 368, column: 3, scope: !4701)
!4708 = !DILocation(line: 368, column: 9, scope: !4701)
!4709 = !DILocation(line: 368, column: 16, scope: !4701)
!4710 = !DILocation(line: 371, column: 16, scope: !4662)
!4711 = !DILocation(line: 371, column: 22, scope: !4662)
!4712 = !DILocation(line: 371, column: 2, scope: !4662)
!4713 = !DILocation(line: 374, column: 2, scope: !4662)
!4714 = !DILocation(line: 374, column: 8, scope: !4662)
!4715 = !DILocation(line: 374, column: 19, scope: !4662)
!4716 = !DILocation(line: 375, column: 1, scope: !4662)
!4717 = distinct !DISubprogram(name: "update_tree", scope: !1, file: !1, line: 409, type: !4718, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !197, !130}
!4720 = !DILocalVariable(name: "card", arg: 1, scope: !4717, file: !1, line: 409, type: !197)
!4721 = !DILocation(line: 409, column: 41, scope: !4717)
!4722 = !DILocalVariable(name: "root", arg: 2, scope: !4717, file: !1, line: 409, type: !130)
!4723 = !DILocation(line: 409, column: 63, scope: !4717)
!4724 = !DILocalVariable(name: "list0", scope: !4717, file: !1, line: 411, type: !163)
!4725 = !DILocation(line: 411, column: 19, scope: !4717)
!4726 = !DILocalVariable(name: "list1", scope: !4717, file: !1, line: 411, type: !163)
!4727 = !DILocation(line: 411, column: 26, scope: !4717)
!4728 = !DILocalVariable(name: "node0", scope: !4717, file: !1, line: 412, type: !130)
!4729 = !DILocation(line: 412, column: 18, scope: !4717)
!4730 = !DILocalVariable(name: "node1", scope: !4717, file: !1, line: 412, type: !130)
!4731 = !DILocation(line: 412, column: 26, scope: !4717)
!4732 = !DILocalVariable(name: "next1", scope: !4717, file: !1, line: 412, type: !130)
!4733 = !DILocation(line: 412, column: 34, scope: !4717)
!4734 = !DILocalVariable(name: "i", scope: !4717, file: !1, line: 413, type: !161)
!4735 = !DILocation(line: 413, column: 6, scope: !4717)
!4736 = !DILocalVariable(name: "event", scope: !4717, file: !1, line: 413, type: !161)
!4737 = !DILocation(line: 413, column: 9, scope: !4717)
!4738 = !DILocation(line: 415, column: 2, scope: !4717)
!4739 = !DILocation(line: 416, column: 17, scope: !4717)
!4740 = !DILocation(line: 416, column: 23, scope: !4717)
!4741 = !DILocation(line: 416, column: 35, scope: !4717)
!4742 = !DILocation(line: 416, column: 2, scope: !4717)
!4743 = !DILocation(line: 417, column: 2, scope: !4717)
!4744 = !DILocation(line: 418, column: 17, scope: !4717)
!4745 = !DILocation(line: 418, column: 23, scope: !4717)
!4746 = !DILocation(line: 418, column: 2, scope: !4717)
!4747 = !DILocation(line: 420, column: 24, scope: !4717)
!4748 = !DILocation(line: 420, column: 10, scope: !4717)
!4749 = !DILocation(line: 420, column: 8, scope: !4717)
!4750 = !DILocation(line: 421, column: 24, scope: !4717)
!4751 = !DILocation(line: 421, column: 10, scope: !4717)
!4752 = !DILocation(line: 421, column: 8, scope: !4717)
!4753 = !DILocation(line: 423, column: 2, scope: !4717)
!4754 = !DILocation(line: 423, column: 10, scope: !4717)
!4755 = !DILocation(line: 423, column: 17, scope: !4717)
!4756 = !DILocation(line: 423, column: 22, scope: !4717)
!4757 = !DILocalVariable(name: "__ret_warn_on", scope: !4758, file: !1, line: 424, type: !161)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 424, column: 3)
!4759 = distinct !DILexicalBlock(scope: !4717, file: !1, line: 423, column: 33)
!4760 = !DILocation(line: 424, column: 3, scope: !4758)
!4761 = !DILocation(line: 424, column: 3, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 424, column: 3)
!4763 = !DILocation(line: 424, column: 3, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4762, file: !1, line: 424, column: 3)
!4765 = !DILocation(line: 424, column: 3, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 424, column: 3)
!4767 = !DILocation(line: 424, column: 3, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 424, column: 3)
!4769 = !{i32 -2142098924, i32 -2142098895, i32 -2142098849, i32 -2142098791, i32 -2142098737, i32 -2142098683, i32 -2142098628, i32 -2142098597}
!4770 = !DILocation(line: 424, column: 3, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 424, column: 3)
!4772 = !{i32 -2142098183, i32 -2142098176, i32 -2142098124, i32 -2142098093, i32 -2142098063}
!4773 = !DILocation(line: 424, column: 3, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 424, column: 3)
!4775 = !DILocation(line: 426, column: 7, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 426, column: 7)
!4777 = !DILocation(line: 426, column: 14, scope: !4776)
!4778 = !DILocation(line: 426, column: 22, scope: !4776)
!4779 = !DILocation(line: 426, column: 26, scope: !4776)
!4780 = !DILocation(line: 426, column: 33, scope: !4776)
!4781 = !DILocation(line: 426, column: 7, scope: !4759)
!4782 = !DILocation(line: 427, column: 10, scope: !4776)
!4783 = !DILocation(line: 427, column: 4, scope: !4776)
!4784 = !DILocation(line: 428, column: 13, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4776, file: !1, line: 428, column: 12)
!4786 = !DILocation(line: 428, column: 20, scope: !4785)
!4787 = !DILocation(line: 428, column: 28, scope: !4785)
!4788 = !DILocation(line: 428, column: 31, scope: !4785)
!4789 = !DILocation(line: 428, column: 38, scope: !4785)
!4790 = !DILocation(line: 428, column: 12, scope: !4776)
!4791 = !DILocation(line: 429, column: 10, scope: !4785)
!4792 = !DILocation(line: 429, column: 4, scope: !4785)
!4793 = !DILocation(line: 430, column: 12, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4785, file: !1, line: 430, column: 12)
!4795 = !DILocation(line: 430, column: 19, scope: !4794)
!4796 = !DILocation(line: 430, column: 35, scope: !4794)
!4797 = !DILocation(line: 430, column: 38, scope: !4794)
!4798 = !DILocation(line: 430, column: 45, scope: !4794)
!4799 = !DILocation(line: 430, column: 12, scope: !4785)
!4800 = !DILocation(line: 431, column: 10, scope: !4794)
!4801 = !DILocation(line: 431, column: 4, scope: !4794)
!4802 = !DILocation(line: 433, column: 10, scope: !4794)
!4803 = !DILocation(line: 435, column: 20, scope: !4759)
!4804 = !DILocation(line: 435, column: 27, scope: !4759)
!4805 = !DILocation(line: 435, column: 3, scope: !4759)
!4806 = !DILocation(line: 435, column: 10, scope: !4759)
!4807 = !DILocation(line: 435, column: 18, scope: !4759)
!4808 = !DILocation(line: 436, column: 18, scope: !4759)
!4809 = !DILocation(line: 436, column: 24, scope: !4759)
!4810 = !DILocation(line: 436, column: 3, scope: !4759)
!4811 = !DILocation(line: 436, column: 10, scope: !4759)
!4812 = !DILocation(line: 436, column: 16, scope: !4759)
!4813 = !DILocation(line: 437, column: 20, scope: !4759)
!4814 = !DILocation(line: 437, column: 27, scope: !4759)
!4815 = !DILocation(line: 437, column: 3, scope: !4759)
!4816 = !DILocation(line: 437, column: 10, scope: !4759)
!4817 = !DILocation(line: 437, column: 18, scope: !4759)
!4818 = !DILocation(line: 438, column: 28, scope: !4759)
!4819 = !DILocation(line: 438, column: 35, scope: !4759)
!4820 = !DILocation(line: 438, column: 3, scope: !4759)
!4821 = !DILocation(line: 438, column: 10, scope: !4759)
!4822 = !DILocation(line: 438, column: 26, scope: !4759)
!4823 = !DILocation(line: 439, column: 21, scope: !4759)
!4824 = !DILocation(line: 439, column: 28, scope: !4759)
!4825 = !DILocation(line: 439, column: 3, scope: !4759)
!4826 = !DILocation(line: 439, column: 10, scope: !4759)
!4827 = !DILocation(line: 439, column: 19, scope: !4759)
!4828 = !DILocation(line: 440, column: 18, scope: !4759)
!4829 = !DILocation(line: 440, column: 24, scope: !4759)
!4830 = !DILocation(line: 440, column: 3, scope: !4759)
!4831 = !DILocation(line: 440, column: 10, scope: !4759)
!4832 = !DILocation(line: 440, column: 16, scope: !4759)
!4833 = !DILocation(line: 441, column: 17, scope: !4759)
!4834 = !DILocation(line: 441, column: 23, scope: !4759)
!4835 = !DILocation(line: 441, column: 30, scope: !4759)
!4836 = !DILocation(line: 441, column: 3, scope: !4759)
!4837 = !DILocation(line: 443, column: 7, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 443, column: 7)
!4839 = !DILocation(line: 443, column: 13, scope: !4838)
!4840 = !DILocation(line: 443, column: 26, scope: !4838)
!4841 = !DILocation(line: 443, column: 23, scope: !4838)
!4842 = !DILocation(line: 443, column: 7, scope: !4759)
!4843 = !DILocation(line: 444, column: 22, scope: !4838)
!4844 = !DILocation(line: 444, column: 4, scope: !4838)
!4845 = !DILocation(line: 444, column: 10, scope: !4838)
!4846 = !DILocation(line: 444, column: 20, scope: !4838)
!4847 = !DILocation(line: 445, column: 7, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 445, column: 7)
!4849 = !DILocation(line: 445, column: 13, scope: !4848)
!4850 = !DILocation(line: 445, column: 25, scope: !4848)
!4851 = !DILocation(line: 445, column: 22, scope: !4848)
!4852 = !DILocation(line: 445, column: 7, scope: !4759)
!4853 = !DILocation(line: 446, column: 21, scope: !4848)
!4854 = !DILocation(line: 446, column: 4, scope: !4848)
!4855 = !DILocation(line: 446, column: 10, scope: !4848)
!4856 = !DILocation(line: 446, column: 19, scope: !4848)
!4857 = !DILocation(line: 448, column: 10, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 448, column: 3)
!4859 = !DILocation(line: 448, column: 8, scope: !4858)
!4860 = !DILocation(line: 448, column: 15, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 448, column: 3)
!4862 = !DILocation(line: 448, column: 19, scope: !4861)
!4863 = !DILocation(line: 448, column: 26, scope: !4861)
!4864 = !DILocation(line: 448, column: 17, scope: !4861)
!4865 = !DILocation(line: 448, column: 3, scope: !4858)
!4866 = !DILocation(line: 449, column: 8, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 449, column: 8)
!4868 = distinct !DILexicalBlock(scope: !4861, file: !1, line: 448, column: 43)
!4869 = !DILocation(line: 449, column: 15, scope: !4867)
!4870 = !DILocation(line: 449, column: 21, scope: !4867)
!4871 = !DILocation(line: 449, column: 24, scope: !4867)
!4872 = !DILocation(line: 449, column: 27, scope: !4867)
!4873 = !DILocation(line: 449, column: 34, scope: !4867)
!4874 = !DILocation(line: 449, column: 40, scope: !4867)
!4875 = !DILocation(line: 449, column: 8, scope: !4868)
!4876 = !DILocation(line: 455, column: 9, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !1, line: 455, column: 9)
!4878 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 449, column: 44)
!4879 = !DILocation(line: 455, column: 16, scope: !4877)
!4880 = !DILocation(line: 455, column: 22, scope: !4877)
!4881 = !DILocation(line: 455, column: 26, scope: !4877)
!4882 = !DILocation(line: 455, column: 35, scope: !4877)
!4883 = !DILocation(line: 455, column: 41, scope: !4877)
!4884 = !DILocation(line: 455, column: 32, scope: !4877)
!4885 = !DILocation(line: 455, column: 9, scope: !4878)
!4886 = !DILocation(line: 456, column: 6, scope: !4877)
!4887 = !DILocation(line: 457, column: 20, scope: !4878)
!4888 = !DILocation(line: 457, column: 27, scope: !4878)
!4889 = !DILocation(line: 457, column: 33, scope: !4878)
!4890 = !DILocation(line: 457, column: 37, scope: !4878)
!4891 = !DILocation(line: 457, column: 5, scope: !4878)
!4892 = !DILocation(line: 458, column: 20, scope: !4878)
!4893 = !DILocation(line: 458, column: 27, scope: !4878)
!4894 = !DILocation(line: 458, column: 33, scope: !4878)
!4895 = !DILocation(line: 458, column: 37, scope: !4878)
!4896 = !DILocation(line: 458, column: 5, scope: !4878)
!4897 = !DILocation(line: 459, column: 4, scope: !4878)
!4898 = !DILocation(line: 459, column: 15, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 459, column: 15)
!4900 = !DILocation(line: 459, column: 22, scope: !4899)
!4901 = !DILocation(line: 459, column: 28, scope: !4899)
!4902 = !DILocation(line: 459, column: 15, scope: !4867)
!4903 = !DILocation(line: 467, column: 22, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 459, column: 32)
!4905 = !DILocation(line: 467, column: 28, scope: !4904)
!4906 = !DILocation(line: 467, column: 35, scope: !4904)
!4907 = !DILocation(line: 467, column: 41, scope: !4904)
!4908 = !DILocation(line: 467, column: 5, scope: !4904)
!4909 = !DILocation(line: 469, column: 5, scope: !4904)
!4910 = !DILocation(line: 469, column: 12, scope: !4904)
!4911 = !DILocation(line: 469, column: 18, scope: !4904)
!4912 = !DILocation(line: 469, column: 21, scope: !4904)
!4913 = !DILocation(line: 470, column: 4, scope: !4904)
!4914 = !DILocation(line: 470, column: 15, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 470, column: 15)
!4916 = !DILocation(line: 470, column: 22, scope: !4915)
!4917 = !DILocation(line: 470, column: 28, scope: !4915)
!4918 = !DILocation(line: 470, column: 15, scope: !4899)
!4919 = !DILocation(line: 477, column: 15, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4915, file: !1, line: 470, column: 32)
!4921 = !DILocation(line: 477, column: 22, scope: !4920)
!4922 = !DILocation(line: 477, column: 29, scope: !4920)
!4923 = !DILocation(line: 477, column: 5, scope: !4920)
!4924 = !DILocation(line: 478, column: 22, scope: !4920)
!4925 = !DILocation(line: 478, column: 28, scope: !4920)
!4926 = !DILocation(line: 478, column: 35, scope: !4920)
!4927 = !DILocation(line: 478, column: 41, scope: !4920)
!4928 = !DILocation(line: 478, column: 5, scope: !4920)
!4929 = !DILocation(line: 480, column: 4, scope: !4920)
!4930 = !DILocation(line: 481, column: 3, scope: !4868)
!4931 = !DILocation(line: 448, column: 39, scope: !4861)
!4932 = !DILocation(line: 448, column: 3, scope: !4861)
!4933 = distinct !{!4933, !4865, !4934}
!4934 = !DILocation(line: 481, column: 3, scope: !4858)
!4935 = !DILocation(line: 483, column: 19, scope: !4759)
!4936 = !DILocation(line: 483, column: 26, scope: !4759)
!4937 = !DILocation(line: 483, column: 31, scope: !4759)
!4938 = !DILocation(line: 483, column: 11, scope: !4759)
!4939 = !DILocation(line: 483, column: 9, scope: !4759)
!4940 = !DILocation(line: 484, column: 19, scope: !4759)
!4941 = !DILocation(line: 484, column: 26, scope: !4759)
!4942 = !DILocation(line: 484, column: 31, scope: !4759)
!4943 = !DILocation(line: 484, column: 11, scope: !4759)
!4944 = !DILocation(line: 484, column: 9, scope: !4759)
!4945 = !DILocation(line: 485, column: 15, scope: !4759)
!4946 = !DILocation(line: 485, column: 3, scope: !4759)
!4947 = !DILocation(line: 486, column: 11, scope: !4759)
!4948 = !DILocation(line: 486, column: 9, scope: !4759)
!4949 = distinct !{!4949, !4753, !4950}
!4950 = !DILocation(line: 487, column: 2, scope: !4717)
!4951 = !DILocation(line: 488, column: 1, scope: !4717)
!4952 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4025, file: !4025, line: 646, type: !4026, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4953 = !DILocalVariable(name: "__ret", scope: !4954, file: !4025, line: 648, type: !129)
!4954 = distinct !DILexicalBlock(scope: !4952, file: !4025, line: 648, column: 9)
!4955 = !DILocation(line: 648, column: 9, scope: !4954)
!4956 = !DILocalVariable(name: "__edi", scope: !4954, file: !4025, line: 648, type: !129)
!4957 = !DILocalVariable(name: "__esi", scope: !4954, file: !4025, line: 648, type: !129)
!4958 = !DILocalVariable(name: "__edx", scope: !4954, file: !4025, line: 648, type: !129)
!4959 = !DILocalVariable(name: "__ecx", scope: !4954, file: !4025, line: 648, type: !129)
!4960 = !DILocalVariable(name: "__eax", scope: !4954, file: !4025, line: 648, type: !129)
!4961 = !DILocation(line: 648, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !4025, line: 648, column: 9)
!4963 = distinct !DILexicalBlock(scope: !4954, file: !4025, line: 648, column: 9)
!4964 = !{i32 -2145758008, i32 -2145755693, i32 -2145755459, i32 -2145755408, i32 -2145755380, i32 -2145755355, i32 -2145755671, i32 -2145755658, i32 -2145755220, i32 -2145755101, i32 -2145755566, i32 -2145755539, i32 -2145755511, i32 -2145755481}
!4965 = !DILocalVariable(name: "__mask", scope: !4966, file: !4025, line: 648, type: !129)
!4966 = distinct !DILexicalBlock(scope: !4962, file: !4025, line: 648, column: 9)
!4967 = !DILocation(line: 648, column: 9, scope: !4966)
!4968 = !DILocation(line: 648, column: 9, scope: !4963)
!4969 = !DILocation(line: 648, column: 2, scope: !4952)
!4970 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4025, file: !4025, line: 656, type: !2208, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4971 = !DILocalVariable(name: "__edi", scope: !4972, file: !4025, line: 658, type: !129)
!4972 = distinct !DILexicalBlock(scope: !4970, file: !4025, line: 658, column: 2)
!4973 = !DILocation(line: 658, column: 2, scope: !4972)
!4974 = !DILocalVariable(name: "__esi", scope: !4972, file: !4025, line: 658, type: !129)
!4975 = !DILocalVariable(name: "__edx", scope: !4972, file: !4025, line: 658, type: !129)
!4976 = !DILocalVariable(name: "__ecx", scope: !4972, file: !4025, line: 658, type: !129)
!4977 = !DILocalVariable(name: "__eax", scope: !4972, file: !4025, line: 658, type: !129)
!4978 = !{i32 -2145750914, i32 -2145750182, i32 -2145749948, i32 -2145749897, i32 -2145749869, i32 -2145749844, i32 -2145750160, i32 -2145750147, i32 -2145749709, i32 -2145749590, i32 -2145750055, i32 -2145750028, i32 -2145750000, i32 -2145749970}
!4979 = !DILocation(line: 659, column: 1, scope: !4970)
!4980 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4981, file: !4981, line: 33, type: !4982, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4981 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !166}
!4984 = !DILocalVariable(name: "list", arg: 1, scope: !4980, file: !4981, line: 33, type: !166)
!4985 = !DILocation(line: 33, column: 53, scope: !4980)
!4986 = !DILocation(line: 35, column: 2, scope: !4980)
!4987 = !DILocation(line: 35, column: 2, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4980, file: !4981, line: 35, column: 2)
!4989 = !DILocation(line: 35, column: 2, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4988, file: !4981, line: 35, column: 2)
!4991 = !DILocation(line: 35, column: 2, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4988, file: !4981, line: 35, column: 2)
!4993 = !DILocation(line: 36, column: 15, scope: !4980)
!4994 = !DILocation(line: 36, column: 2, scope: !4980)
!4995 = !DILocation(line: 36, column: 8, scope: !4980)
!4996 = !DILocation(line: 36, column: 13, scope: !4980)
!4997 = !DILocation(line: 37, column: 1, scope: !4980)
!4998 = distinct !DISubprogram(name: "fw_node_get", scope: !112, file: !112, line: 197, type: !4999, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!130, !130}
!5001 = !DILocalVariable(name: "node", arg: 1, scope: !4998, file: !112, line: 197, type: !130)
!5002 = !DILocation(line: 197, column: 59, scope: !4998)
!5003 = !DILocation(line: 199, column: 16, scope: !4998)
!5004 = !DILocation(line: 199, column: 22, scope: !4998)
!5005 = !DILocation(line: 199, column: 2, scope: !4998)
!5006 = !DILocation(line: 201, column: 9, scope: !4998)
!5007 = !DILocation(line: 201, column: 2, scope: !4998)
!5008 = distinct !DISubprogram(name: "list_add_tail", scope: !4981, file: !4981, line: 98, type: !5009, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !166, !166}
!5011 = !DILocalVariable(name: "new", arg: 1, scope: !5008, file: !4981, line: 98, type: !166)
!5012 = !DILocation(line: 98, column: 52, scope: !5008)
!5013 = !DILocalVariable(name: "head", arg: 2, scope: !5008, file: !4981, line: 98, type: !166)
!5014 = !DILocation(line: 98, column: 75, scope: !5008)
!5015 = !DILocation(line: 100, column: 13, scope: !5008)
!5016 = !DILocation(line: 100, column: 18, scope: !5008)
!5017 = !DILocation(line: 100, column: 24, scope: !5008)
!5018 = !DILocation(line: 100, column: 30, scope: !5008)
!5019 = !DILocation(line: 100, column: 2, scope: !5008)
!5020 = !DILocation(line: 101, column: 1, scope: !5008)
!5021 = distinct !DISubprogram(name: "fw_node_put", scope: !112, file: !112, line: 204, type: !5022, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !130}
!5024 = !DILocalVariable(name: "node", arg: 1, scope: !5021, file: !112, line: 204, type: !130)
!5025 = !DILocation(line: 204, column: 48, scope: !5021)
!5026 = !DILocation(line: 206, column: 29, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5021, file: !112, line: 206, column: 6)
!5028 = !DILocation(line: 206, column: 35, scope: !5027)
!5029 = !DILocation(line: 206, column: 6, scope: !5027)
!5030 = !DILocation(line: 206, column: 6, scope: !5021)
!5031 = !DILocation(line: 207, column: 9, scope: !5027)
!5032 = !DILocation(line: 207, column: 3, scope: !5027)
!5033 = !DILocation(line: 208, column: 1, scope: !5021)
!5034 = distinct !DISubprogram(name: "refcount_inc", scope: !99, file: !99, line: 265, type: !5035, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !5037}
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!5038 = !DILocalVariable(name: "r", arg: 1, scope: !5034, file: !99, line: 265, type: !5037)
!5039 = !DILocation(line: 265, column: 45, scope: !5034)
!5040 = !DILocation(line: 267, column: 17, scope: !5034)
!5041 = !DILocation(line: 267, column: 2, scope: !5034)
!5042 = !DILocation(line: 268, column: 1, scope: !5034)
!5043 = distinct !DISubprogram(name: "__refcount_inc", scope: !99, file: !99, line: 248, type: !5044, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{null, !5037, !642}
!5046 = !DILocalVariable(name: "r", arg: 1, scope: !5043, file: !99, line: 248, type: !5037)
!5047 = !DILocation(line: 248, column: 47, scope: !5043)
!5048 = !DILocalVariable(name: "oldp", arg: 2, scope: !5043, file: !99, line: 248, type: !642)
!5049 = !DILocation(line: 248, column: 55, scope: !5043)
!5050 = !DILocation(line: 250, column: 20, scope: !5043)
!5051 = !DILocation(line: 250, column: 23, scope: !5043)
!5052 = !DILocation(line: 250, column: 2, scope: !5043)
!5053 = !DILocation(line: 251, column: 1, scope: !5043)
!5054 = distinct !DISubprogram(name: "__refcount_add", scope: !99, file: !99, line: 191, type: !5055, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !161, !5037, !642}
!5057 = !DILocalVariable(name: "i", arg: 1, scope: !5058, file: !5059, line: 182, type: !161)
!5058 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5059, file: !5059, line: 182, type: !5060, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5059 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!161, !161, !5062}
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!5063 = !DILocation(line: 182, column: 54, scope: !5058, inlinedAt: !5064)
!5064 = distinct !DILocation(line: 143, column: 9, scope: !5065, inlinedAt: !5067)
!5065 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5066, file: !5066, line: 140, type: !5060, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5066 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5067 = distinct !DILocation(line: 193, column: 12, scope: !5054)
!5068 = !DILocalVariable(name: "v", arg: 2, scope: !5058, file: !5059, line: 182, type: !5062)
!5069 = !DILocation(line: 182, column: 67, scope: !5058, inlinedAt: !5064)
!5070 = !DILocalVariable(name: "__ret", scope: !5071, file: !5059, line: 184, type: !161)
!5071 = distinct !DILexicalBlock(scope: !5058, file: !5059, line: 184, column: 9)
!5072 = !DILocation(line: 184, column: 9, scope: !5071, inlinedAt: !5064)
!5073 = !DILocalVariable(name: "v", arg: 1, scope: !5074, file: !5075, line: 99, type: !5078)
!5074 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5075, file: !5075, line: 99, type: !5076, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5075 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !5078, !179}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5080)
!5080 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5081 = !DILocation(line: 99, column: 79, scope: !5074, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 142, column: 2, scope: !5065, inlinedAt: !5067)
!5083 = !DILocalVariable(name: "size", arg: 2, scope: !5074, file: !5075, line: 99, type: !179)
!5084 = !DILocation(line: 99, column: 89, scope: !5074, inlinedAt: !5082)
!5085 = !DILocalVariable(name: "i", arg: 1, scope: !5065, file: !5066, line: 140, type: !161)
!5086 = !DILocation(line: 140, column: 30, scope: !5065, inlinedAt: !5067)
!5087 = !DILocalVariable(name: "v", arg: 2, scope: !5065, file: !5066, line: 140, type: !5062)
!5088 = !DILocation(line: 140, column: 43, scope: !5065, inlinedAt: !5067)
!5089 = !DILocalVariable(name: "i", arg: 1, scope: !5054, file: !99, line: 191, type: !161)
!5090 = !DILocation(line: 191, column: 39, scope: !5054)
!5091 = !DILocalVariable(name: "r", arg: 2, scope: !5054, file: !99, line: 191, type: !5037)
!5092 = !DILocation(line: 191, column: 54, scope: !5054)
!5093 = !DILocalVariable(name: "oldp", arg: 3, scope: !5054, file: !99, line: 191, type: !642)
!5094 = !DILocation(line: 191, column: 62, scope: !5054)
!5095 = !DILocalVariable(name: "old", scope: !5054, file: !99, line: 193, type: !161)
!5096 = !DILocation(line: 193, column: 6, scope: !5054)
!5097 = !DILocation(line: 193, column: 37, scope: !5054)
!5098 = !DILocation(line: 193, column: 41, scope: !5054)
!5099 = !DILocation(line: 193, column: 44, scope: !5054)
!5100 = !DILocation(line: 142, column: 31, scope: !5065, inlinedAt: !5067)
!5101 = !DILocation(line: 101, column: 20, scope: !5074, inlinedAt: !5082)
!5102 = !DILocation(line: 101, column: 23, scope: !5074, inlinedAt: !5082)
!5103 = !DILocation(line: 101, column: 2, scope: !5074, inlinedAt: !5082)
!5104 = !DILocation(line: 102, column: 2, scope: !5074, inlinedAt: !5082)
!5105 = !DILocation(line: 143, column: 39, scope: !5065, inlinedAt: !5067)
!5106 = !DILocation(line: 143, column: 42, scope: !5065, inlinedAt: !5067)
!5107 = !{i32 -2146500026}
!5108 = !DILocation(line: 195, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5054, file: !99, line: 195, column: 6)
!5110 = !DILocation(line: 195, column: 6, scope: !5054)
!5111 = !DILocation(line: 196, column: 11, scope: !5109)
!5112 = !DILocation(line: 196, column: 4, scope: !5109)
!5113 = !DILocation(line: 196, column: 9, scope: !5109)
!5114 = !DILocation(line: 196, column: 3, scope: !5109)
!5115 = !DILocation(line: 198, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5054, file: !99, line: 198, column: 6)
!5117 = !DILocation(line: 198, column: 6, scope: !5054)
!5118 = !DILocation(line: 199, column: 26, scope: !5116)
!5119 = !DILocation(line: 199, column: 3, scope: !5116)
!5120 = !DILocation(line: 200, column: 11, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5116, file: !99, line: 200, column: 11)
!5122 = !DILocation(line: 200, column: 11, scope: !5116)
!5123 = !DILocation(line: 201, column: 26, scope: !5121)
!5124 = !DILocation(line: 201, column: 3, scope: !5121)
!5125 = !DILocation(line: 202, column: 1, scope: !5054)
!5126 = distinct !DISubprogram(name: "kasan_check_write", scope: !5127, file: !5127, line: 38, type: !5128, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5127 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!241, !5078, !5}
!5130 = !DILocalVariable(name: "p", arg: 1, scope: !5126, file: !5127, line: 38, type: !5078)
!5131 = !DILocation(line: 38, column: 59, scope: !5126)
!5132 = !DILocalVariable(name: "size", arg: 2, scope: !5126, file: !5127, line: 38, type: !5)
!5133 = !DILocation(line: 38, column: 75, scope: !5126)
!5134 = !DILocation(line: 40, column: 2, scope: !5126)
!5135 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5136, file: !5136, line: 178, type: !5137, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5136 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5137 = !DISubroutineType(types: !5138)
!5138 = !{null, !5078, !179, !161}
!5139 = !DILocalVariable(name: "ptr", arg: 1, scope: !5135, file: !5136, line: 178, type: !5078)
!5140 = !DILocation(line: 178, column: 60, scope: !5135)
!5141 = !DILocalVariable(name: "size", arg: 2, scope: !5135, file: !5136, line: 178, type: !179)
!5142 = !DILocation(line: 178, column: 72, scope: !5135)
!5143 = !DILocalVariable(name: "type", arg: 3, scope: !5135, file: !5136, line: 179, type: !161)
!5144 = !DILocation(line: 179, column: 15, scope: !5135)
!5145 = !DILocation(line: 179, column: 23, scope: !5135)
!5146 = distinct !DISubprogram(name: "__list_add", scope: !4981, file: !4981, line: 63, type: !5147, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{null, !166, !166, !166}
!5149 = !DILocalVariable(name: "new", arg: 1, scope: !5146, file: !4981, line: 63, type: !166)
!5150 = !DILocation(line: 63, column: 49, scope: !5146)
!5151 = !DILocalVariable(name: "prev", arg: 2, scope: !5146, file: !4981, line: 64, type: !166)
!5152 = !DILocation(line: 64, column: 28, scope: !5146)
!5153 = !DILocalVariable(name: "next", arg: 3, scope: !5146, file: !4981, line: 65, type: !166)
!5154 = !DILocation(line: 65, column: 28, scope: !5146)
!5155 = !DILocation(line: 67, column: 24, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5146, file: !4981, line: 67, column: 6)
!5157 = !DILocation(line: 67, column: 29, scope: !5156)
!5158 = !DILocation(line: 67, column: 35, scope: !5156)
!5159 = !DILocation(line: 67, column: 7, scope: !5156)
!5160 = !DILocation(line: 67, column: 6, scope: !5146)
!5161 = !DILocation(line: 68, column: 3, scope: !5156)
!5162 = !DILocation(line: 70, column: 15, scope: !5146)
!5163 = !DILocation(line: 70, column: 2, scope: !5146)
!5164 = !DILocation(line: 70, column: 8, scope: !5146)
!5165 = !DILocation(line: 70, column: 13, scope: !5146)
!5166 = !DILocation(line: 71, column: 14, scope: !5146)
!5167 = !DILocation(line: 71, column: 2, scope: !5146)
!5168 = !DILocation(line: 71, column: 7, scope: !5146)
!5169 = !DILocation(line: 71, column: 12, scope: !5146)
!5170 = !DILocation(line: 72, column: 14, scope: !5146)
!5171 = !DILocation(line: 72, column: 2, scope: !5146)
!5172 = !DILocation(line: 72, column: 7, scope: !5146)
!5173 = !DILocation(line: 72, column: 12, scope: !5146)
!5174 = !DILocation(line: 73, column: 2, scope: !5146)
!5175 = !DILocation(line: 73, column: 2, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5146, file: !4981, line: 73, column: 2)
!5177 = !DILocation(line: 73, column: 2, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5176, file: !4981, line: 73, column: 2)
!5179 = !DILocation(line: 73, column: 2, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5176, file: !4981, line: 73, column: 2)
!5181 = !DILocation(line: 74, column: 1, scope: !5146)
!5182 = distinct !DISubprogram(name: "__list_add_valid", scope: !4981, file: !4981, line: 45, type: !5183, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!241, !166, !166, !166}
!5185 = !DILocalVariable(name: "new", arg: 1, scope: !5182, file: !4981, line: 45, type: !166)
!5186 = !DILocation(line: 45, column: 55, scope: !5182)
!5187 = !DILocalVariable(name: "prev", arg: 2, scope: !5182, file: !4981, line: 46, type: !166)
!5188 = !DILocation(line: 46, column: 23, scope: !5182)
!5189 = !DILocalVariable(name: "next", arg: 3, scope: !5182, file: !4981, line: 47, type: !166)
!5190 = !DILocation(line: 47, column: 23, scope: !5182)
!5191 = !DILocation(line: 49, column: 2, scope: !5182)
!5192 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !99, file: !99, line: 331, type: !5193, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!241, !5037}
!5195 = !DILocalVariable(name: "r", arg: 1, scope: !5192, file: !99, line: 331, type: !5037)
!5196 = !DILocation(line: 331, column: 67, scope: !5192)
!5197 = !DILocation(line: 333, column: 33, scope: !5192)
!5198 = !DILocation(line: 333, column: 9, scope: !5192)
!5199 = !DILocation(line: 333, column: 2, scope: !5192)
!5200 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !99, file: !99, line: 313, type: !5201, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!241, !5037, !642}
!5203 = !DILocalVariable(name: "r", arg: 1, scope: !5200, file: !99, line: 313, type: !5037)
!5204 = !DILocation(line: 313, column: 69, scope: !5200)
!5205 = !DILocalVariable(name: "oldp", arg: 2, scope: !5200, file: !99, line: 313, type: !642)
!5206 = !DILocation(line: 313, column: 77, scope: !5200)
!5207 = !DILocation(line: 315, column: 36, scope: !5200)
!5208 = !DILocation(line: 315, column: 39, scope: !5200)
!5209 = !DILocation(line: 315, column: 9, scope: !5200)
!5210 = !DILocation(line: 315, column: 2, scope: !5200)
!5211 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !99, file: !99, line: 270, type: !5212, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!241, !161, !5037, !642}
!5214 = !DILocalVariable(name: "i", arg: 1, scope: !5215, file: !5059, line: 188, type: !161)
!5215 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5059, file: !5059, line: 188, type: !5060, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5216 = !DILocation(line: 188, column: 54, scope: !5215, inlinedAt: !5217)
!5217 = distinct !DILocation(line: 221, column: 9, scope: !5218, inlinedAt: !5219)
!5218 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5066, file: !5066, line: 218, type: !5060, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5219 = distinct !DILocation(line: 272, column: 12, scope: !5211)
!5220 = !DILocalVariable(name: "v", arg: 2, scope: !5215, file: !5059, line: 188, type: !5062)
!5221 = !DILocation(line: 188, column: 67, scope: !5215, inlinedAt: !5217)
!5222 = !DILocalVariable(name: "__ret", scope: !5223, file: !5059, line: 190, type: !161)
!5223 = distinct !DILexicalBlock(scope: !5215, file: !5059, line: 190, column: 9)
!5224 = !DILocation(line: 190, column: 9, scope: !5223, inlinedAt: !5217)
!5225 = !DILocation(line: 99, column: 79, scope: !5074, inlinedAt: !5226)
!5226 = distinct !DILocation(line: 220, column: 2, scope: !5218, inlinedAt: !5219)
!5227 = !DILocation(line: 99, column: 89, scope: !5074, inlinedAt: !5226)
!5228 = !DILocalVariable(name: "i", arg: 1, scope: !5218, file: !5066, line: 218, type: !161)
!5229 = !DILocation(line: 218, column: 30, scope: !5218, inlinedAt: !5219)
!5230 = !DILocalVariable(name: "v", arg: 2, scope: !5218, file: !5066, line: 218, type: !5062)
!5231 = !DILocation(line: 218, column: 43, scope: !5218, inlinedAt: !5219)
!5232 = !DILocalVariable(name: "i", arg: 1, scope: !5211, file: !99, line: 270, type: !161)
!5233 = !DILocation(line: 270, column: 61, scope: !5211)
!5234 = !DILocalVariable(name: "r", arg: 2, scope: !5211, file: !99, line: 270, type: !5037)
!5235 = !DILocation(line: 270, column: 76, scope: !5211)
!5236 = !DILocalVariable(name: "oldp", arg: 3, scope: !5211, file: !99, line: 270, type: !642)
!5237 = !DILocation(line: 270, column: 84, scope: !5211)
!5238 = !DILocalVariable(name: "old", scope: !5211, file: !99, line: 272, type: !161)
!5239 = !DILocation(line: 272, column: 6, scope: !5211)
!5240 = !DILocation(line: 272, column: 37, scope: !5211)
!5241 = !DILocation(line: 272, column: 41, scope: !5211)
!5242 = !DILocation(line: 272, column: 44, scope: !5211)
!5243 = !DILocation(line: 220, column: 31, scope: !5218, inlinedAt: !5219)
!5244 = !DILocation(line: 101, column: 20, scope: !5074, inlinedAt: !5226)
!5245 = !DILocation(line: 101, column: 23, scope: !5074, inlinedAt: !5226)
!5246 = !DILocation(line: 101, column: 2, scope: !5074, inlinedAt: !5226)
!5247 = !DILocation(line: 102, column: 2, scope: !5074, inlinedAt: !5226)
!5248 = !DILocation(line: 221, column: 39, scope: !5218, inlinedAt: !5219)
!5249 = !DILocation(line: 221, column: 42, scope: !5218, inlinedAt: !5219)
!5250 = !{i32 -2146498674}
!5251 = !DILocation(line: 274, column: 6, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5211, file: !99, line: 274, column: 6)
!5253 = !DILocation(line: 274, column: 6, scope: !5211)
!5254 = !DILocation(line: 275, column: 11, scope: !5252)
!5255 = !DILocation(line: 275, column: 4, scope: !5252)
!5256 = !DILocation(line: 275, column: 9, scope: !5252)
!5257 = !DILocation(line: 275, column: 3, scope: !5252)
!5258 = !DILocation(line: 277, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5211, file: !99, line: 277, column: 6)
!5260 = !DILocation(line: 277, column: 13, scope: !5259)
!5261 = !DILocation(line: 277, column: 10, scope: !5259)
!5262 = !DILocation(line: 277, column: 6, scope: !5211)
!5263 = !DILocation(line: 278, column: 3, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5259, file: !99, line: 277, column: 16)
!5265 = !{i32 -2145235517}
!5266 = !DILocation(line: 279, column: 3, scope: !5264)
!5267 = !DILocation(line: 282, column: 6, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5211, file: !99, line: 282, column: 6)
!5269 = !DILocation(line: 282, column: 6, scope: !5211)
!5270 = !DILocation(line: 283, column: 26, scope: !5268)
!5271 = !DILocation(line: 283, column: 3, scope: !5268)
!5272 = !DILocation(line: 285, column: 2, scope: !5211)
!5273 = !DILocation(line: 286, column: 1, scope: !5211)
!5274 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4025, file: !4025, line: 651, type: !5275, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !129}
!5277 = !DILocalVariable(name: "f", arg: 1, scope: !5274, file: !4025, line: 651, type: !129)
!5278 = !DILocation(line: 651, column: 65, scope: !5274)
!5279 = !DILocalVariable(name: "__edi", scope: !5280, file: !4025, line: 653, type: !129)
!5280 = distinct !DILexicalBlock(scope: !5274, file: !4025, line: 653, column: 2)
!5281 = !DILocation(line: 653, column: 2, scope: !5280)
!5282 = !DILocalVariable(name: "__esi", scope: !5280, file: !4025, line: 653, type: !129)
!5283 = !DILocalVariable(name: "__edx", scope: !5280, file: !4025, line: 653, type: !129)
!5284 = !DILocalVariable(name: "__ecx", scope: !5280, file: !4025, line: 653, type: !129)
!5285 = !DILocalVariable(name: "__eax", scope: !5280, file: !4025, line: 653, type: !129)
!5286 = !{i32 -2145753541, i32 -2145752791, i32 -2145752557, i32 -2145752506, i32 -2145752478, i32 -2145752453, i32 -2145752769, i32 -2145752756, i32 -2145752318, i32 -2145752199, i32 -2145752664, i32 -2145752637, i32 -2145752609, i32 -2145752579}
!5287 = !DILocation(line: 654, column: 1, scope: !5274)
!5288 = distinct !DISubprogram(name: "count_ports", scope: !1, file: !1, line: 40, type: !5289, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!1964, !1964, !642, !642}
!5291 = !DILocalVariable(name: "sid", arg: 1, scope: !5288, file: !1, line: 40, type: !1964)
!5292 = !DILocation(line: 40, column: 30, scope: !5288)
!5293 = !DILocalVariable(name: "total_port_count", arg: 2, scope: !5288, file: !1, line: 40, type: !642)
!5294 = !DILocation(line: 40, column: 40, scope: !5288)
!5295 = !DILocalVariable(name: "child_port_count", arg: 3, scope: !5288, file: !1, line: 40, type: !642)
!5296 = !DILocation(line: 40, column: 63, scope: !5288)
!5297 = !DILocalVariable(name: "q", scope: !5288, file: !1, line: 42, type: !232)
!5298 = !DILocation(line: 42, column: 6, scope: !5288)
!5299 = !DILocalVariable(name: "port_type", scope: !5288, file: !1, line: 43, type: !161)
!5300 = !DILocation(line: 43, column: 6, scope: !5288)
!5301 = !DILocalVariable(name: "shift", scope: !5288, file: !1, line: 43, type: !161)
!5302 = !DILocation(line: 43, column: 17, scope: !5288)
!5303 = !DILocalVariable(name: "seq", scope: !5288, file: !1, line: 43, type: !161)
!5304 = !DILocation(line: 43, column: 24, scope: !5288)
!5305 = !DILocation(line: 45, column: 3, scope: !5288)
!5306 = !DILocation(line: 45, column: 20, scope: !5288)
!5307 = !DILocation(line: 46, column: 3, scope: !5288)
!5308 = !DILocation(line: 46, column: 20, scope: !5288)
!5309 = !DILocation(line: 48, column: 8, scope: !5288)
!5310 = !DILocation(line: 49, column: 7, scope: !5288)
!5311 = !DILocation(line: 49, column: 6, scope: !5288)
!5312 = !DILocation(line: 49, column: 4, scope: !5288)
!5313 = !DILocation(line: 50, column: 6, scope: !5288)
!5314 = !DILocation(line: 52, column: 2, scope: !5288)
!5315 = !DILocation(line: 53, column: 16, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5288, file: !1, line: 52, column: 12)
!5317 = !DILocation(line: 53, column: 21, scope: !5316)
!5318 = !DILocation(line: 53, column: 18, scope: !5316)
!5319 = !DILocation(line: 53, column: 28, scope: !5316)
!5320 = !DILocation(line: 53, column: 13, scope: !5316)
!5321 = !DILocation(line: 54, column: 11, scope: !5316)
!5322 = !DILocation(line: 54, column: 3, scope: !5316)
!5323 = !DILocation(line: 56, column: 6, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5316, file: !1, line: 54, column: 22)
!5325 = !DILocation(line: 56, column: 23, scope: !5324)
!5326 = !DILocation(line: 56, column: 4, scope: !5324)
!5327 = !DILocation(line: 60, column: 6, scope: !5324)
!5328 = !DILocation(line: 60, column: 23, scope: !5324)
!5329 = !DILocation(line: 60, column: 4, scope: !5324)
!5330 = !DILocation(line: 62, column: 4, scope: !5324)
!5331 = !DILocation(line: 65, column: 9, scope: !5316)
!5332 = !DILocation(line: 66, column: 7, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5316, file: !1, line: 66, column: 7)
!5334 = !DILocation(line: 66, column: 13, scope: !5333)
!5335 = !DILocation(line: 66, column: 7, scope: !5316)
!5336 = !DILocation(line: 67, column: 9, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !1, line: 67, column: 8)
!5338 = distinct !DILexicalBlock(scope: !5333, file: !1, line: 66, column: 19)
!5339 = !DILocation(line: 67, column: 8, scope: !5338)
!5340 = !DILocation(line: 68, column: 12, scope: !5337)
!5341 = !DILocation(line: 68, column: 16, scope: !5337)
!5342 = !DILocation(line: 68, column: 5, scope: !5337)
!5343 = !DILocation(line: 70, column: 10, scope: !5338)
!5344 = !DILocation(line: 71, column: 7, scope: !5338)
!5345 = !DILocation(line: 72, column: 9, scope: !5338)
!5346 = !DILocation(line: 72, column: 8, scope: !5338)
!5347 = !DILocation(line: 72, column: 6, scope: !5338)
!5348 = !DILocation(line: 81, column: 9, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5338, file: !1, line: 81, column: 8)
!5350 = !DILocation(line: 81, column: 29, scope: !5349)
!5351 = !DILocation(line: 82, column: 8, scope: !5349)
!5352 = !DILocation(line: 82, column: 15, scope: !5349)
!5353 = !DILocation(line: 82, column: 12, scope: !5349)
!5354 = !DILocation(line: 81, column: 8, scope: !5338)
!5355 = !DILocation(line: 83, column: 5, scope: !5349)
!5356 = !DILocation(line: 85, column: 7, scope: !5338)
!5357 = !DILocation(line: 86, column: 3, scope: !5338)
!5358 = distinct !{!5358, !5314, !5359}
!5359 = !DILocation(line: 87, column: 2, scope: !5288)
!5360 = !DILocation(line: 88, column: 1, scope: !5288)
!5361 = distinct !DISubprogram(name: "fw_node", scope: !1, file: !1, line: 158, type: !5362, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!130, !166}
!5364 = !DILocalVariable(name: "l", arg: 1, scope: !5361, file: !1, line: 158, type: !166)
!5365 = !DILocation(line: 158, column: 57, scope: !5361)
!5366 = !DILocalVariable(name: "__mptr", scope: !5367, file: !1, line: 160, type: !128)
!5367 = distinct !DILexicalBlock(scope: !5361, file: !1, line: 160, column: 9)
!5368 = !DILocation(line: 160, column: 9, scope: !5367)
!5369 = !DILocation(line: 160, column: 9, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5367, file: !1, line: 160, column: 9)
!5371 = !DILocation(line: 160, column: 2, scope: !5361)
!5372 = distinct !DISubprogram(name: "fw_node_create", scope: !1, file: !1, line: 99, type: !5373, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!130, !232, !161, !161}
!5375 = !DILocalVariable(name: "sid", arg: 1, scope: !5372, file: !1, line: 99, type: !232)
!5376 = !DILocation(line: 99, column: 43, scope: !5372)
!5377 = !DILocalVariable(name: "port_count", arg: 2, scope: !5372, file: !1, line: 99, type: !161)
!5378 = !DILocation(line: 99, column: 52, scope: !5372)
!5379 = !DILocalVariable(name: "color", arg: 3, scope: !5372, file: !1, line: 99, type: !161)
!5380 = !DILocation(line: 99, column: 68, scope: !5372)
!5381 = !DILocalVariable(name: "node", scope: !5372, file: !1, line: 101, type: !130)
!5382 = !DILocation(line: 101, column: 18, scope: !5372)
!5383 = !DILocation(line: 103, column: 17, scope: !5372)
!5384 = !DILocation(line: 103, column: 9, scope: !5372)
!5385 = !DILocation(line: 103, column: 7, scope: !5372)
!5386 = !DILocation(line: 104, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5372, file: !1, line: 104, column: 6)
!5388 = !DILocation(line: 104, column: 11, scope: !5387)
!5389 = !DILocation(line: 104, column: 6, scope: !5372)
!5390 = !DILocation(line: 105, column: 3, scope: !5387)
!5391 = !DILocation(line: 107, column: 16, scope: !5372)
!5392 = !DILocation(line: 107, column: 2, scope: !5372)
!5393 = !DILocation(line: 107, column: 8, scope: !5372)
!5394 = !DILocation(line: 107, column: 14, scope: !5372)
!5395 = !DILocation(line: 108, column: 30, scope: !5372)
!5396 = !DILocation(line: 108, column: 28, scope: !5372)
!5397 = !DILocation(line: 108, column: 18, scope: !5372)
!5398 = !DILocation(line: 108, column: 2, scope: !5372)
!5399 = !DILocation(line: 108, column: 8, scope: !5372)
!5400 = !DILocation(line: 108, column: 16, scope: !5372)
!5401 = !DILocation(line: 109, column: 18, scope: !5372)
!5402 = !DILocation(line: 109, column: 2, scope: !5372)
!5403 = !DILocation(line: 109, column: 8, scope: !5372)
!5404 = !DILocation(line: 109, column: 16, scope: !5372)
!5405 = !DILocation(line: 110, column: 20, scope: !5372)
!5406 = !DILocation(line: 110, column: 2, scope: !5372)
!5407 = !DILocation(line: 110, column: 8, scope: !5372)
!5408 = !DILocation(line: 110, column: 18, scope: !5372)
!5409 = !DILocation(line: 111, column: 26, scope: !5372)
!5410 = !DILocation(line: 111, column: 2, scope: !5372)
!5411 = !DILocation(line: 111, column: 8, scope: !5372)
!5412 = !DILocation(line: 111, column: 24, scope: !5372)
!5413 = !DILocation(line: 112, column: 21, scope: !5372)
!5414 = !DILocation(line: 112, column: 2, scope: !5372)
!5415 = !DILocation(line: 112, column: 8, scope: !5372)
!5416 = !DILocation(line: 112, column: 19, scope: !5372)
!5417 = !DILocation(line: 114, column: 16, scope: !5372)
!5418 = !DILocation(line: 114, column: 22, scope: !5372)
!5419 = !DILocation(line: 114, column: 2, scope: !5372)
!5420 = !DILocation(line: 115, column: 18, scope: !5372)
!5421 = !DILocation(line: 115, column: 24, scope: !5372)
!5422 = !DILocation(line: 115, column: 2, scope: !5372)
!5423 = !DILocation(line: 117, column: 9, scope: !5372)
!5424 = !DILocation(line: 117, column: 2, scope: !5372)
!5425 = !DILocation(line: 118, column: 1, scope: !5372)
!5426 = distinct !DISubprogram(name: "get_port_type", scope: !1, file: !1, line: 90, type: !5427, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!161, !1964, !161}
!5429 = !DILocalVariable(name: "sid", arg: 1, scope: !5426, file: !1, line: 90, type: !1964)
!5430 = !DILocation(line: 90, column: 31, scope: !5426)
!5431 = !DILocalVariable(name: "port_index", arg: 2, scope: !5426, file: !1, line: 90, type: !161)
!5432 = !DILocation(line: 90, column: 40, scope: !5426)
!5433 = !DILocalVariable(name: "index", scope: !5426, file: !1, line: 92, type: !161)
!5434 = !DILocation(line: 92, column: 6, scope: !5426)
!5435 = !DILocalVariable(name: "shift", scope: !5426, file: !1, line: 92, type: !161)
!5436 = !DILocation(line: 92, column: 13, scope: !5426)
!5437 = !DILocation(line: 94, column: 11, scope: !5426)
!5438 = !DILocation(line: 94, column: 22, scope: !5426)
!5439 = !DILocation(line: 94, column: 27, scope: !5426)
!5440 = !DILocation(line: 94, column: 8, scope: !5426)
!5441 = !DILocation(line: 95, column: 17, scope: !5426)
!5442 = !DILocation(line: 95, column: 28, scope: !5426)
!5443 = !DILocation(line: 95, column: 33, scope: !5426)
!5444 = !DILocation(line: 95, column: 38, scope: !5426)
!5445 = !DILocation(line: 95, column: 13, scope: !5426)
!5446 = !DILocation(line: 95, column: 8, scope: !5426)
!5447 = !DILocation(line: 96, column: 10, scope: !5426)
!5448 = !DILocation(line: 96, column: 14, scope: !5426)
!5449 = !DILocation(line: 96, column: 24, scope: !5426)
!5450 = !DILocation(line: 96, column: 21, scope: !5426)
!5451 = !DILocation(line: 96, column: 31, scope: !5426)
!5452 = !DILocation(line: 96, column: 2, scope: !5426)
!5453 = distinct !DISubprogram(name: "__list_del", scope: !4981, file: !4981, line: 110, type: !5009, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5454 = !DILocalVariable(name: "prev", arg: 1, scope: !5453, file: !4981, line: 110, type: !166)
!5455 = !DILocation(line: 110, column: 50, scope: !5453)
!5456 = !DILocalVariable(name: "next", arg: 2, scope: !5453, file: !4981, line: 110, type: !166)
!5457 = !DILocation(line: 110, column: 75, scope: !5453)
!5458 = !DILocation(line: 112, column: 15, scope: !5453)
!5459 = !DILocation(line: 112, column: 2, scope: !5453)
!5460 = !DILocation(line: 112, column: 8, scope: !5453)
!5461 = !DILocation(line: 112, column: 13, scope: !5453)
!5462 = !DILocation(line: 113, column: 2, scope: !5453)
!5463 = !DILocation(line: 113, column: 2, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5453, file: !4981, line: 113, column: 2)
!5465 = !DILocation(line: 113, column: 2, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5464, file: !4981, line: 113, column: 2)
!5467 = !DILocation(line: 113, column: 2, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5464, file: !4981, line: 113, column: 2)
!5469 = !DILocation(line: 114, column: 1, scope: !5453)
!5470 = distinct !DISubprogram(name: "update_hop_count", scope: !1, file: !1, line: 134, type: !5022, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5471 = !DILocalVariable(name: "node", arg: 1, scope: !5470, file: !1, line: 134, type: !130)
!5472 = !DILocation(line: 134, column: 46, scope: !5470)
!5473 = !DILocalVariable(name: "depths", scope: !5470, file: !1, line: 136, type: !5474)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 64, elements: !1596)
!5475 = !DILocation(line: 136, column: 6, scope: !5470)
!5476 = !DILocalVariable(name: "max_child_hops", scope: !5470, file: !1, line: 137, type: !161)
!5477 = !DILocation(line: 137, column: 6, scope: !5470)
!5478 = !DILocalVariable(name: "i", scope: !5470, file: !1, line: 138, type: !161)
!5479 = !DILocation(line: 138, column: 6, scope: !5470)
!5480 = !DILocation(line: 140, column: 9, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5470, file: !1, line: 140, column: 2)
!5482 = !DILocation(line: 140, column: 7, scope: !5481)
!5483 = !DILocation(line: 140, column: 14, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5481, file: !1, line: 140, column: 2)
!5485 = !DILocation(line: 140, column: 18, scope: !5484)
!5486 = !DILocation(line: 140, column: 24, scope: !5484)
!5487 = !DILocation(line: 140, column: 16, scope: !5484)
!5488 = !DILocation(line: 140, column: 2, scope: !5481)
!5489 = !DILocation(line: 141, column: 7, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5491, file: !1, line: 141, column: 7)
!5491 = distinct !DILexicalBlock(scope: !5484, file: !1, line: 140, column: 41)
!5492 = !DILocation(line: 141, column: 13, scope: !5490)
!5493 = !DILocation(line: 141, column: 19, scope: !5490)
!5494 = !DILocation(line: 141, column: 22, scope: !5490)
!5495 = !DILocation(line: 141, column: 7, scope: !5491)
!5496 = !DILocation(line: 142, column: 4, scope: !5490)
!5497 = !DILocation(line: 144, column: 7, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5491, file: !1, line: 144, column: 7)
!5499 = !DILocation(line: 144, column: 13, scope: !5498)
!5500 = !DILocation(line: 144, column: 19, scope: !5498)
!5501 = !DILocation(line: 144, column: 23, scope: !5498)
!5502 = !DILocation(line: 144, column: 34, scope: !5498)
!5503 = !DILocation(line: 144, column: 32, scope: !5498)
!5504 = !DILocation(line: 144, column: 7, scope: !5491)
!5505 = !DILocation(line: 145, column: 21, scope: !5498)
!5506 = !DILocation(line: 145, column: 27, scope: !5498)
!5507 = !DILocation(line: 145, column: 33, scope: !5498)
!5508 = !DILocation(line: 145, column: 37, scope: !5498)
!5509 = !DILocation(line: 145, column: 19, scope: !5498)
!5510 = !DILocation(line: 145, column: 4, scope: !5498)
!5511 = !DILocation(line: 147, column: 7, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5491, file: !1, line: 147, column: 7)
!5513 = !DILocation(line: 147, column: 13, scope: !5512)
!5514 = !DILocation(line: 147, column: 19, scope: !5512)
!5515 = !DILocation(line: 147, column: 23, scope: !5512)
!5516 = !DILocation(line: 147, column: 35, scope: !5512)
!5517 = !DILocation(line: 147, column: 33, scope: !5512)
!5518 = !DILocation(line: 147, column: 7, scope: !5491)
!5519 = !DILocation(line: 148, column: 16, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5512, file: !1, line: 147, column: 46)
!5521 = !DILocation(line: 148, column: 4, scope: !5520)
!5522 = !DILocation(line: 148, column: 14, scope: !5520)
!5523 = !DILocation(line: 149, column: 16, scope: !5520)
!5524 = !DILocation(line: 149, column: 22, scope: !5520)
!5525 = !DILocation(line: 149, column: 28, scope: !5520)
!5526 = !DILocation(line: 149, column: 32, scope: !5520)
!5527 = !DILocation(line: 149, column: 4, scope: !5520)
!5528 = !DILocation(line: 149, column: 14, scope: !5520)
!5529 = !DILocation(line: 150, column: 3, scope: !5520)
!5530 = !DILocation(line: 150, column: 14, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5512, file: !1, line: 150, column: 14)
!5532 = !DILocation(line: 150, column: 20, scope: !5531)
!5533 = !DILocation(line: 150, column: 26, scope: !5531)
!5534 = !DILocation(line: 150, column: 30, scope: !5531)
!5535 = !DILocation(line: 150, column: 42, scope: !5531)
!5536 = !DILocation(line: 150, column: 40, scope: !5531)
!5537 = !DILocation(line: 150, column: 14, scope: !5512)
!5538 = !DILocation(line: 151, column: 16, scope: !5531)
!5539 = !DILocation(line: 151, column: 22, scope: !5531)
!5540 = !DILocation(line: 151, column: 28, scope: !5531)
!5541 = !DILocation(line: 151, column: 32, scope: !5531)
!5542 = !DILocation(line: 151, column: 4, scope: !5531)
!5543 = !DILocation(line: 151, column: 14, scope: !5531)
!5544 = !DILocation(line: 152, column: 2, scope: !5491)
!5545 = !DILocation(line: 140, column: 37, scope: !5484)
!5546 = !DILocation(line: 140, column: 2, scope: !5484)
!5547 = distinct !{!5547, !5488, !5548}
!5548 = !DILocation(line: 152, column: 2, scope: !5481)
!5549 = !DILocation(line: 154, column: 20, scope: !5470)
!5550 = !DILocation(line: 154, column: 30, scope: !5470)
!5551 = !DILocation(line: 154, column: 2, scope: !5470)
!5552 = !DILocation(line: 154, column: 8, scope: !5470)
!5553 = !DILocation(line: 154, column: 18, scope: !5470)
!5554 = !DILocalVariable(name: "__UNIQUE_ID___x233", scope: !5555, file: !1, line: 155, type: !161)
!5555 = distinct !DILexicalBlock(scope: !5470, file: !1, line: 155, column: 19)
!5556 = !DILocation(line: 155, column: 19, scope: !5555)
!5557 = !DILocalVariable(name: "__UNIQUE_ID___y234", scope: !5555, file: !1, line: 155, type: !161)
!5558 = !DILocation(line: 155, column: 19, scope: !5470)
!5559 = !DILocation(line: 155, column: 2, scope: !5470)
!5560 = !DILocation(line: 155, column: 8, scope: !5470)
!5561 = !DILocation(line: 155, column: 17, scope: !5470)
!5562 = !DILocation(line: 156, column: 1, scope: !5470)
!5563 = distinct !DISubprogram(name: "kzalloc", scope: !121, file: !121, line: 662, type: !5564, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!128, !179, !178}
!5566 = !DILocalVariable(name: "s", arg: 1, scope: !5567, file: !121, line: 445, type: !2285)
!5567 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !121, file: !121, line: 445, type: !5568, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!128, !2285, !178, !179}
!5570 = !DILocation(line: 445, column: 72, scope: !5567, inlinedAt: !5571)
!5571 = distinct !DILocation(line: 552, column: 10, scope: !5572, inlinedAt: !5575)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !121, line: 540, column: 34)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !121, line: 540, column: 6)
!5574 = distinct !DISubprogram(name: "kmalloc", scope: !121, file: !121, line: 538, type: !5564, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5575 = distinct !DILocation(line: 664, column: 9, scope: !5563)
!5576 = !DILocalVariable(name: "flags", arg: 2, scope: !5567, file: !121, line: 446, type: !178)
!5577 = !DILocation(line: 446, column: 9, scope: !5567, inlinedAt: !5571)
!5578 = !DILocalVariable(name: "size", arg: 3, scope: !5567, file: !121, line: 446, type: !179)
!5579 = !DILocation(line: 446, column: 23, scope: !5567, inlinedAt: !5571)
!5580 = !DILocalVariable(name: "ret", scope: !5567, file: !121, line: 448, type: !128)
!5581 = !DILocation(line: 448, column: 8, scope: !5567, inlinedAt: !5571)
!5582 = !DILocalVariable(name: "flags", arg: 1, scope: !5583, file: !121, line: 318, type: !178)
!5583 = distinct !DISubprogram(name: "kmalloc_type", scope: !121, file: !121, line: 318, type: !5584, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!120, !178}
!5586 = !DILocation(line: 318, column: 67, scope: !5583, inlinedAt: !5587)
!5587 = distinct !DILocation(line: 553, column: 20, scope: !5572, inlinedAt: !5575)
!5588 = !DILocalVariable(name: "size", arg: 1, scope: !5589, file: !121, line: 346, type: !179)
!5589 = distinct !DISubprogram(name: "kmalloc_index", scope: !121, file: !121, line: 346, type: !5590, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!5, !179}
!5592 = !DILocation(line: 346, column: 58, scope: !5589, inlinedAt: !5593)
!5593 = distinct !DILocation(line: 547, column: 11, scope: !5572, inlinedAt: !5575)
!5594 = !DILocalVariable(name: "size", arg: 1, scope: !5595, file: !121, line: 472, type: !179)
!5595 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !121, file: !121, line: 472, type: !5596, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!128, !179, !178, !5}
!5598 = !DILocation(line: 472, column: 28, scope: !5595, inlinedAt: !5599)
!5599 = distinct !DILocation(line: 481, column: 9, scope: !5600, inlinedAt: !5601)
!5600 = distinct !DISubprogram(name: "kmalloc_large", scope: !121, file: !121, line: 478, type: !5564, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5601 = distinct !DILocation(line: 545, column: 11, scope: !5602, inlinedAt: !5575)
!5602 = distinct !DILexicalBlock(scope: !5572, file: !121, line: 544, column: 7)
!5603 = !DILocalVariable(name: "flags", arg: 2, scope: !5595, file: !121, line: 472, type: !178)
!5604 = !DILocation(line: 472, column: 40, scope: !5595, inlinedAt: !5599)
!5605 = !DILocalVariable(name: "order", arg: 3, scope: !5595, file: !121, line: 472, type: !5)
!5606 = !DILocation(line: 472, column: 60, scope: !5595, inlinedAt: !5599)
!5607 = !DILocalVariable(name: "size", arg: 1, scope: !5600, file: !121, line: 478, type: !179)
!5608 = !DILocation(line: 478, column: 51, scope: !5600, inlinedAt: !5601)
!5609 = !DILocalVariable(name: "flags", arg: 2, scope: !5600, file: !121, line: 478, type: !178)
!5610 = !DILocation(line: 478, column: 63, scope: !5600, inlinedAt: !5601)
!5611 = !DILocalVariable(name: "order", scope: !5600, file: !121, line: 480, type: !5)
!5612 = !DILocation(line: 480, column: 15, scope: !5600, inlinedAt: !5601)
!5613 = !DILocalVariable(name: "size", arg: 1, scope: !5574, file: !121, line: 538, type: !179)
!5614 = !DILocation(line: 538, column: 45, scope: !5574, inlinedAt: !5575)
!5615 = !DILocalVariable(name: "flags", arg: 2, scope: !5574, file: !121, line: 538, type: !178)
!5616 = !DILocation(line: 538, column: 57, scope: !5574, inlinedAt: !5575)
!5617 = !DILocalVariable(name: "index", scope: !5572, file: !121, line: 542, type: !5)
!5618 = !DILocation(line: 542, column: 16, scope: !5572, inlinedAt: !5575)
!5619 = !DILocalVariable(name: "size", arg: 1, scope: !5563, file: !121, line: 662, type: !179)
!5620 = !DILocation(line: 662, column: 36, scope: !5563)
!5621 = !DILocalVariable(name: "flags", arg: 2, scope: !5563, file: !121, line: 662, type: !178)
!5622 = !DILocation(line: 662, column: 48, scope: !5563)
!5623 = !DILocation(line: 664, column: 17, scope: !5563)
!5624 = !DILocation(line: 664, column: 23, scope: !5563)
!5625 = !DILocation(line: 664, column: 29, scope: !5563)
!5626 = !DILocation(line: 540, column: 27, scope: !5573, inlinedAt: !5575)
!5627 = !DILocation(line: 540, column: 6, scope: !5573, inlinedAt: !5575)
!5628 = !DILocation(line: 540, column: 6, scope: !5574, inlinedAt: !5575)
!5629 = !DILocation(line: 544, column: 7, scope: !5602, inlinedAt: !5575)
!5630 = !DILocation(line: 544, column: 12, scope: !5602, inlinedAt: !5575)
!5631 = !DILocation(line: 544, column: 7, scope: !5572, inlinedAt: !5575)
!5632 = !DILocation(line: 545, column: 25, scope: !5602, inlinedAt: !5575)
!5633 = !DILocation(line: 545, column: 31, scope: !5602, inlinedAt: !5575)
!5634 = !DILocation(line: 480, column: 33, scope: !5600, inlinedAt: !5601)
!5635 = !DILocation(line: 480, column: 23, scope: !5600, inlinedAt: !5601)
!5636 = !DILocation(line: 481, column: 29, scope: !5600, inlinedAt: !5601)
!5637 = !DILocation(line: 481, column: 35, scope: !5600, inlinedAt: !5601)
!5638 = !DILocation(line: 481, column: 42, scope: !5600, inlinedAt: !5601)
!5639 = !DILocation(line: 474, column: 23, scope: !5595, inlinedAt: !5599)
!5640 = !DILocation(line: 474, column: 29, scope: !5595, inlinedAt: !5599)
!5641 = !DILocation(line: 474, column: 36, scope: !5595, inlinedAt: !5599)
!5642 = !DILocation(line: 474, column: 9, scope: !5595, inlinedAt: !5599)
!5643 = !DILocation(line: 545, column: 4, scope: !5602, inlinedAt: !5575)
!5644 = !DILocation(line: 547, column: 25, scope: !5572, inlinedAt: !5575)
!5645 = !DILocation(line: 348, column: 7, scope: !5646, inlinedAt: !5593)
!5646 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 348, column: 6)
!5647 = !DILocation(line: 348, column: 6, scope: !5589, inlinedAt: !5593)
!5648 = !DILocation(line: 349, column: 3, scope: !5646, inlinedAt: !5593)
!5649 = !DILocation(line: 351, column: 6, scope: !5650, inlinedAt: !5593)
!5650 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 351, column: 6)
!5651 = !DILocation(line: 351, column: 11, scope: !5650, inlinedAt: !5593)
!5652 = !DILocation(line: 351, column: 6, scope: !5589, inlinedAt: !5593)
!5653 = !DILocation(line: 352, column: 3, scope: !5650, inlinedAt: !5593)
!5654 = !DILocation(line: 354, column: 32, scope: !5655, inlinedAt: !5593)
!5655 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 354, column: 6)
!5656 = !DILocation(line: 354, column: 37, scope: !5655, inlinedAt: !5593)
!5657 = !DILocation(line: 354, column: 42, scope: !5655, inlinedAt: !5593)
!5658 = !DILocation(line: 354, column: 45, scope: !5655, inlinedAt: !5593)
!5659 = !DILocation(line: 354, column: 50, scope: !5655, inlinedAt: !5593)
!5660 = !DILocation(line: 354, column: 6, scope: !5589, inlinedAt: !5593)
!5661 = !DILocation(line: 355, column: 3, scope: !5655, inlinedAt: !5593)
!5662 = !DILocation(line: 356, column: 32, scope: !5663, inlinedAt: !5593)
!5663 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 356, column: 6)
!5664 = !DILocation(line: 356, column: 37, scope: !5663, inlinedAt: !5593)
!5665 = !DILocation(line: 356, column: 43, scope: !5663, inlinedAt: !5593)
!5666 = !DILocation(line: 356, column: 46, scope: !5663, inlinedAt: !5593)
!5667 = !DILocation(line: 356, column: 51, scope: !5663, inlinedAt: !5593)
!5668 = !DILocation(line: 356, column: 6, scope: !5589, inlinedAt: !5593)
!5669 = !DILocation(line: 357, column: 3, scope: !5663, inlinedAt: !5593)
!5670 = !DILocation(line: 358, column: 6, scope: !5671, inlinedAt: !5593)
!5671 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 358, column: 6)
!5672 = !DILocation(line: 358, column: 11, scope: !5671, inlinedAt: !5593)
!5673 = !DILocation(line: 358, column: 6, scope: !5589, inlinedAt: !5593)
!5674 = !DILocation(line: 358, column: 26, scope: !5671, inlinedAt: !5593)
!5675 = !DILocation(line: 359, column: 6, scope: !5676, inlinedAt: !5593)
!5676 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 359, column: 6)
!5677 = !DILocation(line: 359, column: 11, scope: !5676, inlinedAt: !5593)
!5678 = !DILocation(line: 359, column: 6, scope: !5589, inlinedAt: !5593)
!5679 = !DILocation(line: 359, column: 26, scope: !5676, inlinedAt: !5593)
!5680 = !DILocation(line: 360, column: 6, scope: !5681, inlinedAt: !5593)
!5681 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 360, column: 6)
!5682 = !DILocation(line: 360, column: 11, scope: !5681, inlinedAt: !5593)
!5683 = !DILocation(line: 360, column: 6, scope: !5589, inlinedAt: !5593)
!5684 = !DILocation(line: 360, column: 26, scope: !5681, inlinedAt: !5593)
!5685 = !DILocation(line: 361, column: 6, scope: !5686, inlinedAt: !5593)
!5686 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 361, column: 6)
!5687 = !DILocation(line: 361, column: 11, scope: !5686, inlinedAt: !5593)
!5688 = !DILocation(line: 361, column: 6, scope: !5589, inlinedAt: !5593)
!5689 = !DILocation(line: 361, column: 26, scope: !5686, inlinedAt: !5593)
!5690 = !DILocation(line: 362, column: 6, scope: !5691, inlinedAt: !5593)
!5691 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 362, column: 6)
!5692 = !DILocation(line: 362, column: 11, scope: !5691, inlinedAt: !5593)
!5693 = !DILocation(line: 362, column: 6, scope: !5589, inlinedAt: !5593)
!5694 = !DILocation(line: 362, column: 26, scope: !5691, inlinedAt: !5593)
!5695 = !DILocation(line: 363, column: 6, scope: !5696, inlinedAt: !5593)
!5696 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 363, column: 6)
!5697 = !DILocation(line: 363, column: 11, scope: !5696, inlinedAt: !5593)
!5698 = !DILocation(line: 363, column: 6, scope: !5589, inlinedAt: !5593)
!5699 = !DILocation(line: 363, column: 26, scope: !5696, inlinedAt: !5593)
!5700 = !DILocation(line: 364, column: 6, scope: !5701, inlinedAt: !5593)
!5701 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 364, column: 6)
!5702 = !DILocation(line: 364, column: 11, scope: !5701, inlinedAt: !5593)
!5703 = !DILocation(line: 364, column: 6, scope: !5589, inlinedAt: !5593)
!5704 = !DILocation(line: 364, column: 26, scope: !5701, inlinedAt: !5593)
!5705 = !DILocation(line: 365, column: 6, scope: !5706, inlinedAt: !5593)
!5706 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 365, column: 6)
!5707 = !DILocation(line: 365, column: 11, scope: !5706, inlinedAt: !5593)
!5708 = !DILocation(line: 365, column: 6, scope: !5589, inlinedAt: !5593)
!5709 = !DILocation(line: 365, column: 26, scope: !5706, inlinedAt: !5593)
!5710 = !DILocation(line: 366, column: 6, scope: !5711, inlinedAt: !5593)
!5711 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 366, column: 6)
!5712 = !DILocation(line: 366, column: 11, scope: !5711, inlinedAt: !5593)
!5713 = !DILocation(line: 366, column: 6, scope: !5589, inlinedAt: !5593)
!5714 = !DILocation(line: 366, column: 26, scope: !5711, inlinedAt: !5593)
!5715 = !DILocation(line: 367, column: 6, scope: !5716, inlinedAt: !5593)
!5716 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 367, column: 6)
!5717 = !DILocation(line: 367, column: 11, scope: !5716, inlinedAt: !5593)
!5718 = !DILocation(line: 367, column: 6, scope: !5589, inlinedAt: !5593)
!5719 = !DILocation(line: 367, column: 26, scope: !5716, inlinedAt: !5593)
!5720 = !DILocation(line: 368, column: 6, scope: !5721, inlinedAt: !5593)
!5721 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 368, column: 6)
!5722 = !DILocation(line: 368, column: 11, scope: !5721, inlinedAt: !5593)
!5723 = !DILocation(line: 368, column: 6, scope: !5589, inlinedAt: !5593)
!5724 = !DILocation(line: 368, column: 26, scope: !5721, inlinedAt: !5593)
!5725 = !DILocation(line: 369, column: 6, scope: !5726, inlinedAt: !5593)
!5726 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 369, column: 6)
!5727 = !DILocation(line: 369, column: 11, scope: !5726, inlinedAt: !5593)
!5728 = !DILocation(line: 369, column: 6, scope: !5589, inlinedAt: !5593)
!5729 = !DILocation(line: 369, column: 26, scope: !5726, inlinedAt: !5593)
!5730 = !DILocation(line: 370, column: 6, scope: !5731, inlinedAt: !5593)
!5731 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 370, column: 6)
!5732 = !DILocation(line: 370, column: 11, scope: !5731, inlinedAt: !5593)
!5733 = !DILocation(line: 370, column: 6, scope: !5589, inlinedAt: !5593)
!5734 = !DILocation(line: 370, column: 26, scope: !5731, inlinedAt: !5593)
!5735 = !DILocation(line: 371, column: 6, scope: !5736, inlinedAt: !5593)
!5736 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 371, column: 6)
!5737 = !DILocation(line: 371, column: 11, scope: !5736, inlinedAt: !5593)
!5738 = !DILocation(line: 371, column: 6, scope: !5589, inlinedAt: !5593)
!5739 = !DILocation(line: 371, column: 26, scope: !5736, inlinedAt: !5593)
!5740 = !DILocation(line: 372, column: 6, scope: !5741, inlinedAt: !5593)
!5741 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 372, column: 6)
!5742 = !DILocation(line: 372, column: 11, scope: !5741, inlinedAt: !5593)
!5743 = !DILocation(line: 372, column: 6, scope: !5589, inlinedAt: !5593)
!5744 = !DILocation(line: 372, column: 26, scope: !5741, inlinedAt: !5593)
!5745 = !DILocation(line: 373, column: 6, scope: !5746, inlinedAt: !5593)
!5746 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 373, column: 6)
!5747 = !DILocation(line: 373, column: 11, scope: !5746, inlinedAt: !5593)
!5748 = !DILocation(line: 373, column: 6, scope: !5589, inlinedAt: !5593)
!5749 = !DILocation(line: 373, column: 26, scope: !5746, inlinedAt: !5593)
!5750 = !DILocation(line: 374, column: 6, scope: !5751, inlinedAt: !5593)
!5751 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 374, column: 6)
!5752 = !DILocation(line: 374, column: 11, scope: !5751, inlinedAt: !5593)
!5753 = !DILocation(line: 374, column: 6, scope: !5589, inlinedAt: !5593)
!5754 = !DILocation(line: 374, column: 26, scope: !5751, inlinedAt: !5593)
!5755 = !DILocation(line: 375, column: 6, scope: !5756, inlinedAt: !5593)
!5756 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 375, column: 6)
!5757 = !DILocation(line: 375, column: 11, scope: !5756, inlinedAt: !5593)
!5758 = !DILocation(line: 375, column: 6, scope: !5589, inlinedAt: !5593)
!5759 = !DILocation(line: 375, column: 27, scope: !5756, inlinedAt: !5593)
!5760 = !DILocation(line: 376, column: 6, scope: !5761, inlinedAt: !5593)
!5761 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 376, column: 6)
!5762 = !DILocation(line: 376, column: 11, scope: !5761, inlinedAt: !5593)
!5763 = !DILocation(line: 376, column: 6, scope: !5589, inlinedAt: !5593)
!5764 = !DILocation(line: 376, column: 32, scope: !5761, inlinedAt: !5593)
!5765 = !DILocation(line: 377, column: 6, scope: !5766, inlinedAt: !5593)
!5766 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 377, column: 6)
!5767 = !DILocation(line: 377, column: 11, scope: !5766, inlinedAt: !5593)
!5768 = !DILocation(line: 377, column: 6, scope: !5589, inlinedAt: !5593)
!5769 = !DILocation(line: 377, column: 32, scope: !5766, inlinedAt: !5593)
!5770 = !DILocation(line: 378, column: 6, scope: !5771, inlinedAt: !5593)
!5771 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 378, column: 6)
!5772 = !DILocation(line: 378, column: 11, scope: !5771, inlinedAt: !5593)
!5773 = !DILocation(line: 378, column: 6, scope: !5589, inlinedAt: !5593)
!5774 = !DILocation(line: 378, column: 32, scope: !5771, inlinedAt: !5593)
!5775 = !DILocation(line: 379, column: 6, scope: !5776, inlinedAt: !5593)
!5776 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 379, column: 6)
!5777 = !DILocation(line: 379, column: 11, scope: !5776, inlinedAt: !5593)
!5778 = !DILocation(line: 379, column: 6, scope: !5589, inlinedAt: !5593)
!5779 = !DILocation(line: 379, column: 33, scope: !5776, inlinedAt: !5593)
!5780 = !DILocation(line: 380, column: 6, scope: !5781, inlinedAt: !5593)
!5781 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 380, column: 6)
!5782 = !DILocation(line: 380, column: 11, scope: !5781, inlinedAt: !5593)
!5783 = !DILocation(line: 380, column: 6, scope: !5589, inlinedAt: !5593)
!5784 = !DILocation(line: 380, column: 33, scope: !5781, inlinedAt: !5593)
!5785 = !DILocation(line: 381, column: 6, scope: !5786, inlinedAt: !5593)
!5786 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 381, column: 6)
!5787 = !DILocation(line: 381, column: 11, scope: !5786, inlinedAt: !5593)
!5788 = !DILocation(line: 381, column: 6, scope: !5589, inlinedAt: !5593)
!5789 = !DILocation(line: 381, column: 33, scope: !5786, inlinedAt: !5593)
!5790 = !DILocation(line: 382, column: 2, scope: !5791, inlinedAt: !5593)
!5791 = distinct !DILexicalBlock(scope: !5792, file: !121, line: 382, column: 2)
!5792 = distinct !DILexicalBlock(scope: !5589, file: !121, line: 382, column: 2)
!5793 = !{i32 -2142128740, i32 -2142128711, i32 -2142128665, i32 -2142128607, i32 -2142128553, i32 -2142128499, i32 -2142128444, i32 -2142128413}
!5794 = !DILocation(line: 382, column: 2, scope: !5795, inlinedAt: !5593)
!5795 = distinct !DILexicalBlock(scope: !5796, file: !121, line: 382, column: 2)
!5796 = distinct !DILexicalBlock(scope: !5792, file: !121, line: 382, column: 2)
!5797 = !{i32 -2142127970, i32 -2142127963, i32 -2142127909, i32 -2142127878, i32 -2142127848}
!5798 = !DILocation(line: 382, column: 2, scope: !5796, inlinedAt: !5593)
!5799 = !DILocation(line: 386, column: 1, scope: !5589, inlinedAt: !5593)
!5800 = !DILocation(line: 547, column: 9, scope: !5572, inlinedAt: !5575)
!5801 = !DILocation(line: 549, column: 8, scope: !5802, inlinedAt: !5575)
!5802 = distinct !DILexicalBlock(scope: !5572, file: !121, line: 549, column: 7)
!5803 = !DILocation(line: 549, column: 7, scope: !5572, inlinedAt: !5575)
!5804 = !DILocation(line: 550, column: 4, scope: !5802, inlinedAt: !5575)
!5805 = !DILocation(line: 553, column: 33, scope: !5572, inlinedAt: !5575)
!5806 = !DILocation(line: 325, column: 6, scope: !5807, inlinedAt: !5587)
!5807 = distinct !DILexicalBlock(scope: !5583, file: !121, line: 325, column: 6)
!5808 = !DILocation(line: 325, column: 6, scope: !5583, inlinedAt: !5587)
!5809 = !DILocation(line: 326, column: 3, scope: !5807, inlinedAt: !5587)
!5810 = !DILocation(line: 332, column: 9, scope: !5583, inlinedAt: !5587)
!5811 = !DILocation(line: 332, column: 15, scope: !5583, inlinedAt: !5587)
!5812 = !DILocation(line: 332, column: 2, scope: !5583, inlinedAt: !5587)
!5813 = !DILocation(line: 336, column: 1, scope: !5583, inlinedAt: !5587)
!5814 = !DILocation(line: 553, column: 5, scope: !5572, inlinedAt: !5575)
!5815 = !DILocation(line: 553, column: 41, scope: !5572, inlinedAt: !5575)
!5816 = !DILocation(line: 554, column: 5, scope: !5572, inlinedAt: !5575)
!5817 = !DILocation(line: 554, column: 12, scope: !5572, inlinedAt: !5575)
!5818 = !DILocation(line: 448, column: 31, scope: !5567, inlinedAt: !5571)
!5819 = !DILocation(line: 448, column: 34, scope: !5567, inlinedAt: !5571)
!5820 = !DILocation(line: 448, column: 14, scope: !5567, inlinedAt: !5571)
!5821 = !DILocation(line: 450, column: 22, scope: !5567, inlinedAt: !5571)
!5822 = !DILocation(line: 450, column: 25, scope: !5567, inlinedAt: !5571)
!5823 = !DILocation(line: 450, column: 30, scope: !5567, inlinedAt: !5571)
!5824 = !DILocation(line: 450, column: 36, scope: !5567, inlinedAt: !5571)
!5825 = !DILocation(line: 450, column: 8, scope: !5567, inlinedAt: !5571)
!5826 = !DILocation(line: 450, column: 6, scope: !5567, inlinedAt: !5571)
!5827 = !DILocation(line: 451, column: 9, scope: !5567, inlinedAt: !5571)
!5828 = !DILocation(line: 552, column: 3, scope: !5572, inlinedAt: !5575)
!5829 = !DILocation(line: 557, column: 19, scope: !5574, inlinedAt: !5575)
!5830 = !DILocation(line: 557, column: 25, scope: !5574, inlinedAt: !5575)
!5831 = !DILocation(line: 557, column: 9, scope: !5574, inlinedAt: !5575)
!5832 = !DILocation(line: 557, column: 2, scope: !5574, inlinedAt: !5575)
!5833 = !DILocation(line: 558, column: 1, scope: !5574, inlinedAt: !5575)
!5834 = !DILocation(line: 664, column: 2, scope: !5563)
!5835 = distinct !DISubprogram(name: "__ab_c_size", scope: !5836, file: !5836, line: 301, type: !5837, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5836 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5837 = !DISubroutineType(types: !5838)
!5838 = !{!179, !179, !179, !179}
!5839 = !DILocalVariable(name: "a", arg: 1, scope: !5835, file: !5836, line: 301, type: !179)
!5840 = !DILocation(line: 301, column: 54, scope: !5835)
!5841 = !DILocalVariable(name: "b", arg: 2, scope: !5835, file: !5836, line: 301, type: !179)
!5842 = !DILocation(line: 301, column: 64, scope: !5835)
!5843 = !DILocalVariable(name: "c", arg: 3, scope: !5835, file: !5836, line: 301, type: !179)
!5844 = !DILocation(line: 301, column: 74, scope: !5835)
!5845 = !DILocalVariable(name: "bytes", scope: !5835, file: !5836, line: 303, type: !179)
!5846 = !DILocation(line: 303, column: 9, scope: !5835)
!5847 = !DILocalVariable(name: "__a", scope: !5848, file: !5836, line: 305, type: !179)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !5836, line: 305, column: 6)
!5849 = distinct !DILexicalBlock(scope: !5835, file: !5836, line: 305, column: 6)
!5850 = !DILocation(line: 305, column: 6, scope: !5848)
!5851 = !DILocalVariable(name: "__b", scope: !5848, file: !5836, line: 305, type: !179)
!5852 = !DILocalVariable(name: "__d", scope: !5848, file: !5836, line: 305, type: !5853)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!5854 = !DILocation(line: 305, column: 6, scope: !5849)
!5855 = !DILocation(line: 305, column: 6, scope: !5835)
!5856 = !DILocation(line: 306, column: 3, scope: !5849)
!5857 = !DILocalVariable(name: "__a", scope: !5858, file: !5836, line: 307, type: !179)
!5858 = distinct !DILexicalBlock(scope: !5859, file: !5836, line: 307, column: 6)
!5859 = distinct !DILexicalBlock(scope: !5835, file: !5836, line: 307, column: 6)
!5860 = !DILocation(line: 307, column: 6, scope: !5858)
!5861 = !DILocalVariable(name: "__b", scope: !5858, file: !5836, line: 307, type: !179)
!5862 = !DILocalVariable(name: "__d", scope: !5858, file: !5836, line: 307, type: !5853)
!5863 = !DILocation(line: 307, column: 6, scope: !5859)
!5864 = !DILocation(line: 307, column: 6, scope: !5835)
!5865 = !DILocation(line: 308, column: 3, scope: !5859)
!5866 = !DILocation(line: 310, column: 9, scope: !5835)
!5867 = !DILocation(line: 310, column: 2, scope: !5835)
!5868 = !DILocation(line: 311, column: 1, scope: !5835)
!5869 = distinct !DISubprogram(name: "refcount_set", scope: !99, file: !99, line: 134, type: !5870, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{null, !5037, !161}
!5872 = !DILocalVariable(name: "v", arg: 1, scope: !5873, file: !5059, line: 39, type: !5062)
!5873 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5059, file: !5059, line: 39, type: !5874, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{null, !5062, !161}
!5876 = !DILocation(line: 39, column: 55, scope: !5873, inlinedAt: !5877)
!5877 = distinct !DILocation(line: 46, column: 2, scope: !5878, inlinedAt: !5879)
!5878 = distinct !DISubprogram(name: "atomic_set", scope: !5066, file: !5066, line: 43, type: !5874, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5879 = distinct !DILocation(line: 136, column: 2, scope: !5869)
!5880 = !DILocalVariable(name: "i", arg: 2, scope: !5873, file: !5059, line: 39, type: !161)
!5881 = !DILocation(line: 39, column: 62, scope: !5873, inlinedAt: !5877)
!5882 = !DILocalVariable(name: "v", arg: 1, scope: !5883, file: !5075, line: 84, type: !5078)
!5883 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5075, file: !5075, line: 84, type: !5076, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5884 = !DILocation(line: 84, column: 74, scope: !5883, inlinedAt: !5885)
!5885 = distinct !DILocation(line: 45, column: 2, scope: !5878, inlinedAt: !5879)
!5886 = !DILocalVariable(name: "size", arg: 2, scope: !5883, file: !5075, line: 84, type: !179)
!5887 = !DILocation(line: 84, column: 84, scope: !5883, inlinedAt: !5885)
!5888 = !DILocalVariable(name: "v", arg: 1, scope: !5878, file: !5066, line: 43, type: !5062)
!5889 = !DILocation(line: 43, column: 22, scope: !5878, inlinedAt: !5879)
!5890 = !DILocalVariable(name: "i", arg: 2, scope: !5878, file: !5066, line: 43, type: !161)
!5891 = !DILocation(line: 43, column: 29, scope: !5878, inlinedAt: !5879)
!5892 = !DILocalVariable(name: "r", arg: 1, scope: !5869, file: !99, line: 134, type: !5037)
!5893 = !DILocation(line: 134, column: 45, scope: !5869)
!5894 = !DILocalVariable(name: "n", arg: 2, scope: !5869, file: !99, line: 134, type: !161)
!5895 = !DILocation(line: 134, column: 52, scope: !5869)
!5896 = !DILocation(line: 136, column: 14, scope: !5869)
!5897 = !DILocation(line: 136, column: 17, scope: !5869)
!5898 = !DILocation(line: 136, column: 23, scope: !5869)
!5899 = !DILocation(line: 45, column: 26, scope: !5878, inlinedAt: !5879)
!5900 = !DILocation(line: 86, column: 20, scope: !5883, inlinedAt: !5885)
!5901 = !DILocation(line: 86, column: 23, scope: !5883, inlinedAt: !5885)
!5902 = !DILocation(line: 86, column: 2, scope: !5883, inlinedAt: !5885)
!5903 = !DILocation(line: 87, column: 2, scope: !5883, inlinedAt: !5885)
!5904 = !DILocation(line: 46, column: 18, scope: !5878, inlinedAt: !5879)
!5905 = !DILocation(line: 46, column: 21, scope: !5878, inlinedAt: !5879)
!5906 = !DILocation(line: 41, column: 2, scope: !5907, inlinedAt: !5877)
!5907 = distinct !DILexicalBlock(scope: !5873, file: !5059, line: 41, column: 2)
!5908 = !DILocation(line: 137, column: 1, scope: !5869)
!5909 = distinct !DISubprogram(name: "get_order", scope: !5910, file: !5910, line: 29, type: !5911, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5910 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!161, !129}
!5913 = !DILocalVariable(name: "x", arg: 1, scope: !5914, file: !5915, line: 366, type: !176)
!5914 = distinct !DISubprogram(name: "fls64", scope: !5915, file: !5915, line: 366, type: !5916, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5915 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!161, !176}
!5918 = !DILocation(line: 366, column: 40, scope: !5914, inlinedAt: !5919)
!5919 = distinct !DILocation(line: 46, column: 9, scope: !5909)
!5920 = !DILocalVariable(name: "bitpos", scope: !5914, file: !5915, line: 368, type: !161)
!5921 = !DILocation(line: 368, column: 6, scope: !5914, inlinedAt: !5919)
!5922 = !DILocalVariable(name: "size", arg: 1, scope: !5909, file: !5910, line: 29, type: !129)
!5923 = !DILocation(line: 29, column: 63, scope: !5909)
!5924 = !DILocation(line: 31, column: 27, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5909, file: !5910, line: 31, column: 6)
!5926 = !DILocation(line: 31, column: 6, scope: !5925)
!5927 = !DILocation(line: 31, column: 6, scope: !5909)
!5928 = !DILocation(line: 32, column: 8, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5930, file: !5910, line: 32, column: 7)
!5930 = distinct !DILexicalBlock(scope: !5925, file: !5910, line: 31, column: 34)
!5931 = !DILocation(line: 32, column: 7, scope: !5930)
!5932 = !DILocation(line: 33, column: 4, scope: !5929)
!5933 = !DILocation(line: 35, column: 7, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5930, file: !5910, line: 35, column: 7)
!5935 = !DILocation(line: 35, column: 12, scope: !5934)
!5936 = !DILocation(line: 35, column: 7, scope: !5930)
!5937 = !DILocation(line: 36, column: 4, scope: !5934)
!5938 = !DILocation(line: 38, column: 10, scope: !5930)
!5939 = !DILocation(line: 38, column: 28, scope: !5930)
!5940 = !DILocation(line: 38, column: 41, scope: !5930)
!5941 = !DILocation(line: 38, column: 3, scope: !5930)
!5942 = !DILocation(line: 41, column: 6, scope: !5909)
!5943 = !DILocation(line: 42, column: 7, scope: !5909)
!5944 = !DILocation(line: 46, column: 15, scope: !5909)
!5945 = !DILocation(line: 374, column: 2, scope: !5914, inlinedAt: !5919)
!5946 = !DILocation(line: 376, column: 14, scope: !5914, inlinedAt: !5919)
!5947 = !{i32 266752}
!5948 = !DILocation(line: 377, column: 9, scope: !5914, inlinedAt: !5919)
!5949 = !DILocation(line: 377, column: 16, scope: !5914, inlinedAt: !5919)
!5950 = !DILocation(line: 46, column: 2, scope: !5909)
!5951 = !DILocation(line: 48, column: 1, scope: !5909)
!5952 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5953, file: !5953, line: 30, type: !5954, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5953 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!161, !175}
!5956 = !DILocation(line: 366, column: 40, scope: !5914, inlinedAt: !5957)
!5957 = distinct !DILocation(line: 32, column: 9, scope: !5952)
!5958 = !DILocation(line: 368, column: 6, scope: !5914, inlinedAt: !5957)
!5959 = !DILocalVariable(name: "n", arg: 1, scope: !5952, file: !5953, line: 30, type: !175)
!5960 = !DILocation(line: 30, column: 21, scope: !5952)
!5961 = !DILocation(line: 32, column: 15, scope: !5952)
!5962 = !DILocation(line: 374, column: 2, scope: !5914, inlinedAt: !5957)
!5963 = !DILocation(line: 376, column: 14, scope: !5914, inlinedAt: !5957)
!5964 = !DILocation(line: 377, column: 9, scope: !5914, inlinedAt: !5957)
!5965 = !DILocation(line: 377, column: 16, scope: !5914, inlinedAt: !5957)
!5966 = !DILocation(line: 32, column: 18, scope: !5952)
!5967 = !DILocation(line: 32, column: 2, scope: !5952)
!5968 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5969, file: !5969, line: 137, type: !5970, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5969 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!128, !2285, !2452, !179, !178}
!5972 = !DILocalVariable(name: "s", arg: 1, scope: !5968, file: !5969, line: 137, type: !2285)
!5973 = !DILocation(line: 137, column: 54, scope: !5968)
!5974 = !DILocalVariable(name: "object", arg: 2, scope: !5968, file: !5969, line: 137, type: !2452)
!5975 = !DILocation(line: 137, column: 69, scope: !5968)
!5976 = !DILocalVariable(name: "size", arg: 3, scope: !5968, file: !5969, line: 138, type: !179)
!5977 = !DILocation(line: 138, column: 12, scope: !5968)
!5978 = !DILocalVariable(name: "flags", arg: 4, scope: !5968, file: !5969, line: 138, type: !178)
!5979 = !DILocation(line: 138, column: 24, scope: !5968)
!5980 = !DILocation(line: 140, column: 17, scope: !5968)
!5981 = !DILocation(line: 140, column: 2, scope: !5968)
!5982 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5836, file: !5836, line: 52, type: !5983, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!241, !241}
!5985 = !DILocalVariable(name: "overflow", arg: 1, scope: !5982, file: !5836, line: 52, type: !241)
!5986 = !DILocation(line: 52, column: 60, scope: !5982)
!5987 = !DILocation(line: 54, column: 9, scope: !5982)
!5988 = !DILocation(line: 54, column: 2, scope: !5982)
!5989 = distinct !DISubprogram(name: "__fswab32", scope: !4608, file: !4608, line: 57, type: !5990, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!187, !187}
!5992 = !DILocalVariable(name: "val", arg: 1, scope: !5989, file: !4608, line: 57, type: !187)
!5993 = !DILocation(line: 57, column: 57, scope: !5989)
!5994 = !DILocation(line: 60, column: 23, scope: !5989)
!5995 = !DILocation(line: 60, column: 9, scope: !5989)
!5996 = !DILocation(line: 60, column: 2, scope: !5989)
!5997 = distinct !DISubprogram(name: "__arch_swab32", scope: !5998, file: !5998, line: 8, type: !5990, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!5998 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5999 = !DILocalVariable(name: "val", arg: 1, scope: !5997, file: !5998, line: 8, type: !187)
!6000 = !DILocation(line: 8, column: 61, scope: !5997)
!6001 = !DILocation(line: 10, column: 38, scope: !5997)
!6002 = !DILocation(line: 10, column: 2, scope: !5997)
!6003 = !{i32 386976}
!6004 = !DILocation(line: 11, column: 9, scope: !5997)
!6005 = !DILocation(line: 11, column: 2, scope: !5997)
!6006 = distinct !DISubprogram(name: "move_tree", scope: !1, file: !1, line: 389, type: !6007, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !451)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{null, !130, !130, !161}
!6009 = !DILocalVariable(name: "node0", arg: 1, scope: !6006, file: !1, line: 389, type: !130)
!6010 = !DILocation(line: 389, column: 39, scope: !6006)
!6011 = !DILocalVariable(name: "node1", arg: 2, scope: !6006, file: !1, line: 389, type: !130)
!6012 = !DILocation(line: 389, column: 62, scope: !6006)
!6013 = !DILocalVariable(name: "port", arg: 3, scope: !6006, file: !1, line: 389, type: !161)
!6014 = !DILocation(line: 389, column: 73, scope: !6006)
!6015 = !DILocalVariable(name: "tree", scope: !6006, file: !1, line: 391, type: !130)
!6016 = !DILocation(line: 391, column: 18, scope: !6006)
!6017 = !DILocalVariable(name: "i", scope: !6006, file: !1, line: 392, type: !161)
!6018 = !DILocation(line: 392, column: 6, scope: !6006)
!6019 = !DILocation(line: 394, column: 9, scope: !6006)
!6020 = !DILocation(line: 394, column: 16, scope: !6006)
!6021 = !DILocation(line: 394, column: 22, scope: !6006)
!6022 = !DILocation(line: 394, column: 7, scope: !6006)
!6023 = !DILocation(line: 395, column: 23, scope: !6006)
!6024 = !DILocation(line: 395, column: 2, scope: !6006)
!6025 = !DILocation(line: 395, column: 9, scope: !6006)
!6026 = !DILocation(line: 395, column: 15, scope: !6006)
!6027 = !DILocation(line: 395, column: 21, scope: !6006)
!6028 = !DILocation(line: 396, column: 9, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6006, file: !1, line: 396, column: 2)
!6030 = !DILocation(line: 396, column: 7, scope: !6029)
!6031 = !DILocation(line: 396, column: 14, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6029, file: !1, line: 396, column: 2)
!6033 = !DILocation(line: 396, column: 18, scope: !6032)
!6034 = !DILocation(line: 396, column: 24, scope: !6032)
!6035 = !DILocation(line: 396, column: 16, scope: !6032)
!6036 = !DILocation(line: 396, column: 2, scope: !6029)
!6037 = !DILocation(line: 397, column: 7, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6039, file: !1, line: 397, column: 7)
!6039 = distinct !DILexicalBlock(scope: !6032, file: !1, line: 396, column: 41)
!6040 = !DILocation(line: 397, column: 13, scope: !6038)
!6041 = !DILocation(line: 397, column: 19, scope: !6038)
!6042 = !DILocation(line: 397, column: 25, scope: !6038)
!6043 = !DILocation(line: 397, column: 22, scope: !6038)
!6044 = !DILocation(line: 397, column: 7, scope: !6039)
!6045 = !DILocation(line: 398, column: 21, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6038, file: !1, line: 397, column: 32)
!6047 = !DILocation(line: 398, column: 4, scope: !6046)
!6048 = !DILocation(line: 398, column: 10, scope: !6046)
!6049 = !DILocation(line: 398, column: 16, scope: !6046)
!6050 = !DILocation(line: 398, column: 19, scope: !6046)
!6051 = !DILocation(line: 399, column: 4, scope: !6046)
!6052 = !DILocation(line: 401, column: 2, scope: !6039)
!6053 = !DILocation(line: 396, column: 37, scope: !6032)
!6054 = !DILocation(line: 396, column: 2, scope: !6032)
!6055 = distinct !{!6055, !6036, !6056}
!6056 = !DILocation(line: 401, column: 2, scope: !6029)
!6057 = !DILocation(line: 402, column: 1, scope: !6006)
