; ModuleID = '../bcout/drivers/video/vgastate.llvm.bc'
source_filename = "drivers/video/vgastate.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.4, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.seq_file = type opaque
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%struct.vgastate = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.regstate = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8 }

@__UNIQUE_ID_author239 = internal constant [54 x i8] c"vgastate.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description240 = internal constant [44 x i8] c"vgastate.description=VGA State Save/Restore\00", section ".modinfo", align 1, !dbg !39
@__UNIQUE_ID_file241 = internal constant [37 x i8] c"vgastate.file=drivers/video/vgastate\00", section ".modinfo", align 1, !dbg !46
@__UNIQUE_ID_license242 = internal constant [21 x i8] c"vgastate.license=GPL\00", section ".modinfo", align 1, !dbg !51
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_author239, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_description240, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_file241, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license242, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @save_vga(%struct.vgastate* %state) #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.vgastate*, align 8
  %saved = alloca %struct.regstate*, align 8
  %total = alloca i32, align 4
  %fbbase = alloca i8*, align 8
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !87, metadata !DIExpression()), !dbg !88
  %call = call i8* @kzalloc(i64 72, i32 3264) #6, !dbg !89
  %0 = bitcast i8* %call to %struct.regstate*, !dbg !89
  store %struct.regstate* %0, %struct.regstate** %saved, align 8, !dbg !90
  %1 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !91
  %cmp = icmp eq %struct.regstate* %1, null, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !95
  br label %return, !dbg !95

if.end:                                           ; preds = %entry
  %2 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !96
  %3 = bitcast %struct.regstate* %2 to i8*, !dbg !97
  %4 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !98
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %4, i32 0, i32 9, !dbg !99
  store i8* %3, i8** %vidstate, align 8, !dbg !100
  %5 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !101
  %flags = getelementptr inbounds %struct.vgastate, %struct.vgastate* %5, i32 0, i32 3, !dbg !103
  %6 = load i32, i32* %flags, align 4, !dbg !103
  %and = and i32 %6, 16, !dbg !104
  %tobool = icmp ne i32 %and, 0, !dbg !104
  br i1 %tobool, label %if.then1, label %if.end7, !dbg !105

if.then1:                                         ; preds = %if.end
  %call2 = call i8* @vmalloc(i64 768) #6, !dbg !106
  %7 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !108
  %vga_cmap = getelementptr inbounds %struct.regstate, %struct.regstate* %7, i32 0, i32 3, !dbg !109
  store i8* %call2, i8** %vga_cmap, align 8, !dbg !110
  %8 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !111
  %vga_cmap3 = getelementptr inbounds %struct.regstate, %struct.regstate* %8, i32 0, i32 3, !dbg !113
  %9 = load i8*, i8** %vga_cmap3, align 8, !dbg !113
  %tobool4 = icmp ne i8* %9, null, !dbg !111
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !114

if.then5:                                         ; preds = %if.then1
  %10 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !115
  call void @vga_cleanup(%struct.vgastate* %10) #6, !dbg !117
  store i32 1, i32* %retval, align 4, !dbg !118
  br label %return, !dbg !118

if.end6:                                          ; preds = %if.then1
  %11 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !119
  call void @save_vga_cmap(%struct.vgastate* %11) #6, !dbg !120
  br label %if.end7, !dbg !121

if.end7:                                          ; preds = %if.end6, %if.end
  %12 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !122
  %flags8 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %12, i32 0, i32 3, !dbg !124
  %13 = load i32, i32* %flags8, align 4, !dbg !124
  %and9 = and i32 %13, 8, !dbg !125
  %tobool10 = icmp ne i32 %and9, 0, !dbg !125
  br i1 %tobool10, label %if.then11, label %if.end49, !dbg !126

if.then11:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i32* %total, metadata !127, metadata !DIExpression()), !dbg !129
  %14 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !130
  %num_attr = getelementptr inbounds %struct.vgastate, %struct.vgastate* %14, i32 0, i32 5, !dbg !132
  %15 = load i32, i32* %num_attr, align 4, !dbg !132
  %cmp12 = icmp ult i32 %15, 21, !dbg !133
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !134

if.then13:                                        ; preds = %if.then11
  %16 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !135
  %num_attr14 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %16, i32 0, i32 5, !dbg !136
  store i32 21, i32* %num_attr14, align 4, !dbg !137
  br label %if.end15, !dbg !135

if.end15:                                         ; preds = %if.then13, %if.then11
  %17 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !138
  %num_crtc = getelementptr inbounds %struct.vgastate, %struct.vgastate* %17, i32 0, i32 6, !dbg !140
  %18 = load i32, i32* %num_crtc, align 8, !dbg !140
  %cmp16 = icmp ult i32 %18, 25, !dbg !141
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !142

if.then17:                                        ; preds = %if.end15
  %19 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !143
  %num_crtc18 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %19, i32 0, i32 6, !dbg !144
  store i32 25, i32* %num_crtc18, align 8, !dbg !145
  br label %if.end19, !dbg !143

if.end19:                                         ; preds = %if.then17, %if.end15
  %20 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !146
  %num_gfx = getelementptr inbounds %struct.vgastate, %struct.vgastate* %20, i32 0, i32 7, !dbg !148
  %21 = load i32, i32* %num_gfx, align 4, !dbg !148
  %cmp20 = icmp ult i32 %21, 9, !dbg !149
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !150

if.then21:                                        ; preds = %if.end19
  %22 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !151
  %num_gfx22 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %22, i32 0, i32 7, !dbg !152
  store i32 9, i32* %num_gfx22, align 4, !dbg !153
  br label %if.end23, !dbg !151

if.end23:                                         ; preds = %if.then21, %if.end19
  %23 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !154
  %num_seq = getelementptr inbounds %struct.vgastate, %struct.vgastate* %23, i32 0, i32 8, !dbg !156
  %24 = load i32, i32* %num_seq, align 8, !dbg !156
  %cmp24 = icmp ult i32 %24, 5, !dbg !157
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !158

if.then25:                                        ; preds = %if.end23
  %25 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !159
  %num_seq26 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %25, i32 0, i32 8, !dbg !160
  store i32 5, i32* %num_seq26, align 8, !dbg !161
  br label %if.end27, !dbg !159

if.end27:                                         ; preds = %if.then25, %if.end23
  %26 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !162
  %num_attr28 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %26, i32 0, i32 5, !dbg !163
  %27 = load i32, i32* %num_attr28, align 4, !dbg !163
  %28 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !164
  %num_crtc29 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %28, i32 0, i32 6, !dbg !165
  %29 = load i32, i32* %num_crtc29, align 8, !dbg !165
  %add = add i32 %27, %29, !dbg !166
  %30 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !167
  %num_gfx30 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %30, i32 0, i32 7, !dbg !168
  %31 = load i32, i32* %num_gfx30, align 4, !dbg !168
  %add31 = add i32 %add, %31, !dbg !169
  %32 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !170
  %num_seq32 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %32, i32 0, i32 8, !dbg !171
  %33 = load i32, i32* %num_seq32, align 8, !dbg !171
  %add33 = add i32 %add31, %33, !dbg !172
  store i32 %add33, i32* %total, align 4, !dbg !173
  %34 = load i32, i32* %total, align 4, !dbg !174
  %conv = sext i32 %34 to i64, !dbg !174
  %call34 = call i8* @vmalloc(i64 %conv) #6, !dbg !175
  %35 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !176
  %attr = getelementptr inbounds %struct.regstate, %struct.regstate* %35, i32 0, i32 4, !dbg !177
  store i8* %call34, i8** %attr, align 8, !dbg !178
  %36 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !179
  %attr35 = getelementptr inbounds %struct.regstate, %struct.regstate* %36, i32 0, i32 4, !dbg !181
  %37 = load i8*, i8** %attr35, align 8, !dbg !181
  %tobool36 = icmp ne i8* %37, null, !dbg !179
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !182

if.then37:                                        ; preds = %if.end27
  %38 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !183
  call void @vga_cleanup(%struct.vgastate* %38) #6, !dbg !185
  store i32 1, i32* %retval, align 4, !dbg !186
  br label %return, !dbg !186

if.end38:                                         ; preds = %if.end27
  %39 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !187
  %attr39 = getelementptr inbounds %struct.regstate, %struct.regstate* %39, i32 0, i32 4, !dbg !188
  %40 = load i8*, i8** %attr39, align 8, !dbg !188
  %41 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !189
  %num_attr40 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %41, i32 0, i32 5, !dbg !190
  %42 = load i32, i32* %num_attr40, align 4, !dbg !190
  %idx.ext = zext i32 %42 to i64, !dbg !191
  %add.ptr = getelementptr i8, i8* %40, i64 %idx.ext, !dbg !191
  %43 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !192
  %crtc = getelementptr inbounds %struct.regstate, %struct.regstate* %43, i32 0, i32 5, !dbg !193
  store i8* %add.ptr, i8** %crtc, align 8, !dbg !194
  %44 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !195
  %crtc41 = getelementptr inbounds %struct.regstate, %struct.regstate* %44, i32 0, i32 5, !dbg !196
  %45 = load i8*, i8** %crtc41, align 8, !dbg !196
  %46 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !197
  %num_crtc42 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %46, i32 0, i32 6, !dbg !198
  %47 = load i32, i32* %num_crtc42, align 8, !dbg !198
  %idx.ext43 = zext i32 %47 to i64, !dbg !199
  %add.ptr44 = getelementptr i8, i8* %45, i64 %idx.ext43, !dbg !199
  %48 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !200
  %gfx = getelementptr inbounds %struct.regstate, %struct.regstate* %48, i32 0, i32 6, !dbg !201
  store i8* %add.ptr44, i8** %gfx, align 8, !dbg !202
  %49 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !203
  %gfx45 = getelementptr inbounds %struct.regstate, %struct.regstate* %49, i32 0, i32 6, !dbg !204
  %50 = load i8*, i8** %gfx45, align 8, !dbg !204
  %51 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !205
  %num_gfx46 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %51, i32 0, i32 7, !dbg !206
  %52 = load i32, i32* %num_gfx46, align 4, !dbg !206
  %idx.ext47 = zext i32 %52 to i64, !dbg !207
  %add.ptr48 = getelementptr i8, i8* %50, i64 %idx.ext47, !dbg !207
  %53 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !208
  %seq = getelementptr inbounds %struct.regstate, %struct.regstate* %53, i32 0, i32 7, !dbg !209
  store i8* %add.ptr48, i8** %seq, align 8, !dbg !210
  %54 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !211
  call void @save_vga_mode(%struct.vgastate* %54) #6, !dbg !212
  br label %if.end49, !dbg !213

if.end49:                                         ; preds = %if.end38, %if.end7
  %55 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !214
  %flags50 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %55, i32 0, i32 3, !dbg !216
  %56 = load i32, i32* %flags50, align 4, !dbg !216
  %and51 = and i32 %56, 7, !dbg !217
  %tobool52 = icmp ne i32 %and51, 0, !dbg !217
  br i1 %tobool52, label %if.then53, label %if.end108, !dbg !218

if.then53:                                        ; preds = %if.end49
  call void @llvm.dbg.declare(metadata i8** %fbbase, metadata !219, metadata !DIExpression()), !dbg !221
  %57 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !222
  %memsize = getelementptr inbounds %struct.vgastate, %struct.vgastate* %57, i32 0, i32 2, !dbg !224
  %58 = load i32, i32* %memsize, align 8, !dbg !224
  %tobool54 = icmp ne i32 %58, 0, !dbg !222
  br i1 %tobool54, label %land.lhs.true, label %if.end59, !dbg !225

land.lhs.true:                                    ; preds = %if.then53
  %59 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !226
  %memsize55 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %59, i32 0, i32 2, !dbg !227
  %60 = load i32, i32* %memsize55, align 8, !dbg !227
  %cmp56 = icmp ult i32 %60, 32768, !dbg !228
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !229

if.then58:                                        ; preds = %land.lhs.true
  %61 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !230
  call void @vga_cleanup(%struct.vgastate* %61) #6, !dbg !232
  store i32 1, i32* %retval, align 4, !dbg !233
  br label %return, !dbg !233

if.end59:                                         ; preds = %land.lhs.true, %if.then53
  %62 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !234
  %memsize60 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %62, i32 0, i32 2, !dbg !236
  %63 = load i32, i32* %memsize60, align 8, !dbg !236
  %tobool61 = icmp ne i32 %63, 0, !dbg !234
  br i1 %tobool61, label %if.end64, label %if.then62, !dbg !237

if.then62:                                        ; preds = %if.end59
  %64 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !238
  %memsize63 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %64, i32 0, i32 2, !dbg !239
  store i32 65536, i32* %memsize63, align 8, !dbg !240
  br label %if.end64, !dbg !238

if.end64:                                         ; preds = %if.then62, %if.end59
  %65 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !241
  %membase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %65, i32 0, i32 1, !dbg !243
  %66 = load i64, i64* %membase, align 8, !dbg !243
  %tobool65 = icmp ne i64 %66, 0, !dbg !241
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !244

if.then66:                                        ; preds = %if.end64
  %67 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !245
  %membase67 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %67, i32 0, i32 1, !dbg !246
  store i64 655360, i64* %membase67, align 8, !dbg !247
  br label %if.end68, !dbg !245

if.end68:                                         ; preds = %if.then66, %if.end64
  %68 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !248
  %membase69 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %68, i32 0, i32 1, !dbg !249
  %69 = load i64, i64* %membase69, align 8, !dbg !249
  %70 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !250
  %memsize70 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %70, i32 0, i32 2, !dbg !251
  %71 = load i32, i32* %memsize70, align 8, !dbg !251
  %conv71 = zext i32 %71 to i64, !dbg !250
  %call72 = call i8* @ioremap(i64 %69, i64 %conv71) #6, !dbg !252
  store i8* %call72, i8** %fbbase, align 8, !dbg !253
  %72 = load i8*, i8** %fbbase, align 8, !dbg !254
  %tobool73 = icmp ne i8* %72, null, !dbg !254
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !256

if.then74:                                        ; preds = %if.end68
  %73 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !257
  call void @vga_cleanup(%struct.vgastate* %73) #6, !dbg !259
  store i32 1, i32* %retval, align 4, !dbg !260
  br label %return, !dbg !260

if.end75:                                         ; preds = %if.end68
  %74 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !261
  %flags76 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %74, i32 0, i32 3, !dbg !263
  %75 = load i32, i32* %flags76, align 4, !dbg !263
  %and77 = and i32 %75, 1, !dbg !264
  %tobool78 = icmp ne i32 %and77, 0, !dbg !264
  br i1 %tobool78, label %if.then79, label %if.end85, !dbg !265

if.then79:                                        ; preds = %if.end75
  %call80 = call i8* @vmalloc(i64 32768) #6, !dbg !266
  %76 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !268
  %vga_font0 = getelementptr inbounds %struct.regstate, %struct.regstate* %76, i32 0, i32 0, !dbg !269
  store i8* %call80, i8** %vga_font0, align 8, !dbg !270
  %77 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !271
  %vga_font081 = getelementptr inbounds %struct.regstate, %struct.regstate* %77, i32 0, i32 0, !dbg !273
  %78 = load i8*, i8** %vga_font081, align 8, !dbg !273
  %tobool82 = icmp ne i8* %78, null, !dbg !271
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !274

if.then83:                                        ; preds = %if.then79
  %79 = load i8*, i8** %fbbase, align 8, !dbg !275
  call void @iounmap(i8* %79) #6, !dbg !277
  %80 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !278
  call void @vga_cleanup(%struct.vgastate* %80) #6, !dbg !279
  store i32 1, i32* %retval, align 4, !dbg !280
  br label %return, !dbg !280

if.end84:                                         ; preds = %if.then79
  br label %if.end85, !dbg !281

if.end85:                                         ; preds = %if.end84, %if.end75
  %81 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !282
  %flags86 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %81, i32 0, i32 3, !dbg !284
  %82 = load i32, i32* %flags86, align 4, !dbg !284
  %and87 = and i32 %82, 2, !dbg !285
  %tobool88 = icmp ne i32 %and87, 0, !dbg !285
  br i1 %tobool88, label %if.then89, label %if.end97, !dbg !286

if.then89:                                        ; preds = %if.end85
  %83 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !287
  %memsize90 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %83, i32 0, i32 2, !dbg !289
  %84 = load i32, i32* %memsize90, align 8, !dbg !289
  %conv91 = zext i32 %84 to i64, !dbg !287
  %call92 = call i8* @vmalloc(i64 %conv91) #6, !dbg !290
  %85 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !291
  %vga_font1 = getelementptr inbounds %struct.regstate, %struct.regstate* %85, i32 0, i32 1, !dbg !292
  store i8* %call92, i8** %vga_font1, align 8, !dbg !293
  %86 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !294
  %vga_font193 = getelementptr inbounds %struct.regstate, %struct.regstate* %86, i32 0, i32 1, !dbg !296
  %87 = load i8*, i8** %vga_font193, align 8, !dbg !296
  %tobool94 = icmp ne i8* %87, null, !dbg !294
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !297

if.then95:                                        ; preds = %if.then89
  %88 = load i8*, i8** %fbbase, align 8, !dbg !298
  call void @iounmap(i8* %88) #6, !dbg !300
  %89 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !301
  call void @vga_cleanup(%struct.vgastate* %89) #6, !dbg !302
  store i32 1, i32* %retval, align 4, !dbg !303
  br label %return, !dbg !303

if.end96:                                         ; preds = %if.then89
  br label %if.end97, !dbg !304

if.end97:                                         ; preds = %if.end96, %if.end85
  %90 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !305
  %flags98 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %90, i32 0, i32 3, !dbg !307
  %91 = load i32, i32* %flags98, align 4, !dbg !307
  %and99 = and i32 %91, 4, !dbg !308
  %tobool100 = icmp ne i32 %and99, 0, !dbg !308
  br i1 %tobool100, label %if.then101, label %if.end107, !dbg !309

if.then101:                                       ; preds = %if.end97
  %call102 = call i8* @vmalloc(i64 16384) #6, !dbg !310
  %92 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !312
  %vga_text = getelementptr inbounds %struct.regstate, %struct.regstate* %92, i32 0, i32 2, !dbg !313
  store i8* %call102, i8** %vga_text, align 8, !dbg !314
  %93 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !315
  %vga_text103 = getelementptr inbounds %struct.regstate, %struct.regstate* %93, i32 0, i32 2, !dbg !317
  %94 = load i8*, i8** %vga_text103, align 8, !dbg !317
  %tobool104 = icmp ne i8* %94, null, !dbg !315
  br i1 %tobool104, label %if.end106, label %if.then105, !dbg !318

if.then105:                                       ; preds = %if.then101
  %95 = load i8*, i8** %fbbase, align 8, !dbg !319
  call void @iounmap(i8* %95) #6, !dbg !321
  %96 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !322
  call void @vga_cleanup(%struct.vgastate* %96) #6, !dbg !323
  store i32 1, i32* %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.end106:                                        ; preds = %if.then101
  br label %if.end107, !dbg !325

if.end107:                                        ; preds = %if.end106, %if.end97
  %97 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !326
  %98 = load i8*, i8** %fbbase, align 8, !dbg !327
  call void @save_vga_text(%struct.vgastate* %97, i8* %98) #6, !dbg !328
  %99 = load i8*, i8** %fbbase, align 8, !dbg !329
  call void @iounmap(i8* %99) #6, !dbg !330
  br label %if.end108, !dbg !331

if.end108:                                        ; preds = %if.end107, %if.end49
  store i32 0, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

return:                                           ; preds = %if.end108, %if.then105, %if.then95, %if.then83, %if.then74, %if.then58, %if.then37, %if.then5, %if.then
  %100 = load i32, i32* %retval, align 4, !dbg !333
  ret i32 %100, !dbg !333
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !334 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !341, metadata !DIExpression()), !dbg !348
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !354, metadata !DIExpression()), !dbg !355
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !356, metadata !DIExpression()), !dbg !357
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !358, metadata !DIExpression()), !dbg !359
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !360, metadata !DIExpression()), !dbg !364
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !366, metadata !DIExpression()), !dbg !370
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !372, metadata !DIExpression()), !dbg !376
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !381, metadata !DIExpression()), !dbg !382
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !383, metadata !DIExpression()), !dbg !384
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !385, metadata !DIExpression()), !dbg !386
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !387, metadata !DIExpression()), !dbg !388
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !389, metadata !DIExpression()), !dbg !390
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !391, metadata !DIExpression()), !dbg !392
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !393, metadata !DIExpression()), !dbg !394
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !395, metadata !DIExpression()), !dbg !396
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i64, i64* %size.addr, align 8, !dbg !401
  %1 = load i32, i32* %flags.addr, align 4, !dbg !402
  %or = or i32 %1, 256, !dbg !403
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !404
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !405
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !406

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !407
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !408
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !409

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !410
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !411
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !412
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !413
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !390
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !414
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !415
  %10 = load i32, i32* %order.i.i, align 4, !dbg !416
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !417
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !418
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !419
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !420
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !420
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !420
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !420
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !420
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !421
  br label %kmalloc.exit, !dbg !421

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !422
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !423
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !423
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !425

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !426
  br label %kmalloc_index.exit.i, !dbg !426

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !427
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !429
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !430

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !431
  br label %kmalloc_index.exit.i, !dbg !431

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !432
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !434
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !435

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !436
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !437
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !438

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !439
  br label %kmalloc_index.exit.i, !dbg !439

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !440
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !442
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !443

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !444
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !445
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !446

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !447
  br label %kmalloc_index.exit.i, !dbg !447

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !448
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !450
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !451

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !452
  br label %kmalloc_index.exit.i, !dbg !452

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !453
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !455
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !456

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !457
  br label %kmalloc_index.exit.i, !dbg !457

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !458
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !460
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !461

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !462
  br label %kmalloc_index.exit.i, !dbg !462

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !463
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !465
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !466

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !467
  br label %kmalloc_index.exit.i, !dbg !467

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !468
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !470
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !471

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !472
  br label %kmalloc_index.exit.i, !dbg !472

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !473
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !475
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !476

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !477
  br label %kmalloc_index.exit.i, !dbg !477

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !478
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !480
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !481

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !482
  br label %kmalloc_index.exit.i, !dbg !482

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !483
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !485
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !486

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !487
  br label %kmalloc_index.exit.i, !dbg !487

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !488
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !490
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !491

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !492
  br label %kmalloc_index.exit.i, !dbg !492

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !493
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !495
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !496

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !497
  br label %kmalloc_index.exit.i, !dbg !497

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !498
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !500
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !501

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !502
  br label %kmalloc_index.exit.i, !dbg !502

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !503
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !505
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !506

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !507
  br label %kmalloc_index.exit.i, !dbg !507

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !508
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !510
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !511

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !512
  br label %kmalloc_index.exit.i, !dbg !512

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !513
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !515
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !516

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !517
  br label %kmalloc_index.exit.i, !dbg !517

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !518
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !520
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !521

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !522
  br label %kmalloc_index.exit.i, !dbg !522

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !523
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !525
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !526

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !527
  br label %kmalloc_index.exit.i, !dbg !527

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !528
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !530
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !531

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !532
  br label %kmalloc_index.exit.i, !dbg !532

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !533
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !535
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !536

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !537
  br label %kmalloc_index.exit.i, !dbg !537

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !538
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !540
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !541

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !542
  br label %kmalloc_index.exit.i, !dbg !542

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !543
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !545
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !546

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !547
  br label %kmalloc_index.exit.i, !dbg !547

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !548
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !550
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !551

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !552
  br label %kmalloc_index.exit.i, !dbg !552

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !553
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !555
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !556

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !557
  br label %kmalloc_index.exit.i, !dbg !557

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !558
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !560
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !561

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !562
  br label %kmalloc_index.exit.i, !dbg !562

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !563
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !565
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !566

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !567
  br label %kmalloc_index.exit.i, !dbg !567

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !568, !srcloc !571
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !572, !srcloc !575
  unreachable, !dbg !576

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !577
  store i32 %45, i32* %index.i, align 4, !dbg !578
  %46 = load i32, i32* %index.i, align 4, !dbg !579
  %tobool.i = icmp ne i32 %46, 0, !dbg !579
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !581

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !582
  br label %kmalloc.exit, !dbg !582

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !583
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !584
  %and.i.i = and i32 %48, 17, !dbg !584
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !584
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !584
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !584
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !584
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !586

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !587
  br label %kmalloc_type.exit.i, !dbg !587

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !588
  %and2.i.i = and i32 %49, 1, !dbg !589
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !588
  %50 = zext i1 %tobool3.i.i to i64, !dbg !588
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !588
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !590
  br label %kmalloc_type.exit.i, !dbg !590

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !591
  %idxprom.i = zext i32 %51 to i64, !dbg !592
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !592
  %52 = load i32, i32* %index.i, align 4, !dbg !593
  %idxprom6.i = zext i32 %52 to i64, !dbg !592
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !592
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !592
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !594
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !595
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !596
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !597
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !598
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !598
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !598
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !598
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !598
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !359
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !599
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !600
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !601
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !602
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !603
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !604
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !605
  store i8* %62, i8** %retval.i, align 8, !dbg !606
  br label %kmalloc.exit, !dbg !606

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !607
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !608
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !609
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !609
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !609
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !609
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !609
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !610
  br label %kmalloc.exit, !dbg !610

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !611
  ret i8* %65, !dbg !612
}

; Function Attrs: noredzone
declare dso_local i8* @vmalloc(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_cleanup(%struct.vgastate* %state) #0 !dbg !613 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %saved = alloca %struct.regstate*, align 8
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !618
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !620
  %1 = load i8*, i8** %vidstate, align 8, !dbg !620
  %cmp = icmp ne i8* %1, null, !dbg !621
  br i1 %cmp, label %if.then, label %if.end, !dbg !622

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !623, metadata !DIExpression()), !dbg !625
  %2 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !626
  %vidstate1 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %2, i32 0, i32 9, !dbg !627
  %3 = load i8*, i8** %vidstate1, align 8, !dbg !627
  %4 = bitcast i8* %3 to %struct.regstate*, !dbg !628
  store %struct.regstate* %4, %struct.regstate** %saved, align 8, !dbg !625
  %5 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !629
  %vga_font0 = getelementptr inbounds %struct.regstate, %struct.regstate* %5, i32 0, i32 0, !dbg !630
  %6 = load i8*, i8** %vga_font0, align 8, !dbg !630
  call void @vfree(i8* %6) #6, !dbg !631
  %7 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !632
  %vga_font1 = getelementptr inbounds %struct.regstate, %struct.regstate* %7, i32 0, i32 1, !dbg !633
  %8 = load i8*, i8** %vga_font1, align 8, !dbg !633
  call void @vfree(i8* %8) #6, !dbg !634
  %9 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !635
  %vga_text = getelementptr inbounds %struct.regstate, %struct.regstate* %9, i32 0, i32 2, !dbg !636
  %10 = load i8*, i8** %vga_text, align 8, !dbg !636
  call void @vfree(i8* %10) #6, !dbg !637
  %11 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !638
  %vga_cmap = getelementptr inbounds %struct.regstate, %struct.regstate* %11, i32 0, i32 3, !dbg !639
  %12 = load i8*, i8** %vga_cmap, align 8, !dbg !639
  call void @vfree(i8* %12) #6, !dbg !640
  %13 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !641
  %attr = getelementptr inbounds %struct.regstate, %struct.regstate* %13, i32 0, i32 4, !dbg !642
  %14 = load i8*, i8** %attr, align 8, !dbg !642
  call void @vfree(i8* %14) #6, !dbg !643
  %15 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !644
  %16 = bitcast %struct.regstate* %15 to i8*, !dbg !644
  call void @kfree(i8* %16) #6, !dbg !645
  %17 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !646
  %vidstate2 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %17, i32 0, i32 9, !dbg !647
  store i8* null, i8** %vidstate2, align 8, !dbg !648
  br label %if.end, !dbg !649

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @save_vga_cmap(%struct.vgastate* %state) #0 !dbg !651 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %saved = alloca %struct.regstate*, align 8
  %i = alloca i32, align 4
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !656
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !657
  %1 = load i8*, i8** %vidstate, align 8, !dbg !657
  %2 = bitcast i8* %1 to %struct.regstate*, !dbg !658
  store %struct.regstate* %2, %struct.regstate** %saved, align 8, !dbg !655
  call void @llvm.dbg.declare(metadata i32* %i, metadata !659, metadata !DIExpression()), !dbg !660
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !661
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !662
  %4 = load i8*, i8** %vgabase, align 8, !dbg !662
  call void @vga_w(i8* %4, i16 zeroext 966, i8 zeroext -1) #6, !dbg !663
  %5 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !664
  %vgabase1 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %5, i32 0, i32 0, !dbg !665
  %6 = load i8*, i8** %vgabase1, align 8, !dbg !665
  call void @vga_w(i8* %6, i16 zeroext 967, i8 zeroext 0) #6, !dbg !666
  store i32 0, i32* %i, align 4, !dbg !667
  br label %for.cond, !dbg !669

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !670
  %cmp = icmp slt i32 %7, 768, !dbg !672
  br i1 %cmp, label %for.body, label %for.end, !dbg !673

for.body:                                         ; preds = %for.cond
  %8 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !674
  %vgabase2 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %8, i32 0, i32 0, !dbg !675
  %9 = load i8*, i8** %vgabase2, align 8, !dbg !675
  %call = call zeroext i8 @vga_r(i8* %9, i16 zeroext 969) #6, !dbg !676
  %10 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !677
  %vga_cmap = getelementptr inbounds %struct.regstate, %struct.regstate* %10, i32 0, i32 3, !dbg !678
  %11 = load i8*, i8** %vga_cmap, align 8, !dbg !678
  %12 = load i32, i32* %i, align 4, !dbg !679
  %idxprom = sext i32 %12 to i64, !dbg !677
  %arrayidx = getelementptr i8, i8* %11, i64 %idxprom, !dbg !677
  store i8 %call, i8* %arrayidx, align 1, !dbg !680
  br label %for.inc, !dbg !677

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !681
  %inc = add i32 %13, 1, !dbg !681
  store i32 %inc, i32* %i, align 4, !dbg !681
  br label %for.cond, !dbg !682, !llvm.loop !683

for.end:                                          ; preds = %for.cond
  ret void, !dbg !685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @save_vga_mode(%struct.vgastate* %state) #0 !dbg !686 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %saved = alloca %struct.regstate*, align 8
  %iobase = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !689, metadata !DIExpression()), !dbg !690
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !691
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !692
  %1 = load i8*, i8** %vidstate, align 8, !dbg !692
  %2 = bitcast i8* %1 to %struct.regstate*, !dbg !693
  store %struct.regstate* %2, %struct.regstate** %saved, align 8, !dbg !690
  call void @llvm.dbg.declare(metadata i16* %iobase, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata i32* %i, metadata !696, metadata !DIExpression()), !dbg !697
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !698
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !699
  %4 = load i8*, i8** %vgabase, align 8, !dbg !699
  %call = call zeroext i8 @vga_r(i8* %4, i16 zeroext 972) #6, !dbg !700
  %5 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !701
  %misc = getelementptr inbounds %struct.regstate, %struct.regstate* %5, i32 0, i32 8, !dbg !702
  store i8 %call, i8* %misc, align 8, !dbg !703
  %6 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !704
  %misc1 = getelementptr inbounds %struct.regstate, %struct.regstate* %6, i32 0, i32 8, !dbg !706
  %7 = load i8, i8* %misc1, align 8, !dbg !706
  %conv = zext i8 %7 to i32, !dbg !704
  %and = and i32 %conv, 1, !dbg !707
  %tobool = icmp ne i32 %and, 0, !dbg !707
  br i1 %tobool, label %if.then, label %if.else, !dbg !708

if.then:                                          ; preds = %entry
  store i16 976, i16* %iobase, align 2, !dbg !709
  br label %if.end, !dbg !710

if.else:                                          ; preds = %entry
  store i16 944, i16* %iobase, align 2, !dbg !711
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !dbg !712
  br label %for.cond, !dbg !714

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !715
  %9 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !717
  %num_crtc = getelementptr inbounds %struct.vgastate, %struct.vgastate* %9, i32 0, i32 6, !dbg !718
  %10 = load i32, i32* %num_crtc, align 8, !dbg !718
  %cmp = icmp ult i32 %8, %10, !dbg !719
  br i1 %cmp, label %for.body, label %for.end, !dbg !720

for.body:                                         ; preds = %for.cond
  %11 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !721
  %vgabase3 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %11, i32 0, i32 0, !dbg !722
  %12 = load i8*, i8** %vgabase3, align 8, !dbg !722
  %13 = load i16, i16* %iobase, align 2, !dbg !723
  %14 = load i32, i32* %i, align 4, !dbg !724
  %conv4 = trunc i32 %14 to i8, !dbg !724
  %call5 = call zeroext i8 @vga_rcrtcs(i8* %12, i16 zeroext %13, i8 zeroext %conv4) #6, !dbg !725
  %15 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !726
  %crtc = getelementptr inbounds %struct.regstate, %struct.regstate* %15, i32 0, i32 5, !dbg !727
  %16 = load i8*, i8** %crtc, align 8, !dbg !727
  %17 = load i32, i32* %i, align 4, !dbg !728
  %idxprom = sext i32 %17 to i64, !dbg !726
  %arrayidx = getelementptr i8, i8* %16, i64 %idxprom, !dbg !726
  store i8 %call5, i8* %arrayidx, align 1, !dbg !729
  br label %for.inc, !dbg !726

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !730
  %inc = add i32 %18, 1, !dbg !730
  store i32 %inc, i32* %i, align 4, !dbg !730
  br label %for.cond, !dbg !731, !llvm.loop !732

for.end:                                          ; preds = %for.cond
  %19 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !734
  %vgabase6 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %19, i32 0, i32 0, !dbg !735
  %20 = load i8*, i8** %vgabase6, align 8, !dbg !735
  %21 = load i16, i16* %iobase, align 2, !dbg !736
  %conv7 = zext i16 %21 to i32, !dbg !736
  %add = add i32 %conv7, 10, !dbg !737
  %conv8 = trunc i32 %add to i16, !dbg !736
  %call9 = call zeroext i8 @vga_r(i8* %20, i16 zeroext %conv8) #6, !dbg !738
  %22 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !739
  %vgabase10 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %22, i32 0, i32 0, !dbg !740
  %23 = load i8*, i8** %vgabase10, align 8, !dbg !740
  call void @vga_w(i8* %23, i16 zeroext 960, i8 zeroext 0) #6, !dbg !741
  store i32 0, i32* %i, align 4, !dbg !742
  br label %for.cond11, !dbg !744

for.cond11:                                       ; preds = %for.inc25, %for.end
  %24 = load i32, i32* %i, align 4, !dbg !745
  %25 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !747
  %num_attr = getelementptr inbounds %struct.vgastate, %struct.vgastate* %25, i32 0, i32 5, !dbg !748
  %26 = load i32, i32* %num_attr, align 4, !dbg !748
  %cmp12 = icmp ult i32 %24, %26, !dbg !749
  br i1 %cmp12, label %for.body14, label %for.end27, !dbg !750

for.body14:                                       ; preds = %for.cond11
  %27 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !751
  %vgabase15 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %27, i32 0, i32 0, !dbg !753
  %28 = load i8*, i8** %vgabase15, align 8, !dbg !753
  %29 = load i16, i16* %iobase, align 2, !dbg !754
  %conv16 = zext i16 %29 to i32, !dbg !754
  %add17 = add i32 %conv16, 10, !dbg !755
  %conv18 = trunc i32 %add17 to i16, !dbg !754
  %call19 = call zeroext i8 @vga_r(i8* %28, i16 zeroext %conv18) #6, !dbg !756
  %30 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !757
  %vgabase20 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %30, i32 0, i32 0, !dbg !758
  %31 = load i8*, i8** %vgabase20, align 8, !dbg !758
  %32 = load i32, i32* %i, align 4, !dbg !759
  %conv21 = trunc i32 %32 to i8, !dbg !759
  %call22 = call zeroext i8 @vga_rattr(i8* %31, i8 zeroext %conv21) #6, !dbg !760
  %33 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !761
  %attr = getelementptr inbounds %struct.regstate, %struct.regstate* %33, i32 0, i32 4, !dbg !762
  %34 = load i8*, i8** %attr, align 8, !dbg !762
  %35 = load i32, i32* %i, align 4, !dbg !763
  %idxprom23 = sext i32 %35 to i64, !dbg !761
  %arrayidx24 = getelementptr i8, i8* %34, i64 %idxprom23, !dbg !761
  store i8 %call22, i8* %arrayidx24, align 1, !dbg !764
  br label %for.inc25, !dbg !765

for.inc25:                                        ; preds = %for.body14
  %36 = load i32, i32* %i, align 4, !dbg !766
  %inc26 = add i32 %36, 1, !dbg !766
  store i32 %inc26, i32* %i, align 4, !dbg !766
  br label %for.cond11, !dbg !767, !llvm.loop !768

for.end27:                                        ; preds = %for.cond11
  %37 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !770
  %vgabase28 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %37, i32 0, i32 0, !dbg !771
  %38 = load i8*, i8** %vgabase28, align 8, !dbg !771
  %39 = load i16, i16* %iobase, align 2, !dbg !772
  %conv29 = zext i16 %39 to i32, !dbg !772
  %add30 = add i32 %conv29, 10, !dbg !773
  %conv31 = trunc i32 %add30 to i16, !dbg !772
  %call32 = call zeroext i8 @vga_r(i8* %38, i16 zeroext %conv31) #6, !dbg !774
  %40 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !775
  %vgabase33 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %40, i32 0, i32 0, !dbg !776
  %41 = load i8*, i8** %vgabase33, align 8, !dbg !776
  call void @vga_w(i8* %41, i16 zeroext 960, i8 zeroext 32) #6, !dbg !777
  store i32 0, i32* %i, align 4, !dbg !778
  br label %for.cond34, !dbg !780

for.cond34:                                       ; preds = %for.inc43, %for.end27
  %42 = load i32, i32* %i, align 4, !dbg !781
  %43 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !783
  %num_gfx = getelementptr inbounds %struct.vgastate, %struct.vgastate* %43, i32 0, i32 7, !dbg !784
  %44 = load i32, i32* %num_gfx, align 4, !dbg !784
  %cmp35 = icmp ult i32 %42, %44, !dbg !785
  br i1 %cmp35, label %for.body37, label %for.end45, !dbg !786

for.body37:                                       ; preds = %for.cond34
  %45 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !787
  %vgabase38 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %45, i32 0, i32 0, !dbg !788
  %46 = load i8*, i8** %vgabase38, align 8, !dbg !788
  %47 = load i32, i32* %i, align 4, !dbg !789
  %conv39 = trunc i32 %47 to i8, !dbg !789
  %call40 = call zeroext i8 @vga_rgfx(i8* %46, i8 zeroext %conv39) #6, !dbg !790
  %48 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !791
  %gfx = getelementptr inbounds %struct.regstate, %struct.regstate* %48, i32 0, i32 6, !dbg !792
  %49 = load i8*, i8** %gfx, align 8, !dbg !792
  %50 = load i32, i32* %i, align 4, !dbg !793
  %idxprom41 = sext i32 %50 to i64, !dbg !791
  %arrayidx42 = getelementptr i8, i8* %49, i64 %idxprom41, !dbg !791
  store i8 %call40, i8* %arrayidx42, align 1, !dbg !794
  br label %for.inc43, !dbg !791

for.inc43:                                        ; preds = %for.body37
  %51 = load i32, i32* %i, align 4, !dbg !795
  %inc44 = add i32 %51, 1, !dbg !795
  store i32 %inc44, i32* %i, align 4, !dbg !795
  br label %for.cond34, !dbg !796, !llvm.loop !797

for.end45:                                        ; preds = %for.cond34
  store i32 0, i32* %i, align 4, !dbg !799
  br label %for.cond46, !dbg !801

for.cond46:                                       ; preds = %for.inc55, %for.end45
  %52 = load i32, i32* %i, align 4, !dbg !802
  %53 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !804
  %num_seq = getelementptr inbounds %struct.vgastate, %struct.vgastate* %53, i32 0, i32 8, !dbg !805
  %54 = load i32, i32* %num_seq, align 8, !dbg !805
  %cmp47 = icmp ult i32 %52, %54, !dbg !806
  br i1 %cmp47, label %for.body49, label %for.end57, !dbg !807

for.body49:                                       ; preds = %for.cond46
  %55 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !808
  %vgabase50 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %55, i32 0, i32 0, !dbg !809
  %56 = load i8*, i8** %vgabase50, align 8, !dbg !809
  %57 = load i32, i32* %i, align 4, !dbg !810
  %conv51 = trunc i32 %57 to i8, !dbg !810
  %call52 = call zeroext i8 @vga_rseq(i8* %56, i8 zeroext %conv51) #6, !dbg !811
  %58 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !812
  %seq = getelementptr inbounds %struct.regstate, %struct.regstate* %58, i32 0, i32 7, !dbg !813
  %59 = load i8*, i8** %seq, align 8, !dbg !813
  %60 = load i32, i32* %i, align 4, !dbg !814
  %idxprom53 = sext i32 %60 to i64, !dbg !812
  %arrayidx54 = getelementptr i8, i8* %59, i64 %idxprom53, !dbg !812
  store i8 %call52, i8* %arrayidx54, align 1, !dbg !815
  br label %for.inc55, !dbg !812

for.inc55:                                        ; preds = %for.body49
  %61 = load i32, i32* %i, align 4, !dbg !816
  %inc56 = add i32 %61, 1, !dbg !816
  store i32 %inc56, i32* %i, align 4, !dbg !816
  br label %for.cond46, !dbg !817, !llvm.loop !818

for.end57:                                        ; preds = %for.cond46
  ret void, !dbg !820
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @save_vga_text(%struct.vgastate* %state, i8* %fbbase) #0 !dbg !821 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %fbbase.addr = alloca i8*, align 8
  %saved = alloca %struct.regstate*, align 8
  %i = alloca i32, align 4
  %misc = alloca i8, align 1
  %attr10 = alloca i8, align 1
  %gr4 = alloca i8, align 1
  %gr5 = alloca i8, align 1
  %gr6 = alloca i8, align 1
  %seq1 = alloca i8, align 1
  %seq2 = alloca i8, align 1
  %seq4 = alloca i8, align 1
  %iobase = alloca i16, align 2
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i8* %fbbase, i8** %fbbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fbbase.addr, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !828, metadata !DIExpression()), !dbg !829
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !830
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !831
  %1 = load i8*, i8** %vidstate, align 8, !dbg !831
  %2 = bitcast i8* %1 to %struct.regstate*, !dbg !832
  store %struct.regstate* %2, %struct.regstate** %saved, align 8, !dbg !829
  call void @llvm.dbg.declare(metadata i32* %i, metadata !833, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata i8* %misc, metadata !835, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata i8* %attr10, metadata !839, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata i8* %gr4, metadata !841, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.declare(metadata i8* %gr5, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata i8* %gr6, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata i8* %seq1, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata i8* %seq2, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata i8* %seq4, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata i16* %iobase, metadata !853, metadata !DIExpression()), !dbg !854
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !855
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !856
  %4 = load i8*, i8** %vgabase, align 8, !dbg !856
  %call = call zeroext i8 @vga_r(i8* %4, i16 zeroext 972) #6, !dbg !857
  store i8 %call, i8* %misc, align 1, !dbg !858
  %5 = load i8, i8* %misc, align 1, !dbg !859
  %conv = zext i8 %5 to i32, !dbg !859
  %and = and i32 %conv, 1, !dbg !860
  %tobool = icmp ne i32 %and, 0, !dbg !861
  %6 = zext i1 %tobool to i64, !dbg !861
  %cond = select i1 %tobool, i32 976, i32 944, !dbg !861
  %conv1 = trunc i32 %cond to i16, !dbg !861
  store i16 %conv1, i16* %iobase, align 2, !dbg !862
  %7 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !863
  %vgabase2 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %7, i32 0, i32 0, !dbg !864
  %8 = load i8*, i8** %vgabase2, align 8, !dbg !864
  %9 = load i16, i16* %iobase, align 2, !dbg !865
  %conv3 = zext i16 %9 to i32, !dbg !865
  %add = add i32 %conv3, 10, !dbg !866
  %conv4 = trunc i32 %add to i16, !dbg !865
  %call5 = call zeroext i8 @vga_r(i8* %8, i16 zeroext %conv4) #6, !dbg !867
  %10 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !868
  %vgabase6 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %10, i32 0, i32 0, !dbg !869
  %11 = load i8*, i8** %vgabase6, align 8, !dbg !869
  call void @vga_w(i8* %11, i16 zeroext 960, i8 zeroext 0) #6, !dbg !870
  %12 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !871
  %vgabase7 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %12, i32 0, i32 0, !dbg !872
  %13 = load i8*, i8** %vgabase7, align 8, !dbg !872
  %call8 = call zeroext i8 @vga_rattr(i8* %13, i8 zeroext 16) #6, !dbg !873
  store i8 %call8, i8* %attr10, align 1, !dbg !874
  %14 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !875
  %vgabase9 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %14, i32 0, i32 0, !dbg !876
  %15 = load i8*, i8** %vgabase9, align 8, !dbg !876
  %16 = load i16, i16* %iobase, align 2, !dbg !877
  %conv10 = zext i16 %16 to i32, !dbg !877
  %add11 = add i32 %conv10, 10, !dbg !878
  %conv12 = trunc i32 %add11 to i16, !dbg !877
  %call13 = call zeroext i8 @vga_r(i8* %15, i16 zeroext %conv12) #6, !dbg !879
  %17 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !880
  %vgabase14 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %17, i32 0, i32 0, !dbg !881
  %18 = load i8*, i8** %vgabase14, align 8, !dbg !881
  call void @vga_w(i8* %18, i16 zeroext 960, i8 zeroext 32) #6, !dbg !882
  %19 = load i8, i8* %attr10, align 1, !dbg !883
  %conv15 = zext i8 %19 to i32, !dbg !883
  %and16 = and i32 %conv15, 1, !dbg !885
  %tobool17 = icmp ne i32 %and16, 0, !dbg !885
  br i1 %tobool17, label %if.then, label %if.end, !dbg !886

if.then:                                          ; preds = %entry
  br label %return, !dbg !887

if.end:                                           ; preds = %entry
  %20 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !888
  %vgabase18 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %20, i32 0, i32 0, !dbg !889
  %21 = load i8*, i8** %vgabase18, align 8, !dbg !889
  %call19 = call zeroext i8 @vga_rgfx(i8* %21, i8 zeroext 4) #6, !dbg !890
  store i8 %call19, i8* %gr4, align 1, !dbg !891
  %22 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !892
  %vgabase20 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %22, i32 0, i32 0, !dbg !893
  %23 = load i8*, i8** %vgabase20, align 8, !dbg !893
  %call21 = call zeroext i8 @vga_rgfx(i8* %23, i8 zeroext 5) #6, !dbg !894
  store i8 %call21, i8* %gr5, align 1, !dbg !895
  %24 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !896
  %vgabase22 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %24, i32 0, i32 0, !dbg !897
  %25 = load i8*, i8** %vgabase22, align 8, !dbg !897
  %call23 = call zeroext i8 @vga_rgfx(i8* %25, i8 zeroext 6) #6, !dbg !898
  store i8 %call23, i8* %gr6, align 1, !dbg !899
  %26 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !900
  %vgabase24 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %26, i32 0, i32 0, !dbg !901
  %27 = load i8*, i8** %vgabase24, align 8, !dbg !901
  %call25 = call zeroext i8 @vga_rseq(i8* %27, i8 zeroext 2) #6, !dbg !902
  store i8 %call25, i8* %seq2, align 1, !dbg !903
  %28 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !904
  %vgabase26 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %28, i32 0, i32 0, !dbg !905
  %29 = load i8*, i8** %vgabase26, align 8, !dbg !905
  %call27 = call zeroext i8 @vga_rseq(i8* %29, i8 zeroext 4) #6, !dbg !906
  store i8 %call27, i8* %seq4, align 1, !dbg !907
  %30 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !908
  %vgabase28 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %30, i32 0, i32 0, !dbg !909
  %31 = load i8*, i8** %vgabase28, align 8, !dbg !909
  %call29 = call zeroext i8 @vga_rseq(i8* %31, i8 zeroext 1) #6, !dbg !910
  store i8 %call29, i8* %seq1, align 1, !dbg !911
  %32 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !912
  %vgabase30 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %32, i32 0, i32 0, !dbg !913
  %33 = load i8*, i8** %vgabase30, align 8, !dbg !913
  call void @vga_wseq(i8* %33, i8 zeroext 0, i8 zeroext 1) #6, !dbg !914
  %34 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !915
  %vgabase31 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %34, i32 0, i32 0, !dbg !916
  %35 = load i8*, i8** %vgabase31, align 8, !dbg !916
  %36 = load i8, i8* %seq1, align 1, !dbg !917
  %conv32 = zext i8 %36 to i32, !dbg !917
  %or = or i32 %conv32, 32, !dbg !918
  %conv33 = trunc i32 %or to i8, !dbg !917
  call void @vga_wseq(i8* %35, i8 zeroext 1, i8 zeroext %conv33) #6, !dbg !919
  %37 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !920
  %vgabase34 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %37, i32 0, i32 0, !dbg !921
  %38 = load i8*, i8** %vgabase34, align 8, !dbg !921
  call void @vga_wseq(i8* %38, i8 zeroext 0, i8 zeroext 3) #6, !dbg !922
  %39 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !923
  %flags = getelementptr inbounds %struct.vgastate, %struct.vgastate* %39, i32 0, i32 3, !dbg !925
  %40 = load i32, i32* %flags, align 4, !dbg !925
  %and35 = and i32 %40, 1, !dbg !926
  %tobool36 = icmp ne i32 %and35, 0, !dbg !926
  br i1 %tobool36, label %if.then37, label %if.end46, !dbg !927

if.then37:                                        ; preds = %if.end
  %41 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !928
  %vgabase38 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %41, i32 0, i32 0, !dbg !930
  %42 = load i8*, i8** %vgabase38, align 8, !dbg !930
  call void @vga_wseq(i8* %42, i8 zeroext 2, i8 zeroext 4) #6, !dbg !931
  %43 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !932
  %vgabase39 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %43, i32 0, i32 0, !dbg !933
  %44 = load i8*, i8** %vgabase39, align 8, !dbg !933
  call void @vga_wseq(i8* %44, i8 zeroext 4, i8 zeroext 6) #6, !dbg !934
  %45 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !935
  %vgabase40 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %45, i32 0, i32 0, !dbg !936
  %46 = load i8*, i8** %vgabase40, align 8, !dbg !936
  call void @vga_wgfx(i8* %46, i8 zeroext 4, i8 zeroext 2) #6, !dbg !937
  %47 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !938
  %vgabase41 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %47, i32 0, i32 0, !dbg !939
  %48 = load i8*, i8** %vgabase41, align 8, !dbg !939
  call void @vga_wgfx(i8* %48, i8 zeroext 5, i8 zeroext 0) #6, !dbg !940
  %49 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !941
  %vgabase42 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %49, i32 0, i32 0, !dbg !942
  %50 = load i8*, i8** %vgabase42, align 8, !dbg !942
  call void @vga_wgfx(i8* %50, i8 zeroext 6, i8 zeroext 5) #6, !dbg !943
  store i32 0, i32* %i, align 4, !dbg !944
  br label %for.cond, !dbg !946

for.cond:                                         ; preds = %for.inc, %if.then37
  %51 = load i32, i32* %i, align 4, !dbg !947
  %cmp = icmp slt i32 %51, 32768, !dbg !949
  br i1 %cmp, label %for.body, label %for.end, !dbg !950

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %fbbase.addr, align 8, !dbg !951
  %53 = load i32, i32* %i, align 4, !dbg !952
  %conv44 = trunc i32 %53 to i16, !dbg !952
  %call45 = call zeroext i8 @vga_r(i8* %52, i16 zeroext %conv44) #6, !dbg !953
  %54 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !954
  %vga_font0 = getelementptr inbounds %struct.regstate, %struct.regstate* %54, i32 0, i32 0, !dbg !955
  %55 = load i8*, i8** %vga_font0, align 8, !dbg !955
  %56 = load i32, i32* %i, align 4, !dbg !956
  %idxprom = sext i32 %56 to i64, !dbg !954
  %arrayidx = getelementptr i8, i8* %55, i64 %idxprom, !dbg !954
  store i8 %call45, i8* %arrayidx, align 1, !dbg !957
  br label %for.inc, !dbg !954

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4, !dbg !958
  %inc = add i32 %57, 1, !dbg !958
  store i32 %inc, i32* %i, align 4, !dbg !958
  br label %for.cond, !dbg !959, !llvm.loop !960

for.end:                                          ; preds = %for.cond
  br label %if.end46, !dbg !962

if.end46:                                         ; preds = %for.end, %if.end
  %58 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !963
  %flags47 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %58, i32 0, i32 3, !dbg !965
  %59 = load i32, i32* %flags47, align 4, !dbg !965
  %and48 = and i32 %59, 2, !dbg !966
  %tobool49 = icmp ne i32 %and48, 0, !dbg !966
  br i1 %tobool49, label %if.then50, label %if.end67, !dbg !967

if.then50:                                        ; preds = %if.end46
  %60 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !968
  %vgabase51 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %60, i32 0, i32 0, !dbg !970
  %61 = load i8*, i8** %vgabase51, align 8, !dbg !970
  call void @vga_wseq(i8* %61, i8 zeroext 2, i8 zeroext 8) #6, !dbg !971
  %62 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !972
  %vgabase52 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %62, i32 0, i32 0, !dbg !973
  %63 = load i8*, i8** %vgabase52, align 8, !dbg !973
  call void @vga_wseq(i8* %63, i8 zeroext 4, i8 zeroext 6) #6, !dbg !974
  %64 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !975
  %vgabase53 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %64, i32 0, i32 0, !dbg !976
  %65 = load i8*, i8** %vgabase53, align 8, !dbg !976
  call void @vga_wgfx(i8* %65, i8 zeroext 4, i8 zeroext 3) #6, !dbg !977
  %66 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !978
  %vgabase54 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %66, i32 0, i32 0, !dbg !979
  %67 = load i8*, i8** %vgabase54, align 8, !dbg !979
  call void @vga_wgfx(i8* %67, i8 zeroext 5, i8 zeroext 0) #6, !dbg !980
  %68 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !981
  %vgabase55 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %68, i32 0, i32 0, !dbg !982
  %69 = load i8*, i8** %vgabase55, align 8, !dbg !982
  call void @vga_wgfx(i8* %69, i8 zeroext 6, i8 zeroext 5) #6, !dbg !983
  store i32 0, i32* %i, align 4, !dbg !984
  br label %for.cond56, !dbg !986

for.cond56:                                       ; preds = %for.inc64, %if.then50
  %70 = load i32, i32* %i, align 4, !dbg !987
  %71 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !989
  %memsize = getelementptr inbounds %struct.vgastate, %struct.vgastate* %71, i32 0, i32 2, !dbg !990
  %72 = load i32, i32* %memsize, align 8, !dbg !990
  %cmp57 = icmp ult i32 %70, %72, !dbg !991
  br i1 %cmp57, label %for.body59, label %for.end66, !dbg !992

for.body59:                                       ; preds = %for.cond56
  %73 = load i8*, i8** %fbbase.addr, align 8, !dbg !993
  %74 = load i32, i32* %i, align 4, !dbg !994
  %conv60 = trunc i32 %74 to i16, !dbg !994
  %call61 = call zeroext i8 @vga_r(i8* %73, i16 zeroext %conv60) #6, !dbg !995
  %75 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !996
  %vga_font1 = getelementptr inbounds %struct.regstate, %struct.regstate* %75, i32 0, i32 1, !dbg !997
  %76 = load i8*, i8** %vga_font1, align 8, !dbg !997
  %77 = load i32, i32* %i, align 4, !dbg !998
  %idxprom62 = sext i32 %77 to i64, !dbg !996
  %arrayidx63 = getelementptr i8, i8* %76, i64 %idxprom62, !dbg !996
  store i8 %call61, i8* %arrayidx63, align 1, !dbg !999
  br label %for.inc64, !dbg !996

for.inc64:                                        ; preds = %for.body59
  %78 = load i32, i32* %i, align 4, !dbg !1000
  %inc65 = add i32 %78, 1, !dbg !1000
  store i32 %inc65, i32* %i, align 4, !dbg !1000
  br label %for.cond56, !dbg !1001, !llvm.loop !1002

for.end66:                                        ; preds = %for.cond56
  br label %if.end67, !dbg !1004

if.end67:                                         ; preds = %for.end66, %if.end46
  %79 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1005
  %flags68 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %79, i32 0, i32 3, !dbg !1007
  %80 = load i32, i32* %flags68, align 4, !dbg !1007
  %and69 = and i32 %80, 4, !dbg !1008
  %tobool70 = icmp ne i32 %and69, 0, !dbg !1008
  br i1 %tobool70, label %if.then71, label %if.end106, !dbg !1009

if.then71:                                        ; preds = %if.end67
  %81 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1010
  %vgabase72 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %81, i32 0, i32 0, !dbg !1012
  %82 = load i8*, i8** %vgabase72, align 8, !dbg !1012
  call void @vga_wseq(i8* %82, i8 zeroext 2, i8 zeroext 1) #6, !dbg !1013
  %83 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1014
  %vgabase73 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %83, i32 0, i32 0, !dbg !1015
  %84 = load i8*, i8** %vgabase73, align 8, !dbg !1015
  call void @vga_wseq(i8* %84, i8 zeroext 4, i8 zeroext 6) #6, !dbg !1016
  %85 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1017
  %vgabase74 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %85, i32 0, i32 0, !dbg !1018
  %86 = load i8*, i8** %vgabase74, align 8, !dbg !1018
  call void @vga_wgfx(i8* %86, i8 zeroext 4, i8 zeroext 0) #6, !dbg !1019
  %87 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1020
  %vgabase75 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %87, i32 0, i32 0, !dbg !1021
  %88 = load i8*, i8** %vgabase75, align 8, !dbg !1021
  call void @vga_wgfx(i8* %88, i8 zeroext 5, i8 zeroext 0) #6, !dbg !1022
  %89 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1023
  %vgabase76 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %89, i32 0, i32 0, !dbg !1024
  %90 = load i8*, i8** %vgabase76, align 8, !dbg !1024
  call void @vga_wgfx(i8* %90, i8 zeroext 6, i8 zeroext 5) #6, !dbg !1025
  store i32 0, i32* %i, align 4, !dbg !1026
  br label %for.cond77, !dbg !1028

for.cond77:                                       ; preds = %for.inc85, %if.then71
  %91 = load i32, i32* %i, align 4, !dbg !1029
  %cmp78 = icmp slt i32 %91, 8192, !dbg !1031
  br i1 %cmp78, label %for.body80, label %for.end87, !dbg !1032

for.body80:                                       ; preds = %for.cond77
  %92 = load i8*, i8** %fbbase.addr, align 8, !dbg !1033
  %93 = load i32, i32* %i, align 4, !dbg !1034
  %conv81 = trunc i32 %93 to i16, !dbg !1034
  %call82 = call zeroext i8 @vga_r(i8* %92, i16 zeroext %conv81) #6, !dbg !1035
  %94 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1036
  %vga_text = getelementptr inbounds %struct.regstate, %struct.regstate* %94, i32 0, i32 2, !dbg !1037
  %95 = load i8*, i8** %vga_text, align 8, !dbg !1037
  %96 = load i32, i32* %i, align 4, !dbg !1038
  %idxprom83 = sext i32 %96 to i64, !dbg !1036
  %arrayidx84 = getelementptr i8, i8* %95, i64 %idxprom83, !dbg !1036
  store i8 %call82, i8* %arrayidx84, align 1, !dbg !1039
  br label %for.inc85, !dbg !1036

for.inc85:                                        ; preds = %for.body80
  %97 = load i32, i32* %i, align 4, !dbg !1040
  %inc86 = add i32 %97, 1, !dbg !1040
  store i32 %inc86, i32* %i, align 4, !dbg !1040
  br label %for.cond77, !dbg !1041, !llvm.loop !1042

for.end87:                                        ; preds = %for.cond77
  %98 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1044
  %vgabase88 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %98, i32 0, i32 0, !dbg !1045
  %99 = load i8*, i8** %vgabase88, align 8, !dbg !1045
  call void @vga_wseq(i8* %99, i8 zeroext 2, i8 zeroext 2) #6, !dbg !1046
  %100 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1047
  %vgabase89 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %100, i32 0, i32 0, !dbg !1048
  %101 = load i8*, i8** %vgabase89, align 8, !dbg !1048
  call void @vga_wseq(i8* %101, i8 zeroext 4, i8 zeroext 6) #6, !dbg !1049
  %102 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1050
  %vgabase90 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %102, i32 0, i32 0, !dbg !1051
  %103 = load i8*, i8** %vgabase90, align 8, !dbg !1051
  call void @vga_wgfx(i8* %103, i8 zeroext 4, i8 zeroext 1) #6, !dbg !1052
  %104 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1053
  %vgabase91 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %104, i32 0, i32 0, !dbg !1054
  %105 = load i8*, i8** %vgabase91, align 8, !dbg !1054
  call void @vga_wgfx(i8* %105, i8 zeroext 5, i8 zeroext 0) #6, !dbg !1055
  %106 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1056
  %vgabase92 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %106, i32 0, i32 0, !dbg !1057
  %107 = load i8*, i8** %vgabase92, align 8, !dbg !1057
  call void @vga_wgfx(i8* %107, i8 zeroext 6, i8 zeroext 5) #6, !dbg !1058
  store i32 0, i32* %i, align 4, !dbg !1059
  br label %for.cond93, !dbg !1061

for.cond93:                                       ; preds = %for.inc103, %for.end87
  %108 = load i32, i32* %i, align 4, !dbg !1062
  %cmp94 = icmp slt i32 %108, 8192, !dbg !1064
  br i1 %cmp94, label %for.body96, label %for.end105, !dbg !1065

for.body96:                                       ; preds = %for.cond93
  %109 = load i8*, i8** %fbbase.addr, align 8, !dbg !1066
  %add.ptr = getelementptr i8, i8* %109, i64 16384, !dbg !1067
  %110 = load i32, i32* %i, align 4, !dbg !1068
  %conv97 = trunc i32 %110 to i16, !dbg !1068
  %call98 = call zeroext i8 @vga_r(i8* %add.ptr, i16 zeroext %conv97) #6, !dbg !1069
  %111 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1070
  %vga_text99 = getelementptr inbounds %struct.regstate, %struct.regstate* %111, i32 0, i32 2, !dbg !1071
  %112 = load i8*, i8** %vga_text99, align 8, !dbg !1071
  %113 = load i32, i32* %i, align 4, !dbg !1072
  %add100 = add i32 8192, %113, !dbg !1073
  %idxprom101 = sext i32 %add100 to i64, !dbg !1070
  %arrayidx102 = getelementptr i8, i8* %112, i64 %idxprom101, !dbg !1070
  store i8 %call98, i8* %arrayidx102, align 1, !dbg !1074
  br label %for.inc103, !dbg !1070

for.inc103:                                       ; preds = %for.body96
  %114 = load i32, i32* %i, align 4, !dbg !1075
  %inc104 = add i32 %114, 1, !dbg !1075
  store i32 %inc104, i32* %i, align 4, !dbg !1075
  br label %for.cond93, !dbg !1076, !llvm.loop !1077

for.end105:                                       ; preds = %for.cond93
  br label %if.end106, !dbg !1079

if.end106:                                        ; preds = %for.end105, %if.end67
  %115 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1080
  %vgabase107 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %115, i32 0, i32 0, !dbg !1081
  %116 = load i8*, i8** %vgabase107, align 8, !dbg !1081
  %117 = load i8, i8* %seq2, align 1, !dbg !1082
  call void @vga_wseq(i8* %116, i8 zeroext 2, i8 zeroext %117) #6, !dbg !1083
  %118 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1084
  %vgabase108 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %118, i32 0, i32 0, !dbg !1085
  %119 = load i8*, i8** %vgabase108, align 8, !dbg !1085
  %120 = load i8, i8* %seq4, align 1, !dbg !1086
  call void @vga_wseq(i8* %119, i8 zeroext 4, i8 zeroext %120) #6, !dbg !1087
  %121 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1088
  %vgabase109 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %121, i32 0, i32 0, !dbg !1089
  %122 = load i8*, i8** %vgabase109, align 8, !dbg !1089
  %123 = load i8, i8* %gr4, align 1, !dbg !1090
  call void @vga_wgfx(i8* %122, i8 zeroext 4, i8 zeroext %123) #6, !dbg !1091
  %124 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1092
  %vgabase110 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %124, i32 0, i32 0, !dbg !1093
  %125 = load i8*, i8** %vgabase110, align 8, !dbg !1093
  %126 = load i8, i8* %gr5, align 1, !dbg !1094
  call void @vga_wgfx(i8* %125, i8 zeroext 5, i8 zeroext %126) #6, !dbg !1095
  %127 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1096
  %vgabase111 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %127, i32 0, i32 0, !dbg !1097
  %128 = load i8*, i8** %vgabase111, align 8, !dbg !1097
  %129 = load i8, i8* %gr6, align 1, !dbg !1098
  call void @vga_wgfx(i8* %128, i8 zeroext 6, i8 zeroext %129) #6, !dbg !1099
  %130 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1100
  %vgabase112 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %130, i32 0, i32 0, !dbg !1101
  %131 = load i8*, i8** %vgabase112, align 8, !dbg !1101
  call void @vga_wseq(i8* %131, i8 zeroext 0, i8 zeroext 1) #6, !dbg !1102
  %132 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1103
  %vgabase113 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %132, i32 0, i32 0, !dbg !1104
  %133 = load i8*, i8** %vgabase113, align 8, !dbg !1104
  %134 = load i8, i8* %seq1, align 1, !dbg !1105
  %conv114 = zext i8 %134 to i32, !dbg !1105
  %and115 = and i32 %conv114, -33, !dbg !1106
  %conv116 = trunc i32 %and115 to i8, !dbg !1105
  call void @vga_wseq(i8* %133, i8 zeroext 1, i8 zeroext %conv116) #6, !dbg !1107
  %135 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1108
  %vgabase117 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %135, i32 0, i32 0, !dbg !1109
  %136 = load i8*, i8** %vgabase117, align 8, !dbg !1109
  call void @vga_wseq(i8* %136, i8 zeroext 0, i8 zeroext 3) #6, !dbg !1110
  %137 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1111
  %vgabase118 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %137, i32 0, i32 0, !dbg !1112
  %138 = load i8*, i8** %vgabase118, align 8, !dbg !1112
  %139 = load i8, i8* %seq1, align 1, !dbg !1113
  call void @vga_wseq(i8* %138, i8 zeroext 1, i8 zeroext %139) #6, !dbg !1114
  br label %return, !dbg !1115

return:                                           ; preds = %if.end106, %if.then
  ret void, !dbg !1115
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @restore_vga(%struct.vgastate* %state) #0 !dbg !1116 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.vgastate*, align 8
  %fbbase = alloca i8*, align 8
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1119
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !1121
  %1 = load i8*, i8** %vidstate, align 8, !dbg !1121
  %cmp = icmp eq i8* %1, null, !dbg !1122
  br i1 %cmp, label %if.then, label %if.end, !dbg !1123

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !1124
  br label %return, !dbg !1124

if.end:                                           ; preds = %entry
  %2 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1125
  %flags = getelementptr inbounds %struct.vgastate, %struct.vgastate* %2, i32 0, i32 3, !dbg !1127
  %3 = load i32, i32* %flags, align 4, !dbg !1127
  %and = and i32 %3, 8, !dbg !1128
  %tobool = icmp ne i32 %and, 0, !dbg !1128
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1129

if.then1:                                         ; preds = %if.end
  %4 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1130
  call void @restore_vga_mode(%struct.vgastate* %4) #6, !dbg !1131
  br label %if.end2, !dbg !1131

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1132
  %flags3 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %5, i32 0, i32 3, !dbg !1134
  %6 = load i32, i32* %flags3, align 4, !dbg !1134
  %and4 = and i32 %6, 7, !dbg !1135
  %tobool5 = icmp ne i32 %and4, 0, !dbg !1135
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !1136

if.then6:                                         ; preds = %if.end2
  call void @llvm.dbg.declare(metadata i8** %fbbase, metadata !1137, metadata !DIExpression()), !dbg !1139
  %7 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1140
  %membase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %7, i32 0, i32 1, !dbg !1141
  %8 = load i64, i64* %membase, align 8, !dbg !1141
  %9 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1142
  %memsize = getelementptr inbounds %struct.vgastate, %struct.vgastate* %9, i32 0, i32 2, !dbg !1143
  %10 = load i32, i32* %memsize, align 8, !dbg !1143
  %conv = zext i32 %10 to i64, !dbg !1142
  %call = call i8* @ioremap(i64 %8, i64 %conv) #6, !dbg !1144
  store i8* %call, i8** %fbbase, align 8, !dbg !1139
  %11 = load i8*, i8** %fbbase, align 8, !dbg !1145
  %tobool7 = icmp ne i8* %11, null, !dbg !1145
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1147

if.then8:                                         ; preds = %if.then6
  %12 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1148
  call void @vga_cleanup(%struct.vgastate* %12) #6, !dbg !1150
  store i32 1, i32* %retval, align 4, !dbg !1151
  br label %return, !dbg !1151

if.end9:                                          ; preds = %if.then6
  %13 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1152
  %14 = load i8*, i8** %fbbase, align 8, !dbg !1153
  call void @restore_vga_text(%struct.vgastate* %13, i8* %14) #6, !dbg !1154
  %15 = load i8*, i8** %fbbase, align 8, !dbg !1155
  call void @iounmap(i8* %15) #6, !dbg !1156
  br label %if.end10, !dbg !1157

if.end10:                                         ; preds = %if.end9, %if.end2
  %16 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1158
  %flags11 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %16, i32 0, i32 3, !dbg !1160
  %17 = load i32, i32* %flags11, align 4, !dbg !1160
  %and12 = and i32 %17, 16, !dbg !1161
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1161
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1162

if.then14:                                        ; preds = %if.end10
  %18 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1163
  call void @restore_vga_cmap(%struct.vgastate* %18) #6, !dbg !1164
  br label %if.end15, !dbg !1164

if.end15:                                         ; preds = %if.then14, %if.end10
  %19 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1165
  call void @vga_cleanup(%struct.vgastate* %19) #6, !dbg !1166
  store i32 0, i32* %retval, align 4, !dbg !1167
  br label %return, !dbg !1167

return:                                           ; preds = %if.end15, %if.then8, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !1168
  ret i32 %20, !dbg !1168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @restore_vga_mode(%struct.vgastate* %state) #0 !dbg !1169 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %saved = alloca %struct.regstate*, align 8
  %iobase = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !1170, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !1172, metadata !DIExpression()), !dbg !1173
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1174
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !1175
  %1 = load i8*, i8** %vidstate, align 8, !dbg !1175
  %2 = bitcast i8* %1 to %struct.regstate*, !dbg !1176
  store %struct.regstate* %2, %struct.regstate** %saved, align 8, !dbg !1173
  call void @llvm.dbg.declare(metadata i16* %iobase, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1179, metadata !DIExpression()), !dbg !1180
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1181
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !1182
  %4 = load i8*, i8** %vgabase, align 8, !dbg !1182
  %5 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1183
  %misc = getelementptr inbounds %struct.regstate, %struct.regstate* %5, i32 0, i32 8, !dbg !1184
  %6 = load i8, i8* %misc, align 8, !dbg !1184
  call void @vga_w(i8* %4, i16 zeroext 962, i8 zeroext %6) #6, !dbg !1185
  %7 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1186
  %misc1 = getelementptr inbounds %struct.regstate, %struct.regstate* %7, i32 0, i32 8, !dbg !1188
  %8 = load i8, i8* %misc1, align 8, !dbg !1188
  %conv = zext i8 %8 to i32, !dbg !1186
  %and = and i32 %conv, 1, !dbg !1189
  %tobool = icmp ne i32 %and, 0, !dbg !1189
  br i1 %tobool, label %if.then, label %if.else, !dbg !1190

if.then:                                          ; preds = %entry
  store i16 976, i16* %iobase, align 2, !dbg !1191
  br label %if.end, !dbg !1192

if.else:                                          ; preds = %entry
  store i16 944, i16* %iobase, align 2, !dbg !1193
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1194
  %vgabase2 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %9, i32 0, i32 0, !dbg !1195
  %10 = load i8*, i8** %vgabase2, align 8, !dbg !1195
  %11 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1196
  %seq = getelementptr inbounds %struct.regstate, %struct.regstate* %11, i32 0, i32 7, !dbg !1197
  %12 = load i8*, i8** %seq, align 8, !dbg !1197
  %arrayidx = getelementptr i8, i8* %12, i64 1, !dbg !1196
  %13 = load i8, i8* %arrayidx, align 1, !dbg !1196
  %conv3 = zext i8 %13 to i32, !dbg !1196
  %or = or i32 %conv3, 32, !dbg !1198
  %conv4 = trunc i32 %or to i8, !dbg !1196
  call void @vga_wseq(i8* %10, i8 zeroext 1, i8 zeroext %conv4) #6, !dbg !1199
  %14 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1200
  %vgabase5 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %14, i32 0, i32 0, !dbg !1201
  %15 = load i8*, i8** %vgabase5, align 8, !dbg !1201
  call void @vga_wseq(i8* %15, i8 zeroext 0, i8 zeroext 1) #6, !dbg !1202
  %16 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1203
  %vgabase6 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %16, i32 0, i32 0, !dbg !1204
  %17 = load i8*, i8** %vgabase6, align 8, !dbg !1204
  %18 = load i16, i16* %iobase, align 2, !dbg !1205
  %conv7 = zext i16 %18 to i32, !dbg !1205
  %add = add i32 %conv7, 10, !dbg !1206
  %conv8 = trunc i32 %add to i16, !dbg !1205
  %call = call zeroext i8 @vga_r(i8* %17, i16 zeroext %conv8) #6, !dbg !1207
  %19 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1208
  %vgabase9 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %19, i32 0, i32 0, !dbg !1209
  %20 = load i8*, i8** %vgabase9, align 8, !dbg !1209
  call void @vga_w(i8* %20, i16 zeroext 960, i8 zeroext 0) #6, !dbg !1210
  store i32 2, i32* %i, align 4, !dbg !1211
  br label %for.cond, !dbg !1213

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !dbg !1214
  %22 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1216
  %num_seq = getelementptr inbounds %struct.vgastate, %struct.vgastate* %22, i32 0, i32 8, !dbg !1217
  %23 = load i32, i32* %num_seq, align 8, !dbg !1217
  %cmp = icmp ult i32 %21, %23, !dbg !1218
  br i1 %cmp, label %for.body, label %for.end, !dbg !1219

for.body:                                         ; preds = %for.cond
  %24 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1220
  %vgabase11 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %24, i32 0, i32 0, !dbg !1221
  %25 = load i8*, i8** %vgabase11, align 8, !dbg !1221
  %26 = load i32, i32* %i, align 4, !dbg !1222
  %conv12 = trunc i32 %26 to i8, !dbg !1222
  %27 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1223
  %seq13 = getelementptr inbounds %struct.regstate, %struct.regstate* %27, i32 0, i32 7, !dbg !1224
  %28 = load i8*, i8** %seq13, align 8, !dbg !1224
  %29 = load i32, i32* %i, align 4, !dbg !1225
  %idxprom = sext i32 %29 to i64, !dbg !1223
  %arrayidx14 = getelementptr i8, i8* %28, i64 %idxprom, !dbg !1223
  %30 = load i8, i8* %arrayidx14, align 1, !dbg !1223
  call void @vga_wseq(i8* %25, i8 zeroext %conv12, i8 zeroext %30) #6, !dbg !1226
  br label %for.inc, !dbg !1226

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !dbg !1227
  %inc = add i32 %31, 1, !dbg !1227
  store i32 %inc, i32* %i, align 4, !dbg !1227
  br label %for.cond, !dbg !1228, !llvm.loop !1229

for.end:                                          ; preds = %for.cond
  %32 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1231
  %vgabase15 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %32, i32 0, i32 0, !dbg !1232
  %33 = load i8*, i8** %vgabase15, align 8, !dbg !1232
  %34 = load i16, i16* %iobase, align 2, !dbg !1233
  %35 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1234
  %crtc = getelementptr inbounds %struct.regstate, %struct.regstate* %35, i32 0, i32 5, !dbg !1235
  %36 = load i8*, i8** %crtc, align 8, !dbg !1235
  %arrayidx16 = getelementptr i8, i8* %36, i64 17, !dbg !1234
  %37 = load i8, i8* %arrayidx16, align 1, !dbg !1234
  %conv17 = zext i8 %37 to i32, !dbg !1234
  %and18 = and i32 %conv17, -129, !dbg !1236
  %conv19 = trunc i32 %and18 to i8, !dbg !1234
  call void @vga_wcrtcs(i8* %33, i16 zeroext %34, i8 zeroext 17, i8 zeroext %conv19) #6, !dbg !1237
  store i32 0, i32* %i, align 4, !dbg !1238
  br label %for.cond20, !dbg !1240

for.cond20:                                       ; preds = %for.inc29, %for.end
  %38 = load i32, i32* %i, align 4, !dbg !1241
  %39 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1243
  %num_crtc = getelementptr inbounds %struct.vgastate, %struct.vgastate* %39, i32 0, i32 6, !dbg !1244
  %40 = load i32, i32* %num_crtc, align 8, !dbg !1244
  %cmp21 = icmp ult i32 %38, %40, !dbg !1245
  br i1 %cmp21, label %for.body23, label %for.end31, !dbg !1246

for.body23:                                       ; preds = %for.cond20
  %41 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1247
  %vgabase24 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %41, i32 0, i32 0, !dbg !1248
  %42 = load i8*, i8** %vgabase24, align 8, !dbg !1248
  %43 = load i16, i16* %iobase, align 2, !dbg !1249
  %44 = load i32, i32* %i, align 4, !dbg !1250
  %conv25 = trunc i32 %44 to i8, !dbg !1250
  %45 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1251
  %crtc26 = getelementptr inbounds %struct.regstate, %struct.regstate* %45, i32 0, i32 5, !dbg !1252
  %46 = load i8*, i8** %crtc26, align 8, !dbg !1252
  %47 = load i32, i32* %i, align 4, !dbg !1253
  %idxprom27 = sext i32 %47 to i64, !dbg !1251
  %arrayidx28 = getelementptr i8, i8* %46, i64 %idxprom27, !dbg !1251
  %48 = load i8, i8* %arrayidx28, align 1, !dbg !1251
  call void @vga_wcrtcs(i8* %42, i16 zeroext %43, i8 zeroext %conv25, i8 zeroext %48) #6, !dbg !1254
  br label %for.inc29, !dbg !1254

for.inc29:                                        ; preds = %for.body23
  %49 = load i32, i32* %i, align 4, !dbg !1255
  %inc30 = add i32 %49, 1, !dbg !1255
  store i32 %inc30, i32* %i, align 4, !dbg !1255
  br label %for.cond20, !dbg !1256, !llvm.loop !1257

for.end31:                                        ; preds = %for.cond20
  store i32 0, i32* %i, align 4, !dbg !1259
  br label %for.cond32, !dbg !1261

for.cond32:                                       ; preds = %for.inc40, %for.end31
  %50 = load i32, i32* %i, align 4, !dbg !1262
  %51 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1264
  %num_gfx = getelementptr inbounds %struct.vgastate, %struct.vgastate* %51, i32 0, i32 7, !dbg !1265
  %52 = load i32, i32* %num_gfx, align 4, !dbg !1265
  %cmp33 = icmp ult i32 %50, %52, !dbg !1266
  br i1 %cmp33, label %for.body35, label %for.end42, !dbg !1267

for.body35:                                       ; preds = %for.cond32
  %53 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1268
  %vgabase36 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %53, i32 0, i32 0, !dbg !1269
  %54 = load i8*, i8** %vgabase36, align 8, !dbg !1269
  %55 = load i32, i32* %i, align 4, !dbg !1270
  %conv37 = trunc i32 %55 to i8, !dbg !1270
  %56 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1271
  %gfx = getelementptr inbounds %struct.regstate, %struct.regstate* %56, i32 0, i32 6, !dbg !1272
  %57 = load i8*, i8** %gfx, align 8, !dbg !1272
  %58 = load i32, i32* %i, align 4, !dbg !1273
  %idxprom38 = sext i32 %58 to i64, !dbg !1271
  %arrayidx39 = getelementptr i8, i8* %57, i64 %idxprom38, !dbg !1271
  %59 = load i8, i8* %arrayidx39, align 1, !dbg !1271
  call void @vga_wgfx(i8* %54, i8 zeroext %conv37, i8 zeroext %59) #6, !dbg !1274
  br label %for.inc40, !dbg !1274

for.inc40:                                        ; preds = %for.body35
  %60 = load i32, i32* %i, align 4, !dbg !1275
  %inc41 = add i32 %60, 1, !dbg !1275
  store i32 %inc41, i32* %i, align 4, !dbg !1275
  br label %for.cond32, !dbg !1276, !llvm.loop !1277

for.end42:                                        ; preds = %for.cond32
  store i32 0, i32* %i, align 4, !dbg !1279
  br label %for.cond43, !dbg !1281

for.cond43:                                       ; preds = %for.inc56, %for.end42
  %61 = load i32, i32* %i, align 4, !dbg !1282
  %62 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1284
  %num_attr = getelementptr inbounds %struct.vgastate, %struct.vgastate* %62, i32 0, i32 5, !dbg !1285
  %63 = load i32, i32* %num_attr, align 4, !dbg !1285
  %cmp44 = icmp ult i32 %61, %63, !dbg !1286
  br i1 %cmp44, label %for.body46, label %for.end58, !dbg !1287

for.body46:                                       ; preds = %for.cond43
  %64 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1288
  %vgabase47 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %64, i32 0, i32 0, !dbg !1290
  %65 = load i8*, i8** %vgabase47, align 8, !dbg !1290
  %66 = load i16, i16* %iobase, align 2, !dbg !1291
  %conv48 = zext i16 %66 to i32, !dbg !1291
  %add49 = add i32 %conv48, 10, !dbg !1292
  %conv50 = trunc i32 %add49 to i16, !dbg !1291
  %call51 = call zeroext i8 @vga_r(i8* %65, i16 zeroext %conv50) #6, !dbg !1293
  %67 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1294
  %vgabase52 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %67, i32 0, i32 0, !dbg !1295
  %68 = load i8*, i8** %vgabase52, align 8, !dbg !1295
  %69 = load i32, i32* %i, align 4, !dbg !1296
  %conv53 = trunc i32 %69 to i8, !dbg !1296
  %70 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1297
  %attr = getelementptr inbounds %struct.regstate, %struct.regstate* %70, i32 0, i32 4, !dbg !1298
  %71 = load i8*, i8** %attr, align 8, !dbg !1298
  %72 = load i32, i32* %i, align 4, !dbg !1299
  %idxprom54 = sext i32 %72 to i64, !dbg !1297
  %arrayidx55 = getelementptr i8, i8* %71, i64 %idxprom54, !dbg !1297
  %73 = load i8, i8* %arrayidx55, align 1, !dbg !1297
  call void @vga_wattr(i8* %68, i8 zeroext %conv53, i8 zeroext %73) #6, !dbg !1300
  br label %for.inc56, !dbg !1301

for.inc56:                                        ; preds = %for.body46
  %74 = load i32, i32* %i, align 4, !dbg !1302
  %inc57 = add i32 %74, 1, !dbg !1302
  store i32 %inc57, i32* %i, align 4, !dbg !1302
  br label %for.cond43, !dbg !1303, !llvm.loop !1304

for.end58:                                        ; preds = %for.cond43
  %75 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1306
  %vgabase59 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %75, i32 0, i32 0, !dbg !1307
  %76 = load i8*, i8** %vgabase59, align 8, !dbg !1307
  call void @vga_wseq(i8* %76, i8 zeroext 0, i8 zeroext 3) #6, !dbg !1308
  %77 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1309
  %vgabase60 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %77, i32 0, i32 0, !dbg !1310
  %78 = load i8*, i8** %vgabase60, align 8, !dbg !1310
  %79 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1311
  %seq61 = getelementptr inbounds %struct.regstate, %struct.regstate* %79, i32 0, i32 7, !dbg !1312
  %80 = load i8*, i8** %seq61, align 8, !dbg !1312
  %arrayidx62 = getelementptr i8, i8* %80, i64 1, !dbg !1311
  %81 = load i8, i8* %arrayidx62, align 1, !dbg !1311
  %conv63 = zext i8 %81 to i32, !dbg !1311
  %and64 = and i32 %conv63, -33, !dbg !1313
  %conv65 = trunc i32 %and64 to i8, !dbg !1311
  call void @vga_wseq(i8* %78, i8 zeroext 1, i8 zeroext %conv65) #6, !dbg !1314
  %82 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1315
  %vgabase66 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %82, i32 0, i32 0, !dbg !1316
  %83 = load i8*, i8** %vgabase66, align 8, !dbg !1316
  %84 = load i16, i16* %iobase, align 2, !dbg !1317
  %conv67 = zext i16 %84 to i32, !dbg !1317
  %add68 = add i32 %conv67, 10, !dbg !1318
  %conv69 = trunc i32 %add68 to i16, !dbg !1317
  %call70 = call zeroext i8 @vga_r(i8* %83, i16 zeroext %conv69) #6, !dbg !1319
  %85 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1320
  %vgabase71 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %85, i32 0, i32 0, !dbg !1321
  %86 = load i8*, i8** %vgabase71, align 8, !dbg !1321
  call void @vga_w(i8* %86, i16 zeroext 960, i8 zeroext 32) #6, !dbg !1322
  ret void, !dbg !1323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @restore_vga_text(%struct.vgastate* %state, i8* %fbbase) #0 !dbg !1324 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %fbbase.addr = alloca i8*, align 8
  %saved = alloca %struct.regstate*, align 8
  %i = alloca i32, align 4
  %gr1 = alloca i8, align 1
  %gr3 = alloca i8, align 1
  %gr4 = alloca i8, align 1
  %gr5 = alloca i8, align 1
  %gr6 = alloca i8, align 1
  %gr8 = alloca i8, align 1
  %seq1 = alloca i8, align 1
  %seq2 = alloca i8, align 1
  %seq4 = alloca i8, align 1
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !1325, metadata !DIExpression()), !dbg !1326
  store i8* %fbbase, i8** %fbbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fbbase.addr, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !1329, metadata !DIExpression()), !dbg !1330
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1331
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !1332
  %1 = load i8*, i8** %vidstate, align 8, !dbg !1332
  %2 = bitcast i8* %1 to %struct.regstate*, !dbg !1333
  store %struct.regstate* %2, %struct.regstate** %saved, align 8, !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1334, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.declare(metadata i8* %gr1, metadata !1336, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.declare(metadata i8* %gr3, metadata !1338, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.declare(metadata i8* %gr4, metadata !1340, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.declare(metadata i8* %gr5, metadata !1342, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.declare(metadata i8* %gr6, metadata !1344, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.declare(metadata i8* %gr8, metadata !1346, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.declare(metadata i8* %seq1, metadata !1348, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.declare(metadata i8* %seq2, metadata !1350, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.declare(metadata i8* %seq4, metadata !1352, metadata !DIExpression()), !dbg !1353
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1354
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !1355
  %4 = load i8*, i8** %vgabase, align 8, !dbg !1355
  %call = call zeroext i8 @vga_rgfx(i8* %4, i8 zeroext 1) #6, !dbg !1356
  store i8 %call, i8* %gr1, align 1, !dbg !1357
  %5 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1358
  %vgabase1 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %5, i32 0, i32 0, !dbg !1359
  %6 = load i8*, i8** %vgabase1, align 8, !dbg !1359
  %call2 = call zeroext i8 @vga_rgfx(i8* %6, i8 zeroext 3) #6, !dbg !1360
  store i8 %call2, i8* %gr3, align 1, !dbg !1361
  %7 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1362
  %vgabase3 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %7, i32 0, i32 0, !dbg !1363
  %8 = load i8*, i8** %vgabase3, align 8, !dbg !1363
  %call4 = call zeroext i8 @vga_rgfx(i8* %8, i8 zeroext 4) #6, !dbg !1364
  store i8 %call4, i8* %gr4, align 1, !dbg !1365
  %9 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1366
  %vgabase5 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %9, i32 0, i32 0, !dbg !1367
  %10 = load i8*, i8** %vgabase5, align 8, !dbg !1367
  %call6 = call zeroext i8 @vga_rgfx(i8* %10, i8 zeroext 5) #6, !dbg !1368
  store i8 %call6, i8* %gr5, align 1, !dbg !1369
  %11 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1370
  %vgabase7 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %11, i32 0, i32 0, !dbg !1371
  %12 = load i8*, i8** %vgabase7, align 8, !dbg !1371
  %call8 = call zeroext i8 @vga_rgfx(i8* %12, i8 zeroext 6) #6, !dbg !1372
  store i8 %call8, i8* %gr6, align 1, !dbg !1373
  %13 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1374
  %vgabase9 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %13, i32 0, i32 0, !dbg !1375
  %14 = load i8*, i8** %vgabase9, align 8, !dbg !1375
  %call10 = call zeroext i8 @vga_rgfx(i8* %14, i8 zeroext 8) #6, !dbg !1376
  store i8 %call10, i8* %gr8, align 1, !dbg !1377
  %15 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1378
  %vgabase11 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %15, i32 0, i32 0, !dbg !1379
  %16 = load i8*, i8** %vgabase11, align 8, !dbg !1379
  %call12 = call zeroext i8 @vga_rseq(i8* %16, i8 zeroext 2) #6, !dbg !1380
  store i8 %call12, i8* %seq2, align 1, !dbg !1381
  %17 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1382
  %vgabase13 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %17, i32 0, i32 0, !dbg !1383
  %18 = load i8*, i8** %vgabase13, align 8, !dbg !1383
  %call14 = call zeroext i8 @vga_rseq(i8* %18, i8 zeroext 4) #6, !dbg !1384
  store i8 %call14, i8* %seq4, align 1, !dbg !1385
  %19 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1386
  %vgabase15 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %19, i32 0, i32 0, !dbg !1387
  %20 = load i8*, i8** %vgabase15, align 8, !dbg !1387
  %call16 = call zeroext i8 @vga_rseq(i8* %20, i8 zeroext 1) #6, !dbg !1388
  store i8 %call16, i8* %seq1, align 1, !dbg !1389
  %21 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1390
  %vgabase17 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %21, i32 0, i32 0, !dbg !1391
  %22 = load i8*, i8** %vgabase17, align 8, !dbg !1391
  call void @vga_wseq(i8* %22, i8 zeroext 0, i8 zeroext 1) #6, !dbg !1392
  %23 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1393
  %vgabase18 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %23, i32 0, i32 0, !dbg !1394
  %24 = load i8*, i8** %vgabase18, align 8, !dbg !1394
  %25 = load i8, i8* %seq1, align 1, !dbg !1395
  %conv = zext i8 %25 to i32, !dbg !1395
  %or = or i32 %conv, 32, !dbg !1396
  %conv19 = trunc i32 %or to i8, !dbg !1395
  call void @vga_wseq(i8* %24, i8 zeroext 1, i8 zeroext %conv19) #6, !dbg !1397
  %26 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1398
  %vgabase20 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %26, i32 0, i32 0, !dbg !1399
  %27 = load i8*, i8** %vgabase20, align 8, !dbg !1399
  call void @vga_wseq(i8* %27, i8 zeroext 0, i8 zeroext 3) #6, !dbg !1400
  %28 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1401
  %depth = getelementptr inbounds %struct.vgastate, %struct.vgastate* %28, i32 0, i32 4, !dbg !1403
  %29 = load i32, i32* %depth, align 8, !dbg !1403
  %cmp = icmp eq i32 %29, 4, !dbg !1404
  br i1 %cmp, label %if.then, label %if.end, !dbg !1405

if.then:                                          ; preds = %entry
  %30 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1406
  %vgabase22 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %30, i32 0, i32 0, !dbg !1408
  %31 = load i8*, i8** %vgabase22, align 8, !dbg !1408
  call void @vga_wgfx(i8* %31, i8 zeroext 3, i8 zeroext 0) #6, !dbg !1409
  %32 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1410
  %vgabase23 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %32, i32 0, i32 0, !dbg !1411
  %33 = load i8*, i8** %vgabase23, align 8, !dbg !1411
  call void @vga_wgfx(i8* %33, i8 zeroext 8, i8 zeroext -1) #6, !dbg !1412
  %34 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1413
  %vgabase24 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %34, i32 0, i32 0, !dbg !1414
  %35 = load i8*, i8** %vgabase24, align 8, !dbg !1414
  call void @vga_wgfx(i8* %35, i8 zeroext 1, i8 zeroext 0) #6, !dbg !1415
  br label %if.end, !dbg !1416

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1417
  %flags = getelementptr inbounds %struct.vgastate, %struct.vgastate* %36, i32 0, i32 3, !dbg !1419
  %37 = load i32, i32* %flags, align 4, !dbg !1419
  %and = and i32 %37, 1, !dbg !1420
  %tobool = icmp ne i32 %and, 0, !dbg !1420
  br i1 %tobool, label %if.then25, label %if.end34, !dbg !1421

if.then25:                                        ; preds = %if.end
  %38 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1422
  %vgabase26 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %38, i32 0, i32 0, !dbg !1424
  %39 = load i8*, i8** %vgabase26, align 8, !dbg !1424
  call void @vga_wseq(i8* %39, i8 zeroext 2, i8 zeroext 4) #6, !dbg !1425
  %40 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1426
  %vgabase27 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %40, i32 0, i32 0, !dbg !1427
  %41 = load i8*, i8** %vgabase27, align 8, !dbg !1427
  call void @vga_wseq(i8* %41, i8 zeroext 4, i8 zeroext 6) #6, !dbg !1428
  %42 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1429
  %vgabase28 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %42, i32 0, i32 0, !dbg !1430
  %43 = load i8*, i8** %vgabase28, align 8, !dbg !1430
  call void @vga_wgfx(i8* %43, i8 zeroext 4, i8 zeroext 2) #6, !dbg !1431
  %44 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1432
  %vgabase29 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %44, i32 0, i32 0, !dbg !1433
  %45 = load i8*, i8** %vgabase29, align 8, !dbg !1433
  call void @vga_wgfx(i8* %45, i8 zeroext 5, i8 zeroext 0) #6, !dbg !1434
  %46 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1435
  %vgabase30 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %46, i32 0, i32 0, !dbg !1436
  %47 = load i8*, i8** %vgabase30, align 8, !dbg !1436
  call void @vga_wgfx(i8* %47, i8 zeroext 6, i8 zeroext 5) #6, !dbg !1437
  store i32 0, i32* %i, align 4, !dbg !1438
  br label %for.cond, !dbg !1440

for.cond:                                         ; preds = %for.inc, %if.then25
  %48 = load i32, i32* %i, align 4, !dbg !1441
  %cmp31 = icmp slt i32 %48, 32768, !dbg !1443
  br i1 %cmp31, label %for.body, label %for.end, !dbg !1444

for.body:                                         ; preds = %for.cond
  %49 = load i8*, i8** %fbbase.addr, align 8, !dbg !1445
  %50 = load i32, i32* %i, align 4, !dbg !1446
  %conv33 = trunc i32 %50 to i16, !dbg !1446
  %51 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1447
  %vga_font0 = getelementptr inbounds %struct.regstate, %struct.regstate* %51, i32 0, i32 0, !dbg !1448
  %52 = load i8*, i8** %vga_font0, align 8, !dbg !1448
  %53 = load i32, i32* %i, align 4, !dbg !1449
  %idxprom = sext i32 %53 to i64, !dbg !1447
  %arrayidx = getelementptr i8, i8* %52, i64 %idxprom, !dbg !1447
  %54 = load i8, i8* %arrayidx, align 1, !dbg !1447
  call void @vga_w(i8* %49, i16 zeroext %conv33, i8 zeroext %54) #6, !dbg !1450
  br label %for.inc, !dbg !1450

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4, !dbg !1451
  %inc = add i32 %55, 1, !dbg !1451
  store i32 %inc, i32* %i, align 4, !dbg !1451
  br label %for.cond, !dbg !1452, !llvm.loop !1453

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !1455

if.end34:                                         ; preds = %for.end, %if.end
  %56 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1456
  %flags35 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %56, i32 0, i32 3, !dbg !1458
  %57 = load i32, i32* %flags35, align 4, !dbg !1458
  %and36 = and i32 %57, 2, !dbg !1459
  %tobool37 = icmp ne i32 %and36, 0, !dbg !1459
  br i1 %tobool37, label %if.then38, label %if.end54, !dbg !1460

if.then38:                                        ; preds = %if.end34
  %58 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1461
  %vgabase39 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %58, i32 0, i32 0, !dbg !1463
  %59 = load i8*, i8** %vgabase39, align 8, !dbg !1463
  call void @vga_wseq(i8* %59, i8 zeroext 2, i8 zeroext 8) #6, !dbg !1464
  %60 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1465
  %vgabase40 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %60, i32 0, i32 0, !dbg !1466
  %61 = load i8*, i8** %vgabase40, align 8, !dbg !1466
  call void @vga_wseq(i8* %61, i8 zeroext 4, i8 zeroext 6) #6, !dbg !1467
  %62 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1468
  %vgabase41 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %62, i32 0, i32 0, !dbg !1469
  %63 = load i8*, i8** %vgabase41, align 8, !dbg !1469
  call void @vga_wgfx(i8* %63, i8 zeroext 4, i8 zeroext 3) #6, !dbg !1470
  %64 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1471
  %vgabase42 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %64, i32 0, i32 0, !dbg !1472
  %65 = load i8*, i8** %vgabase42, align 8, !dbg !1472
  call void @vga_wgfx(i8* %65, i8 zeroext 5, i8 zeroext 0) #6, !dbg !1473
  %66 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1474
  %vgabase43 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %66, i32 0, i32 0, !dbg !1475
  %67 = load i8*, i8** %vgabase43, align 8, !dbg !1475
  call void @vga_wgfx(i8* %67, i8 zeroext 6, i8 zeroext 5) #6, !dbg !1476
  store i32 0, i32* %i, align 4, !dbg !1477
  br label %for.cond44, !dbg !1479

for.cond44:                                       ; preds = %for.inc51, %if.then38
  %68 = load i32, i32* %i, align 4, !dbg !1480
  %69 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1482
  %memsize = getelementptr inbounds %struct.vgastate, %struct.vgastate* %69, i32 0, i32 2, !dbg !1483
  %70 = load i32, i32* %memsize, align 8, !dbg !1483
  %cmp45 = icmp ult i32 %68, %70, !dbg !1484
  br i1 %cmp45, label %for.body47, label %for.end53, !dbg !1485

for.body47:                                       ; preds = %for.cond44
  %71 = load i8*, i8** %fbbase.addr, align 8, !dbg !1486
  %72 = load i32, i32* %i, align 4, !dbg !1487
  %conv48 = trunc i32 %72 to i16, !dbg !1487
  %73 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1488
  %vga_font1 = getelementptr inbounds %struct.regstate, %struct.regstate* %73, i32 0, i32 1, !dbg !1489
  %74 = load i8*, i8** %vga_font1, align 8, !dbg !1489
  %75 = load i32, i32* %i, align 4, !dbg !1490
  %idxprom49 = sext i32 %75 to i64, !dbg !1488
  %arrayidx50 = getelementptr i8, i8* %74, i64 %idxprom49, !dbg !1488
  %76 = load i8, i8* %arrayidx50, align 1, !dbg !1488
  call void @vga_w(i8* %71, i16 zeroext %conv48, i8 zeroext %76) #6, !dbg !1491
  br label %for.inc51, !dbg !1491

for.inc51:                                        ; preds = %for.body47
  %77 = load i32, i32* %i, align 4, !dbg !1492
  %inc52 = add i32 %77, 1, !dbg !1492
  store i32 %inc52, i32* %i, align 4, !dbg !1492
  br label %for.cond44, !dbg !1493, !llvm.loop !1494

for.end53:                                        ; preds = %for.cond44
  br label %if.end54, !dbg !1496

if.end54:                                         ; preds = %for.end53, %if.end34
  %78 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1497
  %flags55 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %78, i32 0, i32 3, !dbg !1499
  %79 = load i32, i32* %flags55, align 4, !dbg !1499
  %and56 = and i32 %79, 4, !dbg !1500
  %tobool57 = icmp ne i32 %and56, 0, !dbg !1500
  br i1 %tobool57, label %if.then58, label %if.end90, !dbg !1501

if.then58:                                        ; preds = %if.end54
  %80 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1502
  %vgabase59 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %80, i32 0, i32 0, !dbg !1504
  %81 = load i8*, i8** %vgabase59, align 8, !dbg !1504
  call void @vga_wseq(i8* %81, i8 zeroext 2, i8 zeroext 1) #6, !dbg !1505
  %82 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1506
  %vgabase60 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %82, i32 0, i32 0, !dbg !1507
  %83 = load i8*, i8** %vgabase60, align 8, !dbg !1507
  call void @vga_wseq(i8* %83, i8 zeroext 4, i8 zeroext 6) #6, !dbg !1508
  %84 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1509
  %vgabase61 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %84, i32 0, i32 0, !dbg !1510
  %85 = load i8*, i8** %vgabase61, align 8, !dbg !1510
  call void @vga_wgfx(i8* %85, i8 zeroext 4, i8 zeroext 0) #6, !dbg !1511
  %86 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1512
  %vgabase62 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %86, i32 0, i32 0, !dbg !1513
  %87 = load i8*, i8** %vgabase62, align 8, !dbg !1513
  call void @vga_wgfx(i8* %87, i8 zeroext 5, i8 zeroext 0) #6, !dbg !1514
  %88 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1515
  %vgabase63 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %88, i32 0, i32 0, !dbg !1516
  %89 = load i8*, i8** %vgabase63, align 8, !dbg !1516
  call void @vga_wgfx(i8* %89, i8 zeroext 6, i8 zeroext 5) #6, !dbg !1517
  store i32 0, i32* %i, align 4, !dbg !1518
  br label %for.cond64, !dbg !1520

for.cond64:                                       ; preds = %for.inc71, %if.then58
  %90 = load i32, i32* %i, align 4, !dbg !1521
  %cmp65 = icmp slt i32 %90, 8192, !dbg !1523
  br i1 %cmp65, label %for.body67, label %for.end73, !dbg !1524

for.body67:                                       ; preds = %for.cond64
  %91 = load i8*, i8** %fbbase.addr, align 8, !dbg !1525
  %92 = load i32, i32* %i, align 4, !dbg !1526
  %conv68 = trunc i32 %92 to i16, !dbg !1526
  %93 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1527
  %vga_text = getelementptr inbounds %struct.regstate, %struct.regstate* %93, i32 0, i32 2, !dbg !1528
  %94 = load i8*, i8** %vga_text, align 8, !dbg !1528
  %95 = load i32, i32* %i, align 4, !dbg !1529
  %idxprom69 = sext i32 %95 to i64, !dbg !1527
  %arrayidx70 = getelementptr i8, i8* %94, i64 %idxprom69, !dbg !1527
  %96 = load i8, i8* %arrayidx70, align 1, !dbg !1527
  call void @vga_w(i8* %91, i16 zeroext %conv68, i8 zeroext %96) #6, !dbg !1530
  br label %for.inc71, !dbg !1530

for.inc71:                                        ; preds = %for.body67
  %97 = load i32, i32* %i, align 4, !dbg !1531
  %inc72 = add i32 %97, 1, !dbg !1531
  store i32 %inc72, i32* %i, align 4, !dbg !1531
  br label %for.cond64, !dbg !1532, !llvm.loop !1533

for.end73:                                        ; preds = %for.cond64
  %98 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1535
  %vgabase74 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %98, i32 0, i32 0, !dbg !1536
  %99 = load i8*, i8** %vgabase74, align 8, !dbg !1536
  call void @vga_wseq(i8* %99, i8 zeroext 2, i8 zeroext 2) #6, !dbg !1537
  %100 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1538
  %vgabase75 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %100, i32 0, i32 0, !dbg !1539
  %101 = load i8*, i8** %vgabase75, align 8, !dbg !1539
  call void @vga_wseq(i8* %101, i8 zeroext 4, i8 zeroext 6) #6, !dbg !1540
  %102 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1541
  %vgabase76 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %102, i32 0, i32 0, !dbg !1542
  %103 = load i8*, i8** %vgabase76, align 8, !dbg !1542
  call void @vga_wgfx(i8* %103, i8 zeroext 4, i8 zeroext 1) #6, !dbg !1543
  %104 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1544
  %vgabase77 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %104, i32 0, i32 0, !dbg !1545
  %105 = load i8*, i8** %vgabase77, align 8, !dbg !1545
  call void @vga_wgfx(i8* %105, i8 zeroext 5, i8 zeroext 0) #6, !dbg !1546
  %106 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1547
  %vgabase78 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %106, i32 0, i32 0, !dbg !1548
  %107 = load i8*, i8** %vgabase78, align 8, !dbg !1548
  call void @vga_wgfx(i8* %107, i8 zeroext 6, i8 zeroext 5) #6, !dbg !1549
  store i32 0, i32* %i, align 4, !dbg !1550
  br label %for.cond79, !dbg !1552

for.cond79:                                       ; preds = %for.inc87, %for.end73
  %108 = load i32, i32* %i, align 4, !dbg !1553
  %cmp80 = icmp slt i32 %108, 8192, !dbg !1555
  br i1 %cmp80, label %for.body82, label %for.end89, !dbg !1556

for.body82:                                       ; preds = %for.cond79
  %109 = load i8*, i8** %fbbase.addr, align 8, !dbg !1557
  %110 = load i32, i32* %i, align 4, !dbg !1558
  %conv83 = trunc i32 %110 to i16, !dbg !1558
  %111 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1559
  %vga_text84 = getelementptr inbounds %struct.regstate, %struct.regstate* %111, i32 0, i32 2, !dbg !1560
  %112 = load i8*, i8** %vga_text84, align 8, !dbg !1560
  %113 = load i32, i32* %i, align 4, !dbg !1561
  %add = add i32 8192, %113, !dbg !1562
  %idxprom85 = sext i32 %add to i64, !dbg !1559
  %arrayidx86 = getelementptr i8, i8* %112, i64 %idxprom85, !dbg !1559
  %114 = load i8, i8* %arrayidx86, align 1, !dbg !1559
  call void @vga_w(i8* %109, i16 zeroext %conv83, i8 zeroext %114) #6, !dbg !1563
  br label %for.inc87, !dbg !1563

for.inc87:                                        ; preds = %for.body82
  %115 = load i32, i32* %i, align 4, !dbg !1564
  %inc88 = add i32 %115, 1, !dbg !1564
  store i32 %inc88, i32* %i, align 4, !dbg !1564
  br label %for.cond79, !dbg !1565, !llvm.loop !1566

for.end89:                                        ; preds = %for.cond79
  br label %if.end90, !dbg !1568

if.end90:                                         ; preds = %for.end89, %if.end54
  %116 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1569
  %vgabase91 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %116, i32 0, i32 0, !dbg !1570
  %117 = load i8*, i8** %vgabase91, align 8, !dbg !1570
  call void @vga_wseq(i8* %117, i8 zeroext 0, i8 zeroext 1) #6, !dbg !1571
  %118 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1572
  %vgabase92 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %118, i32 0, i32 0, !dbg !1573
  %119 = load i8*, i8** %vgabase92, align 8, !dbg !1573
  %120 = load i8, i8* %seq1, align 1, !dbg !1574
  %conv93 = zext i8 %120 to i32, !dbg !1574
  %and94 = and i32 %conv93, -33, !dbg !1575
  %conv95 = trunc i32 %and94 to i8, !dbg !1574
  call void @vga_wseq(i8* %119, i8 zeroext 1, i8 zeroext %conv95) #6, !dbg !1576
  %121 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1577
  %vgabase96 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %121, i32 0, i32 0, !dbg !1578
  %122 = load i8*, i8** %vgabase96, align 8, !dbg !1578
  call void @vga_wseq(i8* %122, i8 zeroext 0, i8 zeroext 3) #6, !dbg !1579
  %123 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1580
  %vgabase97 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %123, i32 0, i32 0, !dbg !1581
  %124 = load i8*, i8** %vgabase97, align 8, !dbg !1581
  %125 = load i8, i8* %gr1, align 1, !dbg !1582
  call void @vga_wgfx(i8* %124, i8 zeroext 1, i8 zeroext %125) #6, !dbg !1583
  %126 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1584
  %vgabase98 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %126, i32 0, i32 0, !dbg !1585
  %127 = load i8*, i8** %vgabase98, align 8, !dbg !1585
  %128 = load i8, i8* %gr3, align 1, !dbg !1586
  call void @vga_wgfx(i8* %127, i8 zeroext 3, i8 zeroext %128) #6, !dbg !1587
  %129 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1588
  %vgabase99 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %129, i32 0, i32 0, !dbg !1589
  %130 = load i8*, i8** %vgabase99, align 8, !dbg !1589
  %131 = load i8, i8* %gr4, align 1, !dbg !1590
  call void @vga_wgfx(i8* %130, i8 zeroext 4, i8 zeroext %131) #6, !dbg !1591
  %132 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1592
  %vgabase100 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %132, i32 0, i32 0, !dbg !1593
  %133 = load i8*, i8** %vgabase100, align 8, !dbg !1593
  %134 = load i8, i8* %gr5, align 1, !dbg !1594
  call void @vga_wgfx(i8* %133, i8 zeroext 5, i8 zeroext %134) #6, !dbg !1595
  %135 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1596
  %vgabase101 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %135, i32 0, i32 0, !dbg !1597
  %136 = load i8*, i8** %vgabase101, align 8, !dbg !1597
  %137 = load i8, i8* %gr6, align 1, !dbg !1598
  call void @vga_wgfx(i8* %136, i8 zeroext 6, i8 zeroext %137) #6, !dbg !1599
  %138 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1600
  %vgabase102 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %138, i32 0, i32 0, !dbg !1601
  %139 = load i8*, i8** %vgabase102, align 8, !dbg !1601
  %140 = load i8, i8* %gr8, align 1, !dbg !1602
  call void @vga_wgfx(i8* %139, i8 zeroext 8, i8 zeroext %140) #6, !dbg !1603
  %141 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1604
  %vgabase103 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %141, i32 0, i32 0, !dbg !1605
  %142 = load i8*, i8** %vgabase103, align 8, !dbg !1605
  %143 = load i8, i8* %seq1, align 1, !dbg !1606
  call void @vga_wseq(i8* %142, i8 zeroext 1, i8 zeroext %143) #6, !dbg !1607
  %144 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1608
  %vgabase104 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %144, i32 0, i32 0, !dbg !1609
  %145 = load i8*, i8** %vgabase104, align 8, !dbg !1609
  %146 = load i8, i8* %seq2, align 1, !dbg !1610
  call void @vga_wseq(i8* %145, i8 zeroext 2, i8 zeroext %146) #6, !dbg !1611
  %147 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1612
  %vgabase105 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %147, i32 0, i32 0, !dbg !1613
  %148 = load i8*, i8** %vgabase105, align 8, !dbg !1613
  %149 = load i8, i8* %seq4, align 1, !dbg !1614
  call void @vga_wseq(i8* %148, i8 zeroext 4, i8 zeroext %149) #6, !dbg !1615
  ret void, !dbg !1616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @restore_vga_cmap(%struct.vgastate* %state) #0 !dbg !1617 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %saved = alloca %struct.regstate*, align 8
  %i = alloca i32, align 4
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !1618, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.declare(metadata %struct.regstate** %saved, metadata !1620, metadata !DIExpression()), !dbg !1621
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1622
  %vidstate = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 9, !dbg !1623
  %1 = load i8*, i8** %vidstate, align 8, !dbg !1623
  %2 = bitcast i8* %1 to %struct.regstate*, !dbg !1624
  store %struct.regstate* %2, %struct.regstate** %saved, align 8, !dbg !1621
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1625, metadata !DIExpression()), !dbg !1626
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1627
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !1628
  %4 = load i8*, i8** %vgabase, align 8, !dbg !1628
  call void @vga_w(i8* %4, i16 zeroext 966, i8 zeroext -1) #6, !dbg !1629
  %5 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1630
  %vgabase1 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %5, i32 0, i32 0, !dbg !1631
  %6 = load i8*, i8** %vgabase1, align 8, !dbg !1631
  call void @vga_w(i8* %6, i16 zeroext 968, i8 zeroext 0) #6, !dbg !1632
  store i32 0, i32* %i, align 4, !dbg !1633
  br label %for.cond, !dbg !1635

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !1636
  %cmp = icmp slt i32 %7, 768, !dbg !1638
  br i1 %cmp, label %for.body, label %for.end, !dbg !1639

for.body:                                         ; preds = %for.cond
  %8 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !1640
  %vgabase2 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %8, i32 0, i32 0, !dbg !1641
  %9 = load i8*, i8** %vgabase2, align 8, !dbg !1641
  %10 = load %struct.regstate*, %struct.regstate** %saved, align 8, !dbg !1642
  %vga_cmap = getelementptr inbounds %struct.regstate, %struct.regstate* %10, i32 0, i32 3, !dbg !1643
  %11 = load i8*, i8** %vga_cmap, align 8, !dbg !1643
  %12 = load i32, i32* %i, align 4, !dbg !1644
  %idxprom = sext i32 %12 to i64, !dbg !1642
  %arrayidx = getelementptr i8, i8* %11, i64 %idxprom, !dbg !1642
  %13 = load i8, i8* %arrayidx, align 1, !dbg !1642
  call void @vga_w(i8* %9, i16 zeroext 969, i8 zeroext %13) #6, !dbg !1645
  br label %for.inc, !dbg !1645

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !1646
  %inc = add i32 %14, 1, !dbg !1646
  store i32 %inc, i32* %i, align 4, !dbg !1646
  br label %for.cond, !dbg !1647, !llvm.loop !1648

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1650
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1651 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1655, metadata !DIExpression()), !dbg !1662
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1664, metadata !DIExpression()), !dbg !1665
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1666, metadata !DIExpression()), !dbg !1667
  %0 = load i64, i64* %size.addr, align 8, !dbg !1668
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1670
  br i1 %1, label %if.then, label %if.end447, !dbg !1671

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1672
  %tobool = icmp ne i64 %2, 0, !dbg !1672
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1675

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1676
  br label %return, !dbg !1676

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1677
  %cmp = icmp ult i64 %3, 4096, !dbg !1679
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1680

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1681
  br label %return, !dbg !1681

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub = sub i64 %4, 1, !dbg !1682
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1682
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1682

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub4 = sub i64 %6, 1, !dbg !1682
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1682
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1682

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub6 = sub i64 %8, 1, !dbg !1682
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1682
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1682

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1682

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub9 = sub i64 %9, 1, !dbg !1682
  %and = and i64 %sub9, -9223372036854775808, !dbg !1682
  %tobool10 = icmp ne i64 %and, 0, !dbg !1682
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1682

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1682

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub13 = sub i64 %10, 1, !dbg !1682
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1682
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1682
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1682

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1682

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub18 = sub i64 %11, 1, !dbg !1682
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1682
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1682
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1682

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1682

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub23 = sub i64 %12, 1, !dbg !1682
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1682
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1682
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1682

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1682

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub28 = sub i64 %13, 1, !dbg !1682
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1682
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1682
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1682

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1682

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub33 = sub i64 %14, 1, !dbg !1682
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1682
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1682
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1682

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1682

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub38 = sub i64 %15, 1, !dbg !1682
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1682
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1682
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1682

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1682

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub43 = sub i64 %16, 1, !dbg !1682
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1682
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1682
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1682

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1682

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub48 = sub i64 %17, 1, !dbg !1682
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1682
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1682
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1682

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1682

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub53 = sub i64 %18, 1, !dbg !1682
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1682
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1682
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1682

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1682

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub58 = sub i64 %19, 1, !dbg !1682
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1682
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1682
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1682

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1682

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub63 = sub i64 %20, 1, !dbg !1682
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1682
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1682
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1682

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1682

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub68 = sub i64 %21, 1, !dbg !1682
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1682
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1682
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1682

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1682

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub73 = sub i64 %22, 1, !dbg !1682
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1682
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1682
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1682

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1682

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub78 = sub i64 %23, 1, !dbg !1682
  %and79 = and i64 %sub78, 562949953421312, !dbg !1682
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1682
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1682

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1682

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub83 = sub i64 %24, 1, !dbg !1682
  %and84 = and i64 %sub83, 281474976710656, !dbg !1682
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1682
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1682

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1682

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub88 = sub i64 %25, 1, !dbg !1682
  %and89 = and i64 %sub88, 140737488355328, !dbg !1682
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1682
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1682

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1682

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub93 = sub i64 %26, 1, !dbg !1682
  %and94 = and i64 %sub93, 70368744177664, !dbg !1682
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1682
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1682

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1682

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub98 = sub i64 %27, 1, !dbg !1682
  %and99 = and i64 %sub98, 35184372088832, !dbg !1682
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1682
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1682

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1682

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub103 = sub i64 %28, 1, !dbg !1682
  %and104 = and i64 %sub103, 17592186044416, !dbg !1682
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1682
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1682

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1682

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub108 = sub i64 %29, 1, !dbg !1682
  %and109 = and i64 %sub108, 8796093022208, !dbg !1682
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1682
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1682

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1682

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub113 = sub i64 %30, 1, !dbg !1682
  %and114 = and i64 %sub113, 4398046511104, !dbg !1682
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1682
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1682

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1682

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub118 = sub i64 %31, 1, !dbg !1682
  %and119 = and i64 %sub118, 2199023255552, !dbg !1682
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1682
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1682

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1682

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub123 = sub i64 %32, 1, !dbg !1682
  %and124 = and i64 %sub123, 1099511627776, !dbg !1682
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1682
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1682

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1682

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub128 = sub i64 %33, 1, !dbg !1682
  %and129 = and i64 %sub128, 549755813888, !dbg !1682
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1682
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1682

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1682

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub133 = sub i64 %34, 1, !dbg !1682
  %and134 = and i64 %sub133, 274877906944, !dbg !1682
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1682
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1682

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1682

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub138 = sub i64 %35, 1, !dbg !1682
  %and139 = and i64 %sub138, 137438953472, !dbg !1682
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1682
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1682

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1682

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub143 = sub i64 %36, 1, !dbg !1682
  %and144 = and i64 %sub143, 68719476736, !dbg !1682
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1682
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1682

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1682

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub148 = sub i64 %37, 1, !dbg !1682
  %and149 = and i64 %sub148, 34359738368, !dbg !1682
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1682
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1682

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1682

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub153 = sub i64 %38, 1, !dbg !1682
  %and154 = and i64 %sub153, 17179869184, !dbg !1682
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1682
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1682

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1682

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub158 = sub i64 %39, 1, !dbg !1682
  %and159 = and i64 %sub158, 8589934592, !dbg !1682
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1682
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1682

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1682

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub163 = sub i64 %40, 1, !dbg !1682
  %and164 = and i64 %sub163, 4294967296, !dbg !1682
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1682
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1682

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1682

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub168 = sub i64 %41, 1, !dbg !1682
  %and169 = and i64 %sub168, 2147483648, !dbg !1682
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1682
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1682

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1682

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub173 = sub i64 %42, 1, !dbg !1682
  %and174 = and i64 %sub173, 1073741824, !dbg !1682
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1682
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1682

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1682

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub178 = sub i64 %43, 1, !dbg !1682
  %and179 = and i64 %sub178, 536870912, !dbg !1682
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1682
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1682

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1682

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub183 = sub i64 %44, 1, !dbg !1682
  %and184 = and i64 %sub183, 268435456, !dbg !1682
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1682
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1682

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1682

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub188 = sub i64 %45, 1, !dbg !1682
  %and189 = and i64 %sub188, 134217728, !dbg !1682
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1682
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1682

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1682

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub193 = sub i64 %46, 1, !dbg !1682
  %and194 = and i64 %sub193, 67108864, !dbg !1682
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1682
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1682

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1682

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub198 = sub i64 %47, 1, !dbg !1682
  %and199 = and i64 %sub198, 33554432, !dbg !1682
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1682
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1682

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1682

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub203 = sub i64 %48, 1, !dbg !1682
  %and204 = and i64 %sub203, 16777216, !dbg !1682
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1682
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1682

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1682

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub208 = sub i64 %49, 1, !dbg !1682
  %and209 = and i64 %sub208, 8388608, !dbg !1682
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1682
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1682

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1682

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub213 = sub i64 %50, 1, !dbg !1682
  %and214 = and i64 %sub213, 4194304, !dbg !1682
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1682
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1682

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1682

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub218 = sub i64 %51, 1, !dbg !1682
  %and219 = and i64 %sub218, 2097152, !dbg !1682
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1682
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1682

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1682

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub223 = sub i64 %52, 1, !dbg !1682
  %and224 = and i64 %sub223, 1048576, !dbg !1682
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1682
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1682

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1682

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub228 = sub i64 %53, 1, !dbg !1682
  %and229 = and i64 %sub228, 524288, !dbg !1682
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1682
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1682

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1682

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub233 = sub i64 %54, 1, !dbg !1682
  %and234 = and i64 %sub233, 262144, !dbg !1682
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1682
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1682

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1682

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub238 = sub i64 %55, 1, !dbg !1682
  %and239 = and i64 %sub238, 131072, !dbg !1682
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1682
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1682

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1682

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub243 = sub i64 %56, 1, !dbg !1682
  %and244 = and i64 %sub243, 65536, !dbg !1682
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1682
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1682

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1682

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub248 = sub i64 %57, 1, !dbg !1682
  %and249 = and i64 %sub248, 32768, !dbg !1682
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1682
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1682

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1682

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub253 = sub i64 %58, 1, !dbg !1682
  %and254 = and i64 %sub253, 16384, !dbg !1682
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1682
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1682

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1682

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub258 = sub i64 %59, 1, !dbg !1682
  %and259 = and i64 %sub258, 8192, !dbg !1682
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1682
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1682

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1682

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub263 = sub i64 %60, 1, !dbg !1682
  %and264 = and i64 %sub263, 4096, !dbg !1682
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1682
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1682

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1682

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub268 = sub i64 %61, 1, !dbg !1682
  %and269 = and i64 %sub268, 2048, !dbg !1682
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1682
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1682

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1682

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub273 = sub i64 %62, 1, !dbg !1682
  %and274 = and i64 %sub273, 1024, !dbg !1682
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1682
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1682

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1682

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub278 = sub i64 %63, 1, !dbg !1682
  %and279 = and i64 %sub278, 512, !dbg !1682
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1682
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1682

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1682

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub283 = sub i64 %64, 1, !dbg !1682
  %and284 = and i64 %sub283, 256, !dbg !1682
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1682
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1682

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1682

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub288 = sub i64 %65, 1, !dbg !1682
  %and289 = and i64 %sub288, 128, !dbg !1682
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1682
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1682

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1682

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub293 = sub i64 %66, 1, !dbg !1682
  %and294 = and i64 %sub293, 64, !dbg !1682
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1682
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1682

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1682

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub298 = sub i64 %67, 1, !dbg !1682
  %and299 = and i64 %sub298, 32, !dbg !1682
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1682
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1682

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1682

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub303 = sub i64 %68, 1, !dbg !1682
  %and304 = and i64 %sub303, 16, !dbg !1682
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1682
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1682

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1682

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub308 = sub i64 %69, 1, !dbg !1682
  %and309 = and i64 %sub308, 8, !dbg !1682
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1682
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1682

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1682

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub313 = sub i64 %70, 1, !dbg !1682
  %and314 = and i64 %sub313, 4, !dbg !1682
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1682
  %71 = zext i1 %tobool315 to i64, !dbg !1682
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1682
  br label %cond.end, !dbg !1682

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1682
  br label %cond.end317, !dbg !1682

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1682
  br label %cond.end319, !dbg !1682

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1682
  br label %cond.end321, !dbg !1682

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1682
  br label %cond.end323, !dbg !1682

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1682
  br label %cond.end325, !dbg !1682

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1682
  br label %cond.end327, !dbg !1682

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1682
  br label %cond.end329, !dbg !1682

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1682
  br label %cond.end331, !dbg !1682

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1682
  br label %cond.end333, !dbg !1682

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1682
  br label %cond.end335, !dbg !1682

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1682
  br label %cond.end337, !dbg !1682

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1682
  br label %cond.end339, !dbg !1682

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1682
  br label %cond.end341, !dbg !1682

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1682
  br label %cond.end343, !dbg !1682

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1682
  br label %cond.end345, !dbg !1682

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1682
  br label %cond.end347, !dbg !1682

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1682
  br label %cond.end349, !dbg !1682

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1682
  br label %cond.end351, !dbg !1682

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1682
  br label %cond.end353, !dbg !1682

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1682
  br label %cond.end355, !dbg !1682

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1682
  br label %cond.end357, !dbg !1682

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1682
  br label %cond.end359, !dbg !1682

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1682
  br label %cond.end361, !dbg !1682

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1682
  br label %cond.end363, !dbg !1682

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1682
  br label %cond.end365, !dbg !1682

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1682
  br label %cond.end367, !dbg !1682

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1682
  br label %cond.end369, !dbg !1682

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1682
  br label %cond.end371, !dbg !1682

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1682
  br label %cond.end373, !dbg !1682

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1682
  br label %cond.end375, !dbg !1682

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1682
  br label %cond.end377, !dbg !1682

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1682
  br label %cond.end379, !dbg !1682

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1682
  br label %cond.end381, !dbg !1682

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1682
  br label %cond.end383, !dbg !1682

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1682
  br label %cond.end385, !dbg !1682

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1682
  br label %cond.end387, !dbg !1682

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1682
  br label %cond.end389, !dbg !1682

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1682
  br label %cond.end391, !dbg !1682

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1682
  br label %cond.end393, !dbg !1682

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1682
  br label %cond.end395, !dbg !1682

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1682
  br label %cond.end397, !dbg !1682

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1682
  br label %cond.end399, !dbg !1682

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1682
  br label %cond.end401, !dbg !1682

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1682
  br label %cond.end403, !dbg !1682

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1682
  br label %cond.end405, !dbg !1682

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1682
  br label %cond.end407, !dbg !1682

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1682
  br label %cond.end409, !dbg !1682

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1682
  br label %cond.end411, !dbg !1682

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1682
  br label %cond.end413, !dbg !1682

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1682
  br label %cond.end415, !dbg !1682

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1682
  br label %cond.end417, !dbg !1682

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1682
  br label %cond.end419, !dbg !1682

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1682
  br label %cond.end421, !dbg !1682

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1682
  br label %cond.end423, !dbg !1682

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1682
  br label %cond.end425, !dbg !1682

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1682
  br label %cond.end427, !dbg !1682

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1682
  br label %cond.end429, !dbg !1682

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1682
  br label %cond.end431, !dbg !1682

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1682
  br label %cond.end433, !dbg !1682

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1682
  br label %cond.end435, !dbg !1682

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1682
  br label %cond.end437, !dbg !1682

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1682
  br label %cond.end440, !dbg !1682

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1682

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1682
  br label %cond.end444, !dbg !1682

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1682
  %sub443 = sub i64 %72, 1, !dbg !1682
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !1682
  br label %cond.end444, !dbg !1682

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1682
  %sub446 = sub i32 %cond445, 12, !dbg !1683
  %add = add i32 %sub446, 1, !dbg !1684
  store i32 %add, i32* %retval, align 4, !dbg !1685
  br label %return, !dbg !1685

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1686
  %dec = add i64 %73, -1, !dbg !1686
  store i64 %dec, i64* %size.addr, align 8, !dbg !1686
  %74 = load i64, i64* %size.addr, align 8, !dbg !1687
  %shr = lshr i64 %74, 12, !dbg !1687
  store i64 %shr, i64* %size.addr, align 8, !dbg !1687
  %75 = load i64, i64* %size.addr, align 8, !dbg !1688
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1665
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1689
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1690
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !1689, !srcloc !1691
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1689
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1692
  %add.i = add i32 %79, 1, !dbg !1693
  store i32 %add.i, i32* %retval, align 4, !dbg !1694
  br label %return, !dbg !1694

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1695
  ret i32 %80, !dbg !1695
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1696 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1655, metadata !DIExpression()), !dbg !1701
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1664, metadata !DIExpression()), !dbg !1703
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1704, metadata !DIExpression()), !dbg !1705
  %0 = load i64, i64* %n.addr, align 8, !dbg !1706
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1703
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1707
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1708
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !1707, !srcloc !1691
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1707
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1709
  %add.i = add i32 %4, 1, !dbg !1710
  %sub = sub i32 %add.i, 1, !dbg !1711
  ret i32 %sub, !dbg !1712
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1713 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1721, metadata !DIExpression()), !dbg !1722
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1725, metadata !DIExpression()), !dbg !1726
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1727
  ret i8* %0, !dbg !1728
}

; Function Attrs: noredzone
declare dso_local void @vfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_w(i8* %regbase, i16 zeroext %port, i8 zeroext %val) #0 !dbg !1729 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1734, metadata !DIExpression()), !dbg !1735
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1736, metadata !DIExpression()), !dbg !1737
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1738
  %tobool = icmp ne i8* %0, null, !dbg !1738
  br i1 %tobool, label %if.then, label %if.else, !dbg !1740

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !1741
  %2 = load i16, i16* %port.addr, align 2, !dbg !1742
  %3 = load i8, i8* %val.addr, align 1, !dbg !1743
  call void @vga_mm_w(i8* %1, i16 zeroext %2, i8 zeroext %3) #6, !dbg !1744
  br label %if.end, !dbg !1744

if.else:                                          ; preds = %entry
  %4 = load i16, i16* %port.addr, align 2, !dbg !1745
  %5 = load i8, i8* %val.addr, align 1, !dbg !1746
  call void @vga_io_w(i16 zeroext %4, i8 zeroext %5) #6, !dbg !1747
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_r(i8* %regbase, i16 zeroext %port) #0 !dbg !1749 {
entry:
  %retval = alloca i8, align 1
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1752, metadata !DIExpression()), !dbg !1753
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1754, metadata !DIExpression()), !dbg !1755
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1756
  %tobool = icmp ne i8* %0, null, !dbg !1756
  br i1 %tobool, label %if.then, label %if.else, !dbg !1758

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !1759
  %2 = load i16, i16* %port.addr, align 2, !dbg !1760
  %call = call zeroext i8 @vga_mm_r(i8* %1, i16 zeroext %2) #6, !dbg !1761
  store i8 %call, i8* %retval, align 1, !dbg !1762
  br label %return, !dbg !1762

if.else:                                          ; preds = %entry
  %3 = load i16, i16* %port.addr, align 2, !dbg !1763
  %call1 = call zeroext i8 @vga_io_r(i16 zeroext %3) #6, !dbg !1764
  store i8 %call1, i8* %retval, align 1, !dbg !1765
  br label %return, !dbg !1765

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !1766
  ret i8 %4, !dbg !1766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_mm_w(i8* %regbase, i16 zeroext %port, i8 zeroext %val) #0 !dbg !1767 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1768, metadata !DIExpression()), !dbg !1769
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1770, metadata !DIExpression()), !dbg !1771
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1772, metadata !DIExpression()), !dbg !1773
  %0 = load i8, i8* %val.addr, align 1, !dbg !1774
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !1775
  %2 = load i16, i16* %port.addr, align 2, !dbg !1776
  %conv = zext i16 %2 to i32, !dbg !1776
  %idx.ext = sext i32 %conv to i64, !dbg !1777
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1777
  call void @writeb(i8 zeroext %0, i8* %add.ptr) #6, !dbg !1778
  ret void, !dbg !1779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_io_w(i16 zeroext %port, i8 zeroext %val) #0 !dbg !1780 {
entry:
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1785, metadata !DIExpression()), !dbg !1786
  %0 = load i8, i8* %val.addr, align 1, !dbg !1787
  %1 = load i16, i16* %port.addr, align 2, !dbg !1788
  %conv = zext i16 %1 to i32, !dbg !1788
  call void @outb_p(i8 zeroext %0, i32 %conv) #6, !dbg !1789
  ret void, !dbg !1790
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !1791 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1797, metadata !DIExpression()), !dbg !1798
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1799, metadata !DIExpression()), !dbg !1798
  %0 = load i8, i8* %val.addr, align 1, !dbg !1798
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1798
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #7, !dbg !1798, !srcloc !1800
  ret void, !dbg !1798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #0 !dbg !1801 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !1804, metadata !DIExpression()), !dbg !1805
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !1806, metadata !DIExpression()), !dbg !1805
  %0 = load i8, i8* %value.addr, align 1, !dbg !1805
  %1 = load i32, i32* %port.addr, align 4, !dbg !1805
  call void @outb(i8 zeroext %0, i32 %1) #6, !dbg !1805
  call void @slow_down_io() #6, !dbg !1805
  ret void, !dbg !1805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !1807 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !1810, metadata !DIExpression()), !dbg !1809
  %0 = load i8, i8* %value.addr, align 1, !dbg !1809
  %1 = load i32, i32* %port.addr, align 4, !dbg !1809
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #7, !dbg !1809, !srcloc !1811
  ret void, !dbg !1809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #0 !dbg !1812 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !1816
  call void %0() #6, !dbg !1817
  ret void, !dbg !1818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_mm_r(i8* %regbase, i16 zeroext %port) #0 !dbg !1819 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1820, metadata !DIExpression()), !dbg !1821
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1822, metadata !DIExpression()), !dbg !1823
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1824
  %1 = load i16, i16* %port.addr, align 2, !dbg !1825
  %conv = zext i16 %1 to i32, !dbg !1825
  %idx.ext = sext i32 %conv to i64, !dbg !1826
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1826
  %call = call zeroext i8 @readb(i8* %add.ptr) #6, !dbg !1827
  ret i8 %call, !dbg !1828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_io_r(i16 zeroext %port) #0 !dbg !1829 {
entry:
  %port.addr = alloca i16, align 2
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1832, metadata !DIExpression()), !dbg !1833
  %0 = load i16, i16* %port.addr, align 2, !dbg !1834
  %conv = zext i16 %0 to i32, !dbg !1834
  %call = call zeroext i8 @inb_p(i32 %conv) #6, !dbg !1835
  ret i8 %call, !dbg !1836
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !1837 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1842, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !1844, metadata !DIExpression()), !dbg !1843
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1843
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !1843, !srcloc !1845
  store i8 %1, i8* %ret, align 1, !dbg !1843
  %2 = load i8, i8* %ret, align 1, !dbg !1843
  ret i8 %2, !dbg !1843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #0 !dbg !1846 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !1849, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.declare(metadata i8* %value, metadata !1851, metadata !DIExpression()), !dbg !1850
  %0 = load i32, i32* %port.addr, align 4, !dbg !1850
  %call = call zeroext i8 @inb(i32 %0) #6, !dbg !1850
  store i8 %call, i8* %value, align 1, !dbg !1850
  call void @slow_down_io() #6, !dbg !1850
  %1 = load i8, i8* %value, align 1, !dbg !1850
  ret i8 %1, !dbg !1850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !1852 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !1853, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.declare(metadata i8* %value, metadata !1855, metadata !DIExpression()), !dbg !1854
  %0 = load i32, i32* %port.addr, align 4, !dbg !1854
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !1854, !srcloc !1856
  store i8 %1, i8* %value, align 1, !dbg !1854
  %2 = load i8, i8* %value, align 1, !dbg !1854
  ret i8 %2, !dbg !1854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rcrtcs(i8* %regbase, i16 zeroext %iobase, i8 zeroext %reg) #0 !dbg !1857 {
entry:
  %regbase.addr = alloca i8*, align 8
  %iobase.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i16 %iobase, i16* %iobase.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %iobase.addr, metadata !1862, metadata !DIExpression()), !dbg !1863
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1864, metadata !DIExpression()), !dbg !1865
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1866
  %1 = load i16, i16* %iobase.addr, align 2, !dbg !1867
  %conv = zext i16 %1 to i32, !dbg !1867
  %add = add i32 %conv, 4, !dbg !1868
  %conv1 = trunc i32 %add to i16, !dbg !1867
  %2 = load i8, i8* %reg.addr, align 1, !dbg !1869
  call void @vga_w(i8* %0, i16 zeroext %conv1, i8 zeroext %2) #6, !dbg !1870
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !1871
  %4 = load i16, i16* %iobase.addr, align 2, !dbg !1872
  %conv2 = zext i16 %4 to i32, !dbg !1872
  %add3 = add i32 %conv2, 5, !dbg !1873
  %conv4 = trunc i32 %add3 to i16, !dbg !1872
  %call = call zeroext i8 @vga_r(i8* %3, i16 zeroext %conv4) #6, !dbg !1874
  ret i8 %call, !dbg !1875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rattr(i8* %regbase, i8 zeroext %reg) #0 !dbg !1876 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1879, metadata !DIExpression()), !dbg !1880
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1881, metadata !DIExpression()), !dbg !1882
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1883
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1884
  call void @vga_w(i8* %0, i16 zeroext 960, i8 zeroext %1) #6, !dbg !1885
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !1886
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 961) #6, !dbg !1887
  ret i8 %call, !dbg !1888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rgfx(i8* %regbase, i8 zeroext %reg) #0 !dbg !1889 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1892, metadata !DIExpression()), !dbg !1893
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1894
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1895
  call void @vga_w(i8* %0, i16 zeroext 974, i8 zeroext %1) #6, !dbg !1896
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !1897
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 975) #6, !dbg !1898
  ret i8 %call, !dbg !1899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rseq(i8* %regbase, i8 zeroext %reg) #0 !dbg !1900 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1903, metadata !DIExpression()), !dbg !1904
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1905
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1906
  call void @vga_w(i8* %0, i16 zeroext 964, i8 zeroext %1) #6, !dbg !1907
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !1908
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 965) #6, !dbg !1909
  ret i8 %call, !dbg !1910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wseq(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !1911 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1914, metadata !DIExpression()), !dbg !1915
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1916, metadata !DIExpression()), !dbg !1917
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1918, metadata !DIExpression()), !dbg !1919
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1920
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1921
  %2 = load i8, i8* %val.addr, align 1, !dbg !1922
  call void @vga_w_fast(i8* %0, i16 zeroext 964, i8 zeroext %1, i8 zeroext %2) #6, !dbg !1923
  ret void, !dbg !1924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wgfx(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !1925 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1926, metadata !DIExpression()), !dbg !1927
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1930, metadata !DIExpression()), !dbg !1931
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1932
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1933
  %2 = load i8, i8* %val.addr, align 1, !dbg !1934
  call void @vga_w_fast(i8* %0, i16 zeroext 974, i8 zeroext %1, i8 zeroext %2) #6, !dbg !1935
  ret void, !dbg !1936
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_w_fast(i8* %regbase, i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !1937 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1944, metadata !DIExpression()), !dbg !1945
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1946, metadata !DIExpression()), !dbg !1947
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !1948
  %tobool = icmp ne i8* %0, null, !dbg !1948
  br i1 %tobool, label %if.then, label %if.else, !dbg !1950

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !1951
  %2 = load i16, i16* %port.addr, align 2, !dbg !1952
  %3 = load i8, i8* %reg.addr, align 1, !dbg !1953
  %4 = load i8, i8* %val.addr, align 1, !dbg !1954
  call void @vga_mm_w_fast(i8* %1, i16 zeroext %2, i8 zeroext %3, i8 zeroext %4) #6, !dbg !1955
  br label %if.end, !dbg !1955

if.else:                                          ; preds = %entry
  %5 = load i16, i16* %port.addr, align 2, !dbg !1956
  %6 = load i8, i8* %reg.addr, align 1, !dbg !1957
  %7 = load i8, i8* %val.addr, align 1, !dbg !1958
  call void @vga_io_w_fast(i16 zeroext %5, i8 zeroext %6, i8 zeroext %7) #6, !dbg !1959
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_mm_w_fast(i8* %regbase, i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !1961 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !1962, metadata !DIExpression()), !dbg !1963
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1964, metadata !DIExpression()), !dbg !1965
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1966, metadata !DIExpression()), !dbg !1967
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1968, metadata !DIExpression()), !dbg !1969
  %0 = load i8, i8* %val.addr, align 1, !dbg !1970
  %conv = zext i8 %0 to i32, !dbg !1970
  %shl = shl i32 %conv, 8, !dbg !1970
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1970
  %conv1 = zext i8 %1 to i32, !dbg !1970
  %or = or i32 %shl, %conv1, !dbg !1970
  %conv2 = trunc i32 %or to i16, !dbg !1970
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !1971
  %3 = load i16, i16* %port.addr, align 2, !dbg !1972
  %conv3 = zext i16 %3 to i32, !dbg !1972
  %idx.ext = sext i32 %conv3 to i64, !dbg !1973
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !1973
  call void @writew(i16 zeroext %conv2, i8* %add.ptr) #6, !dbg !1974
  ret void, !dbg !1975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_io_w_fast(i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !1976 {
entry:
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !1979, metadata !DIExpression()), !dbg !1980
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !1981, metadata !DIExpression()), !dbg !1982
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !1983, metadata !DIExpression()), !dbg !1984
  %0 = load i8, i8* %val.addr, align 1, !dbg !1985
  %conv = zext i8 %0 to i32, !dbg !1985
  %shl = shl i32 %conv, 8, !dbg !1985
  %1 = load i8, i8* %reg.addr, align 1, !dbg !1985
  %conv1 = zext i8 %1 to i32, !dbg !1985
  %or = or i32 %shl, %conv1, !dbg !1985
  %conv2 = trunc i32 %or to i16, !dbg !1985
  %2 = load i16, i16* %port.addr, align 2, !dbg !1986
  %conv3 = zext i16 %2 to i32, !dbg !1986
  call void @outw(i16 zeroext %conv2, i32 %conv3) #6, !dbg !1987
  ret void, !dbg !1988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #0 !dbg !1989 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1994, metadata !DIExpression()), !dbg !1993
  %0 = load i16, i16* %val.addr, align 2, !dbg !1993
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1993
  %2 = bitcast i8* %1 to i16*, !dbg !1993
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #7, !dbg !1993, !srcloc !1995
  ret void, !dbg !1993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #0 !dbg !1996 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !1999, metadata !DIExpression()), !dbg !2000
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !2001, metadata !DIExpression()), !dbg !2000
  %0 = load i16, i16* %value.addr, align 2, !dbg !2000
  %1 = load i32, i32* %port.addr, align 4, !dbg !2000
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #7, !dbg !2000, !srcloc !2002
  ret void, !dbg !2000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wcrtcs(i8* %regbase, i16 zeroext %iobase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !2003 {
entry:
  %regbase.addr = alloca i8*, align 8
  %iobase.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !2004, metadata !DIExpression()), !dbg !2005
  store i16 %iobase, i16* %iobase.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %iobase.addr, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !2010, metadata !DIExpression()), !dbg !2011
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !2012
  %1 = load i16, i16* %iobase.addr, align 2, !dbg !2013
  %conv = zext i16 %1 to i32, !dbg !2013
  %add = add i32 %conv, 4, !dbg !2014
  %conv1 = trunc i32 %add to i16, !dbg !2013
  %2 = load i8, i8* %reg.addr, align 1, !dbg !2015
  call void @vga_w(i8* %0, i16 zeroext %conv1, i8 zeroext %2) #6, !dbg !2016
  %3 = load i8*, i8** %regbase.addr, align 8, !dbg !2017
  %4 = load i16, i16* %iobase.addr, align 2, !dbg !2018
  %conv2 = zext i16 %4 to i32, !dbg !2018
  %add3 = add i32 %conv2, 5, !dbg !2019
  %conv4 = trunc i32 %add3 to i16, !dbg !2018
  %5 = load i8, i8* %val.addr, align 1, !dbg !2020
  call void @vga_w(i8* %3, i16 zeroext %conv4, i8 zeroext %5) #6, !dbg !2021
  ret void, !dbg !2022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wattr(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !2023 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !2026, metadata !DIExpression()), !dbg !2027
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !2028, metadata !DIExpression()), !dbg !2029
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !2030
  %1 = load i8, i8* %reg.addr, align 1, !dbg !2031
  call void @vga_w(i8* %0, i16 zeroext 960, i8 zeroext %1) #6, !dbg !2032
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !2033
  %3 = load i8, i8* %val.addr, align 1, !dbg !2034
  call void @vga_w(i8* %2, i16 zeroext 960, i8 zeroext %3) #6, !dbg !2035
  ret void, !dbg !2036
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author239", scope: !2, file: !3, line: 487, type: !56, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/vgastate.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !16, !17, !33, !35}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !15, line: 148, baseType: !7)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regstate", file: !3, line: 22, size: 576, elements: !19)
!19 = !{!20, !25, !26, !27, !28, !29, !30, !31, !32}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "vga_font0", scope: !18, file: !3, line: 23, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "vga_font1", scope: !18, file: !3, line: 24, baseType: !21, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "vga_text", scope: !18, file: !3, line: 25, baseType: !21, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "vga_cmap", scope: !18, file: !3, line: 26, baseType: !21, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !18, file: !3, line: 27, baseType: !21, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !18, file: !3, line: 28, baseType: !21, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "gfx", scope: !18, file: !3, line: 29, baseType: !21, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !18, file: !3, line: 30, baseType: !21, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !18, file: !3, line: 31, baseType: !22, size: 8, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !{!0, !39, !46, !51}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description240", scope: !2, file: !3, line: 488, type: !41, isLocal: true, isDefinition: true, align: 8)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 352, elements: !44)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !{!45}
!45 = !DISubrange(count: 44)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file241", scope: !2, file: !3, line: 489, type: !48, isLocal: true, isDefinition: true, align: 8)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 296, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 37)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license242", scope: !2, file: !3, line: 489, type: !53, isLocal: true, isDefinition: true, align: 8)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 21)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 432, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 54)
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"Code Model", i32 2}
!63 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!64 = distinct !DISubprogram(name: "save_vga", scope: !3, file: !3, line: 350, type: !65, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !84)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !68}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vgastate", file: !70, line: 182, size: 448, elements: !71)
!70 = !DIFile(filename: "./include/video/vga.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !75, !77, !78, !79, !80, !81, !82, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "vgabase", scope: !69, file: !70, line: 183, baseType: !16, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !69, file: !70, line: 184, baseType: !74, size: 64, offset: 64)
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !69, file: !70, line: 185, baseType: !76, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !70, line: 186, baseType: !76, size: 32, offset: 160)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !69, file: !70, line: 187, baseType: !76, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "num_attr", scope: !69, file: !70, line: 188, baseType: !76, size: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !69, file: !70, line: 189, baseType: !76, size: 32, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "num_gfx", scope: !69, file: !70, line: 190, baseType: !76, size: 32, offset: 288)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "num_seq", scope: !69, file: !70, line: 191, baseType: !76, size: 32, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "vidstate", scope: !69, file: !70, line: 192, baseType: !16, size: 64, offset: 384)
!84 = !{}
!85 = !DILocalVariable(name: "state", arg: 1, scope: !64, file: !3, line: 350, type: !68)
!86 = !DILocation(line: 350, column: 31, scope: !64)
!87 = !DILocalVariable(name: "saved", scope: !64, file: !3, line: 352, type: !17)
!88 = !DILocation(line: 352, column: 19, scope: !64)
!89 = !DILocation(line: 354, column: 10, scope: !64)
!90 = !DILocation(line: 354, column: 8, scope: !64)
!91 = !DILocation(line: 356, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !64, file: !3, line: 356, column: 6)
!93 = !DILocation(line: 356, column: 12, scope: !92)
!94 = !DILocation(line: 356, column: 6, scope: !64)
!95 = !DILocation(line: 357, column: 3, scope: !92)
!96 = !DILocation(line: 359, column: 28, scope: !64)
!97 = !DILocation(line: 359, column: 20, scope: !64)
!98 = !DILocation(line: 359, column: 2, scope: !64)
!99 = !DILocation(line: 359, column: 9, scope: !64)
!100 = !DILocation(line: 359, column: 18, scope: !64)
!101 = !DILocation(line: 361, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !64, file: !3, line: 361, column: 6)
!103 = !DILocation(line: 361, column: 13, scope: !102)
!104 = !DILocation(line: 361, column: 19, scope: !102)
!105 = !DILocation(line: 361, column: 6, scope: !64)
!106 = !DILocation(line: 362, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !3, line: 361, column: 36)
!108 = !DILocation(line: 362, column: 3, scope: !107)
!109 = !DILocation(line: 362, column: 10, scope: !107)
!110 = !DILocation(line: 362, column: 19, scope: !107)
!111 = !DILocation(line: 363, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 363, column: 7)
!113 = !DILocation(line: 363, column: 15, scope: !112)
!114 = !DILocation(line: 363, column: 7, scope: !107)
!115 = !DILocation(line: 364, column: 16, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !3, line: 363, column: 25)
!117 = !DILocation(line: 364, column: 4, scope: !116)
!118 = !DILocation(line: 365, column: 4, scope: !116)
!119 = !DILocation(line: 367, column: 17, scope: !107)
!120 = !DILocation(line: 367, column: 3, scope: !107)
!121 = !DILocation(line: 368, column: 2, scope: !107)
!122 = !DILocation(line: 370, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !64, file: !3, line: 370, column: 6)
!124 = !DILocation(line: 370, column: 13, scope: !123)
!125 = !DILocation(line: 370, column: 19, scope: !123)
!126 = !DILocation(line: 370, column: 6, scope: !64)
!127 = !DILocalVariable(name: "total", scope: !128, file: !3, line: 371, type: !67)
!128 = distinct !DILexicalBlock(scope: !123, file: !3, line: 370, column: 36)
!129 = !DILocation(line: 371, column: 7, scope: !128)
!130 = !DILocation(line: 373, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 373, column: 7)
!132 = !DILocation(line: 373, column: 14, scope: !131)
!133 = !DILocation(line: 373, column: 23, scope: !131)
!134 = !DILocation(line: 373, column: 7, scope: !128)
!135 = !DILocation(line: 374, column: 4, scope: !131)
!136 = !DILocation(line: 374, column: 11, scope: !131)
!137 = !DILocation(line: 374, column: 20, scope: !131)
!138 = !DILocation(line: 375, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !128, file: !3, line: 375, column: 7)
!140 = !DILocation(line: 375, column: 14, scope: !139)
!141 = !DILocation(line: 375, column: 23, scope: !139)
!142 = !DILocation(line: 375, column: 7, scope: !128)
!143 = !DILocation(line: 376, column: 4, scope: !139)
!144 = !DILocation(line: 376, column: 11, scope: !139)
!145 = !DILocation(line: 376, column: 20, scope: !139)
!146 = !DILocation(line: 377, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !128, file: !3, line: 377, column: 7)
!148 = !DILocation(line: 377, column: 14, scope: !147)
!149 = !DILocation(line: 377, column: 22, scope: !147)
!150 = !DILocation(line: 377, column: 7, scope: !128)
!151 = !DILocation(line: 378, column: 4, scope: !147)
!152 = !DILocation(line: 378, column: 11, scope: !147)
!153 = !DILocation(line: 378, column: 19, scope: !147)
!154 = !DILocation(line: 379, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !128, file: !3, line: 379, column: 7)
!156 = !DILocation(line: 379, column: 14, scope: !155)
!157 = !DILocation(line: 379, column: 22, scope: !155)
!158 = !DILocation(line: 379, column: 7, scope: !128)
!159 = !DILocation(line: 380, column: 4, scope: !155)
!160 = !DILocation(line: 380, column: 11, scope: !155)
!161 = !DILocation(line: 380, column: 19, scope: !155)
!162 = !DILocation(line: 381, column: 11, scope: !128)
!163 = !DILocation(line: 381, column: 18, scope: !128)
!164 = !DILocation(line: 381, column: 29, scope: !128)
!165 = !DILocation(line: 381, column: 36, scope: !128)
!166 = !DILocation(line: 381, column: 27, scope: !128)
!167 = !DILocation(line: 382, column: 4, scope: !128)
!168 = !DILocation(line: 382, column: 11, scope: !128)
!169 = !DILocation(line: 381, column: 45, scope: !128)
!170 = !DILocation(line: 382, column: 21, scope: !128)
!171 = !DILocation(line: 382, column: 28, scope: !128)
!172 = !DILocation(line: 382, column: 19, scope: !128)
!173 = !DILocation(line: 381, column: 9, scope: !128)
!174 = !DILocation(line: 384, column: 25, scope: !128)
!175 = !DILocation(line: 384, column: 17, scope: !128)
!176 = !DILocation(line: 384, column: 3, scope: !128)
!177 = !DILocation(line: 384, column: 10, scope: !128)
!178 = !DILocation(line: 384, column: 15, scope: !128)
!179 = !DILocation(line: 385, column: 8, scope: !180)
!180 = distinct !DILexicalBlock(scope: !128, file: !3, line: 385, column: 7)
!181 = !DILocation(line: 385, column: 15, scope: !180)
!182 = !DILocation(line: 385, column: 7, scope: !128)
!183 = !DILocation(line: 386, column: 16, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !3, line: 385, column: 21)
!185 = !DILocation(line: 386, column: 4, scope: !184)
!186 = !DILocation(line: 387, column: 4, scope: !184)
!187 = !DILocation(line: 389, column: 17, scope: !128)
!188 = !DILocation(line: 389, column: 24, scope: !128)
!189 = !DILocation(line: 389, column: 31, scope: !128)
!190 = !DILocation(line: 389, column: 38, scope: !128)
!191 = !DILocation(line: 389, column: 29, scope: !128)
!192 = !DILocation(line: 389, column: 3, scope: !128)
!193 = !DILocation(line: 389, column: 10, scope: !128)
!194 = !DILocation(line: 389, column: 15, scope: !128)
!195 = !DILocation(line: 390, column: 16, scope: !128)
!196 = !DILocation(line: 390, column: 23, scope: !128)
!197 = !DILocation(line: 390, column: 30, scope: !128)
!198 = !DILocation(line: 390, column: 37, scope: !128)
!199 = !DILocation(line: 390, column: 28, scope: !128)
!200 = !DILocation(line: 390, column: 3, scope: !128)
!201 = !DILocation(line: 390, column: 10, scope: !128)
!202 = !DILocation(line: 390, column: 14, scope: !128)
!203 = !DILocation(line: 391, column: 16, scope: !128)
!204 = !DILocation(line: 391, column: 23, scope: !128)
!205 = !DILocation(line: 391, column: 29, scope: !128)
!206 = !DILocation(line: 391, column: 36, scope: !128)
!207 = !DILocation(line: 391, column: 27, scope: !128)
!208 = !DILocation(line: 391, column: 3, scope: !128)
!209 = !DILocation(line: 391, column: 10, scope: !128)
!210 = !DILocation(line: 391, column: 14, scope: !128)
!211 = !DILocation(line: 393, column: 17, scope: !128)
!212 = !DILocation(line: 393, column: 3, scope: !128)
!213 = !DILocation(line: 394, column: 2, scope: !128)
!214 = !DILocation(line: 396, column: 6, scope: !215)
!215 = distinct !DILexicalBlock(scope: !64, file: !3, line: 396, column: 6)
!216 = !DILocation(line: 396, column: 13, scope: !215)
!217 = !DILocation(line: 396, column: 19, scope: !215)
!218 = !DILocation(line: 396, column: 6, scope: !64)
!219 = !DILocalVariable(name: "fbbase", scope: !220, file: !3, line: 397, type: !16)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 396, column: 37)
!221 = !DILocation(line: 397, column: 17, scope: !220)
!222 = !DILocation(line: 400, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 400, column: 7)
!224 = !DILocation(line: 400, column: 14, scope: !223)
!225 = !DILocation(line: 400, column: 22, scope: !223)
!226 = !DILocation(line: 400, column: 25, scope: !223)
!227 = !DILocation(line: 400, column: 32, scope: !223)
!228 = !DILocation(line: 400, column: 40, scope: !223)
!229 = !DILocation(line: 400, column: 7, scope: !220)
!230 = !DILocation(line: 401, column: 16, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !3, line: 400, column: 52)
!232 = !DILocation(line: 401, column: 4, scope: !231)
!233 = !DILocation(line: 402, column: 4, scope: !231)
!234 = !DILocation(line: 404, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !220, file: !3, line: 404, column: 7)
!236 = !DILocation(line: 404, column: 15, scope: !235)
!237 = !DILocation(line: 404, column: 7, scope: !220)
!238 = !DILocation(line: 405, column: 4, scope: !235)
!239 = !DILocation(line: 405, column: 11, scope: !235)
!240 = !DILocation(line: 405, column: 19, scope: !235)
!241 = !DILocation(line: 407, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !220, file: !3, line: 407, column: 7)
!243 = !DILocation(line: 407, column: 15, scope: !242)
!244 = !DILocation(line: 407, column: 7, scope: !220)
!245 = !DILocation(line: 408, column: 4, scope: !242)
!246 = !DILocation(line: 408, column: 11, scope: !242)
!247 = !DILocation(line: 408, column: 19, scope: !242)
!248 = !DILocation(line: 410, column: 20, scope: !220)
!249 = !DILocation(line: 410, column: 27, scope: !220)
!250 = !DILocation(line: 410, column: 36, scope: !220)
!251 = !DILocation(line: 410, column: 43, scope: !220)
!252 = !DILocation(line: 410, column: 12, scope: !220)
!253 = !DILocation(line: 410, column: 10, scope: !220)
!254 = !DILocation(line: 412, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !220, file: !3, line: 412, column: 7)
!256 = !DILocation(line: 412, column: 7, scope: !220)
!257 = !DILocation(line: 413, column: 16, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 412, column: 16)
!259 = !DILocation(line: 413, column: 4, scope: !258)
!260 = !DILocation(line: 414, column: 4, scope: !258)
!261 = !DILocation(line: 420, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !220, file: !3, line: 420, column: 7)
!263 = !DILocation(line: 420, column: 14, scope: !262)
!264 = !DILocation(line: 420, column: 20, scope: !262)
!265 = !DILocation(line: 420, column: 7, scope: !220)
!266 = !DILocation(line: 421, column: 23, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 420, column: 38)
!268 = !DILocation(line: 421, column: 4, scope: !267)
!269 = !DILocation(line: 421, column: 11, scope: !267)
!270 = !DILocation(line: 421, column: 21, scope: !267)
!271 = !DILocation(line: 422, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 422, column: 8)
!273 = !DILocation(line: 422, column: 16, scope: !272)
!274 = !DILocation(line: 422, column: 8, scope: !267)
!275 = !DILocation(line: 423, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 422, column: 27)
!277 = !DILocation(line: 423, column: 5, scope: !276)
!278 = !DILocation(line: 424, column: 17, scope: !276)
!279 = !DILocation(line: 424, column: 5, scope: !276)
!280 = !DILocation(line: 425, column: 5, scope: !276)
!281 = !DILocation(line: 427, column: 3, scope: !267)
!282 = !DILocation(line: 432, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !220, file: !3, line: 432, column: 7)
!284 = !DILocation(line: 432, column: 14, scope: !283)
!285 = !DILocation(line: 432, column: 20, scope: !283)
!286 = !DILocation(line: 432, column: 7, scope: !220)
!287 = !DILocation(line: 433, column: 31, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 432, column: 38)
!289 = !DILocation(line: 433, column: 38, scope: !288)
!290 = !DILocation(line: 433, column: 23, scope: !288)
!291 = !DILocation(line: 433, column: 4, scope: !288)
!292 = !DILocation(line: 433, column: 11, scope: !288)
!293 = !DILocation(line: 433, column: 21, scope: !288)
!294 = !DILocation(line: 434, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 434, column: 8)
!296 = !DILocation(line: 434, column: 16, scope: !295)
!297 = !DILocation(line: 434, column: 8, scope: !288)
!298 = !DILocation(line: 435, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 434, column: 27)
!300 = !DILocation(line: 435, column: 5, scope: !299)
!301 = !DILocation(line: 436, column: 17, scope: !299)
!302 = !DILocation(line: 436, column: 5, scope: !299)
!303 = !DILocation(line: 437, column: 5, scope: !299)
!304 = !DILocation(line: 439, column: 3, scope: !288)
!305 = !DILocation(line: 443, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !220, file: !3, line: 443, column: 7)
!307 = !DILocation(line: 443, column: 14, scope: !306)
!308 = !DILocation(line: 443, column: 20, scope: !306)
!309 = !DILocation(line: 443, column: 7, scope: !220)
!310 = !DILocation(line: 444, column: 22, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !3, line: 443, column: 37)
!312 = !DILocation(line: 444, column: 4, scope: !311)
!313 = !DILocation(line: 444, column: 11, scope: !311)
!314 = !DILocation(line: 444, column: 20, scope: !311)
!315 = !DILocation(line: 445, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 445, column: 8)
!317 = !DILocation(line: 445, column: 16, scope: !316)
!318 = !DILocation(line: 445, column: 8, scope: !311)
!319 = !DILocation(line: 446, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 445, column: 26)
!321 = !DILocation(line: 446, column: 5, scope: !320)
!322 = !DILocation(line: 447, column: 17, scope: !320)
!323 = !DILocation(line: 447, column: 5, scope: !320)
!324 = !DILocation(line: 448, column: 5, scope: !320)
!325 = !DILocation(line: 450, column: 3, scope: !311)
!326 = !DILocation(line: 452, column: 17, scope: !220)
!327 = !DILocation(line: 452, column: 24, scope: !220)
!328 = !DILocation(line: 452, column: 3, scope: !220)
!329 = !DILocation(line: 453, column: 11, scope: !220)
!330 = !DILocation(line: 453, column: 3, scope: !220)
!331 = !DILocation(line: 454, column: 2, scope: !220)
!332 = !DILocation(line: 455, column: 2, scope: !64)
!333 = !DILocation(line: 456, column: 1, scope: !64)
!334 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !335, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!335 = !DISubroutineType(types: !336)
!336 = !{!16, !337, !14}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !339, line: 72, baseType: !340)
!339 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !339, line: 16, baseType: !74)
!341 = !DILocalVariable(name: "s", arg: 1, scope: !342, file: !6, line: 445, type: !345)
!342 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !343, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!343 = !DISubroutineType(types: !344)
!344 = !{!16, !345, !14, !337}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !347, line: 117, flags: DIFlagFwdDecl)
!347 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DILocation(line: 445, column: 72, scope: !342, inlinedAt: !349)
!349 = distinct !DILocation(line: 552, column: 10, scope: !350, inlinedAt: !353)
!350 = distinct !DILexicalBlock(scope: !351, file: !6, line: 540, column: 34)
!351 = distinct !DILexicalBlock(scope: !352, file: !6, line: 540, column: 6)
!352 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !335, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!353 = distinct !DILocation(line: 664, column: 9, scope: !334)
!354 = !DILocalVariable(name: "flags", arg: 2, scope: !342, file: !6, line: 446, type: !14)
!355 = !DILocation(line: 446, column: 9, scope: !342, inlinedAt: !349)
!356 = !DILocalVariable(name: "size", arg: 3, scope: !342, file: !6, line: 446, type: !337)
!357 = !DILocation(line: 446, column: 23, scope: !342, inlinedAt: !349)
!358 = !DILocalVariable(name: "ret", scope: !342, file: !6, line: 448, type: !16)
!359 = !DILocation(line: 448, column: 8, scope: !342, inlinedAt: !349)
!360 = !DILocalVariable(name: "flags", arg: 1, scope: !361, file: !6, line: 318, type: !14)
!361 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !362, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!362 = !DISubroutineType(types: !363)
!363 = !{!5, !14}
!364 = !DILocation(line: 318, column: 67, scope: !361, inlinedAt: !365)
!365 = distinct !DILocation(line: 553, column: 20, scope: !350, inlinedAt: !353)
!366 = !DILocalVariable(name: "size", arg: 1, scope: !367, file: !6, line: 346, type: !337)
!367 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !368, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!368 = !DISubroutineType(types: !369)
!369 = !{!7, !337}
!370 = !DILocation(line: 346, column: 58, scope: !367, inlinedAt: !371)
!371 = distinct !DILocation(line: 547, column: 11, scope: !350, inlinedAt: !353)
!372 = !DILocalVariable(name: "size", arg: 1, scope: !373, file: !6, line: 472, type: !337)
!373 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !374, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!374 = !DISubroutineType(types: !375)
!375 = !{!16, !337, !14, !7}
!376 = !DILocation(line: 472, column: 28, scope: !373, inlinedAt: !377)
!377 = distinct !DILocation(line: 481, column: 9, scope: !378, inlinedAt: !379)
!378 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !335, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!379 = distinct !DILocation(line: 545, column: 11, scope: !380, inlinedAt: !353)
!380 = distinct !DILexicalBlock(scope: !350, file: !6, line: 544, column: 7)
!381 = !DILocalVariable(name: "flags", arg: 2, scope: !373, file: !6, line: 472, type: !14)
!382 = !DILocation(line: 472, column: 40, scope: !373, inlinedAt: !377)
!383 = !DILocalVariable(name: "order", arg: 3, scope: !373, file: !6, line: 472, type: !7)
!384 = !DILocation(line: 472, column: 60, scope: !373, inlinedAt: !377)
!385 = !DILocalVariable(name: "size", arg: 1, scope: !378, file: !6, line: 478, type: !337)
!386 = !DILocation(line: 478, column: 51, scope: !378, inlinedAt: !379)
!387 = !DILocalVariable(name: "flags", arg: 2, scope: !378, file: !6, line: 478, type: !14)
!388 = !DILocation(line: 478, column: 63, scope: !378, inlinedAt: !379)
!389 = !DILocalVariable(name: "order", scope: !378, file: !6, line: 480, type: !7)
!390 = !DILocation(line: 480, column: 15, scope: !378, inlinedAt: !379)
!391 = !DILocalVariable(name: "size", arg: 1, scope: !352, file: !6, line: 538, type: !337)
!392 = !DILocation(line: 538, column: 45, scope: !352, inlinedAt: !353)
!393 = !DILocalVariable(name: "flags", arg: 2, scope: !352, file: !6, line: 538, type: !14)
!394 = !DILocation(line: 538, column: 57, scope: !352, inlinedAt: !353)
!395 = !DILocalVariable(name: "index", scope: !350, file: !6, line: 542, type: !7)
!396 = !DILocation(line: 542, column: 16, scope: !350, inlinedAt: !353)
!397 = !DILocalVariable(name: "size", arg: 1, scope: !334, file: !6, line: 662, type: !337)
!398 = !DILocation(line: 662, column: 36, scope: !334)
!399 = !DILocalVariable(name: "flags", arg: 2, scope: !334, file: !6, line: 662, type: !14)
!400 = !DILocation(line: 662, column: 48, scope: !334)
!401 = !DILocation(line: 664, column: 17, scope: !334)
!402 = !DILocation(line: 664, column: 23, scope: !334)
!403 = !DILocation(line: 664, column: 29, scope: !334)
!404 = !DILocation(line: 540, column: 27, scope: !351, inlinedAt: !353)
!405 = !DILocation(line: 540, column: 6, scope: !351, inlinedAt: !353)
!406 = !DILocation(line: 540, column: 6, scope: !352, inlinedAt: !353)
!407 = !DILocation(line: 544, column: 7, scope: !380, inlinedAt: !353)
!408 = !DILocation(line: 544, column: 12, scope: !380, inlinedAt: !353)
!409 = !DILocation(line: 544, column: 7, scope: !350, inlinedAt: !353)
!410 = !DILocation(line: 545, column: 25, scope: !380, inlinedAt: !353)
!411 = !DILocation(line: 545, column: 31, scope: !380, inlinedAt: !353)
!412 = !DILocation(line: 480, column: 33, scope: !378, inlinedAt: !379)
!413 = !DILocation(line: 480, column: 23, scope: !378, inlinedAt: !379)
!414 = !DILocation(line: 481, column: 29, scope: !378, inlinedAt: !379)
!415 = !DILocation(line: 481, column: 35, scope: !378, inlinedAt: !379)
!416 = !DILocation(line: 481, column: 42, scope: !378, inlinedAt: !379)
!417 = !DILocation(line: 474, column: 23, scope: !373, inlinedAt: !377)
!418 = !DILocation(line: 474, column: 29, scope: !373, inlinedAt: !377)
!419 = !DILocation(line: 474, column: 36, scope: !373, inlinedAt: !377)
!420 = !DILocation(line: 474, column: 9, scope: !373, inlinedAt: !377)
!421 = !DILocation(line: 545, column: 4, scope: !380, inlinedAt: !353)
!422 = !DILocation(line: 547, column: 25, scope: !350, inlinedAt: !353)
!423 = !DILocation(line: 348, column: 7, scope: !424, inlinedAt: !371)
!424 = distinct !DILexicalBlock(scope: !367, file: !6, line: 348, column: 6)
!425 = !DILocation(line: 348, column: 6, scope: !367, inlinedAt: !371)
!426 = !DILocation(line: 349, column: 3, scope: !424, inlinedAt: !371)
!427 = !DILocation(line: 351, column: 6, scope: !428, inlinedAt: !371)
!428 = distinct !DILexicalBlock(scope: !367, file: !6, line: 351, column: 6)
!429 = !DILocation(line: 351, column: 11, scope: !428, inlinedAt: !371)
!430 = !DILocation(line: 351, column: 6, scope: !367, inlinedAt: !371)
!431 = !DILocation(line: 352, column: 3, scope: !428, inlinedAt: !371)
!432 = !DILocation(line: 354, column: 32, scope: !433, inlinedAt: !371)
!433 = distinct !DILexicalBlock(scope: !367, file: !6, line: 354, column: 6)
!434 = !DILocation(line: 354, column: 37, scope: !433, inlinedAt: !371)
!435 = !DILocation(line: 354, column: 42, scope: !433, inlinedAt: !371)
!436 = !DILocation(line: 354, column: 45, scope: !433, inlinedAt: !371)
!437 = !DILocation(line: 354, column: 50, scope: !433, inlinedAt: !371)
!438 = !DILocation(line: 354, column: 6, scope: !367, inlinedAt: !371)
!439 = !DILocation(line: 355, column: 3, scope: !433, inlinedAt: !371)
!440 = !DILocation(line: 356, column: 32, scope: !441, inlinedAt: !371)
!441 = distinct !DILexicalBlock(scope: !367, file: !6, line: 356, column: 6)
!442 = !DILocation(line: 356, column: 37, scope: !441, inlinedAt: !371)
!443 = !DILocation(line: 356, column: 43, scope: !441, inlinedAt: !371)
!444 = !DILocation(line: 356, column: 46, scope: !441, inlinedAt: !371)
!445 = !DILocation(line: 356, column: 51, scope: !441, inlinedAt: !371)
!446 = !DILocation(line: 356, column: 6, scope: !367, inlinedAt: !371)
!447 = !DILocation(line: 357, column: 3, scope: !441, inlinedAt: !371)
!448 = !DILocation(line: 358, column: 6, scope: !449, inlinedAt: !371)
!449 = distinct !DILexicalBlock(scope: !367, file: !6, line: 358, column: 6)
!450 = !DILocation(line: 358, column: 11, scope: !449, inlinedAt: !371)
!451 = !DILocation(line: 358, column: 6, scope: !367, inlinedAt: !371)
!452 = !DILocation(line: 358, column: 26, scope: !449, inlinedAt: !371)
!453 = !DILocation(line: 359, column: 6, scope: !454, inlinedAt: !371)
!454 = distinct !DILexicalBlock(scope: !367, file: !6, line: 359, column: 6)
!455 = !DILocation(line: 359, column: 11, scope: !454, inlinedAt: !371)
!456 = !DILocation(line: 359, column: 6, scope: !367, inlinedAt: !371)
!457 = !DILocation(line: 359, column: 26, scope: !454, inlinedAt: !371)
!458 = !DILocation(line: 360, column: 6, scope: !459, inlinedAt: !371)
!459 = distinct !DILexicalBlock(scope: !367, file: !6, line: 360, column: 6)
!460 = !DILocation(line: 360, column: 11, scope: !459, inlinedAt: !371)
!461 = !DILocation(line: 360, column: 6, scope: !367, inlinedAt: !371)
!462 = !DILocation(line: 360, column: 26, scope: !459, inlinedAt: !371)
!463 = !DILocation(line: 361, column: 6, scope: !464, inlinedAt: !371)
!464 = distinct !DILexicalBlock(scope: !367, file: !6, line: 361, column: 6)
!465 = !DILocation(line: 361, column: 11, scope: !464, inlinedAt: !371)
!466 = !DILocation(line: 361, column: 6, scope: !367, inlinedAt: !371)
!467 = !DILocation(line: 361, column: 26, scope: !464, inlinedAt: !371)
!468 = !DILocation(line: 362, column: 6, scope: !469, inlinedAt: !371)
!469 = distinct !DILexicalBlock(scope: !367, file: !6, line: 362, column: 6)
!470 = !DILocation(line: 362, column: 11, scope: !469, inlinedAt: !371)
!471 = !DILocation(line: 362, column: 6, scope: !367, inlinedAt: !371)
!472 = !DILocation(line: 362, column: 26, scope: !469, inlinedAt: !371)
!473 = !DILocation(line: 363, column: 6, scope: !474, inlinedAt: !371)
!474 = distinct !DILexicalBlock(scope: !367, file: !6, line: 363, column: 6)
!475 = !DILocation(line: 363, column: 11, scope: !474, inlinedAt: !371)
!476 = !DILocation(line: 363, column: 6, scope: !367, inlinedAt: !371)
!477 = !DILocation(line: 363, column: 26, scope: !474, inlinedAt: !371)
!478 = !DILocation(line: 364, column: 6, scope: !479, inlinedAt: !371)
!479 = distinct !DILexicalBlock(scope: !367, file: !6, line: 364, column: 6)
!480 = !DILocation(line: 364, column: 11, scope: !479, inlinedAt: !371)
!481 = !DILocation(line: 364, column: 6, scope: !367, inlinedAt: !371)
!482 = !DILocation(line: 364, column: 26, scope: !479, inlinedAt: !371)
!483 = !DILocation(line: 365, column: 6, scope: !484, inlinedAt: !371)
!484 = distinct !DILexicalBlock(scope: !367, file: !6, line: 365, column: 6)
!485 = !DILocation(line: 365, column: 11, scope: !484, inlinedAt: !371)
!486 = !DILocation(line: 365, column: 6, scope: !367, inlinedAt: !371)
!487 = !DILocation(line: 365, column: 26, scope: !484, inlinedAt: !371)
!488 = !DILocation(line: 366, column: 6, scope: !489, inlinedAt: !371)
!489 = distinct !DILexicalBlock(scope: !367, file: !6, line: 366, column: 6)
!490 = !DILocation(line: 366, column: 11, scope: !489, inlinedAt: !371)
!491 = !DILocation(line: 366, column: 6, scope: !367, inlinedAt: !371)
!492 = !DILocation(line: 366, column: 26, scope: !489, inlinedAt: !371)
!493 = !DILocation(line: 367, column: 6, scope: !494, inlinedAt: !371)
!494 = distinct !DILexicalBlock(scope: !367, file: !6, line: 367, column: 6)
!495 = !DILocation(line: 367, column: 11, scope: !494, inlinedAt: !371)
!496 = !DILocation(line: 367, column: 6, scope: !367, inlinedAt: !371)
!497 = !DILocation(line: 367, column: 26, scope: !494, inlinedAt: !371)
!498 = !DILocation(line: 368, column: 6, scope: !499, inlinedAt: !371)
!499 = distinct !DILexicalBlock(scope: !367, file: !6, line: 368, column: 6)
!500 = !DILocation(line: 368, column: 11, scope: !499, inlinedAt: !371)
!501 = !DILocation(line: 368, column: 6, scope: !367, inlinedAt: !371)
!502 = !DILocation(line: 368, column: 26, scope: !499, inlinedAt: !371)
!503 = !DILocation(line: 369, column: 6, scope: !504, inlinedAt: !371)
!504 = distinct !DILexicalBlock(scope: !367, file: !6, line: 369, column: 6)
!505 = !DILocation(line: 369, column: 11, scope: !504, inlinedAt: !371)
!506 = !DILocation(line: 369, column: 6, scope: !367, inlinedAt: !371)
!507 = !DILocation(line: 369, column: 26, scope: !504, inlinedAt: !371)
!508 = !DILocation(line: 370, column: 6, scope: !509, inlinedAt: !371)
!509 = distinct !DILexicalBlock(scope: !367, file: !6, line: 370, column: 6)
!510 = !DILocation(line: 370, column: 11, scope: !509, inlinedAt: !371)
!511 = !DILocation(line: 370, column: 6, scope: !367, inlinedAt: !371)
!512 = !DILocation(line: 370, column: 26, scope: !509, inlinedAt: !371)
!513 = !DILocation(line: 371, column: 6, scope: !514, inlinedAt: !371)
!514 = distinct !DILexicalBlock(scope: !367, file: !6, line: 371, column: 6)
!515 = !DILocation(line: 371, column: 11, scope: !514, inlinedAt: !371)
!516 = !DILocation(line: 371, column: 6, scope: !367, inlinedAt: !371)
!517 = !DILocation(line: 371, column: 26, scope: !514, inlinedAt: !371)
!518 = !DILocation(line: 372, column: 6, scope: !519, inlinedAt: !371)
!519 = distinct !DILexicalBlock(scope: !367, file: !6, line: 372, column: 6)
!520 = !DILocation(line: 372, column: 11, scope: !519, inlinedAt: !371)
!521 = !DILocation(line: 372, column: 6, scope: !367, inlinedAt: !371)
!522 = !DILocation(line: 372, column: 26, scope: !519, inlinedAt: !371)
!523 = !DILocation(line: 373, column: 6, scope: !524, inlinedAt: !371)
!524 = distinct !DILexicalBlock(scope: !367, file: !6, line: 373, column: 6)
!525 = !DILocation(line: 373, column: 11, scope: !524, inlinedAt: !371)
!526 = !DILocation(line: 373, column: 6, scope: !367, inlinedAt: !371)
!527 = !DILocation(line: 373, column: 26, scope: !524, inlinedAt: !371)
!528 = !DILocation(line: 374, column: 6, scope: !529, inlinedAt: !371)
!529 = distinct !DILexicalBlock(scope: !367, file: !6, line: 374, column: 6)
!530 = !DILocation(line: 374, column: 11, scope: !529, inlinedAt: !371)
!531 = !DILocation(line: 374, column: 6, scope: !367, inlinedAt: !371)
!532 = !DILocation(line: 374, column: 26, scope: !529, inlinedAt: !371)
!533 = !DILocation(line: 375, column: 6, scope: !534, inlinedAt: !371)
!534 = distinct !DILexicalBlock(scope: !367, file: !6, line: 375, column: 6)
!535 = !DILocation(line: 375, column: 11, scope: !534, inlinedAt: !371)
!536 = !DILocation(line: 375, column: 6, scope: !367, inlinedAt: !371)
!537 = !DILocation(line: 375, column: 27, scope: !534, inlinedAt: !371)
!538 = !DILocation(line: 376, column: 6, scope: !539, inlinedAt: !371)
!539 = distinct !DILexicalBlock(scope: !367, file: !6, line: 376, column: 6)
!540 = !DILocation(line: 376, column: 11, scope: !539, inlinedAt: !371)
!541 = !DILocation(line: 376, column: 6, scope: !367, inlinedAt: !371)
!542 = !DILocation(line: 376, column: 32, scope: !539, inlinedAt: !371)
!543 = !DILocation(line: 377, column: 6, scope: !544, inlinedAt: !371)
!544 = distinct !DILexicalBlock(scope: !367, file: !6, line: 377, column: 6)
!545 = !DILocation(line: 377, column: 11, scope: !544, inlinedAt: !371)
!546 = !DILocation(line: 377, column: 6, scope: !367, inlinedAt: !371)
!547 = !DILocation(line: 377, column: 32, scope: !544, inlinedAt: !371)
!548 = !DILocation(line: 378, column: 6, scope: !549, inlinedAt: !371)
!549 = distinct !DILexicalBlock(scope: !367, file: !6, line: 378, column: 6)
!550 = !DILocation(line: 378, column: 11, scope: !549, inlinedAt: !371)
!551 = !DILocation(line: 378, column: 6, scope: !367, inlinedAt: !371)
!552 = !DILocation(line: 378, column: 32, scope: !549, inlinedAt: !371)
!553 = !DILocation(line: 379, column: 6, scope: !554, inlinedAt: !371)
!554 = distinct !DILexicalBlock(scope: !367, file: !6, line: 379, column: 6)
!555 = !DILocation(line: 379, column: 11, scope: !554, inlinedAt: !371)
!556 = !DILocation(line: 379, column: 6, scope: !367, inlinedAt: !371)
!557 = !DILocation(line: 379, column: 33, scope: !554, inlinedAt: !371)
!558 = !DILocation(line: 380, column: 6, scope: !559, inlinedAt: !371)
!559 = distinct !DILexicalBlock(scope: !367, file: !6, line: 380, column: 6)
!560 = !DILocation(line: 380, column: 11, scope: !559, inlinedAt: !371)
!561 = !DILocation(line: 380, column: 6, scope: !367, inlinedAt: !371)
!562 = !DILocation(line: 380, column: 33, scope: !559, inlinedAt: !371)
!563 = !DILocation(line: 381, column: 6, scope: !564, inlinedAt: !371)
!564 = distinct !DILexicalBlock(scope: !367, file: !6, line: 381, column: 6)
!565 = !DILocation(line: 381, column: 11, scope: !564, inlinedAt: !371)
!566 = !DILocation(line: 381, column: 6, scope: !367, inlinedAt: !371)
!567 = !DILocation(line: 381, column: 33, scope: !564, inlinedAt: !371)
!568 = !DILocation(line: 382, column: 2, scope: !569, inlinedAt: !371)
!569 = distinct !DILexicalBlock(scope: !570, file: !6, line: 382, column: 2)
!570 = distinct !DILexicalBlock(scope: !367, file: !6, line: 382, column: 2)
!571 = !{i32 -2144234172, i32 -2144234143, i32 -2144234097, i32 -2144234039, i32 -2144233985, i32 -2144233931, i32 -2144233876, i32 -2144233845}
!572 = !DILocation(line: 382, column: 2, scope: !573, inlinedAt: !371)
!573 = distinct !DILexicalBlock(scope: !574, file: !6, line: 382, column: 2)
!574 = distinct !DILexicalBlock(scope: !570, file: !6, line: 382, column: 2)
!575 = !{i32 -2144233402, i32 -2144233395, i32 -2144233341, i32 -2144233310, i32 -2144233280}
!576 = !DILocation(line: 382, column: 2, scope: !574, inlinedAt: !371)
!577 = !DILocation(line: 386, column: 1, scope: !367, inlinedAt: !371)
!578 = !DILocation(line: 547, column: 9, scope: !350, inlinedAt: !353)
!579 = !DILocation(line: 549, column: 8, scope: !580, inlinedAt: !353)
!580 = distinct !DILexicalBlock(scope: !350, file: !6, line: 549, column: 7)
!581 = !DILocation(line: 549, column: 7, scope: !350, inlinedAt: !353)
!582 = !DILocation(line: 550, column: 4, scope: !580, inlinedAt: !353)
!583 = !DILocation(line: 553, column: 33, scope: !350, inlinedAt: !353)
!584 = !DILocation(line: 325, column: 6, scope: !585, inlinedAt: !365)
!585 = distinct !DILexicalBlock(scope: !361, file: !6, line: 325, column: 6)
!586 = !DILocation(line: 325, column: 6, scope: !361, inlinedAt: !365)
!587 = !DILocation(line: 326, column: 3, scope: !585, inlinedAt: !365)
!588 = !DILocation(line: 332, column: 9, scope: !361, inlinedAt: !365)
!589 = !DILocation(line: 332, column: 15, scope: !361, inlinedAt: !365)
!590 = !DILocation(line: 332, column: 2, scope: !361, inlinedAt: !365)
!591 = !DILocation(line: 336, column: 1, scope: !361, inlinedAt: !365)
!592 = !DILocation(line: 553, column: 5, scope: !350, inlinedAt: !353)
!593 = !DILocation(line: 553, column: 41, scope: !350, inlinedAt: !353)
!594 = !DILocation(line: 554, column: 5, scope: !350, inlinedAt: !353)
!595 = !DILocation(line: 554, column: 12, scope: !350, inlinedAt: !353)
!596 = !DILocation(line: 448, column: 31, scope: !342, inlinedAt: !349)
!597 = !DILocation(line: 448, column: 34, scope: !342, inlinedAt: !349)
!598 = !DILocation(line: 448, column: 14, scope: !342, inlinedAt: !349)
!599 = !DILocation(line: 450, column: 22, scope: !342, inlinedAt: !349)
!600 = !DILocation(line: 450, column: 25, scope: !342, inlinedAt: !349)
!601 = !DILocation(line: 450, column: 30, scope: !342, inlinedAt: !349)
!602 = !DILocation(line: 450, column: 36, scope: !342, inlinedAt: !349)
!603 = !DILocation(line: 450, column: 8, scope: !342, inlinedAt: !349)
!604 = !DILocation(line: 450, column: 6, scope: !342, inlinedAt: !349)
!605 = !DILocation(line: 451, column: 9, scope: !342, inlinedAt: !349)
!606 = !DILocation(line: 552, column: 3, scope: !350, inlinedAt: !353)
!607 = !DILocation(line: 557, column: 19, scope: !352, inlinedAt: !353)
!608 = !DILocation(line: 557, column: 25, scope: !352, inlinedAt: !353)
!609 = !DILocation(line: 557, column: 9, scope: !352, inlinedAt: !353)
!610 = !DILocation(line: 557, column: 2, scope: !352, inlinedAt: !353)
!611 = !DILocation(line: 558, column: 1, scope: !352, inlinedAt: !353)
!612 = !DILocation(line: 664, column: 2, scope: !334)
!613 = distinct !DISubprogram(name: "vga_cleanup", scope: !3, file: !3, line: 335, type: !614, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !68}
!616 = !DILocalVariable(name: "state", arg: 1, scope: !613, file: !3, line: 335, type: !68)
!617 = !DILocation(line: 335, column: 42, scope: !613)
!618 = !DILocation(line: 337, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !3, line: 337, column: 6)
!620 = !DILocation(line: 337, column: 13, scope: !619)
!621 = !DILocation(line: 337, column: 22, scope: !619)
!622 = !DILocation(line: 337, column: 6, scope: !613)
!623 = !DILocalVariable(name: "saved", scope: !624, file: !3, line: 338, type: !17)
!624 = distinct !DILexicalBlock(scope: !619, file: !3, line: 337, column: 31)
!625 = !DILocation(line: 338, column: 20, scope: !624)
!626 = !DILocation(line: 338, column: 48, scope: !624)
!627 = !DILocation(line: 338, column: 55, scope: !624)
!628 = !DILocation(line: 338, column: 28, scope: !624)
!629 = !DILocation(line: 340, column: 9, scope: !624)
!630 = !DILocation(line: 340, column: 16, scope: !624)
!631 = !DILocation(line: 340, column: 3, scope: !624)
!632 = !DILocation(line: 341, column: 9, scope: !624)
!633 = !DILocation(line: 341, column: 16, scope: !624)
!634 = !DILocation(line: 341, column: 3, scope: !624)
!635 = !DILocation(line: 342, column: 9, scope: !624)
!636 = !DILocation(line: 342, column: 16, scope: !624)
!637 = !DILocation(line: 342, column: 3, scope: !624)
!638 = !DILocation(line: 343, column: 9, scope: !624)
!639 = !DILocation(line: 343, column: 16, scope: !624)
!640 = !DILocation(line: 343, column: 3, scope: !624)
!641 = !DILocation(line: 344, column: 9, scope: !624)
!642 = !DILocation(line: 344, column: 16, scope: !624)
!643 = !DILocation(line: 344, column: 3, scope: !624)
!644 = !DILocation(line: 345, column: 9, scope: !624)
!645 = !DILocation(line: 345, column: 3, scope: !624)
!646 = !DILocation(line: 346, column: 3, scope: !624)
!647 = !DILocation(line: 346, column: 10, scope: !624)
!648 = !DILocation(line: 346, column: 19, scope: !624)
!649 = !DILocation(line: 347, column: 2, scope: !624)
!650 = !DILocation(line: 348, column: 1, scope: !613)
!651 = distinct !DISubprogram(name: "save_vga_cmap", scope: !3, file: !3, line: 309, type: !614, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!652 = !DILocalVariable(name: "state", arg: 1, scope: !651, file: !3, line: 309, type: !68)
!653 = !DILocation(line: 309, column: 44, scope: !651)
!654 = !DILocalVariable(name: "saved", scope: !651, file: !3, line: 311, type: !17)
!655 = !DILocation(line: 311, column: 19, scope: !651)
!656 = !DILocation(line: 311, column: 47, scope: !651)
!657 = !DILocation(line: 311, column: 54, scope: !651)
!658 = !DILocation(line: 311, column: 27, scope: !651)
!659 = !DILocalVariable(name: "i", scope: !651, file: !3, line: 312, type: !67)
!660 = !DILocation(line: 312, column: 6, scope: !651)
!661 = !DILocation(line: 314, column: 8, scope: !651)
!662 = !DILocation(line: 314, column: 15, scope: !651)
!663 = !DILocation(line: 314, column: 2, scope: !651)
!664 = !DILocation(line: 317, column: 8, scope: !651)
!665 = !DILocation(line: 317, column: 15, scope: !651)
!666 = !DILocation(line: 317, column: 2, scope: !651)
!667 = !DILocation(line: 318, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !651, file: !3, line: 318, column: 2)
!669 = !DILocation(line: 318, column: 7, scope: !668)
!670 = !DILocation(line: 318, column: 14, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !3, line: 318, column: 2)
!672 = !DILocation(line: 318, column: 16, scope: !671)
!673 = !DILocation(line: 318, column: 2, scope: !668)
!674 = !DILocation(line: 319, column: 30, scope: !671)
!675 = !DILocation(line: 319, column: 37, scope: !671)
!676 = !DILocation(line: 319, column: 24, scope: !671)
!677 = !DILocation(line: 319, column: 3, scope: !671)
!678 = !DILocation(line: 319, column: 10, scope: !671)
!679 = !DILocation(line: 319, column: 19, scope: !671)
!680 = !DILocation(line: 319, column: 22, scope: !671)
!681 = !DILocation(line: 318, column: 24, scope: !671)
!682 = !DILocation(line: 318, column: 2, scope: !671)
!683 = distinct !{!683, !673, !684}
!684 = !DILocation(line: 319, column: 55, scope: !668)
!685 = !DILocation(line: 320, column: 1, scope: !651)
!686 = distinct !DISubprogram(name: "save_vga_mode", scope: !3, file: !3, line: 226, type: !614, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!687 = !DILocalVariable(name: "state", arg: 1, scope: !686, file: !3, line: 226, type: !68)
!688 = !DILocation(line: 226, column: 44, scope: !686)
!689 = !DILocalVariable(name: "saved", scope: !686, file: !3, line: 228, type: !17)
!690 = !DILocation(line: 228, column: 19, scope: !686)
!691 = !DILocation(line: 228, column: 47, scope: !686)
!692 = !DILocation(line: 228, column: 54, scope: !686)
!693 = !DILocation(line: 228, column: 27, scope: !686)
!694 = !DILocalVariable(name: "iobase", scope: !686, file: !3, line: 229, type: !37)
!695 = !DILocation(line: 229, column: 17, scope: !686)
!696 = !DILocalVariable(name: "i", scope: !686, file: !3, line: 230, type: !67)
!697 = !DILocation(line: 230, column: 6, scope: !686)
!698 = !DILocation(line: 232, column: 22, scope: !686)
!699 = !DILocation(line: 232, column: 29, scope: !686)
!700 = !DILocation(line: 232, column: 16, scope: !686)
!701 = !DILocation(line: 232, column: 2, scope: !686)
!702 = !DILocation(line: 232, column: 9, scope: !686)
!703 = !DILocation(line: 232, column: 14, scope: !686)
!704 = !DILocation(line: 233, column: 6, scope: !705)
!705 = distinct !DILexicalBlock(scope: !686, file: !3, line: 233, column: 6)
!706 = !DILocation(line: 233, column: 13, scope: !705)
!707 = !DILocation(line: 233, column: 18, scope: !705)
!708 = !DILocation(line: 233, column: 6, scope: !686)
!709 = !DILocation(line: 234, column: 10, scope: !705)
!710 = !DILocation(line: 234, column: 3, scope: !705)
!711 = !DILocation(line: 236, column: 10, scope: !705)
!712 = !DILocation(line: 238, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !686, file: !3, line: 238, column: 2)
!714 = !DILocation(line: 238, column: 7, scope: !713)
!715 = !DILocation(line: 238, column: 14, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !3, line: 238, column: 2)
!717 = !DILocation(line: 238, column: 18, scope: !716)
!718 = !DILocation(line: 238, column: 25, scope: !716)
!719 = !DILocation(line: 238, column: 16, scope: !716)
!720 = !DILocation(line: 238, column: 2, scope: !713)
!721 = !DILocation(line: 239, column: 31, scope: !716)
!722 = !DILocation(line: 239, column: 38, scope: !716)
!723 = !DILocation(line: 239, column: 47, scope: !716)
!724 = !DILocation(line: 239, column: 55, scope: !716)
!725 = !DILocation(line: 239, column: 20, scope: !716)
!726 = !DILocation(line: 239, column: 3, scope: !716)
!727 = !DILocation(line: 239, column: 10, scope: !716)
!728 = !DILocation(line: 239, column: 15, scope: !716)
!729 = !DILocation(line: 239, column: 18, scope: !716)
!730 = !DILocation(line: 238, column: 36, scope: !716)
!731 = !DILocation(line: 238, column: 2, scope: !716)
!732 = distinct !{!732, !720, !733}
!733 = !DILocation(line: 239, column: 56, scope: !713)
!734 = !DILocation(line: 241, column: 8, scope: !686)
!735 = !DILocation(line: 241, column: 15, scope: !686)
!736 = !DILocation(line: 241, column: 24, scope: !686)
!737 = !DILocation(line: 241, column: 31, scope: !686)
!738 = !DILocation(line: 241, column: 2, scope: !686)
!739 = !DILocation(line: 242, column: 8, scope: !686)
!740 = !DILocation(line: 242, column: 15, scope: !686)
!741 = !DILocation(line: 242, column: 2, scope: !686)
!742 = !DILocation(line: 243, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !686, file: !3, line: 243, column: 2)
!744 = !DILocation(line: 243, column: 7, scope: !743)
!745 = !DILocation(line: 243, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 243, column: 2)
!747 = !DILocation(line: 243, column: 18, scope: !746)
!748 = !DILocation(line: 243, column: 25, scope: !746)
!749 = !DILocation(line: 243, column: 16, scope: !746)
!750 = !DILocation(line: 243, column: 2, scope: !743)
!751 = !DILocation(line: 244, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !746, file: !3, line: 243, column: 40)
!753 = !DILocation(line: 244, column: 16, scope: !752)
!754 = !DILocation(line: 244, column: 25, scope: !752)
!755 = !DILocation(line: 244, column: 32, scope: !752)
!756 = !DILocation(line: 244, column: 3, scope: !752)
!757 = !DILocation(line: 245, column: 30, scope: !752)
!758 = !DILocation(line: 245, column: 37, scope: !752)
!759 = !DILocation(line: 245, column: 46, scope: !752)
!760 = !DILocation(line: 245, column: 20, scope: !752)
!761 = !DILocation(line: 245, column: 3, scope: !752)
!762 = !DILocation(line: 245, column: 10, scope: !752)
!763 = !DILocation(line: 245, column: 15, scope: !752)
!764 = !DILocation(line: 245, column: 18, scope: !752)
!765 = !DILocation(line: 246, column: 2, scope: !752)
!766 = !DILocation(line: 243, column: 36, scope: !746)
!767 = !DILocation(line: 243, column: 2, scope: !746)
!768 = distinct !{!768, !750, !769}
!769 = !DILocation(line: 246, column: 2, scope: !743)
!770 = !DILocation(line: 247, column: 8, scope: !686)
!771 = !DILocation(line: 247, column: 15, scope: !686)
!772 = !DILocation(line: 247, column: 24, scope: !686)
!773 = !DILocation(line: 247, column: 31, scope: !686)
!774 = !DILocation(line: 247, column: 2, scope: !686)
!775 = !DILocation(line: 248, column: 8, scope: !686)
!776 = !DILocation(line: 248, column: 15, scope: !686)
!777 = !DILocation(line: 248, column: 2, scope: !686)
!778 = !DILocation(line: 250, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !686, file: !3, line: 250, column: 2)
!780 = !DILocation(line: 250, column: 7, scope: !779)
!781 = !DILocation(line: 250, column: 14, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !3, line: 250, column: 2)
!783 = !DILocation(line: 250, column: 18, scope: !782)
!784 = !DILocation(line: 250, column: 25, scope: !782)
!785 = !DILocation(line: 250, column: 16, scope: !782)
!786 = !DILocation(line: 250, column: 2, scope: !779)
!787 = !DILocation(line: 251, column: 28, scope: !782)
!788 = !DILocation(line: 251, column: 35, scope: !782)
!789 = !DILocation(line: 251, column: 44, scope: !782)
!790 = !DILocation(line: 251, column: 19, scope: !782)
!791 = !DILocation(line: 251, column: 3, scope: !782)
!792 = !DILocation(line: 251, column: 10, scope: !782)
!793 = !DILocation(line: 251, column: 14, scope: !782)
!794 = !DILocation(line: 251, column: 17, scope: !782)
!795 = !DILocation(line: 250, column: 35, scope: !782)
!796 = !DILocation(line: 250, column: 2, scope: !782)
!797 = distinct !{!797, !786, !798}
!798 = !DILocation(line: 251, column: 45, scope: !779)
!799 = !DILocation(line: 253, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !686, file: !3, line: 253, column: 2)
!801 = !DILocation(line: 253, column: 7, scope: !800)
!802 = !DILocation(line: 253, column: 14, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 253, column: 2)
!804 = !DILocation(line: 253, column: 18, scope: !803)
!805 = !DILocation(line: 253, column: 25, scope: !803)
!806 = !DILocation(line: 253, column: 16, scope: !803)
!807 = !DILocation(line: 253, column: 2, scope: !800)
!808 = !DILocation(line: 254, column: 28, scope: !803)
!809 = !DILocation(line: 254, column: 35, scope: !803)
!810 = !DILocation(line: 254, column: 44, scope: !803)
!811 = !DILocation(line: 254, column: 19, scope: !803)
!812 = !DILocation(line: 254, column: 3, scope: !803)
!813 = !DILocation(line: 254, column: 10, scope: !803)
!814 = !DILocation(line: 254, column: 14, scope: !803)
!815 = !DILocation(line: 254, column: 17, scope: !803)
!816 = !DILocation(line: 253, column: 35, scope: !803)
!817 = !DILocation(line: 253, column: 2, scope: !803)
!818 = distinct !{!818, !807, !819}
!819 = !DILocation(line: 254, column: 45, scope: !800)
!820 = !DILocation(line: 255, column: 1, scope: !686)
!821 = distinct !DISubprogram(name: "save_vga_text", scope: !3, file: !3, line: 48, type: !822, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !68, !16}
!824 = !DILocalVariable(name: "state", arg: 1, scope: !821, file: !3, line: 48, type: !68)
!825 = !DILocation(line: 48, column: 44, scope: !821)
!826 = !DILocalVariable(name: "fbbase", arg: 2, scope: !821, file: !3, line: 48, type: !16)
!827 = !DILocation(line: 48, column: 65, scope: !821)
!828 = !DILocalVariable(name: "saved", scope: !821, file: !3, line: 50, type: !17)
!829 = !DILocation(line: 50, column: 19, scope: !821)
!830 = !DILocation(line: 50, column: 47, scope: !821)
!831 = !DILocation(line: 50, column: 54, scope: !821)
!832 = !DILocation(line: 50, column: 27, scope: !821)
!833 = !DILocalVariable(name: "i", scope: !821, file: !3, line: 51, type: !67)
!834 = !DILocation(line: 51, column: 6, scope: !821)
!835 = !DILocalVariable(name: "misc", scope: !821, file: !3, line: 52, type: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !837, line: 17, baseType: !22)
!837 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!838 = !DILocation(line: 52, column: 5, scope: !821)
!839 = !DILocalVariable(name: "attr10", scope: !821, file: !3, line: 52, type: !836)
!840 = !DILocation(line: 52, column: 11, scope: !821)
!841 = !DILocalVariable(name: "gr4", scope: !821, file: !3, line: 52, type: !836)
!842 = !DILocation(line: 52, column: 19, scope: !821)
!843 = !DILocalVariable(name: "gr5", scope: !821, file: !3, line: 52, type: !836)
!844 = !DILocation(line: 52, column: 24, scope: !821)
!845 = !DILocalVariable(name: "gr6", scope: !821, file: !3, line: 52, type: !836)
!846 = !DILocation(line: 52, column: 29, scope: !821)
!847 = !DILocalVariable(name: "seq1", scope: !821, file: !3, line: 52, type: !836)
!848 = !DILocation(line: 52, column: 34, scope: !821)
!849 = !DILocalVariable(name: "seq2", scope: !821, file: !3, line: 52, type: !836)
!850 = !DILocation(line: 52, column: 40, scope: !821)
!851 = !DILocalVariable(name: "seq4", scope: !821, file: !3, line: 52, type: !836)
!852 = !DILocation(line: 52, column: 46, scope: !821)
!853 = !DILocalVariable(name: "iobase", scope: !821, file: !3, line: 53, type: !37)
!854 = !DILocation(line: 53, column: 17, scope: !821)
!855 = !DILocation(line: 56, column: 15, scope: !821)
!856 = !DILocation(line: 56, column: 22, scope: !821)
!857 = !DILocation(line: 56, column: 9, scope: !821)
!858 = !DILocation(line: 56, column: 7, scope: !821)
!859 = !DILocation(line: 57, column: 12, scope: !821)
!860 = !DILocation(line: 57, column: 17, scope: !821)
!861 = !DILocation(line: 57, column: 11, scope: !821)
!862 = !DILocation(line: 57, column: 9, scope: !821)
!863 = !DILocation(line: 59, column: 8, scope: !821)
!864 = !DILocation(line: 59, column: 15, scope: !821)
!865 = !DILocation(line: 59, column: 24, scope: !821)
!866 = !DILocation(line: 59, column: 31, scope: !821)
!867 = !DILocation(line: 59, column: 2, scope: !821)
!868 = !DILocation(line: 60, column: 8, scope: !821)
!869 = !DILocation(line: 60, column: 15, scope: !821)
!870 = !DILocation(line: 60, column: 2, scope: !821)
!871 = !DILocation(line: 61, column: 21, scope: !821)
!872 = !DILocation(line: 61, column: 28, scope: !821)
!873 = !DILocation(line: 61, column: 11, scope: !821)
!874 = !DILocation(line: 61, column: 9, scope: !821)
!875 = !DILocation(line: 62, column: 8, scope: !821)
!876 = !DILocation(line: 62, column: 15, scope: !821)
!877 = !DILocation(line: 62, column: 24, scope: !821)
!878 = !DILocation(line: 62, column: 31, scope: !821)
!879 = !DILocation(line: 62, column: 2, scope: !821)
!880 = !DILocation(line: 63, column: 8, scope: !821)
!881 = !DILocation(line: 63, column: 15, scope: !821)
!882 = !DILocation(line: 63, column: 2, scope: !821)
!883 = !DILocation(line: 65, column: 6, scope: !884)
!884 = distinct !DILexicalBlock(scope: !821, file: !3, line: 65, column: 6)
!885 = !DILocation(line: 65, column: 13, scope: !884)
!886 = !DILocation(line: 65, column: 6, scope: !821)
!887 = !DILocation(line: 66, column: 3, scope: !884)
!888 = !DILocation(line: 69, column: 17, scope: !821)
!889 = !DILocation(line: 69, column: 24, scope: !821)
!890 = !DILocation(line: 69, column: 8, scope: !821)
!891 = !DILocation(line: 69, column: 6, scope: !821)
!892 = !DILocation(line: 70, column: 17, scope: !821)
!893 = !DILocation(line: 70, column: 24, scope: !821)
!894 = !DILocation(line: 70, column: 8, scope: !821)
!895 = !DILocation(line: 70, column: 6, scope: !821)
!896 = !DILocation(line: 71, column: 17, scope: !821)
!897 = !DILocation(line: 71, column: 24, scope: !821)
!898 = !DILocation(line: 71, column: 8, scope: !821)
!899 = !DILocation(line: 71, column: 6, scope: !821)
!900 = !DILocation(line: 72, column: 18, scope: !821)
!901 = !DILocation(line: 72, column: 25, scope: !821)
!902 = !DILocation(line: 72, column: 9, scope: !821)
!903 = !DILocation(line: 72, column: 7, scope: !821)
!904 = !DILocation(line: 73, column: 18, scope: !821)
!905 = !DILocation(line: 73, column: 25, scope: !821)
!906 = !DILocation(line: 73, column: 9, scope: !821)
!907 = !DILocation(line: 73, column: 7, scope: !821)
!908 = !DILocation(line: 76, column: 18, scope: !821)
!909 = !DILocation(line: 76, column: 25, scope: !821)
!910 = !DILocation(line: 76, column: 9, scope: !821)
!911 = !DILocation(line: 76, column: 7, scope: !821)
!912 = !DILocation(line: 77, column: 11, scope: !821)
!913 = !DILocation(line: 77, column: 18, scope: !821)
!914 = !DILocation(line: 77, column: 2, scope: !821)
!915 = !DILocation(line: 78, column: 11, scope: !821)
!916 = !DILocation(line: 78, column: 18, scope: !821)
!917 = !DILocation(line: 78, column: 47, scope: !821)
!918 = !DILocation(line: 78, column: 52, scope: !821)
!919 = !DILocation(line: 78, column: 2, scope: !821)
!920 = !DILocation(line: 79, column: 11, scope: !821)
!921 = !DILocation(line: 79, column: 18, scope: !821)
!922 = !DILocation(line: 79, column: 2, scope: !821)
!923 = !DILocation(line: 82, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !821, file: !3, line: 82, column: 6)
!925 = !DILocation(line: 82, column: 13, scope: !924)
!926 = !DILocation(line: 82, column: 19, scope: !924)
!927 = !DILocation(line: 82, column: 6, scope: !821)
!928 = !DILocation(line: 83, column: 12, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 82, column: 37)
!930 = !DILocation(line: 83, column: 19, scope: !929)
!931 = !DILocation(line: 83, column: 3, scope: !929)
!932 = !DILocation(line: 84, column: 12, scope: !929)
!933 = !DILocation(line: 84, column: 19, scope: !929)
!934 = !DILocation(line: 84, column: 3, scope: !929)
!935 = !DILocation(line: 85, column: 12, scope: !929)
!936 = !DILocation(line: 85, column: 19, scope: !929)
!937 = !DILocation(line: 85, column: 3, scope: !929)
!938 = !DILocation(line: 86, column: 12, scope: !929)
!939 = !DILocation(line: 86, column: 19, scope: !929)
!940 = !DILocation(line: 86, column: 3, scope: !929)
!941 = !DILocation(line: 87, column: 12, scope: !929)
!942 = !DILocation(line: 87, column: 19, scope: !929)
!943 = !DILocation(line: 87, column: 3, scope: !929)
!944 = !DILocation(line: 88, column: 10, scope: !945)
!945 = distinct !DILexicalBlock(scope: !929, file: !3, line: 88, column: 3)
!946 = !DILocation(line: 88, column: 8, scope: !945)
!947 = !DILocation(line: 88, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 88, column: 3)
!949 = !DILocation(line: 88, column: 17, scope: !948)
!950 = !DILocation(line: 88, column: 3, scope: !945)
!951 = !DILocation(line: 89, column: 32, scope: !948)
!952 = !DILocation(line: 89, column: 40, scope: !948)
!953 = !DILocation(line: 89, column: 26, scope: !948)
!954 = !DILocation(line: 89, column: 4, scope: !948)
!955 = !DILocation(line: 89, column: 11, scope: !948)
!956 = !DILocation(line: 89, column: 21, scope: !948)
!957 = !DILocation(line: 89, column: 24, scope: !948)
!958 = !DILocation(line: 88, column: 30, scope: !948)
!959 = !DILocation(line: 88, column: 3, scope: !948)
!960 = distinct !{!960, !950, !961}
!961 = !DILocation(line: 89, column: 41, scope: !945)
!962 = !DILocation(line: 90, column: 2, scope: !929)
!963 = !DILocation(line: 93, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !821, file: !3, line: 93, column: 6)
!965 = !DILocation(line: 93, column: 13, scope: !964)
!966 = !DILocation(line: 93, column: 19, scope: !964)
!967 = !DILocation(line: 93, column: 6, scope: !821)
!968 = !DILocation(line: 94, column: 12, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 93, column: 37)
!970 = !DILocation(line: 94, column: 19, scope: !969)
!971 = !DILocation(line: 94, column: 3, scope: !969)
!972 = !DILocation(line: 95, column: 12, scope: !969)
!973 = !DILocation(line: 95, column: 19, scope: !969)
!974 = !DILocation(line: 95, column: 3, scope: !969)
!975 = !DILocation(line: 96, column: 12, scope: !969)
!976 = !DILocation(line: 96, column: 19, scope: !969)
!977 = !DILocation(line: 96, column: 3, scope: !969)
!978 = !DILocation(line: 97, column: 12, scope: !969)
!979 = !DILocation(line: 97, column: 19, scope: !969)
!980 = !DILocation(line: 97, column: 3, scope: !969)
!981 = !DILocation(line: 98, column: 12, scope: !969)
!982 = !DILocation(line: 98, column: 19, scope: !969)
!983 = !DILocation(line: 98, column: 3, scope: !969)
!984 = !DILocation(line: 99, column: 10, scope: !985)
!985 = distinct !DILexicalBlock(scope: !969, file: !3, line: 99, column: 3)
!986 = !DILocation(line: 99, column: 8, scope: !985)
!987 = !DILocation(line: 99, column: 15, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 99, column: 3)
!989 = !DILocation(line: 99, column: 19, scope: !988)
!990 = !DILocation(line: 99, column: 26, scope: !988)
!991 = !DILocation(line: 99, column: 17, scope: !988)
!992 = !DILocation(line: 99, column: 3, scope: !985)
!993 = !DILocation(line: 100, column: 32, scope: !988)
!994 = !DILocation(line: 100, column: 40, scope: !988)
!995 = !DILocation(line: 100, column: 26, scope: !988)
!996 = !DILocation(line: 100, column: 4, scope: !988)
!997 = !DILocation(line: 100, column: 11, scope: !988)
!998 = !DILocation(line: 100, column: 21, scope: !988)
!999 = !DILocation(line: 100, column: 24, scope: !988)
!1000 = !DILocation(line: 99, column: 36, scope: !988)
!1001 = !DILocation(line: 99, column: 3, scope: !988)
!1002 = distinct !{!1002, !992, !1003}
!1003 = !DILocation(line: 100, column: 41, scope: !985)
!1004 = !DILocation(line: 101, column: 2, scope: !969)
!1005 = !DILocation(line: 104, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !821, file: !3, line: 104, column: 6)
!1007 = !DILocation(line: 104, column: 13, scope: !1006)
!1008 = !DILocation(line: 104, column: 19, scope: !1006)
!1009 = !DILocation(line: 104, column: 6, scope: !821)
!1010 = !DILocation(line: 105, column: 12, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 104, column: 36)
!1012 = !DILocation(line: 105, column: 19, scope: !1011)
!1013 = !DILocation(line: 105, column: 3, scope: !1011)
!1014 = !DILocation(line: 106, column: 12, scope: !1011)
!1015 = !DILocation(line: 106, column: 19, scope: !1011)
!1016 = !DILocation(line: 106, column: 3, scope: !1011)
!1017 = !DILocation(line: 107, column: 12, scope: !1011)
!1018 = !DILocation(line: 107, column: 19, scope: !1011)
!1019 = !DILocation(line: 107, column: 3, scope: !1011)
!1020 = !DILocation(line: 108, column: 12, scope: !1011)
!1021 = !DILocation(line: 108, column: 19, scope: !1011)
!1022 = !DILocation(line: 108, column: 3, scope: !1011)
!1023 = !DILocation(line: 109, column: 12, scope: !1011)
!1024 = !DILocation(line: 109, column: 19, scope: !1011)
!1025 = !DILocation(line: 109, column: 3, scope: !1011)
!1026 = !DILocation(line: 110, column: 10, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 110, column: 3)
!1028 = !DILocation(line: 110, column: 8, scope: !1027)
!1029 = !DILocation(line: 110, column: 15, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 110, column: 3)
!1031 = !DILocation(line: 110, column: 17, scope: !1030)
!1032 = !DILocation(line: 110, column: 3, scope: !1027)
!1033 = !DILocation(line: 111, column: 31, scope: !1030)
!1034 = !DILocation(line: 111, column: 39, scope: !1030)
!1035 = !DILocation(line: 111, column: 25, scope: !1030)
!1036 = !DILocation(line: 111, column: 4, scope: !1030)
!1037 = !DILocation(line: 111, column: 11, scope: !1030)
!1038 = !DILocation(line: 111, column: 20, scope: !1030)
!1039 = !DILocation(line: 111, column: 23, scope: !1030)
!1040 = !DILocation(line: 110, column: 26, scope: !1030)
!1041 = !DILocation(line: 110, column: 3, scope: !1030)
!1042 = distinct !{!1042, !1032, !1043}
!1043 = !DILocation(line: 111, column: 40, scope: !1027)
!1044 = !DILocation(line: 113, column: 12, scope: !1011)
!1045 = !DILocation(line: 113, column: 19, scope: !1011)
!1046 = !DILocation(line: 113, column: 3, scope: !1011)
!1047 = !DILocation(line: 114, column: 12, scope: !1011)
!1048 = !DILocation(line: 114, column: 19, scope: !1011)
!1049 = !DILocation(line: 114, column: 3, scope: !1011)
!1050 = !DILocation(line: 115, column: 12, scope: !1011)
!1051 = !DILocation(line: 115, column: 19, scope: !1011)
!1052 = !DILocation(line: 115, column: 3, scope: !1011)
!1053 = !DILocation(line: 116, column: 12, scope: !1011)
!1054 = !DILocation(line: 116, column: 19, scope: !1011)
!1055 = !DILocation(line: 116, column: 3, scope: !1011)
!1056 = !DILocation(line: 117, column: 12, scope: !1011)
!1057 = !DILocation(line: 117, column: 19, scope: !1011)
!1058 = !DILocation(line: 117, column: 3, scope: !1011)
!1059 = !DILocation(line: 118, column: 10, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 118, column: 3)
!1061 = !DILocation(line: 118, column: 8, scope: !1060)
!1062 = !DILocation(line: 118, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 118, column: 3)
!1064 = !DILocation(line: 118, column: 17, scope: !1063)
!1065 = !DILocation(line: 118, column: 3, scope: !1060)
!1066 = !DILocation(line: 119, column: 36, scope: !1063)
!1067 = !DILocation(line: 119, column: 43, scope: !1063)
!1068 = !DILocation(line: 119, column: 55, scope: !1063)
!1069 = !DILocation(line: 119, column: 30, scope: !1063)
!1070 = !DILocation(line: 119, column: 4, scope: !1063)
!1071 = !DILocation(line: 119, column: 11, scope: !1063)
!1072 = !DILocation(line: 119, column: 25, scope: !1063)
!1073 = !DILocation(line: 119, column: 24, scope: !1063)
!1074 = !DILocation(line: 119, column: 28, scope: !1063)
!1075 = !DILocation(line: 118, column: 26, scope: !1063)
!1076 = !DILocation(line: 118, column: 3, scope: !1063)
!1077 = distinct !{!1077, !1065, !1078}
!1078 = !DILocation(line: 119, column: 56, scope: !1060)
!1079 = !DILocation(line: 120, column: 2, scope: !1011)
!1080 = !DILocation(line: 123, column: 11, scope: !821)
!1081 = !DILocation(line: 123, column: 18, scope: !821)
!1082 = !DILocation(line: 123, column: 48, scope: !821)
!1083 = !DILocation(line: 123, column: 2, scope: !821)
!1084 = !DILocation(line: 124, column: 11, scope: !821)
!1085 = !DILocation(line: 124, column: 18, scope: !821)
!1086 = !DILocation(line: 124, column: 48, scope: !821)
!1087 = !DILocation(line: 124, column: 2, scope: !821)
!1088 = !DILocation(line: 126, column: 11, scope: !821)
!1089 = !DILocation(line: 126, column: 18, scope: !821)
!1090 = !DILocation(line: 126, column: 47, scope: !821)
!1091 = !DILocation(line: 126, column: 2, scope: !821)
!1092 = !DILocation(line: 127, column: 11, scope: !821)
!1093 = !DILocation(line: 127, column: 18, scope: !821)
!1094 = !DILocation(line: 127, column: 41, scope: !821)
!1095 = !DILocation(line: 127, column: 2, scope: !821)
!1096 = !DILocation(line: 128, column: 11, scope: !821)
!1097 = !DILocation(line: 128, column: 18, scope: !821)
!1098 = !DILocation(line: 128, column: 41, scope: !821)
!1099 = !DILocation(line: 128, column: 2, scope: !821)
!1100 = !DILocation(line: 131, column: 11, scope: !821)
!1101 = !DILocation(line: 131, column: 18, scope: !821)
!1102 = !DILocation(line: 131, column: 2, scope: !821)
!1103 = !DILocation(line: 132, column: 11, scope: !821)
!1104 = !DILocation(line: 132, column: 18, scope: !821)
!1105 = !DILocation(line: 132, column: 47, scope: !821)
!1106 = !DILocation(line: 132, column: 52, scope: !821)
!1107 = !DILocation(line: 132, column: 2, scope: !821)
!1108 = !DILocation(line: 133, column: 11, scope: !821)
!1109 = !DILocation(line: 133, column: 18, scope: !821)
!1110 = !DILocation(line: 133, column: 2, scope: !821)
!1111 = !DILocation(line: 135, column: 11, scope: !821)
!1112 = !DILocation(line: 135, column: 18, scope: !821)
!1113 = !DILocation(line: 135, column: 47, scope: !821)
!1114 = !DILocation(line: 135, column: 2, scope: !821)
!1115 = !DILocation(line: 136, column: 1, scope: !821)
!1116 = distinct !DISubprogram(name: "restore_vga", scope: !3, file: !3, line: 458, type: !65, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1117 = !DILocalVariable(name: "state", arg: 1, scope: !1116, file: !3, line: 458, type: !68)
!1118 = !DILocation(line: 458, column: 34, scope: !1116)
!1119 = !DILocation(line: 460, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 460, column: 6)
!1121 = !DILocation(line: 460, column: 13, scope: !1120)
!1122 = !DILocation(line: 460, column: 22, scope: !1120)
!1123 = !DILocation(line: 460, column: 6, scope: !1116)
!1124 = !DILocation(line: 461, column: 3, scope: !1120)
!1125 = !DILocation(line: 463, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 463, column: 6)
!1127 = !DILocation(line: 463, column: 13, scope: !1126)
!1128 = !DILocation(line: 463, column: 19, scope: !1126)
!1129 = !DILocation(line: 463, column: 6, scope: !1116)
!1130 = !DILocation(line: 464, column: 20, scope: !1126)
!1131 = !DILocation(line: 464, column: 3, scope: !1126)
!1132 = !DILocation(line: 466, column: 6, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 466, column: 6)
!1134 = !DILocation(line: 466, column: 13, scope: !1133)
!1135 = !DILocation(line: 466, column: 19, scope: !1133)
!1136 = !DILocation(line: 466, column: 6, scope: !1116)
!1137 = !DILocalVariable(name: "fbbase", scope: !1138, file: !3, line: 467, type: !16)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 466, column: 37)
!1139 = !DILocation(line: 467, column: 17, scope: !1138)
!1140 = !DILocation(line: 467, column: 34, scope: !1138)
!1141 = !DILocation(line: 467, column: 41, scope: !1138)
!1142 = !DILocation(line: 467, column: 50, scope: !1138)
!1143 = !DILocation(line: 467, column: 57, scope: !1138)
!1144 = !DILocation(line: 467, column: 26, scope: !1138)
!1145 = !DILocation(line: 469, column: 8, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 469, column: 7)
!1147 = !DILocation(line: 469, column: 7, scope: !1138)
!1148 = !DILocation(line: 470, column: 16, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 469, column: 16)
!1150 = !DILocation(line: 470, column: 4, scope: !1149)
!1151 = !DILocation(line: 471, column: 4, scope: !1149)
!1152 = !DILocation(line: 473, column: 20, scope: !1138)
!1153 = !DILocation(line: 473, column: 27, scope: !1138)
!1154 = !DILocation(line: 473, column: 3, scope: !1138)
!1155 = !DILocation(line: 474, column: 11, scope: !1138)
!1156 = !DILocation(line: 474, column: 3, scope: !1138)
!1157 = !DILocation(line: 475, column: 2, scope: !1138)
!1158 = !DILocation(line: 477, column: 6, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 477, column: 6)
!1160 = !DILocation(line: 477, column: 13, scope: !1159)
!1161 = !DILocation(line: 477, column: 19, scope: !1159)
!1162 = !DILocation(line: 477, column: 6, scope: !1116)
!1163 = !DILocation(line: 478, column: 20, scope: !1159)
!1164 = !DILocation(line: 478, column: 3, scope: !1159)
!1165 = !DILocation(line: 480, column: 14, scope: !1116)
!1166 = !DILocation(line: 480, column: 2, scope: !1116)
!1167 = !DILocation(line: 481, column: 2, scope: !1116)
!1168 = !DILocation(line: 482, column: 1, scope: !1116)
!1169 = distinct !DISubprogram(name: "restore_vga_mode", scope: !3, file: !3, line: 257, type: !614, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1170 = !DILocalVariable(name: "state", arg: 1, scope: !1169, file: !3, line: 257, type: !68)
!1171 = !DILocation(line: 257, column: 47, scope: !1169)
!1172 = !DILocalVariable(name: "saved", scope: !1169, file: !3, line: 259, type: !17)
!1173 = !DILocation(line: 259, column: 19, scope: !1169)
!1174 = !DILocation(line: 259, column: 47, scope: !1169)
!1175 = !DILocation(line: 259, column: 54, scope: !1169)
!1176 = !DILocation(line: 259, column: 27, scope: !1169)
!1177 = !DILocalVariable(name: "iobase", scope: !1169, file: !3, line: 260, type: !37)
!1178 = !DILocation(line: 260, column: 17, scope: !1169)
!1179 = !DILocalVariable(name: "i", scope: !1169, file: !3, line: 261, type: !67)
!1180 = !DILocation(line: 261, column: 6, scope: !1169)
!1181 = !DILocation(line: 263, column: 8, scope: !1169)
!1182 = !DILocation(line: 263, column: 15, scope: !1169)
!1183 = !DILocation(line: 263, column: 35, scope: !1169)
!1184 = !DILocation(line: 263, column: 42, scope: !1169)
!1185 = !DILocation(line: 263, column: 2, scope: !1169)
!1186 = !DILocation(line: 265, column: 6, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 265, column: 6)
!1188 = !DILocation(line: 265, column: 13, scope: !1187)
!1189 = !DILocation(line: 265, column: 18, scope: !1187)
!1190 = !DILocation(line: 265, column: 6, scope: !1169)
!1191 = !DILocation(line: 266, column: 10, scope: !1187)
!1192 = !DILocation(line: 266, column: 3, scope: !1187)
!1193 = !DILocation(line: 268, column: 10, scope: !1187)
!1194 = !DILocation(line: 271, column: 11, scope: !1169)
!1195 = !DILocation(line: 271, column: 18, scope: !1169)
!1196 = !DILocation(line: 272, column: 4, scope: !1169)
!1197 = !DILocation(line: 272, column: 11, scope: !1169)
!1198 = !DILocation(line: 272, column: 35, scope: !1169)
!1199 = !DILocation(line: 271, column: 2, scope: !1169)
!1200 = !DILocation(line: 275, column: 11, scope: !1169)
!1201 = !DILocation(line: 275, column: 18, scope: !1169)
!1202 = !DILocation(line: 275, column: 2, scope: !1169)
!1203 = !DILocation(line: 278, column: 8, scope: !1169)
!1204 = !DILocation(line: 278, column: 15, scope: !1169)
!1205 = !DILocation(line: 278, column: 24, scope: !1169)
!1206 = !DILocation(line: 278, column: 31, scope: !1169)
!1207 = !DILocation(line: 278, column: 2, scope: !1169)
!1208 = !DILocation(line: 279, column: 8, scope: !1169)
!1209 = !DILocation(line: 279, column: 15, scope: !1169)
!1210 = !DILocation(line: 279, column: 2, scope: !1169)
!1211 = !DILocation(line: 281, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 281, column: 2)
!1213 = !DILocation(line: 281, column: 7, scope: !1212)
!1214 = !DILocation(line: 281, column: 14, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 281, column: 2)
!1216 = !DILocation(line: 281, column: 18, scope: !1215)
!1217 = !DILocation(line: 281, column: 25, scope: !1215)
!1218 = !DILocation(line: 281, column: 16, scope: !1215)
!1219 = !DILocation(line: 281, column: 2, scope: !1212)
!1220 = !DILocation(line: 282, column: 12, scope: !1215)
!1221 = !DILocation(line: 282, column: 19, scope: !1215)
!1222 = !DILocation(line: 282, column: 28, scope: !1215)
!1223 = !DILocation(line: 282, column: 31, scope: !1215)
!1224 = !DILocation(line: 282, column: 38, scope: !1215)
!1225 = !DILocation(line: 282, column: 42, scope: !1215)
!1226 = !DILocation(line: 282, column: 3, scope: !1215)
!1227 = !DILocation(line: 281, column: 35, scope: !1215)
!1228 = !DILocation(line: 281, column: 2, scope: !1215)
!1229 = distinct !{!1229, !1219, !1230}
!1230 = !DILocation(line: 282, column: 44, scope: !1212)
!1231 = !DILocation(line: 286, column: 13, scope: !1169)
!1232 = !DILocation(line: 286, column: 20, scope: !1169)
!1233 = !DILocation(line: 286, column: 29, scope: !1169)
!1234 = !DILocation(line: 286, column: 41, scope: !1169)
!1235 = !DILocation(line: 286, column: 48, scope: !1169)
!1236 = !DILocation(line: 286, column: 57, scope: !1169)
!1237 = !DILocation(line: 286, column: 2, scope: !1169)
!1238 = !DILocation(line: 287, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 287, column: 2)
!1240 = !DILocation(line: 287, column: 7, scope: !1239)
!1241 = !DILocation(line: 287, column: 14, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 287, column: 2)
!1243 = !DILocation(line: 287, column: 18, scope: !1242)
!1244 = !DILocation(line: 287, column: 25, scope: !1242)
!1245 = !DILocation(line: 287, column: 16, scope: !1242)
!1246 = !DILocation(line: 287, column: 2, scope: !1239)
!1247 = !DILocation(line: 288, column: 14, scope: !1242)
!1248 = !DILocation(line: 288, column: 21, scope: !1242)
!1249 = !DILocation(line: 288, column: 30, scope: !1242)
!1250 = !DILocation(line: 288, column: 38, scope: !1242)
!1251 = !DILocation(line: 288, column: 41, scope: !1242)
!1252 = !DILocation(line: 288, column: 48, scope: !1242)
!1253 = !DILocation(line: 288, column: 53, scope: !1242)
!1254 = !DILocation(line: 288, column: 3, scope: !1242)
!1255 = !DILocation(line: 287, column: 36, scope: !1242)
!1256 = !DILocation(line: 287, column: 2, scope: !1242)
!1257 = distinct !{!1257, !1246, !1258}
!1258 = !DILocation(line: 288, column: 55, scope: !1239)
!1259 = !DILocation(line: 290, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 290, column: 2)
!1261 = !DILocation(line: 290, column: 7, scope: !1260)
!1262 = !DILocation(line: 290, column: 14, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 290, column: 2)
!1264 = !DILocation(line: 290, column: 18, scope: !1263)
!1265 = !DILocation(line: 290, column: 25, scope: !1263)
!1266 = !DILocation(line: 290, column: 16, scope: !1263)
!1267 = !DILocation(line: 290, column: 2, scope: !1260)
!1268 = !DILocation(line: 291, column: 12, scope: !1263)
!1269 = !DILocation(line: 291, column: 19, scope: !1263)
!1270 = !DILocation(line: 291, column: 28, scope: !1263)
!1271 = !DILocation(line: 291, column: 31, scope: !1263)
!1272 = !DILocation(line: 291, column: 38, scope: !1263)
!1273 = !DILocation(line: 291, column: 42, scope: !1263)
!1274 = !DILocation(line: 291, column: 3, scope: !1263)
!1275 = !DILocation(line: 290, column: 35, scope: !1263)
!1276 = !DILocation(line: 290, column: 2, scope: !1263)
!1277 = distinct !{!1277, !1267, !1278}
!1278 = !DILocation(line: 291, column: 44, scope: !1260)
!1279 = !DILocation(line: 293, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 293, column: 2)
!1281 = !DILocation(line: 293, column: 7, scope: !1280)
!1282 = !DILocation(line: 293, column: 14, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 293, column: 2)
!1284 = !DILocation(line: 293, column: 18, scope: !1283)
!1285 = !DILocation(line: 293, column: 25, scope: !1283)
!1286 = !DILocation(line: 293, column: 16, scope: !1283)
!1287 = !DILocation(line: 293, column: 2, scope: !1280)
!1288 = !DILocation(line: 294, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 293, column: 40)
!1290 = !DILocation(line: 294, column: 16, scope: !1289)
!1291 = !DILocation(line: 294, column: 25, scope: !1289)
!1292 = !DILocation(line: 294, column: 32, scope: !1289)
!1293 = !DILocation(line: 294, column: 3, scope: !1289)
!1294 = !DILocation(line: 295, column: 13, scope: !1289)
!1295 = !DILocation(line: 295, column: 20, scope: !1289)
!1296 = !DILocation(line: 295, column: 29, scope: !1289)
!1297 = !DILocation(line: 295, column: 32, scope: !1289)
!1298 = !DILocation(line: 295, column: 39, scope: !1289)
!1299 = !DILocation(line: 295, column: 44, scope: !1289)
!1300 = !DILocation(line: 295, column: 3, scope: !1289)
!1301 = !DILocation(line: 296, column: 2, scope: !1289)
!1302 = !DILocation(line: 293, column: 36, scope: !1283)
!1303 = !DILocation(line: 293, column: 2, scope: !1283)
!1304 = distinct !{!1304, !1287, !1305}
!1305 = !DILocation(line: 296, column: 2, scope: !1280)
!1306 = !DILocation(line: 299, column: 11, scope: !1169)
!1307 = !DILocation(line: 299, column: 18, scope: !1169)
!1308 = !DILocation(line: 299, column: 2, scope: !1169)
!1309 = !DILocation(line: 301, column: 11, scope: !1169)
!1310 = !DILocation(line: 301, column: 18, scope: !1169)
!1311 = !DILocation(line: 302, column: 4, scope: !1169)
!1312 = !DILocation(line: 302, column: 11, scope: !1169)
!1313 = !DILocation(line: 302, column: 35, scope: !1169)
!1314 = !DILocation(line: 301, column: 2, scope: !1169)
!1315 = !DILocation(line: 305, column: 8, scope: !1169)
!1316 = !DILocation(line: 305, column: 15, scope: !1169)
!1317 = !DILocation(line: 305, column: 24, scope: !1169)
!1318 = !DILocation(line: 305, column: 31, scope: !1169)
!1319 = !DILocation(line: 305, column: 2, scope: !1169)
!1320 = !DILocation(line: 306, column: 8, scope: !1169)
!1321 = !DILocation(line: 306, column: 15, scope: !1169)
!1322 = !DILocation(line: 306, column: 2, scope: !1169)
!1323 = !DILocation(line: 307, column: 1, scope: !1169)
!1324 = distinct !DISubprogram(name: "restore_vga_text", scope: !3, file: !3, line: 138, type: !822, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1325 = !DILocalVariable(name: "state", arg: 1, scope: !1324, file: !3, line: 138, type: !68)
!1326 = !DILocation(line: 138, column: 47, scope: !1324)
!1327 = !DILocalVariable(name: "fbbase", arg: 2, scope: !1324, file: !3, line: 138, type: !16)
!1328 = !DILocation(line: 138, column: 68, scope: !1324)
!1329 = !DILocalVariable(name: "saved", scope: !1324, file: !3, line: 140, type: !17)
!1330 = !DILocation(line: 140, column: 19, scope: !1324)
!1331 = !DILocation(line: 140, column: 47, scope: !1324)
!1332 = !DILocation(line: 140, column: 54, scope: !1324)
!1333 = !DILocation(line: 140, column: 27, scope: !1324)
!1334 = !DILocalVariable(name: "i", scope: !1324, file: !3, line: 141, type: !67)
!1335 = !DILocation(line: 141, column: 6, scope: !1324)
!1336 = !DILocalVariable(name: "gr1", scope: !1324, file: !3, line: 142, type: !836)
!1337 = !DILocation(line: 142, column: 5, scope: !1324)
!1338 = !DILocalVariable(name: "gr3", scope: !1324, file: !3, line: 142, type: !836)
!1339 = !DILocation(line: 142, column: 10, scope: !1324)
!1340 = !DILocalVariable(name: "gr4", scope: !1324, file: !3, line: 142, type: !836)
!1341 = !DILocation(line: 142, column: 15, scope: !1324)
!1342 = !DILocalVariable(name: "gr5", scope: !1324, file: !3, line: 142, type: !836)
!1343 = !DILocation(line: 142, column: 20, scope: !1324)
!1344 = !DILocalVariable(name: "gr6", scope: !1324, file: !3, line: 142, type: !836)
!1345 = !DILocation(line: 142, column: 25, scope: !1324)
!1346 = !DILocalVariable(name: "gr8", scope: !1324, file: !3, line: 142, type: !836)
!1347 = !DILocation(line: 142, column: 30, scope: !1324)
!1348 = !DILocalVariable(name: "seq1", scope: !1324, file: !3, line: 143, type: !836)
!1349 = !DILocation(line: 143, column: 5, scope: !1324)
!1350 = !DILocalVariable(name: "seq2", scope: !1324, file: !3, line: 143, type: !836)
!1351 = !DILocation(line: 143, column: 11, scope: !1324)
!1352 = !DILocalVariable(name: "seq4", scope: !1324, file: !3, line: 143, type: !836)
!1353 = !DILocation(line: 143, column: 17, scope: !1324)
!1354 = !DILocation(line: 146, column: 17, scope: !1324)
!1355 = !DILocation(line: 146, column: 24, scope: !1324)
!1356 = !DILocation(line: 146, column: 8, scope: !1324)
!1357 = !DILocation(line: 146, column: 6, scope: !1324)
!1358 = !DILocation(line: 147, column: 17, scope: !1324)
!1359 = !DILocation(line: 147, column: 24, scope: !1324)
!1360 = !DILocation(line: 147, column: 8, scope: !1324)
!1361 = !DILocation(line: 147, column: 6, scope: !1324)
!1362 = !DILocation(line: 148, column: 17, scope: !1324)
!1363 = !DILocation(line: 148, column: 24, scope: !1324)
!1364 = !DILocation(line: 148, column: 8, scope: !1324)
!1365 = !DILocation(line: 148, column: 6, scope: !1324)
!1366 = !DILocation(line: 149, column: 17, scope: !1324)
!1367 = !DILocation(line: 149, column: 24, scope: !1324)
!1368 = !DILocation(line: 149, column: 8, scope: !1324)
!1369 = !DILocation(line: 149, column: 6, scope: !1324)
!1370 = !DILocation(line: 150, column: 17, scope: !1324)
!1371 = !DILocation(line: 150, column: 24, scope: !1324)
!1372 = !DILocation(line: 150, column: 8, scope: !1324)
!1373 = !DILocation(line: 150, column: 6, scope: !1324)
!1374 = !DILocation(line: 151, column: 17, scope: !1324)
!1375 = !DILocation(line: 151, column: 24, scope: !1324)
!1376 = !DILocation(line: 151, column: 8, scope: !1324)
!1377 = !DILocation(line: 151, column: 6, scope: !1324)
!1378 = !DILocation(line: 152, column: 18, scope: !1324)
!1379 = !DILocation(line: 152, column: 25, scope: !1324)
!1380 = !DILocation(line: 152, column: 9, scope: !1324)
!1381 = !DILocation(line: 152, column: 7, scope: !1324)
!1382 = !DILocation(line: 153, column: 18, scope: !1324)
!1383 = !DILocation(line: 153, column: 25, scope: !1324)
!1384 = !DILocation(line: 153, column: 9, scope: !1324)
!1385 = !DILocation(line: 153, column: 7, scope: !1324)
!1386 = !DILocation(line: 156, column: 18, scope: !1324)
!1387 = !DILocation(line: 156, column: 25, scope: !1324)
!1388 = !DILocation(line: 156, column: 9, scope: !1324)
!1389 = !DILocation(line: 156, column: 7, scope: !1324)
!1390 = !DILocation(line: 157, column: 11, scope: !1324)
!1391 = !DILocation(line: 157, column: 18, scope: !1324)
!1392 = !DILocation(line: 157, column: 2, scope: !1324)
!1393 = !DILocation(line: 158, column: 11, scope: !1324)
!1394 = !DILocation(line: 158, column: 18, scope: !1324)
!1395 = !DILocation(line: 158, column: 47, scope: !1324)
!1396 = !DILocation(line: 158, column: 52, scope: !1324)
!1397 = !DILocation(line: 158, column: 2, scope: !1324)
!1398 = !DILocation(line: 159, column: 11, scope: !1324)
!1399 = !DILocation(line: 159, column: 18, scope: !1324)
!1400 = !DILocation(line: 159, column: 2, scope: !1324)
!1401 = !DILocation(line: 161, column: 6, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 161, column: 6)
!1403 = !DILocation(line: 161, column: 13, scope: !1402)
!1404 = !DILocation(line: 161, column: 19, scope: !1402)
!1405 = !DILocation(line: 161, column: 6, scope: !1324)
!1406 = !DILocation(line: 162, column: 12, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 161, column: 25)
!1408 = !DILocation(line: 162, column: 19, scope: !1407)
!1409 = !DILocation(line: 162, column: 3, scope: !1407)
!1410 = !DILocation(line: 163, column: 12, scope: !1407)
!1411 = !DILocation(line: 163, column: 19, scope: !1407)
!1412 = !DILocation(line: 163, column: 3, scope: !1407)
!1413 = !DILocation(line: 164, column: 12, scope: !1407)
!1414 = !DILocation(line: 164, column: 19, scope: !1407)
!1415 = !DILocation(line: 164, column: 3, scope: !1407)
!1416 = !DILocation(line: 165, column: 2, scope: !1407)
!1417 = !DILocation(line: 168, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 168, column: 6)
!1419 = !DILocation(line: 168, column: 13, scope: !1418)
!1420 = !DILocation(line: 168, column: 19, scope: !1418)
!1421 = !DILocation(line: 168, column: 6, scope: !1324)
!1422 = !DILocation(line: 169, column: 12, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 168, column: 37)
!1424 = !DILocation(line: 169, column: 19, scope: !1423)
!1425 = !DILocation(line: 169, column: 3, scope: !1423)
!1426 = !DILocation(line: 170, column: 12, scope: !1423)
!1427 = !DILocation(line: 170, column: 19, scope: !1423)
!1428 = !DILocation(line: 170, column: 3, scope: !1423)
!1429 = !DILocation(line: 171, column: 12, scope: !1423)
!1430 = !DILocation(line: 171, column: 19, scope: !1423)
!1431 = !DILocation(line: 171, column: 3, scope: !1423)
!1432 = !DILocation(line: 172, column: 12, scope: !1423)
!1433 = !DILocation(line: 172, column: 19, scope: !1423)
!1434 = !DILocation(line: 172, column: 3, scope: !1423)
!1435 = !DILocation(line: 173, column: 12, scope: !1423)
!1436 = !DILocation(line: 173, column: 19, scope: !1423)
!1437 = !DILocation(line: 173, column: 3, scope: !1423)
!1438 = !DILocation(line: 174, column: 10, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 174, column: 3)
!1440 = !DILocation(line: 174, column: 8, scope: !1439)
!1441 = !DILocation(line: 174, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 174, column: 3)
!1443 = !DILocation(line: 174, column: 17, scope: !1442)
!1444 = !DILocation(line: 174, column: 3, scope: !1439)
!1445 = !DILocation(line: 175, column: 10, scope: !1442)
!1446 = !DILocation(line: 175, column: 18, scope: !1442)
!1447 = !DILocation(line: 175, column: 21, scope: !1442)
!1448 = !DILocation(line: 175, column: 28, scope: !1442)
!1449 = !DILocation(line: 175, column: 38, scope: !1442)
!1450 = !DILocation(line: 175, column: 4, scope: !1442)
!1451 = !DILocation(line: 174, column: 30, scope: !1442)
!1452 = !DILocation(line: 174, column: 3, scope: !1442)
!1453 = distinct !{!1453, !1444, !1454}
!1454 = !DILocation(line: 175, column: 40, scope: !1439)
!1455 = !DILocation(line: 176, column: 2, scope: !1423)
!1456 = !DILocation(line: 179, column: 6, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 179, column: 6)
!1458 = !DILocation(line: 179, column: 13, scope: !1457)
!1459 = !DILocation(line: 179, column: 19, scope: !1457)
!1460 = !DILocation(line: 179, column: 6, scope: !1324)
!1461 = !DILocation(line: 180, column: 12, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 179, column: 37)
!1463 = !DILocation(line: 180, column: 19, scope: !1462)
!1464 = !DILocation(line: 180, column: 3, scope: !1462)
!1465 = !DILocation(line: 181, column: 12, scope: !1462)
!1466 = !DILocation(line: 181, column: 19, scope: !1462)
!1467 = !DILocation(line: 181, column: 3, scope: !1462)
!1468 = !DILocation(line: 182, column: 12, scope: !1462)
!1469 = !DILocation(line: 182, column: 19, scope: !1462)
!1470 = !DILocation(line: 182, column: 3, scope: !1462)
!1471 = !DILocation(line: 183, column: 12, scope: !1462)
!1472 = !DILocation(line: 183, column: 19, scope: !1462)
!1473 = !DILocation(line: 183, column: 3, scope: !1462)
!1474 = !DILocation(line: 184, column: 12, scope: !1462)
!1475 = !DILocation(line: 184, column: 19, scope: !1462)
!1476 = !DILocation(line: 184, column: 3, scope: !1462)
!1477 = !DILocation(line: 185, column: 10, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 185, column: 3)
!1479 = !DILocation(line: 185, column: 8, scope: !1478)
!1480 = !DILocation(line: 185, column: 15, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 185, column: 3)
!1482 = !DILocation(line: 185, column: 19, scope: !1481)
!1483 = !DILocation(line: 185, column: 26, scope: !1481)
!1484 = !DILocation(line: 185, column: 17, scope: !1481)
!1485 = !DILocation(line: 185, column: 3, scope: !1478)
!1486 = !DILocation(line: 186, column: 10, scope: !1481)
!1487 = !DILocation(line: 186, column: 18, scope: !1481)
!1488 = !DILocation(line: 186, column: 21, scope: !1481)
!1489 = !DILocation(line: 186, column: 28, scope: !1481)
!1490 = !DILocation(line: 186, column: 38, scope: !1481)
!1491 = !DILocation(line: 186, column: 4, scope: !1481)
!1492 = !DILocation(line: 185, column: 36, scope: !1481)
!1493 = !DILocation(line: 185, column: 3, scope: !1481)
!1494 = distinct !{!1494, !1485, !1495}
!1495 = !DILocation(line: 186, column: 40, scope: !1478)
!1496 = !DILocation(line: 187, column: 2, scope: !1462)
!1497 = !DILocation(line: 190, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 190, column: 6)
!1499 = !DILocation(line: 190, column: 13, scope: !1498)
!1500 = !DILocation(line: 190, column: 19, scope: !1498)
!1501 = !DILocation(line: 190, column: 6, scope: !1324)
!1502 = !DILocation(line: 191, column: 12, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 190, column: 36)
!1504 = !DILocation(line: 191, column: 19, scope: !1503)
!1505 = !DILocation(line: 191, column: 3, scope: !1503)
!1506 = !DILocation(line: 192, column: 12, scope: !1503)
!1507 = !DILocation(line: 192, column: 19, scope: !1503)
!1508 = !DILocation(line: 192, column: 3, scope: !1503)
!1509 = !DILocation(line: 193, column: 12, scope: !1503)
!1510 = !DILocation(line: 193, column: 19, scope: !1503)
!1511 = !DILocation(line: 193, column: 3, scope: !1503)
!1512 = !DILocation(line: 194, column: 12, scope: !1503)
!1513 = !DILocation(line: 194, column: 19, scope: !1503)
!1514 = !DILocation(line: 194, column: 3, scope: !1503)
!1515 = !DILocation(line: 195, column: 12, scope: !1503)
!1516 = !DILocation(line: 195, column: 19, scope: !1503)
!1517 = !DILocation(line: 195, column: 3, scope: !1503)
!1518 = !DILocation(line: 196, column: 10, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 196, column: 3)
!1520 = !DILocation(line: 196, column: 8, scope: !1519)
!1521 = !DILocation(line: 196, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 196, column: 3)
!1523 = !DILocation(line: 196, column: 17, scope: !1522)
!1524 = !DILocation(line: 196, column: 3, scope: !1519)
!1525 = !DILocation(line: 197, column: 10, scope: !1522)
!1526 = !DILocation(line: 197, column: 18, scope: !1522)
!1527 = !DILocation(line: 197, column: 21, scope: !1522)
!1528 = !DILocation(line: 197, column: 28, scope: !1522)
!1529 = !DILocation(line: 197, column: 37, scope: !1522)
!1530 = !DILocation(line: 197, column: 4, scope: !1522)
!1531 = !DILocation(line: 196, column: 26, scope: !1522)
!1532 = !DILocation(line: 196, column: 3, scope: !1522)
!1533 = distinct !{!1533, !1524, !1534}
!1534 = !DILocation(line: 197, column: 39, scope: !1519)
!1535 = !DILocation(line: 199, column: 12, scope: !1503)
!1536 = !DILocation(line: 199, column: 19, scope: !1503)
!1537 = !DILocation(line: 199, column: 3, scope: !1503)
!1538 = !DILocation(line: 200, column: 12, scope: !1503)
!1539 = !DILocation(line: 200, column: 19, scope: !1503)
!1540 = !DILocation(line: 200, column: 3, scope: !1503)
!1541 = !DILocation(line: 201, column: 12, scope: !1503)
!1542 = !DILocation(line: 201, column: 19, scope: !1503)
!1543 = !DILocation(line: 201, column: 3, scope: !1503)
!1544 = !DILocation(line: 202, column: 12, scope: !1503)
!1545 = !DILocation(line: 202, column: 19, scope: !1503)
!1546 = !DILocation(line: 202, column: 3, scope: !1503)
!1547 = !DILocation(line: 203, column: 12, scope: !1503)
!1548 = !DILocation(line: 203, column: 19, scope: !1503)
!1549 = !DILocation(line: 203, column: 3, scope: !1503)
!1550 = !DILocation(line: 204, column: 10, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 204, column: 3)
!1552 = !DILocation(line: 204, column: 8, scope: !1551)
!1553 = !DILocation(line: 204, column: 15, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 204, column: 3)
!1555 = !DILocation(line: 204, column: 17, scope: !1554)
!1556 = !DILocation(line: 204, column: 3, scope: !1551)
!1557 = !DILocation(line: 205, column: 10, scope: !1554)
!1558 = !DILocation(line: 205, column: 18, scope: !1554)
!1559 = !DILocation(line: 205, column: 21, scope: !1554)
!1560 = !DILocation(line: 205, column: 28, scope: !1554)
!1561 = !DILocation(line: 205, column: 42, scope: !1554)
!1562 = !DILocation(line: 205, column: 41, scope: !1554)
!1563 = !DILocation(line: 205, column: 4, scope: !1554)
!1564 = !DILocation(line: 204, column: 26, scope: !1554)
!1565 = !DILocation(line: 204, column: 3, scope: !1554)
!1566 = distinct !{!1566, !1556, !1567}
!1567 = !DILocation(line: 205, column: 44, scope: !1551)
!1568 = !DILocation(line: 206, column: 2, scope: !1503)
!1569 = !DILocation(line: 209, column: 11, scope: !1324)
!1570 = !DILocation(line: 209, column: 18, scope: !1324)
!1571 = !DILocation(line: 209, column: 2, scope: !1324)
!1572 = !DILocation(line: 210, column: 11, scope: !1324)
!1573 = !DILocation(line: 210, column: 18, scope: !1324)
!1574 = !DILocation(line: 210, column: 47, scope: !1324)
!1575 = !DILocation(line: 210, column: 52, scope: !1324)
!1576 = !DILocation(line: 210, column: 2, scope: !1324)
!1577 = !DILocation(line: 211, column: 11, scope: !1324)
!1578 = !DILocation(line: 211, column: 18, scope: !1324)
!1579 = !DILocation(line: 211, column: 2, scope: !1324)
!1580 = !DILocation(line: 214, column: 11, scope: !1324)
!1581 = !DILocation(line: 214, column: 18, scope: !1324)
!1582 = !DILocation(line: 214, column: 46, scope: !1324)
!1583 = !DILocation(line: 214, column: 2, scope: !1324)
!1584 = !DILocation(line: 215, column: 11, scope: !1324)
!1585 = !DILocation(line: 215, column: 18, scope: !1324)
!1586 = !DILocation(line: 215, column: 48, scope: !1324)
!1587 = !DILocation(line: 215, column: 2, scope: !1324)
!1588 = !DILocation(line: 216, column: 11, scope: !1324)
!1589 = !DILocation(line: 216, column: 18, scope: !1324)
!1590 = !DILocation(line: 216, column: 47, scope: !1324)
!1591 = !DILocation(line: 216, column: 2, scope: !1324)
!1592 = !DILocation(line: 217, column: 11, scope: !1324)
!1593 = !DILocation(line: 217, column: 18, scope: !1324)
!1594 = !DILocation(line: 217, column: 41, scope: !1324)
!1595 = !DILocation(line: 217, column: 2, scope: !1324)
!1596 = !DILocation(line: 218, column: 11, scope: !1324)
!1597 = !DILocation(line: 218, column: 18, scope: !1324)
!1598 = !DILocation(line: 218, column: 41, scope: !1324)
!1599 = !DILocation(line: 218, column: 2, scope: !1324)
!1600 = !DILocation(line: 219, column: 11, scope: !1324)
!1601 = !DILocation(line: 219, column: 18, scope: !1324)
!1602 = !DILocation(line: 219, column: 45, scope: !1324)
!1603 = !DILocation(line: 219, column: 2, scope: !1324)
!1604 = !DILocation(line: 221, column: 11, scope: !1324)
!1605 = !DILocation(line: 221, column: 18, scope: !1324)
!1606 = !DILocation(line: 221, column: 47, scope: !1324)
!1607 = !DILocation(line: 221, column: 2, scope: !1324)
!1608 = !DILocation(line: 222, column: 11, scope: !1324)
!1609 = !DILocation(line: 222, column: 18, scope: !1324)
!1610 = !DILocation(line: 222, column: 48, scope: !1324)
!1611 = !DILocation(line: 222, column: 2, scope: !1324)
!1612 = !DILocation(line: 223, column: 11, scope: !1324)
!1613 = !DILocation(line: 223, column: 18, scope: !1324)
!1614 = !DILocation(line: 223, column: 48, scope: !1324)
!1615 = !DILocation(line: 223, column: 2, scope: !1324)
!1616 = !DILocation(line: 224, column: 1, scope: !1324)
!1617 = distinct !DISubprogram(name: "restore_vga_cmap", scope: !3, file: !3, line: 322, type: !614, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1618 = !DILocalVariable(name: "state", arg: 1, scope: !1617, file: !3, line: 322, type: !68)
!1619 = !DILocation(line: 322, column: 47, scope: !1617)
!1620 = !DILocalVariable(name: "saved", scope: !1617, file: !3, line: 324, type: !17)
!1621 = !DILocation(line: 324, column: 19, scope: !1617)
!1622 = !DILocation(line: 324, column: 47, scope: !1617)
!1623 = !DILocation(line: 324, column: 54, scope: !1617)
!1624 = !DILocation(line: 324, column: 27, scope: !1617)
!1625 = !DILocalVariable(name: "i", scope: !1617, file: !3, line: 325, type: !67)
!1626 = !DILocation(line: 325, column: 6, scope: !1617)
!1627 = !DILocation(line: 327, column: 8, scope: !1617)
!1628 = !DILocation(line: 327, column: 15, scope: !1617)
!1629 = !DILocation(line: 327, column: 2, scope: !1617)
!1630 = !DILocation(line: 330, column: 8, scope: !1617)
!1631 = !DILocation(line: 330, column: 15, scope: !1617)
!1632 = !DILocation(line: 330, column: 2, scope: !1617)
!1633 = !DILocation(line: 331, column: 9, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 331, column: 2)
!1635 = !DILocation(line: 331, column: 7, scope: !1634)
!1636 = !DILocation(line: 331, column: 14, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 331, column: 2)
!1638 = !DILocation(line: 331, column: 16, scope: !1637)
!1639 = !DILocation(line: 331, column: 2, scope: !1634)
!1640 = !DILocation(line: 332, column: 9, scope: !1637)
!1641 = !DILocation(line: 332, column: 16, scope: !1637)
!1642 = !DILocation(line: 332, column: 36, scope: !1637)
!1643 = !DILocation(line: 332, column: 43, scope: !1637)
!1644 = !DILocation(line: 332, column: 52, scope: !1637)
!1645 = !DILocation(line: 332, column: 3, scope: !1637)
!1646 = !DILocation(line: 331, column: 24, scope: !1637)
!1647 = !DILocation(line: 331, column: 2, scope: !1637)
!1648 = distinct !{!1648, !1639, !1649}
!1649 = !DILocation(line: 332, column: 54, scope: !1634)
!1650 = !DILocation(line: 333, column: 1, scope: !1617)
!1651 = distinct !DISubprogram(name: "get_order", scope: !1652, file: !1652, line: 29, type: !1653, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1652 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!67, !74}
!1655 = !DILocalVariable(name: "x", arg: 1, scope: !1656, file: !1657, line: 366, type: !1660)
!1656 = distinct !DISubprogram(name: "fls64", scope: !1657, file: !1657, line: 366, type: !1658, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1657 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!67, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !1661)
!1661 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1662 = !DILocation(line: 366, column: 40, scope: !1656, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 46, column: 9, scope: !1651)
!1664 = !DILocalVariable(name: "bitpos", scope: !1656, file: !1657, line: 368, type: !67)
!1665 = !DILocation(line: 368, column: 6, scope: !1656, inlinedAt: !1663)
!1666 = !DILocalVariable(name: "size", arg: 1, scope: !1651, file: !1652, line: 29, type: !74)
!1667 = !DILocation(line: 29, column: 63, scope: !1651)
!1668 = !DILocation(line: 31, column: 27, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1651, file: !1652, line: 31, column: 6)
!1670 = !DILocation(line: 31, column: 6, scope: !1669)
!1671 = !DILocation(line: 31, column: 6, scope: !1651)
!1672 = !DILocation(line: 32, column: 8, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !1652, line: 32, column: 7)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !1652, line: 31, column: 34)
!1675 = !DILocation(line: 32, column: 7, scope: !1674)
!1676 = !DILocation(line: 33, column: 4, scope: !1673)
!1677 = !DILocation(line: 35, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !1652, line: 35, column: 7)
!1679 = !DILocation(line: 35, column: 12, scope: !1678)
!1680 = !DILocation(line: 35, column: 7, scope: !1674)
!1681 = !DILocation(line: 36, column: 4, scope: !1678)
!1682 = !DILocation(line: 38, column: 10, scope: !1674)
!1683 = !DILocation(line: 38, column: 28, scope: !1674)
!1684 = !DILocation(line: 38, column: 41, scope: !1674)
!1685 = !DILocation(line: 38, column: 3, scope: !1674)
!1686 = !DILocation(line: 41, column: 6, scope: !1651)
!1687 = !DILocation(line: 42, column: 7, scope: !1651)
!1688 = !DILocation(line: 46, column: 15, scope: !1651)
!1689 = !DILocation(line: 374, column: 2, scope: !1656, inlinedAt: !1663)
!1690 = !DILocation(line: 376, column: 14, scope: !1656, inlinedAt: !1663)
!1691 = !{i32 310153}
!1692 = !DILocation(line: 377, column: 9, scope: !1656, inlinedAt: !1663)
!1693 = !DILocation(line: 377, column: 16, scope: !1656, inlinedAt: !1663)
!1694 = !DILocation(line: 46, column: 2, scope: !1651)
!1695 = !DILocation(line: 48, column: 1, scope: !1651)
!1696 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1697, file: !1697, line: 30, type: !1698, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1697 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!67, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !837, line: 23, baseType: !1660)
!1701 = !DILocation(line: 366, column: 40, scope: !1656, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 32, column: 9, scope: !1696)
!1703 = !DILocation(line: 368, column: 6, scope: !1656, inlinedAt: !1702)
!1704 = !DILocalVariable(name: "n", arg: 1, scope: !1696, file: !1697, line: 30, type: !1700)
!1705 = !DILocation(line: 30, column: 21, scope: !1696)
!1706 = !DILocation(line: 32, column: 15, scope: !1696)
!1707 = !DILocation(line: 374, column: 2, scope: !1656, inlinedAt: !1702)
!1708 = !DILocation(line: 376, column: 14, scope: !1656, inlinedAt: !1702)
!1709 = !DILocation(line: 377, column: 9, scope: !1656, inlinedAt: !1702)
!1710 = !DILocation(line: 377, column: 16, scope: !1656, inlinedAt: !1702)
!1711 = !DILocation(line: 32, column: 18, scope: !1696)
!1712 = !DILocation(line: 32, column: 2, scope: !1696)
!1713 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1714, file: !1714, line: 137, type: !1715, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1714 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!16, !345, !1717, !337, !14}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1719 = !DILocalVariable(name: "s", arg: 1, scope: !1713, file: !1714, line: 137, type: !345)
!1720 = !DILocation(line: 137, column: 54, scope: !1713)
!1721 = !DILocalVariable(name: "object", arg: 2, scope: !1713, file: !1714, line: 137, type: !1717)
!1722 = !DILocation(line: 137, column: 69, scope: !1713)
!1723 = !DILocalVariable(name: "size", arg: 3, scope: !1713, file: !1714, line: 138, type: !337)
!1724 = !DILocation(line: 138, column: 12, scope: !1713)
!1725 = !DILocalVariable(name: "flags", arg: 4, scope: !1713, file: !1714, line: 138, type: !14)
!1726 = !DILocation(line: 138, column: 24, scope: !1713)
!1727 = !DILocation(line: 140, column: 17, scope: !1713)
!1728 = !DILocation(line: 140, column: 2, scope: !1713)
!1729 = distinct !DISubprogram(name: "vga_w", scope: !70, file: !70, line: 242, type: !1730, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !16, !37, !24}
!1732 = !DILocalVariable(name: "regbase", arg: 1, scope: !1729, file: !70, line: 242, type: !16)
!1733 = !DILocation(line: 242, column: 41, scope: !1729)
!1734 = !DILocalVariable(name: "port", arg: 2, scope: !1729, file: !70, line: 242, type: !37)
!1735 = !DILocation(line: 242, column: 65, scope: !1729)
!1736 = !DILocalVariable(name: "val", arg: 3, scope: !1729, file: !70, line: 242, type: !24)
!1737 = !DILocation(line: 242, column: 85, scope: !1729)
!1738 = !DILocation(line: 244, column: 6, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1729, file: !70, line: 244, column: 6)
!1740 = !DILocation(line: 244, column: 6, scope: !1729)
!1741 = !DILocation(line: 245, column: 13, scope: !1739)
!1742 = !DILocation(line: 245, column: 22, scope: !1739)
!1743 = !DILocation(line: 245, column: 28, scope: !1739)
!1744 = !DILocation(line: 245, column: 3, scope: !1739)
!1745 = !DILocation(line: 247, column: 13, scope: !1739)
!1746 = !DILocation(line: 247, column: 19, scope: !1739)
!1747 = !DILocation(line: 247, column: 3, scope: !1739)
!1748 = !DILocation(line: 248, column: 1, scope: !1729)
!1749 = distinct !DISubprogram(name: "vga_r", scope: !70, file: !70, line: 234, type: !1750, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!24, !16, !37}
!1752 = !DILocalVariable(name: "regbase", arg: 1, scope: !1749, file: !70, line: 234, type: !16)
!1753 = !DILocation(line: 234, column: 50, scope: !1749)
!1754 = !DILocalVariable(name: "port", arg: 2, scope: !1749, file: !70, line: 234, type: !37)
!1755 = !DILocation(line: 234, column: 74, scope: !1749)
!1756 = !DILocation(line: 236, column: 6, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1749, file: !70, line: 236, column: 6)
!1758 = !DILocation(line: 236, column: 6, scope: !1749)
!1759 = !DILocation(line: 237, column: 20, scope: !1757)
!1760 = !DILocation(line: 237, column: 29, scope: !1757)
!1761 = !DILocation(line: 237, column: 10, scope: !1757)
!1762 = !DILocation(line: 237, column: 3, scope: !1757)
!1763 = !DILocation(line: 239, column: 20, scope: !1757)
!1764 = !DILocation(line: 239, column: 10, scope: !1757)
!1765 = !DILocation(line: 239, column: 3, scope: !1757)
!1766 = !DILocation(line: 240, column: 1, scope: !1749)
!1767 = distinct !DISubprogram(name: "vga_mm_w", scope: !70, file: !70, line: 223, type: !1730, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1768 = !DILocalVariable(name: "regbase", arg: 1, scope: !1767, file: !70, line: 223, type: !16)
!1769 = !DILocation(line: 223, column: 44, scope: !1767)
!1770 = !DILocalVariable(name: "port", arg: 2, scope: !1767, file: !70, line: 223, type: !37)
!1771 = !DILocation(line: 223, column: 68, scope: !1767)
!1772 = !DILocalVariable(name: "val", arg: 3, scope: !1767, file: !70, line: 223, type: !24)
!1773 = !DILocation(line: 223, column: 88, scope: !1767)
!1774 = !DILocation(line: 225, column: 10, scope: !1767)
!1775 = !DILocation(line: 225, column: 15, scope: !1767)
!1776 = !DILocation(line: 225, column: 25, scope: !1767)
!1777 = !DILocation(line: 225, column: 23, scope: !1767)
!1778 = !DILocation(line: 225, column: 2, scope: !1767)
!1779 = !DILocation(line: 226, column: 1, scope: !1767)
!1780 = distinct !DISubprogram(name: "vga_io_w", scope: !70, file: !70, line: 207, type: !1781, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !37, !24}
!1783 = !DILocalVariable(name: "port", arg: 1, scope: !1780, file: !70, line: 207, type: !37)
!1784 = !DILocation(line: 207, column: 45, scope: !1780)
!1785 = !DILocalVariable(name: "val", arg: 2, scope: !1780, file: !70, line: 207, type: !24)
!1786 = !DILocation(line: 207, column: 65, scope: !1780)
!1787 = !DILocation(line: 209, column: 9, scope: !1780)
!1788 = !DILocation(line: 209, column: 14, scope: !1780)
!1789 = !DILocation(line: 209, column: 2, scope: !1780)
!1790 = !DILocation(line: 210, column: 1, scope: !1780)
!1791 = distinct !DISubprogram(name: "writeb", scope: !1792, file: !1792, line: 65, type: !1793, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1792 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !24, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1797 = !DILocalVariable(name: "val", arg: 1, scope: !1791, file: !1792, line: 65, type: !24)
!1798 = !DILocation(line: 65, column: 1, scope: !1791)
!1799 = !DILocalVariable(name: "addr", arg: 2, scope: !1791, file: !1792, line: 65, type: !1795)
!1800 = !{i32 -2141472705}
!1801 = distinct !DISubprogram(name: "outb_p", scope: !1792, file: !1792, line: 334, type: !1802, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !24, !67}
!1804 = !DILocalVariable(name: "value", arg: 1, scope: !1801, file: !1792, line: 334, type: !24)
!1805 = !DILocation(line: 334, column: 1, scope: !1801)
!1806 = !DILocalVariable(name: "port", arg: 2, scope: !1801, file: !1792, line: 334, type: !67)
!1807 = distinct !DISubprogram(name: "outb", scope: !1792, file: !1792, line: 334, type: !1802, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1808 = !DILocalVariable(name: "value", arg: 1, scope: !1807, file: !1792, line: 334, type: !24)
!1809 = !DILocation(line: 334, column: 1, scope: !1807)
!1810 = !DILocalVariable(name: "port", arg: 2, scope: !1807, file: !1792, line: 334, type: !67)
!1811 = !{i32 -2141462065}
!1812 = distinct !DISubprogram(name: "slow_down_io", scope: !1813, file: !1813, line: 40, type: !1814, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1813 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null}
!1816 = !DILocation(line: 42, column: 13, scope: !1812)
!1817 = !DILocation(line: 42, column: 2, scope: !1812)
!1818 = !DILocation(line: 48, column: 1, scope: !1812)
!1819 = distinct !DISubprogram(name: "vga_mm_r", scope: !70, file: !70, line: 218, type: !1750, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1820 = !DILocalVariable(name: "regbase", arg: 1, scope: !1819, file: !70, line: 218, type: !16)
!1821 = !DILocation(line: 218, column: 53, scope: !1819)
!1822 = !DILocalVariable(name: "port", arg: 2, scope: !1819, file: !70, line: 218, type: !37)
!1823 = !DILocation(line: 218, column: 77, scope: !1819)
!1824 = !DILocation(line: 220, column: 16, scope: !1819)
!1825 = !DILocation(line: 220, column: 26, scope: !1819)
!1826 = !DILocation(line: 220, column: 24, scope: !1819)
!1827 = !DILocation(line: 220, column: 9, scope: !1819)
!1828 = !DILocation(line: 220, column: 2, scope: !1819)
!1829 = distinct !DISubprogram(name: "vga_io_r", scope: !70, file: !70, line: 202, type: !1830, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!24, !37}
!1832 = !DILocalVariable(name: "port", arg: 1, scope: !1829, file: !70, line: 202, type: !37)
!1833 = !DILocation(line: 202, column: 54, scope: !1829)
!1834 = !DILocation(line: 204, column: 15, scope: !1829)
!1835 = !DILocation(line: 204, column: 9, scope: !1829)
!1836 = !DILocation(line: 204, column: 2, scope: !1829)
!1837 = distinct !DISubprogram(name: "readb", scope: !1792, file: !1792, line: 57, type: !1838, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!24, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1842 = !DILocalVariable(name: "addr", arg: 1, scope: !1837, file: !1792, line: 57, type: !1840)
!1843 = !DILocation(line: 57, column: 1, scope: !1837)
!1844 = !DILocalVariable(name: "ret", scope: !1837, file: !1792, line: 57, type: !24)
!1845 = !{i32 -2141475159}
!1846 = distinct !DISubprogram(name: "inb_p", scope: !1792, file: !1792, line: 334, type: !1847, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!24, !67}
!1849 = !DILocalVariable(name: "port", arg: 1, scope: !1846, file: !1792, line: 334, type: !67)
!1850 = !DILocation(line: 334, column: 1, scope: !1846)
!1851 = !DILocalVariable(name: "value", scope: !1846, file: !1792, line: 334, type: !24)
!1852 = distinct !DISubprogram(name: "inb", scope: !1792, file: !1792, line: 334, type: !1847, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1853 = !DILocalVariable(name: "port", arg: 1, scope: !1852, file: !1792, line: 334, type: !67)
!1854 = !DILocation(line: 334, column: 1, scope: !1852)
!1855 = !DILocalVariable(name: "value", scope: !1852, file: !1792, line: 334, type: !24)
!1856 = !{i32 -2141461863}
!1857 = distinct !DISubprogram(name: "vga_rcrtcs", scope: !3, file: !3, line: 34, type: !1858, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!24, !16, !37, !24}
!1860 = !DILocalVariable(name: "regbase", arg: 1, scope: !1857, file: !3, line: 34, type: !16)
!1861 = !DILocation(line: 34, column: 54, scope: !1857)
!1862 = !DILocalVariable(name: "iobase", arg: 2, scope: !1857, file: !3, line: 34, type: !37)
!1863 = !DILocation(line: 34, column: 78, scope: !1857)
!1864 = !DILocalVariable(name: "reg", arg: 3, scope: !1857, file: !3, line: 35, type: !24)
!1865 = !DILocation(line: 35, column: 26, scope: !1857)
!1866 = !DILocation(line: 37, column: 8, scope: !1857)
!1867 = !DILocation(line: 37, column: 17, scope: !1857)
!1868 = !DILocation(line: 37, column: 24, scope: !1857)
!1869 = !DILocation(line: 37, column: 31, scope: !1857)
!1870 = !DILocation(line: 37, column: 2, scope: !1857)
!1871 = !DILocation(line: 38, column: 15, scope: !1857)
!1872 = !DILocation(line: 38, column: 24, scope: !1857)
!1873 = !DILocation(line: 38, column: 31, scope: !1857)
!1874 = !DILocation(line: 38, column: 9, scope: !1857)
!1875 = !DILocation(line: 38, column: 2, scope: !1857)
!1876 = distinct !DISubprogram(name: "vga_rattr", scope: !70, file: !70, line: 423, type: !1877, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!24, !16, !24}
!1879 = !DILocalVariable(name: "regbase", arg: 1, scope: !1876, file: !70, line: 423, type: !16)
!1880 = !DILocation(line: 423, column: 54, scope: !1876)
!1881 = !DILocalVariable(name: "reg", arg: 2, scope: !1876, file: !70, line: 423, type: !24)
!1882 = !DILocation(line: 423, column: 77, scope: !1876)
!1883 = !DILocation(line: 425, column: 16, scope: !1876)
!1884 = !DILocation(line: 425, column: 37, scope: !1876)
!1885 = !DILocation(line: 425, column: 9, scope: !1876)
!1886 = !DILocation(line: 426, column: 23, scope: !1876)
!1887 = !DILocation(line: 426, column: 16, scope: !1876)
!1888 = !DILocation(line: 426, column: 9, scope: !1876)
!1889 = distinct !DISubprogram(name: "vga_rgfx", scope: !70, file: !70, line: 370, type: !1877, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1890 = !DILocalVariable(name: "regbase", arg: 1, scope: !1889, file: !70, line: 370, type: !16)
!1891 = !DILocation(line: 370, column: 53, scope: !1889)
!1892 = !DILocalVariable(name: "reg", arg: 2, scope: !1889, file: !70, line: 370, type: !24)
!1893 = !DILocation(line: 370, column: 76, scope: !1889)
!1894 = !DILocation(line: 372, column: 16, scope: !1889)
!1895 = !DILocation(line: 372, column: 36, scope: !1889)
!1896 = !DILocation(line: 372, column: 9, scope: !1889)
!1897 = !DILocation(line: 373, column: 23, scope: !1889)
!1898 = !DILocation(line: 373, column: 16, scope: !1889)
!1899 = !DILocation(line: 373, column: 9, scope: !1889)
!1900 = distinct !DISubprogram(name: "vga_rseq", scope: !70, file: !70, line: 318, type: !1877, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1901 = !DILocalVariable(name: "regbase", arg: 1, scope: !1900, file: !70, line: 318, type: !16)
!1902 = !DILocation(line: 318, column: 53, scope: !1900)
!1903 = !DILocalVariable(name: "reg", arg: 2, scope: !1900, file: !70, line: 318, type: !24)
!1904 = !DILocation(line: 318, column: 76, scope: !1900)
!1905 = !DILocation(line: 320, column: 16, scope: !1900)
!1906 = !DILocation(line: 320, column: 36, scope: !1900)
!1907 = !DILocation(line: 320, column: 9, scope: !1900)
!1908 = !DILocation(line: 321, column: 23, scope: !1900)
!1909 = !DILocation(line: 321, column: 16, scope: !1900)
!1910 = !DILocation(line: 321, column: 9, scope: !1900)
!1911 = distinct !DISubprogram(name: "vga_wseq", scope: !70, file: !70, line: 324, type: !1912, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !16, !24, !24}
!1914 = !DILocalVariable(name: "regbase", arg: 1, scope: !1911, file: !70, line: 324, type: !16)
!1915 = !DILocation(line: 324, column: 44, scope: !1911)
!1916 = !DILocalVariable(name: "reg", arg: 2, scope: !1911, file: !70, line: 324, type: !24)
!1917 = !DILocation(line: 324, column: 67, scope: !1911)
!1918 = !DILocalVariable(name: "val", arg: 3, scope: !1911, file: !70, line: 324, type: !24)
!1919 = !DILocation(line: 324, column: 86, scope: !1911)
!1920 = !DILocation(line: 327, column: 14, scope: !1911)
!1921 = !DILocation(line: 327, column: 34, scope: !1911)
!1922 = !DILocation(line: 327, column: 39, scope: !1911)
!1923 = !DILocation(line: 327, column: 2, scope: !1911)
!1924 = !DILocation(line: 332, column: 1, scope: !1911)
!1925 = distinct !DISubprogram(name: "vga_wgfx", scope: !70, file: !70, line: 376, type: !1912, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1926 = !DILocalVariable(name: "regbase", arg: 1, scope: !1925, file: !70, line: 376, type: !16)
!1927 = !DILocation(line: 376, column: 44, scope: !1925)
!1928 = !DILocalVariable(name: "reg", arg: 2, scope: !1925, file: !70, line: 376, type: !24)
!1929 = !DILocation(line: 376, column: 67, scope: !1925)
!1930 = !DILocalVariable(name: "val", arg: 3, scope: !1925, file: !70, line: 376, type: !24)
!1931 = !DILocation(line: 376, column: 86, scope: !1925)
!1932 = !DILocation(line: 379, column: 14, scope: !1925)
!1933 = !DILocation(line: 379, column: 34, scope: !1925)
!1934 = !DILocation(line: 379, column: 39, scope: !1925)
!1935 = !DILocation(line: 379, column: 2, scope: !1925)
!1936 = !DILocation(line: 384, column: 1, scope: !1925)
!1937 = distinct !DISubprogram(name: "vga_w_fast", scope: !70, file: !70, line: 251, type: !1938, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !16, !37, !24, !24}
!1940 = !DILocalVariable(name: "regbase", arg: 1, scope: !1937, file: !70, line: 251, type: !16)
!1941 = !DILocation(line: 251, column: 46, scope: !1937)
!1942 = !DILocalVariable(name: "port", arg: 2, scope: !1937, file: !70, line: 251, type: !37)
!1943 = !DILocation(line: 251, column: 70, scope: !1937)
!1944 = !DILocalVariable(name: "reg", arg: 3, scope: !1937, file: !70, line: 252, type: !24)
!1945 = !DILocation(line: 252, column: 25, scope: !1937)
!1946 = !DILocalVariable(name: "val", arg: 4, scope: !1937, file: !70, line: 252, type: !24)
!1947 = !DILocation(line: 252, column: 44, scope: !1937)
!1948 = !DILocation(line: 254, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1937, file: !70, line: 254, column: 6)
!1950 = !DILocation(line: 254, column: 6, scope: !1937)
!1951 = !DILocation(line: 255, column: 18, scope: !1949)
!1952 = !DILocation(line: 255, column: 27, scope: !1949)
!1953 = !DILocation(line: 255, column: 33, scope: !1949)
!1954 = !DILocation(line: 255, column: 38, scope: !1949)
!1955 = !DILocation(line: 255, column: 3, scope: !1949)
!1956 = !DILocation(line: 257, column: 18, scope: !1949)
!1957 = !DILocation(line: 257, column: 24, scope: !1949)
!1958 = !DILocation(line: 257, column: 29, scope: !1949)
!1959 = !DILocation(line: 257, column: 3, scope: !1949)
!1960 = !DILocation(line: 258, column: 1, scope: !1937)
!1961 = distinct !DISubprogram(name: "vga_mm_w_fast", scope: !70, file: !70, line: 228, type: !1938, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1962 = !DILocalVariable(name: "regbase", arg: 1, scope: !1961, file: !70, line: 228, type: !16)
!1963 = !DILocation(line: 228, column: 49, scope: !1961)
!1964 = !DILocalVariable(name: "port", arg: 2, scope: !1961, file: !70, line: 228, type: !37)
!1965 = !DILocation(line: 228, column: 73, scope: !1961)
!1966 = !DILocalVariable(name: "reg", arg: 3, scope: !1961, file: !70, line: 229, type: !24)
!1967 = !DILocation(line: 229, column: 21, scope: !1961)
!1968 = !DILocalVariable(name: "val", arg: 4, scope: !1961, file: !70, line: 229, type: !24)
!1969 = !DILocation(line: 229, column: 40, scope: !1961)
!1970 = !DILocation(line: 231, column: 10, scope: !1961)
!1971 = !DILocation(line: 231, column: 35, scope: !1961)
!1972 = !DILocation(line: 231, column: 45, scope: !1961)
!1973 = !DILocation(line: 231, column: 43, scope: !1961)
!1974 = !DILocation(line: 231, column: 2, scope: !1961)
!1975 = !DILocation(line: 232, column: 1, scope: !1961)
!1976 = distinct !DISubprogram(name: "vga_io_w_fast", scope: !70, file: !70, line: 212, type: !1977, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !37, !24, !24}
!1979 = !DILocalVariable(name: "port", arg: 1, scope: !1976, file: !70, line: 212, type: !37)
!1980 = !DILocation(line: 212, column: 50, scope: !1976)
!1981 = !DILocalVariable(name: "reg", arg: 2, scope: !1976, file: !70, line: 212, type: !24)
!1982 = !DILocation(line: 212, column: 70, scope: !1976)
!1983 = !DILocalVariable(name: "val", arg: 3, scope: !1976, file: !70, line: 213, type: !24)
!1984 = !DILocation(line: 213, column: 21, scope: !1976)
!1985 = !DILocation(line: 215, column: 7, scope: !1976)
!1986 = !DILocation(line: 215, column: 32, scope: !1976)
!1987 = !DILocation(line: 215, column: 2, scope: !1976)
!1988 = !DILocation(line: 216, column: 1, scope: !1976)
!1989 = distinct !DISubprogram(name: "writew", scope: !1792, file: !1792, line: 66, type: !1990, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !37, !1795}
!1992 = !DILocalVariable(name: "val", arg: 1, scope: !1989, file: !1792, line: 66, type: !37)
!1993 = !DILocation(line: 66, column: 1, scope: !1989)
!1994 = !DILocalVariable(name: "addr", arg: 2, scope: !1989, file: !1792, line: 66, type: !1795)
!1995 = !{i32 -2141472321}
!1996 = distinct !DISubprogram(name: "outw", scope: !1792, file: !1792, line: 335, type: !1997, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !37, !67}
!1999 = !DILocalVariable(name: "value", arg: 1, scope: !1996, file: !1792, line: 335, type: !37)
!2000 = !DILocation(line: 335, column: 1, scope: !1996)
!2001 = !DILocalVariable(name: "port", arg: 2, scope: !1996, file: !1792, line: 335, type: !67)
!2002 = !{i32 -2141459322}
!2003 = distinct !DISubprogram(name: "vga_wcrtcs", scope: !3, file: !3, line: 41, type: !1938, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!2004 = !DILocalVariable(name: "regbase", arg: 1, scope: !2003, file: !3, line: 41, type: !16)
!2005 = !DILocation(line: 41, column: 45, scope: !2003)
!2006 = !DILocalVariable(name: "iobase", arg: 2, scope: !2003, file: !3, line: 41, type: !37)
!2007 = !DILocation(line: 41, column: 69, scope: !2003)
!2008 = !DILocalVariable(name: "reg", arg: 3, scope: !2003, file: !3, line: 42, type: !24)
!2009 = !DILocation(line: 42, column: 24, scope: !2003)
!2010 = !DILocalVariable(name: "val", arg: 4, scope: !2003, file: !3, line: 42, type: !24)
!2011 = !DILocation(line: 42, column: 43, scope: !2003)
!2012 = !DILocation(line: 44, column: 8, scope: !2003)
!2013 = !DILocation(line: 44, column: 17, scope: !2003)
!2014 = !DILocation(line: 44, column: 24, scope: !2003)
!2015 = !DILocation(line: 44, column: 31, scope: !2003)
!2016 = !DILocation(line: 44, column: 2, scope: !2003)
!2017 = !DILocation(line: 45, column: 8, scope: !2003)
!2018 = !DILocation(line: 45, column: 17, scope: !2003)
!2019 = !DILocation(line: 45, column: 24, scope: !2003)
!2020 = !DILocation(line: 45, column: 31, scope: !2003)
!2021 = !DILocation(line: 45, column: 2, scope: !2003)
!2022 = !DILocation(line: 46, column: 1, scope: !2003)
!2023 = distinct !DISubprogram(name: "vga_wattr", scope: !70, file: !70, line: 429, type: !1912, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !84)
!2024 = !DILocalVariable(name: "regbase", arg: 1, scope: !2023, file: !70, line: 429, type: !16)
!2025 = !DILocation(line: 429, column: 45, scope: !2023)
!2026 = !DILocalVariable(name: "reg", arg: 2, scope: !2023, file: !70, line: 429, type: !24)
!2027 = !DILocation(line: 429, column: 68, scope: !2023)
!2028 = !DILocalVariable(name: "val", arg: 3, scope: !2023, file: !70, line: 429, type: !24)
!2029 = !DILocation(line: 429, column: 87, scope: !2023)
!2030 = !DILocation(line: 431, column: 16, scope: !2023)
!2031 = !DILocation(line: 431, column: 37, scope: !2023)
!2032 = !DILocation(line: 431, column: 9, scope: !2023)
!2033 = !DILocation(line: 432, column: 16, scope: !2023)
!2034 = !DILocation(line: 432, column: 36, scope: !2023)
!2035 = !DILocation(line: 432, column: 9, scope: !2023)
!2036 = !DILocation(line: 433, column: 1, scope: !2023)
