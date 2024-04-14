.class public Lkawa/lang/VarListPat;
.super Lkawa/lang/Pattern;
.source "VarListPat.java"


# instance fields
.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/VarListPat;->min_length:I

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    :goto_0
    iget v2, p0, Lkawa/lang/VarListPat;->min_length:I

    if-ge v1, v2, :cond_1

    .line 23
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 25
    check-cast p1, Lgnu/lists/Pair;

    add-int v2, p3, v1

    .line 26
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 27
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    add-int/2addr p3, v1

    .line 32
    aput-object p1, p2, p3

    const/4 p1, 0x1

    return p1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<varlist-pattern min:"

    .line 40
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lkawa/lang/VarListPat;->min_length:I

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    const/16 v0, 0x3e

    .line 42
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public varCount()I
    .locals 1

    .line 36
    iget v0, p0, Lkawa/lang/VarListPat;->min_length:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
