.class public Lkawa/lang/ListRepeatPat;
.super Lkawa/lang/Pattern;
.source "ListRepeatPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field element_pattern:Lkawa/lang/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 16
    iput-object p1, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    return-void
.end method

.method public static make(Lkawa/lang/Pattern;)Lkawa/lang/ListRepeatPat;
    .locals 1

    .line 21
    new-instance v0, Lkawa/lang/ListRepeatPat;

    invoke-direct {v0, p0}, Lkawa/lang/ListRepeatPat;-><init>(Lkawa/lang/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 8

    const/4 v0, 0x0

    .line 40
    invoke-static {p1, v0}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    .line 44
    :cond_0
    iget-object v2, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v2}, Lkawa/lang/Pattern;->varCount()I

    move-result v2

    move v3, v2

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    add-int v4, p3, v3

    .line 46
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v5, p2, v4

    goto :goto_0

    .line 47
    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 50
    check-cast p1, Lgnu/lists/Pair;

    .line 58
    iget-object v5, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v0}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_2

    return v0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_3

    add-int v6, p3, v5

    .line 61
    aget-object v6, p2, v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    aget-object v7, v3, v5

    aput-object v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<list-repeat-pattern "

    .line 26
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    const/16 v0, 0x3e

    .line 28
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkawa/lang/Pattern;

    iput-object p1, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    return-void
.end method

.method public varCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v0}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
