.class public Lkawa/standard/TracedProcedure;
.super Lgnu/mapping/ProcedureN;
.source "TracedProcedure.java"


# static fields
.field static curIndentSym:Lgnu/mapping/Symbol; = null

.field static indentationStep:I = 0x2


# instance fields
.field enabled:Z

.field public proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "current-indentation"

    .line 15
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lkawa/standard/TracedProcedure;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static doTrace(Lgnu/mapping/Procedure;Z)Lgnu/mapping/Procedure;
    .locals 1

    .line 114
    instance-of v0, p0, Lkawa/standard/TracedProcedure;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p0

    check-cast v0, Lkawa/standard/TracedProcedure;

    iput-boolean p1, v0, Lkawa/standard/TracedProcedure;->enabled:Z

    return-object p0

    .line 120
    :cond_0
    new-instance v0, Lkawa/standard/TracedProcedure;

    invoke-direct {v0, p0, p1}, Lkawa/standard/TracedProcedure;-><init>(Lgnu/mapping/Procedure;Z)V

    return-object v0
.end method

.method static indent(ILjava/io/PrintWriter;)V
    .locals 1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    const/16 v0, 0x20

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/io/PrintWriter;)V
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x1

    .line 30
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "..."

    .line 31
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "<caught "

    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 p0, 0x3e

    .line 37
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v0, :cond_4

    .line 51
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 52
    sget-object v1, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    instance-of v2, v1, Lgnu/math/IntNum;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 58
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    check-cast v1, Lgnu/math/IntNum;

    invoke-virtual {v1}, Lgnu/math/IntNum;->intValue()I

    move-result v1

    .line 62
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "??"

    .line 68
    :cond_1
    invoke-static {v1, v2}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    const-string v5, "call to "

    .line 69
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    array-length v5, p1

    const-string v6, " ("

    .line 72
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    if-ge v3, v5, :cond_3

    if-lez v3, :cond_2

    const/16 v6, 0x20

    .line 76
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    :cond_2
    aget-object v6, p1, v3

    invoke-static {v6, v2}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, ")"

    .line 79
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    sget v3, Lkawa/standard/TracedProcedure;->indentationStep:I

    add-int/2addr v3, v1

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    :try_start_0
    iget-object v5, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0, v3}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 101
    invoke-static {v1, v2}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    const-string v0, "return from "

    .line 102
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " => "

    .line 104
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-static {p1, v2}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 91
    :try_start_1
    invoke-static {v1, v2}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "procedure "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " throws exception "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_2
    invoke-virtual {v0, v3}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    throw p1

    .line 109
    :cond_4
    iget-object v0, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#<procedure "

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "<unnamed>"

    .line 128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :goto_0
    iget-boolean v0, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v0, :cond_1

    const-string v0, ", traced>"

    goto :goto_1

    :cond_1
    const-string v0, ">"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
