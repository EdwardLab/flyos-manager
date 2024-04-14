.class public Lgnu/kawa/util/WeakIdentityHashMap;
.super Lgnu/kawa/util/AbstractHashTable;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable<",
        "Lgnu/kawa/util/WeakHashNode<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 13
    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 7
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 7
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/WeakHashNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 27
    new-array p1, p1, [Lgnu/kawa/util/WeakHashNode;

    check-cast p1, [Lgnu/kawa/util/WeakHashNode;

    return-object p1
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lgnu/kawa/util/WeakIdentityHashMap;->allocEntries(I)[Lgnu/kawa/util/WeakHashNode;

    move-result-object p1

    return-object p1
.end method

.method cleanup()V
    .locals 1

    .line 70
    iget-object v0, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 54
    invoke-super {p0, p1, p2}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 21
    iget p1, p1, Lgnu/kawa/util/WeakHashNode;->hash:I

    return p1
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 0

    .line 3
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {p0, p1}, Lgnu/kawa/util/WeakIdentityHashMap;->getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I

    move-result p1

    return p1
.end method

.method protected getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;)",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 23
    iget-object p1, p1, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-object p1
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 3
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {p0, p1}, Lgnu/kawa/util/WeakIdentityHashMap;->getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;

    move-result-object p1

    return-object p1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 0

    .line 31
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/WeakHashNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lgnu/kawa/util/WeakHashNode;

    iget-object v1, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1, p2}, Lgnu/kawa/util/WeakHashNode;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    .line 47
    iput-object p3, v0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/WeakIdentityHashMap;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/WeakHashNode;

    move-result-object p1

    return-object p1
.end method

.method protected matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 60
    invoke-super {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 66
    invoke-super {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 25
    iput-object p2, p1, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 0

    .line 3
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    check-cast p2, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/WeakIdentityHashMap;->setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V

    return-void
.end method
