.class public Lkawa/lang/Eval;
.super Lgnu/mapping/Procedure1or2;
.source "Eval.java"


# static fields
.field public static final eval:Lkawa/lang/Eval;

.field static final evalFunctionName:Ljava/lang/String; = "atEvalLevel$"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/lang/Eval;

    invoke-direct {v0}, Lkawa/lang/Eval;-><init>()V

    sput-object v0, Lkawa/lang/Eval;->eval:Lkawa/lang/Eval;

    const-string v1, "eval"

    .line 15
    invoke-virtual {v0, v1}, Lkawa/lang/Eval;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1or2;-><init>()V

    return-void
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 59
    :try_start_0
    invoke-static {p0, p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 60
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 64
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 65
    throw p0
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    instance-of v0, p0, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lgnu/lists/PairWithPosition;

    move-object v1, p0

    check-cast v1, Lgnu/lists/PairWithPosition;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, v1, p0, v2}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p0, v1}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "<eval>"

    .line 29
    invoke-virtual {v0, p0}, Lgnu/lists/PairWithPosition;->setFile(Ljava/lang/String;)V

    .line 31
    :goto_0
    new-instance p0, Lgnu/text/SourceMessages;

    invoke-direct {p0}, Lgnu/text/SourceMessages;-><init>()V

    invoke-static {v0, p1, p0, p2}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 42
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 43
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 48
    throw p0
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 74
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 78
    :try_start_0
    invoke-static {p1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 79
    :cond_0
    new-instance v2, Lkawa/lang/Translator;

    invoke-static {p1, v0}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, v2, Lkawa/lang/Translator;->immediate:Z

    const/4 v3, 0x3

    .line 84
    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->setState(I)V

    .line 85
    invoke-virtual {v2, v0}, Lkawa/lang/Translator;->setSharedModuleDefs(Z)V

    const/4 v3, 0x0

    .line 86
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v4

    .line 87
    invoke-static {v2}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    iget-object v6, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x0

    .line 91
    invoke-virtual {v2, p0, v4, v7}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    .line 92
    iput v6, v2, Lkawa/lang/Translator;->firstForm:I

    .line 93
    invoke-virtual {v2, v4}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 100
    instance-of v5, p0, Lgnu/lists/PairWithPosition;

    if-eqz v5, :cond_1

    .line 101
    check-cast p0, Lgnu/lists/PairWithPosition;

    invoke-virtual {p0}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "atEvalLevel$"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lgnu/expr/ModuleExp;->interactiveCounter:I

    add-int/2addr v5, v0

    sput v5, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 103
    invoke-static {p1, p3, v2, v3, v3}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 104
    invoke-virtual {p2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    if-eq p1, v1, :cond_2

    .line 111
    invoke-static {v1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_2
    return-void

    .line 105
    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid syntax in eval form:\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 97
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    if-eq p1, v1, :cond_4

    .line 111
    invoke-static {v1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_4
    throw p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    iget v0, p1, Lgnu/mapping/CallContext;->count:I

    invoke-static {p0, v0}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 131
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    if-nez v1, :cond_0

    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v1

    .line 136
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 137
    invoke-static {v0, v1, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    check-cast p2, Lgnu/mapping/Environment;

    invoke-static {p1, p2}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
