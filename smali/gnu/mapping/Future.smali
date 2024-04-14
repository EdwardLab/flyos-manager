.class public Lgnu/mapping/Future;
.super Ljava/lang/Thread;
.source "Future.java"


# instance fields
.field public closure:Lgnu/mapping/RunnableClosure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1, p2}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1, p2, p3, p4}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    return-void
.end method

.method public static make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;
    .locals 1

    .line 27
    invoke-static {p1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object p1

    .line 30
    :try_start_0
    new-instance v0, Lgnu/mapping/Future;

    invoke-direct {v0, p0, p2, p3, p4}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {p1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw p0
.end method


# virtual methods
.method public final getCallContext()Lgnu/mapping/CallContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v0}, Lgnu/mapping/RunnableClosure;->getCallContext()Lgnu/mapping/CallContext;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 44
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v0}, Lgnu/mapping/RunnableClosure;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#<future "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lgnu/mapping/Future;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/Future;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v0, v0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v0, v0, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    return-object v0

    .line 59
    :cond_0
    throw v0

    .line 55
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "thread join [force] was interrupted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
