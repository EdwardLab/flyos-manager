.class public Lgnu/kawa/util/GeneralHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "GeneralHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable<",
        "Lgnu/kawa/util/HashNode<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/kawa/util/AbstractHashTable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/HashNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 25
    new-array p1, p1, [Lgnu/kawa/util/HashNode;

    check-cast p1, [Lgnu/kawa/util/HashNode;

    return-object p1
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->allocEntries(I)[Lgnu/kawa/util/HashNode;

    move-result-object p1

    return-object p1
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/HashNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 22
    iget p1, p1, Lgnu/kawa/util/HashNode;->hash:I

    return p1
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 0

    .line 10
    check-cast p1, Lgnu/kawa/util/HashNode;

    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryHashCode(Lgnu/kawa/util/HashNode;)I

    move-result p1

    return p1
.end method

.method protected getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;)",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 23
    iget-object p1, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-object p1
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 10
    check-cast p1, Lgnu/kawa/util/HashNode;

    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    check-cast p1, Lgnu/kawa/util/HashNode;

    return-object p1
.end method

.method public bridge synthetic getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object p1

    return-object p1
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lgnu/kawa/util/HashNode;

    invoke-direct {v0, p1, p3}, Lgnu/kawa/util/HashNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    iput p2, v0, Lgnu/kawa/util/HashNode;->hash:I

    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/GeneralHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object p1

    return-object p1
.end method

.method protected setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;",
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 24
    iput-object p2, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 0

    .line 10
    check-cast p1, Lgnu/kawa/util/HashNode;

    check-cast p2, Lgnu/kawa/util/HashNode;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/GeneralHashTable;->setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V

    return-void
.end method
