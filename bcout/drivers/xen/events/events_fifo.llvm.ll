; ModuleID = '../bcout/drivers/xen/events/events_fifo.llvm.bc'
source_filename = "drivers/xen/events/events_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.evtchn_ops = type { i32 ()*, i32 ()*, i32 (i32)*, void (i32, i32, i32)*, void (i32)*, void (i32)*, i1 (i32)*, i1 (i32)*, void (i32)*, void (i32)*, void (i32, %struct.evtchn_loop_ctrl*)*, void ()*, i32 (i32)*, i32 (i32)* }
%struct.evtchn_loop_ctrl = type opaque
%struct.evtchn_fifo_control_block = type { i32, i32, [16 x i32] }
%struct.evtchn_fifo_queue = type { [16 x i32] }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.vdso_image = type opaque
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
%struct.pid_namespace = type opaque
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
%struct.evtchn_init_control = type { i64, i32, i32, i8, [7 x i8] }
%struct.evtchn_expand_array = type { i64 }
%struct.evtchn_unmask = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"\016xen:events: Using FIFO-based ABI\0A\00", align 1
@evtchn_ops_fifo = internal constant %struct.evtchn_ops { i32 ()* @evtchn_fifo_max_channels, i32 ()* @evtchn_fifo_nr_channels, i32 (i32)* @evtchn_fifo_setup, void (i32, i32, i32)* @evtchn_fifo_bind_to_cpu, void (i32)* @evtchn_fifo_clear_pending, void (i32)* @evtchn_fifo_set_pending, i1 (i32)* @evtchn_fifo_is_pending, i1 (i32)* @evtchn_fifo_test_and_set_mask, void (i32)* @evtchn_fifo_mask, void (i32)* @evtchn_fifo_unmask, void (i32, %struct.evtchn_loop_ctrl*)* @evtchn_fifo_handle_events, void ()* @evtchn_fifo_resume, i32 (i32)* @evtchn_fifo_percpu_init, i32 (i32)* @evtchn_fifo_percpu_deinit }, align 8, !dbg !0
@evtchn_ops = external dso_local global %struct.evtchn_ops*, align 8
@cpu_control_block = internal global %struct.evtchn_fifo_control_block* null, section ".data", align 8, !dbg !61
@cpu_queue = internal global %struct.evtchn_fifo_queue zeroinitializer, section ".data", align 4, !dbg !59
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@xen_vcpu_id = external dso_local global i32, section ".data", align 4
@event_array_pages = internal global i32 0, section ".data..read_mostly", align 4, !dbg !63
@event_array = internal global [128 x i32*] zeroinitializer, section ".data..read_mostly", align 16, !dbg !65
@.str.1 = private unnamed_addr constant [58 x i8] c"xen: unable to expand event array with initial page (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\013xen:events: unable to expand event array (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"drivers/xen/events/events_fifo.c\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"\014xen:events: Dropping pending event for port %u\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_evtchn_fifo_init() #0 section ".init.text" !dbg !124 {
entry:
  %retval = alloca i32, align 4
  %cpu = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !128, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %cpu, align 4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i32, i32* %cpu, align 4, !dbg !132
  %call = call i32 @evtchn_fifo_alloc_control_block(i32 %0) #9, !dbg !133
  store i32 %call, i32* %ret, align 4, !dbg !134
  %1 = load i32, i32* %ret, align 4, !dbg !135
  %cmp = icmp slt i32 %1, 0, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !139
  store i32 %2, i32* %retval, align 4, !dbg !140
  br label %return, !dbg !140

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #10, !dbg !141
  store %struct.evtchn_ops* @evtchn_ops_fifo, %struct.evtchn_ops** @evtchn_ops, align 8, !dbg !142
  %3 = load i32, i32* %ret, align 4, !dbg !143
  store i32 %3, i32* %retval, align 4, !dbg !144
  br label %return, !dbg !144

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !145
  ret i32 %4, !dbg !145
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_fifo_alloc_control_block(i32 %cpu) #2 !dbg !146 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %control_block = alloca i8*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca %struct.evtchn_fifo_control_block**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp5 = alloca %struct.evtchn_fifo_control_block**, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i8** %control_block, metadata !149, metadata !DIExpression()), !dbg !150
  store i8* null, i8** %control_block, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 -12, i32* %ret, align 4, !dbg !152
  %call = call i64 @__get_free_pages(i32 3264, i32 0) #9, !dbg !153
  %0 = inttoptr i64 %call to i8*, !dbg !154
  store i8* %0, i8** %control_block, align 8, !dbg !155
  %1 = load i8*, i8** %control_block, align 8, !dbg !156
  %cmp = icmp eq i8* %1, null, !dbg !158
  br i1 %cmp, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  br label %error, !dbg !160

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %cpu.addr, align 4, !dbg !161
  %3 = load i8*, i8** %control_block, align 8, !dbg !162
  %4 = bitcast i8* %3 to %struct.evtchn_fifo_control_block*, !dbg !162
  %call1 = call i32 @init_control_block(i32 %2, %struct.evtchn_fifo_control_block* %4) #9, !dbg !163
  store i32 %call1, i32* %ret, align 4, !dbg !164
  %5 = load i32, i32* %ret, align 4, !dbg !165
  %cmp2 = icmp slt i32 %5, 0, !dbg !167
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !168

if.then3:                                         ; preds = %if.end
  br label %error, !dbg !169

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %control_block, align 8, !dbg !170
  %7 = bitcast i8* %6 to %struct.evtchn_fifo_control_block*, !dbg !170
  %8 = load i32, i32* %cpu.addr, align 4, !dbg !171
  br label %do.body, !dbg !173

do.body:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !175, metadata !DIExpression()), !dbg !179
  store i8* null, i8** %__vpp_verify, align 8, !dbg !179
  %9 = load i8*, i8** %__vpp_verify, align 8, !dbg !179
  br label %do.end, !dbg !179

do.end:                                           ; preds = %do.body
  store %struct.evtchn_fifo_control_block** @cpu_control_block, %struct.evtchn_fifo_control_block*** %tmp5, align 8, !dbg !179
  %10 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp5, align 8, !dbg !173
  store %struct.evtchn_fifo_control_block** %10, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !171
  %11 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !171
  store %struct.evtchn_fifo_control_block* %7, %struct.evtchn_fifo_control_block** %11, align 8, !dbg !180
  store i32 0, i32* %retval, align 4, !dbg !181
  br label %return, !dbg !181

error:                                            ; preds = %if.then3, %if.then
  call void @llvm.dbg.label(metadata !182), !dbg !183
  %12 = load i8*, i8** %control_block, align 8, !dbg !184
  %13 = ptrtoint i8* %12 to i64, !dbg !184
  call void @free_pages(i64 %13, i32 0) #9, !dbg !184
  %14 = load i32, i32* %ret, align 4, !dbg !185
  store i32 %14, i32* %retval, align 4, !dbg !186
  br label %return, !dbg !186

return:                                           ; preds = %error, %do.end
  %15 = load i32, i32* %retval, align 4, !dbg !187
  ret i32 %15, !dbg !187
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @init_control_block(i32 %cpu, %struct.evtchn_fifo_control_block* %control_block) #2 !dbg !188 {
entry:
  %cpu.addr = alloca i32, align 4
  %control_block.addr = alloca %struct.evtchn_fifo_control_block*, align 8
  %q = alloca %struct.evtchn_fifo_queue*, align 8
  %tmp = alloca %struct.evtchn_fifo_queue*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.evtchn_fifo_queue*, align 8
  %init_control = alloca %struct.evtchn_init_control, align 8
  %i = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !191, metadata !DIExpression()), !dbg !192
  store %struct.evtchn_fifo_control_block* %control_block, %struct.evtchn_fifo_control_block** %control_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evtchn_fifo_control_block** %control_block.addr, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata %struct.evtchn_fifo_queue** %q, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !197
  br label %do.body, !dbg !199

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !201, metadata !DIExpression()), !dbg !203
  store i8* null, i8** %__vpp_verify, align 8, !dbg !203
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !203
  br label %do.end, !dbg !203

do.end:                                           ; preds = %do.body
  store %struct.evtchn_fifo_queue* @cpu_queue, %struct.evtchn_fifo_queue** %tmp1, align 8, !dbg !203
  %2 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %tmp1, align 8, !dbg !199
  store %struct.evtchn_fifo_queue* %2, %struct.evtchn_fifo_queue** %tmp, align 8, !dbg !197
  %3 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %tmp, align 8, !dbg !197
  store %struct.evtchn_fifo_queue* %3, %struct.evtchn_fifo_queue** %q, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata %struct.evtchn_init_control* %init_control, metadata !204, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %i, metadata !224, metadata !DIExpression()), !dbg !225
  %4 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %control_block.addr, align 8, !dbg !226
  %5 = bitcast %struct.evtchn_fifo_control_block* %4 to i8*, !dbg !226
  call void @clear_page(i8* %5) #9, !dbg !227
  store i32 0, i32* %i, align 4, !dbg !228
  br label %for.cond, !dbg !230

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, i32* %i, align 4, !dbg !231
  %cmp = icmp ult i32 %6, 16, !dbg !233
  br i1 %cmp, label %for.body, label %for.end, !dbg !234

for.body:                                         ; preds = %for.cond
  %7 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %q, align 8, !dbg !235
  %head = getelementptr inbounds %struct.evtchn_fifo_queue, %struct.evtchn_fifo_queue* %7, i32 0, i32 0, !dbg !236
  %8 = load i32, i32* %i, align 4, !dbg !237
  %idxprom = zext i32 %8 to i64, !dbg !235
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %head, i64 0, i64 %idxprom, !dbg !235
  store i32 0, i32* %arrayidx, align 4, !dbg !238
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !239
  %inc = add i32 %9, 1, !dbg !239
  store i32 %inc, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  %10 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %control_block.addr, align 8, !dbg !243
  %11 = ptrtoint %struct.evtchn_fifo_control_block* %10 to i64, !dbg !243
  %call = call i64 @__phys_addr_nodebug(i64 %11) #9, !dbg !243
  %shr = lshr i64 %call, 12, !dbg !243
  %call2 = call i64 @pfn_to_gfn(i64 %shr) #9, !dbg !243
  %control_gfn = getelementptr inbounds %struct.evtchn_init_control, %struct.evtchn_init_control* %init_control, i32 0, i32 0, !dbg !244
  store i64 %call2, i64* %control_gfn, align 8, !dbg !245
  %offset = getelementptr inbounds %struct.evtchn_init_control, %struct.evtchn_init_control* %init_control, i32 0, i32 1, !dbg !246
  store i32 0, i32* %offset, align 8, !dbg !247
  %12 = load i32, i32* %cpu.addr, align 4, !dbg !248
  %call3 = call i32 @xen_vcpu_nr(i32 %12) #9, !dbg !249
  %vcpu = getelementptr inbounds %struct.evtchn_init_control, %struct.evtchn_init_control* %init_control, i32 0, i32 2, !dbg !250
  store i32 %call3, i32* %vcpu, align 4, !dbg !251
  %13 = bitcast %struct.evtchn_init_control* %init_control to i8*, !dbg !252
  %call4 = call i32 @HYPERVISOR_event_channel_op(i32 11, i8* %13) #9, !dbg !253
  ret i32 %call4, !dbg !254
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_page(i8* %page) #2 !dbg !255 {
entry:
  %page.addr = alloca i8*, align 8
  store i8* %page, i8** %page.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %page.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = call i64 @llvm.read_register.i64(metadata !118), !dbg !261
  %1 = load i8*, i8** %page.addr, align 8, !dbg !261
  %2 = call { i8*, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09call ${2:P}\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 3*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A .long 661b - .\0A .long 6642f - .\0A .word ( 9*32+ 9)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call ${3:P}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09call ${4:P}\0A6652:\0A.popsection\0A", "={di},={rsp},i,i,i,0,1,~{cc},~{memory},~{rax},~{rcx},~{dirflag},~{fpsr},~{flags}"(void (i8*)* @clear_page_orig, void (i8*)* @clear_page_rep, void (i8*)* @clear_page_erms, i8* %1, i64 %0) #6, !dbg !261, !srcloc !262
  %asmresult = extractvalue { i8*, i64 } %2, 0, !dbg !261
  %asmresult1 = extractvalue { i8*, i64 } %2, 1, !dbg !261
  store i8* %asmresult, i8** %page.addr, align 8, !dbg !261
  call void @llvm.write_register.i64(metadata !118, i64 %asmresult1), !dbg !261
  ret void, !dbg !263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #2 !dbg !264 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %call = call i32 @xen_feature(i32 2) #9, !dbg !270
  %tobool = icmp ne i32 %call, 0, !dbg !270
  br i1 %tobool, label %if.then, label %if.else, !dbg !272

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !273
  store i64 %0, i64* %retval, align 8, !dbg !274
  br label %return, !dbg !274

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !275
  %call1 = call i64 @pfn_to_mfn(i64 %1) #9, !dbg !276
  store i64 %call1, i64* %retval, align 8, !dbg !277
  br label %return, !dbg !277

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !278
  ret i64 %2, !dbg !278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #2 !dbg !279 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i64* %y, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i64, i64* %x.addr, align 8, !dbg !284
  %sub = sub i64 %0, -2147483648, !dbg !285
  store i64 %sub, i64* %y, align 8, !dbg !283
  %1 = load i64, i64* %y, align 8, !dbg !286
  %2 = load i64, i64* %x.addr, align 8, !dbg !287
  %3 = load i64, i64* %y, align 8, !dbg !288
  %cmp = icmp ugt i64 %2, %3, !dbg !289
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !290

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !291
  br label %cond.end, !dbg !290

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !292
  %sub1 = sub i64 -2147483648, %5, !dbg !293
  br label %cond.end, !dbg !290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !290
  %add = add i64 %1, %cond, !dbg !294
  store i64 %add, i64* %x.addr, align 8, !dbg !295
  %6 = load i64, i64* %x.addr, align 8, !dbg !296
  ret i64 %6, !dbg !297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_vcpu_nr(i32 %cpu) #2 !dbg !298 {
entry:
  %cpu.addr = alloca i32, align 4
  %tmp = alloca i32*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca i32*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !304
  br label %do.body, !dbg !306

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !308, metadata !DIExpression()), !dbg !310
  store i8* null, i8** %__vpp_verify, align 8, !dbg !310
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !310
  br label %do.end, !dbg !310

do.end:                                           ; preds = %do.body
  store i32* @xen_vcpu_id, i32** %tmp1, align 8, !dbg !310
  %2 = load i32*, i32** %tmp1, align 8, !dbg !306
  store i32* %2, i32** %tmp, align 8, !dbg !304
  %3 = load i32*, i32** %tmp, align 8, !dbg !304
  %4 = load i32, i32* %3, align 4, !dbg !311
  ret i32 %4, !dbg !312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #2 !dbg !313 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !317, metadata !DIExpression()), !dbg !318
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !321, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !324, metadata !DIExpression()), !dbg !323
  %0 = load i64, i64* %__arg1, align 8, !dbg !323
  store i64 %0, i64* %__arg1, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !325, metadata !DIExpression()), !dbg !323
  %1 = load i64, i64* %__arg2, align 8, !dbg !323
  store i64 %1, i64* %__arg2, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !326, metadata !DIExpression()), !dbg !323
  %2 = load i64, i64* %__arg3, align 8, !dbg !323
  store i64 %2, i64* %__arg3, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !327, metadata !DIExpression()), !dbg !323
  %3 = load i64, i64* %__arg4, align 8, !dbg !323
  store i64 %3, i64* %__arg4, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !328, metadata !DIExpression()), !dbg !323
  %4 = load i64, i64* %__arg5, align 8, !dbg !323
  store i64 %4, i64* %__arg5, align 8, !dbg !323
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !323
  %conv = sext i32 %5 to i64, !dbg !323
  store i64 %conv, i64* %__arg1, align 8, !dbg !323
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !323
  %7 = ptrtoint i8* %6 to i64, !dbg !323
  store i64 %7, i64* %__arg2, align 8, !dbg !323
  %8 = call i64 @llvm.read_register.i64(metadata !118), !dbg !323
  %9 = load i64, i64* %__arg1, align 8, !dbg !323
  %10 = load i64, i64* %__arg2, align 8, !dbg !323
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #6, !dbg !323, !srcloc !329
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !323
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !323
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !323
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !323
  store i64 %asmresult, i64* %__res, align 8, !dbg !323
  call void @llvm.write_register.i64(metadata !118, i64 %asmresult1), !dbg !323
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !323
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !323
  %12 = load i64, i64* %__res, align 8, !dbg !323
  %conv4 = trunc i64 %12 to i32, !dbg !323
  store i32 %conv4, i32* %tmp, align 4, !dbg !323
  %13 = load i32, i32* %tmp, align 4, !dbg !323
  ret i32 %13, !dbg !330
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: noredzone
declare dso_local void @clear_page_orig(i8*) #4

; Function Attrs: noredzone
declare dso_local void @clear_page_rep(i8*) #4

; Function Attrs: noredzone
declare dso_local void @clear_page_erms(i8*) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #2 !dbg !331 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i32, i32* %flag.addr, align 4, !dbg !337
  %idxprom = sext i32 %0 to i64, !dbg !338
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !338
  %1 = load i8, i8* %arrayidx, align 1, !dbg !338
  %conv = zext i8 %1 to i32, !dbg !338
  ret i32 %conv, !dbg !339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #2 !dbg !340 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !343, metadata !DIExpression()), !dbg !344
  %call = call i32 @xen_feature(i32 2) #9, !dbg !345
  %tobool = icmp ne i32 %call, 0, !dbg !345
  br i1 %tobool, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !348
  store i64 %0, i64* %retval, align 8, !dbg !349
  br label %return, !dbg !349

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !350
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #9, !dbg !351
  store i64 %call1, i64* %mfn, align 8, !dbg !352
  %2 = load i64, i64* %mfn, align 8, !dbg !353
  %cmp = icmp ne i64 %2, -1, !dbg !355
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !356

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !357
  %and = and i64 %3, 4611686018427387903, !dbg !357
  store i64 %and, i64* %mfn, align 8, !dbg !357
  br label %if.end3, !dbg !358

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !359
  store i64 %4, i64* %retval, align 8, !dbg !360
  br label %return, !dbg !360

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !361
  ret i64 %5, !dbg !361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #2 !dbg !362 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !367
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !369
  %cmp = icmp ult i64 %0, %1, !dbg !370
  br i1 %cmp, label %if.then, label %if.else, !dbg !371

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !372
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !373
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !372
  %4 = load i64, i64* %arrayidx, align 8, !dbg !372
  store i64 %4, i64* %mfn, align 8, !dbg !374
  br label %if.end, !dbg !375

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !376
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !376
  %cmp1 = icmp ult i64 %5, %6, !dbg !376
  %lnot = xor i1 %cmp1, true, !dbg !376
  %lnot2 = xor i1 %lnot, true, !dbg !376
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !376
  %conv = sext i32 %lnot.ext to i64, !dbg !376
  %tobool = icmp ne i64 %conv, 0, !dbg !376
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !378

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !379
  %call = call i64 @get_phys_to_machine(i64 %7) #9, !dbg !380
  store i64 %call, i64* %retval, align 8, !dbg !381
  br label %return, !dbg !381

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !382
  %or = or i64 %8, 4611686018427387904, !dbg !382
  store i64 %or, i64* %retval, align 8, !dbg !383
  br label %return, !dbg !383

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !384
  %cmp5 = icmp eq i64 %9, -1, !dbg !384
  %lnot7 = xor i1 %cmp5, true, !dbg !384
  %lnot9 = xor i1 %lnot7, true, !dbg !384
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !384
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !384
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !384
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !386

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !387
  %call14 = call i64 @get_phys_to_machine(i64 %10) #9, !dbg !388
  store i64 %call14, i64* %retval, align 8, !dbg !389
  br label %return, !dbg !389

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !390
  store i64 %11, i64* %retval, align 8, !dbg !391
  br label %return, !dbg !391

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !392
  ret i64 %12, !dbg !392
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_fifo_max_channels() #2 !dbg !393 {
entry:
  ret i32 131072, !dbg !394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_fifo_nr_channels() #2 !dbg !395 {
entry:
  %0 = load i32, i32* @event_array_pages, align 4, !dbg !396
  %conv = zext i32 %0 to i64, !dbg !396
  %mul = mul i64 %conv, 1024, !dbg !397
  %conv1 = trunc i64 %mul to i32, !dbg !396
  ret i32 %conv1, !dbg !398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_fifo_setup(i32 %port) #2 !dbg !399 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %new_array_pages = alloca i32, align 4
  %ret = alloca i32, align 4
  %array_page = alloca i8*, align 8
  %expand_array = alloca %struct.evtchn_expand_array, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %new_array_pages, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i32, i32* %port.addr, align 4, !dbg !406
  %conv = zext i32 %0 to i64, !dbg !406
  %div = udiv i64 %conv, 1024, !dbg !407
  %add = add i64 %div, 1, !dbg !408
  %conv1 = trunc i64 %add to i32, !dbg !406
  store i32 %conv1, i32* %new_array_pages, align 4, !dbg !409
  %1 = load i32, i32* %new_array_pages, align 4, !dbg !410
  %conv2 = zext i32 %1 to i64, !dbg !410
  %cmp = icmp ugt i64 %conv2, 128, !dbg !412
  br i1 %cmp, label %if.then, label %if.end, !dbg !413

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !414
  br label %return, !dbg !414

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !415

while.cond:                                       ; preds = %if.end20, %if.end
  %2 = load i32, i32* @event_array_pages, align 4, !dbg !416
  %3 = load i32, i32* %new_array_pages, align 4, !dbg !417
  %cmp4 = icmp ult i32 %2, %3, !dbg !418
  br i1 %cmp4, label %while.body, label %while.end, !dbg !415

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %array_page, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata %struct.evtchn_expand_array* %expand_array, metadata !422, metadata !DIExpression()), !dbg !426
  %4 = load i32, i32* @event_array_pages, align 4, !dbg !427
  %idxprom = zext i32 %4 to i64, !dbg !428
  %arrayidx = getelementptr [128 x i32*], [128 x i32*]* @event_array, i64 0, i64 %idxprom, !dbg !428
  %5 = load i32*, i32** %arrayidx, align 8, !dbg !428
  %6 = bitcast i32* %5 to i8*, !dbg !428
  store i8* %6, i8** %array_page, align 8, !dbg !429
  %7 = load i8*, i8** %array_page, align 8, !dbg !430
  %tobool = icmp ne i8* %7, null, !dbg !430
  br i1 %tobool, label %if.end13, label %if.then6, !dbg !432

if.then6:                                         ; preds = %while.body
  %call = call i64 @__get_free_pages(i32 3264, i32 0) #9, !dbg !433
  %8 = inttoptr i64 %call to i8*, !dbg !435
  store i8* %8, i8** %array_page, align 8, !dbg !436
  %9 = load i8*, i8** %array_page, align 8, !dbg !437
  %cmp7 = icmp eq i8* %9, null, !dbg !439
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !440

if.then9:                                         ; preds = %if.then6
  store i32 -12, i32* %ret, align 4, !dbg !441
  br label %error, !dbg !443

if.end10:                                         ; preds = %if.then6
  %10 = load i8*, i8** %array_page, align 8, !dbg !444
  %11 = bitcast i8* %10 to i32*, !dbg !444
  %12 = load i32, i32* @event_array_pages, align 4, !dbg !445
  %idxprom11 = zext i32 %12 to i64, !dbg !446
  %arrayidx12 = getelementptr [128 x i32*], [128 x i32*]* @event_array, i64 0, i64 %idxprom11, !dbg !446
  store i32* %11, i32** %arrayidx12, align 8, !dbg !447
  br label %if.end13, !dbg !448

if.end13:                                         ; preds = %if.end10, %while.body
  %13 = load i8*, i8** %array_page, align 8, !dbg !449
  %14 = bitcast i8* %13 to i32*, !dbg !449
  call void @init_array_page(i32* %14) #9, !dbg !450
  %15 = load i8*, i8** %array_page, align 8, !dbg !451
  %16 = ptrtoint i8* %15 to i64, !dbg !451
  %call14 = call i64 @__phys_addr_nodebug(i64 %16) #9, !dbg !451
  %shr = lshr i64 %call14, 12, !dbg !451
  %call15 = call i64 @pfn_to_gfn(i64 %shr) #9, !dbg !451
  %array_gfn = getelementptr inbounds %struct.evtchn_expand_array, %struct.evtchn_expand_array* %expand_array, i32 0, i32 0, !dbg !452
  store i64 %call15, i64* %array_gfn, align 8, !dbg !453
  %17 = bitcast %struct.evtchn_expand_array* %expand_array to i8*, !dbg !454
  %call16 = call i32 @HYPERVISOR_event_channel_op(i32 12, i8* %17) #9, !dbg !455
  store i32 %call16, i32* %ret, align 4, !dbg !456
  %18 = load i32, i32* %ret, align 4, !dbg !457
  %cmp17 = icmp slt i32 %18, 0, !dbg !459
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !460

if.then19:                                        ; preds = %if.end13
  br label %error, !dbg !461

if.end20:                                         ; preds = %if.end13
  %19 = load i32, i32* @event_array_pages, align 4, !dbg !462
  %inc = add i32 %19, 1, !dbg !462
  store i32 %inc, i32* @event_array_pages, align 4, !dbg !462
  br label %while.cond, !dbg !415, !llvm.loop !463

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !465
  br label %return, !dbg !465

error:                                            ; preds = %if.then19, %if.then9
  call void @llvm.dbg.label(metadata !466), !dbg !467
  %20 = load i32, i32* @event_array_pages, align 4, !dbg !468
  %cmp21 = icmp eq i32 %20, 0, !dbg !470
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !471

if.then23:                                        ; preds = %error
  %21 = load i32, i32* %ret, align 4, !dbg !472
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %21) #11, !dbg !473
  unreachable, !dbg !473

if.else:                                          ; preds = %error
  %22 = load i32, i32* %ret, align 4, !dbg !474
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %22) #10, !dbg !474
  br label %if.end25

if.end25:                                         ; preds = %if.else
  call void @free_unused_array_pages() #9, !dbg !475
  %23 = load i32, i32* %ret, align 4, !dbg !476
  store i32 %23, i32* %retval, align 4, !dbg !477
  br label %return, !dbg !477

return:                                           ; preds = %if.end25, %while.end, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !478
  ret i32 %24, !dbg !478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_bind_to_cpu(i32 %evtchn, i32 %cpu, i32 %old_cpu) #2 !dbg !479 {
entry:
  %evtchn.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %old_cpu.addr = alloca i32, align 4
  store i32 %evtchn, i32* %evtchn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %evtchn.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 %old_cpu, i32* %old_cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %old_cpu.addr, metadata !484, metadata !DIExpression()), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_clear_pending(i32 %port) #2 !dbg !487 {
entry:
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i32** %word, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i32, i32* %port.addr, align 4, !dbg !492
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !493
  store i32* %call, i32** %word, align 8, !dbg !491
  %1 = load i32*, i32** %word, align 8, !dbg !494
  %2 = ptrtoint i32* %1 to i64, !dbg !494
  %and = and i64 %2, 4, !dbg !494
  %tobool = icmp ne i64 %and, 0, !dbg !494
  %3 = zext i1 %tobool to i64, !dbg !494
  %cond = select i1 %tobool, i32 63, i32 31, !dbg !494
  %conv = sext i32 %cond to i64, !dbg !494
  %4 = load i32*, i32** %word, align 8, !dbg !495
  %5 = ptrtoint i32* %4 to i64, !dbg !495
  %and1 = and i64 %5, -8, !dbg !495
  %6 = inttoptr i64 %and1 to i64*, !dbg !495
  call void @sync_clear_bit(i64 %conv, i64* %6) #9, !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_set_pending(i32 %port) #2 !dbg !498 {
entry:
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i32** %word, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i32, i32* %port.addr, align 4, !dbg !503
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !504
  store i32* %call, i32** %word, align 8, !dbg !502
  %1 = load i32*, i32** %word, align 8, !dbg !505
  %2 = ptrtoint i32* %1 to i64, !dbg !505
  %and = and i64 %2, 4, !dbg !505
  %tobool = icmp ne i64 %and, 0, !dbg !505
  %3 = zext i1 %tobool to i64, !dbg !505
  %cond = select i1 %tobool, i32 63, i32 31, !dbg !505
  %conv = sext i32 %cond to i64, !dbg !505
  %4 = load i32*, i32** %word, align 8, !dbg !506
  %5 = ptrtoint i32* %4 to i64, !dbg !506
  %and1 = and i64 %5, -8, !dbg !506
  %6 = inttoptr i64 %and1 to i64*, !dbg !506
  call void @sync_set_bit(i64 %conv, i64* %6) #9, !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @evtchn_fifo_is_pending(i32 %port) #2 !dbg !509 {
entry:
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata i32** %word, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load i32, i32* %port.addr, align 4, !dbg !514
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !515
  store i32* %call, i32** %word, align 8, !dbg !513
  %1 = load i32*, i32** %word, align 8, !dbg !516
  %2 = ptrtoint i32* %1 to i64, !dbg !516
  %and = and i64 %2, 4, !dbg !516
  %tobool = icmp ne i64 %and, 0, !dbg !516
  %3 = zext i1 %tobool to i64, !dbg !516
  %cond = select i1 %tobool, i32 63, i32 31, !dbg !516
  %conv = sext i32 %cond to i64, !dbg !516
  %4 = load i32*, i32** %word, align 8, !dbg !516
  %5 = ptrtoint i32* %4 to i64, !dbg !516
  %and1 = and i64 %5, -8, !dbg !516
  %6 = inttoptr i64 %and1 to i64*, !dbg !516
  %call2 = call zeroext i1 @test_bit(i64 %conv, i64* %6) #9, !dbg !516
  ret i1 %call2, !dbg !517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @evtchn_fifo_test_and_set_mask(i32 %port) #2 !dbg !518 {
entry:
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i32** %word, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i32, i32* %port.addr, align 4, !dbg !523
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !524
  store i32* %call, i32** %word, align 8, !dbg !522
  %1 = load i32*, i32** %word, align 8, !dbg !525
  %2 = ptrtoint i32* %1 to i64, !dbg !525
  %and = and i64 %2, 4, !dbg !525
  %tobool = icmp ne i64 %and, 0, !dbg !525
  %3 = zext i1 %tobool to i64, !dbg !525
  %cond = select i1 %tobool, i32 62, i32 30, !dbg !525
  %conv = sext i32 %cond to i64, !dbg !525
  %4 = load i32*, i32** %word, align 8, !dbg !526
  %5 = ptrtoint i32* %4 to i64, !dbg !526
  %and1 = and i64 %5, -8, !dbg !526
  %6 = inttoptr i64 %and1 to i64*, !dbg !526
  %call2 = call zeroext i1 @sync_test_and_set_bit(i64 %conv, i64* %6) #9, !dbg !527
  ret i1 %call2, !dbg !528
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_mask(i32 %port) #2 !dbg !529 {
entry:
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i32** %word, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load i32, i32* %port.addr, align 4, !dbg !534
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !535
  store i32* %call, i32** %word, align 8, !dbg !533
  %1 = load i32*, i32** %word, align 8, !dbg !536
  %2 = ptrtoint i32* %1 to i64, !dbg !536
  %and = and i64 %2, 4, !dbg !536
  %tobool = icmp ne i64 %and, 0, !dbg !536
  %3 = zext i1 %tobool to i64, !dbg !536
  %cond = select i1 %tobool, i32 62, i32 30, !dbg !536
  %conv = sext i32 %cond to i64, !dbg !536
  %4 = load i32*, i32** %word, align 8, !dbg !537
  %5 = ptrtoint i32* %4 to i64, !dbg !537
  %and1 = and i64 %5, -8, !dbg !537
  %6 = inttoptr i64 %and1 to i64*, !dbg !537
  call void @sync_set_bit(i64 %conv, i64* %6) #9, !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_unmask(i32 %port) #2 !dbg !540 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !541, metadata !DIExpression()), !dbg !546
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %unmask = alloca %struct.evtchn_unmask, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i32** %word, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i32, i32* %port.addr, align 4, !dbg !556
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !557
  store i32* %call, i32** %word, align 8, !dbg !555
  br label %do.body, !dbg !558

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !559, metadata !DIExpression()), !dbg !560
  br label %do.body1, !dbg !560

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !561, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !565, metadata !DIExpression()), !dbg !564
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !564
  %conv = zext i1 %cmp to i32, !dbg !564
  store i32 1, i32* %tmp, align 4, !dbg !564
  %1 = load i32, i32* %tmp, align 4, !dbg !564
  %call2 = call i64 @arch_local_save_flags() #9, !dbg !566
  store i64 %call2, i64* %_flags, align 8, !dbg !566
  br label %do.end, !dbg !566

do.end:                                           ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !567, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !570, metadata !DIExpression()), !dbg !569
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !569
  %conv7 = zext i1 %cmp6 to i32, !dbg !569
  store i32 1, i32* %tmp8, align 4, !dbg !569
  %2 = load i32, i32* %tmp8, align 4, !dbg !569
  %3 = load i64, i64* %_flags, align 8, !dbg !571
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !572
  %and.i = and i64 %4, 512, !dbg !573
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !574
  %lnot.i = xor i1 %tobool.i, true, !dbg !574
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !574
  store i32 %lnot.ext.i, i32* %tmp9, align 4, !dbg !571
  %5 = load i32, i32* %tmp9, align 4, !dbg !571
  store i32 %5, i32* %tmp3, align 4, !dbg !566
  %6 = load i32, i32* %tmp3, align 4, !dbg !560
  %tobool = icmp ne i32 %6, 0, !dbg !575
  %lnot = xor i1 %tobool, true, !dbg !575
  %lnot11 = xor i1 %lnot, true, !dbg !575
  %lnot12 = xor i1 %lnot11, true, !dbg !575
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !575
  %conv13 = sext i32 %lnot.ext to i64, !dbg !575
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !575
  br i1 %tobool14, label %if.then, label %if.end, !dbg !576

if.then:                                          ; preds = %do.end
  br label %do.body15, !dbg !575

do.body15:                                        ; preds = %if.then
  br label %do.body16, !dbg !577

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !579

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !577

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 258, i32 0, i64 12) #6, !dbg !581, !srcloc !583
  br label %do.end19, !dbg !581

do.end19:                                         ; preds = %do.body18
  br label %do.body20, !dbg !577

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 232) #6, !dbg !584, !srcloc !587
  unreachable, !dbg !588

do.end21:                                         ; No predecessors!
  br label %do.end22, !dbg !577

do.end22:                                         ; preds = %do.end21
  br label %if.end, !dbg !577

if.end:                                           ; preds = %do.end22, %do.end
  br label %do.end23, !dbg !576

do.end23:                                         ; preds = %if.end
  %7 = load i32*, i32** %word, align 8, !dbg !589
  %call24 = call zeroext i1 @clear_masked_cond(i32* %7) #9, !dbg !591
  br i1 %call24, label %if.end28, label %if.then25, !dbg !592

if.then25:                                        ; preds = %do.end23
  call void @llvm.dbg.declare(metadata %struct.evtchn_unmask* %unmask, metadata !593, metadata !DIExpression()), !dbg !598
  %port26 = getelementptr inbounds %struct.evtchn_unmask, %struct.evtchn_unmask* %unmask, i32 0, i32 0, !dbg !599
  %8 = load i32, i32* %port.addr, align 4, !dbg !600
  store i32 %8, i32* %port26, align 4, !dbg !599
  %9 = bitcast %struct.evtchn_unmask* %unmask to i8*, !dbg !601
  %call27 = call i32 @HYPERVISOR_event_channel_op(i32 9, i8* %9) #9, !dbg !602
  br label %if.end28, !dbg !603

if.end28:                                         ; preds = %if.then25, %do.end23
  ret void, !dbg !604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_handle_events(i32 %cpu, %struct.evtchn_loop_ctrl* %ctrl) #2 !dbg !605 {
entry:
  %cpu.addr = alloca i32, align 4
  %ctrl.addr = alloca %struct.evtchn_loop_ctrl*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store %struct.evtchn_loop_ctrl* %ctrl, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evtchn_loop_ctrl** %ctrl.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !610
  %1 = load %struct.evtchn_loop_ctrl*, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8, !dbg !611
  call void @__evtchn_fifo_handle_events(i32 %0, %struct.evtchn_loop_ctrl* %1) #9, !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_fifo_resume() #2 !dbg !614 {
entry:
  %cpu = alloca i32, align 4
  %control_block = alloca i8*, align 8
  %tmp = alloca %struct.evtchn_fifo_control_block**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.evtchn_fifo_control_block**, align 8
  %ret = alloca i32, align 4
  %tmp4 = alloca %struct.evtchn_fifo_control_block**, align 8
  %__vpp_verify6 = alloca i8*, align 8
  %tmp8 = alloca %struct.evtchn_fifo_control_block**, align 8
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !615, metadata !DIExpression()), !dbg !616
  store i32 0, i32* %cpu, align 4, !dbg !617
  br label %for.cond, !dbg !617

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cpu, align 4, !dbg !619
  %cmp = icmp ult i32 %0, 1, !dbg !619
  br i1 %cmp, label %for.body, label %for.end, !dbg !617

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %control_block, metadata !621, metadata !DIExpression()), !dbg !623
  %1 = load i32, i32* %cpu, align 4, !dbg !624
  br label %do.body, !dbg !626

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !628, metadata !DIExpression()), !dbg !630
  store i8* null, i8** %__vpp_verify, align 8, !dbg !630
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !630
  br label %do.end, !dbg !630

do.end:                                           ; preds = %do.body
  store %struct.evtchn_fifo_control_block** @cpu_control_block, %struct.evtchn_fifo_control_block*** %tmp1, align 8, !dbg !630
  %3 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp1, align 8, !dbg !626
  store %struct.evtchn_fifo_control_block** %3, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !624
  %4 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !624
  %5 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %4, align 8, !dbg !631
  %6 = bitcast %struct.evtchn_fifo_control_block* %5 to i8*, !dbg !631
  store i8* %6, i8** %control_block, align 8, !dbg !623
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !632, metadata !DIExpression()), !dbg !633
  %7 = load i8*, i8** %control_block, align 8, !dbg !634
  %tobool = icmp ne i8* %7, null, !dbg !634
  br i1 %tobool, label %if.end, label %if.then, !dbg !636

if.then:                                          ; preds = %do.end
  br label %for.inc, !dbg !637

if.end:                                           ; preds = %do.end
  %8 = load i32, i32* %cpu, align 4, !dbg !638
  %cmp2 = icmp eq i32 %8, 0, !dbg !638
  br i1 %cmp2, label %if.end9, label %if.then3, !dbg !640

if.then3:                                         ; preds = %if.end
  %9 = load i8*, i8** %control_block, align 8, !dbg !641
  %10 = ptrtoint i8* %9 to i64, !dbg !641
  call void @free_pages(i64 %10, i32 0) #9, !dbg !641
  %11 = load i32, i32* %cpu, align 4, !dbg !643
  br label %do.body5, !dbg !645

do.body5:                                         ; preds = %if.then3
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify6, metadata !647, metadata !DIExpression()), !dbg !649
  store i8* null, i8** %__vpp_verify6, align 8, !dbg !649
  %12 = load i8*, i8** %__vpp_verify6, align 8, !dbg !649
  br label %do.end7, !dbg !649

do.end7:                                          ; preds = %do.body5
  store %struct.evtchn_fifo_control_block** @cpu_control_block, %struct.evtchn_fifo_control_block*** %tmp8, align 8, !dbg !649
  %13 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp8, align 8, !dbg !645
  store %struct.evtchn_fifo_control_block** %13, %struct.evtchn_fifo_control_block*** %tmp4, align 8, !dbg !643
  %14 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp4, align 8, !dbg !643
  store %struct.evtchn_fifo_control_block* null, %struct.evtchn_fifo_control_block** %14, align 8, !dbg !650
  br label %for.inc, !dbg !651

if.end9:                                          ; preds = %if.end
  %15 = load i32, i32* %cpu, align 4, !dbg !652
  %16 = load i8*, i8** %control_block, align 8, !dbg !653
  %17 = bitcast i8* %16 to %struct.evtchn_fifo_control_block*, !dbg !653
  %call = call i32 @init_control_block(i32 %15, %struct.evtchn_fifo_control_block* %17) #9, !dbg !654
  store i32 %call, i32* %ret, align 4, !dbg !655
  br label %do.body10, !dbg !656

do.body10:                                        ; preds = %if.end9
  %18 = load i32, i32* %ret, align 4, !dbg !657
  %cmp11 = icmp slt i32 %18, 0, !dbg !657
  %lnot = xor i1 %cmp11, true, !dbg !657
  %lnot12 = xor i1 %lnot, true, !dbg !657
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !657
  %conv = sext i32 %lnot.ext to i64, !dbg !657
  %tobool13 = icmp ne i64 %conv, 0, !dbg !657
  br i1 %tobool13, label %if.then14, label %if.end23, !dbg !660

if.then14:                                        ; preds = %do.body10
  br label %do.body15, !dbg !657

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !661

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !663

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !661

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 372, i32 0, i64 12) #6, !dbg !665, !srcloc !667
  br label %do.end19, !dbg !665

do.end19:                                         ; preds = %do.body18
  br label %do.body20, !dbg !661

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 233) #6, !dbg !668, !srcloc !671
  unreachable, !dbg !672

do.end21:                                         ; No predecessors!
  br label %do.end22, !dbg !661

do.end22:                                         ; preds = %do.end21
  br label %if.end23, !dbg !661

if.end23:                                         ; preds = %do.end22, %do.body10
  br label %do.end24, !dbg !660

do.end24:                                         ; preds = %if.end23
  br label %for.inc, !dbg !673

for.inc:                                          ; preds = %do.end24, %do.end7, %if.then
  %19 = load i32, i32* %cpu, align 4, !dbg !619
  %inc = add i32 %19, 1, !dbg !619
  store i32 %inc, i32* %cpu, align 4, !dbg !619
  br label %for.cond, !dbg !619, !llvm.loop !674

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @event_array_pages, align 4, !dbg !676
  ret void, !dbg !677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_fifo_percpu_init(i32 %cpu) #2 !dbg !678 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %tmp = alloca %struct.evtchn_fifo_control_block**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.evtchn_fifo_control_block**, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !679, metadata !DIExpression()), !dbg !680
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !681
  br label %do.body, !dbg !684

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !686, metadata !DIExpression()), !dbg !688
  store i8* null, i8** %__vpp_verify, align 8, !dbg !688
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !688
  br label %do.end, !dbg !688

do.end:                                           ; preds = %do.body
  store %struct.evtchn_fifo_control_block** @cpu_control_block, %struct.evtchn_fifo_control_block*** %tmp1, align 8, !dbg !688
  %2 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp1, align 8, !dbg !684
  store %struct.evtchn_fifo_control_block** %2, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !681
  %3 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !681
  %4 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %3, align 8, !dbg !689
  %tobool = icmp ne %struct.evtchn_fifo_control_block* %4, null, !dbg !689
  br i1 %tobool, label %if.end, label %if.then, !dbg !690

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %cpu.addr, align 4, !dbg !691
  %call = call i32 @evtchn_fifo_alloc_control_block(i32 %5) #9, !dbg !692
  store i32 %call, i32* %retval, align 4, !dbg !693
  br label %return, !dbg !693

if.end:                                           ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !694
  br label %return, !dbg !694

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !695
  ret i32 %6, !dbg !695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_fifo_percpu_deinit(i32 %cpu) #2 !dbg !696 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !697, metadata !DIExpression()), !dbg !698
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !699
  call void @__evtchn_fifo_handle_events(i32 %0, %struct.evtchn_loop_ctrl* null) #9, !dbg !700
  ret i32 0, !dbg !701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @init_array_page(i32* %array_page) #2 !dbg !702 {
entry:
  %array_page.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %array_page, i32** %array_page.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %array_page.addr, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %i, metadata !707, metadata !DIExpression()), !dbg !708
  store i32 0, i32* %i, align 4, !dbg !709
  br label %for.cond, !dbg !711

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !712
  %conv = zext i32 %0 to i64, !dbg !712
  %cmp = icmp ult i64 %conv, 1024, !dbg !714
  br i1 %cmp, label %for.body, label %for.end, !dbg !715

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %array_page.addr, align 8, !dbg !716
  %2 = load i32, i32* %i, align 4, !dbg !717
  %idxprom = zext i32 %2 to i64, !dbg !716
  %arrayidx = getelementptr i32, i32* %1, i64 %idxprom, !dbg !716
  store i32 1073741824, i32* %arrayidx, align 4, !dbg !718
  br label %for.inc, !dbg !716

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !719
  %inc = add i32 %3, 1, !dbg !719
  store i32 %inc, i32* %i, align 4, !dbg !719
  br label %for.cond, !dbg !720, !llvm.loop !721

for.end:                                          ; preds = %for.cond
  ret void, !dbg !723
}

; Function Attrs: cold noredzone noreturn
declare dso_local void @panic(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_unused_array_pages() #2 !dbg !724 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !725, metadata !DIExpression()), !dbg !726
  %0 = load i32, i32* @event_array_pages, align 4, !dbg !727
  store i32 %0, i32* %i, align 4, !dbg !729
  br label %for.cond, !dbg !730

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !731
  %conv = zext i32 %1 to i64, !dbg !731
  %cmp = icmp ult i64 %conv, 128, !dbg !733
  br i1 %cmp, label %for.body, label %for.end, !dbg !734

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !735
  %idxprom = zext i32 %2 to i64, !dbg !738
  %arrayidx = getelementptr [128 x i32*], [128 x i32*]* @event_array, i64 0, i64 %idxprom, !dbg !738
  %3 = load i32*, i32** %arrayidx, align 8, !dbg !738
  %tobool = icmp ne i32* %3, null, !dbg !738
  br i1 %tobool, label %if.end, label %if.then, !dbg !739

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !740

if.end:                                           ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !741
  %idxprom2 = zext i32 %4 to i64, !dbg !741
  %arrayidx3 = getelementptr [128 x i32*], [128 x i32*]* @event_array, i64 0, i64 %idxprom2, !dbg !741
  %5 = load i32*, i32** %arrayidx3, align 8, !dbg !741
  %6 = ptrtoint i32* %5 to i64, !dbg !741
  call void @free_pages(i64 %6, i32 0) #9, !dbg !741
  %7 = load i32, i32* %i, align 4, !dbg !742
  %idxprom4 = zext i32 %7 to i64, !dbg !743
  %arrayidx5 = getelementptr [128 x i32*], [128 x i32*]* @event_array, i64 0, i64 %idxprom4, !dbg !743
  store i32* null, i32** %arrayidx5, align 8, !dbg !744
  br label %for.inc, !dbg !745

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !746
  %inc = add i32 %8, 1, !dbg !746
  store i32 %inc, i32* %i, align 4, !dbg !746
  br label %for.cond, !dbg !747, !llvm.loop !748

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32* @event_word_from_port(i32 %port) #2 !dbg !751 {
entry:
  %port.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata i32* %i, metadata !756, metadata !DIExpression()), !dbg !757
  %0 = load i32, i32* %port.addr, align 4, !dbg !758
  %conv = zext i32 %0 to i64, !dbg !758
  %div = udiv i64 %conv, 1024, !dbg !759
  %conv1 = trunc i64 %div to i32, !dbg !758
  store i32 %conv1, i32* %i, align 4, !dbg !757
  %1 = load i32, i32* %i, align 4, !dbg !760
  %idxprom = zext i32 %1 to i64, !dbg !761
  %arrayidx = getelementptr [128 x i32*], [128 x i32*]* @event_array, i64 0, i64 %idxprom, !dbg !761
  %2 = load i32*, i32** %arrayidx, align 8, !dbg !761
  %3 = load i32, i32* %port.addr, align 4, !dbg !762
  %conv2 = zext i32 %3 to i64, !dbg !762
  %rem = urem i64 %conv2, 1024, !dbg !763
  %add.ptr = getelementptr i32, i32* %2, i64 %rem, !dbg !764
  ret i32* %add.ptr, !dbg !765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sync_clear_bit(i64 %nr, i64* %addr) #2 !dbg !766 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !772, metadata !DIExpression()), !dbg !773
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !774, metadata !DIExpression()), !dbg !775
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !776
  %1 = load i64, i64* %nr.addr, align 8, !dbg !777
  call void asm sideeffect "lock;  btrq  $1,$0", "=*m,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #6, !dbg !778, !srcloc !779
  ret void, !dbg !780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sync_set_bit(i64 %nr, i64* %addr) #2 !dbg !781 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !782, metadata !DIExpression()), !dbg !783
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !784, metadata !DIExpression()), !dbg !785
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !786
  %1 = load i64, i64* %nr.addr, align 8, !dbg !787
  call void asm sideeffect "lock;  btsq  $1,$0", "=*m,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #6, !dbg !788, !srcloc !789
  ret void, !dbg !790
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !791 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !797, metadata !DIExpression()), !dbg !800
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !802, metadata !DIExpression()), !dbg !803
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !804, metadata !DIExpression()), !dbg !805
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !806, metadata !DIExpression()), !dbg !808
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !810, metadata !DIExpression()), !dbg !811
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !812, metadata !DIExpression()), !dbg !824
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !826, metadata !DIExpression()), !dbg !827
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !828, metadata !DIExpression()), !dbg !829
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !832
  %1 = load i64, i64* %nr.addr, align 8, !dbg !833
  %div = sdiv i64 %1, 64, !dbg !833
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !834
  %2 = bitcast i64* %add.ptr to i8*, !dbg !832
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !835
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !836
  %conv.i = trunc i64 %4 to i32, !dbg !836
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !837
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !838
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !838
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !838
  %7 = load i64, i64* %nr.addr, align 8, !dbg !839
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !839
  br i1 %8, label %cond.true, label %cond.false, !dbg !839

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !839
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !839
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !840
  %and.i = and i64 %11, 63, !dbg !841
  %shl.i = shl i64 1, %and.i, !dbg !842
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !843
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !844
  %shr.i = ashr i64 %13, 6, !dbg !845
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !843
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !843
  %and1.i = and i64 %shl.i, %14, !dbg !846
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !847
  %conv = zext i1 %cmp.i to i32, !dbg !839
  br label %cond.end, !dbg !839

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !839
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !839
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !848
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !849
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !850, !srcloc !851
  store i8 %19, i8* %oldbit.i, align 1, !dbg !850
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !852
  %tobool.i = trunc i8 %20 to i1, !dbg !852
  %conv2 = zext i1 %tobool.i to i32, !dbg !839
  br label %cond.end, !dbg !839

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !839
  %tobool = icmp ne i32 %cond, 0, !dbg !839
  ret i1 %tobool, !dbg !853
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !854 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !860, metadata !DIExpression()), !dbg !861
  ret i1 true, !dbg !862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !863 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !869, metadata !DIExpression()), !dbg !870
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !871, metadata !DIExpression()), !dbg !872
  ret void, !dbg !873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @sync_test_and_set_bit(i64 %nr, i64* %addr) #2 !dbg !874 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !877, metadata !DIExpression()), !dbg !878
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata i8* %c, metadata !881, metadata !DIExpression()), !dbg !883
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !883
  %1 = load i64, i64* %nr.addr, align 8, !dbg !883
  %2 = call i8 asm sideeffect "lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #6, !dbg !883, !srcloc !884
  store i8 %2, i8* %c, align 1, !dbg !883
  %3 = load i8, i8* %c, align 1, !dbg !883
  %tobool = trunc i8 %3 to i1, !dbg !883
  %frombool = zext i1 %tobool to i8, !dbg !883
  store i8 %frombool, i8* %tmp, align 1, !dbg !883
  %4 = load i8, i8* %tmp, align 1, !dbg !883
  %tobool1 = trunc i8 %4 to i1, !dbg !883
  ret i1 %tobool1, !dbg !885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !886 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !890, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !893, metadata !DIExpression()), !dbg !892
  %0 = load i64, i64* %__edi, align 8, !dbg !892
  store i64 %0, i64* %__edi, align 8, !dbg !892
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !894, metadata !DIExpression()), !dbg !892
  %1 = load i64, i64* %__esi, align 8, !dbg !892
  store i64 %1, i64* %__esi, align 8, !dbg !892
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !895, metadata !DIExpression()), !dbg !892
  %2 = load i64, i64* %__edx, align 8, !dbg !892
  store i64 %2, i64* %__edx, align 8, !dbg !892
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !896, metadata !DIExpression()), !dbg !892
  %3 = load i64, i64* %__ecx, align 8, !dbg !892
  store i64 %3, i64* %__ecx, align 8, !dbg !892
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !897, metadata !DIExpression()), !dbg !892
  %4 = load i64, i64* %__eax, align 8, !dbg !892
  store i64 %4, i64* %__eax, align 8, !dbg !892
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !892
  %6 = call i64 @llvm.read_register.i64(metadata !118), !dbg !898
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !898, !srcloc !901
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !898
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !898
  store i64 %asmresult, i64* %__eax, align 8, !dbg !898
  call void @llvm.write_register.i64(metadata !118, i64 %asmresult1), !dbg !898
  %8 = load i64, i64* %__eax, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !902, metadata !DIExpression()), !dbg !904
  store i64 -1, i64* %__mask, align 8, !dbg !904
  %9 = load i64, i64* %__mask, align 8, !dbg !904
  store i64 %9, i64* %tmp, align 8, !dbg !904
  %10 = load i64, i64* %tmp, align 8, !dbg !904
  %and = and i64 %8, %10, !dbg !898
  store i64 %and, i64* %__ret, align 8, !dbg !898
  %11 = load i64, i64* %__ret, align 8, !dbg !892
  store i64 %11, i64* %tmp2, align 8, !dbg !905
  %12 = load i64, i64* %tmp2, align 8, !dbg !892
  ret i64 %12, !dbg !906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @clear_masked_cond(i32* %word) #2 !dbg !907 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !912, metadata !DIExpression()), !dbg !914
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !918, metadata !DIExpression()), !dbg !919
  %retval = alloca i1, align 1
  %word.addr = alloca i32*, align 8
  %new = alloca i32, align 4
  %old = alloca i32, align 4
  %w = alloca i32, align 4
  %__ai_ptr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca i32*, align 8
  %tmp7 = alloca i32, align 4
  store i32* %word, i32** %word.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %word.addr, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %new, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %old, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata i32* %w, metadata !926, metadata !DIExpression()), !dbg !927
  %0 = load i32*, i32** %word.addr, align 8, !dbg !928
  %1 = load volatile i32, i32* %0, align 4, !dbg !929
  store i32 %1, i32* %w, align 4, !dbg !930
  br label %do.body, !dbg !931

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %w, align 4, !dbg !932
  %and = and i32 %2, 1073741824, !dbg !934
  %tobool = icmp ne i32 %and, 0, !dbg !934
  br i1 %tobool, label %if.end, label %if.then, !dbg !935

if.then:                                          ; preds = %do.body
  store i1 true, i1* %retval, align 1, !dbg !936
  br label %return, !dbg !936

if.end:                                           ; preds = %do.body
  %3 = load i32, i32* %w, align 4, !dbg !937
  %and1 = and i32 %3, -2147483648, !dbg !939
  %tobool2 = icmp ne i32 %and1, 0, !dbg !939
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !940

if.then3:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !941
  br label %return, !dbg !941

if.end4:                                          ; preds = %if.end
  %4 = load i32, i32* %w, align 4, !dbg !942
  %and5 = and i32 %4, -268435457, !dbg !943
  store i32 %and5, i32* %old, align 4, !dbg !944
  %5 = load i32, i32* %old, align 4, !dbg !945
  %and6 = and i32 %5, -1073741825, !dbg !946
  store i32 %and6, i32* %new, align 4, !dbg !947
  call void @llvm.dbg.declare(metadata i32** %__ai_ptr, metadata !948, metadata !DIExpression()), !dbg !949
  %6 = load i32*, i32** %word.addr, align 8, !dbg !949
  store i32* %6, i32** %__ai_ptr, align 8, !dbg !949
  %7 = load i32*, i32** %__ai_ptr, align 8, !dbg !949
  %8 = bitcast i32* %7 to i8*, !dbg !949
  store i8* %8, i8** %v.addr.i, align 8
  store i64 4, i64* %size.addr.i, align 8
  %9 = load i8*, i8** %v.addr.i, align 8, !dbg !950
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !951
  %conv.i = trunc i64 %10 to i32, !dbg !951
  %call.i = call zeroext i1 @kasan_check_write(i8* %9, i32 %conv.i) #12, !dbg !952
  %11 = load i8*, i8** %v.addr.i, align 8, !dbg !953
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !953
  call void @kcsan_check_access(i8* %11, i64 %12, i32 5) #12, !dbg !953
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !954, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %__old, metadata !957, metadata !DIExpression()), !dbg !956
  %13 = load i32, i32* %old, align 4, !dbg !956
  store volatile i32 %13, i32* %__old, align 4, !dbg !956
  call void @llvm.dbg.declare(metadata i32* %__new, metadata !958, metadata !DIExpression()), !dbg !956
  %14 = load i32, i32* %new, align 4, !dbg !956
  store volatile i32 %14, i32* %__new, align 4, !dbg !956
  call void @llvm.dbg.declare(metadata i32** %__ptr, metadata !959, metadata !DIExpression()), !dbg !956
  %15 = load i32*, i32** %__ai_ptr, align 8, !dbg !956
  store i32* %15, i32** %__ptr, align 8, !dbg !956
  %16 = load i32*, i32** %__ptr, align 8, !dbg !956
  %17 = load volatile i32, i32* %__new, align 4, !dbg !956
  %18 = load volatile i32, i32* %__old, align 4, !dbg !956
  %19 = call i32 asm sideeffect "lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %16, i32 %17, i32 %18, i32* %16) #6, !dbg !956, !srcloc !960
  store volatile i32 %19, i32* %__ret, align 4, !dbg !956
  %20 = load volatile i32, i32* %__ret, align 4, !dbg !956
  store i32 %20, i32* %tmp7, align 4, !dbg !956
  %21 = load i32, i32* %tmp7, align 4, !dbg !956
  store i32 %21, i32* %tmp, align 4, !dbg !949
  %22 = load i32, i32* %tmp, align 4, !dbg !949
  store i32 %22, i32* %w, align 4, !dbg !961
  br label %do.cond, !dbg !962

do.cond:                                          ; preds = %if.end4
  %23 = load i32, i32* %w, align 4, !dbg !963
  %24 = load i32, i32* %old, align 4, !dbg !964
  %cmp = icmp ne i32 %23, %24, !dbg !965
  br i1 %cmp, label %do.body, label %do.end, !dbg !962, !llvm.loop !966

do.end:                                           ; preds = %do.cond
  store i1 true, i1* %retval, align 1, !dbg !968
  br label %return, !dbg !968

return:                                           ; preds = %do.end, %if.then3, %if.then
  %25 = load i1, i1* %retval, align 1, !dbg !969
  ret i1 %25, !dbg !969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !970 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !971, metadata !DIExpression()), !dbg !972
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !973, metadata !DIExpression()), !dbg !974
  ret i1 true, !dbg !975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__evtchn_fifo_handle_events(i32 %cpu, %struct.evtchn_loop_ctrl* %ctrl) #2 !dbg !976 {
entry:
  %v.addr.i12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i12, metadata !912, metadata !DIExpression()), !dbg !977
  %size.addr.i13 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i13, metadata !918, metadata !DIExpression()), !dbg !981
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !912, metadata !DIExpression()), !dbg !982
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !918, metadata !DIExpression()), !dbg !985
  %cpu.addr = alloca i32, align 4
  %ctrl.addr = alloca %struct.evtchn_loop_ctrl*, align 8
  %control_block = alloca %struct.evtchn_fifo_control_block*, align 8
  %ready = alloca i64, align 8
  %q = alloca i32, align 4
  %tmp = alloca %struct.evtchn_fifo_control_block**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.evtchn_fifo_control_block**, align 8
  %__ai_ptr = alloca i32*, align 8
  %tmp3 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__ai_ptr6 = alloca i32*, align 8
  %tmp8 = alloca i32, align 4
  %__ret9 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !986, metadata !DIExpression()), !dbg !987
  store %struct.evtchn_loop_ctrl* %ctrl, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evtchn_loop_ctrl** %ctrl.addr, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.declare(metadata %struct.evtchn_fifo_control_block** %control_block, metadata !990, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.declare(metadata i64* %ready, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata i32* %q, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !996
  br label %do.body, !dbg !998

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1000, metadata !DIExpression()), !dbg !1002
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1002
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !1002
  br label %do.end, !dbg !1002

do.end:                                           ; preds = %do.body
  store %struct.evtchn_fifo_control_block** @cpu_control_block, %struct.evtchn_fifo_control_block*** %tmp1, align 8, !dbg !1002
  %2 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp1, align 8, !dbg !998
  store %struct.evtchn_fifo_control_block** %2, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !996
  %3 = load %struct.evtchn_fifo_control_block**, %struct.evtchn_fifo_control_block*** %tmp, align 8, !dbg !996
  %4 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %3, align 8, !dbg !1003
  store %struct.evtchn_fifo_control_block* %4, %struct.evtchn_fifo_control_block** %control_block, align 8, !dbg !1004
  call void @llvm.dbg.declare(metadata i32** %__ai_ptr, metadata !1005, metadata !DIExpression()), !dbg !1006
  %5 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %control_block, align 8, !dbg !1006
  %ready2 = getelementptr inbounds %struct.evtchn_fifo_control_block, %struct.evtchn_fifo_control_block* %5, i32 0, i32 0, !dbg !1006
  store i32* %ready2, i32** %__ai_ptr, align 8, !dbg !1006
  %6 = load i32*, i32** %__ai_ptr, align 8, !dbg !1006
  %7 = bitcast i32* %6 to i8*, !dbg !1006
  store i8* %7, i8** %v.addr.i, align 8
  store i64 4, i64* %size.addr.i, align 8
  %8 = load i8*, i8** %v.addr.i, align 8, !dbg !1007
  %9 = load i64, i64* %size.addr.i, align 8, !dbg !1008
  %conv.i = trunc i64 %9 to i32, !dbg !1008
  %call.i = call zeroext i1 @kasan_check_write(i8* %8, i32 %conv.i) #12, !dbg !1009
  %10 = load i8*, i8** %v.addr.i, align 8, !dbg !1010
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !1010
  call void @kcsan_check_access(i8* %10, i64 %11, i32 5) #12, !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !1011, metadata !DIExpression()), !dbg !1013
  store i32 0, i32* %__ret, align 4, !dbg !1013
  %12 = load i32, i32* %__ret, align 4, !dbg !1013
  %13 = load i32*, i32** %__ai_ptr, align 8, !dbg !1013
  %14 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %13, i32 %12, i32* %13) #6, !dbg !1013, !srcloc !1014
  store i32 %14, i32* %__ret, align 4, !dbg !1013
  %15 = load i32, i32* %__ret, align 4, !dbg !1013
  store i32 %15, i32* %tmp4, align 4, !dbg !1013
  %16 = load i32, i32* %tmp4, align 4, !dbg !1013
  store i32 %16, i32* %tmp3, align 4, !dbg !1006
  %17 = load i32, i32* %tmp3, align 4, !dbg !1006
  %conv = zext i32 %17 to i64, !dbg !1015
  store i64 %conv, i64* %ready, align 8, !dbg !1016
  br label %while.cond, !dbg !1017

while.cond:                                       ; preds = %while.body, %do.end
  %18 = load i64, i64* %ready, align 8, !dbg !1018
  %tobool = icmp ne i64 %18, 0, !dbg !1017
  br i1 %tobool, label %while.body, label %while.end, !dbg !1017

while.body:                                       ; preds = %while.cond
  %call = call i64 @find_first_bit(i64* %ready, i64 16) #9, !dbg !1019
  %conv5 = trunc i64 %call to i32, !dbg !1019
  store i32 %conv5, i32* %q, align 4, !dbg !1020
  %19 = load i32, i32* %cpu.addr, align 4, !dbg !1021
  %20 = load %struct.evtchn_loop_ctrl*, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8, !dbg !1022
  %21 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %control_block, align 8, !dbg !1023
  %22 = load i32, i32* %q, align 4, !dbg !1024
  call void @consume_one_event(i32 %19, %struct.evtchn_loop_ctrl* %20, %struct.evtchn_fifo_control_block* %21, i32 %22, i64* %ready) #9, !dbg !1025
  call void @llvm.dbg.declare(metadata i32** %__ai_ptr6, metadata !1026, metadata !DIExpression()), !dbg !1027
  %23 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %control_block, align 8, !dbg !1027
  %ready7 = getelementptr inbounds %struct.evtchn_fifo_control_block, %struct.evtchn_fifo_control_block* %23, i32 0, i32 0, !dbg !1027
  store i32* %ready7, i32** %__ai_ptr6, align 8, !dbg !1027
  %24 = load i32*, i32** %__ai_ptr6, align 8, !dbg !1027
  %25 = bitcast i32* %24 to i8*, !dbg !1027
  store i8* %25, i8** %v.addr.i12, align 8
  store i64 4, i64* %size.addr.i13, align 8
  %26 = load i8*, i8** %v.addr.i12, align 8, !dbg !1028
  %27 = load i64, i64* %size.addr.i13, align 8, !dbg !1029
  %conv.i14 = trunc i64 %27 to i32, !dbg !1029
  %call.i15 = call zeroext i1 @kasan_check_write(i8* %26, i32 %conv.i14) #12, !dbg !1030
  %28 = load i8*, i8** %v.addr.i12, align 8, !dbg !1031
  %29 = load i64, i64* %size.addr.i13, align 8, !dbg !1031
  call void @kcsan_check_access(i8* %28, i64 %29, i32 5) #12, !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %__ret9, metadata !1032, metadata !DIExpression()), !dbg !1034
  store i32 0, i32* %__ret9, align 4, !dbg !1034
  %30 = load i32, i32* %__ret9, align 4, !dbg !1034
  %31 = load i32*, i32** %__ai_ptr6, align 8, !dbg !1034
  %32 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %31, i32 %30, i32* %31) #6, !dbg !1034, !srcloc !1035
  store i32 %32, i32* %__ret9, align 4, !dbg !1034
  %33 = load i32, i32* %__ret9, align 4, !dbg !1034
  store i32 %33, i32* %tmp10, align 4, !dbg !1034
  %34 = load i32, i32* %tmp10, align 4, !dbg !1034
  store i32 %34, i32* %tmp8, align 4, !dbg !1027
  %35 = load i32, i32* %tmp8, align 4, !dbg !1027
  %conv11 = zext i32 %35 to i64, !dbg !1036
  %36 = load i64, i64* %ready, align 8, !dbg !1037
  %or = or i64 %36, %conv11, !dbg !1037
  store i64 %or, i64* %ready, align 8, !dbg !1037
  br label %while.cond, !dbg !1017, !llvm.loop !1038

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1040
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @consume_one_event(i32 %cpu, %struct.evtchn_loop_ctrl* %ctrl, %struct.evtchn_fifo_control_block* %control_block, i32 %priority, i64* %ready) #2 !dbg !1041 {
entry:
  %cpu.addr = alloca i32, align 4
  %ctrl.addr = alloca %struct.evtchn_loop_ctrl*, align 8
  %control_block.addr = alloca %struct.evtchn_fifo_control_block*, align 8
  %priority.addr = alloca i32, align 4
  %ready.addr = alloca i64*, align 8
  %q = alloca %struct.evtchn_fifo_queue*, align 8
  %tmp = alloca %struct.evtchn_fifo_queue*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.evtchn_fifo_queue*, align 8
  %head = alloca i32, align 4
  %port = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !1044, metadata !DIExpression()), !dbg !1045
  store %struct.evtchn_loop_ctrl* %ctrl, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evtchn_loop_ctrl** %ctrl.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  store %struct.evtchn_fifo_control_block* %control_block, %struct.evtchn_fifo_control_block** %control_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evtchn_fifo_control_block** %control_block.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  store i64* %ready, i64** %ready.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ready.addr, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata %struct.evtchn_fifo_queue** %q, metadata !1054, metadata !DIExpression()), !dbg !1055
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !1056
  br label %do.body, !dbg !1058

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1060, metadata !DIExpression()), !dbg !1062
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1062
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !1062
  br label %do.end, !dbg !1062

do.end:                                           ; preds = %do.body
  store %struct.evtchn_fifo_queue* @cpu_queue, %struct.evtchn_fifo_queue** %tmp1, align 8, !dbg !1062
  %2 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %tmp1, align 8, !dbg !1058
  store %struct.evtchn_fifo_queue* %2, %struct.evtchn_fifo_queue** %tmp, align 8, !dbg !1056
  %3 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %tmp, align 8, !dbg !1056
  store %struct.evtchn_fifo_queue* %3, %struct.evtchn_fifo_queue** %q, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata i32* %head, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %port, metadata !1065, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata i32** %word, metadata !1067, metadata !DIExpression()), !dbg !1068
  %4 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %q, align 8, !dbg !1069
  %head2 = getelementptr inbounds %struct.evtchn_fifo_queue, %struct.evtchn_fifo_queue* %4, i32 0, i32 0, !dbg !1070
  %5 = load i32, i32* %priority.addr, align 4, !dbg !1071
  %idxprom = zext i32 %5 to i64, !dbg !1069
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %head2, i64 0, i64 %idxprom, !dbg !1069
  %6 = load i32, i32* %arrayidx, align 4, !dbg !1069
  store i32 %6, i32* %head, align 4, !dbg !1072
  %7 = load i32, i32* %head, align 4, !dbg !1073
  %cmp = icmp eq i32 %7, 0, !dbg !1075
  br i1 %cmp, label %if.then, label %if.end, !dbg !1076

if.then:                                          ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !1077, !srcloc !1079
  %8 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %control_block.addr, align 8, !dbg !1080
  %head3 = getelementptr inbounds %struct.evtchn_fifo_control_block, %struct.evtchn_fifo_control_block* %8, i32 0, i32 2, !dbg !1081
  %9 = load i32, i32* %priority.addr, align 4, !dbg !1082
  %idxprom4 = zext i32 %9 to i64, !dbg !1080
  %arrayidx5 = getelementptr [16 x i32], [16 x i32]* %head3, i64 0, i64 %idxprom4, !dbg !1080
  %10 = load i32, i32* %arrayidx5, align 4, !dbg !1080
  store i32 %10, i32* %head, align 4, !dbg !1083
  br label %if.end, !dbg !1084

if.end:                                           ; preds = %if.then, %do.end
  %11 = load i32, i32* %head, align 4, !dbg !1085
  store i32 %11, i32* %port, align 4, !dbg !1086
  %12 = load i32, i32* %port, align 4, !dbg !1087
  %call = call i32* @event_word_from_port(i32 %12) #9, !dbg !1088
  store i32* %call, i32** %word, align 8, !dbg !1089
  %13 = load i32*, i32** %word, align 8, !dbg !1090
  %call6 = call i32 @clear_linked(i32* %13) #9, !dbg !1091
  store i32 %call6, i32* %head, align 4, !dbg !1092
  %14 = load i32, i32* %head, align 4, !dbg !1093
  %cmp7 = icmp eq i32 %14, 0, !dbg !1095
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1096

if.then8:                                         ; preds = %if.end
  %15 = load i32, i32* %priority.addr, align 4, !dbg !1097
  %conv = zext i32 %15 to i64, !dbg !1097
  %16 = load i64*, i64** %ready.addr, align 8, !dbg !1098
  call void @clear_bit(i64 %conv, i64* %16) #9, !dbg !1099
  br label %if.end9, !dbg !1099

if.end9:                                          ; preds = %if.then8, %if.end
  %17 = load i32, i32* %port, align 4, !dbg !1100
  %call10 = call zeroext i1 @evtchn_fifo_is_pending(i32 %17) #9, !dbg !1102
  br i1 %call10, label %land.lhs.true, label %if.end21, !dbg !1103

land.lhs.true:                                    ; preds = %if.end9
  %18 = load i32, i32* %port, align 4, !dbg !1104
  %call12 = call zeroext i1 @evtchn_fifo_is_masked(i32 %18) #9, !dbg !1105
  br i1 %call12, label %if.end21, label %if.then13, !dbg !1106

if.then13:                                        ; preds = %land.lhs.true
  %19 = load %struct.evtchn_loop_ctrl*, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8, !dbg !1107
  %tobool = icmp ne %struct.evtchn_loop_ctrl* %19, null, !dbg !1107
  %lnot = xor i1 %tobool, true, !dbg !1107
  %lnot14 = xor i1 %lnot, true, !dbg !1107
  %lnot15 = xor i1 %lnot14, true, !dbg !1107
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !1107
  %conv16 = sext i32 %lnot.ext to i64, !dbg !1107
  %tobool17 = icmp ne i64 %conv16, 0, !dbg !1107
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !1110

if.then18:                                        ; preds = %if.then13
  %20 = load i32, i32* %port, align 4, !dbg !1111
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %20) #10, !dbg !1111
  br label %if.end20, !dbg !1111

if.else:                                          ; preds = %if.then13
  %21 = load i32, i32* %port, align 4, !dbg !1112
  %22 = load %struct.evtchn_loop_ctrl*, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8, !dbg !1113
  call void @handle_irq_for_port(i32 %21, %struct.evtchn_loop_ctrl* %22) #9, !dbg !1114
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  br label %if.end21, !dbg !1115

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end9
  %23 = load i32, i32* %head, align 4, !dbg !1116
  %24 = load %struct.evtchn_fifo_queue*, %struct.evtchn_fifo_queue** %q, align 8, !dbg !1117
  %head22 = getelementptr inbounds %struct.evtchn_fifo_queue, %struct.evtchn_fifo_queue* %24, i32 0, i32 0, !dbg !1118
  %25 = load i32, i32* %priority.addr, align 4, !dbg !1119
  %idxprom23 = zext i32 %25 to i64, !dbg !1117
  %arrayidx24 = getelementptr [16 x i32], [16 x i32]* %head22, i64 0, i64 %idxprom23, !dbg !1117
  store i32 %23, i32* %arrayidx24, align 4, !dbg !1120
  ret void, !dbg !1121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clear_linked(i32* %word) #2 !dbg !1122 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !912, metadata !DIExpression()), !dbg !1125
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !918, metadata !DIExpression()), !dbg !1128
  %word.addr = alloca i32*, align 8
  %new = alloca i32, align 4
  %old = alloca i32, align 4
  %w = alloca i32, align 4
  %__ai_ptr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca i32*, align 8
  %tmp1 = alloca i32, align 4
  store i32* %word, i32** %word.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %word.addr, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata i32* %new, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.declare(metadata i32* %old, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %w, metadata !1135, metadata !DIExpression()), !dbg !1136
  %0 = load i32*, i32** %word.addr, align 8, !dbg !1137
  %1 = load volatile i32, i32* %0, align 4, !dbg !1138
  store i32 %1, i32* %w, align 4, !dbg !1139
  br label %do.body, !dbg !1140

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %w, align 4, !dbg !1141
  store i32 %2, i32* %old, align 4, !dbg !1143
  %3 = load i32, i32* %w, align 4, !dbg !1144
  %and = and i32 %3, -537001984, !dbg !1145
  store i32 %and, i32* %new, align 4, !dbg !1146
  br label %do.cond, !dbg !1147

do.cond:                                          ; preds = %do.body
  call void @llvm.dbg.declare(metadata i32** %__ai_ptr, metadata !1148, metadata !DIExpression()), !dbg !1149
  %4 = load i32*, i32** %word.addr, align 8, !dbg !1149
  store i32* %4, i32** %__ai_ptr, align 8, !dbg !1149
  %5 = load i32*, i32** %__ai_ptr, align 8, !dbg !1149
  %6 = bitcast i32* %5 to i8*, !dbg !1149
  store i8* %6, i8** %v.addr.i, align 8
  store i64 4, i64* %size.addr.i, align 8
  %7 = load i8*, i8** %v.addr.i, align 8, !dbg !1150
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !1151
  %conv.i = trunc i64 %8 to i32, !dbg !1151
  %call.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i) #12, !dbg !1152
  %9 = load i8*, i8** %v.addr.i, align 8, !dbg !1153
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !1153
  call void @kcsan_check_access(i8* %9, i64 %10, i32 5) #12, !dbg !1153
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !1154, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata i32* %__old, metadata !1157, metadata !DIExpression()), !dbg !1156
  %11 = load i32, i32* %old, align 4, !dbg !1156
  store volatile i32 %11, i32* %__old, align 4, !dbg !1156
  call void @llvm.dbg.declare(metadata i32* %__new, metadata !1158, metadata !DIExpression()), !dbg !1156
  %12 = load i32, i32* %new, align 4, !dbg !1156
  store volatile i32 %12, i32* %__new, align 4, !dbg !1156
  call void @llvm.dbg.declare(metadata i32** %__ptr, metadata !1159, metadata !DIExpression()), !dbg !1156
  %13 = load i32*, i32** %__ai_ptr, align 8, !dbg !1156
  store i32* %13, i32** %__ptr, align 8, !dbg !1156
  %14 = load i32*, i32** %__ptr, align 8, !dbg !1156
  %15 = load volatile i32, i32* %__new, align 4, !dbg !1156
  %16 = load volatile i32, i32* %__old, align 4, !dbg !1156
  %17 = call i32 asm sideeffect "lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %14, i32 %15, i32 %16, i32* %14) #6, !dbg !1156, !srcloc !1160
  store volatile i32 %17, i32* %__ret, align 4, !dbg !1156
  %18 = load volatile i32, i32* %__ret, align 4, !dbg !1156
  store i32 %18, i32* %tmp1, align 4, !dbg !1156
  %19 = load i32, i32* %tmp1, align 4, !dbg !1156
  store i32 %19, i32* %tmp, align 4, !dbg !1149
  %20 = load i32, i32* %tmp, align 4, !dbg !1149
  store i32 %20, i32* %w, align 4, !dbg !1161
  %21 = load i32, i32* %old, align 4, !dbg !1162
  %cmp = icmp ne i32 %20, %21, !dbg !1163
  br i1 %cmp, label %do.body, label %do.end, !dbg !1147, !llvm.loop !1164

do.end:                                           ; preds = %do.cond
  %22 = load i32, i32* %w, align 4, !dbg !1166
  %and2 = and i32 %22, 131071, !dbg !1167
  ret i32 %and2, !dbg !1168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !1169 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1171, metadata !DIExpression()), !dbg !1173
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1175, metadata !DIExpression()), !dbg !1176
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !912, metadata !DIExpression()), !dbg !1177
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !918, metadata !DIExpression()), !dbg !1179
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1184
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1185
  %div = sdiv i64 %1, 64, !dbg !1185
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1186
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1184
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1187
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1188
  %conv.i = trunc i64 %4 to i32, !dbg !1188
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !1189
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1190
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1190
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !1190
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1191
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1192
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1193
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !1195
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1196

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1197
  %12 = bitcast i64* %11 to i8*, !dbg !1197
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1197
  %shr.i = ashr i64 %13, 3, !dbg !1197
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1197
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1199
  %and.i = and i64 %14, 7, !dbg !1199
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1199
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1199
  %neg.i = xor i32 %shl.i, -1, !dbg !1200
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #6, !dbg !1201, !srcloc !1202
  br label %arch_clear_bit.exit, !dbg !1203

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1204
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1206
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !1207, !srcloc !1208
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @evtchn_fifo_is_masked(i32 %port) #2 !dbg !1210 {
entry:
  %port.addr = alloca i32, align 4
  %word = alloca i32*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.declare(metadata i32** %word, metadata !1213, metadata !DIExpression()), !dbg !1214
  %0 = load i32, i32* %port.addr, align 4, !dbg !1215
  %call = call i32* @event_word_from_port(i32 %0) #9, !dbg !1216
  store i32* %call, i32** %word, align 8, !dbg !1214
  %1 = load i32*, i32** %word, align 8, !dbg !1217
  %2 = ptrtoint i32* %1 to i64, !dbg !1217
  %and = and i64 %2, 4, !dbg !1217
  %tobool = icmp ne i64 %and, 0, !dbg !1217
  %3 = zext i1 %tobool to i64, !dbg !1217
  %cond = select i1 %tobool, i32 62, i32 30, !dbg !1217
  %conv = sext i32 %cond to i64, !dbg !1217
  %4 = load i32*, i32** %word, align 8, !dbg !1217
  %5 = ptrtoint i32* %4 to i64, !dbg !1217
  %and1 = and i64 %5, -8, !dbg !1217
  %6 = inttoptr i64 %and1 to i64*, !dbg !1217
  %call2 = call zeroext i1 @test_bit(i64 %conv, i64* %6) #9, !dbg !1217
  ret i1 %call2, !dbg !1218
}

; Function Attrs: noredzone
declare dso_local void @handle_irq_for_port(i32, %struct.evtchn_loop_ctrl*) #4

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { cold noredzone noreturn }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "evtchn_ops_fifo", scope: !2, file: !3, line: 418, type: !71, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !58, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/events/events_fifo.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !{!12, !13, !15, !32, !33, !38, !39, !40, !41, !44, !46, !49}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !14, line: 148, baseType: !7)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_fifo_control_block", file: !18, line: 273, size: 576, elements: !19)
!18 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !17, file: !18, line: 274, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 104, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !17, file: !18, line: 275, baseType: !21, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !17, file: !18, line: 276, baseType: !28, size: 512, offset: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !30)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_word_t", file: !18, line: 261, baseType: !21)
!30 = !{!31}
!31 = !DISubrange(count: 16)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_fifo_queue", file: !3, line: 60, size: 512, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !34, file: !3, line: 61, baseType: !37, size: 512)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !30)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !52, line: 17, size: 64, elements: !53)
!52 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !51, file: !52, line: 17, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 1)
!58 = !{!59, !61, !0, !63, !65}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "cpu_queue", scope: !2, file: !3, line: 65, type: !34, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "cpu_control_block", scope: !2, file: !3, line: 64, type: !16, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "event_array_pages", scope: !2, file: !3, line: 67, type: !7, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "event_array", scope: !2, file: !3, line: 66, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8192, elements: !69)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!69 = !{!70}
!70 = !DISubrange(count: 128)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_ops", file: !73, line: 12, size: 896, elements: !74)
!73 = !DIFile(filename: "drivers/xen/events/events_internal.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !79, !80, !85, !89, !93, !94, !100, !101, !102, !103, !109, !113, !117}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "max_channels", scope: !72, file: !73, line: 13, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!7}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "nr_channels", scope: !72, file: !73, line: 14, baseType: !76, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !72, file: !73, line: 16, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!39, !84}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !18, line: 15, baseType: !21)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_cpu", scope: !72, file: !73, line: 17, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !84, !7, !7}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "clear_pending", scope: !72, file: !73, line: 20, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !84}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "set_pending", scope: !72, file: !73, line: 21, baseType: !90, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "is_pending", scope: !72, file: !73, line: 22, baseType: !95, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !84}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 30, baseType: !99)
!99 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "test_and_set_mask", scope: !72, file: !73, line: 23, baseType: !95, size: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !72, file: !73, line: 24, baseType: !90, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "unmask", scope: !72, file: !73, line: 25, baseType: !90, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "handle_events", scope: !72, file: !73, line: 27, baseType: !104, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !7, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_loop_ctrl", file: !73, line: 10, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !72, file: !73, line: 28, baseType: !110, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_init", scope: !72, file: !73, line: 30, baseType: !114, size: 64, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!39, !7}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_deinit", scope: !72, file: !73, line: 31, baseType: !114, size: 64, offset: 832)
!118 = !{!"rsp"}
!119 = !{i32 7, !"Dwarf Version", i32 4}
!120 = !{i32 2, !"Debug Info Version", i32 3}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"Code Model", i32 2}
!123 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!124 = distinct !DISubprogram(name: "xen_evtchn_fifo_init", scope: !3, file: !3, line: 435, type: !125, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{!39}
!127 = !{}
!128 = !DILocalVariable(name: "cpu", scope: !124, file: !3, line: 437, type: !39)
!129 = !DILocation(line: 437, column: 6, scope: !124)
!130 = !DILocalVariable(name: "ret", scope: !124, file: !3, line: 438, type: !39)
!131 = !DILocation(line: 438, column: 6, scope: !124)
!132 = !DILocation(line: 440, column: 40, scope: !124)
!133 = !DILocation(line: 440, column: 8, scope: !124)
!134 = !DILocation(line: 440, column: 6, scope: !124)
!135 = !DILocation(line: 441, column: 6, scope: !136)
!136 = distinct !DILexicalBlock(scope: !124, file: !3, line: 441, column: 6)
!137 = !DILocation(line: 441, column: 10, scope: !136)
!138 = !DILocation(line: 441, column: 6, scope: !124)
!139 = !DILocation(line: 442, column: 10, scope: !136)
!140 = !DILocation(line: 442, column: 3, scope: !136)
!141 = !DILocation(line: 444, column: 2, scope: !124)
!142 = !DILocation(line: 446, column: 13, scope: !124)
!143 = !DILocation(line: 448, column: 9, scope: !124)
!144 = !DILocation(line: 448, column: 2, scope: !124)
!145 = !DILocation(line: 449, column: 1, scope: !124)
!146 = distinct !DISubprogram(name: "evtchn_fifo_alloc_control_block", scope: !3, file: !3, line: 383, type: !115, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!147 = !DILocalVariable(name: "cpu", arg: 1, scope: !146, file: !3, line: 383, type: !7)
!148 = !DILocation(line: 383, column: 53, scope: !146)
!149 = !DILocalVariable(name: "control_block", scope: !146, file: !3, line: 385, type: !12)
!150 = !DILocation(line: 385, column: 8, scope: !146)
!151 = !DILocalVariable(name: "ret", scope: !146, file: !3, line: 386, type: !39)
!152 = !DILocation(line: 386, column: 6, scope: !146)
!153 = !DILocation(line: 388, column: 26, scope: !146)
!154 = !DILocation(line: 388, column: 18, scope: !146)
!155 = !DILocation(line: 388, column: 16, scope: !146)
!156 = !DILocation(line: 389, column: 6, scope: !157)
!157 = distinct !DILexicalBlock(scope: !146, file: !3, line: 389, column: 6)
!158 = !DILocation(line: 389, column: 20, scope: !157)
!159 = !DILocation(line: 389, column: 6, scope: !146)
!160 = !DILocation(line: 390, column: 3, scope: !157)
!161 = !DILocation(line: 392, column: 27, scope: !146)
!162 = !DILocation(line: 392, column: 32, scope: !146)
!163 = !DILocation(line: 392, column: 8, scope: !146)
!164 = !DILocation(line: 392, column: 6, scope: !146)
!165 = !DILocation(line: 393, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !146, file: !3, line: 393, column: 6)
!167 = !DILocation(line: 393, column: 10, scope: !166)
!168 = !DILocation(line: 393, column: 6, scope: !146)
!169 = !DILocation(line: 394, column: 3, scope: !166)
!170 = !DILocation(line: 396, column: 36, scope: !146)
!171 = !DILocation(line: 396, column: 2, scope: !172)
!172 = distinct !DILexicalBlock(scope: !146, file: !3, line: 396, column: 2)
!173 = !DILocation(line: 396, column: 2, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !3, line: 396, column: 2)
!175 = !DILocalVariable(name: "__vpp_verify", scope: !176, file: !3, line: 396, type: !177)
!176 = distinct !DILexicalBlock(scope: !174, file: !3, line: 396, column: 2)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!179 = !DILocation(line: 396, column: 2, scope: !176)
!180 = !DILocation(line: 396, column: 34, scope: !146)
!181 = !DILocation(line: 398, column: 2, scope: !146)
!182 = !DILabel(scope: !146, name: "error", file: !3, line: 400)
!183 = !DILocation(line: 400, column: 3, scope: !146)
!184 = !DILocation(line: 401, column: 2, scope: !146)
!185 = !DILocation(line: 402, column: 9, scope: !146)
!186 = !DILocation(line: 402, column: 2, scope: !146)
!187 = !DILocation(line: 403, column: 1, scope: !146)
!188 = distinct !DISubprogram(name: "init_control_block", scope: !3, file: !3, line: 102, type: !189, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!189 = !DISubroutineType(types: !190)
!190 = !{!39, !39, !16}
!191 = !DILocalVariable(name: "cpu", arg: 1, scope: !188, file: !3, line: 102, type: !39)
!192 = !DILocation(line: 102, column: 35, scope: !188)
!193 = !DILocalVariable(name: "control_block", arg: 2, scope: !188, file: !3, line: 103, type: !16)
!194 = !DILocation(line: 103, column: 65, scope: !188)
!195 = !DILocalVariable(name: "q", scope: !188, file: !3, line: 105, type: !33)
!196 = !DILocation(line: 105, column: 28, scope: !188)
!197 = !DILocation(line: 105, column: 33, scope: !198)
!198 = distinct !DILexicalBlock(scope: !188, file: !3, line: 105, column: 33)
!199 = !DILocation(line: 105, column: 33, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !3, line: 105, column: 33)
!201 = !DILocalVariable(name: "__vpp_verify", scope: !202, file: !3, line: 105, type: !177)
!202 = distinct !DILexicalBlock(scope: !200, file: !3, line: 105, column: 33)
!203 = !DILocation(line: 105, column: 33, scope: !202)
!204 = !DILocalVariable(name: "init_control", scope: !188, file: !3, line: 106, type: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_init_control", file: !18, line: 198, size: 192, elements: !206)
!206 = !{!207, !212, !213, !214, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "control_gfn", scope: !205, file: !18, line: 200, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 107, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !211)
!211 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !205, file: !18, line: 201, baseType: !21, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "vcpu", scope: !205, file: !18, line: 202, baseType: !21, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "link_bits", scope: !205, file: !18, line: 204, baseType: !215, size: 8, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 102, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !218)
!218 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !205, file: !18, line: 205, baseType: !220, size: 56, offset: 136)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 56, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 7)
!223 = !DILocation(line: 106, column: 29, scope: !188)
!224 = !DILocalVariable(name: "i", scope: !188, file: !3, line: 107, type: !7)
!225 = !DILocation(line: 107, column: 15, scope: !188)
!226 = !DILocation(line: 110, column: 13, scope: !188)
!227 = !DILocation(line: 110, column: 2, scope: !188)
!228 = !DILocation(line: 111, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !188, file: !3, line: 111, column: 2)
!230 = !DILocation(line: 111, column: 7, scope: !229)
!231 = !DILocation(line: 111, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 111, column: 2)
!233 = !DILocation(line: 111, column: 16, scope: !232)
!234 = !DILocation(line: 111, column: 2, scope: !229)
!235 = !DILocation(line: 112, column: 3, scope: !232)
!236 = !DILocation(line: 112, column: 6, scope: !232)
!237 = !DILocation(line: 112, column: 11, scope: !232)
!238 = !DILocation(line: 112, column: 14, scope: !232)
!239 = !DILocation(line: 111, column: 43, scope: !232)
!240 = !DILocation(line: 111, column: 2, scope: !232)
!241 = distinct !{!241, !234, !242}
!242 = !DILocation(line: 112, column: 16, scope: !229)
!243 = !DILocation(line: 114, column: 29, scope: !188)
!244 = !DILocation(line: 114, column: 15, scope: !188)
!245 = !DILocation(line: 114, column: 27, scope: !188)
!246 = !DILocation(line: 115, column: 15, scope: !188)
!247 = !DILocation(line: 115, column: 27, scope: !188)
!248 = !DILocation(line: 116, column: 41, scope: !188)
!249 = !DILocation(line: 116, column: 29, scope: !188)
!250 = !DILocation(line: 116, column: 15, scope: !188)
!251 = !DILocation(line: 116, column: 27, scope: !188)
!252 = !DILocation(line: 118, column: 60, scope: !188)
!253 = !DILocation(line: 118, column: 9, scope: !188)
!254 = !DILocation(line: 118, column: 2, scope: !188)
!255 = distinct !DISubprogram(name: "clear_page", scope: !256, file: !256, line: 47, type: !257, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!256 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DISubroutineType(types: !258)
!258 = !{null, !12}
!259 = !DILocalVariable(name: "page", arg: 1, scope: !255, file: !256, line: 47, type: !12)
!260 = !DILocation(line: 47, column: 37, scope: !255)
!261 = !DILocation(line: 49, column: 2, scope: !255)
!262 = !{i32 -2146306797, i32 -2146306764, i32 -2146306758, i32 -2146306742, i32 -2146306723, i32 -2146306692, i32 -2146305733, i32 -2146307196, i32 -2146305727, i32 -2146305679, i32 -2146305615, i32 -2146305553, i32 -2146305496, i32 -2146305440, i32 -2146305206, i32 -2146305158, i32 -2146305094, i32 -2146305032, i32 -2146304975, i32 -2146304919, i32 -2146307080, i32 -2146307055, i32 -2146304685, i32 -2146304556, i32 -2146304624, i32 -2146304542, i32 -2146304528, i32 -2146304399, i32 -2146304467, i32 -2146304385, i32 -2146306903}
!263 = !DILocation(line: 55, column: 1, scope: !255)
!264 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !265, file: !265, line: 251, type: !266, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!265 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!266 = !DISubroutineType(types: !267)
!267 = !{!32, !32}
!268 = !DILocalVariable(name: "pfn", arg: 1, scope: !264, file: !265, line: 251, type: !32)
!269 = !DILocation(line: 251, column: 54, scope: !264)
!270 = !DILocation(line: 253, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !265, line: 253, column: 6)
!272 = !DILocation(line: 253, column: 6, scope: !264)
!273 = !DILocation(line: 254, column: 10, scope: !271)
!274 = !DILocation(line: 254, column: 3, scope: !271)
!275 = !DILocation(line: 256, column: 21, scope: !271)
!276 = !DILocation(line: 256, column: 10, scope: !271)
!277 = !DILocation(line: 256, column: 3, scope: !271)
!278 = !DILocation(line: 257, column: 1, scope: !264)
!279 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !256, file: !256, line: 18, type: !266, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!280 = !DILocalVariable(name: "x", arg: 1, scope: !279, file: !256, line: 18, type: !32)
!281 = !DILocation(line: 18, column: 63, scope: !279)
!282 = !DILocalVariable(name: "y", scope: !279, file: !256, line: 20, type: !32)
!283 = !DILocation(line: 20, column: 16, scope: !279)
!284 = !DILocation(line: 20, column: 20, scope: !279)
!285 = !DILocation(line: 20, column: 22, scope: !279)
!286 = !DILocation(line: 23, column: 6, scope: !279)
!287 = !DILocation(line: 23, column: 12, scope: !279)
!288 = !DILocation(line: 23, column: 16, scope: !279)
!289 = !DILocation(line: 23, column: 14, scope: !279)
!290 = !DILocation(line: 23, column: 11, scope: !279)
!291 = !DILocation(line: 23, column: 21, scope: !279)
!292 = !DILocation(line: 23, column: 55, scope: !279)
!293 = !DILocation(line: 23, column: 53, scope: !279)
!294 = !DILocation(line: 23, column: 8, scope: !279)
!295 = !DILocation(line: 23, column: 4, scope: !279)
!296 = !DILocation(line: 25, column: 9, scope: !279)
!297 = !DILocation(line: 25, column: 2, scope: !279)
!298 = distinct !DISubprogram(name: "xen_vcpu_nr", scope: !299, file: !299, line: 15, type: !300, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!299 = !DIFile(filename: "./include/xen/xen-ops.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DISubroutineType(types: !301)
!301 = !{!21, !39}
!302 = !DILocalVariable(name: "cpu", arg: 1, scope: !298, file: !299, line: 15, type: !39)
!303 = !DILocation(line: 15, column: 40, scope: !298)
!304 = !DILocation(line: 17, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !299, line: 17, column: 9)
!306 = !DILocation(line: 17, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !299, line: 17, column: 9)
!308 = !DILocalVariable(name: "__vpp_verify", scope: !309, file: !299, line: 17, type: !177)
!309 = distinct !DILexicalBlock(scope: !307, file: !299, line: 17, column: 9)
!310 = !DILocation(line: 17, column: 9, scope: !309)
!311 = !DILocation(line: 17, column: 9, scope: !298)
!312 = !DILocation(line: 17, column: 2, scope: !298)
!313 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !314, file: !314, line: 356, type: !315, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!314 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DISubroutineType(types: !316)
!316 = !{!39, !39, !12}
!317 = !DILocalVariable(name: "cmd", arg: 1, scope: !313, file: !314, line: 356, type: !39)
!318 = !DILocation(line: 356, column: 33, scope: !313)
!319 = !DILocalVariable(name: "arg", arg: 2, scope: !313, file: !314, line: 356, type: !12)
!320 = !DILocation(line: 356, column: 44, scope: !313)
!321 = !DILocalVariable(name: "__res", scope: !322, file: !314, line: 358, type: !32)
!322 = distinct !DILexicalBlock(scope: !313, file: !314, line: 358, column: 9)
!323 = !DILocation(line: 358, column: 9, scope: !322)
!324 = !DILocalVariable(name: "__arg1", scope: !322, file: !314, line: 358, type: !32)
!325 = !DILocalVariable(name: "__arg2", scope: !322, file: !314, line: 358, type: !32)
!326 = !DILocalVariable(name: "__arg3", scope: !322, file: !314, line: 358, type: !32)
!327 = !DILocalVariable(name: "__arg4", scope: !322, file: !314, line: 358, type: !32)
!328 = !DILocalVariable(name: "__arg5", scope: !322, file: !314, line: 358, type: !32)
!329 = !{i32 -2142672986}
!330 = !DILocation(line: 358, column: 2, scope: !313)
!331 = distinct !DISubprogram(name: "xen_feature", scope: !332, file: !332, line: 19, type: !333, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!332 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DISubroutineType(types: !334)
!334 = !{!39, !39}
!335 = !DILocalVariable(name: "flag", arg: 1, scope: !331, file: !332, line: 19, type: !39)
!336 = !DILocation(line: 19, column: 35, scope: !331)
!337 = !DILocation(line: 21, column: 22, scope: !331)
!338 = !DILocation(line: 21, column: 9, scope: !331)
!339 = !DILocation(line: 21, column: 2, scope: !331)
!340 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !265, file: !265, line: 164, type: !266, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!341 = !DILocalVariable(name: "pfn", arg: 1, scope: !340, file: !265, line: 164, type: !32)
!342 = !DILocation(line: 164, column: 54, scope: !340)
!343 = !DILocalVariable(name: "mfn", scope: !340, file: !265, line: 166, type: !32)
!344 = !DILocation(line: 166, column: 16, scope: !340)
!345 = !DILocation(line: 173, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !340, file: !265, line: 173, column: 6)
!347 = !DILocation(line: 173, column: 6, scope: !340)
!348 = !DILocation(line: 174, column: 10, scope: !346)
!349 = !DILocation(line: 174, column: 3, scope: !346)
!350 = !DILocation(line: 176, column: 21, scope: !340)
!351 = !DILocation(line: 176, column: 8, scope: !340)
!352 = !DILocation(line: 176, column: 6, scope: !340)
!353 = !DILocation(line: 178, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !340, file: !265, line: 178, column: 6)
!355 = !DILocation(line: 178, column: 10, scope: !354)
!356 = !DILocation(line: 178, column: 6, scope: !340)
!357 = !DILocation(line: 179, column: 7, scope: !354)
!358 = !DILocation(line: 179, column: 3, scope: !354)
!359 = !DILocation(line: 181, column: 9, scope: !340)
!360 = !DILocation(line: 181, column: 2, scope: !340)
!361 = !DILocation(line: 182, column: 1, scope: !340)
!362 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !265, file: !265, line: 141, type: !266, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!363 = !DILocalVariable(name: "pfn", arg: 1, scope: !362, file: !265, line: 141, type: !32)
!364 = !DILocation(line: 141, column: 56, scope: !362)
!365 = !DILocalVariable(name: "mfn", scope: !362, file: !265, line: 143, type: !32)
!366 = !DILocation(line: 143, column: 16, scope: !362)
!367 = !DILocation(line: 145, column: 6, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !265, line: 145, column: 6)
!369 = !DILocation(line: 145, column: 12, scope: !368)
!370 = !DILocation(line: 145, column: 10, scope: !368)
!371 = !DILocation(line: 145, column: 6, scope: !362)
!372 = !DILocation(line: 146, column: 9, scope: !368)
!373 = !DILocation(line: 146, column: 22, scope: !368)
!374 = !DILocation(line: 146, column: 7, scope: !368)
!375 = !DILocation(line: 146, column: 3, scope: !368)
!376 = !DILocation(line: 147, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !368, file: !265, line: 147, column: 11)
!378 = !DILocation(line: 147, column: 11, scope: !368)
!379 = !DILocation(line: 148, column: 30, scope: !377)
!380 = !DILocation(line: 148, column: 10, scope: !377)
!381 = !DILocation(line: 148, column: 3, scope: !377)
!382 = !DILocation(line: 150, column: 10, scope: !377)
!383 = !DILocation(line: 150, column: 3, scope: !377)
!384 = !DILocation(line: 152, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !362, file: !265, line: 152, column: 6)
!386 = !DILocation(line: 152, column: 6, scope: !362)
!387 = !DILocation(line: 153, column: 30, scope: !385)
!388 = !DILocation(line: 153, column: 10, scope: !385)
!389 = !DILocation(line: 153, column: 3, scope: !385)
!390 = !DILocation(line: 155, column: 9, scope: !362)
!391 = !DILocation(line: 155, column: 2, scope: !362)
!392 = !DILocation(line: 156, column: 1, scope: !362)
!393 = distinct !DISubprogram(name: "evtchn_fifo_max_channels", scope: !3, file: !3, line: 92, type: !77, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!394 = !DILocation(line: 94, column: 2, scope: !393)
!395 = distinct !DISubprogram(name: "evtchn_fifo_nr_channels", scope: !3, file: !3, line: 97, type: !77, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!396 = !DILocation(line: 99, column: 9, scope: !395)
!397 = !DILocation(line: 99, column: 27, scope: !395)
!398 = !DILocation(line: 99, column: 2, scope: !395)
!399 = distinct !DISubprogram(name: "evtchn_fifo_setup", scope: !3, file: !3, line: 141, type: !82, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!400 = !DILocalVariable(name: "port", arg: 1, scope: !399, file: !3, line: 141, type: !84)
!401 = !DILocation(line: 141, column: 44, scope: !399)
!402 = !DILocalVariable(name: "new_array_pages", scope: !399, file: !3, line: 143, type: !7)
!403 = !DILocation(line: 143, column: 11, scope: !399)
!404 = !DILocalVariable(name: "ret", scope: !399, file: !3, line: 144, type: !39)
!405 = !DILocation(line: 144, column: 6, scope: !399)
!406 = !DILocation(line: 146, column: 20, scope: !399)
!407 = !DILocation(line: 146, column: 25, scope: !399)
!408 = !DILocation(line: 146, column: 48, scope: !399)
!409 = !DILocation(line: 146, column: 18, scope: !399)
!410 = !DILocation(line: 148, column: 6, scope: !411)
!411 = distinct !DILexicalBlock(scope: !399, file: !3, line: 148, column: 6)
!412 = !DILocation(line: 148, column: 22, scope: !411)
!413 = !DILocation(line: 148, column: 6, scope: !399)
!414 = !DILocation(line: 149, column: 3, scope: !411)
!415 = !DILocation(line: 151, column: 2, scope: !399)
!416 = !DILocation(line: 151, column: 9, scope: !399)
!417 = !DILocation(line: 151, column: 29, scope: !399)
!418 = !DILocation(line: 151, column: 27, scope: !399)
!419 = !DILocalVariable(name: "array_page", scope: !420, file: !3, line: 152, type: !12)
!420 = distinct !DILexicalBlock(scope: !399, file: !3, line: 151, column: 46)
!421 = !DILocation(line: 152, column: 9, scope: !420)
!422 = !DILocalVariable(name: "expand_array", scope: !420, file: !3, line: 153, type: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_expand_array", file: !18, line: 212, size: 64, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "array_gfn", scope: !423, file: !18, line: 214, baseType: !208, size: 64)
!426 = !DILocation(line: 153, column: 30, scope: !420)
!427 = !DILocation(line: 156, column: 28, scope: !420)
!428 = !DILocation(line: 156, column: 16, scope: !420)
!429 = !DILocation(line: 156, column: 14, scope: !420)
!430 = !DILocation(line: 157, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !420, file: !3, line: 157, column: 7)
!432 = !DILocation(line: 157, column: 7, scope: !420)
!433 = !DILocation(line: 158, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 157, column: 20)
!435 = !DILocation(line: 158, column: 17, scope: !434)
!436 = !DILocation(line: 158, column: 15, scope: !434)
!437 = !DILocation(line: 159, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 159, column: 8)
!439 = !DILocation(line: 159, column: 19, scope: !438)
!440 = !DILocation(line: 159, column: 8, scope: !434)
!441 = !DILocation(line: 160, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 159, column: 28)
!443 = !DILocation(line: 161, column: 5, scope: !442)
!444 = !DILocation(line: 163, column: 37, scope: !434)
!445 = !DILocation(line: 163, column: 16, scope: !434)
!446 = !DILocation(line: 163, column: 4, scope: !434)
!447 = !DILocation(line: 163, column: 35, scope: !434)
!448 = !DILocation(line: 164, column: 3, scope: !434)
!449 = !DILocation(line: 167, column: 19, scope: !420)
!450 = !DILocation(line: 167, column: 3, scope: !420)
!451 = !DILocation(line: 169, column: 28, scope: !420)
!452 = !DILocation(line: 169, column: 16, scope: !420)
!453 = !DILocation(line: 169, column: 26, scope: !420)
!454 = !DILocation(line: 171, column: 60, scope: !420)
!455 = !DILocation(line: 171, column: 9, scope: !420)
!456 = !DILocation(line: 171, column: 7, scope: !420)
!457 = !DILocation(line: 172, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !420, file: !3, line: 172, column: 7)
!459 = !DILocation(line: 172, column: 11, scope: !458)
!460 = !DILocation(line: 172, column: 7, scope: !420)
!461 = !DILocation(line: 173, column: 4, scope: !458)
!462 = !DILocation(line: 175, column: 20, scope: !420)
!463 = distinct !{!463, !415, !464}
!464 = !DILocation(line: 176, column: 2, scope: !399)
!465 = !DILocation(line: 177, column: 2, scope: !399)
!466 = !DILabel(scope: !399, name: "error", file: !3, line: 179)
!467 = !DILocation(line: 179, column: 3, scope: !399)
!468 = !DILocation(line: 180, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !399, file: !3, line: 180, column: 6)
!470 = !DILocation(line: 180, column: 24, scope: !469)
!471 = !DILocation(line: 180, column: 6, scope: !399)
!472 = !DILocation(line: 181, column: 71, scope: !469)
!473 = !DILocation(line: 181, column: 3, scope: !469)
!474 = !DILocation(line: 183, column: 3, scope: !469)
!475 = !DILocation(line: 184, column: 2, scope: !399)
!476 = !DILocation(line: 185, column: 9, scope: !399)
!477 = !DILocation(line: 185, column: 2, scope: !399)
!478 = !DILocation(line: 186, column: 1, scope: !399)
!479 = distinct !DISubprogram(name: "evtchn_fifo_bind_to_cpu", scope: !3, file: !3, line: 188, type: !87, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!480 = !DILocalVariable(name: "evtchn", arg: 1, scope: !479, file: !3, line: 188, type: !84)
!481 = !DILocation(line: 188, column: 51, scope: !479)
!482 = !DILocalVariable(name: "cpu", arg: 2, scope: !479, file: !3, line: 188, type: !7)
!483 = !DILocation(line: 188, column: 72, scope: !479)
!484 = !DILocalVariable(name: "old_cpu", arg: 3, scope: !479, file: !3, line: 189, type: !7)
!485 = !DILocation(line: 189, column: 22, scope: !479)
!486 = !DILocation(line: 192, column: 1, scope: !479)
!487 = distinct !DISubprogram(name: "evtchn_fifo_clear_pending", scope: !3, file: !3, line: 194, type: !91, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!488 = !DILocalVariable(name: "port", arg: 1, scope: !487, file: !3, line: 194, type: !84)
!489 = !DILocation(line: 194, column: 53, scope: !487)
!490 = !DILocalVariable(name: "word", scope: !487, file: !3, line: 196, type: !68)
!491 = !DILocation(line: 196, column: 16, scope: !487)
!492 = !DILocation(line: 196, column: 44, scope: !487)
!493 = !DILocation(line: 196, column: 23, scope: !487)
!494 = !DILocation(line: 197, column: 17, scope: !487)
!495 = !DILocation(line: 197, column: 49, scope: !487)
!496 = !DILocation(line: 197, column: 2, scope: !487)
!497 = !DILocation(line: 198, column: 1, scope: !487)
!498 = distinct !DISubprogram(name: "evtchn_fifo_set_pending", scope: !3, file: !3, line: 200, type: !91, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!499 = !DILocalVariable(name: "port", arg: 1, scope: !498, file: !3, line: 200, type: !84)
!500 = !DILocation(line: 200, column: 51, scope: !498)
!501 = !DILocalVariable(name: "word", scope: !498, file: !3, line: 202, type: !68)
!502 = !DILocation(line: 202, column: 16, scope: !498)
!503 = !DILocation(line: 202, column: 44, scope: !498)
!504 = !DILocation(line: 202, column: 23, scope: !498)
!505 = !DILocation(line: 203, column: 15, scope: !498)
!506 = !DILocation(line: 203, column: 47, scope: !498)
!507 = !DILocation(line: 203, column: 2, scope: !498)
!508 = !DILocation(line: 204, column: 1, scope: !498)
!509 = distinct !DISubprogram(name: "evtchn_fifo_is_pending", scope: !3, file: !3, line: 206, type: !96, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!510 = !DILocalVariable(name: "port", arg: 1, scope: !509, file: !3, line: 206, type: !84)
!511 = !DILocation(line: 206, column: 50, scope: !509)
!512 = !DILocalVariable(name: "word", scope: !509, file: !3, line: 208, type: !68)
!513 = !DILocation(line: 208, column: 16, scope: !509)
!514 = !DILocation(line: 208, column: 44, scope: !509)
!515 = !DILocation(line: 208, column: 23, scope: !509)
!516 = !DILocation(line: 209, column: 9, scope: !509)
!517 = !DILocation(line: 209, column: 2, scope: !509)
!518 = distinct !DISubprogram(name: "evtchn_fifo_test_and_set_mask", scope: !3, file: !3, line: 212, type: !96, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!519 = !DILocalVariable(name: "port", arg: 1, scope: !518, file: !3, line: 212, type: !84)
!520 = !DILocation(line: 212, column: 57, scope: !518)
!521 = !DILocalVariable(name: "word", scope: !518, file: !3, line: 214, type: !68)
!522 = !DILocation(line: 214, column: 16, scope: !518)
!523 = !DILocation(line: 214, column: 44, scope: !518)
!524 = !DILocation(line: 214, column: 23, scope: !518)
!525 = !DILocation(line: 215, column: 31, scope: !518)
!526 = !DILocation(line: 215, column: 62, scope: !518)
!527 = !DILocation(line: 215, column: 9, scope: !518)
!528 = !DILocation(line: 215, column: 2, scope: !518)
!529 = distinct !DISubprogram(name: "evtchn_fifo_mask", scope: !3, file: !3, line: 218, type: !91, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!530 = !DILocalVariable(name: "port", arg: 1, scope: !529, file: !3, line: 218, type: !84)
!531 = !DILocation(line: 218, column: 44, scope: !529)
!532 = !DILocalVariable(name: "word", scope: !529, file: !3, line: 220, type: !68)
!533 = !DILocation(line: 220, column: 16, scope: !529)
!534 = !DILocation(line: 220, column: 44, scope: !529)
!535 = !DILocation(line: 220, column: 23, scope: !529)
!536 = !DILocation(line: 221, column: 15, scope: !529)
!537 = !DILocation(line: 221, column: 46, scope: !529)
!538 = !DILocation(line: 221, column: 2, scope: !529)
!539 = !DILocation(line: 222, column: 1, scope: !529)
!540 = distinct !DISubprogram(name: "evtchn_fifo_unmask", scope: !3, file: !3, line: 254, type: !91, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!541 = !DILocalVariable(name: "flags", arg: 1, scope: !542, file: !543, line: 162, type: !32)
!542 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !543, file: !543, line: 162, type: !544, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!543 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!544 = !DISubroutineType(types: !545)
!545 = !{!39, !32}
!546 = !DILocation(line: 162, column: 67, scope: !542, inlinedAt: !547)
!547 = distinct !DILocation(line: 258, column: 2, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 258, column: 2)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 258, column: 2)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 258, column: 2)
!551 = distinct !DILexicalBlock(scope: !540, file: !3, line: 258, column: 2)
!552 = !DILocalVariable(name: "port", arg: 1, scope: !540, file: !3, line: 254, type: !84)
!553 = !DILocation(line: 254, column: 46, scope: !540)
!554 = !DILocalVariable(name: "word", scope: !540, file: !3, line: 256, type: !68)
!555 = !DILocation(line: 256, column: 16, scope: !540)
!556 = !DILocation(line: 256, column: 44, scope: !540)
!557 = !DILocation(line: 256, column: 23, scope: !540)
!558 = !DILocation(line: 258, column: 2, scope: !540)
!559 = !DILocalVariable(name: "_flags", scope: !549, file: !3, line: 258, type: !32)
!560 = !DILocation(line: 258, column: 2, scope: !549)
!561 = !DILocalVariable(name: "__dummy", scope: !562, file: !3, line: 258, type: !32)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 258, column: 2)
!563 = distinct !DILexicalBlock(scope: !549, file: !3, line: 258, column: 2)
!564 = !DILocation(line: 258, column: 2, scope: !562)
!565 = !DILocalVariable(name: "__dummy2", scope: !562, file: !3, line: 258, type: !32)
!566 = !DILocation(line: 258, column: 2, scope: !563)
!567 = !DILocalVariable(name: "__dummy", scope: !568, file: !3, line: 258, type: !32)
!568 = distinct !DILexicalBlock(scope: !548, file: !3, line: 258, column: 2)
!569 = !DILocation(line: 258, column: 2, scope: !568)
!570 = !DILocalVariable(name: "__dummy2", scope: !568, file: !3, line: 258, type: !32)
!571 = !DILocation(line: 258, column: 2, scope: !548)
!572 = !DILocation(line: 164, column: 11, scope: !542, inlinedAt: !547)
!573 = !DILocation(line: 164, column: 17, scope: !542, inlinedAt: !547)
!574 = !DILocation(line: 164, column: 9, scope: !542, inlinedAt: !547)
!575 = !DILocation(line: 258, column: 2, scope: !550)
!576 = !DILocation(line: 258, column: 2, scope: !551)
!577 = !DILocation(line: 258, column: 2, scope: !578)
!578 = distinct !DILexicalBlock(scope: !550, file: !3, line: 258, column: 2)
!579 = !DILocation(line: 258, column: 2, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !3, line: 258, column: 2)
!581 = !DILocation(line: 258, column: 2, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 258, column: 2)
!583 = !{i32 -2141386017, i32 -2141385988, i32 -2141385942, i32 -2141385884, i32 -2141385830, i32 -2141385776, i32 -2141385721, i32 -2141385690}
!584 = !DILocation(line: 258, column: 2, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 258, column: 2)
!586 = distinct !DILexicalBlock(scope: !578, file: !3, line: 258, column: 2)
!587 = !{i32 -2141385235, i32 -2141385228, i32 -2141385174, i32 -2141385143, i32 -2141385113}
!588 = !DILocation(line: 258, column: 2, scope: !586)
!589 = !DILocation(line: 260, column: 25, scope: !590)
!590 = distinct !DILexicalBlock(scope: !540, file: !3, line: 260, column: 6)
!591 = !DILocation(line: 260, column: 7, scope: !590)
!592 = !DILocation(line: 260, column: 6, scope: !540)
!593 = !DILocalVariable(name: "unmask", scope: !594, file: !3, line: 261, type: !595)
!594 = distinct !DILexicalBlock(scope: !590, file: !3, line: 260, column: 32)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_unmask", file: !18, line: 176, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !595, file: !18, line: 178, baseType: !84, size: 32)
!598 = !DILocation(line: 261, column: 24, scope: !594)
!599 = !DILocation(line: 261, column: 33, scope: !594)
!600 = !DILocation(line: 261, column: 43, scope: !594)
!601 = !DILocation(line: 262, column: 54, scope: !594)
!602 = !DILocation(line: 262, column: 9, scope: !594)
!603 = !DILocation(line: 263, column: 2, scope: !594)
!604 = !DILocation(line: 264, column: 1, scope: !540)
!605 = distinct !DISubprogram(name: "evtchn_fifo_handle_events", scope: !3, file: !3, line: 343, type: !105, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!606 = !DILocalVariable(name: "cpu", arg: 1, scope: !605, file: !3, line: 343, type: !7)
!607 = !DILocation(line: 343, column: 48, scope: !605)
!608 = !DILocalVariable(name: "ctrl", arg: 2, scope: !605, file: !3, line: 344, type: !107)
!609 = !DILocation(line: 344, column: 36, scope: !605)
!610 = !DILocation(line: 346, column: 30, scope: !605)
!611 = !DILocation(line: 346, column: 35, scope: !605)
!612 = !DILocation(line: 346, column: 2, scope: !605)
!613 = !DILocation(line: 347, column: 1, scope: !605)
!614 = distinct !DISubprogram(name: "evtchn_fifo_resume", scope: !3, file: !3, line: 349, type: !111, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!615 = !DILocalVariable(name: "cpu", scope: !614, file: !3, line: 351, type: !7)
!616 = !DILocation(line: 351, column: 11, scope: !614)
!617 = !DILocation(line: 353, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !3, line: 353, column: 2)
!619 = !DILocation(line: 353, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !3, line: 353, column: 2)
!621 = !DILocalVariable(name: "control_block", scope: !622, file: !3, line: 354, type: !12)
!622 = distinct !DILexicalBlock(scope: !620, file: !3, line: 353, column: 29)
!623 = !DILocation(line: 354, column: 9, scope: !622)
!624 = !DILocation(line: 354, column: 25, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 354, column: 25)
!626 = !DILocation(line: 354, column: 25, scope: !627)
!627 = distinct !DILexicalBlock(scope: !625, file: !3, line: 354, column: 25)
!628 = !DILocalVariable(name: "__vpp_verify", scope: !629, file: !3, line: 354, type: !177)
!629 = distinct !DILexicalBlock(scope: !627, file: !3, line: 354, column: 25)
!630 = !DILocation(line: 354, column: 25, scope: !629)
!631 = !DILocation(line: 354, column: 25, scope: !622)
!632 = !DILocalVariable(name: "ret", scope: !622, file: !3, line: 355, type: !39)
!633 = !DILocation(line: 355, column: 7, scope: !622)
!634 = !DILocation(line: 357, column: 8, scope: !635)
!635 = distinct !DILexicalBlock(scope: !622, file: !3, line: 357, column: 7)
!636 = !DILocation(line: 357, column: 7, scope: !622)
!637 = !DILocation(line: 358, column: 4, scope: !635)
!638 = !DILocation(line: 365, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !622, file: !3, line: 365, column: 7)
!640 = !DILocation(line: 365, column: 7, scope: !622)
!641 = !DILocation(line: 366, column: 4, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !3, line: 365, column: 25)
!643 = !DILocation(line: 367, column: 4, scope: !644)
!644 = distinct !DILexicalBlock(scope: !642, file: !3, line: 367, column: 4)
!645 = !DILocation(line: 367, column: 4, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !3, line: 367, column: 4)
!647 = !DILocalVariable(name: "__vpp_verify", scope: !648, file: !3, line: 367, type: !177)
!648 = distinct !DILexicalBlock(scope: !646, file: !3, line: 367, column: 4)
!649 = !DILocation(line: 367, column: 4, scope: !648)
!650 = !DILocation(line: 367, column: 36, scope: !642)
!651 = !DILocation(line: 368, column: 4, scope: !642)
!652 = !DILocation(line: 371, column: 28, scope: !622)
!653 = !DILocation(line: 371, column: 33, scope: !622)
!654 = !DILocation(line: 371, column: 9, scope: !622)
!655 = !DILocation(line: 371, column: 7, scope: !622)
!656 = !DILocation(line: 372, column: 3, scope: !622)
!657 = !DILocation(line: 372, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 372, column: 3)
!659 = distinct !DILexicalBlock(scope: !622, file: !3, line: 372, column: 3)
!660 = !DILocation(line: 372, column: 3, scope: !659)
!661 = !DILocation(line: 372, column: 3, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !3, line: 372, column: 3)
!663 = !DILocation(line: 372, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !662, file: !3, line: 372, column: 3)
!665 = !DILocation(line: 372, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 372, column: 3)
!667 = !{i32 -2141378132, i32 -2141378103, i32 -2141378057, i32 -2141377999, i32 -2141377945, i32 -2141377891, i32 -2141377836, i32 -2141377805}
!668 = !DILocation(line: 372, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 372, column: 3)
!670 = distinct !DILexicalBlock(scope: !662, file: !3, line: 372, column: 3)
!671 = !{i32 -2141377350, i32 -2141377343, i32 -2141377289, i32 -2141377258, i32 -2141377228}
!672 = !DILocation(line: 372, column: 3, scope: !670)
!673 = !DILocation(line: 373, column: 2, scope: !622)
!674 = distinct !{!674, !617, !675}
!675 = !DILocation(line: 373, column: 2, scope: !618)
!676 = !DILocation(line: 380, column: 20, scope: !614)
!677 = !DILocation(line: 381, column: 1, scope: !614)
!678 = distinct !DISubprogram(name: "evtchn_fifo_percpu_init", scope: !3, file: !3, line: 405, type: !115, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!679 = !DILocalVariable(name: "cpu", arg: 1, scope: !678, file: !3, line: 405, type: !7)
!680 = !DILocation(line: 405, column: 49, scope: !678)
!681 = !DILocation(line: 407, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 407, column: 7)
!683 = distinct !DILexicalBlock(scope: !678, file: !3, line: 407, column: 6)
!684 = !DILocation(line: 407, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !3, line: 407, column: 7)
!686 = !DILocalVariable(name: "__vpp_verify", scope: !687, file: !3, line: 407, type: !177)
!687 = distinct !DILexicalBlock(scope: !685, file: !3, line: 407, column: 7)
!688 = !DILocation(line: 407, column: 7, scope: !687)
!689 = !DILocation(line: 407, column: 7, scope: !683)
!690 = !DILocation(line: 407, column: 6, scope: !678)
!691 = !DILocation(line: 408, column: 42, scope: !683)
!692 = !DILocation(line: 408, column: 10, scope: !683)
!693 = !DILocation(line: 408, column: 3, scope: !683)
!694 = !DILocation(line: 409, column: 2, scope: !678)
!695 = !DILocation(line: 410, column: 1, scope: !678)
!696 = distinct !DISubprogram(name: "evtchn_fifo_percpu_deinit", scope: !3, file: !3, line: 412, type: !115, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!697 = !DILocalVariable(name: "cpu", arg: 1, scope: !696, file: !3, line: 412, type: !7)
!698 = !DILocation(line: 412, column: 51, scope: !696)
!699 = !DILocation(line: 414, column: 30, scope: !696)
!700 = !DILocation(line: 414, column: 2, scope: !696)
!701 = !DILocation(line: 415, column: 2, scope: !696)
!702 = distinct !DISubprogram(name: "init_array_page", scope: !3, file: !3, line: 133, type: !703, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !68}
!705 = !DILocalVariable(name: "array_page", arg: 1, scope: !702, file: !3, line: 133, type: !68)
!706 = !DILocation(line: 133, column: 43, scope: !702)
!707 = !DILocalVariable(name: "i", scope: !702, file: !3, line: 135, type: !7)
!708 = !DILocation(line: 135, column: 11, scope: !702)
!709 = !DILocation(line: 137, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !702, file: !3, line: 137, column: 2)
!711 = !DILocation(line: 137, column: 7, scope: !710)
!712 = !DILocation(line: 137, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !3, line: 137, column: 2)
!714 = !DILocation(line: 137, column: 16, scope: !713)
!715 = !DILocation(line: 137, column: 2, scope: !710)
!716 = !DILocation(line: 138, column: 3, scope: !713)
!717 = !DILocation(line: 138, column: 14, scope: !713)
!718 = !DILocation(line: 138, column: 17, scope: !713)
!719 = !DILocation(line: 137, column: 41, scope: !713)
!720 = !DILocation(line: 137, column: 2, scope: !713)
!721 = distinct !{!721, !715, !722}
!722 = !DILocation(line: 138, column: 24, scope: !710)
!723 = !DILocation(line: 139, column: 1, scope: !702)
!724 = distinct !DISubprogram(name: "free_unused_array_pages", scope: !3, file: !3, line: 121, type: !111, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!725 = !DILocalVariable(name: "i", scope: !724, file: !3, line: 123, type: !7)
!726 = !DILocation(line: 123, column: 11, scope: !724)
!727 = !DILocation(line: 125, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !3, line: 125, column: 2)
!729 = !DILocation(line: 125, column: 9, scope: !728)
!730 = !DILocation(line: 125, column: 7, scope: !728)
!731 = !DILocation(line: 125, column: 30, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !3, line: 125, column: 2)
!733 = !DILocation(line: 125, column: 32, scope: !732)
!734 = !DILocation(line: 125, column: 2, scope: !728)
!735 = !DILocation(line: 126, column: 20, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 126, column: 7)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 125, column: 62)
!738 = !DILocation(line: 126, column: 8, scope: !736)
!739 = !DILocation(line: 126, column: 7, scope: !737)
!740 = !DILocation(line: 127, column: 4, scope: !736)
!741 = !DILocation(line: 128, column: 3, scope: !737)
!742 = !DILocation(line: 129, column: 15, scope: !737)
!743 = !DILocation(line: 129, column: 3, scope: !737)
!744 = !DILocation(line: 129, column: 18, scope: !737)
!745 = !DILocation(line: 130, column: 2, scope: !737)
!746 = !DILocation(line: 125, column: 58, scope: !732)
!747 = !DILocation(line: 125, column: 2, scope: !732)
!748 = distinct !{!748, !734, !749}
!749 = !DILocation(line: 130, column: 2, scope: !728)
!750 = !DILocation(line: 131, column: 1, scope: !724)
!751 = distinct !DISubprogram(name: "event_word_from_port", scope: !3, file: !3, line: 85, type: !752, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!752 = !DISubroutineType(types: !753)
!753 = !{!68, !84}
!754 = !DILocalVariable(name: "port", arg: 1, scope: !751, file: !3, line: 85, type: !84)
!755 = !DILocation(line: 85, column: 64, scope: !751)
!756 = !DILocalVariable(name: "i", scope: !751, file: !3, line: 87, type: !7)
!757 = !DILocation(line: 87, column: 11, scope: !751)
!758 = !DILocation(line: 87, column: 15, scope: !751)
!759 = !DILocation(line: 87, column: 20, scope: !751)
!760 = !DILocation(line: 89, column: 21, scope: !751)
!761 = !DILocation(line: 89, column: 9, scope: !751)
!762 = !DILocation(line: 89, column: 26, scope: !751)
!763 = !DILocation(line: 89, column: 31, scope: !751)
!764 = !DILocation(line: 89, column: 24, scope: !751)
!765 = !DILocation(line: 89, column: 2, scope: !751)
!766 = distinct !DISubprogram(name: "sync_clear_bit", scope: !767, file: !767, line: 50, type: !768, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!767 = !DIFile(filename: "./arch/x86/include/asm/sync_bitops.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DISubroutineType(types: !769)
!769 = !{null, !43, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!772 = !DILocalVariable(name: "nr", arg: 1, scope: !766, file: !767, line: 50, type: !43)
!773 = !DILocation(line: 50, column: 40, scope: !766)
!774 = !DILocalVariable(name: "addr", arg: 2, scope: !766, file: !767, line: 50, type: !770)
!775 = !DILocation(line: 50, column: 68, scope: !766)
!776 = !DILocation(line: 53, column: 16, scope: !766)
!777 = !DILocation(line: 54, column: 16, scope: !766)
!778 = !DILocation(line: 52, column: 2, scope: !766)
!779 = !{i32 4061803}
!780 = !DILocation(line: 56, column: 1, scope: !766)
!781 = distinct !DISubprogram(name: "sync_set_bit", scope: !767, file: !767, line: 32, type: !768, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!782 = !DILocalVariable(name: "nr", arg: 1, scope: !781, file: !767, line: 32, type: !43)
!783 = !DILocation(line: 32, column: 38, scope: !781)
!784 = !DILocalVariable(name: "addr", arg: 2, scope: !781, file: !767, line: 32, type: !770)
!785 = !DILocation(line: 32, column: 66, scope: !781)
!786 = !DILocation(line: 35, column: 16, scope: !781)
!787 = !DILocation(line: 36, column: 16, scope: !781)
!788 = !DILocation(line: 34, column: 2, scope: !781)
!789 = !{i32 4061219}
!790 = !DILocation(line: 38, column: 1, scope: !781)
!791 = distinct !DISubprogram(name: "test_bit", scope: !792, file: !792, line: 132, type: !793, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!792 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!793 = !DISubroutineType(types: !794)
!794 = !{!98, !43, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!797 = !DILocalVariable(name: "nr", arg: 1, scope: !798, file: !799, line: 210, type: !43)
!798 = distinct !DISubprogram(name: "variable_test_bit", scope: !799, file: !799, line: 210, type: !793, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!799 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!800 = !DILocation(line: 210, column: 52, scope: !798, inlinedAt: !801)
!801 = distinct !DILocation(line: 135, column: 9, scope: !791)
!802 = !DILocalVariable(name: "addr", arg: 2, scope: !798, file: !799, line: 210, type: !795)
!803 = !DILocation(line: 210, column: 86, scope: !798, inlinedAt: !801)
!804 = !DILocalVariable(name: "oldbit", scope: !798, file: !799, line: 212, type: !98)
!805 = !DILocation(line: 212, column: 7, scope: !798, inlinedAt: !801)
!806 = !DILocalVariable(name: "nr", arg: 1, scope: !807, file: !799, line: 204, type: !43)
!807 = distinct !DISubprogram(name: "constant_test_bit", scope: !799, file: !799, line: 204, type: !793, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!808 = !DILocation(line: 204, column: 52, scope: !807, inlinedAt: !809)
!809 = distinct !DILocation(line: 135, column: 9, scope: !791)
!810 = !DILocalVariable(name: "addr", arg: 2, scope: !807, file: !799, line: 204, type: !795)
!811 = !DILocation(line: 204, column: 86, scope: !807, inlinedAt: !809)
!812 = !DILocalVariable(name: "v", arg: 1, scope: !813, file: !814, line: 69, type: !817)
!813 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !814, file: !814, line: 69, type: !815, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!814 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817, !820}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 55, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !822, line: 72, baseType: !823)
!822 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !822, line: 16, baseType: !32)
!824 = !DILocation(line: 69, column: 73, scope: !813, inlinedAt: !825)
!825 = distinct !DILocation(line: 134, column: 2, scope: !791)
!826 = !DILocalVariable(name: "size", arg: 2, scope: !813, file: !814, line: 69, type: !820)
!827 = !DILocation(line: 69, column: 83, scope: !813, inlinedAt: !825)
!828 = !DILocalVariable(name: "nr", arg: 1, scope: !791, file: !792, line: 132, type: !43)
!829 = !DILocation(line: 132, column: 34, scope: !791)
!830 = !DILocalVariable(name: "addr", arg: 2, scope: !791, file: !792, line: 132, type: !795)
!831 = !DILocation(line: 132, column: 68, scope: !791)
!832 = !DILocation(line: 134, column: 25, scope: !791)
!833 = !DILocation(line: 134, column: 32, scope: !791)
!834 = !DILocation(line: 134, column: 30, scope: !791)
!835 = !DILocation(line: 71, column: 19, scope: !813, inlinedAt: !825)
!836 = !DILocation(line: 71, column: 22, scope: !813, inlinedAt: !825)
!837 = !DILocation(line: 71, column: 2, scope: !813, inlinedAt: !825)
!838 = !DILocation(line: 72, column: 2, scope: !813, inlinedAt: !825)
!839 = !DILocation(line: 135, column: 9, scope: !791)
!840 = !DILocation(line: 206, column: 19, scope: !807, inlinedAt: !809)
!841 = !DILocation(line: 206, column: 22, scope: !807, inlinedAt: !809)
!842 = !DILocation(line: 206, column: 15, scope: !807, inlinedAt: !809)
!843 = !DILocation(line: 207, column: 4, scope: !807, inlinedAt: !809)
!844 = !DILocation(line: 207, column: 9, scope: !807, inlinedAt: !809)
!845 = !DILocation(line: 207, column: 12, scope: !807, inlinedAt: !809)
!846 = !DILocation(line: 206, column: 44, scope: !807, inlinedAt: !809)
!847 = !DILocation(line: 207, column: 37, scope: !807, inlinedAt: !809)
!848 = !DILocation(line: 217, column: 33, scope: !798, inlinedAt: !801)
!849 = !DILocation(line: 217, column: 46, scope: !798, inlinedAt: !801)
!850 = !DILocation(line: 214, column: 2, scope: !798, inlinedAt: !801)
!851 = !{i32 -2147168120, i32 -2147168060}
!852 = !DILocation(line: 219, column: 9, scope: !798, inlinedAt: !801)
!853 = !DILocation(line: 135, column: 2, scope: !791)
!854 = distinct !DISubprogram(name: "kasan_check_read", scope: !855, file: !855, line: 34, type: !856, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!855 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!856 = !DISubroutineType(types: !857)
!857 = !{!98, !817, !7}
!858 = !DILocalVariable(name: "p", arg: 1, scope: !854, file: !855, line: 34, type: !817)
!859 = !DILocation(line: 34, column: 58, scope: !854)
!860 = !DILocalVariable(name: "size", arg: 2, scope: !854, file: !855, line: 34, type: !7)
!861 = !DILocation(line: 34, column: 74, scope: !854)
!862 = !DILocation(line: 36, column: 2, scope: !854)
!863 = distinct !DISubprogram(name: "kcsan_check_access", scope: !864, file: !864, line: 178, type: !865, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!864 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!865 = !DISubroutineType(types: !866)
!866 = !{null, !817, !820, !39}
!867 = !DILocalVariable(name: "ptr", arg: 1, scope: !863, file: !864, line: 178, type: !817)
!868 = !DILocation(line: 178, column: 60, scope: !863)
!869 = !DILocalVariable(name: "size", arg: 2, scope: !863, file: !864, line: 178, type: !820)
!870 = !DILocation(line: 178, column: 72, scope: !863)
!871 = !DILocalVariable(name: "type", arg: 3, scope: !863, file: !864, line: 179, type: !39)
!872 = !DILocation(line: 179, column: 15, scope: !863)
!873 = !DILocation(line: 179, column: 23, scope: !863)
!874 = distinct !DISubprogram(name: "sync_test_and_set_bit", scope: !767, file: !767, line: 83, type: !875, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!875 = !DISubroutineType(types: !876)
!876 = !{!98, !43, !770}
!877 = !DILocalVariable(name: "nr", arg: 1, scope: !874, file: !767, line: 83, type: !43)
!878 = !DILocation(line: 83, column: 47, scope: !874)
!879 = !DILocalVariable(name: "addr", arg: 2, scope: !874, file: !767, line: 83, type: !770)
!880 = !DILocation(line: 83, column: 75, scope: !874)
!881 = !DILocalVariable(name: "c", scope: !882, file: !767, line: 85, type: !98)
!882 = distinct !DILexicalBlock(scope: !874, file: !767, line: 85, column: 9)
!883 = !DILocation(line: 85, column: 9, scope: !882)
!884 = !{i32 -2143417922, i32 -2143417820}
!885 = !DILocation(line: 85, column: 2, scope: !874)
!886 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !887, file: !887, line: 646, type: !888, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!887 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!888 = !DISubroutineType(types: !889)
!889 = !{!32}
!890 = !DILocalVariable(name: "__ret", scope: !891, file: !887, line: 648, type: !32)
!891 = distinct !DILexicalBlock(scope: !886, file: !887, line: 648, column: 9)
!892 = !DILocation(line: 648, column: 9, scope: !891)
!893 = !DILocalVariable(name: "__edi", scope: !891, file: !887, line: 648, type: !32)
!894 = !DILocalVariable(name: "__esi", scope: !891, file: !887, line: 648, type: !32)
!895 = !DILocalVariable(name: "__edx", scope: !891, file: !887, line: 648, type: !32)
!896 = !DILocalVariable(name: "__ecx", scope: !891, file: !887, line: 648, type: !32)
!897 = !DILocalVariable(name: "__eax", scope: !891, file: !887, line: 648, type: !32)
!898 = !DILocation(line: 648, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !887, line: 648, column: 9)
!900 = distinct !DILexicalBlock(scope: !891, file: !887, line: 648, column: 9)
!901 = !{i32 -2145766461, i32 -2145764146, i32 -2145763912, i32 -2145763861, i32 -2145763833, i32 -2145763808, i32 -2145764124, i32 -2145764111, i32 -2145763673, i32 -2145763554, i32 -2145764019, i32 -2145763992, i32 -2145763964, i32 -2145763934}
!902 = !DILocalVariable(name: "__mask", scope: !903, file: !887, line: 648, type: !32)
!903 = distinct !DILexicalBlock(scope: !899, file: !887, line: 648, column: 9)
!904 = !DILocation(line: 648, column: 9, scope: !903)
!905 = !DILocation(line: 648, column: 9, scope: !900)
!906 = !DILocation(line: 648, column: 2, scope: !886)
!907 = distinct !DISubprogram(name: "clear_masked_cond", scope: !3, file: !3, line: 233, type: !908, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!908 = !DISubroutineType(types: !909)
!909 = !{!98, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!912 = !DILocalVariable(name: "v", arg: 1, scope: !913, file: !814, line: 84, type: !817)
!913 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !814, file: !814, line: 84, type: !815, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!914 = !DILocation(line: 84, column: 74, scope: !913, inlinedAt: !915)
!915 = distinct !DILocation(line: 248, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 248, column: 7)
!917 = distinct !DILexicalBlock(scope: !907, file: !3, line: 239, column: 5)
!918 = !DILocalVariable(name: "size", arg: 2, scope: !913, file: !814, line: 84, type: !820)
!919 = !DILocation(line: 84, column: 84, scope: !913, inlinedAt: !915)
!920 = !DILocalVariable(name: "word", arg: 1, scope: !907, file: !3, line: 233, type: !910)
!921 = !DILocation(line: 233, column: 54, scope: !907)
!922 = !DILocalVariable(name: "new", scope: !907, file: !3, line: 235, type: !29)
!923 = !DILocation(line: 235, column: 15, scope: !907)
!924 = !DILocalVariable(name: "old", scope: !907, file: !3, line: 235, type: !29)
!925 = !DILocation(line: 235, column: 20, scope: !907)
!926 = !DILocalVariable(name: "w", scope: !907, file: !3, line: 235, type: !29)
!927 = !DILocation(line: 235, column: 25, scope: !907)
!928 = !DILocation(line: 237, column: 7, scope: !907)
!929 = !DILocation(line: 237, column: 6, scope: !907)
!930 = !DILocation(line: 237, column: 4, scope: !907)
!931 = !DILocation(line: 239, column: 2, scope: !907)
!932 = !DILocation(line: 240, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !917, file: !3, line: 240, column: 7)
!934 = !DILocation(line: 240, column: 11, scope: !933)
!935 = !DILocation(line: 240, column: 7, scope: !917)
!936 = !DILocation(line: 241, column: 4, scope: !933)
!937 = !DILocation(line: 243, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !917, file: !3, line: 243, column: 7)
!939 = !DILocation(line: 243, column: 9, scope: !938)
!940 = !DILocation(line: 243, column: 7, scope: !917)
!941 = !DILocation(line: 244, column: 4, scope: !938)
!942 = !DILocation(line: 246, column: 9, scope: !917)
!943 = !DILocation(line: 246, column: 11, scope: !917)
!944 = !DILocation(line: 246, column: 7, scope: !917)
!945 = !DILocation(line: 247, column: 9, scope: !917)
!946 = !DILocation(line: 247, column: 13, scope: !917)
!947 = !DILocation(line: 247, column: 7, scope: !917)
!948 = !DILocalVariable(name: "__ai_ptr", scope: !916, file: !3, line: 248, type: !910)
!949 = !DILocation(line: 248, column: 7, scope: !916)
!950 = !DILocation(line: 86, column: 20, scope: !913, inlinedAt: !915)
!951 = !DILocation(line: 86, column: 23, scope: !913, inlinedAt: !915)
!952 = !DILocation(line: 86, column: 2, scope: !913, inlinedAt: !915)
!953 = !DILocation(line: 87, column: 2, scope: !913, inlinedAt: !915)
!954 = !DILocalVariable(name: "__ret", scope: !955, file: !3, line: 248, type: !911)
!955 = distinct !DILexicalBlock(scope: !916, file: !3, line: 248, column: 7)
!956 = !DILocation(line: 248, column: 7, scope: !955)
!957 = !DILocalVariable(name: "__old", scope: !955, file: !3, line: 248, type: !911)
!958 = !DILocalVariable(name: "__new", scope: !955, file: !3, line: 248, type: !911)
!959 = !DILocalVariable(name: "__ptr", scope: !955, file: !3, line: 248, type: !44)
!960 = !{i32 -2141387562}
!961 = !DILocation(line: 248, column: 5, scope: !917)
!962 = !DILocation(line: 249, column: 2, scope: !917)
!963 = !DILocation(line: 249, column: 11, scope: !907)
!964 = !DILocation(line: 249, column: 16, scope: !907)
!965 = !DILocation(line: 249, column: 13, scope: !907)
!966 = distinct !{!966, !931, !967}
!967 = !DILocation(line: 249, column: 19, scope: !907)
!968 = !DILocation(line: 251, column: 2, scope: !907)
!969 = !DILocation(line: 252, column: 1, scope: !907)
!970 = distinct !DISubprogram(name: "kasan_check_write", scope: !855, file: !855, line: 38, type: !856, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!971 = !DILocalVariable(name: "p", arg: 1, scope: !970, file: !855, line: 38, type: !817)
!972 = !DILocation(line: 38, column: 59, scope: !970)
!973 = !DILocalVariable(name: "size", arg: 2, scope: !970, file: !855, line: 38, type: !7)
!974 = !DILocation(line: 38, column: 75, scope: !970)
!975 = !DILocation(line: 40, column: 2, scope: !970)
!976 = distinct !DISubprogram(name: "__evtchn_fifo_handle_events", scope: !3, file: !3, line: 325, type: !105, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!977 = !DILocation(line: 84, column: 74, scope: !913, inlinedAt: !978)
!978 = distinct !DILocation(line: 339, column: 12, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 339, column: 12)
!980 = distinct !DILexicalBlock(scope: !976, file: !3, line: 336, column: 16)
!981 = !DILocation(line: 84, column: 84, scope: !913, inlinedAt: !978)
!982 = !DILocation(line: 84, column: 74, scope: !913, inlinedAt: !983)
!983 = distinct !DILocation(line: 334, column: 10, scope: !984)
!984 = distinct !DILexicalBlock(scope: !976, file: !3, line: 334, column: 10)
!985 = !DILocation(line: 84, column: 84, scope: !913, inlinedAt: !983)
!986 = !DILocalVariable(name: "cpu", arg: 1, scope: !976, file: !3, line: 325, type: !7)
!987 = !DILocation(line: 325, column: 50, scope: !976)
!988 = !DILocalVariable(name: "ctrl", arg: 2, scope: !976, file: !3, line: 326, type: !107)
!989 = !DILocation(line: 326, column: 31, scope: !976)
!990 = !DILocalVariable(name: "control_block", scope: !976, file: !3, line: 328, type: !16)
!991 = !DILocation(line: 328, column: 36, scope: !976)
!992 = !DILocalVariable(name: "ready", scope: !976, file: !3, line: 329, type: !32)
!993 = !DILocation(line: 329, column: 16, scope: !976)
!994 = !DILocalVariable(name: "q", scope: !976, file: !3, line: 330, type: !7)
!995 = !DILocation(line: 330, column: 11, scope: !976)
!996 = !DILocation(line: 332, column: 18, scope: !997)
!997 = distinct !DILexicalBlock(scope: !976, file: !3, line: 332, column: 18)
!998 = !DILocation(line: 332, column: 18, scope: !999)
!999 = distinct !DILexicalBlock(scope: !997, file: !3, line: 332, column: 18)
!1000 = !DILocalVariable(name: "__vpp_verify", scope: !1001, file: !3, line: 332, type: !177)
!1001 = distinct !DILexicalBlock(scope: !999, file: !3, line: 332, column: 18)
!1002 = !DILocation(line: 332, column: 18, scope: !1001)
!1003 = !DILocation(line: 332, column: 18, scope: !976)
!1004 = !DILocation(line: 332, column: 16, scope: !976)
!1005 = !DILocalVariable(name: "__ai_ptr", scope: !984, file: !3, line: 334, type: !38)
!1006 = !DILocation(line: 334, column: 10, scope: !984)
!1007 = !DILocation(line: 86, column: 20, scope: !913, inlinedAt: !983)
!1008 = !DILocation(line: 86, column: 23, scope: !913, inlinedAt: !983)
!1009 = !DILocation(line: 86, column: 2, scope: !913, inlinedAt: !983)
!1010 = !DILocation(line: 87, column: 2, scope: !913, inlinedAt: !983)
!1011 = !DILocalVariable(name: "__ret", scope: !1012, file: !3, line: 334, type: !21)
!1012 = distinct !DILexicalBlock(scope: !984, file: !3, line: 334, column: 10)
!1013 = !DILocation(line: 334, column: 10, scope: !1012)
!1014 = !{i32 -2141380901}
!1015 = !DILocation(line: 334, column: 10, scope: !976)
!1016 = !DILocation(line: 334, column: 8, scope: !976)
!1017 = !DILocation(line: 336, column: 2, scope: !976)
!1018 = !DILocation(line: 336, column: 9, scope: !976)
!1019 = !DILocation(line: 337, column: 7, scope: !980)
!1020 = !DILocation(line: 337, column: 5, scope: !980)
!1021 = !DILocation(line: 338, column: 21, scope: !980)
!1022 = !DILocation(line: 338, column: 26, scope: !980)
!1023 = !DILocation(line: 338, column: 32, scope: !980)
!1024 = !DILocation(line: 338, column: 47, scope: !980)
!1025 = !DILocation(line: 338, column: 3, scope: !980)
!1026 = !DILocalVariable(name: "__ai_ptr", scope: !979, file: !3, line: 339, type: !38)
!1027 = !DILocation(line: 339, column: 12, scope: !979)
!1028 = !DILocation(line: 86, column: 20, scope: !913, inlinedAt: !978)
!1029 = !DILocation(line: 86, column: 23, scope: !913, inlinedAt: !978)
!1030 = !DILocation(line: 86, column: 2, scope: !913, inlinedAt: !978)
!1031 = !DILocation(line: 87, column: 2, scope: !913, inlinedAt: !978)
!1032 = !DILocalVariable(name: "__ret", scope: !1033, file: !3, line: 339, type: !21)
!1033 = distinct !DILexicalBlock(scope: !979, file: !3, line: 339, column: 12)
!1034 = !DILocation(line: 339, column: 12, scope: !1033)
!1035 = !{i32 -2141379641}
!1036 = !DILocation(line: 339, column: 12, scope: !980)
!1037 = !DILocation(line: 339, column: 9, scope: !980)
!1038 = distinct !{!1038, !1017, !1039}
!1039 = !DILocation(line: 340, column: 2, scope: !976)
!1040 = !DILocation(line: 341, column: 1, scope: !976)
!1041 = distinct !DISubprogram(name: "consume_one_event", scope: !3, file: !3, line: 281, type: !1042, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !7, !107, !16, !7, !40}
!1044 = !DILocalVariable(name: "cpu", arg: 1, scope: !1041, file: !3, line: 281, type: !7)
!1045 = !DILocation(line: 281, column: 40, scope: !1041)
!1046 = !DILocalVariable(name: "ctrl", arg: 2, scope: !1041, file: !3, line: 281, type: !107)
!1047 = !DILocation(line: 281, column: 70, scope: !1041)
!1048 = !DILocalVariable(name: "control_block", arg: 3, scope: !1041, file: !3, line: 282, type: !16)
!1049 = !DILocation(line: 282, column: 44, scope: !1041)
!1050 = !DILocalVariable(name: "priority", arg: 4, scope: !1041, file: !3, line: 283, type: !7)
!1051 = !DILocation(line: 283, column: 19, scope: !1041)
!1052 = !DILocalVariable(name: "ready", arg: 5, scope: !1041, file: !3, line: 283, type: !40)
!1053 = !DILocation(line: 283, column: 44, scope: !1041)
!1054 = !DILocalVariable(name: "q", scope: !1041, file: !3, line: 285, type: !33)
!1055 = !DILocation(line: 285, column: 28, scope: !1041)
!1056 = !DILocation(line: 285, column: 33, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 285, column: 33)
!1058 = !DILocation(line: 285, column: 33, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 285, column: 33)
!1060 = !DILocalVariable(name: "__vpp_verify", scope: !1061, file: !3, line: 285, type: !177)
!1061 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 285, column: 33)
!1062 = !DILocation(line: 285, column: 33, scope: !1061)
!1063 = !DILocalVariable(name: "head", scope: !1041, file: !3, line: 286, type: !21)
!1064 = !DILocation(line: 286, column: 11, scope: !1041)
!1065 = !DILocalVariable(name: "port", scope: !1041, file: !3, line: 287, type: !84)
!1066 = !DILocation(line: 287, column: 16, scope: !1041)
!1067 = !DILocalVariable(name: "word", scope: !1041, file: !3, line: 288, type: !68)
!1068 = !DILocation(line: 288, column: 16, scope: !1041)
!1069 = !DILocation(line: 290, column: 9, scope: !1041)
!1070 = !DILocation(line: 290, column: 12, scope: !1041)
!1071 = !DILocation(line: 290, column: 17, scope: !1041)
!1072 = !DILocation(line: 290, column: 7, scope: !1041)
!1073 = !DILocation(line: 296, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 296, column: 6)
!1075 = !DILocation(line: 296, column: 11, scope: !1074)
!1076 = !DILocation(line: 296, column: 6, scope: !1041)
!1077 = !DILocation(line: 297, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 296, column: 17)
!1079 = !{i32 -2141382733}
!1080 = !DILocation(line: 298, column: 10, scope: !1078)
!1081 = !DILocation(line: 298, column: 25, scope: !1078)
!1082 = !DILocation(line: 298, column: 30, scope: !1078)
!1083 = !DILocation(line: 298, column: 8, scope: !1078)
!1084 = !DILocation(line: 299, column: 2, scope: !1078)
!1085 = !DILocation(line: 301, column: 9, scope: !1041)
!1086 = !DILocation(line: 301, column: 7, scope: !1041)
!1087 = !DILocation(line: 302, column: 30, scope: !1041)
!1088 = !DILocation(line: 302, column: 9, scope: !1041)
!1089 = !DILocation(line: 302, column: 7, scope: !1041)
!1090 = !DILocation(line: 303, column: 22, scope: !1041)
!1091 = !DILocation(line: 303, column: 9, scope: !1041)
!1092 = !DILocation(line: 303, column: 7, scope: !1041)
!1093 = !DILocation(line: 312, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 312, column: 6)
!1095 = !DILocation(line: 312, column: 11, scope: !1094)
!1096 = !DILocation(line: 312, column: 6, scope: !1041)
!1097 = !DILocation(line: 313, column: 13, scope: !1094)
!1098 = !DILocation(line: 313, column: 23, scope: !1094)
!1099 = !DILocation(line: 313, column: 3, scope: !1094)
!1100 = !DILocation(line: 315, column: 29, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 315, column: 6)
!1102 = !DILocation(line: 315, column: 6, scope: !1101)
!1103 = !DILocation(line: 315, column: 35, scope: !1101)
!1104 = !DILocation(line: 315, column: 61, scope: !1101)
!1105 = !DILocation(line: 315, column: 39, scope: !1101)
!1106 = !DILocation(line: 315, column: 6, scope: !1041)
!1107 = !DILocation(line: 316, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 316, column: 7)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 315, column: 68)
!1110 = !DILocation(line: 316, column: 7, scope: !1109)
!1111 = !DILocation(line: 317, column: 4, scope: !1108)
!1112 = !DILocation(line: 319, column: 24, scope: !1108)
!1113 = !DILocation(line: 319, column: 30, scope: !1108)
!1114 = !DILocation(line: 319, column: 4, scope: !1108)
!1115 = !DILocation(line: 320, column: 2, scope: !1109)
!1116 = !DILocation(line: 322, column: 22, scope: !1041)
!1117 = !DILocation(line: 322, column: 2, scope: !1041)
!1118 = !DILocation(line: 322, column: 5, scope: !1041)
!1119 = !DILocation(line: 322, column: 10, scope: !1041)
!1120 = !DILocation(line: 322, column: 20, scope: !1041)
!1121 = !DILocation(line: 323, column: 1, scope: !1041)
!1122 = distinct !DISubprogram(name: "clear_linked", scope: !3, file: !3, line: 266, type: !1123, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!21, !910}
!1125 = !DILocation(line: 84, column: 74, scope: !913, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 276, column: 16, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 276, column: 16)
!1128 = !DILocation(line: 84, column: 84, scope: !913, inlinedAt: !1126)
!1129 = !DILocalVariable(name: "word", arg: 1, scope: !1122, file: !3, line: 266, type: !910)
!1130 = !DILocation(line: 266, column: 53, scope: !1122)
!1131 = !DILocalVariable(name: "new", scope: !1122, file: !3, line: 268, type: !29)
!1132 = !DILocation(line: 268, column: 15, scope: !1122)
!1133 = !DILocalVariable(name: "old", scope: !1122, file: !3, line: 268, type: !29)
!1134 = !DILocation(line: 268, column: 20, scope: !1122)
!1135 = !DILocalVariable(name: "w", scope: !1122, file: !3, line: 268, type: !29)
!1136 = !DILocation(line: 268, column: 25, scope: !1122)
!1137 = !DILocation(line: 270, column: 7, scope: !1122)
!1138 = !DILocation(line: 270, column: 6, scope: !1122)
!1139 = !DILocation(line: 270, column: 4, scope: !1122)
!1140 = !DILocation(line: 272, column: 2, scope: !1122)
!1141 = !DILocation(line: 273, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 272, column: 5)
!1143 = !DILocation(line: 273, column: 7, scope: !1142)
!1144 = !DILocation(line: 274, column: 10, scope: !1142)
!1145 = !DILocation(line: 274, column: 12, scope: !1142)
!1146 = !DILocation(line: 274, column: 7, scope: !1142)
!1147 = !DILocation(line: 276, column: 2, scope: !1142)
!1148 = !DILocalVariable(name: "__ai_ptr", scope: !1127, file: !3, line: 276, type: !910)
!1149 = !DILocation(line: 276, column: 16, scope: !1127)
!1150 = !DILocation(line: 86, column: 20, scope: !913, inlinedAt: !1126)
!1151 = !DILocation(line: 86, column: 23, scope: !913, inlinedAt: !1126)
!1152 = !DILocation(line: 86, column: 2, scope: !913, inlinedAt: !1126)
!1153 = !DILocation(line: 87, column: 2, scope: !913, inlinedAt: !1126)
!1154 = !DILocalVariable(name: "__ret", scope: !1155, file: !3, line: 276, type: !911)
!1155 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 276, column: 16)
!1156 = !DILocation(line: 276, column: 16, scope: !1155)
!1157 = !DILocalVariable(name: "__old", scope: !1155, file: !3, line: 276, type: !911)
!1158 = !DILocalVariable(name: "__new", scope: !1155, file: !3, line: 276, type: !911)
!1159 = !DILocalVariable(name: "__ptr", scope: !1155, file: !3, line: 276, type: !44)
!1160 = !{i32 -2141383257}
!1161 = !DILocation(line: 276, column: 14, scope: !1122)
!1162 = !DILocation(line: 276, column: 49, scope: !1122)
!1163 = !DILocation(line: 276, column: 46, scope: !1122)
!1164 = distinct !{!1164, !1140, !1165}
!1165 = !DILocation(line: 276, column: 52, scope: !1122)
!1166 = !DILocation(line: 278, column: 9, scope: !1122)
!1167 = !DILocation(line: 278, column: 11, scope: !1122)
!1168 = !DILocation(line: 278, column: 2, scope: !1122)
!1169 = distinct !DISubprogram(name: "clear_bit", scope: !1170, file: !1170, line: 39, type: !768, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1170 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !DILocalVariable(name: "nr", arg: 1, scope: !1172, file: !799, line: 72, type: !43)
!1172 = distinct !DISubprogram(name: "arch_clear_bit", scope: !799, file: !799, line: 72, type: !768, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1173 = !DILocation(line: 72, column: 21, scope: !1172, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 42, column: 2, scope: !1169)
!1175 = !DILocalVariable(name: "addr", arg: 2, scope: !1172, file: !799, line: 72, type: !770)
!1176 = !DILocation(line: 72, column: 49, scope: !1172, inlinedAt: !1174)
!1177 = !DILocation(line: 84, column: 74, scope: !913, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 41, column: 2, scope: !1169)
!1179 = !DILocation(line: 84, column: 84, scope: !913, inlinedAt: !1178)
!1180 = !DILocalVariable(name: "nr", arg: 1, scope: !1169, file: !1170, line: 39, type: !43)
!1181 = !DILocation(line: 39, column: 35, scope: !1169)
!1182 = !DILocalVariable(name: "addr", arg: 2, scope: !1169, file: !1170, line: 39, type: !770)
!1183 = !DILocation(line: 39, column: 63, scope: !1169)
!1184 = !DILocation(line: 41, column: 26, scope: !1169)
!1185 = !DILocation(line: 41, column: 33, scope: !1169)
!1186 = !DILocation(line: 41, column: 31, scope: !1169)
!1187 = !DILocation(line: 86, column: 20, scope: !913, inlinedAt: !1178)
!1188 = !DILocation(line: 86, column: 23, scope: !913, inlinedAt: !1178)
!1189 = !DILocation(line: 86, column: 2, scope: !913, inlinedAt: !1178)
!1190 = !DILocation(line: 87, column: 2, scope: !913, inlinedAt: !1178)
!1191 = !DILocation(line: 42, column: 17, scope: !1169)
!1192 = !DILocation(line: 42, column: 21, scope: !1169)
!1193 = !DILocation(line: 74, column: 27, scope: !1194, inlinedAt: !1174)
!1194 = distinct !DILexicalBlock(scope: !1172, file: !799, line: 74, column: 6)
!1195 = !DILocation(line: 74, column: 6, scope: !1194, inlinedAt: !1174)
!1196 = !DILocation(line: 74, column: 6, scope: !1172, inlinedAt: !1174)
!1197 = !DILocation(line: 76, column: 6, scope: !1198, inlinedAt: !1174)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !799, line: 74, column: 32)
!1199 = !DILocation(line: 77, column: 13, scope: !1198, inlinedAt: !1174)
!1200 = !DILocation(line: 77, column: 12, scope: !1198, inlinedAt: !1174)
!1201 = !DILocation(line: 75, column: 3, scope: !1198, inlinedAt: !1174)
!1202 = !{i32 -2147176414}
!1203 = !DILocation(line: 78, column: 2, scope: !1198, inlinedAt: !1174)
!1204 = !DILocation(line: 80, column: 8, scope: !1205, inlinedAt: !1174)
!1205 = distinct !DILexicalBlock(scope: !1194, file: !799, line: 78, column: 9)
!1206 = !DILocation(line: 80, column: 32, scope: !1205, inlinedAt: !1174)
!1207 = !DILocation(line: 79, column: 3, scope: !1205, inlinedAt: !1174)
!1208 = !{i32 -2147176282}
!1209 = !DILocation(line: 43, column: 1, scope: !1169)
!1210 = distinct !DISubprogram(name: "evtchn_fifo_is_masked", scope: !3, file: !3, line: 224, type: !96, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1211 = !DILocalVariable(name: "port", arg: 1, scope: !1210, file: !3, line: 224, type: !84)
!1212 = !DILocation(line: 224, column: 49, scope: !1210)
!1213 = !DILocalVariable(name: "word", scope: !1210, file: !3, line: 226, type: !68)
!1214 = !DILocation(line: 226, column: 16, scope: !1210)
!1215 = !DILocation(line: 226, column: 44, scope: !1210)
!1216 = !DILocation(line: 226, column: 23, scope: !1210)
!1217 = !DILocation(line: 227, column: 9, scope: !1210)
!1218 = !DILocation(line: 227, column: 2, scope: !1210)
