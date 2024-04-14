.class public Lkawa/standard/append;
.super Lgnu/mapping/ProcedureN;
.source "append.java"


# static fields
.field public static final append:Lkawa/standard/append;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lkawa/standard/append;

    invoke-direct {v0}, Lkawa/standard/append;-><init>()V

    sput-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    const-string v1, "append"

    .line 13
    invoke-virtual {v0, v1}, Lkawa/standard/append;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 22
    array-length v0, p0

    if-nez v0, :cond_0

    .line 24
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    aget-object v1, p0, v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 28
    aget-object v2, p0, v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 31
    :goto_1
    instance-of v6, v2, Lgnu/lists/Pair;

    if-eqz v6, :cond_3

    .line 33
    check-cast v2, Lgnu/lists/Pair;

    .line 34
    new-instance v6, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v4, :cond_2

    move-object v5, v6

    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v4, v6}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 40
    :goto_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v6

    goto :goto_1

    .line 42
    :cond_3
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v4, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    move-object v1, v5

    goto :goto_0

    .line 43
    :cond_4
    new-instance v1, Lgnu/mapping/WrongType;

    sget-object v2, Lkawa/standard/append;->append:Lkawa/standard/append;

    add-int/lit8 v3, v0, 0x1

    aget-object p0, p0, v0

    const-string v0, "list"

    invoke-direct {v1, v2, v3, p0, v0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_5
    return-object v1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-static {p1}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
