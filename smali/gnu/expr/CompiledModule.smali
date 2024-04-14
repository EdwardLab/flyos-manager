.class public Lgnu/expr/CompiledModule;
.super Ljava/lang/Object;
.source "CompiledModule.java"


# instance fields
.field cookie:Ljava/lang/Object;

.field language:Lgnu/expr/Language;

.field mexp:Lgnu/expr/ModuleExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    .line 23
    iput-object p2, p0, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    return-void
.end method

.method public static make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .locals 2

    .line 29
    new-instance v0, Lgnu/expr/CompiledModule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object v0
.end method


# virtual methods
.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v1

    .line 41
    :try_start_0
    iget-object v2, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    iget-object v3, p0, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    iget-object v4, p0, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v3, v4}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v0}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    return-void

    :catchall_0
    move-exception p1

    .line 45
    invoke-static {v0}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw p1
.end method

.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 54
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 55
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v2

    .line 56
    iget-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v2, :cond_0

    .line 57
    invoke-static {p2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lgnu/lists/VoidConsumer;

    invoke-direct {v2}, Lgnu/lists/VoidConsumer;-><init>()V

    :goto_0
    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of p1, p1, Ljava/io/Writer;

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast p1, Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_1
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    iput-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    return-void

    :catchall_0
    move-exception p1

    .line 64
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v2, v2, Ljava/io/Writer;

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v2, Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_2
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    iput-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw p1
.end method

.method public evalToResultValue(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v0

    .line 80
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 81
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 86
    throw p1
.end method
