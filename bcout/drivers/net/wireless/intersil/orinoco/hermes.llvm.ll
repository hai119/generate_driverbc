; ModuleID = '../bcout/drivers/net/wireless/intersil/orinoco/hermes.llvm.bc'
source_filename = "drivers/net/wireless/intersil/orinoco/hermes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.hermes_ops = type { i32 (%struct.hermes*)*, i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16*)*, i32 (%struct.hermes*, i32, i16, i32, i16*, i8*)*, i32 (%struct.hermes*, i32, i16, i16, i8*)*, i32 (%struct.hermes*, i32, i8*, i32, i16, i16)*, i32 (%struct.hermes*, i32, i8*, i32, i16, i16)*, i32 (%struct.hermes*, i16*, i32, i16)*, i32 (%struct.hermes*, i32)*, i32 (%struct.hermes*)*, i32 (%struct.hermes*, i8*, i32, i32)*, void (%struct.spinlock*, i64*)*, void (%struct.spinlock*, i64*)*, void (%struct.spinlock*)*, void (%struct.spinlock*)* }
%struct.hermes = type { i8*, i32, i16, i8, %struct.hermes_ops*, i8* }
%struct.hermes_response = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.62, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.page = type { i64, %union.anon.5, %union.anon.42, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.64 = type { %struct.callback_head }
%union.anon.65 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.17 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.19 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.19 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.42 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.29 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.21, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.22, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.23, %union.anon.27, %struct.key_restriction* }
%union.anon.21 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.22 = type { i64 }
%union.anon.23 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.24, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.24 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.27 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.48, %union.anon.49, i32 }
%struct.request_queue = type opaque
%union.anon.48 = type { %struct.list_head }
%union.anon.49 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.54 }
%struct.anon.54 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.61, i32, [12 x i8] }
%union.anon.61 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.62 = type { %struct.callback_head }
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

@hermes_ops_local = internal constant %struct.hermes_ops { i32 (%struct.hermes*)* @hermes_init, i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)* @hermes_docmd_wait, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)* @hermes_doicmd_wait, i32 (%struct.hermes*, i16, i16*)* @hermes_allocate, i32 (%struct.hermes*, i32, i16, i32, i16*, i8*)* @hermes_read_ltv, i32 (%struct.hermes*, i32, i16, i16, i8*)* @hermes_write_ltv, i32 (%struct.hermes*, i32, i8*, i32, i16, i16)* @hermes_bap_pread, i32 (%struct.hermes*, i32, i8*, i32, i16, i16)* @hermes_bap_pwrite, i32 (%struct.hermes*, i16*, i32, i16)* @hermes_read_pda, i32 (%struct.hermes*, i32)* @hermesi_program_init, i32 (%struct.hermes*)* @hermesi_program_end, i32 (%struct.hermes*, i8*, i32, i32)* @hermes_program_bytes, void (%struct.spinlock*, i64*)* @hermes_lock_irqsave, void (%struct.spinlock*, i64*)* @hermes_unlock_irqrestore, void (%struct.spinlock*)* @hermes_lock_irq, void (%struct.spinlock*)* @hermes_unlock_irq }, align 8, !dbg !0
@.str = private unnamed_addr constant [59 x i8] c"\014hermes @ %p: Card removed while issuing command 0x%04x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\013hermes @ %p: Error %d issuing command 0x%04x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"\014hermes @ %p: Card removed while waiting for command 0x%04x completion.\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\013hermes @ %p: Timeout waiting for command 0x%04x completion.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"\013hermes @ %p: Timeout waiting for card to reset (reg=0x%04x)!\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"\014hermes @ %p: Card removed waiting for frame allocation.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\013hermes @ %p: Timeout waiting for frame allocation\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"\014hermes @ %p: %s(): rid (0x%04x) does not match type (0x%04x)\0A\00", align 1
@__func__.hermes_read_ltv = private unnamed_addr constant [16 x i8] c"hermes_read_ltv\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"\014hermes @ %p: Truncating LTV record from %d to %d bytes. (rid=0x%04x, len=0x%04x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"\013hermes @ %p: BAP%d offset %s: reg=0x%x id=0x%x offset=0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hermes_struct_init(%struct.hermes* %hw, i8* %address, i32 %reg_spacing) #0 !dbg !134 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %address.addr = alloca i8*, align 8
  %reg_spacing.addr = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !137, metadata !DIExpression()), !dbg !138
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 %reg_spacing, i32* %reg_spacing.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg_spacing.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load i8*, i8** %address.addr, align 8, !dbg !143
  %1 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !144
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %1, i32 0, i32 0, !dbg !145
  store i8* %0, i8** %iobase, align 8, !dbg !146
  %2 = load i32, i32* %reg_spacing.addr, align 4, !dbg !147
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !148
  %reg_spacing1 = getelementptr inbounds %struct.hermes, %struct.hermes* %3, i32 0, i32 1, !dbg !149
  store i32 %2, i32* %reg_spacing1, align 8, !dbg !150
  %4 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !151
  %inten = getelementptr inbounds %struct.hermes, %struct.hermes* %4, i32 0, i32 2, !dbg !152
  store i16 0, i16* %inten, align 4, !dbg !153
  %5 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !154
  %eeprom_pda = getelementptr inbounds %struct.hermes, %struct.hermes* %5, i32 0, i32 3, !dbg !155
  store i8 0, i8* %eeprom_pda, align 2, !dbg !156
  %6 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !157
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 4, !dbg !158
  store %struct.hermes_ops* @hermes_ops_local, %struct.hermes_ops** %ops, align 8, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_init(%struct.hermes* %hw) #0 !dbg !161 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %reg = alloca i16, align 2
  %err = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %err, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %err, align 4, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %k, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !170
  %inten = getelementptr inbounds %struct.hermes, %struct.hermes* %0, i32 0, i32 2, !dbg !171
  store i16 0, i16* %inten, align 4, !dbg !172
  %1 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !173
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %1, i32 0, i32 0, !dbg !173
  %2 = load i8*, i8** %iobase, align 8, !dbg !173
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !173
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %3, i32 0, i32 1, !dbg !173
  %4 = load i32, i32* %reg_spacing, align 8, !dbg !173
  %shl = shl i32 50, %4, !dbg !173
  %idx.ext = sext i32 %shl to i64, !dbg !173
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !173
  call void @iowrite16(i16 zeroext 0, i8* %add.ptr) #6, !dbg !173
  %5 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !174
  %iobase1 = getelementptr inbounds %struct.hermes, %struct.hermes* %5, i32 0, i32 0, !dbg !174
  %6 = load i8*, i8** %iobase1, align 8, !dbg !174
  %7 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !174
  %reg_spacing2 = getelementptr inbounds %struct.hermes, %struct.hermes* %7, i32 0, i32 1, !dbg !174
  %8 = load i32, i32* %reg_spacing2, align 8, !dbg !174
  %shl3 = shl i32 52, %8, !dbg !174
  %idx.ext4 = sext i32 %shl3 to i64, !dbg !174
  %add.ptr5 = getelementptr i8, i8* %6, i64 %idx.ext4, !dbg !174
  call void @iowrite16(i16 zeroext -1, i8* %add.ptr5) #6, !dbg !174
  store i32 100, i32* %k, align 4, !dbg !175
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !176
  %iobase6 = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 0, !dbg !176
  %10 = load i8*, i8** %iobase6, align 8, !dbg !176
  %11 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !176
  %reg_spacing7 = getelementptr inbounds %struct.hermes, %struct.hermes* %11, i32 0, i32 1, !dbg !176
  %12 = load i32, i32* %reg_spacing7, align 8, !dbg !176
  %shl8 = shl i32 0, %12, !dbg !176
  %idx.ext9 = sext i32 %shl8 to i64, !dbg !176
  %add.ptr10 = getelementptr i8, i8* %10, i64 %idx.ext9, !dbg !176
  %call = call i32 @ioread16(i8* %add.ptr10) #6, !dbg !176
  %conv = trunc i32 %call to i16, !dbg !176
  store i16 %conv, i16* %reg, align 2, !dbg !177
  br label %while.cond, !dbg !178

while.cond:                                       ; preds = %if.end, %entry
  %13 = load i32, i32* %k, align 4, !dbg !179
  %tobool = icmp ne i32 %13, 0, !dbg !179
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !180

land.rhs:                                         ; preds = %while.cond
  %14 = load i16, i16* %reg, align 2, !dbg !181
  %conv11 = zext i16 %14 to i32, !dbg !181
  %and = and i32 %conv11, 32768, !dbg !182
  %tobool12 = icmp ne i32 %and, 0, !dbg !180
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ], !dbg !183
  br i1 %15, label %while.body, label %while.end, !dbg !178

while.body:                                       ; preds = %land.end
  %16 = load i16, i16* %reg, align 2, !dbg !184
  %conv13 = zext i16 %16 to i32, !dbg !184
  %cmp = icmp eq i32 %conv13, 65535, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %while.body
  store i32 -19, i32* %retval, align 4, !dbg !189
  br label %return, !dbg !189

if.end:                                           ; preds = %while.body
  %17 = load i32, i32* %k, align 4, !dbg !190
  %dec = add i32 %17, -1, !dbg !190
  store i32 %dec, i32* %k, align 4, !dbg !190
  call void @__const_udelay(i64 4295) #6, !dbg !191
  %18 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !196
  %iobase15 = getelementptr inbounds %struct.hermes, %struct.hermes* %18, i32 0, i32 0, !dbg !196
  %19 = load i8*, i8** %iobase15, align 8, !dbg !196
  %20 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !196
  %reg_spacing16 = getelementptr inbounds %struct.hermes, %struct.hermes* %20, i32 0, i32 1, !dbg !196
  %21 = load i32, i32* %reg_spacing16, align 8, !dbg !196
  %shl17 = shl i32 0, %21, !dbg !196
  %idx.ext18 = sext i32 %shl17 to i64, !dbg !196
  %add.ptr19 = getelementptr i8, i8* %19, i64 %idx.ext18, !dbg !196
  %call20 = call i32 @ioread16(i8* %add.ptr19) #6, !dbg !196
  %conv21 = trunc i32 %call20 to i16, !dbg !196
  store i16 %conv21, i16* %reg, align 2, !dbg !197
  br label %while.cond, !dbg !178, !llvm.loop !198

while.end:                                        ; preds = %land.end
  %22 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !200
  %iobase22 = getelementptr inbounds %struct.hermes, %struct.hermes* %22, i32 0, i32 0, !dbg !200
  %23 = load i8*, i8** %iobase22, align 8, !dbg !200
  %24 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !200
  %reg_spacing23 = getelementptr inbounds %struct.hermes, %struct.hermes* %24, i32 0, i32 1, !dbg !200
  %25 = load i32, i32* %reg_spacing23, align 8, !dbg !200
  %shl24 = shl i32 48, %25, !dbg !200
  %idx.ext25 = sext i32 %shl24 to i64, !dbg !200
  %add.ptr26 = getelementptr i8, i8* %23, i64 %idx.ext25, !dbg !200
  %call27 = call i32 @ioread16(i8* %add.ptr26) #6, !dbg !200
  %conv28 = trunc i32 %call27 to i16, !dbg !200
  store i16 %conv28, i16* %reg, align 2, !dbg !201
  %26 = load i16, i16* %reg, align 2, !dbg !202
  %27 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !202
  %iobase29 = getelementptr inbounds %struct.hermes, %struct.hermes* %27, i32 0, i32 0, !dbg !202
  %28 = load i8*, i8** %iobase29, align 8, !dbg !202
  %29 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !202
  %reg_spacing30 = getelementptr inbounds %struct.hermes, %struct.hermes* %29, i32 0, i32 1, !dbg !202
  %30 = load i32, i32* %reg_spacing30, align 8, !dbg !202
  %shl31 = shl i32 52, %30, !dbg !202
  %idx.ext32 = sext i32 %shl31 to i64, !dbg !202
  %add.ptr33 = getelementptr i8, i8* %28, i64 %idx.ext32, !dbg !202
  call void @iowrite16(i16 zeroext %26, i8* %add.ptr33) #6, !dbg !202
  %31 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !203
  %call34 = call i32 @hermes_doicmd_wait(%struct.hermes* %31, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, %struct.hermes_response* null) #6, !dbg !204
  store i32 %call34, i32* %err, align 4, !dbg !205
  %32 = load i32, i32* %err, align 4, !dbg !206
  store i32 %32, i32* %retval, align 4, !dbg !207
  br label %return, !dbg !207

return:                                           ; preds = %while.end, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !208
  ret i32 %33, !dbg !208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_docmd_wait(%struct.hermes* %hw, i16 zeroext %cmd, i16 zeroext %parm0, %struct.hermes_response* %resp) #0 !dbg !209 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %cmd.addr = alloca i16, align 2
  %parm0.addr = alloca i16, align 2
  %resp.addr = alloca %struct.hermes_response*, align 8
  %err = alloca i32, align 4
  %k = alloca i32, align 4
  %reg = alloca i16, align 2
  %status = alloca i16, align 2
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !210, metadata !DIExpression()), !dbg !211
  store i16 %cmd, i16* %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cmd.addr, metadata !212, metadata !DIExpression()), !dbg !213
  store i16 %parm0, i16* %parm0.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %parm0.addr, metadata !214, metadata !DIExpression()), !dbg !215
  store %struct.hermes_response* %resp, %struct.hermes_response** %resp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes_response** %resp.addr, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %err, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %k, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i16* %status, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !226
  %1 = load i16, i16* %cmd.addr, align 2, !dbg !227
  %2 = load i16, i16* %parm0.addr, align 2, !dbg !228
  %call = call i32 @hermes_issue_cmd(%struct.hermes* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext 0, i16 zeroext 0) #6, !dbg !229
  store i32 %call, i32* %err, align 4, !dbg !230
  %3 = load i32, i32* %err, align 4, !dbg !231
  %tobool = icmp ne i32 %3, 0, !dbg !231
  br i1 %tobool, label %if.then, label %if.end16, !dbg !233

if.then:                                          ; preds = %entry
  %4 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !234
  %call1 = call i32 @hermes_present(%struct.hermes* %4) #6, !dbg !237
  %tobool2 = icmp ne i32 %call1, 0, !dbg !237
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !238

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @net_ratelimit() #6, !dbg !239
  %tobool5 = icmp ne i32 %call4, 0, !dbg !239
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !242

if.then6:                                         ; preds = %if.then3
  %5 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !243
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %5, i32 0, i32 0, !dbg !244
  %6 = load i8*, i8** %iobase, align 8, !dbg !244
  %7 = load i16, i16* %cmd.addr, align 2, !dbg !245
  %conv = zext i16 %7 to i32, !dbg !245
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %conv) #7, !dbg !246
  br label %if.end, !dbg !246

if.end:                                           ; preds = %if.then6, %if.then3
  store i32 -19, i32* %err, align 4, !dbg !247
  br label %if.end15, !dbg !248

if.else:                                          ; preds = %if.then
  %call8 = call i32 @net_ratelimit() #6, !dbg !249
  %tobool9 = icmp ne i32 %call8, 0, !dbg !249
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !251

if.then10:                                        ; preds = %if.else
  %8 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !252
  %iobase11 = getelementptr inbounds %struct.hermes, %struct.hermes* %8, i32 0, i32 0, !dbg !253
  %9 = load i8*, i8** %iobase11, align 8, !dbg !253
  %10 = load i32, i32* %err, align 4, !dbg !254
  %11 = load i16, i16* %cmd.addr, align 2, !dbg !255
  %conv12 = zext i16 %11 to i32, !dbg !255
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 %10, i32 %conv12) #7, !dbg !256
  br label %if.end14, !dbg !256

if.end14:                                         ; preds = %if.then10, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %out, !dbg !257

if.end16:                                         ; preds = %entry
  %12 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !258
  %iobase17 = getelementptr inbounds %struct.hermes, %struct.hermes* %12, i32 0, i32 0, !dbg !258
  %13 = load i8*, i8** %iobase17, align 8, !dbg !258
  %14 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !258
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %14, i32 0, i32 1, !dbg !258
  %15 = load i32, i32* %reg_spacing, align 8, !dbg !258
  %shl = shl i32 48, %15, !dbg !258
  %idx.ext = sext i32 %shl to i64, !dbg !258
  %add.ptr = getelementptr i8, i8* %13, i64 %idx.ext, !dbg !258
  %call18 = call i32 @ioread16(i8* %add.ptr) #6, !dbg !258
  %conv19 = trunc i32 %call18 to i16, !dbg !258
  store i16 %conv19, i16* %reg, align 2, !dbg !259
  store i32 20000, i32* %k, align 4, !dbg !260
  br label %while.cond, !dbg !261

while.cond:                                       ; preds = %while.body, %if.end16
  %16 = load i16, i16* %reg, align 2, !dbg !262
  %conv20 = zext i16 %16 to i32, !dbg !262
  %and = and i32 %conv20, 16, !dbg !263
  %tobool21 = icmp ne i32 %and, 0, !dbg !263
  br i1 %tobool21, label %land.end, label %land.rhs, !dbg !264

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, i32* %k, align 4, !dbg !265
  %tobool22 = icmp ne i32 %17, 0, !dbg !264
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool22, %land.rhs ], !dbg !266
  br i1 %18, label %while.body, label %while.end, !dbg !261

while.body:                                       ; preds = %land.end
  %19 = load i32, i32* %k, align 4, !dbg !267
  %dec = add i32 %19, -1, !dbg !267
  store i32 %dec, i32* %k, align 4, !dbg !267
  call void @__const_udelay(i64 42950) #6, !dbg !269
  %20 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !274
  %iobase23 = getelementptr inbounds %struct.hermes, %struct.hermes* %20, i32 0, i32 0, !dbg !274
  %21 = load i8*, i8** %iobase23, align 8, !dbg !274
  %22 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !274
  %reg_spacing24 = getelementptr inbounds %struct.hermes, %struct.hermes* %22, i32 0, i32 1, !dbg !274
  %23 = load i32, i32* %reg_spacing24, align 8, !dbg !274
  %shl25 = shl i32 48, %23, !dbg !274
  %idx.ext26 = sext i32 %shl25 to i64, !dbg !274
  %add.ptr27 = getelementptr i8, i8* %21, i64 %idx.ext26, !dbg !274
  %call28 = call i32 @ioread16(i8* %add.ptr27) #6, !dbg !274
  %conv29 = trunc i32 %call28 to i16, !dbg !274
  store i16 %conv29, i16* %reg, align 2, !dbg !275
  br label %while.cond, !dbg !261, !llvm.loop !276

while.end:                                        ; preds = %land.end
  %24 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !278
  %call30 = call i32 @hermes_present(%struct.hermes* %24) #6, !dbg !280
  %tobool31 = icmp ne i32 %call30, 0, !dbg !280
  br i1 %tobool31, label %if.end36, label %if.then32, !dbg !281

if.then32:                                        ; preds = %while.end
  %25 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !282
  %iobase33 = getelementptr inbounds %struct.hermes, %struct.hermes* %25, i32 0, i32 0, !dbg !284
  %26 = load i8*, i8** %iobase33, align 8, !dbg !284
  %27 = load i16, i16* %cmd.addr, align 2, !dbg !285
  %conv34 = zext i16 %27 to i32, !dbg !285
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %conv34) #7, !dbg !286
  store i32 -19, i32* %err, align 4, !dbg !287
  br label %out, !dbg !288

if.end36:                                         ; preds = %while.end
  %28 = load i16, i16* %reg, align 2, !dbg !289
  %conv37 = zext i16 %28 to i32, !dbg !289
  %and38 = and i32 %conv37, 16, !dbg !291
  %tobool39 = icmp ne i32 %and38, 0, !dbg !291
  br i1 %tobool39, label %if.end44, label %if.then40, !dbg !292

if.then40:                                        ; preds = %if.end36
  %29 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !293
  %iobase41 = getelementptr inbounds %struct.hermes, %struct.hermes* %29, i32 0, i32 0, !dbg !295
  %30 = load i8*, i8** %iobase41, align 8, !dbg !295
  %31 = load i16, i16* %cmd.addr, align 2, !dbg !296
  %conv42 = zext i16 %31 to i32, !dbg !296
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %30, i32 %conv42) #7, !dbg !297
  store i32 -110, i32* %err, align 4, !dbg !298
  br label %out, !dbg !299

if.end44:                                         ; preds = %if.end36
  %32 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !300
  %iobase45 = getelementptr inbounds %struct.hermes, %struct.hermes* %32, i32 0, i32 0, !dbg !300
  %33 = load i8*, i8** %iobase45, align 8, !dbg !300
  %34 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !300
  %reg_spacing46 = getelementptr inbounds %struct.hermes, %struct.hermes* %34, i32 0, i32 1, !dbg !300
  %35 = load i32, i32* %reg_spacing46, align 8, !dbg !300
  %shl47 = shl i32 8, %35, !dbg !300
  %idx.ext48 = sext i32 %shl47 to i64, !dbg !300
  %add.ptr49 = getelementptr i8, i8* %33, i64 %idx.ext48, !dbg !300
  %call50 = call i32 @ioread16(i8* %add.ptr49) #6, !dbg !300
  %conv51 = trunc i32 %call50 to i16, !dbg !300
  store i16 %conv51, i16* %status, align 2, !dbg !301
  %36 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !302
  %tobool52 = icmp ne %struct.hermes_response* %36, null, !dbg !302
  br i1 %tobool52, label %if.then53, label %if.end76, !dbg !304

if.then53:                                        ; preds = %if.end44
  %37 = load i16, i16* %status, align 2, !dbg !305
  %38 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !307
  %status54 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %38, i32 0, i32 0, !dbg !308
  store i16 %37, i16* %status54, align 2, !dbg !309
  %39 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !310
  %iobase55 = getelementptr inbounds %struct.hermes, %struct.hermes* %39, i32 0, i32 0, !dbg !310
  %40 = load i8*, i8** %iobase55, align 8, !dbg !310
  %41 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !310
  %reg_spacing56 = getelementptr inbounds %struct.hermes, %struct.hermes* %41, i32 0, i32 1, !dbg !310
  %42 = load i32, i32* %reg_spacing56, align 8, !dbg !310
  %shl57 = shl i32 10, %42, !dbg !310
  %idx.ext58 = sext i32 %shl57 to i64, !dbg !310
  %add.ptr59 = getelementptr i8, i8* %40, i64 %idx.ext58, !dbg !310
  %call60 = call i32 @ioread16(i8* %add.ptr59) #6, !dbg !310
  %conv61 = trunc i32 %call60 to i16, !dbg !310
  %43 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !311
  %resp0 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %43, i32 0, i32 1, !dbg !312
  store i16 %conv61, i16* %resp0, align 2, !dbg !313
  %44 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !314
  %iobase62 = getelementptr inbounds %struct.hermes, %struct.hermes* %44, i32 0, i32 0, !dbg !314
  %45 = load i8*, i8** %iobase62, align 8, !dbg !314
  %46 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !314
  %reg_spacing63 = getelementptr inbounds %struct.hermes, %struct.hermes* %46, i32 0, i32 1, !dbg !314
  %47 = load i32, i32* %reg_spacing63, align 8, !dbg !314
  %shl64 = shl i32 12, %47, !dbg !314
  %idx.ext65 = sext i32 %shl64 to i64, !dbg !314
  %add.ptr66 = getelementptr i8, i8* %45, i64 %idx.ext65, !dbg !314
  %call67 = call i32 @ioread16(i8* %add.ptr66) #6, !dbg !314
  %conv68 = trunc i32 %call67 to i16, !dbg !314
  %48 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !315
  %resp1 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %48, i32 0, i32 2, !dbg !316
  store i16 %conv68, i16* %resp1, align 2, !dbg !317
  %49 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !318
  %iobase69 = getelementptr inbounds %struct.hermes, %struct.hermes* %49, i32 0, i32 0, !dbg !318
  %50 = load i8*, i8** %iobase69, align 8, !dbg !318
  %51 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !318
  %reg_spacing70 = getelementptr inbounds %struct.hermes, %struct.hermes* %51, i32 0, i32 1, !dbg !318
  %52 = load i32, i32* %reg_spacing70, align 8, !dbg !318
  %shl71 = shl i32 14, %52, !dbg !318
  %idx.ext72 = sext i32 %shl71 to i64, !dbg !318
  %add.ptr73 = getelementptr i8, i8* %50, i64 %idx.ext72, !dbg !318
  %call74 = call i32 @ioread16(i8* %add.ptr73) #6, !dbg !318
  %conv75 = trunc i32 %call74 to i16, !dbg !318
  %53 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !319
  %resp2 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %53, i32 0, i32 3, !dbg !320
  store i16 %conv75, i16* %resp2, align 2, !dbg !321
  br label %if.end76, !dbg !322

if.end76:                                         ; preds = %if.then53, %if.end44
  %54 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !323
  %iobase77 = getelementptr inbounds %struct.hermes, %struct.hermes* %54, i32 0, i32 0, !dbg !323
  %55 = load i8*, i8** %iobase77, align 8, !dbg !323
  %56 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !323
  %reg_spacing78 = getelementptr inbounds %struct.hermes, %struct.hermes* %56, i32 0, i32 1, !dbg !323
  %57 = load i32, i32* %reg_spacing78, align 8, !dbg !323
  %shl79 = shl i32 52, %57, !dbg !323
  %idx.ext80 = sext i32 %shl79 to i64, !dbg !323
  %add.ptr81 = getelementptr i8, i8* %55, i64 %idx.ext80, !dbg !323
  call void @iowrite16(i16 zeroext 16, i8* %add.ptr81) #6, !dbg !323
  %58 = load i16, i16* %status, align 2, !dbg !324
  %conv82 = zext i16 %58 to i32, !dbg !324
  %and83 = and i32 %conv82, 32512, !dbg !326
  %tobool84 = icmp ne i32 %and83, 0, !dbg !326
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !327

if.then85:                                        ; preds = %if.end76
  store i32 -5, i32* %err, align 4, !dbg !328
  br label %if.end86, !dbg !329

if.end86:                                         ; preds = %if.then85, %if.end76
  br label %out, !dbg !330

out:                                              ; preds = %if.end86, %if.then40, %if.then32, %if.end15
  call void @llvm.dbg.label(metadata !331), !dbg !332
  %59 = load i32, i32* %err, align 4, !dbg !333
  ret i32 %59, !dbg !334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_doicmd_wait(%struct.hermes* %hw, i16 zeroext %cmd, i16 zeroext %parm0, i16 zeroext %parm1, i16 zeroext %parm2, %struct.hermes_response* %resp) #0 !dbg !335 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %cmd.addr = alloca i16, align 2
  %parm0.addr = alloca i16, align 2
  %parm1.addr = alloca i16, align 2
  %parm2.addr = alloca i16, align 2
  %resp.addr = alloca %struct.hermes_response*, align 8
  %err = alloca i32, align 4
  %k = alloca i32, align 4
  %status = alloca i16, align 2
  %reg = alloca i16, align 2
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !336, metadata !DIExpression()), !dbg !337
  store i16 %cmd, i16* %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cmd.addr, metadata !338, metadata !DIExpression()), !dbg !339
  store i16 %parm0, i16* %parm0.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %parm0.addr, metadata !340, metadata !DIExpression()), !dbg !341
  store i16 %parm1, i16* %parm1.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %parm1.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store i16 %parm2, i16* %parm2.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %parm2.addr, metadata !344, metadata !DIExpression()), !dbg !345
  store %struct.hermes_response* %resp, %struct.hermes_response** %resp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes_response** %resp.addr, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata i32* %err, metadata !348, metadata !DIExpression()), !dbg !349
  store i32 0, i32* %err, align 4, !dbg !349
  call void @llvm.dbg.declare(metadata i32* %k, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i16* %status, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !356
  %1 = load i16, i16* %cmd.addr, align 2, !dbg !357
  %2 = load i16, i16* %parm0.addr, align 2, !dbg !358
  %3 = load i16, i16* %parm1.addr, align 2, !dbg !359
  %4 = load i16, i16* %parm2.addr, align 2, !dbg !360
  %call = call i32 @hermes_issue_cmd(%struct.hermes* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4) #6, !dbg !361
  store i32 %call, i32* %err, align 4, !dbg !362
  %5 = load i32, i32* %err, align 4, !dbg !363
  %tobool = icmp ne i32 %5, 0, !dbg !363
  br i1 %tobool, label %if.then, label %if.end, !dbg !365

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %err, align 4, !dbg !366
  store i32 %6, i32* %retval, align 4, !dbg !367
  br label %return, !dbg !367

if.end:                                           ; preds = %entry
  %7 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !368
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %7, i32 0, i32 0, !dbg !368
  %8 = load i8*, i8** %iobase, align 8, !dbg !368
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !368
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 1, !dbg !368
  %10 = load i32, i32* %reg_spacing, align 8, !dbg !368
  %shl = shl i32 48, %10, !dbg !368
  %idx.ext = sext i32 %shl to i64, !dbg !368
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !368
  %call1 = call i32 @ioread16(i8* %add.ptr) #6, !dbg !368
  %conv = trunc i32 %call1 to i16, !dbg !368
  store i16 %conv, i16* %reg, align 2, !dbg !369
  store i32 50000, i32* %k, align 4, !dbg !370
  br label %while.cond, !dbg !371

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i16, i16* %reg, align 2, !dbg !372
  %conv2 = zext i16 %11 to i32, !dbg !372
  %and = and i32 %conv2, 16, !dbg !373
  %tobool3 = icmp ne i32 %and, 0, !dbg !373
  br i1 %tobool3, label %land.end, label %land.rhs, !dbg !374

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %k, align 4, !dbg !375
  %tobool4 = icmp ne i32 %12, 0, !dbg !374
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !376
  br i1 %13, label %while.body, label %while.end, !dbg !371

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %k, align 4, !dbg !377
  %dec = add i32 %14, -1, !dbg !377
  store i32 %dec, i32* %k, align 4, !dbg !377
  call void @__const_udelay(i64 42950) #6, !dbg !379
  %15 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !384
  %iobase5 = getelementptr inbounds %struct.hermes, %struct.hermes* %15, i32 0, i32 0, !dbg !384
  %16 = load i8*, i8** %iobase5, align 8, !dbg !384
  %17 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !384
  %reg_spacing6 = getelementptr inbounds %struct.hermes, %struct.hermes* %17, i32 0, i32 1, !dbg !384
  %18 = load i32, i32* %reg_spacing6, align 8, !dbg !384
  %shl7 = shl i32 48, %18, !dbg !384
  %idx.ext8 = sext i32 %shl7 to i64, !dbg !384
  %add.ptr9 = getelementptr i8, i8* %16, i64 %idx.ext8, !dbg !384
  %call10 = call i32 @ioread16(i8* %add.ptr9) #6, !dbg !384
  %conv11 = trunc i32 %call10 to i16, !dbg !384
  store i16 %conv11, i16* %reg, align 2, !dbg !385
  br label %while.cond, !dbg !371, !llvm.loop !386

while.end:                                        ; preds = %land.end
  %19 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !388
  %iobase12 = getelementptr inbounds %struct.hermes, %struct.hermes* %19, i32 0, i32 0, !dbg !388
  %20 = load i8*, i8** %iobase12, align 8, !dbg !388
  %21 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !388
  %reg_spacing13 = getelementptr inbounds %struct.hermes, %struct.hermes* %21, i32 0, i32 1, !dbg !388
  %22 = load i32, i32* %reg_spacing13, align 8, !dbg !388
  %shl14 = shl i32 40, %22, !dbg !388
  %idx.ext15 = sext i32 %shl14 to i64, !dbg !388
  %add.ptr16 = getelementptr i8, i8* %20, i64 %idx.ext15, !dbg !388
  call void @iowrite16(i16 zeroext 32031, i8* %add.ptr16) #6, !dbg !388
  %23 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !389
  %call17 = call i32 @hermes_present(%struct.hermes* %23) #6, !dbg !391
  %tobool18 = icmp ne i32 %call17, 0, !dbg !391
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !392

if.then19:                                        ; preds = %while.end
  br label %do.body, !dbg !393

do.body:                                          ; preds = %if.then19
  br label %do.end, !dbg !395

do.end:                                           ; preds = %do.body
  store i32 -19, i32* %err, align 4, !dbg !397
  br label %out, !dbg !398

if.end20:                                         ; preds = %while.end
  %24 = load i16, i16* %reg, align 2, !dbg !399
  %conv21 = zext i16 %24 to i32, !dbg !399
  %and22 = and i32 %conv21, 16, !dbg !401
  %tobool23 = icmp ne i32 %and22, 0, !dbg !401
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !402

if.then24:                                        ; preds = %if.end20
  %25 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !403
  %iobase25 = getelementptr inbounds %struct.hermes, %struct.hermes* %25, i32 0, i32 0, !dbg !405
  %26 = load i8*, i8** %iobase25, align 8, !dbg !405
  %27 = load i16, i16* %reg, align 2, !dbg !406
  %conv26 = zext i16 %27 to i32, !dbg !406
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* %26, i32 %conv26) #7, !dbg !407
  store i32 -110, i32* %err, align 4, !dbg !408
  br label %out, !dbg !409

if.end28:                                         ; preds = %if.end20
  %28 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !410
  %iobase29 = getelementptr inbounds %struct.hermes, %struct.hermes* %28, i32 0, i32 0, !dbg !410
  %29 = load i8*, i8** %iobase29, align 8, !dbg !410
  %30 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !410
  %reg_spacing30 = getelementptr inbounds %struct.hermes, %struct.hermes* %30, i32 0, i32 1, !dbg !410
  %31 = load i32, i32* %reg_spacing30, align 8, !dbg !410
  %shl31 = shl i32 8, %31, !dbg !410
  %idx.ext32 = sext i32 %shl31 to i64, !dbg !410
  %add.ptr33 = getelementptr i8, i8* %29, i64 %idx.ext32, !dbg !410
  %call34 = call i32 @ioread16(i8* %add.ptr33) #6, !dbg !410
  %conv35 = trunc i32 %call34 to i16, !dbg !410
  store i16 %conv35, i16* %status, align 2, !dbg !411
  %32 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !412
  %tobool36 = icmp ne %struct.hermes_response* %32, null, !dbg !412
  br i1 %tobool36, label %if.then37, label %if.end60, !dbg !414

if.then37:                                        ; preds = %if.end28
  %33 = load i16, i16* %status, align 2, !dbg !415
  %34 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !417
  %status38 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %34, i32 0, i32 0, !dbg !418
  store i16 %33, i16* %status38, align 2, !dbg !419
  %35 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !420
  %iobase39 = getelementptr inbounds %struct.hermes, %struct.hermes* %35, i32 0, i32 0, !dbg !420
  %36 = load i8*, i8** %iobase39, align 8, !dbg !420
  %37 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !420
  %reg_spacing40 = getelementptr inbounds %struct.hermes, %struct.hermes* %37, i32 0, i32 1, !dbg !420
  %38 = load i32, i32* %reg_spacing40, align 8, !dbg !420
  %shl41 = shl i32 10, %38, !dbg !420
  %idx.ext42 = sext i32 %shl41 to i64, !dbg !420
  %add.ptr43 = getelementptr i8, i8* %36, i64 %idx.ext42, !dbg !420
  %call44 = call i32 @ioread16(i8* %add.ptr43) #6, !dbg !420
  %conv45 = trunc i32 %call44 to i16, !dbg !420
  %39 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !421
  %resp0 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %39, i32 0, i32 1, !dbg !422
  store i16 %conv45, i16* %resp0, align 2, !dbg !423
  %40 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !424
  %iobase46 = getelementptr inbounds %struct.hermes, %struct.hermes* %40, i32 0, i32 0, !dbg !424
  %41 = load i8*, i8** %iobase46, align 8, !dbg !424
  %42 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !424
  %reg_spacing47 = getelementptr inbounds %struct.hermes, %struct.hermes* %42, i32 0, i32 1, !dbg !424
  %43 = load i32, i32* %reg_spacing47, align 8, !dbg !424
  %shl48 = shl i32 12, %43, !dbg !424
  %idx.ext49 = sext i32 %shl48 to i64, !dbg !424
  %add.ptr50 = getelementptr i8, i8* %41, i64 %idx.ext49, !dbg !424
  %call51 = call i32 @ioread16(i8* %add.ptr50) #6, !dbg !424
  %conv52 = trunc i32 %call51 to i16, !dbg !424
  %44 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !425
  %resp1 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %44, i32 0, i32 2, !dbg !426
  store i16 %conv52, i16* %resp1, align 2, !dbg !427
  %45 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !428
  %iobase53 = getelementptr inbounds %struct.hermes, %struct.hermes* %45, i32 0, i32 0, !dbg !428
  %46 = load i8*, i8** %iobase53, align 8, !dbg !428
  %47 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !428
  %reg_spacing54 = getelementptr inbounds %struct.hermes, %struct.hermes* %47, i32 0, i32 1, !dbg !428
  %48 = load i32, i32* %reg_spacing54, align 8, !dbg !428
  %shl55 = shl i32 14, %48, !dbg !428
  %idx.ext56 = sext i32 %shl55 to i64, !dbg !428
  %add.ptr57 = getelementptr i8, i8* %46, i64 %idx.ext56, !dbg !428
  %call58 = call i32 @ioread16(i8* %add.ptr57) #6, !dbg !428
  %conv59 = trunc i32 %call58 to i16, !dbg !428
  %49 = load %struct.hermes_response*, %struct.hermes_response** %resp.addr, align 8, !dbg !429
  %resp2 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %49, i32 0, i32 3, !dbg !430
  store i16 %conv59, i16* %resp2, align 2, !dbg !431
  br label %if.end60, !dbg !432

if.end60:                                         ; preds = %if.then37, %if.end28
  %50 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !433
  %iobase61 = getelementptr inbounds %struct.hermes, %struct.hermes* %50, i32 0, i32 0, !dbg !433
  %51 = load i8*, i8** %iobase61, align 8, !dbg !433
  %52 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !433
  %reg_spacing62 = getelementptr inbounds %struct.hermes, %struct.hermes* %52, i32 0, i32 1, !dbg !433
  %53 = load i32, i32* %reg_spacing62, align 8, !dbg !433
  %shl63 = shl i32 52, %53, !dbg !433
  %idx.ext64 = sext i32 %shl63 to i64, !dbg !433
  %add.ptr65 = getelementptr i8, i8* %51, i64 %idx.ext64, !dbg !433
  call void @iowrite16(i16 zeroext 16, i8* %add.ptr65) #6, !dbg !433
  %54 = load i16, i16* %status, align 2, !dbg !434
  %conv66 = zext i16 %54 to i32, !dbg !434
  %and67 = and i32 %conv66, 32512, !dbg !436
  %tobool68 = icmp ne i32 %and67, 0, !dbg !436
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !437

if.then69:                                        ; preds = %if.end60
  store i32 -5, i32* %err, align 4, !dbg !438
  br label %if.end70, !dbg !439

if.end70:                                         ; preds = %if.then69, %if.end60
  br label %out, !dbg !440

out:                                              ; preds = %if.end70, %if.then24, %do.end
  call void @llvm.dbg.label(metadata !441), !dbg !442
  %55 = load i32, i32* %err, align 4, !dbg !443
  store i32 %55, i32* %retval, align 4, !dbg !444
  br label %return, !dbg !444

return:                                           ; preds = %out, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !445
  ret i32 %56, !dbg !445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_allocate(%struct.hermes* %hw, i16 zeroext %size, i16* %fid) #0 !dbg !446 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %size.addr = alloca i16, align 2
  %fid.addr = alloca i16*, align 8
  %err = alloca i32, align 4
  %k = alloca i32, align 4
  %reg = alloca i16, align 2
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i16 %size, i16* %size.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %size.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i16* %fid, i16** %fid.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %fid.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %err, metadata !453, metadata !DIExpression()), !dbg !454
  store i32 0, i32* %err, align 4, !dbg !454
  call void @llvm.dbg.declare(metadata i32* %k, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i16, i16* %size.addr, align 2, !dbg !459
  %conv = zext i16 %0 to i32, !dbg !459
  %cmp = icmp slt i32 %conv, 4, !dbg !461
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !462

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* %size.addr, align 2, !dbg !463
  %conv2 = zext i16 %1 to i32, !dbg !463
  %cmp3 = icmp sgt i32 %conv2, 2400, !dbg !464
  br i1 %cmp3, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !466
  br label %return, !dbg !466

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !467
  %3 = load i16, i16* %size.addr, align 2, !dbg !468
  %call = call i32 @hermes_docmd_wait(%struct.hermes* %2, i16 zeroext 10, i16 zeroext %3, %struct.hermes_response* null) #6, !dbg !469
  store i32 %call, i32* %err, align 4, !dbg !470
  %4 = load i32, i32* %err, align 4, !dbg !471
  %tobool = icmp ne i32 %4, 0, !dbg !471
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !473

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %err, align 4, !dbg !474
  store i32 %5, i32* %retval, align 4, !dbg !475
  br label %return, !dbg !475

if.end6:                                          ; preds = %if.end
  %6 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !476
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 0, !dbg !476
  %7 = load i8*, i8** %iobase, align 8, !dbg !476
  %8 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !476
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %8, i32 0, i32 1, !dbg !476
  %9 = load i32, i32* %reg_spacing, align 8, !dbg !476
  %shl = shl i32 48, %9, !dbg !476
  %idx.ext = sext i32 %shl to i64, !dbg !476
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !476
  %call7 = call i32 @ioread16(i8* %add.ptr) #6, !dbg !476
  %conv8 = trunc i32 %call7 to i16, !dbg !476
  store i16 %conv8, i16* %reg, align 2, !dbg !477
  store i32 1000, i32* %k, align 4, !dbg !478
  br label %while.cond, !dbg !479

while.cond:                                       ; preds = %while.body, %if.end6
  %10 = load i16, i16* %reg, align 2, !dbg !480
  %conv9 = zext i16 %10 to i32, !dbg !480
  %and = and i32 %conv9, 8, !dbg !481
  %tobool10 = icmp ne i32 %and, 0, !dbg !481
  br i1 %tobool10, label %land.end, label %land.rhs, !dbg !482

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %k, align 4, !dbg !483
  %tobool11 = icmp ne i32 %11, 0, !dbg !482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !484
  br i1 %12, label %while.body, label %while.end, !dbg !479

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %k, align 4, !dbg !485
  %dec = add i32 %13, -1, !dbg !485
  store i32 %dec, i32* %k, align 4, !dbg !485
  call void @__const_udelay(i64 42950) #6, !dbg !487
  %14 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !492
  %iobase12 = getelementptr inbounds %struct.hermes, %struct.hermes* %14, i32 0, i32 0, !dbg !492
  %15 = load i8*, i8** %iobase12, align 8, !dbg !492
  %16 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !492
  %reg_spacing13 = getelementptr inbounds %struct.hermes, %struct.hermes* %16, i32 0, i32 1, !dbg !492
  %17 = load i32, i32* %reg_spacing13, align 8, !dbg !492
  %shl14 = shl i32 48, %17, !dbg !492
  %idx.ext15 = sext i32 %shl14 to i64, !dbg !492
  %add.ptr16 = getelementptr i8, i8* %15, i64 %idx.ext15, !dbg !492
  %call17 = call i32 @ioread16(i8* %add.ptr16) #6, !dbg !492
  %conv18 = trunc i32 %call17 to i16, !dbg !492
  store i16 %conv18, i16* %reg, align 2, !dbg !493
  br label %while.cond, !dbg !479, !llvm.loop !494

while.end:                                        ; preds = %land.end
  %18 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !496
  %call19 = call i32 @hermes_present(%struct.hermes* %18) #6, !dbg !498
  %tobool20 = icmp ne i32 %call19, 0, !dbg !498
  br i1 %tobool20, label %if.end24, label %if.then21, !dbg !499

if.then21:                                        ; preds = %while.end
  %19 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !500
  %iobase22 = getelementptr inbounds %struct.hermes, %struct.hermes* %19, i32 0, i32 0, !dbg !502
  %20 = load i8*, i8** %iobase22, align 8, !dbg !502
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %20) #7, !dbg !503
  store i32 -19, i32* %retval, align 4, !dbg !504
  br label %return, !dbg !504

if.end24:                                         ; preds = %while.end
  %21 = load i16, i16* %reg, align 2, !dbg !505
  %conv25 = zext i16 %21 to i32, !dbg !505
  %and26 = and i32 %conv25, 8, !dbg !507
  %tobool27 = icmp ne i32 %and26, 0, !dbg !507
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !508

if.then28:                                        ; preds = %if.end24
  %22 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !509
  %iobase29 = getelementptr inbounds %struct.hermes, %struct.hermes* %22, i32 0, i32 0, !dbg !511
  %23 = load i8*, i8** %iobase29, align 8, !dbg !511
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %23) #7, !dbg !512
  store i32 -110, i32* %retval, align 4, !dbg !513
  br label %return, !dbg !513

if.end31:                                         ; preds = %if.end24
  %24 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !514
  %iobase32 = getelementptr inbounds %struct.hermes, %struct.hermes* %24, i32 0, i32 0, !dbg !514
  %25 = load i8*, i8** %iobase32, align 8, !dbg !514
  %26 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !514
  %reg_spacing33 = getelementptr inbounds %struct.hermes, %struct.hermes* %26, i32 0, i32 1, !dbg !514
  %27 = load i32, i32* %reg_spacing33, align 8, !dbg !514
  %shl34 = shl i32 34, %27, !dbg !514
  %idx.ext35 = sext i32 %shl34 to i64, !dbg !514
  %add.ptr36 = getelementptr i8, i8* %25, i64 %idx.ext35, !dbg !514
  %call37 = call i32 @ioread16(i8* %add.ptr36) #6, !dbg !514
  %conv38 = trunc i32 %call37 to i16, !dbg !514
  %28 = load i16*, i16** %fid.addr, align 8, !dbg !515
  store i16 %conv38, i16* %28, align 2, !dbg !516
  %29 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !517
  %iobase39 = getelementptr inbounds %struct.hermes, %struct.hermes* %29, i32 0, i32 0, !dbg !517
  %30 = load i8*, i8** %iobase39, align 8, !dbg !517
  %31 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !517
  %reg_spacing40 = getelementptr inbounds %struct.hermes, %struct.hermes* %31, i32 0, i32 1, !dbg !517
  %32 = load i32, i32* %reg_spacing40, align 8, !dbg !517
  %shl41 = shl i32 52, %32, !dbg !517
  %idx.ext42 = sext i32 %shl41 to i64, !dbg !517
  %add.ptr43 = getelementptr i8, i8* %30, i64 %idx.ext42, !dbg !517
  call void @iowrite16(i16 zeroext 8, i8* %add.ptr43) #6, !dbg !517
  store i32 0, i32* %retval, align 4, !dbg !518
  br label %return, !dbg !518

return:                                           ; preds = %if.end31, %if.then28, %if.then21, %if.then5, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !519
  ret i32 %33, !dbg !519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_read_ltv(%struct.hermes* %hw, i32 %bap, i16 zeroext %rid, i32 %bufsize, i16* %length, i8* %buf) #0 !dbg !520 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %bap.addr = alloca i32, align 4
  %rid.addr = alloca i16, align 2
  %bufsize.addr = alloca i32, align 4
  %length.addr = alloca i16*, align 8
  %buf.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %dreg = alloca i32, align 4
  %rlength = alloca i16, align 2
  %rtype = alloca i16, align 2
  %nwords = alloca i32, align 4
  %__UNIQUE_ID___x272 = alloca i32, align 4
  %__UNIQUE_ID___y273 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i32 %bap, i32* %bap.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bap.addr, metadata !523, metadata !DIExpression()), !dbg !524
  store i16 %rid, i16* %rid.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %rid.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store i32 %bufsize, i32* %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bufsize.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i16* %length, i16** %length.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %length.addr, metadata !529, metadata !DIExpression()), !dbg !530
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %err, metadata !533, metadata !DIExpression()), !dbg !534
  store i32 0, i32* %err, align 4, !dbg !534
  call void @llvm.dbg.declare(metadata i32* %dreg, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load i32, i32* %bap.addr, align 4, !dbg !537
  %tobool = icmp ne i32 %0, 0, !dbg !537
  %1 = zext i1 %tobool to i64, !dbg !537
  %cond = select i1 %tobool, i32 56, i32 54, !dbg !537
  store i32 %cond, i32* %dreg, align 4, !dbg !536
  call void @llvm.dbg.declare(metadata i16* %rlength, metadata !538, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.declare(metadata i16* %rtype, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %nwords, metadata !542, metadata !DIExpression()), !dbg !543
  %2 = load i32, i32* %bufsize.addr, align 4, !dbg !544
  %rem = urem i32 %2, 2, !dbg !546
  %tobool1 = icmp ne i32 %rem, 0, !dbg !546
  br i1 %tobool1, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !548
  br label %return, !dbg !548

if.end:                                           ; preds = %entry
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !549
  %4 = load i16, i16* %rid.addr, align 2, !dbg !550
  %call = call i32 @hermes_docmd_wait(%struct.hermes* %3, i16 zeroext 33, i16 zeroext %4, %struct.hermes_response* null) #6, !dbg !551
  store i32 %call, i32* %err, align 4, !dbg !552
  %5 = load i32, i32* %err, align 4, !dbg !553
  %tobool2 = icmp ne i32 %5, 0, !dbg !553
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !555

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %err, align 4, !dbg !556
  store i32 %6, i32* %retval, align 4, !dbg !557
  br label %return, !dbg !557

if.end4:                                          ; preds = %if.end
  %7 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !558
  %8 = load i32, i32* %bap.addr, align 4, !dbg !559
  %9 = load i16, i16* %rid.addr, align 2, !dbg !560
  %call5 = call i32 @hermes_bap_seek(%struct.hermes* %7, i32 %8, i16 zeroext %9, i16 zeroext 0) #6, !dbg !561
  store i32 %call5, i32* %err, align 4, !dbg !562
  %10 = load i32, i32* %err, align 4, !dbg !563
  %tobool6 = icmp ne i32 %10, 0, !dbg !563
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !565

if.then7:                                         ; preds = %if.end4
  %11 = load i32, i32* %err, align 4, !dbg !566
  store i32 %11, i32* %retval, align 4, !dbg !567
  br label %return, !dbg !567

if.end8:                                          ; preds = %if.end4
  %12 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !568
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %12, i32 0, i32 0, !dbg !568
  %13 = load i8*, i8** %iobase, align 8, !dbg !568
  %14 = load i32, i32* %dreg, align 4, !dbg !568
  %15 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !568
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %15, i32 0, i32 1, !dbg !568
  %16 = load i32, i32* %reg_spacing, align 8, !dbg !568
  %shl = shl i32 %14, %16, !dbg !568
  %idx.ext = sext i32 %shl to i64, !dbg !568
  %add.ptr = getelementptr i8, i8* %13, i64 %idx.ext, !dbg !568
  %call9 = call i32 @ioread16(i8* %add.ptr) #6, !dbg !568
  %conv = trunc i32 %call9 to i16, !dbg !568
  store i16 %conv, i16* %rlength, align 2, !dbg !569
  %17 = load i16, i16* %rlength, align 2, !dbg !570
  %tobool10 = icmp ne i16 %17, 0, !dbg !570
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !572

if.then11:                                        ; preds = %if.end8
  store i32 -61, i32* %retval, align 4, !dbg !573
  br label %return, !dbg !573

if.end12:                                         ; preds = %if.end8
  %18 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !574
  %iobase13 = getelementptr inbounds %struct.hermes, %struct.hermes* %18, i32 0, i32 0, !dbg !574
  %19 = load i8*, i8** %iobase13, align 8, !dbg !574
  %20 = load i32, i32* %dreg, align 4, !dbg !574
  %21 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !574
  %reg_spacing14 = getelementptr inbounds %struct.hermes, %struct.hermes* %21, i32 0, i32 1, !dbg !574
  %22 = load i32, i32* %reg_spacing14, align 8, !dbg !574
  %shl15 = shl i32 %20, %22, !dbg !574
  %idx.ext16 = sext i32 %shl15 to i64, !dbg !574
  %add.ptr17 = getelementptr i8, i8* %19, i64 %idx.ext16, !dbg !574
  %call18 = call i32 @ioread16(i8* %add.ptr17) #6, !dbg !574
  %conv19 = trunc i32 %call18 to i16, !dbg !574
  store i16 %conv19, i16* %rtype, align 2, !dbg !575
  %23 = load i16*, i16** %length.addr, align 8, !dbg !576
  %tobool20 = icmp ne i16* %23, null, !dbg !576
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !578

if.then21:                                        ; preds = %if.end12
  %24 = load i16, i16* %rlength, align 2, !dbg !579
  %25 = load i16*, i16** %length.addr, align 8, !dbg !580
  store i16 %24, i16* %25, align 2, !dbg !581
  br label %if.end22, !dbg !582

if.end22:                                         ; preds = %if.then21, %if.end12
  %26 = load i16, i16* %rtype, align 2, !dbg !583
  %conv23 = zext i16 %26 to i32, !dbg !583
  %27 = load i16, i16* %rid.addr, align 2, !dbg !585
  %conv24 = zext i16 %27 to i32, !dbg !585
  %cmp = icmp ne i32 %conv23, %conv24, !dbg !586
  br i1 %cmp, label %if.then26, label %if.end31, !dbg !587

if.then26:                                        ; preds = %if.end22
  %28 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !588
  %iobase27 = getelementptr inbounds %struct.hermes, %struct.hermes* %28, i32 0, i32 0, !dbg !589
  %29 = load i8*, i8** %iobase27, align 8, !dbg !589
  %30 = load i16, i16* %rid.addr, align 2, !dbg !590
  %conv28 = zext i16 %30 to i32, !dbg !590
  %31 = load i16, i16* %rtype, align 2, !dbg !591
  %conv29 = zext i16 %31 to i32, !dbg !591
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hermes_read_ltv, i64 0, i64 0), i32 %conv28, i32 %conv29) #7, !dbg !592
  br label %if.end31, !dbg !592

if.end31:                                         ; preds = %if.then26, %if.end22
  %32 = load i16, i16* %rlength, align 2, !dbg !593
  %conv32 = zext i16 %32 to i32, !dbg !593
  %sub = sub i32 %conv32, 1, !dbg !593
  %mul = mul i32 %sub, 2, !dbg !593
  %33 = load i32, i32* %bufsize.addr, align 4, !dbg !595
  %cmp33 = icmp ugt i32 %mul, %33, !dbg !596
  br i1 %cmp33, label %if.then35, label %if.end43, !dbg !597

if.then35:                                        ; preds = %if.end31
  %34 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !598
  %iobase36 = getelementptr inbounds %struct.hermes, %struct.hermes* %34, i32 0, i32 0, !dbg !599
  %35 = load i8*, i8** %iobase36, align 8, !dbg !599
  %36 = load i16, i16* %rlength, align 2, !dbg !600
  %conv37 = zext i16 %36 to i32, !dbg !600
  %sub38 = sub i32 %conv37, 1, !dbg !600
  %mul39 = mul i32 %sub38, 2, !dbg !600
  %37 = load i32, i32* %bufsize.addr, align 4, !dbg !601
  %38 = load i16, i16* %rid.addr, align 2, !dbg !602
  %conv40 = zext i16 %38 to i32, !dbg !602
  %39 = load i16, i16* %rlength, align 2, !dbg !603
  %conv41 = zext i16 %39 to i32, !dbg !603
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i64 0, i64 0), i8* %35, i32 %mul39, i32 %37, i32 %conv40, i32 %conv41) #7, !dbg !604
  br label %if.end43, !dbg !604

if.end43:                                         ; preds = %if.then35, %if.end31
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x272, metadata !605, metadata !DIExpression()), !dbg !607
  %40 = load i16, i16* %rlength, align 2, !dbg !607
  %conv44 = zext i16 %40 to i32, !dbg !607
  %sub45 = sub i32 %conv44, 1, !dbg !607
  store i32 %sub45, i32* %__UNIQUE_ID___x272, align 4, !dbg !607
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y273, metadata !608, metadata !DIExpression()), !dbg !607
  %41 = load i32, i32* %bufsize.addr, align 4, !dbg !607
  %div = udiv i32 %41, 2, !dbg !607
  store i32 %div, i32* %__UNIQUE_ID___y273, align 4, !dbg !607
  %42 = load i32, i32* %__UNIQUE_ID___x272, align 4, !dbg !607
  %43 = load i32, i32* %__UNIQUE_ID___y273, align 4, !dbg !607
  %cmp46 = icmp ult i32 %42, %43, !dbg !607
  br i1 %cmp46, label %cond.true, label %cond.false, !dbg !607

cond.true:                                        ; preds = %if.end43
  %44 = load i32, i32* %__UNIQUE_ID___x272, align 4, !dbg !607
  br label %cond.end, !dbg !607

cond.false:                                       ; preds = %if.end43
  %45 = load i32, i32* %__UNIQUE_ID___y273, align 4, !dbg !607
  br label %cond.end, !dbg !607

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond48 = phi i32 [ %44, %cond.true ], [ %45, %cond.false ], !dbg !607
  store i32 %cond48, i32* %tmp, align 4, !dbg !607
  %46 = load i32, i32* %tmp, align 4, !dbg !607
  store i32 %46, i32* %nwords, align 4, !dbg !609
  %47 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !610
  %48 = load i32, i32* %dreg, align 4, !dbg !611
  %49 = load i8*, i8** %buf.addr, align 8, !dbg !612
  %50 = load i32, i32* %nwords, align 4, !dbg !613
  call void @hermes_read_words(%struct.hermes* %47, i32 %48, i8* %49, i32 %50) #6, !dbg !614
  store i32 0, i32* %retval, align 4, !dbg !615
  br label %return, !dbg !615

return:                                           ; preds = %cond.end, %if.then11, %if.then7, %if.then3, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !616
  ret i32 %51, !dbg !616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_write_ltv(%struct.hermes* %hw, i32 %bap, i16 zeroext %rid, i16 zeroext %length, i8* %value) #0 !dbg !617 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %bap.addr = alloca i32, align 4
  %rid.addr = alloca i16, align 2
  %length.addr = alloca i16, align 2
  %value.addr = alloca i8*, align 8
  %dreg = alloca i32, align 4
  %err = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i32 %bap, i32* %bap.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bap.addr, metadata !620, metadata !DIExpression()), !dbg !621
  store i16 %rid, i16* %rid.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %rid.addr, metadata !622, metadata !DIExpression()), !dbg !623
  store i16 %length, i16* %length.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %length.addr, metadata !624, metadata !DIExpression()), !dbg !625
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %dreg, metadata !628, metadata !DIExpression()), !dbg !629
  %0 = load i32, i32* %bap.addr, align 4, !dbg !630
  %tobool = icmp ne i32 %0, 0, !dbg !630
  %1 = zext i1 %tobool to i64, !dbg !630
  %cond = select i1 %tobool, i32 56, i32 54, !dbg !630
  store i32 %cond, i32* %dreg, align 4, !dbg !629
  call void @llvm.dbg.declare(metadata i32* %err, metadata !631, metadata !DIExpression()), !dbg !632
  store i32 0, i32* %err, align 4, !dbg !632
  call void @llvm.dbg.declare(metadata i32* %count, metadata !633, metadata !DIExpression()), !dbg !634
  %2 = load i16, i16* %length.addr, align 2, !dbg !635
  %conv = zext i16 %2 to i32, !dbg !635
  %cmp = icmp eq i32 %conv, 0, !dbg !637
  br i1 %cmp, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !639
  br label %return, !dbg !639

if.end:                                           ; preds = %entry
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !640
  %4 = load i32, i32* %bap.addr, align 4, !dbg !641
  %5 = load i16, i16* %rid.addr, align 2, !dbg !642
  %call = call i32 @hermes_bap_seek(%struct.hermes* %3, i32 %4, i16 zeroext %5, i16 zeroext 0) #6, !dbg !643
  store i32 %call, i32* %err, align 4, !dbg !644
  %6 = load i32, i32* %err, align 4, !dbg !645
  %tobool2 = icmp ne i32 %6, 0, !dbg !645
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !647

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %err, align 4, !dbg !648
  store i32 %7, i32* %retval, align 4, !dbg !649
  br label %return, !dbg !649

if.end4:                                          ; preds = %if.end
  %8 = load i16, i16* %length.addr, align 2, !dbg !650
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !650
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 0, !dbg !650
  %10 = load i8*, i8** %iobase, align 8, !dbg !650
  %11 = load i32, i32* %dreg, align 4, !dbg !650
  %12 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !650
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %12, i32 0, i32 1, !dbg !650
  %13 = load i32, i32* %reg_spacing, align 8, !dbg !650
  %shl = shl i32 %11, %13, !dbg !650
  %idx.ext = sext i32 %shl to i64, !dbg !650
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !650
  call void @iowrite16(i16 zeroext %8, i8* %add.ptr) #6, !dbg !650
  %14 = load i16, i16* %rid.addr, align 2, !dbg !651
  %15 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !651
  %iobase5 = getelementptr inbounds %struct.hermes, %struct.hermes* %15, i32 0, i32 0, !dbg !651
  %16 = load i8*, i8** %iobase5, align 8, !dbg !651
  %17 = load i32, i32* %dreg, align 4, !dbg !651
  %18 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !651
  %reg_spacing6 = getelementptr inbounds %struct.hermes, %struct.hermes* %18, i32 0, i32 1, !dbg !651
  %19 = load i32, i32* %reg_spacing6, align 8, !dbg !651
  %shl7 = shl i32 %17, %19, !dbg !651
  %idx.ext8 = sext i32 %shl7 to i64, !dbg !651
  %add.ptr9 = getelementptr i8, i8* %16, i64 %idx.ext8, !dbg !651
  call void @iowrite16(i16 zeroext %14, i8* %add.ptr9) #6, !dbg !651
  %20 = load i16, i16* %length.addr, align 2, !dbg !652
  %conv10 = zext i16 %20 to i32, !dbg !652
  %sub = sub i32 %conv10, 1, !dbg !653
  store i32 %sub, i32* %count, align 4, !dbg !654
  %21 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !655
  %22 = load i32, i32* %dreg, align 4, !dbg !656
  %23 = load i8*, i8** %value.addr, align 8, !dbg !657
  %24 = load i32, i32* %count, align 4, !dbg !658
  %shl11 = shl i32 %24, 1, !dbg !659
  call void @hermes_write_bytes(%struct.hermes* %21, i32 %22, i8* %23, i32 %shl11) #6, !dbg !660
  %25 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !661
  %26 = load i16, i16* %rid.addr, align 2, !dbg !662
  %call12 = call i32 @hermes_docmd_wait(%struct.hermes* %25, i16 zeroext 289, i16 zeroext %26, %struct.hermes_response* null) #6, !dbg !663
  store i32 %call12, i32* %err, align 4, !dbg !664
  %27 = load i32, i32* %err, align 4, !dbg !665
  store i32 %27, i32* %retval, align 4, !dbg !666
  br label %return, !dbg !666

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !667
  ret i32 %28, !dbg !667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_bap_pread(%struct.hermes* %hw, i32 %bap, i8* %buf, i32 %len, i16 zeroext %id, i16 zeroext %offset) #0 !dbg !668 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %bap.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %id.addr = alloca i16, align 2
  %offset.addr = alloca i16, align 2
  %dreg = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !669, metadata !DIExpression()), !dbg !670
  store i32 %bap, i32* %bap.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bap.addr, metadata !671, metadata !DIExpression()), !dbg !672
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !673, metadata !DIExpression()), !dbg !674
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !675, metadata !DIExpression()), !dbg !676
  store i16 %id, i16* %id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %id.addr, metadata !677, metadata !DIExpression()), !dbg !678
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %dreg, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i32, i32* %bap.addr, align 4, !dbg !683
  %tobool = icmp ne i32 %0, 0, !dbg !683
  %1 = zext i1 %tobool to i64, !dbg !683
  %cond = select i1 %tobool, i32 56, i32 54, !dbg !683
  store i32 %cond, i32* %dreg, align 4, !dbg !682
  call void @llvm.dbg.declare(metadata i32* %err, metadata !684, metadata !DIExpression()), !dbg !685
  store i32 0, i32* %err, align 4, !dbg !685
  %2 = load i32, i32* %len.addr, align 4, !dbg !686
  %cmp = icmp slt i32 %2, 0, !dbg !688
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !689

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %len.addr, align 4, !dbg !690
  %rem = srem i32 %3, 2, !dbg !691
  %tobool1 = icmp ne i32 %rem, 0, !dbg !691
  br i1 %tobool1, label %if.then, label %if.end, !dbg !692

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !693
  br label %return, !dbg !693

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !694
  %5 = load i32, i32* %bap.addr, align 4, !dbg !695
  %6 = load i16, i16* %id.addr, align 2, !dbg !696
  %7 = load i16, i16* %offset.addr, align 2, !dbg !697
  %call = call i32 @hermes_bap_seek(%struct.hermes* %4, i32 %5, i16 zeroext %6, i16 zeroext %7) #6, !dbg !698
  store i32 %call, i32* %err, align 4, !dbg !699
  %8 = load i32, i32* %err, align 4, !dbg !700
  %tobool2 = icmp ne i32 %8, 0, !dbg !700
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !702

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !703

if.end4:                                          ; preds = %if.end
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !704
  %10 = load i32, i32* %dreg, align 4, !dbg !705
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !706
  %12 = load i32, i32* %len.addr, align 4, !dbg !707
  %div = sdiv i32 %12, 2, !dbg !708
  call void @hermes_read_words(%struct.hermes* %9, i32 %10, i8* %11, i32 %div) #6, !dbg !709
  br label %out, !dbg !709

out:                                              ; preds = %if.end4, %if.then3
  call void @llvm.dbg.label(metadata !710), !dbg !711
  %13 = load i32, i32* %err, align 4, !dbg !712
  store i32 %13, i32* %retval, align 4, !dbg !713
  br label %return, !dbg !713

return:                                           ; preds = %out, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !714
  ret i32 %14, !dbg !714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_bap_pwrite(%struct.hermes* %hw, i32 %bap, i8* %buf, i32 %len, i16 zeroext %id, i16 zeroext %offset) #0 !dbg !715 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %bap.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %id.addr = alloca i16, align 2
  %offset.addr = alloca i16, align 2
  %dreg = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i32 %bap, i32* %bap.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bap.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store i16 %id, i16* %id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %id.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata i32* %dreg, metadata !728, metadata !DIExpression()), !dbg !729
  %0 = load i32, i32* %bap.addr, align 4, !dbg !730
  %tobool = icmp ne i32 %0, 0, !dbg !730
  %1 = zext i1 %tobool to i64, !dbg !730
  %cond = select i1 %tobool, i32 56, i32 54, !dbg !730
  store i32 %cond, i32* %dreg, align 4, !dbg !729
  call void @llvm.dbg.declare(metadata i32* %err, metadata !731, metadata !DIExpression()), !dbg !732
  store i32 0, i32* %err, align 4, !dbg !732
  %2 = load i32, i32* %len.addr, align 4, !dbg !733
  %cmp = icmp slt i32 %2, 0, !dbg !735
  br i1 %cmp, label %if.then, label %if.end, !dbg !736

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !737
  br label %return, !dbg !737

if.end:                                           ; preds = %entry
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !738
  %4 = load i32, i32* %bap.addr, align 4, !dbg !739
  %5 = load i16, i16* %id.addr, align 2, !dbg !740
  %6 = load i16, i16* %offset.addr, align 2, !dbg !741
  %call = call i32 @hermes_bap_seek(%struct.hermes* %3, i32 %4, i16 zeroext %5, i16 zeroext %6) #6, !dbg !742
  store i32 %call, i32* %err, align 4, !dbg !743
  %7 = load i32, i32* %err, align 4, !dbg !744
  %tobool1 = icmp ne i32 %7, 0, !dbg !744
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !746

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !747

if.end3:                                          ; preds = %if.end
  %8 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !748
  %9 = load i32, i32* %dreg, align 4, !dbg !749
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !750
  %11 = load i32, i32* %len.addr, align 4, !dbg !751
  call void @hermes_write_bytes(%struct.hermes* %8, i32 %9, i8* %10, i32 %11) #6, !dbg !752
  br label %out, !dbg !752

out:                                              ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !753), !dbg !754
  %12 = load i32, i32* %err, align 4, !dbg !755
  store i32 %12, i32* %retval, align 4, !dbg !756
  br label %return, !dbg !756

return:                                           ; preds = %out, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !757
  ret i32 %13, !dbg !757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_read_pda(%struct.hermes* %hw, i16* %pda, i32 %pda_addr, i16 zeroext %pda_len) #0 !dbg !758 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %pda.addr = alloca i16*, align 8
  %pda_addr.addr = alloca i32, align 4
  %pda_len.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %pda_size = alloca i16, align 2
  %data_len = alloca i16, align 2
  %data = alloca i16*, align 8
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !759, metadata !DIExpression()), !dbg !760
  store i16* %pda, i16** %pda.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %pda.addr, metadata !761, metadata !DIExpression()), !dbg !762
  store i32 %pda_addr, i32* %pda_addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pda_addr.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i16 %pda_len, i16* %pda_len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %pda_len.addr, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata i16* %pda_size, metadata !769, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.declare(metadata i16* %data_len, metadata !771, metadata !DIExpression()), !dbg !772
  %0 = load i16, i16* %pda_len.addr, align 2, !dbg !773
  store i16 %0, i16* %data_len, align 2, !dbg !772
  call void @llvm.dbg.declare(metadata i16** %data, metadata !774, metadata !DIExpression()), !dbg !775
  %1 = load i16*, i16** %pda.addr, align 8, !dbg !776
  store i16* %1, i16** %data, align 8, !dbg !775
  %2 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !777
  %eeprom_pda = getelementptr inbounds %struct.hermes, %struct.hermes* %2, i32 0, i32 3, !dbg !779
  %3 = load i8, i8* %eeprom_pda, align 2, !dbg !779
  %tobool = trunc i8 %3 to i1, !dbg !779
  br i1 %tobool, label %if.then, label %if.else, !dbg !780

if.then:                                          ; preds = %entry
  %4 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !781
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %4, i32 0, i32 4, !dbg !783
  %5 = load %struct.hermes_ops*, %struct.hermes_ops** %ops, align 8, !dbg !783
  %cmd_wait = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %5, i32 0, i32 1, !dbg !784
  %6 = load i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)** %cmd_wait, align 8, !dbg !784
  %7 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !785
  %call = call i32 %6(%struct.hermes* %7, i16 zeroext 48, i16 zeroext 0, %struct.hermes_response* null) #6, !dbg !781
  store i32 %call, i32* %ret, align 4, !dbg !786
  %8 = load i32, i32* %ret, align 4, !dbg !787
  %tobool1 = icmp ne i32 %8, 0, !dbg !787
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !789

if.then2:                                         ; preds = %if.then
  %9 = load i32, i32* %ret, align 4, !dbg !790
  store i32 %9, i32* %retval, align 4, !dbg !791
  br label %return, !dbg !791

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !792

if.else:                                          ; preds = %entry
  %10 = load i16, i16* %pda_len.addr, align 2, !dbg !793
  %conv = zext i16 %10 to i32, !dbg !793
  %sub = sub i32 %conv, 2, !dbg !793
  %conv3 = trunc i32 %sub to i16, !dbg !793
  %11 = load i16*, i16** %pda.addr, align 8, !dbg !795
  %arrayidx = getelementptr i16, i16* %11, i64 0, !dbg !795
  store i16 %conv3, i16* %arrayidx, align 2, !dbg !796
  %12 = load i16*, i16** %pda.addr, align 8, !dbg !797
  %arrayidx4 = getelementptr i16, i16* %12, i64 1, !dbg !797
  store i16 2048, i16* %arrayidx4, align 2, !dbg !798
  %13 = load i16, i16* %pda_len.addr, align 2, !dbg !799
  %conv5 = zext i16 %13 to i32, !dbg !799
  %sub6 = sub i32 %conv5, 4, !dbg !800
  %conv7 = trunc i32 %sub6 to i16, !dbg !799
  store i16 %conv7, i16* %data_len, align 2, !dbg !801
  %14 = load i16*, i16** %pda.addr, align 8, !dbg !802
  %add.ptr = getelementptr i16, i16* %14, i64 2, !dbg !803
  store i16* %add.ptr, i16** %data, align 8, !dbg !804
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %15 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !805
  %call9 = call i32 @hermes_aux_control(%struct.hermes* %15, i32 1) #6, !dbg !806
  store i32 %call9, i32* %ret, align 4, !dbg !807
  store i32 0, i32* %tmp, align 4, !dbg !808
  %16 = load i32, i32* %tmp, align 4, !dbg !811
  %17 = load i32, i32* %ret, align 4, !dbg !812
  %tobool10 = icmp ne i32 %17, 0, !dbg !812
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !814

if.then11:                                        ; preds = %if.end8
  %18 = load i32, i32* %ret, align 4, !dbg !815
  store i32 %18, i32* %retval, align 4, !dbg !816
  br label %return, !dbg !816

if.end12:                                         ; preds = %if.end8
  %19 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !817
  %20 = load i32, i32* %pda_addr.addr, align 4, !dbg !818
  call void @hermes_aux_setaddr(%struct.hermes* %19, i32 %20) #6, !dbg !819
  %21 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !820
  %22 = load i16*, i16** %data, align 8, !dbg !821
  %23 = bitcast i16* %22 to i8*, !dbg !821
  %24 = load i16, i16* %data_len, align 2, !dbg !822
  %conv13 = zext i16 %24 to i32, !dbg !822
  %div = sdiv i32 %conv13, 2, !dbg !823
  call void @hermes_read_words(%struct.hermes* %21, i32 62, i8* %23, i32 %div) #6, !dbg !824
  %25 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !825
  %call14 = call i32 @hermes_aux_control(%struct.hermes* %25, i32 0) #6, !dbg !826
  store i32 %call14, i32* %ret, align 4, !dbg !827
  store i32 0, i32* %tmp15, align 4, !dbg !828
  %26 = load i32, i32* %tmp15, align 4, !dbg !831
  %27 = load i16*, i16** %pda.addr, align 8, !dbg !832
  %arrayidx16 = getelementptr i16, i16* %27, i64 0, !dbg !832
  %28 = load i16, i16* %arrayidx16, align 2, !dbg !832
  store i16 %28, i16* %pda_size, align 2, !dbg !833
  store i32 0, i32* %tmp17, align 4, !dbg !834
  %29 = load i32, i32* %tmp17, align 4, !dbg !837
  %30 = load i16, i16* %pda_size, align 2, !dbg !838
  %conv18 = zext i16 %30 to i32, !dbg !838
  %31 = load i16, i16* %pda_len.addr, align 2, !dbg !840
  %conv19 = zext i16 %31 to i32, !dbg !840
  %cmp = icmp sgt i32 %conv18, %conv19, !dbg !841
  br i1 %cmp, label %if.then21, label %if.end22, !dbg !842

if.then21:                                        ; preds = %if.end12
  store i32 -22, i32* %retval, align 4, !dbg !843
  br label %return, !dbg !843

if.end22:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !844
  br label %return, !dbg !844

return:                                           ; preds = %if.end22, %if.then21, %if.then11, %if.then2
  %32 = load i32, i32* %retval, align 4, !dbg !845
  ret i32 %32, !dbg !845
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermesi_program_init(%struct.hermes* %hw, i32 %offset) #0 !dbg !846 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %offset.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !847, metadata !DIExpression()), !dbg !848
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata i32* %err, metadata !851, metadata !DIExpression()), !dbg !852
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !853
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %0, i32 0, i32 0, !dbg !853
  %1 = load i8*, i8** %iobase, align 8, !dbg !853
  %2 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !853
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %2, i32 0, i32 1, !dbg !853
  %3 = load i32, i32* %reg_spacing, align 8, !dbg !853
  %shl = shl i32 52, %3, !dbg !853
  %idx.ext = sext i32 %shl to i64, !dbg !853
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !853
  call void @iowrite16(i16 zeroext -1, i8* %add.ptr) #6, !dbg !853
  %4 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !854
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %4, i32 0, i32 4, !dbg !855
  %5 = load %struct.hermes_ops*, %struct.hermes_ops** %ops, align 8, !dbg !855
  %init_cmd_wait = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %5, i32 0, i32 2, !dbg !856
  %6 = load i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)** %init_cmd_wait, align 8, !dbg !856
  %7 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !857
  %call = call i32 %6(%struct.hermes* %7, i16 zeroext 256, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, %struct.hermes_response* null) #6, !dbg !854
  store i32 %call, i32* %err, align 4, !dbg !858
  %8 = load i32, i32* %err, align 4, !dbg !859
  %tobool = icmp ne i32 %8, 0, !dbg !859
  br i1 %tobool, label %if.then, label %if.end, !dbg !861

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %err, align 4, !dbg !862
  store i32 %9, i32* %retval, align 4, !dbg !863
  br label %return, !dbg !863

if.end:                                           ; preds = %entry
  %10 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !864
  %ops1 = getelementptr inbounds %struct.hermes, %struct.hermes* %10, i32 0, i32 4, !dbg !865
  %11 = load %struct.hermes_ops*, %struct.hermes_ops** %ops1, align 8, !dbg !865
  %init_cmd_wait2 = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %11, i32 0, i32 2, !dbg !866
  %12 = load i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)** %init_cmd_wait2, align 8, !dbg !866
  %13 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !867
  %call3 = call i32 %12(%struct.hermes* %13, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, %struct.hermes_response* null) #6, !dbg !864
  store i32 %call3, i32* %err, align 4, !dbg !868
  %14 = load i32, i32* %err, align 4, !dbg !869
  %tobool4 = icmp ne i32 %14, 0, !dbg !869
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !871

if.then5:                                         ; preds = %if.end
  %15 = load i32, i32* %err, align 4, !dbg !872
  store i32 %15, i32* %retval, align 4, !dbg !873
  br label %return, !dbg !873

if.end6:                                          ; preds = %if.end
  %16 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !874
  %call7 = call i32 @hermes_aux_control(%struct.hermes* %16, i32 1) #6, !dbg !875
  store i32 %call7, i32* %err, align 4, !dbg !876
  store i32 0, i32* %tmp, align 4, !dbg !877
  %17 = load i32, i32* %tmp, align 4, !dbg !880
  %18 = load i32, i32* %err, align 4, !dbg !881
  %tobool8 = icmp ne i32 %18, 0, !dbg !881
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !883

if.then9:                                         ; preds = %if.end6
  %19 = load i32, i32* %err, align 4, !dbg !884
  store i32 %19, i32* %retval, align 4, !dbg !885
  br label %return, !dbg !885

if.end10:                                         ; preds = %if.end6
  store i32 0, i32* %tmp11, align 4, !dbg !886
  %20 = load i32, i32* %tmp11, align 4, !dbg !889
  %21 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !890
  %ops12 = getelementptr inbounds %struct.hermes, %struct.hermes* %21, i32 0, i32 4, !dbg !891
  %22 = load %struct.hermes_ops*, %struct.hermes_ops** %ops12, align 8, !dbg !891
  %init_cmd_wait13 = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %22, i32 0, i32 2, !dbg !892
  %23 = load i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)** %init_cmd_wait13, align 8, !dbg !892
  %24 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !893
  %25 = load i32, i32* %offset.addr, align 4, !dbg !894
  %and = and i32 %25, 65535, !dbg !895
  %conv = trunc i32 %and to i16, !dbg !894
  %26 = load i32, i32* %offset.addr, align 4, !dbg !896
  %shr = lshr i32 %26, 16, !dbg !897
  %conv14 = trunc i32 %shr to i16, !dbg !896
  %call15 = call i32 %23(%struct.hermes* %24, i16 zeroext 290, i16 zeroext %conv, i16 zeroext %conv14, i16 zeroext 0, %struct.hermes_response* null) #6, !dbg !890
  store i32 %call15, i32* %err, align 4, !dbg !898
  store i32 0, i32* %tmp16, align 4, !dbg !899
  %27 = load i32, i32* %tmp16, align 4, !dbg !902
  %28 = load i32, i32* %err, align 4, !dbg !903
  store i32 %28, i32* %retval, align 4, !dbg !904
  br label %return, !dbg !904

return:                                           ; preds = %if.end10, %if.then9, %if.then5, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !905
  ret i32 %29, !dbg !905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermesi_program_end(%struct.hermes* %hw) #0 !dbg !906 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %resp = alloca %struct.hermes_response, align 2
  %rc = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !907, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.declare(metadata %struct.hermes_response* %resp, metadata !909, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !911, metadata !DIExpression()), !dbg !912
  store i32 0, i32* %rc, align 4, !dbg !912
  call void @llvm.dbg.declare(metadata i32* %err, metadata !913, metadata !DIExpression()), !dbg !914
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !915
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %0, i32 0, i32 4, !dbg !916
  %1 = load %struct.hermes_ops*, %struct.hermes_ops** %ops, align 8, !dbg !916
  %cmd_wait = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %1, i32 0, i32 1, !dbg !917
  %2 = load i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)** %cmd_wait, align 8, !dbg !917
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !918
  %call = call i32 %2(%struct.hermes* %3, i16 zeroext 34, i16 zeroext 0, %struct.hermes_response* %resp) #6, !dbg !915
  store i32 %call, i32* %rc, align 4, !dbg !919
  store i32 0, i32* %tmp, align 4, !dbg !920
  %4 = load i32, i32* %tmp, align 4, !dbg !923
  %5 = load i32, i32* %rc, align 4, !dbg !924
  %cmp = icmp eq i32 %5, 0, !dbg !926
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !927

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %resp, i32 0, i32 0, !dbg !928
  %6 = load i16, i16* %status, align 2, !dbg !928
  %conv = zext i16 %6 to i32, !dbg !929
  %and = and i32 %conv, 63, !dbg !930
  %cmp1 = icmp ne i32 %and, 34, !dbg !931
  br i1 %cmp1, label %if.then, label %if.end, !dbg !932

if.then:                                          ; preds = %land.lhs.true
  store i32 -5, i32* %rc, align 4, !dbg !933
  br label %if.end, !dbg !934

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !935
  %call3 = call i32 @hermes_aux_control(%struct.hermes* %7, i32 0) #6, !dbg !936
  store i32 %call3, i32* %err, align 4, !dbg !937
  store i32 0, i32* %tmp4, align 4, !dbg !938
  %8 = load i32, i32* %tmp4, align 4, !dbg !941
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !942
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 0, !dbg !942
  %10 = load i8*, i8** %iobase, align 8, !dbg !942
  %11 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !942
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %11, i32 0, i32 1, !dbg !942
  %12 = load i32, i32* %reg_spacing, align 8, !dbg !942
  %shl = shl i32 52, %12, !dbg !942
  %idx.ext = sext i32 %shl to i64, !dbg !942
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !942
  call void @iowrite16(i16 zeroext -1, i8* %add.ptr) #6, !dbg !942
  %13 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !943
  %ops5 = getelementptr inbounds %struct.hermes, %struct.hermes* %13, i32 0, i32 4, !dbg !944
  %14 = load %struct.hermes_ops*, %struct.hermes_ops** %ops5, align 8, !dbg !944
  %init_cmd_wait = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %14, i32 0, i32 2, !dbg !945
  %15 = load i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)** %init_cmd_wait, align 8, !dbg !945
  %16 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !946
  %call6 = call i32 %15(%struct.hermes* %16, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, %struct.hermes_response* null) #6, !dbg !943
  %17 = load i32, i32* %rc, align 4, !dbg !947
  %tobool = icmp ne i32 %17, 0, !dbg !947
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !947

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %rc, align 4, !dbg !948
  br label %cond.end, !dbg !947

cond.false:                                       ; preds = %if.end
  %19 = load i32, i32* %err, align 4, !dbg !949
  br label %cond.end, !dbg !947

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !947
  ret i32 %cond, !dbg !950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_program_bytes(%struct.hermes* %hw, i8* %data, i32 %addr, i32 %len) #0 !dbg !951 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %data.addr = alloca i8*, align 8
  %addr.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !952, metadata !DIExpression()), !dbg !953
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !954, metadata !DIExpression()), !dbg !955
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !958, metadata !DIExpression()), !dbg !959
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !960
  %1 = load i32, i32* %addr.addr, align 4, !dbg !961
  call void @hermes_aux_setaddr(%struct.hermes* %0, i32 %1) #6, !dbg !962
  %2 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !963
  %3 = load i8*, i8** %data.addr, align 8, !dbg !964
  %4 = load i32, i32* %len.addr, align 4, !dbg !965
  call void @hermes_write_bytes(%struct.hermes* %2, i32 62, i8* %3, i32 %4) #6, !dbg !966
  ret i32 0, !dbg !967
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_lock_irqsave(%struct.spinlock* %lock, i64* %flags) #0 !dbg !968 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !969, metadata !DIExpression()), !dbg !976
  %lock.addr = alloca %struct.spinlock*, align 8
  %flags.addr = alloca i64*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store i64* %flags, i64** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %flags.addr, metadata !985, metadata !DIExpression()), !dbg !986
  br label %do.body, !dbg !987

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !988

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !989, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !992, metadata !DIExpression()), !dbg !991
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !991
  %conv = zext i1 %cmp to i32, !dbg !991
  store i32 1, i32* %tmp, align 4, !dbg !991
  %0 = load i32, i32* %tmp, align 4, !dbg !991
  br label %do.body2, !dbg !993

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !994

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !995

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !997, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !1001, metadata !DIExpression()), !dbg !1000
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !1000
  %conv8 = zext i1 %cmp7 to i32, !dbg !1000
  store i32 1, i32* %tmp9, align 4, !dbg !1000
  %1 = load i32, i32* %tmp9, align 4, !dbg !1000
  %call = call i64 @arch_local_irq_save() #6, !dbg !1002
  %2 = load i64*, i64** %flags.addr, align 8, !dbg !1002
  store i64 %call, i64* %2, align 8, !dbg !1002
  br label %do.end, !dbg !1002

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !995

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !994

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !1003, !srcloc !1004
  br label %do.body12, !dbg !1003

do.body12:                                        ; preds = %do.body11
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1005
  store %struct.spinlock* %3, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1006
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !1007
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !1007
  br label %do.end14, !dbg !1005

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !1003

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !994

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !993

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !988

do.end18:                                         ; preds = %do.end17
  ret void, !dbg !1008
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_unlock_irqrestore(%struct.spinlock* %lock, i64* %flags) #0 !dbg !1009 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1010, metadata !DIExpression()), !dbg !1014
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1016, metadata !DIExpression()), !dbg !1017
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr = alloca %struct.spinlock*, align 8
  %flags.addr = alloca i64*, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1018, metadata !DIExpression()), !dbg !1019
  store i64* %flags, i64** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %flags.addr, metadata !1020, metadata !DIExpression()), !dbg !1021
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1022
  %1 = load i64*, i64** %flags.addr, align 8, !dbg !1023
  %2 = load i64, i64* %1, align 8, !dbg !1024
  store %struct.spinlock* %0, %struct.spinlock** %lock.addr.i, align 8
  store i64 %2, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !120, metadata !1025, metadata !DIExpression()) #5, !dbg !1028
  call void @llvm.dbg.declare(metadata !120, metadata !1029, metadata !DIExpression()) #5, !dbg !1028
  store i32 1, i32* %tmp.i, align 4, !dbg !1028
  %3 = load i32, i32* %tmp.i, align 4, !dbg !1028
  call void @llvm.dbg.declare(metadata !120, metadata !1030, metadata !DIExpression()) #5, !dbg !1035
  call void @llvm.dbg.declare(metadata !120, metadata !1036, metadata !DIExpression()) #5, !dbg !1035
  store i32 1, i32* %tmp8.i, align 4, !dbg !1035
  %4 = load i32, i32* %tmp8.i, align 4, !dbg !1035
  %5 = load i64, i64* %flags.addr.i, align 8, !dbg !1037
  call void @arch_local_irq_restore(i64 %5) #8, !dbg !1037
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !1038, !srcloc !1040
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1041
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !1041
  %rlock.i = bitcast %union.anon* %7 to %struct.raw_spinlock*, !dbg !1041
  ret void, !dbg !1043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_lock_irq(%struct.spinlock* %lock) #0 !dbg !1044 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1045, metadata !DIExpression()), !dbg !1047
  %lock.addr = alloca %struct.spinlock*, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1049, metadata !DIExpression()), !dbg !1050
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1051
  store %struct.spinlock* %0, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !1052
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !1055, !srcloc !1057
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1058
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !1058
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !1058
  ret void, !dbg !1060
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_unlock_irq(%struct.spinlock* %lock) #0 !dbg !1061 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1062, metadata !DIExpression()), !dbg !1064
  %lock.addr = alloca %struct.spinlock*, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1066, metadata !DIExpression()), !dbg !1067
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1068
  store %struct.spinlock* %0, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_enable() #8, !dbg !1069
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !1072, !srcloc !1074
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1075
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !1075
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !1075
  ret void, !dbg !1077
}

; Function Attrs: noredzone
declare dso_local void @iowrite16(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @ioread16(i8*) #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_issue_cmd(%struct.hermes* %hw, i16 zeroext %cmd, i16 zeroext %param0, i16 zeroext %param1, i16 zeroext %param2) #0 !dbg !1078 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %cmd.addr = alloca i16, align 2
  %param0.addr = alloca i16, align 2
  %param1.addr = alloca i16, align 2
  %param2.addr = alloca i16, align 2
  %k = alloca i32, align 4
  %reg = alloca i16, align 2
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  store i16 %cmd, i16* %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cmd.addr, metadata !1083, metadata !DIExpression()), !dbg !1084
  store i16 %param0, i16* %param0.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %param0.addr, metadata !1085, metadata !DIExpression()), !dbg !1086
  store i16 %param1, i16* %param1.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %param1.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  store i16 %param2, i16* %param2.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %param2.addr, metadata !1089, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata i32* %k, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i32 100, i32* %k, align 4, !dbg !1092
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !1093, metadata !DIExpression()), !dbg !1094
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1095
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %0, i32 0, i32 0, !dbg !1095
  %1 = load i8*, i8** %iobase, align 8, !dbg !1095
  %2 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1095
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %2, i32 0, i32 1, !dbg !1095
  %3 = load i32, i32* %reg_spacing, align 8, !dbg !1095
  %shl = shl i32 0, %3, !dbg !1095
  %idx.ext = sext i32 %shl to i64, !dbg !1095
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1095
  %call = call i32 @ioread16(i8* %add.ptr) #6, !dbg !1095
  %conv = trunc i32 %call to i16, !dbg !1095
  store i16 %conv, i16* %reg, align 2, !dbg !1096
  br label %while.cond, !dbg !1097

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i16, i16* %reg, align 2, !dbg !1098
  %conv1 = zext i16 %4 to i32, !dbg !1098
  %and = and i32 %conv1, 32768, !dbg !1099
  %tobool = icmp ne i32 %and, 0, !dbg !1099
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1100

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %k, align 4, !dbg !1101
  %tobool2 = icmp ne i32 %5, 0, !dbg !1100
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ], !dbg !1102
  br i1 %6, label %while.body, label %while.end, !dbg !1097

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %k, align 4, !dbg !1103
  %dec = add i32 %7, -1, !dbg !1103
  store i32 %dec, i32* %k, align 4, !dbg !1103
  call void @__const_udelay(i64 4295) #6, !dbg !1105
  %8 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1110
  %iobase3 = getelementptr inbounds %struct.hermes, %struct.hermes* %8, i32 0, i32 0, !dbg !1110
  %9 = load i8*, i8** %iobase3, align 8, !dbg !1110
  %10 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1110
  %reg_spacing4 = getelementptr inbounds %struct.hermes, %struct.hermes* %10, i32 0, i32 1, !dbg !1110
  %11 = load i32, i32* %reg_spacing4, align 8, !dbg !1110
  %shl5 = shl i32 0, %11, !dbg !1110
  %idx.ext6 = sext i32 %shl5 to i64, !dbg !1110
  %add.ptr7 = getelementptr i8, i8* %9, i64 %idx.ext6, !dbg !1110
  %call8 = call i32 @ioread16(i8* %add.ptr7) #6, !dbg !1110
  %conv9 = trunc i32 %call8 to i16, !dbg !1110
  store i16 %conv9, i16* %reg, align 2, !dbg !1111
  br label %while.cond, !dbg !1097, !llvm.loop !1112

while.end:                                        ; preds = %land.end
  %12 = load i16, i16* %reg, align 2, !dbg !1114
  %conv10 = zext i16 %12 to i32, !dbg !1114
  %and11 = and i32 %conv10, 32768, !dbg !1116
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1116
  br i1 %tobool12, label %if.then, label %if.end, !dbg !1117

if.then:                                          ; preds = %while.end
  store i32 -16, i32* %retval, align 4, !dbg !1118
  br label %return, !dbg !1118

if.end:                                           ; preds = %while.end
  %13 = load i16, i16* %param2.addr, align 2, !dbg !1119
  %14 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1119
  %iobase13 = getelementptr inbounds %struct.hermes, %struct.hermes* %14, i32 0, i32 0, !dbg !1119
  %15 = load i8*, i8** %iobase13, align 8, !dbg !1119
  %16 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1119
  %reg_spacing14 = getelementptr inbounds %struct.hermes, %struct.hermes* %16, i32 0, i32 1, !dbg !1119
  %17 = load i32, i32* %reg_spacing14, align 8, !dbg !1119
  %shl15 = shl i32 6, %17, !dbg !1119
  %idx.ext16 = sext i32 %shl15 to i64, !dbg !1119
  %add.ptr17 = getelementptr i8, i8* %15, i64 %idx.ext16, !dbg !1119
  call void @iowrite16(i16 zeroext %13, i8* %add.ptr17) #6, !dbg !1119
  %18 = load i16, i16* %param1.addr, align 2, !dbg !1120
  %19 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1120
  %iobase18 = getelementptr inbounds %struct.hermes, %struct.hermes* %19, i32 0, i32 0, !dbg !1120
  %20 = load i8*, i8** %iobase18, align 8, !dbg !1120
  %21 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1120
  %reg_spacing19 = getelementptr inbounds %struct.hermes, %struct.hermes* %21, i32 0, i32 1, !dbg !1120
  %22 = load i32, i32* %reg_spacing19, align 8, !dbg !1120
  %shl20 = shl i32 4, %22, !dbg !1120
  %idx.ext21 = sext i32 %shl20 to i64, !dbg !1120
  %add.ptr22 = getelementptr i8, i8* %20, i64 %idx.ext21, !dbg !1120
  call void @iowrite16(i16 zeroext %18, i8* %add.ptr22) #6, !dbg !1120
  %23 = load i16, i16* %param0.addr, align 2, !dbg !1121
  %24 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1121
  %iobase23 = getelementptr inbounds %struct.hermes, %struct.hermes* %24, i32 0, i32 0, !dbg !1121
  %25 = load i8*, i8** %iobase23, align 8, !dbg !1121
  %26 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1121
  %reg_spacing24 = getelementptr inbounds %struct.hermes, %struct.hermes* %26, i32 0, i32 1, !dbg !1121
  %27 = load i32, i32* %reg_spacing24, align 8, !dbg !1121
  %shl25 = shl i32 2, %27, !dbg !1121
  %idx.ext26 = sext i32 %shl25 to i64, !dbg !1121
  %add.ptr27 = getelementptr i8, i8* %25, i64 %idx.ext26, !dbg !1121
  call void @iowrite16(i16 zeroext %23, i8* %add.ptr27) #6, !dbg !1121
  %28 = load i16, i16* %cmd.addr, align 2, !dbg !1122
  %29 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1122
  %iobase28 = getelementptr inbounds %struct.hermes, %struct.hermes* %29, i32 0, i32 0, !dbg !1122
  %30 = load i8*, i8** %iobase28, align 8, !dbg !1122
  %31 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1122
  %reg_spacing29 = getelementptr inbounds %struct.hermes, %struct.hermes* %31, i32 0, i32 1, !dbg !1122
  %32 = load i32, i32* %reg_spacing29, align 8, !dbg !1122
  %shl30 = shl i32 0, %32, !dbg !1122
  %idx.ext31 = sext i32 %shl30 to i64, !dbg !1122
  %add.ptr32 = getelementptr i8, i8* %30, i64 %idx.ext31, !dbg !1122
  call void @iowrite16(i16 zeroext %28, i8* %add.ptr32) #6, !dbg !1122
  store i32 0, i32* %retval, align 4, !dbg !1123
  br label %return, !dbg !1123

return:                                           ; preds = %if.end, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !1124
  ret i32 %33, !dbg !1124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_present(%struct.hermes* %hw) #0 !dbg !1125 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  %0 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1128
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %0, i32 0, i32 0, !dbg !1128
  %1 = load i8*, i8** %iobase, align 8, !dbg !1128
  %2 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1128
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %2, i32 0, i32 1, !dbg !1128
  %3 = load i32, i32* %reg_spacing, align 8, !dbg !1128
  %shl = shl i32 40, %3, !dbg !1128
  %idx.ext = sext i32 %shl to i64, !dbg !1128
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1128
  %call = call i32 @ioread16(i8* %add.ptr) #6, !dbg !1128
  %cmp = icmp eq i32 %call, 32031, !dbg !1129
  %conv = zext i1 %cmp to i32, !dbg !1129
  ret i32 %conv, !dbg !1130
}

; Function Attrs: noredzone
declare dso_local i32 @net_ratelimit() #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_bap_seek(%struct.hermes* %hw, i32 %bap, i16 zeroext %id, i16 zeroext %offset) #0 !dbg !1131 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %bap.addr = alloca i32, align 4
  %id.addr = alloca i16, align 2
  %offset.addr = alloca i16, align 2
  %sreg = alloca i32, align 4
  %oreg = alloca i32, align 4
  %k = alloca i32, align 4
  %reg = alloca i16, align 2
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i32 %bap, i32* %bap.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bap.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  store i16 %id, i16* %id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %id.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata i32* %sreg, metadata !1142, metadata !DIExpression()), !dbg !1143
  %0 = load i32, i32* %bap.addr, align 4, !dbg !1144
  %tobool = icmp ne i32 %0, 0, !dbg !1144
  %1 = zext i1 %tobool to i64, !dbg !1144
  %cond = select i1 %tobool, i32 26, i32 24, !dbg !1144
  store i32 %cond, i32* %sreg, align 4, !dbg !1143
  call void @llvm.dbg.declare(metadata i32* %oreg, metadata !1145, metadata !DIExpression()), !dbg !1146
  %2 = load i32, i32* %bap.addr, align 4, !dbg !1147
  %tobool1 = icmp ne i32 %2, 0, !dbg !1147
  %3 = zext i1 %tobool1 to i64, !dbg !1147
  %cond2 = select i1 %tobool1, i32 30, i32 28, !dbg !1147
  store i32 %cond2, i32* %oreg, align 4, !dbg !1146
  call void @llvm.dbg.declare(metadata i32* %k, metadata !1148, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !1150, metadata !DIExpression()), !dbg !1151
  %4 = load i16, i16* %offset.addr, align 2, !dbg !1152
  %conv = zext i16 %4 to i32, !dbg !1152
  %cmp = icmp sgt i32 %conv, 4096, !dbg !1154
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1155

lor.lhs.false:                                    ; preds = %entry
  %5 = load i16, i16* %offset.addr, align 2, !dbg !1156
  %conv4 = zext i16 %5 to i32, !dbg !1156
  %rem = srem i32 %conv4, 2, !dbg !1157
  %tobool5 = icmp ne i32 %rem, 0, !dbg !1157
  br i1 %tobool5, label %if.then, label %if.end, !dbg !1158

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !1159
  br label %return, !dbg !1159

if.end:                                           ; preds = %lor.lhs.false
  store i32 10000, i32* %k, align 4, !dbg !1160
  %6 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1161
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 0, !dbg !1161
  %7 = load i8*, i8** %iobase, align 8, !dbg !1161
  %8 = load i32, i32* %oreg, align 4, !dbg !1161
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1161
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 1, !dbg !1161
  %10 = load i32, i32* %reg_spacing, align 8, !dbg !1161
  %shl = shl i32 %8, %10, !dbg !1161
  %idx.ext = sext i32 %shl to i64, !dbg !1161
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !1161
  %call = call i32 @ioread16(i8* %add.ptr) #6, !dbg !1161
  %conv6 = trunc i32 %call to i16, !dbg !1161
  store i16 %conv6, i16* %reg, align 2, !dbg !1162
  br label %while.cond, !dbg !1163

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i16, i16* %reg, align 2, !dbg !1164
  %conv7 = zext i16 %11 to i32, !dbg !1164
  %and = and i32 %conv7, 32768, !dbg !1165
  %tobool8 = icmp ne i32 %and, 0, !dbg !1165
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !1166

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %k, align 4, !dbg !1167
  %tobool9 = icmp ne i32 %12, 0, !dbg !1166
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %tobool9, %land.rhs ], !dbg !1168
  br i1 %13, label %while.body, label %while.end, !dbg !1163

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %k, align 4, !dbg !1169
  %dec = add i32 %14, -1, !dbg !1169
  store i32 %dec, i32* %k, align 4, !dbg !1169
  call void @__const_udelay(i64 4295) #6, !dbg !1171
  %15 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1176
  %iobase10 = getelementptr inbounds %struct.hermes, %struct.hermes* %15, i32 0, i32 0, !dbg !1176
  %16 = load i8*, i8** %iobase10, align 8, !dbg !1176
  %17 = load i32, i32* %oreg, align 4, !dbg !1176
  %18 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1176
  %reg_spacing11 = getelementptr inbounds %struct.hermes, %struct.hermes* %18, i32 0, i32 1, !dbg !1176
  %19 = load i32, i32* %reg_spacing11, align 8, !dbg !1176
  %shl12 = shl i32 %17, %19, !dbg !1176
  %idx.ext13 = sext i32 %shl12 to i64, !dbg !1176
  %add.ptr14 = getelementptr i8, i8* %16, i64 %idx.ext13, !dbg !1176
  %call15 = call i32 @ioread16(i8* %add.ptr14) #6, !dbg !1176
  %conv16 = trunc i32 %call15 to i16, !dbg !1176
  store i16 %conv16, i16* %reg, align 2, !dbg !1177
  br label %while.cond, !dbg !1163, !llvm.loop !1178

while.end:                                        ; preds = %land.end
  %20 = load i16, i16* %reg, align 2, !dbg !1180
  %conv17 = zext i16 %20 to i32, !dbg !1180
  %and18 = and i32 %conv17, 32768, !dbg !1182
  %tobool19 = icmp ne i32 %and18, 0, !dbg !1182
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1183

if.then20:                                        ; preds = %while.end
  store i32 -110, i32* %retval, align 4, !dbg !1184
  br label %return, !dbg !1184

if.end21:                                         ; preds = %while.end
  %21 = load i16, i16* %id.addr, align 2, !dbg !1185
  %22 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1185
  %iobase22 = getelementptr inbounds %struct.hermes, %struct.hermes* %22, i32 0, i32 0, !dbg !1185
  %23 = load i8*, i8** %iobase22, align 8, !dbg !1185
  %24 = load i32, i32* %sreg, align 4, !dbg !1185
  %25 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1185
  %reg_spacing23 = getelementptr inbounds %struct.hermes, %struct.hermes* %25, i32 0, i32 1, !dbg !1185
  %26 = load i32, i32* %reg_spacing23, align 8, !dbg !1185
  %shl24 = shl i32 %24, %26, !dbg !1185
  %idx.ext25 = sext i32 %shl24 to i64, !dbg !1185
  %add.ptr26 = getelementptr i8, i8* %23, i64 %idx.ext25, !dbg !1185
  call void @iowrite16(i16 zeroext %21, i8* %add.ptr26) #6, !dbg !1185
  %27 = load i16, i16* %offset.addr, align 2, !dbg !1186
  %28 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1186
  %iobase27 = getelementptr inbounds %struct.hermes, %struct.hermes* %28, i32 0, i32 0, !dbg !1186
  %29 = load i8*, i8** %iobase27, align 8, !dbg !1186
  %30 = load i32, i32* %oreg, align 4, !dbg !1186
  %31 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1186
  %reg_spacing28 = getelementptr inbounds %struct.hermes, %struct.hermes* %31, i32 0, i32 1, !dbg !1186
  %32 = load i32, i32* %reg_spacing28, align 8, !dbg !1186
  %shl29 = shl i32 %30, %32, !dbg !1186
  %idx.ext30 = sext i32 %shl29 to i64, !dbg !1186
  %add.ptr31 = getelementptr i8, i8* %29, i64 %idx.ext30, !dbg !1186
  call void @iowrite16(i16 zeroext %27, i8* %add.ptr31) #6, !dbg !1186
  store i32 10000, i32* %k, align 4, !dbg !1187
  %33 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1188
  %iobase32 = getelementptr inbounds %struct.hermes, %struct.hermes* %33, i32 0, i32 0, !dbg !1188
  %34 = load i8*, i8** %iobase32, align 8, !dbg !1188
  %35 = load i32, i32* %oreg, align 4, !dbg !1188
  %36 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1188
  %reg_spacing33 = getelementptr inbounds %struct.hermes, %struct.hermes* %36, i32 0, i32 1, !dbg !1188
  %37 = load i32, i32* %reg_spacing33, align 8, !dbg !1188
  %shl34 = shl i32 %35, %37, !dbg !1188
  %idx.ext35 = sext i32 %shl34 to i64, !dbg !1188
  %add.ptr36 = getelementptr i8, i8* %34, i64 %idx.ext35, !dbg !1188
  %call37 = call i32 @ioread16(i8* %add.ptr36) #6, !dbg !1188
  %conv38 = trunc i32 %call37 to i16, !dbg !1188
  store i16 %conv38, i16* %reg, align 2, !dbg !1189
  br label %while.cond39, !dbg !1190

while.cond39:                                     ; preds = %while.body46, %if.end21
  %38 = load i16, i16* %reg, align 2, !dbg !1191
  %conv40 = zext i16 %38 to i32, !dbg !1191
  %and41 = and i32 %conv40, 49152, !dbg !1192
  %tobool42 = icmp ne i32 %and41, 0, !dbg !1192
  br i1 %tobool42, label %land.rhs43, label %land.end45, !dbg !1193

land.rhs43:                                       ; preds = %while.cond39
  %39 = load i32, i32* %k, align 4, !dbg !1194
  %tobool44 = icmp ne i32 %39, 0, !dbg !1193
  br label %land.end45

land.end45:                                       ; preds = %land.rhs43, %while.cond39
  %40 = phi i1 [ false, %while.cond39 ], [ %tobool44, %land.rhs43 ], !dbg !1168
  br i1 %40, label %while.body46, label %while.end55, !dbg !1190

while.body46:                                     ; preds = %land.end45
  %41 = load i32, i32* %k, align 4, !dbg !1195
  %dec47 = add i32 %41, -1, !dbg !1195
  store i32 %dec47, i32* %k, align 4, !dbg !1195
  call void @__const_udelay(i64 4295) #6, !dbg !1197
  %42 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1202
  %iobase48 = getelementptr inbounds %struct.hermes, %struct.hermes* %42, i32 0, i32 0, !dbg !1202
  %43 = load i8*, i8** %iobase48, align 8, !dbg !1202
  %44 = load i32, i32* %oreg, align 4, !dbg !1202
  %45 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1202
  %reg_spacing49 = getelementptr inbounds %struct.hermes, %struct.hermes* %45, i32 0, i32 1, !dbg !1202
  %46 = load i32, i32* %reg_spacing49, align 8, !dbg !1202
  %shl50 = shl i32 %44, %46, !dbg !1202
  %idx.ext51 = sext i32 %shl50 to i64, !dbg !1202
  %add.ptr52 = getelementptr i8, i8* %43, i64 %idx.ext51, !dbg !1202
  %call53 = call i32 @ioread16(i8* %add.ptr52) #6, !dbg !1202
  %conv54 = trunc i32 %call53 to i16, !dbg !1202
  store i16 %conv54, i16* %reg, align 2, !dbg !1203
  br label %while.cond39, !dbg !1190, !llvm.loop !1204

while.end55:                                      ; preds = %land.end45
  %47 = load i16, i16* %reg, align 2, !dbg !1206
  %conv56 = zext i16 %47 to i32, !dbg !1206
  %48 = load i16, i16* %offset.addr, align 2, !dbg !1208
  %conv57 = zext i16 %48 to i32, !dbg !1208
  %cmp58 = icmp ne i32 %conv56, %conv57, !dbg !1209
  br i1 %cmp58, label %if.then60, label %if.end75, !dbg !1210

if.then60:                                        ; preds = %while.end55
  %49 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1211
  %iobase61 = getelementptr inbounds %struct.hermes, %struct.hermes* %49, i32 0, i32 0, !dbg !1213
  %50 = load i8*, i8** %iobase61, align 8, !dbg !1213
  %51 = load i32, i32* %bap.addr, align 4, !dbg !1214
  %52 = load i16, i16* %reg, align 2, !dbg !1215
  %conv62 = zext i16 %52 to i32, !dbg !1215
  %and63 = and i32 %conv62, 32768, !dbg !1216
  %tobool64 = icmp ne i32 %and63, 0, !dbg !1217
  %53 = zext i1 %tobool64 to i64, !dbg !1217
  %cond65 = select i1 %tobool64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), !dbg !1217
  %54 = load i16, i16* %reg, align 2, !dbg !1218
  %conv66 = zext i16 %54 to i32, !dbg !1218
  %55 = load i16, i16* %id.addr, align 2, !dbg !1219
  %conv67 = zext i16 %55 to i32, !dbg !1219
  %56 = load i16, i16* %offset.addr, align 2, !dbg !1220
  %conv68 = zext i16 %56 to i32, !dbg !1220
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %50, i32 %51, i8* %cond65, i32 %conv66, i32 %conv67, i32 %conv68) #7, !dbg !1221
  %57 = load i16, i16* %reg, align 2, !dbg !1222
  %conv70 = zext i16 %57 to i32, !dbg !1222
  %and71 = and i32 %conv70, 32768, !dbg !1224
  %tobool72 = icmp ne i32 %and71, 0, !dbg !1224
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1225

if.then73:                                        ; preds = %if.then60
  store i32 -110, i32* %retval, align 4, !dbg !1226
  br label %return, !dbg !1226

if.end74:                                         ; preds = %if.then60
  store i32 -5, i32* %retval, align 4, !dbg !1227
  br label %return, !dbg !1227

if.end75:                                         ; preds = %while.end55
  store i32 0, i32* %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

return:                                           ; preds = %if.end75, %if.end74, %if.then73, %if.then20, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !1229
  ret i32 %58, !dbg !1229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_read_words(%struct.hermes* %hw, i32 %off, i8* %buf, i32 %count) #0 !dbg !1230 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %off.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i32 %off, i32* %off.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %off.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !1239, metadata !DIExpression()), !dbg !1240
  %0 = load i32, i32* %off.addr, align 4, !dbg !1241
  %1 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1242
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %1, i32 0, i32 1, !dbg !1243
  %2 = load i32, i32* %reg_spacing, align 8, !dbg !1243
  %shl = shl i32 %0, %2, !dbg !1244
  store i32 %shl, i32* %off.addr, align 4, !dbg !1245
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1246
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %3, i32 0, i32 0, !dbg !1247
  %4 = load i8*, i8** %iobase, align 8, !dbg !1247
  %5 = load i32, i32* %off.addr, align 4, !dbg !1248
  %idx.ext = sext i32 %5 to i64, !dbg !1249
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1249
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !1250
  %7 = load i32, i32* %count.addr, align 4, !dbg !1251
  %conv = zext i32 %7 to i64, !dbg !1251
  call void @ioread16_rep(i8* %add.ptr, i8* %6, i64 %conv) #6, !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: noredzone
declare dso_local void @ioread16_rep(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_write_bytes(%struct.hermes* %hw, i32 %off, i8* %buf, i32 %count) #0 !dbg !1254 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %off.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i32 %off, i32* %off.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %off.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !1263, metadata !DIExpression()), !dbg !1264
  %0 = load i32, i32* %off.addr, align 4, !dbg !1265
  %1 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1266
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %1, i32 0, i32 1, !dbg !1267
  %2 = load i32, i32* %reg_spacing, align 8, !dbg !1267
  %shl = shl i32 %0, %2, !dbg !1268
  store i32 %shl, i32* %off.addr, align 4, !dbg !1269
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1270
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %3, i32 0, i32 0, !dbg !1271
  %4 = load i8*, i8** %iobase, align 8, !dbg !1271
  %5 = load i32, i32* %off.addr, align 4, !dbg !1272
  %idx.ext = sext i32 %5 to i64, !dbg !1273
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1273
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !1274
  %7 = load i32, i32* %count.addr, align 4, !dbg !1275
  %shr = lshr i32 %7, 1, !dbg !1276
  %conv = zext i32 %shr to i64, !dbg !1275
  call void @iowrite16_rep(i8* %add.ptr, i8* %6, i64 %conv) #6, !dbg !1277
  %8 = load i32, i32* %count.addr, align 4, !dbg !1278
  %and = and i32 %8, 1, !dbg !1278
  %tobool = icmp ne i32 %and, 0, !dbg !1278
  %lnot = xor i1 %tobool, true, !dbg !1278
  %lnot1 = xor i1 %lnot, true, !dbg !1278
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1278
  %conv2 = sext i32 %lnot.ext to i64, !dbg !1278
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !1278
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1280

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !1281
  %10 = load i32, i32* %count.addr, align 4, !dbg !1282
  %sub = sub i32 %10, 1, !dbg !1283
  %idxprom = zext i32 %sub to i64, !dbg !1281
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom, !dbg !1281
  %11 = load i8, i8* %arrayidx, align 1, !dbg !1281
  %12 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1284
  %iobase4 = getelementptr inbounds %struct.hermes, %struct.hermes* %12, i32 0, i32 0, !dbg !1285
  %13 = load i8*, i8** %iobase4, align 8, !dbg !1285
  %14 = load i32, i32* %off.addr, align 4, !dbg !1286
  %idx.ext5 = sext i32 %14 to i64, !dbg !1287
  %add.ptr6 = getelementptr i8, i8* %13, i64 %idx.ext5, !dbg !1287
  call void @iowrite8(i8 zeroext %11, i8* %add.ptr6) #6, !dbg !1288
  br label %if.end, !dbg !1288

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1289
}

; Function Attrs: noredzone
declare dso_local void @iowrite16_rep(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @iowrite8(i8 zeroext, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_aux_control(%struct.hermes* %hw, i32 %enabled) #0 !dbg !1290 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %enabled.addr = alloca i32, align 4
  %desired_state = alloca i32, align 4
  %action = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i32 %enabled, i32* %enabled.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enabled.addr, metadata !1295, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata i32* %desired_state, metadata !1297, metadata !DIExpression()), !dbg !1298
  %0 = load i32, i32* %enabled.addr, align 4, !dbg !1299
  %tobool = icmp ne i32 %0, 0, !dbg !1299
  %1 = zext i1 %tobool to i64, !dbg !1299
  %cond = select i1 %tobool, i32 49152, i32 0, !dbg !1299
  store i32 %cond, i32* %desired_state, align 4, !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %action, metadata !1300, metadata !DIExpression()), !dbg !1301
  %2 = load i32, i32* %enabled.addr, align 4, !dbg !1302
  %tobool1 = icmp ne i32 %2, 0, !dbg !1302
  %3 = zext i1 %tobool1 to i64, !dbg !1302
  %cond2 = select i1 %tobool1, i32 32768, i32 16384, !dbg !1302
  store i32 %cond2, i32* %action, align 4, !dbg !1301
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1303, metadata !DIExpression()), !dbg !1304
  %4 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1305
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %4, i32 0, i32 0, !dbg !1305
  %5 = load i8*, i8** %iobase, align 8, !dbg !1305
  %6 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1305
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 1, !dbg !1305
  %7 = load i32, i32* %reg_spacing, align 8, !dbg !1305
  %shl = shl i32 20, %7, !dbg !1305
  %idx.ext = sext i32 %shl to i64, !dbg !1305
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !1305
  %call = call i32 @ioread16(i8* %add.ptr) #6, !dbg !1305
  %8 = load i32, i32* %desired_state, align 4, !dbg !1307
  %cmp = icmp eq i32 %call, %8, !dbg !1308
  br i1 %cmp, label %if.then, label %if.end, !dbg !1309

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1310
  br label %return, !dbg !1310

if.end:                                           ; preds = %entry
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1311
  %iobase3 = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 0, !dbg !1311
  %10 = load i8*, i8** %iobase3, align 8, !dbg !1311
  %11 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1311
  %reg_spacing4 = getelementptr inbounds %struct.hermes, %struct.hermes* %11, i32 0, i32 1, !dbg !1311
  %12 = load i32, i32* %reg_spacing4, align 8, !dbg !1311
  %shl5 = shl i32 2, %12, !dbg !1311
  %idx.ext6 = sext i32 %shl5 to i64, !dbg !1311
  %add.ptr7 = getelementptr i8, i8* %10, i64 %idx.ext6, !dbg !1311
  call void @iowrite16(i16 zeroext -511, i8* %add.ptr7) #6, !dbg !1311
  %13 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1312
  %iobase8 = getelementptr inbounds %struct.hermes, %struct.hermes* %13, i32 0, i32 0, !dbg !1312
  %14 = load i8*, i8** %iobase8, align 8, !dbg !1312
  %15 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1312
  %reg_spacing9 = getelementptr inbounds %struct.hermes, %struct.hermes* %15, i32 0, i32 1, !dbg !1312
  %16 = load i32, i32* %reg_spacing9, align 8, !dbg !1312
  %shl10 = shl i32 4, %16, !dbg !1312
  %idx.ext11 = sext i32 %shl10 to i64, !dbg !1312
  %add.ptr12 = getelementptr i8, i8* %14, i64 %idx.ext11, !dbg !1312
  call void @iowrite16(i16 zeroext -9181, i8* %add.ptr12) #6, !dbg !1312
  %17 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1313
  %iobase13 = getelementptr inbounds %struct.hermes, %struct.hermes* %17, i32 0, i32 0, !dbg !1313
  %18 = load i8*, i8** %iobase13, align 8, !dbg !1313
  %19 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1313
  %reg_spacing14 = getelementptr inbounds %struct.hermes, %struct.hermes* %19, i32 0, i32 1, !dbg !1313
  %20 = load i32, i32* %reg_spacing14, align 8, !dbg !1313
  %shl15 = shl i32 6, %20, !dbg !1313
  %idx.ext16 = sext i32 %shl15 to i64, !dbg !1313
  %add.ptr17 = getelementptr i8, i8* %18, i64 %idx.ext16, !dbg !1313
  call void @iowrite16(i16 zeroext -17851, i8* %add.ptr17) #6, !dbg !1313
  %21 = load i32, i32* %action, align 4, !dbg !1314
  %conv = trunc i32 %21 to i16, !dbg !1314
  %22 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1314
  %iobase18 = getelementptr inbounds %struct.hermes, %struct.hermes* %22, i32 0, i32 0, !dbg !1314
  %23 = load i8*, i8** %iobase18, align 8, !dbg !1314
  %24 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1314
  %reg_spacing19 = getelementptr inbounds %struct.hermes, %struct.hermes* %24, i32 0, i32 1, !dbg !1314
  %25 = load i32, i32* %reg_spacing19, align 8, !dbg !1314
  %shl20 = shl i32 20, %25, !dbg !1314
  %idx.ext21 = sext i32 %shl20 to i64, !dbg !1314
  %add.ptr22 = getelementptr i8, i8* %23, i64 %idx.ext21, !dbg !1314
  call void @iowrite16(i16 zeroext %conv, i8* %add.ptr22) #6, !dbg !1314
  store i32 0, i32* %i, align 4, !dbg !1315
  br label %for.cond, !dbg !1317

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4, !dbg !1318
  %cmp23 = icmp slt i32 %26, 20, !dbg !1320
  br i1 %cmp23, label %for.body, label %for.end, !dbg !1321

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 42950) #6, !dbg !1322
  %27 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1328
  %iobase25 = getelementptr inbounds %struct.hermes, %struct.hermes* %27, i32 0, i32 0, !dbg !1328
  %28 = load i8*, i8** %iobase25, align 8, !dbg !1328
  %29 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1328
  %reg_spacing26 = getelementptr inbounds %struct.hermes, %struct.hermes* %29, i32 0, i32 1, !dbg !1328
  %30 = load i32, i32* %reg_spacing26, align 8, !dbg !1328
  %shl27 = shl i32 20, %30, !dbg !1328
  %idx.ext28 = sext i32 %shl27 to i64, !dbg !1328
  %add.ptr29 = getelementptr i8, i8* %28, i64 %idx.ext28, !dbg !1328
  %call30 = call i32 @ioread16(i8* %add.ptr29) #6, !dbg !1328
  %31 = load i32, i32* %desired_state, align 4, !dbg !1330
  %cmp31 = icmp eq i32 %call30, %31, !dbg !1331
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !1332

if.then33:                                        ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !1333
  br label %return, !dbg !1333

if.end34:                                         ; preds = %for.body
  br label %for.inc, !dbg !1334

for.inc:                                          ; preds = %if.end34
  %32 = load i32, i32* %i, align 4, !dbg !1335
  %inc = add i32 %32, 1, !dbg !1335
  store i32 %inc, i32* %i, align 4, !dbg !1335
  br label %for.cond, !dbg !1336, !llvm.loop !1337

for.end:                                          ; preds = %for.cond
  store i32 -16, i32* %retval, align 4, !dbg !1339
  br label %return, !dbg !1339

return:                                           ; preds = %for.end, %if.then33, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !1340
  ret i32 %33, !dbg !1340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hermes_aux_setaddr(%struct.hermes* %hw, i32 %addr) #0 !dbg !1341 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %addr.addr = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !1344, metadata !DIExpression()), !dbg !1345
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !1346, metadata !DIExpression()), !dbg !1347
  %0 = load i32, i32* %addr.addr, align 4, !dbg !1348
  %shr = lshr i32 %0, 7, !dbg !1348
  %conv = trunc i32 %shr to i16, !dbg !1348
  %1 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1348
  %iobase = getelementptr inbounds %struct.hermes, %struct.hermes* %1, i32 0, i32 0, !dbg !1348
  %2 = load i8*, i8** %iobase, align 8, !dbg !1348
  %3 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1348
  %reg_spacing = getelementptr inbounds %struct.hermes, %struct.hermes* %3, i32 0, i32 1, !dbg !1348
  %4 = load i32, i32* %reg_spacing, align 8, !dbg !1348
  %shl = shl i32 58, %4, !dbg !1348
  %idx.ext = sext i32 %shl to i64, !dbg !1348
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !1348
  call void @iowrite16(i16 zeroext %conv, i8* %add.ptr) #6, !dbg !1348
  %5 = load i32, i32* %addr.addr, align 4, !dbg !1349
  %and = and i32 %5, 127, !dbg !1349
  %conv1 = trunc i32 %and to i16, !dbg !1349
  %6 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1349
  %iobase2 = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 0, !dbg !1349
  %7 = load i8*, i8** %iobase2, align 8, !dbg !1349
  %8 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !1349
  %reg_spacing3 = getelementptr inbounds %struct.hermes, %struct.hermes* %8, i32 0, i32 1, !dbg !1349
  %9 = load i32, i32* %reg_spacing3, align 8, !dbg !1349
  %shl4 = shl i32 60, %9, !dbg !1349
  %idx.ext5 = sext i32 %shl4 to i64, !dbg !1349
  %add.ptr6 = getelementptr i8, i8* %7, i64 %idx.ext5, !dbg !1349
  call void @iowrite16(i16 zeroext %conv1, i8* %add.ptr6) #6, !dbg !1349
  ret void, !dbg !1350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !1351 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !1355, metadata !DIExpression()), !dbg !1356
  %call = call i64 @arch_local_save_flags() #6, !dbg !1357
  store i64 %call, i64* %f, align 8, !dbg !1358
  call void @arch_local_irq_disable() #6, !dbg !1359
  %0 = load i64, i64* %f, align 8, !dbg !1360
  ret i64 %0, !dbg !1361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1362 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1363, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1366, metadata !DIExpression()), !dbg !1365
  %0 = load i64, i64* %__edi, align 8, !dbg !1365
  store i64 %0, i64* %__edi, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1367, metadata !DIExpression()), !dbg !1365
  %1 = load i64, i64* %__esi, align 8, !dbg !1365
  store i64 %1, i64* %__esi, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1368, metadata !DIExpression()), !dbg !1365
  %2 = load i64, i64* %__edx, align 8, !dbg !1365
  store i64 %2, i64* %__edx, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1369, metadata !DIExpression()), !dbg !1365
  %3 = load i64, i64* %__ecx, align 8, !dbg !1365
  store i64 %3, i64* %__ecx, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1370, metadata !DIExpression()), !dbg !1365
  %4 = load i64, i64* %__eax, align 8, !dbg !1365
  store i64 %4, i64* %__eax, align 8, !dbg !1365
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1365
  %6 = call i64 @llvm.read_register.i64(metadata !128), !dbg !1371
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !1371, !srcloc !1374
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1371
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1371
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1371
  call void @llvm.write_register.i64(metadata !128, i64 %asmresult1), !dbg !1371
  %8 = load i64, i64* %__eax, align 8, !dbg !1371
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1375, metadata !DIExpression()), !dbg !1377
  store i64 -1, i64* %__mask, align 8, !dbg !1377
  %9 = load i64, i64* %__mask, align 8, !dbg !1377
  store i64 %9, i64* %tmp, align 8, !dbg !1377
  %10 = load i64, i64* %tmp, align 8, !dbg !1377
  %and = and i64 %8, %10, !dbg !1371
  store i64 %and, i64* %__ret, align 8, !dbg !1371
  %11 = load i64, i64* %__ret, align 8, !dbg !1365
  store i64 %11, i64* %tmp2, align 8, !dbg !1378
  %12 = load i64, i64* %tmp2, align 8, !dbg !1365
  ret i64 %12, !dbg !1379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !1380 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1383, metadata !DIExpression()), !dbg !1385
  %0 = load i64, i64* %__edi, align 8, !dbg !1385
  store i64 %0, i64* %__edi, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1386, metadata !DIExpression()), !dbg !1385
  %1 = load i64, i64* %__esi, align 8, !dbg !1385
  store i64 %1, i64* %__esi, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1387, metadata !DIExpression()), !dbg !1385
  %2 = load i64, i64* %__edx, align 8, !dbg !1385
  store i64 %2, i64* %__edx, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1388, metadata !DIExpression()), !dbg !1385
  %3 = load i64, i64* %__ecx, align 8, !dbg !1385
  store i64 %3, i64* %__ecx, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1389, metadata !DIExpression()), !dbg !1385
  %4 = load i64, i64* %__eax, align 8, !dbg !1385
  store i64 %4, i64* %__eax, align 8, !dbg !1385
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !1385
  %6 = call i64 @llvm.read_register.i64(metadata !128), !dbg !1385
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !1385, !srcloc !1390
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1385
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1385
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1385
  call void @llvm.write_register.i64(metadata !128, i64 %asmresult1), !dbg !1385
  ret void, !dbg !1391
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !1392 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !1395, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1397, metadata !DIExpression()), !dbg !1399
  %0 = load i64, i64* %__edi, align 8, !dbg !1399
  store i64 %0, i64* %__edi, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1400, metadata !DIExpression()), !dbg !1399
  %1 = load i64, i64* %__esi, align 8, !dbg !1399
  store i64 %1, i64* %__esi, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1401, metadata !DIExpression()), !dbg !1399
  %2 = load i64, i64* %__edx, align 8, !dbg !1399
  store i64 %2, i64* %__edx, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1402, metadata !DIExpression()), !dbg !1399
  %3 = load i64, i64* %__ecx, align 8, !dbg !1399
  store i64 %3, i64* %__ecx, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1403, metadata !DIExpression()), !dbg !1399
  %4 = load i64, i64* %__eax, align 8, !dbg !1399
  store i64 %4, i64* %__eax, align 8, !dbg !1399
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !1399
  %6 = call i64 @llvm.read_register.i64(metadata !128), !dbg !1399
  %7 = load i64, i64* %f.addr, align 8, !dbg !1399
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !1399, !srcloc !1404
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !1399
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !1399
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1399
  call void @llvm.write_register.i64(metadata !128, i64 %asmresult1), !dbg !1399
  ret void, !dbg !1405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !1406 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1407, metadata !DIExpression()), !dbg !1409
  %0 = load i64, i64* %__edi, align 8, !dbg !1409
  store i64 %0, i64* %__edi, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1410, metadata !DIExpression()), !dbg !1409
  %1 = load i64, i64* %__esi, align 8, !dbg !1409
  store i64 %1, i64* %__esi, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1411, metadata !DIExpression()), !dbg !1409
  %2 = load i64, i64* %__edx, align 8, !dbg !1409
  store i64 %2, i64* %__edx, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1412, metadata !DIExpression()), !dbg !1409
  %3 = load i64, i64* %__ecx, align 8, !dbg !1409
  store i64 %3, i64* %__ecx, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1413, metadata !DIExpression()), !dbg !1409
  %4 = load i64, i64* %__eax, align 8, !dbg !1409
  store i64 %4, i64* %__eax, align 8, !dbg !1409
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !1409
  %6 = call i64 @llvm.read_register.i64(metadata !128), !dbg !1409
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !1409, !srcloc !1414
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1409
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1409
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1409
  call void @llvm.write_register.i64(metadata !128, i64 %asmresult1), !dbg !1409
  ret void, !dbg !1415
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!128}
!llvm.module.flags = !{!129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hermes_ops_local", scope: !2, file: !3, line: 760, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/wireless/intersil/orinoco/hermes.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !{!7, !12, !14, !17, !19}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !13, line: 29, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !18, line: 19, baseType: !14)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0}
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hermes_ops", file: !23, line: 379, size: 1024, elements: !24)
!23 = !DIFile(filename: "drivers/net/wireless/intersil/orinoco/hermes.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !44, !55, !59, !64, !68, !74, !78, !82, !89, !93, !94, !101, !122, !123, !127}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !22, file: !23, line: 380, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hermes", file: !23, line: 408, size: 256, elements: !32)
!32 = !{!33, !35, !36, !37, !41, !43}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !31, file: !23, line: 409, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reg_spacing", scope: !31, file: !23, line: 410, baseType: !29, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "inten", scope: !31, file: !23, line: 413, baseType: !17, size: 16, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "eeprom_pda", scope: !31, file: !23, line: 414, baseType: !38, size: 8, offset: 112)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 30, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !31, file: !23, line: 415, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !31, file: !23, line: 416, baseType: !34, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_wait", scope: !22, file: !23, line: 381, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!29, !30, !17, !17, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hermes_response", file: !23, line: 359, size: 64, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !49, file: !23, line: 360, baseType: !17, size: 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "resp0", scope: !49, file: !23, line: 360, baseType: !17, size: 16, offset: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "resp1", scope: !49, file: !23, line: 360, baseType: !17, size: 16, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "resp2", scope: !49, file: !23, line: 360, baseType: !17, size: 16, offset: 48)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "init_cmd_wait", scope: !22, file: !23, line: 383, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!29, !30, !17, !17, !17, !17, !48}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !22, file: !23, line: 386, baseType: !60, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!29, !30, !17, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "read_ltv", scope: !22, file: !23, line: 387, baseType: !65, size: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!29, !30, !29, !17, !7, !63, !34}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "write_ltv", scope: !22, file: !23, line: 389, baseType: !69, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!29, !30, !29, !17, !17, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bap_pread", scope: !22, file: !23, line: 391, baseType: !75, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!29, !30, !29, !34, !29, !17, !17}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bap_pwrite", scope: !22, file: !23, line: 393, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!29, !30, !29, !72, !29, !17, !17}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "read_pda", scope: !22, file: !23, line: 395, baseType: !83, size: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!29, !30, !86, !87, !17}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !7)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "program_init", scope: !22, file: !23, line: 397, baseType: !90, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!29, !30, !87}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "program_end", scope: !22, file: !23, line: 398, baseType: !26, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !22, file: !23, line: 399, baseType: !95, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!29, !30, !98, !87, !87}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "lock_irqsave", scope: !22, file: !23, line: 401, baseType: !102, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105, !121}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !107, line: 83, baseType: !108)
!107 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !107, line: 71, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !107, line: 72, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !107, line: 72, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !111, file: !107, line: 73, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !107, line: 20, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !114, file: !107, line: 21, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !118, line: 25, baseType: !119)
!118 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 25, elements: !120)
!120 = !{}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_irqrestore", scope: !22, file: !23, line: 402, baseType: !102, size: 64, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "lock_irq", scope: !22, file: !23, line: 403, baseType: !124, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !105}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_irq", scope: !22, file: !23, line: 404, baseType: !124, size: 64, offset: 960)
!128 = !{!"rsp"}
!129 = !{i32 7, !"Dwarf Version", i32 4}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"Code Model", i32 2}
!133 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!134 = distinct !DISubprogram(name: "hermes_struct_init", scope: !3, file: !3, line: 187, type: !135, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !120)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !30, !34, !29}
!137 = !DILocalVariable(name: "hw", arg: 1, scope: !134, file: !3, line: 187, type: !30)
!138 = !DILocation(line: 187, column: 40, scope: !134)
!139 = !DILocalVariable(name: "address", arg: 2, scope: !134, file: !3, line: 187, type: !34)
!140 = !DILocation(line: 187, column: 58, scope: !134)
!141 = !DILocalVariable(name: "reg_spacing", arg: 3, scope: !134, file: !3, line: 188, type: !29)
!142 = !DILocation(line: 188, column: 8, scope: !134)
!143 = !DILocation(line: 190, column: 15, scope: !134)
!144 = !DILocation(line: 190, column: 2, scope: !134)
!145 = !DILocation(line: 190, column: 6, scope: !134)
!146 = !DILocation(line: 190, column: 13, scope: !134)
!147 = !DILocation(line: 191, column: 20, scope: !134)
!148 = !DILocation(line: 191, column: 2, scope: !134)
!149 = !DILocation(line: 191, column: 6, scope: !134)
!150 = !DILocation(line: 191, column: 18, scope: !134)
!151 = !DILocation(line: 192, column: 2, scope: !134)
!152 = !DILocation(line: 192, column: 6, scope: !134)
!153 = !DILocation(line: 192, column: 12, scope: !134)
!154 = !DILocation(line: 193, column: 2, scope: !134)
!155 = !DILocation(line: 193, column: 6, scope: !134)
!156 = !DILocation(line: 193, column: 17, scope: !134)
!157 = !DILocation(line: 194, column: 2, scope: !134)
!158 = !DILocation(line: 194, column: 6, scope: !134)
!159 = !DILocation(line: 194, column: 10, scope: !134)
!160 = !DILocation(line: 195, column: 1, scope: !134)
!161 = distinct !DISubprogram(name: "hermes_init", scope: !3, file: !3, line: 198, type: !27, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!162 = !DILocalVariable(name: "hw", arg: 1, scope: !161, file: !3, line: 198, type: !30)
!163 = !DILocation(line: 198, column: 39, scope: !161)
!164 = !DILocalVariable(name: "reg", scope: !161, file: !3, line: 200, type: !17)
!165 = !DILocation(line: 200, column: 6, scope: !161)
!166 = !DILocalVariable(name: "err", scope: !161, file: !3, line: 201, type: !29)
!167 = !DILocation(line: 201, column: 6, scope: !161)
!168 = !DILocalVariable(name: "k", scope: !161, file: !3, line: 202, type: !29)
!169 = !DILocation(line: 202, column: 6, scope: !161)
!170 = !DILocation(line: 205, column: 2, scope: !161)
!171 = !DILocation(line: 205, column: 6, scope: !161)
!172 = !DILocation(line: 205, column: 12, scope: !161)
!173 = !DILocation(line: 206, column: 2, scope: !161)
!174 = !DILocation(line: 207, column: 2, scope: !161)
!175 = !DILocation(line: 215, column: 4, scope: !161)
!176 = !DILocation(line: 216, column: 8, scope: !161)
!177 = !DILocation(line: 216, column: 6, scope: !161)
!178 = !DILocation(line: 217, column: 2, scope: !161)
!179 = !DILocation(line: 217, column: 9, scope: !161)
!180 = !DILocation(line: 217, column: 11, scope: !161)
!181 = !DILocation(line: 217, column: 15, scope: !161)
!182 = !DILocation(line: 217, column: 19, scope: !161)
!183 = !DILocation(line: 0, scope: !161)
!184 = !DILocation(line: 218, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 218, column: 7)
!186 = distinct !DILexicalBlock(scope: !161, file: !3, line: 217, column: 39)
!187 = !DILocation(line: 218, column: 11, scope: !185)
!188 = !DILocation(line: 218, column: 7, scope: !186)
!189 = !DILocation(line: 220, column: 4, scope: !185)
!190 = !DILocation(line: 222, column: 4, scope: !186)
!191 = !DILocation(line: 223, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 223, column: 3)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 223, column: 3)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 223, column: 3)
!195 = distinct !DILexicalBlock(scope: !186, file: !3, line: 223, column: 3)
!196 = !DILocation(line: 224, column: 9, scope: !186)
!197 = !DILocation(line: 224, column: 7, scope: !186)
!198 = distinct !{!198, !178, !199}
!199 = !DILocation(line: 225, column: 2, scope: !161)
!200 = !DILocation(line: 233, column: 8, scope: !161)
!201 = !DILocation(line: 233, column: 6, scope: !161)
!202 = !DILocation(line: 234, column: 2, scope: !161)
!203 = !DILocation(line: 238, column: 27, scope: !161)
!204 = !DILocation(line: 238, column: 8, scope: !161)
!205 = !DILocation(line: 238, column: 6, scope: !161)
!206 = !DILocation(line: 240, column: 9, scope: !161)
!207 = !DILocation(line: 240, column: 2, scope: !161)
!208 = !DILocation(line: 241, column: 1, scope: !161)
!209 = distinct !DISubprogram(name: "hermes_docmd_wait", scope: !3, file: !3, line: 252, type: !46, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!210 = !DILocalVariable(name: "hw", arg: 1, scope: !209, file: !3, line: 252, type: !30)
!211 = !DILocation(line: 252, column: 45, scope: !209)
!212 = !DILocalVariable(name: "cmd", arg: 2, scope: !209, file: !3, line: 252, type: !17)
!213 = !DILocation(line: 252, column: 53, scope: !209)
!214 = !DILocalVariable(name: "parm0", arg: 3, scope: !209, file: !3, line: 252, type: !17)
!215 = !DILocation(line: 252, column: 62, scope: !209)
!216 = !DILocalVariable(name: "resp", arg: 4, scope: !209, file: !3, line: 253, type: !48)
!217 = !DILocation(line: 253, column: 33, scope: !209)
!218 = !DILocalVariable(name: "err", scope: !209, file: !3, line: 255, type: !29)
!219 = !DILocation(line: 255, column: 6, scope: !209)
!220 = !DILocalVariable(name: "k", scope: !209, file: !3, line: 256, type: !29)
!221 = !DILocation(line: 256, column: 6, scope: !209)
!222 = !DILocalVariable(name: "reg", scope: !209, file: !3, line: 257, type: !17)
!223 = !DILocation(line: 257, column: 6, scope: !209)
!224 = !DILocalVariable(name: "status", scope: !209, file: !3, line: 258, type: !17)
!225 = !DILocation(line: 258, column: 6, scope: !209)
!226 = !DILocation(line: 260, column: 25, scope: !209)
!227 = !DILocation(line: 260, column: 29, scope: !209)
!228 = !DILocation(line: 260, column: 34, scope: !209)
!229 = !DILocation(line: 260, column: 8, scope: !209)
!230 = !DILocation(line: 260, column: 6, scope: !209)
!231 = !DILocation(line: 261, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !209, file: !3, line: 261, column: 6)
!233 = !DILocation(line: 261, column: 6, scope: !209)
!234 = !DILocation(line: 262, column: 23, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 262, column: 7)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 261, column: 11)
!237 = !DILocation(line: 262, column: 8, scope: !235)
!238 = !DILocation(line: 262, column: 7, scope: !236)
!239 = !DILocation(line: 263, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 263, column: 8)
!241 = distinct !DILexicalBlock(scope: !235, file: !3, line: 262, column: 28)
!242 = !DILocation(line: 263, column: 8, scope: !241)
!243 = !DILocation(line: 266, column: 25, scope: !240)
!244 = !DILocation(line: 266, column: 29, scope: !240)
!245 = !DILocation(line: 266, column: 37, scope: !240)
!246 = !DILocation(line: 264, column: 5, scope: !240)
!247 = !DILocation(line: 267, column: 8, scope: !241)
!248 = !DILocation(line: 268, column: 3, scope: !241)
!249 = !DILocation(line: 269, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !235, file: !3, line: 269, column: 8)
!251 = !DILocation(line: 269, column: 8, scope: !235)
!252 = !DILocation(line: 272, column: 12, scope: !250)
!253 = !DILocation(line: 272, column: 16, scope: !250)
!254 = !DILocation(line: 272, column: 24, scope: !250)
!255 = !DILocation(line: 272, column: 29, scope: !250)
!256 = !DILocation(line: 270, column: 5, scope: !250)
!257 = !DILocation(line: 273, column: 3, scope: !236)
!258 = !DILocation(line: 276, column: 8, scope: !209)
!259 = !DILocation(line: 276, column: 6, scope: !209)
!260 = !DILocation(line: 277, column: 4, scope: !209)
!261 = !DILocation(line: 278, column: 2, scope: !209)
!262 = !DILocation(line: 278, column: 12, scope: !209)
!263 = !DILocation(line: 278, column: 16, scope: !209)
!264 = !DILocation(line: 278, column: 34, scope: !209)
!265 = !DILocation(line: 278, column: 37, scope: !209)
!266 = !DILocation(line: 0, scope: !209)
!267 = !DILocation(line: 279, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !209, file: !3, line: 278, column: 40)
!269 = !DILocation(line: 280, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 280, column: 3)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 280, column: 3)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 280, column: 3)
!273 = distinct !DILexicalBlock(scope: !268, file: !3, line: 280, column: 3)
!274 = !DILocation(line: 281, column: 9, scope: !268)
!275 = !DILocation(line: 281, column: 7, scope: !268)
!276 = distinct !{!276, !261, !277}
!277 = !DILocation(line: 282, column: 2, scope: !209)
!278 = !DILocation(line: 284, column: 22, scope: !279)
!279 = distinct !DILexicalBlock(scope: !209, file: !3, line: 284, column: 6)
!280 = !DILocation(line: 284, column: 7, scope: !279)
!281 = !DILocation(line: 284, column: 6, scope: !209)
!282 = !DILocation(line: 287, column: 10, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 284, column: 27)
!284 = !DILocation(line: 287, column: 14, scope: !283)
!285 = !DILocation(line: 287, column: 22, scope: !283)
!286 = !DILocation(line: 285, column: 3, scope: !283)
!287 = !DILocation(line: 288, column: 7, scope: !283)
!288 = !DILocation(line: 289, column: 3, scope: !283)
!289 = !DILocation(line: 292, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !209, file: !3, line: 292, column: 6)
!291 = !DILocation(line: 292, column: 12, scope: !290)
!292 = !DILocation(line: 292, column: 6, scope: !209)
!293 = !DILocation(line: 294, column: 42, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 292, column: 30)
!295 = !DILocation(line: 294, column: 46, scope: !294)
!296 = !DILocation(line: 294, column: 54, scope: !294)
!297 = !DILocation(line: 293, column: 3, scope: !294)
!298 = !DILocation(line: 295, column: 7, scope: !294)
!299 = !DILocation(line: 296, column: 3, scope: !294)
!300 = !DILocation(line: 299, column: 11, scope: !209)
!301 = !DILocation(line: 299, column: 9, scope: !209)
!302 = !DILocation(line: 300, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !209, file: !3, line: 300, column: 6)
!304 = !DILocation(line: 300, column: 6, scope: !209)
!305 = !DILocation(line: 301, column: 18, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 300, column: 12)
!307 = !DILocation(line: 301, column: 3, scope: !306)
!308 = !DILocation(line: 301, column: 9, scope: !306)
!309 = !DILocation(line: 301, column: 16, scope: !306)
!310 = !DILocation(line: 302, column: 17, scope: !306)
!311 = !DILocation(line: 302, column: 3, scope: !306)
!312 = !DILocation(line: 302, column: 9, scope: !306)
!313 = !DILocation(line: 302, column: 15, scope: !306)
!314 = !DILocation(line: 303, column: 17, scope: !306)
!315 = !DILocation(line: 303, column: 3, scope: !306)
!316 = !DILocation(line: 303, column: 9, scope: !306)
!317 = !DILocation(line: 303, column: 15, scope: !306)
!318 = !DILocation(line: 304, column: 17, scope: !306)
!319 = !DILocation(line: 304, column: 3, scope: !306)
!320 = !DILocation(line: 304, column: 9, scope: !306)
!321 = !DILocation(line: 304, column: 15, scope: !306)
!322 = !DILocation(line: 305, column: 2, scope: !306)
!323 = !DILocation(line: 307, column: 2, scope: !209)
!324 = !DILocation(line: 309, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !209, file: !3, line: 309, column: 6)
!326 = !DILocation(line: 309, column: 13, scope: !325)
!327 = !DILocation(line: 309, column: 6, scope: !209)
!328 = !DILocation(line: 310, column: 7, scope: !325)
!329 = !DILocation(line: 310, column: 3, scope: !325)
!330 = !DILocation(line: 309, column: 15, scope: !325)
!331 = !DILabel(scope: !209, name: "out", file: !3, line: 312)
!332 = !DILocation(line: 312, column: 2, scope: !209)
!333 = !DILocation(line: 313, column: 9, scope: !209)
!334 = !DILocation(line: 313, column: 2, scope: !209)
!335 = distinct !DISubprogram(name: "hermes_doicmd_wait", scope: !3, file: !3, line: 134, type: !57, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!336 = !DILocalVariable(name: "hw", arg: 1, scope: !335, file: !3, line: 134, type: !30)
!337 = !DILocation(line: 134, column: 46, scope: !335)
!338 = !DILocalVariable(name: "cmd", arg: 2, scope: !335, file: !3, line: 134, type: !17)
!339 = !DILocation(line: 134, column: 54, scope: !335)
!340 = !DILocalVariable(name: "parm0", arg: 3, scope: !335, file: !3, line: 135, type: !17)
!341 = !DILocation(line: 135, column: 14, scope: !335)
!342 = !DILocalVariable(name: "parm1", arg: 4, scope: !335, file: !3, line: 135, type: !17)
!343 = !DILocation(line: 135, column: 25, scope: !335)
!344 = !DILocalVariable(name: "parm2", arg: 5, scope: !335, file: !3, line: 135, type: !17)
!345 = !DILocation(line: 135, column: 36, scope: !335)
!346 = !DILocalVariable(name: "resp", arg: 6, scope: !335, file: !3, line: 136, type: !48)
!347 = !DILocation(line: 136, column: 34, scope: !335)
!348 = !DILocalVariable(name: "err", scope: !335, file: !3, line: 138, type: !29)
!349 = !DILocation(line: 138, column: 6, scope: !335)
!350 = !DILocalVariable(name: "k", scope: !335, file: !3, line: 139, type: !29)
!351 = !DILocation(line: 139, column: 6, scope: !335)
!352 = !DILocalVariable(name: "status", scope: !335, file: !3, line: 140, type: !17)
!353 = !DILocation(line: 140, column: 6, scope: !335)
!354 = !DILocalVariable(name: "reg", scope: !335, file: !3, line: 140, type: !17)
!355 = !DILocation(line: 140, column: 14, scope: !335)
!356 = !DILocation(line: 142, column: 25, scope: !335)
!357 = !DILocation(line: 142, column: 29, scope: !335)
!358 = !DILocation(line: 142, column: 34, scope: !335)
!359 = !DILocation(line: 142, column: 41, scope: !335)
!360 = !DILocation(line: 142, column: 48, scope: !335)
!361 = !DILocation(line: 142, column: 8, scope: !335)
!362 = !DILocation(line: 142, column: 6, scope: !335)
!363 = !DILocation(line: 143, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !335, file: !3, line: 143, column: 6)
!365 = !DILocation(line: 143, column: 6, scope: !335)
!366 = !DILocation(line: 144, column: 10, scope: !364)
!367 = !DILocation(line: 144, column: 3, scope: !364)
!368 = !DILocation(line: 146, column: 8, scope: !335)
!369 = !DILocation(line: 146, column: 6, scope: !335)
!370 = !DILocation(line: 147, column: 4, scope: !335)
!371 = !DILocation(line: 148, column: 2, scope: !335)
!372 = !DILocation(line: 148, column: 12, scope: !335)
!373 = !DILocation(line: 148, column: 16, scope: !335)
!374 = !DILocation(line: 148, column: 34, scope: !335)
!375 = !DILocation(line: 148, column: 37, scope: !335)
!376 = !DILocation(line: 0, scope: !335)
!377 = !DILocation(line: 149, column: 4, scope: !378)
!378 = distinct !DILexicalBlock(scope: !335, file: !3, line: 148, column: 40)
!379 = !DILocation(line: 150, column: 3, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 150, column: 3)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 150, column: 3)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 150, column: 3)
!383 = distinct !DILexicalBlock(scope: !378, file: !3, line: 150, column: 3)
!384 = !DILocation(line: 151, column: 9, scope: !378)
!385 = !DILocation(line: 151, column: 7, scope: !378)
!386 = distinct !{!386, !371, !387}
!387 = !DILocation(line: 152, column: 2, scope: !335)
!388 = !DILocation(line: 154, column: 2, scope: !335)
!389 = !DILocation(line: 156, column: 22, scope: !390)
!390 = distinct !DILexicalBlock(scope: !335, file: !3, line: 156, column: 6)
!391 = !DILocation(line: 156, column: 7, scope: !390)
!392 = !DILocation(line: 156, column: 6, scope: !335)
!393 = !DILocation(line: 157, column: 3, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 156, column: 27)
!395 = !DILocation(line: 157, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !394, file: !3, line: 157, column: 3)
!397 = !DILocation(line: 159, column: 7, scope: !394)
!398 = !DILocation(line: 160, column: 3, scope: !394)
!399 = !DILocation(line: 163, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !335, file: !3, line: 163, column: 6)
!401 = !DILocation(line: 163, column: 12, scope: !400)
!402 = !DILocation(line: 163, column: 6, scope: !335)
!403 = !DILocation(line: 166, column: 10, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 163, column: 30)
!405 = !DILocation(line: 166, column: 14, scope: !404)
!406 = !DILocation(line: 166, column: 22, scope: !404)
!407 = !DILocation(line: 164, column: 3, scope: !404)
!408 = !DILocation(line: 167, column: 7, scope: !404)
!409 = !DILocation(line: 168, column: 3, scope: !404)
!410 = !DILocation(line: 171, column: 11, scope: !335)
!411 = !DILocation(line: 171, column: 9, scope: !335)
!412 = !DILocation(line: 172, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !335, file: !3, line: 172, column: 6)
!414 = !DILocation(line: 172, column: 6, scope: !335)
!415 = !DILocation(line: 173, column: 18, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !3, line: 172, column: 12)
!417 = !DILocation(line: 173, column: 3, scope: !416)
!418 = !DILocation(line: 173, column: 9, scope: !416)
!419 = !DILocation(line: 173, column: 16, scope: !416)
!420 = !DILocation(line: 174, column: 17, scope: !416)
!421 = !DILocation(line: 174, column: 3, scope: !416)
!422 = !DILocation(line: 174, column: 9, scope: !416)
!423 = !DILocation(line: 174, column: 15, scope: !416)
!424 = !DILocation(line: 175, column: 17, scope: !416)
!425 = !DILocation(line: 175, column: 3, scope: !416)
!426 = !DILocation(line: 175, column: 9, scope: !416)
!427 = !DILocation(line: 175, column: 15, scope: !416)
!428 = !DILocation(line: 176, column: 17, scope: !416)
!429 = !DILocation(line: 176, column: 3, scope: !416)
!430 = !DILocation(line: 176, column: 9, scope: !416)
!431 = !DILocation(line: 176, column: 15, scope: !416)
!432 = !DILocation(line: 177, column: 2, scope: !416)
!433 = !DILocation(line: 179, column: 2, scope: !335)
!434 = !DILocation(line: 181, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !335, file: !3, line: 181, column: 6)
!436 = !DILocation(line: 181, column: 13, scope: !435)
!437 = !DILocation(line: 181, column: 6, scope: !335)
!438 = !DILocation(line: 182, column: 7, scope: !435)
!439 = !DILocation(line: 182, column: 3, scope: !435)
!440 = !DILocation(line: 181, column: 15, scope: !435)
!441 = !DILabel(scope: !335, name: "out", file: !3, line: 183)
!442 = !DILocation(line: 183, column: 1, scope: !335)
!443 = !DILocation(line: 184, column: 9, scope: !335)
!444 = !DILocation(line: 184, column: 2, scope: !335)
!445 = !DILocation(line: 185, column: 1, scope: !335)
!446 = distinct !DISubprogram(name: "hermes_allocate", scope: !3, file: !3, line: 316, type: !61, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!447 = !DILocalVariable(name: "hw", arg: 1, scope: !446, file: !3, line: 316, type: !30)
!448 = !DILocation(line: 316, column: 43, scope: !446)
!449 = !DILocalVariable(name: "size", arg: 2, scope: !446, file: !3, line: 316, type: !17)
!450 = !DILocation(line: 316, column: 51, scope: !446)
!451 = !DILocalVariable(name: "fid", arg: 3, scope: !446, file: !3, line: 316, type: !63)
!452 = !DILocation(line: 316, column: 62, scope: !446)
!453 = !DILocalVariable(name: "err", scope: !446, file: !3, line: 318, type: !29)
!454 = !DILocation(line: 318, column: 6, scope: !446)
!455 = !DILocalVariable(name: "k", scope: !446, file: !3, line: 319, type: !29)
!456 = !DILocation(line: 319, column: 6, scope: !446)
!457 = !DILocalVariable(name: "reg", scope: !446, file: !3, line: 320, type: !17)
!458 = !DILocation(line: 320, column: 6, scope: !446)
!459 = !DILocation(line: 322, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !446, file: !3, line: 322, column: 6)
!461 = !DILocation(line: 322, column: 12, scope: !460)
!462 = !DILocation(line: 322, column: 36, scope: !460)
!463 = !DILocation(line: 322, column: 40, scope: !460)
!464 = !DILocation(line: 322, column: 45, scope: !460)
!465 = !DILocation(line: 322, column: 6, scope: !446)
!466 = !DILocation(line: 323, column: 3, scope: !460)
!467 = !DILocation(line: 325, column: 26, scope: !446)
!468 = !DILocation(line: 325, column: 48, scope: !446)
!469 = !DILocation(line: 325, column: 8, scope: !446)
!470 = !DILocation(line: 325, column: 6, scope: !446)
!471 = !DILocation(line: 326, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !446, file: !3, line: 326, column: 6)
!473 = !DILocation(line: 326, column: 6, scope: !446)
!474 = !DILocation(line: 327, column: 10, scope: !472)
!475 = !DILocation(line: 327, column: 3, scope: !472)
!476 = !DILocation(line: 329, column: 8, scope: !446)
!477 = !DILocation(line: 329, column: 6, scope: !446)
!478 = !DILocation(line: 330, column: 4, scope: !446)
!479 = !DILocation(line: 331, column: 2, scope: !446)
!480 = !DILocation(line: 331, column: 12, scope: !446)
!481 = !DILocation(line: 331, column: 16, scope: !446)
!482 = !DILocation(line: 331, column: 36, scope: !446)
!483 = !DILocation(line: 331, column: 39, scope: !446)
!484 = !DILocation(line: 0, scope: !446)
!485 = !DILocation(line: 332, column: 4, scope: !486)
!486 = distinct !DILexicalBlock(scope: !446, file: !3, line: 331, column: 42)
!487 = !DILocation(line: 333, column: 3, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 333, column: 3)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 333, column: 3)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 333, column: 3)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 333, column: 3)
!492 = !DILocation(line: 334, column: 9, scope: !486)
!493 = !DILocation(line: 334, column: 7, scope: !486)
!494 = distinct !{!494, !479, !495}
!495 = !DILocation(line: 335, column: 2, scope: !446)
!496 = !DILocation(line: 337, column: 22, scope: !497)
!497 = distinct !DILexicalBlock(scope: !446, file: !3, line: 337, column: 6)
!498 = !DILocation(line: 337, column: 7, scope: !497)
!499 = !DILocation(line: 337, column: 6, scope: !446)
!500 = !DILocation(line: 340, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 337, column: 27)
!502 = !DILocation(line: 340, column: 14, scope: !501)
!503 = !DILocation(line: 338, column: 3, scope: !501)
!504 = !DILocation(line: 341, column: 3, scope: !501)
!505 = !DILocation(line: 344, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !446, file: !3, line: 344, column: 6)
!507 = !DILocation(line: 344, column: 12, scope: !506)
!508 = !DILocation(line: 344, column: 6, scope: !446)
!509 = !DILocation(line: 347, column: 10, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !3, line: 344, column: 32)
!511 = !DILocation(line: 347, column: 14, scope: !510)
!512 = !DILocation(line: 345, column: 3, scope: !510)
!513 = !DILocation(line: 348, column: 3, scope: !510)
!514 = !DILocation(line: 351, column: 9, scope: !446)
!515 = !DILocation(line: 351, column: 3, scope: !446)
!516 = !DILocation(line: 351, column: 7, scope: !446)
!517 = !DILocation(line: 352, column: 2, scope: !446)
!518 = !DILocation(line: 354, column: 2, scope: !446)
!519 = !DILocation(line: 355, column: 1, scope: !446)
!520 = distinct !DISubprogram(name: "hermes_read_ltv", scope: !3, file: !3, line: 481, type: !66, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!521 = !DILocalVariable(name: "hw", arg: 1, scope: !520, file: !3, line: 481, type: !30)
!522 = !DILocation(line: 481, column: 43, scope: !520)
!523 = !DILocalVariable(name: "bap", arg: 2, scope: !520, file: !3, line: 481, type: !29)
!524 = !DILocation(line: 481, column: 51, scope: !520)
!525 = !DILocalVariable(name: "rid", arg: 3, scope: !520, file: !3, line: 481, type: !17)
!526 = !DILocation(line: 481, column: 60, scope: !520)
!527 = !DILocalVariable(name: "bufsize", arg: 4, scope: !520, file: !3, line: 482, type: !7)
!528 = !DILocation(line: 482, column: 16, scope: !520)
!529 = !DILocalVariable(name: "length", arg: 5, scope: !520, file: !3, line: 482, type: !63)
!530 = !DILocation(line: 482, column: 30, scope: !520)
!531 = !DILocalVariable(name: "buf", arg: 6, scope: !520, file: !3, line: 482, type: !34)
!532 = !DILocation(line: 482, column: 44, scope: !520)
!533 = !DILocalVariable(name: "err", scope: !520, file: !3, line: 484, type: !29)
!534 = !DILocation(line: 484, column: 6, scope: !520)
!535 = !DILocalVariable(name: "dreg", scope: !520, file: !3, line: 485, type: !29)
!536 = !DILocation(line: 485, column: 6, scope: !520)
!537 = !DILocation(line: 485, column: 13, scope: !520)
!538 = !DILocalVariable(name: "rlength", scope: !520, file: !3, line: 486, type: !17)
!539 = !DILocation(line: 486, column: 6, scope: !520)
!540 = !DILocalVariable(name: "rtype", scope: !520, file: !3, line: 486, type: !17)
!541 = !DILocation(line: 486, column: 15, scope: !520)
!542 = !DILocalVariable(name: "nwords", scope: !520, file: !3, line: 487, type: !7)
!543 = !DILocation(line: 487, column: 11, scope: !520)
!544 = !DILocation(line: 489, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !520, file: !3, line: 489, column: 6)
!546 = !DILocation(line: 489, column: 14, scope: !545)
!547 = !DILocation(line: 489, column: 6, scope: !520)
!548 = !DILocation(line: 490, column: 3, scope: !545)
!549 = !DILocation(line: 492, column: 26, scope: !520)
!550 = !DILocation(line: 492, column: 49, scope: !520)
!551 = !DILocation(line: 492, column: 8, scope: !520)
!552 = !DILocation(line: 492, column: 6, scope: !520)
!553 = !DILocation(line: 493, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !520, file: !3, line: 493, column: 6)
!555 = !DILocation(line: 493, column: 6, scope: !520)
!556 = !DILocation(line: 494, column: 10, scope: !554)
!557 = !DILocation(line: 494, column: 3, scope: !554)
!558 = !DILocation(line: 496, column: 24, scope: !520)
!559 = !DILocation(line: 496, column: 28, scope: !520)
!560 = !DILocation(line: 496, column: 33, scope: !520)
!561 = !DILocation(line: 496, column: 8, scope: !520)
!562 = !DILocation(line: 496, column: 6, scope: !520)
!563 = !DILocation(line: 497, column: 6, scope: !564)
!564 = distinct !DILexicalBlock(scope: !520, file: !3, line: 497, column: 6)
!565 = !DILocation(line: 497, column: 6, scope: !520)
!566 = !DILocation(line: 498, column: 10, scope: !564)
!567 = !DILocation(line: 498, column: 3, scope: !564)
!568 = !DILocation(line: 500, column: 12, scope: !520)
!569 = !DILocation(line: 500, column: 10, scope: !520)
!570 = !DILocation(line: 502, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !520, file: !3, line: 502, column: 6)
!572 = !DILocation(line: 502, column: 6, scope: !520)
!573 = !DILocation(line: 503, column: 3, scope: !571)
!574 = !DILocation(line: 505, column: 10, scope: !520)
!575 = !DILocation(line: 505, column: 8, scope: !520)
!576 = !DILocation(line: 507, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !520, file: !3, line: 507, column: 6)
!578 = !DILocation(line: 507, column: 6, scope: !520)
!579 = !DILocation(line: 508, column: 13, scope: !577)
!580 = !DILocation(line: 508, column: 4, scope: !577)
!581 = !DILocation(line: 508, column: 11, scope: !577)
!582 = !DILocation(line: 508, column: 3, scope: !577)
!583 = !DILocation(line: 510, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !520, file: !3, line: 510, column: 6)
!585 = !DILocation(line: 510, column: 15, scope: !584)
!586 = !DILocation(line: 510, column: 12, scope: !584)
!587 = !DILocation(line: 510, column: 6, scope: !520)
!588 = !DILocation(line: 513, column: 10, scope: !584)
!589 = !DILocation(line: 513, column: 14, scope: !584)
!590 = !DILocation(line: 513, column: 32, scope: !584)
!591 = !DILocation(line: 513, column: 37, scope: !584)
!592 = !DILocation(line: 511, column: 3, scope: !584)
!593 = !DILocation(line: 514, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !520, file: !3, line: 514, column: 6)
!595 = !DILocation(line: 514, column: 40, scope: !594)
!596 = !DILocation(line: 514, column: 38, scope: !594)
!597 = !DILocation(line: 514, column: 6, scope: !520)
!598 = !DILocation(line: 517, column: 40, scope: !594)
!599 = !DILocation(line: 517, column: 44, scope: !594)
!600 = !DILocation(line: 518, column: 10, scope: !594)
!601 = !DILocation(line: 518, column: 43, scope: !594)
!602 = !DILocation(line: 518, column: 52, scope: !594)
!603 = !DILocation(line: 518, column: 57, scope: !594)
!604 = !DILocation(line: 515, column: 3, scope: !594)
!605 = !DILocalVariable(name: "__UNIQUE_ID___x272", scope: !606, file: !3, line: 520, type: !7)
!606 = distinct !DILexicalBlock(scope: !520, file: !3, line: 520, column: 11)
!607 = !DILocation(line: 520, column: 11, scope: !606)
!608 = !DILocalVariable(name: "__UNIQUE_ID___y273", scope: !606, file: !3, line: 520, type: !7)
!609 = !DILocation(line: 520, column: 9, scope: !520)
!610 = !DILocation(line: 521, column: 20, scope: !520)
!611 = !DILocation(line: 521, column: 24, scope: !520)
!612 = !DILocation(line: 521, column: 30, scope: !520)
!613 = !DILocation(line: 521, column: 35, scope: !520)
!614 = !DILocation(line: 521, column: 2, scope: !520)
!615 = !DILocation(line: 523, column: 2, scope: !520)
!616 = !DILocation(line: 524, column: 1, scope: !520)
!617 = distinct !DISubprogram(name: "hermes_write_ltv", scope: !3, file: !3, line: 526, type: !70, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!618 = !DILocalVariable(name: "hw", arg: 1, scope: !617, file: !3, line: 526, type: !30)
!619 = !DILocation(line: 526, column: 44, scope: !617)
!620 = !DILocalVariable(name: "bap", arg: 2, scope: !617, file: !3, line: 526, type: !29)
!621 = !DILocation(line: 526, column: 52, scope: !617)
!622 = !DILocalVariable(name: "rid", arg: 3, scope: !617, file: !3, line: 526, type: !17)
!623 = !DILocation(line: 526, column: 61, scope: !617)
!624 = !DILocalVariable(name: "length", arg: 4, scope: !617, file: !3, line: 527, type: !17)
!625 = !DILocation(line: 527, column: 12, scope: !617)
!626 = !DILocalVariable(name: "value", arg: 5, scope: !617, file: !3, line: 527, type: !72)
!627 = !DILocation(line: 527, column: 32, scope: !617)
!628 = !DILocalVariable(name: "dreg", scope: !617, file: !3, line: 529, type: !29)
!629 = !DILocation(line: 529, column: 6, scope: !617)
!630 = !DILocation(line: 529, column: 13, scope: !617)
!631 = !DILocalVariable(name: "err", scope: !617, file: !3, line: 530, type: !29)
!632 = !DILocation(line: 530, column: 6, scope: !617)
!633 = !DILocalVariable(name: "count", scope: !617, file: !3, line: 531, type: !7)
!634 = !DILocation(line: 531, column: 11, scope: !617)
!635 = !DILocation(line: 533, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !617, file: !3, line: 533, column: 6)
!637 = !DILocation(line: 533, column: 13, scope: !636)
!638 = !DILocation(line: 533, column: 6, scope: !617)
!639 = !DILocation(line: 534, column: 3, scope: !636)
!640 = !DILocation(line: 536, column: 24, scope: !617)
!641 = !DILocation(line: 536, column: 28, scope: !617)
!642 = !DILocation(line: 536, column: 33, scope: !617)
!643 = !DILocation(line: 536, column: 8, scope: !617)
!644 = !DILocation(line: 536, column: 6, scope: !617)
!645 = !DILocation(line: 537, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !617, file: !3, line: 537, column: 6)
!647 = !DILocation(line: 537, column: 6, scope: !617)
!648 = !DILocation(line: 538, column: 10, scope: !646)
!649 = !DILocation(line: 538, column: 3, scope: !646)
!650 = !DILocation(line: 540, column: 2, scope: !617)
!651 = !DILocation(line: 541, column: 2, scope: !617)
!652 = !DILocation(line: 543, column: 10, scope: !617)
!653 = !DILocation(line: 543, column: 17, scope: !617)
!654 = !DILocation(line: 543, column: 8, scope: !617)
!655 = !DILocation(line: 545, column: 21, scope: !617)
!656 = !DILocation(line: 545, column: 25, scope: !617)
!657 = !DILocation(line: 545, column: 31, scope: !617)
!658 = !DILocation(line: 545, column: 38, scope: !617)
!659 = !DILocation(line: 545, column: 44, scope: !617)
!660 = !DILocation(line: 545, column: 2, scope: !617)
!661 = !DILocation(line: 547, column: 26, scope: !617)
!662 = !DILocation(line: 548, column: 5, scope: !617)
!663 = !DILocation(line: 547, column: 8, scope: !617)
!664 = !DILocation(line: 547, column: 6, scope: !617)
!665 = !DILocation(line: 550, column: 9, scope: !617)
!666 = !DILocation(line: 550, column: 2, scope: !617)
!667 = !DILocation(line: 551, column: 1, scope: !617)
!668 = distinct !DISubprogram(name: "hermes_bap_pread", scope: !3, file: !3, line: 425, type: !76, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!669 = !DILocalVariable(name: "hw", arg: 1, scope: !668, file: !3, line: 425, type: !30)
!670 = !DILocation(line: 425, column: 44, scope: !668)
!671 = !DILocalVariable(name: "bap", arg: 2, scope: !668, file: !3, line: 425, type: !29)
!672 = !DILocation(line: 425, column: 52, scope: !668)
!673 = !DILocalVariable(name: "buf", arg: 3, scope: !668, file: !3, line: 425, type: !34)
!674 = !DILocation(line: 425, column: 63, scope: !668)
!675 = !DILocalVariable(name: "len", arg: 4, scope: !668, file: !3, line: 425, type: !29)
!676 = !DILocation(line: 425, column: 72, scope: !668)
!677 = !DILocalVariable(name: "id", arg: 5, scope: !668, file: !3, line: 426, type: !17)
!678 = !DILocation(line: 426, column: 12, scope: !668)
!679 = !DILocalVariable(name: "offset", arg: 6, scope: !668, file: !3, line: 426, type: !17)
!680 = !DILocation(line: 426, column: 20, scope: !668)
!681 = !DILocalVariable(name: "dreg", scope: !668, file: !3, line: 428, type: !29)
!682 = !DILocation(line: 428, column: 6, scope: !668)
!683 = !DILocation(line: 428, column: 13, scope: !668)
!684 = !DILocalVariable(name: "err", scope: !668, file: !3, line: 429, type: !29)
!685 = !DILocation(line: 429, column: 6, scope: !668)
!686 = !DILocation(line: 431, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !668, file: !3, line: 431, column: 6)
!688 = !DILocation(line: 431, column: 11, scope: !687)
!689 = !DILocation(line: 431, column: 16, scope: !687)
!690 = !DILocation(line: 431, column: 20, scope: !687)
!691 = !DILocation(line: 431, column: 24, scope: !687)
!692 = !DILocation(line: 431, column: 6, scope: !668)
!693 = !DILocation(line: 432, column: 3, scope: !687)
!694 = !DILocation(line: 434, column: 24, scope: !668)
!695 = !DILocation(line: 434, column: 28, scope: !668)
!696 = !DILocation(line: 434, column: 33, scope: !668)
!697 = !DILocation(line: 434, column: 37, scope: !668)
!698 = !DILocation(line: 434, column: 8, scope: !668)
!699 = !DILocation(line: 434, column: 6, scope: !668)
!700 = !DILocation(line: 435, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !668, file: !3, line: 435, column: 6)
!702 = !DILocation(line: 435, column: 6, scope: !668)
!703 = !DILocation(line: 436, column: 3, scope: !701)
!704 = !DILocation(line: 439, column: 20, scope: !668)
!705 = !DILocation(line: 439, column: 24, scope: !668)
!706 = !DILocation(line: 439, column: 30, scope: !668)
!707 = !DILocation(line: 439, column: 35, scope: !668)
!708 = !DILocation(line: 439, column: 39, scope: !668)
!709 = !DILocation(line: 439, column: 2, scope: !668)
!710 = !DILabel(scope: !668, name: "out", file: !3, line: 441)
!711 = !DILocation(line: 441, column: 2, scope: !668)
!712 = !DILocation(line: 442, column: 9, scope: !668)
!713 = !DILocation(line: 442, column: 2, scope: !668)
!714 = !DILocation(line: 443, column: 1, scope: !668)
!715 = distinct !DISubprogram(name: "hermes_bap_pwrite", scope: !3, file: !3, line: 453, type: !80, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!716 = !DILocalVariable(name: "hw", arg: 1, scope: !715, file: !3, line: 453, type: !30)
!717 = !DILocation(line: 453, column: 45, scope: !715)
!718 = !DILocalVariable(name: "bap", arg: 2, scope: !715, file: !3, line: 453, type: !29)
!719 = !DILocation(line: 453, column: 53, scope: !715)
!720 = !DILocalVariable(name: "buf", arg: 3, scope: !715, file: !3, line: 453, type: !72)
!721 = !DILocation(line: 453, column: 70, scope: !715)
!722 = !DILocalVariable(name: "len", arg: 4, scope: !715, file: !3, line: 454, type: !29)
!723 = !DILocation(line: 454, column: 13, scope: !715)
!724 = !DILocalVariable(name: "id", arg: 5, scope: !715, file: !3, line: 454, type: !17)
!725 = !DILocation(line: 454, column: 22, scope: !715)
!726 = !DILocalVariable(name: "offset", arg: 6, scope: !715, file: !3, line: 454, type: !17)
!727 = !DILocation(line: 454, column: 30, scope: !715)
!728 = !DILocalVariable(name: "dreg", scope: !715, file: !3, line: 456, type: !29)
!729 = !DILocation(line: 456, column: 6, scope: !715)
!730 = !DILocation(line: 456, column: 13, scope: !715)
!731 = !DILocalVariable(name: "err", scope: !715, file: !3, line: 457, type: !29)
!732 = !DILocation(line: 457, column: 6, scope: !715)
!733 = !DILocation(line: 459, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !715, file: !3, line: 459, column: 6)
!735 = !DILocation(line: 459, column: 10, scope: !734)
!736 = !DILocation(line: 459, column: 6, scope: !715)
!737 = !DILocation(line: 460, column: 3, scope: !734)
!738 = !DILocation(line: 462, column: 24, scope: !715)
!739 = !DILocation(line: 462, column: 28, scope: !715)
!740 = !DILocation(line: 462, column: 33, scope: !715)
!741 = !DILocation(line: 462, column: 37, scope: !715)
!742 = !DILocation(line: 462, column: 8, scope: !715)
!743 = !DILocation(line: 462, column: 6, scope: !715)
!744 = !DILocation(line: 463, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !715, file: !3, line: 463, column: 6)
!746 = !DILocation(line: 463, column: 6, scope: !715)
!747 = !DILocation(line: 464, column: 3, scope: !745)
!748 = !DILocation(line: 467, column: 21, scope: !715)
!749 = !DILocation(line: 467, column: 25, scope: !715)
!750 = !DILocation(line: 467, column: 31, scope: !715)
!751 = !DILocation(line: 467, column: 36, scope: !715)
!752 = !DILocation(line: 467, column: 2, scope: !715)
!753 = !DILabel(scope: !715, name: "out", file: !3, line: 469)
!754 = !DILocation(line: 469, column: 2, scope: !715)
!755 = !DILocation(line: 470, column: 9, scope: !715)
!756 = !DILocation(line: 470, column: 2, scope: !715)
!757 = !DILocation(line: 471, column: 1, scope: !715)
!758 = distinct !DISubprogram(name: "hermes_read_pda", scope: !3, file: !3, line: 687, type: !84, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!759 = !DILocalVariable(name: "hw", arg: 1, scope: !758, file: !3, line: 687, type: !30)
!760 = !DILocation(line: 687, column: 43, scope: !758)
!761 = !DILocalVariable(name: "pda", arg: 2, scope: !758, file: !3, line: 687, type: !86)
!762 = !DILocation(line: 687, column: 55, scope: !758)
!763 = !DILocalVariable(name: "pda_addr", arg: 3, scope: !758, file: !3, line: 687, type: !87)
!764 = !DILocation(line: 687, column: 64, scope: !758)
!765 = !DILocalVariable(name: "pda_len", arg: 4, scope: !758, file: !3, line: 688, type: !17)
!766 = !DILocation(line: 688, column: 11, scope: !758)
!767 = !DILocalVariable(name: "ret", scope: !758, file: !3, line: 690, type: !29)
!768 = !DILocation(line: 690, column: 6, scope: !758)
!769 = !DILocalVariable(name: "pda_size", scope: !758, file: !3, line: 691, type: !17)
!770 = !DILocation(line: 691, column: 6, scope: !758)
!771 = !DILocalVariable(name: "data_len", scope: !758, file: !3, line: 692, type: !17)
!772 = !DILocation(line: 692, column: 6, scope: !758)
!773 = !DILocation(line: 692, column: 17, scope: !758)
!774 = !DILocalVariable(name: "data", scope: !758, file: !3, line: 693, type: !86)
!775 = !DILocation(line: 693, column: 10, scope: !758)
!776 = !DILocation(line: 693, column: 17, scope: !758)
!777 = !DILocation(line: 695, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !758, file: !3, line: 695, column: 6)
!779 = !DILocation(line: 695, column: 10, scope: !778)
!780 = !DILocation(line: 695, column: 6, scope: !758)
!781 = !DILocation(line: 699, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !3, line: 695, column: 22)
!783 = !DILocation(line: 699, column: 13, scope: !782)
!784 = !DILocation(line: 699, column: 18, scope: !782)
!785 = !DILocation(line: 699, column: 27, scope: !782)
!786 = !DILocation(line: 699, column: 7, scope: !782)
!787 = !DILocation(line: 700, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !782, file: !3, line: 700, column: 7)
!789 = !DILocation(line: 700, column: 7, scope: !782)
!790 = !DILocation(line: 701, column: 11, scope: !788)
!791 = !DILocation(line: 701, column: 4, scope: !788)
!792 = !DILocation(line: 702, column: 2, scope: !782)
!793 = !DILocation(line: 706, column: 12, scope: !794)
!794 = distinct !DILexicalBlock(scope: !778, file: !3, line: 702, column: 9)
!795 = !DILocation(line: 706, column: 3, scope: !794)
!796 = !DILocation(line: 706, column: 10, scope: !794)
!797 = !DILocation(line: 708, column: 3, scope: !794)
!798 = !DILocation(line: 708, column: 10, scope: !794)
!799 = !DILocation(line: 709, column: 14, scope: !794)
!800 = !DILocation(line: 709, column: 22, scope: !794)
!801 = !DILocation(line: 709, column: 12, scope: !794)
!802 = !DILocation(line: 710, column: 10, scope: !794)
!803 = !DILocation(line: 710, column: 14, scope: !794)
!804 = !DILocation(line: 710, column: 8, scope: !794)
!805 = !DILocation(line: 714, column: 27, scope: !758)
!806 = !DILocation(line: 714, column: 8, scope: !758)
!807 = !DILocation(line: 714, column: 6, scope: !758)
!808 = !DILocation(line: 715, column: 2, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 715, column: 2)
!810 = distinct !DILexicalBlock(scope: !758, file: !3, line: 715, column: 2)
!811 = !DILocation(line: 715, column: 2, scope: !810)
!812 = !DILocation(line: 716, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !758, file: !3, line: 716, column: 6)
!814 = !DILocation(line: 716, column: 6, scope: !758)
!815 = !DILocation(line: 717, column: 10, scope: !813)
!816 = !DILocation(line: 717, column: 3, scope: !813)
!817 = !DILocation(line: 720, column: 21, scope: !758)
!818 = !DILocation(line: 720, column: 25, scope: !758)
!819 = !DILocation(line: 720, column: 2, scope: !758)
!820 = !DILocation(line: 721, column: 20, scope: !758)
!821 = !DILocation(line: 721, column: 40, scope: !758)
!822 = !DILocation(line: 721, column: 46, scope: !758)
!823 = !DILocation(line: 721, column: 55, scope: !758)
!824 = !DILocation(line: 721, column: 2, scope: !758)
!825 = !DILocation(line: 724, column: 27, scope: !758)
!826 = !DILocation(line: 724, column: 8, scope: !758)
!827 = !DILocation(line: 724, column: 6, scope: !758)
!828 = !DILocation(line: 725, column: 2, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 725, column: 2)
!830 = distinct !DILexicalBlock(scope: !758, file: !3, line: 725, column: 2)
!831 = !DILocation(line: 725, column: 2, scope: !830)
!832 = !DILocation(line: 728, column: 13, scope: !758)
!833 = !DILocation(line: 728, column: 11, scope: !758)
!834 = !DILocation(line: 729, column: 2, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 729, column: 2)
!836 = distinct !DILexicalBlock(scope: !758, file: !3, line: 729, column: 2)
!837 = !DILocation(line: 729, column: 2, scope: !836)
!838 = !DILocation(line: 731, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !758, file: !3, line: 731, column: 6)
!840 = !DILocation(line: 731, column: 17, scope: !839)
!841 = !DILocation(line: 731, column: 15, scope: !839)
!842 = !DILocation(line: 731, column: 6, scope: !758)
!843 = !DILocation(line: 732, column: 3, scope: !839)
!844 = !DILocation(line: 734, column: 2, scope: !758)
!845 = !DILocation(line: 735, column: 1, scope: !758)
!846 = distinct !DISubprogram(name: "hermesi_program_init", scope: !3, file: !3, line: 597, type: !91, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!847 = !DILocalVariable(name: "hw", arg: 1, scope: !846, file: !3, line: 597, type: !30)
!848 = !DILocation(line: 597, column: 48, scope: !846)
!849 = !DILocalVariable(name: "offset", arg: 2, scope: !846, file: !3, line: 597, type: !87)
!850 = !DILocation(line: 597, column: 56, scope: !846)
!851 = !DILocalVariable(name: "err", scope: !846, file: !3, line: 599, type: !29)
!852 = !DILocation(line: 599, column: 6, scope: !846)
!853 = !DILocation(line: 607, column: 2, scope: !846)
!854 = !DILocation(line: 610, column: 8, scope: !846)
!855 = !DILocation(line: 610, column: 12, scope: !846)
!856 = !DILocation(line: 610, column: 17, scope: !846)
!857 = !DILocation(line: 610, column: 31, scope: !846)
!858 = !DILocation(line: 610, column: 6, scope: !846)
!859 = !DILocation(line: 613, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !846, file: !3, line: 613, column: 6)
!861 = !DILocation(line: 613, column: 6, scope: !846)
!862 = !DILocation(line: 614, column: 10, scope: !860)
!863 = !DILocation(line: 614, column: 3, scope: !860)
!864 = !DILocation(line: 616, column: 8, scope: !846)
!865 = !DILocation(line: 616, column: 12, scope: !846)
!866 = !DILocation(line: 616, column: 17, scope: !846)
!867 = !DILocation(line: 616, column: 31, scope: !846)
!868 = !DILocation(line: 616, column: 6, scope: !846)
!869 = !DILocation(line: 619, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !846, file: !3, line: 619, column: 6)
!871 = !DILocation(line: 619, column: 6, scope: !846)
!872 = !DILocation(line: 620, column: 10, scope: !870)
!873 = !DILocation(line: 620, column: 3, scope: !870)
!874 = !DILocation(line: 622, column: 27, scope: !846)
!875 = !DILocation(line: 622, column: 8, scope: !846)
!876 = !DILocation(line: 622, column: 6, scope: !846)
!877 = !DILocation(line: 623, column: 2, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 623, column: 2)
!879 = distinct !DILexicalBlock(scope: !846, file: !3, line: 623, column: 2)
!880 = !DILocation(line: 623, column: 2, scope: !879)
!881 = !DILocation(line: 625, column: 6, scope: !882)
!882 = distinct !DILexicalBlock(scope: !846, file: !3, line: 625, column: 6)
!883 = !DILocation(line: 625, column: 6, scope: !846)
!884 = !DILocation(line: 626, column: 10, scope: !882)
!885 = !DILocation(line: 626, column: 3, scope: !882)
!886 = !DILocation(line: 628, column: 2, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 628, column: 2)
!888 = distinct !DILexicalBlock(scope: !846, file: !3, line: 628, column: 2)
!889 = !DILocation(line: 628, column: 2, scope: !888)
!890 = !DILocation(line: 629, column: 8, scope: !846)
!891 = !DILocation(line: 629, column: 12, scope: !846)
!892 = !DILocation(line: 629, column: 17, scope: !846)
!893 = !DILocation(line: 629, column: 31, scope: !846)
!894 = !DILocation(line: 631, column: 10, scope: !846)
!895 = !DILocation(line: 631, column: 17, scope: !846)
!896 = !DILocation(line: 632, column: 10, scope: !846)
!897 = !DILocation(line: 632, column: 17, scope: !846)
!898 = !DILocation(line: 629, column: 6, scope: !846)
!899 = !DILocation(line: 635, column: 2, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 635, column: 2)
!901 = distinct !DILexicalBlock(scope: !846, file: !3, line: 635, column: 2)
!902 = !DILocation(line: 635, column: 2, scope: !901)
!903 = !DILocation(line: 637, column: 9, scope: !846)
!904 = !DILocation(line: 637, column: 2, scope: !846)
!905 = !DILocation(line: 638, column: 1, scope: !846)
!906 = distinct !DISubprogram(name: "hermesi_program_end", scope: !3, file: !3, line: 646, type: !27, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!907 = !DILocalVariable(name: "hw", arg: 1, scope: !906, file: !3, line: 646, type: !30)
!908 = !DILocation(line: 646, column: 47, scope: !906)
!909 = !DILocalVariable(name: "resp", scope: !906, file: !3, line: 648, type: !49)
!910 = !DILocation(line: 648, column: 25, scope: !906)
!911 = !DILocalVariable(name: "rc", scope: !906, file: !3, line: 649, type: !29)
!912 = !DILocation(line: 649, column: 6, scope: !906)
!913 = !DILocalVariable(name: "err", scope: !906, file: !3, line: 650, type: !29)
!914 = !DILocation(line: 650, column: 6, scope: !906)
!915 = !DILocation(line: 652, column: 7, scope: !906)
!916 = !DILocation(line: 652, column: 11, scope: !906)
!917 = !DILocation(line: 652, column: 16, scope: !906)
!918 = !DILocation(line: 652, column: 25, scope: !906)
!919 = !DILocation(line: 652, column: 5, scope: !906)
!920 = !DILocation(line: 654, column: 2, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 654, column: 2)
!922 = distinct !DILexicalBlock(scope: !906, file: !3, line: 654, column: 2)
!923 = !DILocation(line: 654, column: 2, scope: !922)
!924 = !DILocation(line: 658, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !906, file: !3, line: 658, column: 6)
!926 = !DILocation(line: 658, column: 10, scope: !925)
!927 = !DILocation(line: 658, column: 16, scope: !925)
!928 = !DILocation(line: 659, column: 13, scope: !925)
!929 = !DILocation(line: 659, column: 8, scope: !925)
!930 = !DILocation(line: 659, column: 20, scope: !925)
!931 = !DILocation(line: 659, column: 45, scope: !925)
!932 = !DILocation(line: 658, column: 6, scope: !906)
!933 = !DILocation(line: 660, column: 6, scope: !925)
!934 = !DILocation(line: 660, column: 3, scope: !925)
!935 = !DILocation(line: 662, column: 27, scope: !906)
!936 = !DILocation(line: 662, column: 8, scope: !906)
!937 = !DILocation(line: 662, column: 6, scope: !906)
!938 = !DILocation(line: 663, column: 2, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 663, column: 2)
!940 = distinct !DILexicalBlock(scope: !906, file: !3, line: 663, column: 2)
!941 = !DILocation(line: 663, column: 2, scope: !940)
!942 = !DILocation(line: 666, column: 2, scope: !906)
!943 = !DILocation(line: 669, column: 9, scope: !906)
!944 = !DILocation(line: 669, column: 13, scope: !906)
!945 = !DILocation(line: 669, column: 18, scope: !906)
!946 = !DILocation(line: 669, column: 32, scope: !906)
!947 = !DILocation(line: 672, column: 9, scope: !906)
!948 = !DILocation(line: 672, column: 14, scope: !906)
!949 = !DILocation(line: 672, column: 19, scope: !906)
!950 = !DILocation(line: 672, column: 2, scope: !906)
!951 = distinct !DISubprogram(name: "hermes_program_bytes", scope: !3, file: !3, line: 675, type: !96, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!952 = !DILocalVariable(name: "hw", arg: 1, scope: !951, file: !3, line: 675, type: !30)
!953 = !DILocation(line: 675, column: 48, scope: !951)
!954 = !DILocalVariable(name: "data", arg: 2, scope: !951, file: !3, line: 675, type: !98)
!955 = !DILocation(line: 675, column: 64, scope: !951)
!956 = !DILocalVariable(name: "addr", arg: 3, scope: !951, file: !3, line: 676, type: !87)
!957 = !DILocation(line: 676, column: 9, scope: !951)
!958 = !DILocalVariable(name: "len", arg: 4, scope: !951, file: !3, line: 676, type: !87)
!959 = !DILocation(line: 676, column: 19, scope: !951)
!960 = !DILocation(line: 681, column: 21, scope: !951)
!961 = !DILocation(line: 681, column: 25, scope: !951)
!962 = !DILocation(line: 681, column: 2, scope: !951)
!963 = !DILocation(line: 682, column: 21, scope: !951)
!964 = !DILocation(line: 682, column: 41, scope: !951)
!965 = !DILocation(line: 682, column: 47, scope: !951)
!966 = !DILocation(line: 682, column: 2, scope: !951)
!967 = !DILocation(line: 683, column: 2, scope: !951)
!968 = distinct !DISubprogram(name: "hermes_lock_irqsave", scope: !3, file: !3, line: 737, type: !103, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!969 = !DILocalVariable(name: "lock", arg: 1, scope: !970, file: !971, line: 327, type: !105)
!970 = distinct !DISubprogram(name: "spinlock_check", scope: !971, file: !971, line: 327, type: !972, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!971 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !105}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !107, line: 29, baseType: !114)
!976 = !DILocation(line: 327, column: 67, scope: !970, inlinedAt: !977)
!977 = distinct !DILocation(line: 740, column: 2, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 740, column: 2)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 740, column: 2)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 740, column: 2)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 740, column: 2)
!982 = distinct !DILexicalBlock(scope: !968, file: !3, line: 740, column: 2)
!983 = !DILocalVariable(name: "lock", arg: 1, scope: !968, file: !3, line: 737, type: !105)
!984 = !DILocation(line: 737, column: 45, scope: !968)
!985 = !DILocalVariable(name: "flags", arg: 2, scope: !968, file: !3, line: 738, type: !121)
!986 = !DILocation(line: 738, column: 20, scope: !968)
!987 = !DILocation(line: 740, column: 2, scope: !968)
!988 = !DILocation(line: 740, column: 2, scope: !982)
!989 = !DILocalVariable(name: "__dummy", scope: !990, file: !3, line: 740, type: !19)
!990 = distinct !DILexicalBlock(scope: !981, file: !3, line: 740, column: 2)
!991 = !DILocation(line: 740, column: 2, scope: !990)
!992 = !DILocalVariable(name: "__dummy2", scope: !990, file: !3, line: 740, type: !19)
!993 = !DILocation(line: 740, column: 2, scope: !981)
!994 = !DILocation(line: 740, column: 2, scope: !980)
!995 = !DILocation(line: 740, column: 2, scope: !996)
!996 = distinct !DILexicalBlock(scope: !980, file: !3, line: 740, column: 2)
!997 = !DILocalVariable(name: "__dummy", scope: !998, file: !3, line: 740, type: !19)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 740, column: 2)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 740, column: 2)
!1000 = !DILocation(line: 740, column: 2, scope: !998)
!1001 = !DILocalVariable(name: "__dummy2", scope: !998, file: !3, line: 740, type: !19)
!1002 = !DILocation(line: 740, column: 2, scope: !999)
!1003 = !DILocation(line: 740, column: 2, scope: !979)
!1004 = !{i32 -2141593281}
!1005 = !DILocation(line: 740, column: 2, scope: !978)
!1006 = !DILocation(line: 329, column: 10, scope: !970, inlinedAt: !977)
!1007 = !DILocation(line: 329, column: 16, scope: !970, inlinedAt: !977)
!1008 = !DILocation(line: 741, column: 1, scope: !968)
!1009 = distinct !DISubprogram(name: "hermes_unlock_irqrestore", scope: !3, file: !3, line: 743, type: !103, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1010 = !DILocalVariable(name: "lock", arg: 1, scope: !1011, file: !971, line: 407, type: !105)
!1011 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !971, file: !971, line: 407, type: !1012, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !105, !19}
!1014 = !DILocation(line: 407, column: 64, scope: !1011, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 746, column: 2, scope: !1009)
!1016 = !DILocalVariable(name: "flags", arg: 2, scope: !1011, file: !971, line: 407, type: !19)
!1017 = !DILocation(line: 407, column: 84, scope: !1011, inlinedAt: !1015)
!1018 = !DILocalVariable(name: "lock", arg: 1, scope: !1009, file: !3, line: 743, type: !105)
!1019 = !DILocation(line: 743, column: 50, scope: !1009)
!1020 = !DILocalVariable(name: "flags", arg: 2, scope: !1009, file: !3, line: 744, type: !121)
!1021 = !DILocation(line: 744, column: 25, scope: !1009)
!1022 = !DILocation(line: 746, column: 25, scope: !1009)
!1023 = !DILocation(line: 746, column: 32, scope: !1009)
!1024 = !DILocation(line: 746, column: 31, scope: !1009)
!1025 = !DILocalVariable(name: "__dummy", scope: !1026, file: !971, line: 409, type: !19)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !971, line: 409, column: 2)
!1027 = distinct !DILexicalBlock(scope: !1011, file: !971, line: 409, column: 2)
!1028 = !DILocation(line: 409, column: 2, scope: !1026, inlinedAt: !1015)
!1029 = !DILocalVariable(name: "__dummy2", scope: !1026, file: !971, line: 409, type: !19)
!1030 = !DILocalVariable(name: "__dummy", scope: !1031, file: !971, line: 409, type: !19)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !971, line: 409, column: 2)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !971, line: 409, column: 2)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !971, line: 409, column: 2)
!1034 = distinct !DILexicalBlock(scope: !1027, file: !971, line: 409, column: 2)
!1035 = !DILocation(line: 409, column: 2, scope: !1031, inlinedAt: !1015)
!1036 = !DILocalVariable(name: "__dummy2", scope: !1031, file: !971, line: 409, type: !19)
!1037 = !DILocation(line: 409, column: 2, scope: !1032, inlinedAt: !1015)
!1038 = !DILocation(line: 409, column: 2, scope: !1039, inlinedAt: !1015)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !971, line: 409, column: 2)
!1040 = !{i32 -2145457785}
!1041 = !DILocation(line: 409, column: 2, scope: !1042, inlinedAt: !1015)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !971, line: 409, column: 2)
!1043 = !DILocation(line: 747, column: 1, scope: !1009)
!1044 = distinct !DISubprogram(name: "hermes_lock_irq", scope: !3, file: !3, line: 749, type: !125, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1045 = !DILocalVariable(name: "lock", arg: 1, scope: !1046, file: !971, line: 377, type: !105)
!1046 = distinct !DISubprogram(name: "spin_lock_irq", scope: !971, file: !971, line: 377, type: !125, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1047 = !DILocation(line: 377, column: 55, scope: !1046, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 751, column: 2, scope: !1044)
!1049 = !DILocalVariable(name: "lock", arg: 1, scope: !1044, file: !3, line: 749, type: !105)
!1050 = !DILocation(line: 749, column: 41, scope: !1044)
!1051 = !DILocation(line: 751, column: 16, scope: !1044)
!1052 = !DILocation(line: 379, column: 2, scope: !1053, inlinedAt: !1048)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !971, line: 379, column: 2)
!1054 = distinct !DILexicalBlock(scope: !1046, file: !971, line: 379, column: 2)
!1055 = !DILocation(line: 379, column: 2, scope: !1056, inlinedAt: !1048)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !971, line: 379, column: 2)
!1057 = !{i32 -2145460577}
!1058 = !DILocation(line: 379, column: 2, scope: !1059, inlinedAt: !1048)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !971, line: 379, column: 2)
!1060 = !DILocation(line: 752, column: 1, scope: !1044)
!1061 = distinct !DISubprogram(name: "hermes_unlock_irq", scope: !3, file: !3, line: 754, type: !125, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1062 = !DILocalVariable(name: "lock", arg: 1, scope: !1063, file: !971, line: 402, type: !105)
!1063 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !971, file: !971, line: 402, type: !125, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1064 = !DILocation(line: 402, column: 57, scope: !1063, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 756, column: 2, scope: !1061)
!1066 = !DILocalVariable(name: "lock", arg: 1, scope: !1061, file: !3, line: 754, type: !105)
!1067 = !DILocation(line: 754, column: 43, scope: !1061)
!1068 = !DILocation(line: 756, column: 18, scope: !1061)
!1069 = !DILocation(line: 404, column: 2, scope: !1070, inlinedAt: !1065)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !971, line: 404, column: 2)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !971, line: 404, column: 2)
!1072 = !DILocation(line: 404, column: 2, scope: !1073, inlinedAt: !1065)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !971, line: 404, column: 2)
!1074 = !{i32 -2145458829}
!1075 = !DILocation(line: 404, column: 2, scope: !1076, inlinedAt: !1065)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !971, line: 404, column: 2)
!1077 = !DILocation(line: 757, column: 1, scope: !1061)
!1078 = distinct !DISubprogram(name: "hermes_issue_cmd", scope: !3, file: !3, line: 105, type: !1079, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!29, !30, !17, !17, !17, !17}
!1081 = !DILocalVariable(name: "hw", arg: 1, scope: !1078, file: !3, line: 105, type: !30)
!1082 = !DILocation(line: 105, column: 44, scope: !1078)
!1083 = !DILocalVariable(name: "cmd", arg: 2, scope: !1078, file: !3, line: 105, type: !17)
!1084 = !DILocation(line: 105, column: 52, scope: !1078)
!1085 = !DILocalVariable(name: "param0", arg: 3, scope: !1078, file: !3, line: 105, type: !17)
!1086 = !DILocation(line: 105, column: 61, scope: !1078)
!1087 = !DILocalVariable(name: "param1", arg: 4, scope: !1078, file: !3, line: 106, type: !17)
!1088 = !DILocation(line: 106, column: 12, scope: !1078)
!1089 = !DILocalVariable(name: "param2", arg: 5, scope: !1078, file: !3, line: 106, type: !17)
!1090 = !DILocation(line: 106, column: 24, scope: !1078)
!1091 = !DILocalVariable(name: "k", scope: !1078, file: !3, line: 108, type: !29)
!1092 = !DILocation(line: 108, column: 6, scope: !1078)
!1093 = !DILocalVariable(name: "reg", scope: !1078, file: !3, line: 109, type: !17)
!1094 = !DILocation(line: 109, column: 6, scope: !1078)
!1095 = !DILocation(line: 112, column: 8, scope: !1078)
!1096 = !DILocation(line: 112, column: 6, scope: !1078)
!1097 = !DILocation(line: 113, column: 2, scope: !1078)
!1098 = !DILocation(line: 113, column: 10, scope: !1078)
!1099 = !DILocation(line: 113, column: 14, scope: !1078)
!1100 = !DILocation(line: 113, column: 33, scope: !1078)
!1101 = !DILocation(line: 113, column: 36, scope: !1078)
!1102 = !DILocation(line: 0, scope: !1078)
!1103 = !DILocation(line: 114, column: 4, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 113, column: 39)
!1105 = !DILocation(line: 115, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 115, column: 3)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 115, column: 3)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 115, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 115, column: 3)
!1110 = !DILocation(line: 116, column: 9, scope: !1104)
!1111 = !DILocation(line: 116, column: 7, scope: !1104)
!1112 = distinct !{!1112, !1097, !1113}
!1113 = !DILocation(line: 117, column: 2, scope: !1078)
!1114 = !DILocation(line: 118, column: 6, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 118, column: 6)
!1116 = !DILocation(line: 118, column: 10, scope: !1115)
!1117 = !DILocation(line: 118, column: 6, scope: !1078)
!1118 = !DILocation(line: 119, column: 3, scope: !1115)
!1119 = !DILocation(line: 121, column: 2, scope: !1078)
!1120 = !DILocation(line: 122, column: 2, scope: !1078)
!1121 = !DILocation(line: 123, column: 2, scope: !1078)
!1122 = !DILocation(line: 124, column: 2, scope: !1078)
!1123 = !DILocation(line: 126, column: 2, scope: !1078)
!1124 = !DILocation(line: 127, column: 1, scope: !1078)
!1125 = distinct !DISubprogram(name: "hermes_present", scope: !23, file: !23, line: 434, type: !27, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1126 = !DILocalVariable(name: "hw", arg: 1, scope: !1125, file: !23, line: 434, type: !30)
!1127 = !DILocation(line: 434, column: 49, scope: !1125)
!1128 = !DILocation(line: 436, column: 9, scope: !1125)
!1129 = !DILocation(line: 436, column: 42, scope: !1125)
!1130 = !DILocation(line: 436, column: 2, scope: !1125)
!1131 = distinct !DISubprogram(name: "hermes_bap_seek", scope: !3, file: !3, line: 366, type: !1132, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!29, !30, !29, !17, !17}
!1134 = !DILocalVariable(name: "hw", arg: 1, scope: !1131, file: !3, line: 366, type: !30)
!1135 = !DILocation(line: 366, column: 43, scope: !1131)
!1136 = !DILocalVariable(name: "bap", arg: 2, scope: !1131, file: !3, line: 366, type: !29)
!1137 = !DILocation(line: 366, column: 51, scope: !1131)
!1138 = !DILocalVariable(name: "id", arg: 3, scope: !1131, file: !3, line: 366, type: !17)
!1139 = !DILocation(line: 366, column: 60, scope: !1131)
!1140 = !DILocalVariable(name: "offset", arg: 4, scope: !1131, file: !3, line: 366, type: !17)
!1141 = !DILocation(line: 366, column: 68, scope: !1131)
!1142 = !DILocalVariable(name: "sreg", scope: !1131, file: !3, line: 368, type: !29)
!1143 = !DILocation(line: 368, column: 6, scope: !1131)
!1144 = !DILocation(line: 368, column: 13, scope: !1131)
!1145 = !DILocalVariable(name: "oreg", scope: !1131, file: !3, line: 369, type: !29)
!1146 = !DILocation(line: 369, column: 6, scope: !1131)
!1147 = !DILocation(line: 369, column: 13, scope: !1131)
!1148 = !DILocalVariable(name: "k", scope: !1131, file: !3, line: 370, type: !29)
!1149 = !DILocation(line: 370, column: 6, scope: !1131)
!1150 = !DILocalVariable(name: "reg", scope: !1131, file: !3, line: 371, type: !17)
!1151 = !DILocation(line: 371, column: 6, scope: !1131)
!1152 = !DILocation(line: 374, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 374, column: 6)
!1154 = !DILocation(line: 374, column: 14, scope: !1153)
!1155 = !DILocation(line: 374, column: 39, scope: !1153)
!1156 = !DILocation(line: 374, column: 43, scope: !1153)
!1157 = !DILocation(line: 374, column: 50, scope: !1153)
!1158 = !DILocation(line: 374, column: 6, scope: !1131)
!1159 = !DILocation(line: 375, column: 3, scope: !1153)
!1160 = !DILocation(line: 377, column: 4, scope: !1131)
!1161 = !DILocation(line: 378, column: 8, scope: !1131)
!1162 = !DILocation(line: 378, column: 6, scope: !1131)
!1163 = !DILocation(line: 379, column: 2, scope: !1131)
!1164 = !DILocation(line: 379, column: 10, scope: !1131)
!1165 = !DILocation(line: 379, column: 14, scope: !1131)
!1166 = !DILocation(line: 379, column: 36, scope: !1131)
!1167 = !DILocation(line: 379, column: 39, scope: !1131)
!1168 = !DILocation(line: 0, scope: !1131)
!1169 = !DILocation(line: 380, column: 4, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 379, column: 42)
!1171 = !DILocation(line: 381, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 381, column: 3)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 381, column: 3)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 381, column: 3)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 381, column: 3)
!1176 = !DILocation(line: 382, column: 9, scope: !1170)
!1177 = !DILocation(line: 382, column: 7, scope: !1170)
!1178 = distinct !{!1178, !1163, !1179}
!1179 = !DILocation(line: 383, column: 2, scope: !1131)
!1180 = !DILocation(line: 385, column: 6, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 385, column: 6)
!1182 = !DILocation(line: 385, column: 10, scope: !1181)
!1183 = !DILocation(line: 385, column: 6, scope: !1131)
!1184 = !DILocation(line: 386, column: 3, scope: !1181)
!1185 = !DILocation(line: 389, column: 2, scope: !1131)
!1186 = !DILocation(line: 390, column: 2, scope: !1131)
!1187 = !DILocation(line: 393, column: 4, scope: !1131)
!1188 = !DILocation(line: 394, column: 8, scope: !1131)
!1189 = !DILocation(line: 394, column: 6, scope: !1131)
!1190 = !DILocation(line: 395, column: 2, scope: !1131)
!1191 = !DILocation(line: 395, column: 10, scope: !1131)
!1192 = !DILocation(line: 395, column: 14, scope: !1131)
!1193 = !DILocation(line: 395, column: 58, scope: !1131)
!1194 = !DILocation(line: 395, column: 61, scope: !1131)
!1195 = !DILocation(line: 396, column: 4, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 395, column: 64)
!1197 = !DILocation(line: 397, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 397, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 397, column: 3)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 397, column: 3)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 397, column: 3)
!1202 = !DILocation(line: 398, column: 9, scope: !1196)
!1203 = !DILocation(line: 398, column: 7, scope: !1196)
!1204 = distinct !{!1204, !1190, !1205}
!1205 = !DILocation(line: 399, column: 2, scope: !1131)
!1206 = !DILocation(line: 401, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 401, column: 6)
!1208 = !DILocation(line: 401, column: 13, scope: !1207)
!1209 = !DILocation(line: 401, column: 10, scope: !1207)
!1210 = !DILocation(line: 401, column: 6, scope: !1131)
!1211 = !DILocation(line: 403, column: 44, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 401, column: 21)
!1213 = !DILocation(line: 403, column: 48, scope: !1212)
!1214 = !DILocation(line: 403, column: 56, scope: !1212)
!1215 = !DILocation(line: 404, column: 11, scope: !1212)
!1216 = !DILocation(line: 404, column: 15, scope: !1212)
!1217 = !DILocation(line: 404, column: 10, scope: !1212)
!1218 = !DILocation(line: 405, column: 10, scope: !1212)
!1219 = !DILocation(line: 405, column: 15, scope: !1212)
!1220 = !DILocation(line: 405, column: 19, scope: !1212)
!1221 = !DILocation(line: 402, column: 3, scope: !1212)
!1222 = !DILocation(line: 407, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 407, column: 7)
!1224 = !DILocation(line: 407, column: 11, scope: !1223)
!1225 = !DILocation(line: 407, column: 7, scope: !1212)
!1226 = !DILocation(line: 408, column: 4, scope: !1223)
!1227 = !DILocation(line: 410, column: 3, scope: !1212)
!1228 = !DILocation(line: 413, column: 2, scope: !1131)
!1229 = !DILocation(line: 414, column: 1, scope: !1131)
!1230 = distinct !DISubprogram(name: "hermes_read_words", scope: !23, file: !23, line: 468, type: !1231, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !30, !29, !34, !7}
!1233 = !DILocalVariable(name: "hw", arg: 1, scope: !1230, file: !23, line: 468, type: !30)
!1234 = !DILocation(line: 468, column: 53, scope: !1230)
!1235 = !DILocalVariable(name: "off", arg: 2, scope: !1230, file: !23, line: 468, type: !29)
!1236 = !DILocation(line: 468, column: 61, scope: !1230)
!1237 = !DILocalVariable(name: "buf", arg: 3, scope: !1230, file: !23, line: 469, type: !34)
!1238 = !DILocation(line: 469, column: 16, scope: !1230)
!1239 = !DILocalVariable(name: "count", arg: 4, scope: !1230, file: !23, line: 469, type: !7)
!1240 = !DILocation(line: 469, column: 30, scope: !1230)
!1241 = !DILocation(line: 471, column: 8, scope: !1230)
!1242 = !DILocation(line: 471, column: 15, scope: !1230)
!1243 = !DILocation(line: 471, column: 19, scope: !1230)
!1244 = !DILocation(line: 471, column: 12, scope: !1230)
!1245 = !DILocation(line: 471, column: 6, scope: !1230)
!1246 = !DILocation(line: 472, column: 15, scope: !1230)
!1247 = !DILocation(line: 472, column: 19, scope: !1230)
!1248 = !DILocation(line: 472, column: 28, scope: !1230)
!1249 = !DILocation(line: 472, column: 26, scope: !1230)
!1250 = !DILocation(line: 472, column: 33, scope: !1230)
!1251 = !DILocation(line: 472, column: 38, scope: !1230)
!1252 = !DILocation(line: 472, column: 2, scope: !1230)
!1253 = !DILocation(line: 473, column: 1, scope: !1230)
!1254 = distinct !DISubprogram(name: "hermes_write_bytes", scope: !23, file: !23, line: 475, type: !1255, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !30, !29, !98, !7}
!1257 = !DILocalVariable(name: "hw", arg: 1, scope: !1254, file: !23, line: 475, type: !30)
!1258 = !DILocation(line: 475, column: 54, scope: !1254)
!1259 = !DILocalVariable(name: "off", arg: 2, scope: !1254, file: !23, line: 475, type: !29)
!1260 = !DILocation(line: 475, column: 62, scope: !1254)
!1261 = !DILocalVariable(name: "buf", arg: 3, scope: !1254, file: !23, line: 476, type: !98)
!1262 = !DILocation(line: 476, column: 23, scope: !1254)
!1263 = !DILocalVariable(name: "count", arg: 4, scope: !1254, file: !23, line: 476, type: !7)
!1264 = !DILocation(line: 476, column: 37, scope: !1254)
!1265 = !DILocation(line: 478, column: 8, scope: !1254)
!1266 = !DILocation(line: 478, column: 15, scope: !1254)
!1267 = !DILocation(line: 478, column: 19, scope: !1254)
!1268 = !DILocation(line: 478, column: 12, scope: !1254)
!1269 = !DILocation(line: 478, column: 6, scope: !1254)
!1270 = !DILocation(line: 479, column: 16, scope: !1254)
!1271 = !DILocation(line: 479, column: 20, scope: !1254)
!1272 = !DILocation(line: 479, column: 29, scope: !1254)
!1273 = !DILocation(line: 479, column: 27, scope: !1254)
!1274 = !DILocation(line: 479, column: 34, scope: !1254)
!1275 = !DILocation(line: 479, column: 39, scope: !1254)
!1276 = !DILocation(line: 479, column: 45, scope: !1254)
!1277 = !DILocation(line: 479, column: 2, scope: !1254)
!1278 = !DILocation(line: 480, column: 6, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1254, file: !23, line: 480, column: 6)
!1280 = !DILocation(line: 480, column: 6, scope: !1254)
!1281 = !DILocation(line: 481, column: 12, scope: !1279)
!1282 = !DILocation(line: 481, column: 16, scope: !1279)
!1283 = !DILocation(line: 481, column: 22, scope: !1279)
!1284 = !DILocation(line: 481, column: 28, scope: !1279)
!1285 = !DILocation(line: 481, column: 32, scope: !1279)
!1286 = !DILocation(line: 481, column: 41, scope: !1279)
!1287 = !DILocation(line: 481, column: 39, scope: !1279)
!1288 = !DILocation(line: 481, column: 3, scope: !1279)
!1289 = !DILocation(line: 482, column: 1, scope: !1254)
!1290 = distinct !DISubprogram(name: "hermes_aux_control", scope: !3, file: !3, line: 563, type: !1291, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!29, !30, !29}
!1293 = !DILocalVariable(name: "hw", arg: 1, scope: !1290, file: !3, line: 563, type: !30)
!1294 = !DILocation(line: 563, column: 35, scope: !1290)
!1295 = !DILocalVariable(name: "enabled", arg: 2, scope: !1290, file: !3, line: 563, type: !29)
!1296 = !DILocation(line: 563, column: 43, scope: !1290)
!1297 = !DILocalVariable(name: "desired_state", scope: !1290, file: !3, line: 565, type: !29)
!1298 = !DILocation(line: 565, column: 6, scope: !1290)
!1299 = !DILocation(line: 565, column: 22, scope: !1290)
!1300 = !DILocalVariable(name: "action", scope: !1290, file: !3, line: 566, type: !29)
!1301 = !DILocation(line: 566, column: 6, scope: !1290)
!1302 = !DILocation(line: 566, column: 15, scope: !1290)
!1303 = !DILocalVariable(name: "i", scope: !1290, file: !3, line: 567, type: !29)
!1304 = !DILocation(line: 567, column: 6, scope: !1290)
!1305 = !DILocation(line: 570, column: 6, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 570, column: 6)
!1307 = !DILocation(line: 570, column: 45, scope: !1306)
!1308 = !DILocation(line: 570, column: 42, scope: !1306)
!1309 = !DILocation(line: 570, column: 6, scope: !1290)
!1310 = !DILocation(line: 571, column: 3, scope: !1306)
!1311 = !DILocation(line: 573, column: 2, scope: !1290)
!1312 = !DILocation(line: 574, column: 2, scope: !1290)
!1313 = !DILocation(line: 575, column: 2, scope: !1290)
!1314 = !DILocation(line: 576, column: 2, scope: !1290)
!1315 = !DILocation(line: 578, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 578, column: 2)
!1317 = !DILocation(line: 578, column: 7, scope: !1316)
!1318 = !DILocation(line: 578, column: 14, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 578, column: 2)
!1320 = !DILocation(line: 578, column: 16, scope: !1319)
!1321 = !DILocation(line: 578, column: 2, scope: !1316)
!1322 = !DILocation(line: 579, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 579, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 579, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 579, column: 3)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 579, column: 3)
!1327 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 578, column: 27)
!1328 = !DILocation(line: 580, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 580, column: 7)
!1330 = !DILocation(line: 581, column: 7, scope: !1329)
!1331 = !DILocation(line: 580, column: 43, scope: !1329)
!1332 = !DILocation(line: 580, column: 7, scope: !1327)
!1333 = !DILocation(line: 582, column: 4, scope: !1329)
!1334 = !DILocation(line: 583, column: 2, scope: !1327)
!1335 = !DILocation(line: 578, column: 23, scope: !1319)
!1336 = !DILocation(line: 578, column: 2, scope: !1319)
!1337 = distinct !{!1337, !1321, !1338}
!1338 = !DILocation(line: 583, column: 2, scope: !1316)
!1339 = !DILocation(line: 585, column: 2, scope: !1290)
!1340 = !DILocation(line: 586, column: 1, scope: !1290)
!1341 = distinct !DISubprogram(name: "hermes_aux_setaddr", scope: !3, file: !3, line: 556, type: !1342, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !30, !87}
!1344 = !DILocalVariable(name: "hw", arg: 1, scope: !1341, file: !3, line: 556, type: !30)
!1345 = !DILocation(line: 556, column: 35, scope: !1341)
!1346 = !DILocalVariable(name: "addr", arg: 2, scope: !1341, file: !3, line: 556, type: !87)
!1347 = !DILocation(line: 556, column: 43, scope: !1341)
!1348 = !DILocation(line: 558, column: 2, scope: !1341)
!1349 = !DILocation(line: 559, column: 2, scope: !1341)
!1350 = !DILocation(line: 560, column: 1, scope: !1341)
!1351 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1352, file: !1352, line: 666, type: !1353, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1352 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!19}
!1355 = !DILocalVariable(name: "f", scope: !1351, file: !1352, line: 668, type: !19)
!1356 = !DILocation(line: 668, column: 16, scope: !1351)
!1357 = !DILocation(line: 670, column: 6, scope: !1351)
!1358 = !DILocation(line: 670, column: 4, scope: !1351)
!1359 = !DILocation(line: 671, column: 2, scope: !1351)
!1360 = !DILocation(line: 672, column: 9, scope: !1351)
!1361 = !DILocation(line: 672, column: 2, scope: !1351)
!1362 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1352, file: !1352, line: 646, type: !1353, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1363 = !DILocalVariable(name: "__ret", scope: !1364, file: !1352, line: 648, type: !19)
!1364 = distinct !DILexicalBlock(scope: !1362, file: !1352, line: 648, column: 9)
!1365 = !DILocation(line: 648, column: 9, scope: !1364)
!1366 = !DILocalVariable(name: "__edi", scope: !1364, file: !1352, line: 648, type: !19)
!1367 = !DILocalVariable(name: "__esi", scope: !1364, file: !1352, line: 648, type: !19)
!1368 = !DILocalVariable(name: "__edx", scope: !1364, file: !1352, line: 648, type: !19)
!1369 = !DILocalVariable(name: "__ecx", scope: !1364, file: !1352, line: 648, type: !19)
!1370 = !DILocalVariable(name: "__eax", scope: !1364, file: !1352, line: 648, type: !19)
!1371 = !DILocation(line: 648, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1352, line: 648, column: 9)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !1352, line: 648, column: 9)
!1374 = !{i32 -2145771354, i32 -2145769039, i32 -2145768805, i32 -2145768754, i32 -2145768726, i32 -2145768701, i32 -2145769017, i32 -2145769004, i32 -2145768566, i32 -2145768447, i32 -2145768912, i32 -2145768885, i32 -2145768857, i32 -2145768827}
!1375 = !DILocalVariable(name: "__mask", scope: !1376, file: !1352, line: 648, type: !19)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !1352, line: 648, column: 9)
!1377 = !DILocation(line: 648, column: 9, scope: !1376)
!1378 = !DILocation(line: 648, column: 9, scope: !1373)
!1379 = !DILocation(line: 648, column: 2, scope: !1362)
!1380 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1352, file: !1352, line: 656, type: !1381, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null}
!1383 = !DILocalVariable(name: "__edi", scope: !1384, file: !1352, line: 658, type: !19)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !1352, line: 658, column: 2)
!1385 = !DILocation(line: 658, column: 2, scope: !1384)
!1386 = !DILocalVariable(name: "__esi", scope: !1384, file: !1352, line: 658, type: !19)
!1387 = !DILocalVariable(name: "__edx", scope: !1384, file: !1352, line: 658, type: !19)
!1388 = !DILocalVariable(name: "__ecx", scope: !1384, file: !1352, line: 658, type: !19)
!1389 = !DILocalVariable(name: "__eax", scope: !1384, file: !1352, line: 658, type: !19)
!1390 = !{i32 -2145764260, i32 -2145763528, i32 -2145763294, i32 -2145763243, i32 -2145763215, i32 -2145763190, i32 -2145763506, i32 -2145763493, i32 -2145763055, i32 -2145762936, i32 -2145763401, i32 -2145763374, i32 -2145763346, i32 -2145763316}
!1391 = !DILocation(line: 659, column: 1, scope: !1380)
!1392 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1352, file: !1352, line: 651, type: !1393, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !19}
!1395 = !DILocalVariable(name: "f", arg: 1, scope: !1392, file: !1352, line: 651, type: !19)
!1396 = !DILocation(line: 651, column: 65, scope: !1392)
!1397 = !DILocalVariable(name: "__edi", scope: !1398, file: !1352, line: 653, type: !19)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !1352, line: 653, column: 2)
!1399 = !DILocation(line: 653, column: 2, scope: !1398)
!1400 = !DILocalVariable(name: "__esi", scope: !1398, file: !1352, line: 653, type: !19)
!1401 = !DILocalVariable(name: "__edx", scope: !1398, file: !1352, line: 653, type: !19)
!1402 = !DILocalVariable(name: "__ecx", scope: !1398, file: !1352, line: 653, type: !19)
!1403 = !DILocalVariable(name: "__eax", scope: !1398, file: !1352, line: 653, type: !19)
!1404 = !{i32 -2145766887, i32 -2145766137, i32 -2145765903, i32 -2145765852, i32 -2145765824, i32 -2145765799, i32 -2145766115, i32 -2145766102, i32 -2145765664, i32 -2145765545, i32 -2145766010, i32 -2145765983, i32 -2145765955, i32 -2145765925}
!1405 = !DILocation(line: 654, column: 1, scope: !1392)
!1406 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1352, file: !1352, line: 661, type: !1381, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !120)
!1407 = !DILocalVariable(name: "__edi", scope: !1408, file: !1352, line: 663, type: !19)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !1352, line: 663, column: 2)
!1409 = !DILocation(line: 663, column: 2, scope: !1408)
!1410 = !DILocalVariable(name: "__esi", scope: !1408, file: !1352, line: 663, type: !19)
!1411 = !DILocalVariable(name: "__edx", scope: !1408, file: !1352, line: 663, type: !19)
!1412 = !DILocalVariable(name: "__ecx", scope: !1408, file: !1352, line: 663, type: !19)
!1413 = !DILocalVariable(name: "__eax", scope: !1408, file: !1352, line: 663, type: !19)
!1414 = !{i32 -2145761676, i32 -2145760946, i32 -2145760712, i32 -2145760661, i32 -2145760633, i32 -2145760608, i32 -2145760924, i32 -2145760911, i32 -2145760473, i32 -2145760354, i32 -2145760819, i32 -2145760792, i32 -2145760764, i32 -2145760734}
!1415 = !DILocation(line: 664, column: 1, scope: !1406)
