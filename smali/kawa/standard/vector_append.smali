.class public Lkawa/standard/vector_append;
.super Lgnu/mapping/ProcedureN;
.source "vector_append.java"


# static fields
.field public static final vectorAppend:Lkawa/standard/vector_append;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lkawa/standard/vector_append;

    const-string v1, "vector-append"

    invoke-direct {v0, v1}, Lkawa/standard/vector_append;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;
    .locals 10

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 31
    aget-object v4, p0, v2

    .line 32
    instance-of v5, v4, Lgnu/lists/FVector;

    if-eqz v5, :cond_0

    .line 33
    check-cast v4, Lgnu/lists/FVector;

    invoke-virtual {v4}, Lgnu/lists/FVector;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v4, v1}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/2addr v3, v5

    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Lgnu/mapping/WrongType;

    sget-object v0, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    const-string v1, "list or vector"

    invoke-direct {p0, v0, v2, v4, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 46
    aget-object v5, p0, v3

    .line 47
    instance-of v6, v5, Lgnu/lists/FVector;

    if-eqz v6, :cond_3

    .line 49
    check-cast v5, Lgnu/lists/FVector;

    .line 50
    invoke-virtual {v5}, Lgnu/lists/FVector;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    add-int/lit8 v8, v4, 0x1

    .line 52
    invoke-virtual {v5, v7}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    .line 54
    :cond_3
    instance-of v6, v5, Lgnu/lists/Pair;

    if-eqz v6, :cond_4

    .line 56
    :goto_3
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_4

    .line 58
    check-cast v5, Lgnu/lists/Pair;

    add-int/lit8 v6, v4, 0x1

    .line 59
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v4

    .line 60
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move v4, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    :cond_5
    new-instance p0, Lgnu/lists/FVector;

    invoke-direct {p0, v2}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-static {p1}, Lkawa/standard/vector_append;->apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1
.end method
