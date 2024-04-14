.class public Lgnu/text/WriterManager;
.super Ljava/lang/Object;
.source "WriterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final instance:Lgnu/text/WriterManager;


# instance fields
.field first:Lgnu/text/WriterRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lgnu/text/WriterManager;

    invoke-direct {v0}, Lgnu/text/WriterManager;-><init>()V

    sput-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized register(Ljava/io/Writer;)Lgnu/text/WriterRef;
    .locals 2

    monitor-enter p0

    .line 25
    :try_start_0
    new-instance v0, Lgnu/text/WriterRef;

    invoke-direct {v0, p1}, Lgnu/text/WriterRef;-><init>(Ljava/io/Writer;)V

    .line 26
    iget-object p1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    if-eqz p1, :cond_0

    .line 29
    iget-object v1, p1, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    iput-object v1, v0, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 30
    iput-object v0, p1, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 32
    :cond_0
    iput-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerShutdownHook()Z
    .locals 6

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 83
    const-class v5, Ljava/lang/Thread;

    aput-object v5, v4, v0

    const-string v5, "addShutdownHook"

    .line 84
    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 86
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v4, v0

    .line 87
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    return v0
.end method

.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lgnu/text/WriterRef;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    check-cast v1, Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, v0, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_0
    check-cast p1, Lgnu/text/WriterRef;

    .line 44
    iget-object v0, p1, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 45
    iget-object v1, p1, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    if-eqz v0, :cond_1

    .line 47
    iput-object v1, v0, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    :cond_1
    if-eqz v1, :cond_2

    .line 49
    iput-object v0, v1, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 50
    :cond_2
    iget-object v1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    if-ne p1, v1, :cond_3

    .line 51
    iput-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
