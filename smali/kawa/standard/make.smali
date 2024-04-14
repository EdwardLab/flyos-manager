.class public Lkawa/standard/make;
.super Lgnu/mapping/ProcedureN;
.source "make.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 12
    array-length v0, p1

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 15
    aget-object v1, p1, v1

    .line 17
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 18
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    goto :goto_0

    .line 19
    :cond_0
    instance-of v2, v1, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    .line 20
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 28
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v3, 0x1

    .line 36
    aget-object v3, p1, v3

    check-cast v3, Lgnu/expr/Keyword;

    add-int/lit8 v4, v2, 0x1

    .line 37
    aget-object v2, p1, v2

    .line 38
    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_1

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lgnu/mapping/WrappedException;

    invoke-direct {v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :cond_3
    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "class"

    invoke-direct {p1, p0, v3, v1, v0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Lgnu/mapping/WrongArguments;

    invoke-direct {p1, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, -0xfff

    return v0
.end method
