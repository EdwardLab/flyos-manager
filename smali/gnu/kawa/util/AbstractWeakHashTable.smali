.class public abstract Lgnu/kawa/util/AbstractWeakHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "AbstractWeakHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable<",
        "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 19
    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Entry::",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/kawa/util/AbstractHashTable<",
            "TEntry;**>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "*>;)V"
        }
    .end annotation

    .line 118
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v3, v3, v1

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    if-ne v2, v0, :cond_2

    if-nez v3, :cond_1

    .line 130
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v4, v0, v1

    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {p0, v3, v4}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    goto :goto_2

    :cond_2
    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    .line 138
    :cond_3
    :goto_2
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    goto :goto_0
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 32
    new-array p1, p1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    check-cast p1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object p1
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object p1

    return-object p1
.end method

.method protected cleanup()V
    .locals 1

    .line 108
    iget-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

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

    .line 44
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 45
    invoke-super {p0, p1, p2}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 29
    iget p1, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    return p1
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 0

    .line 9
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I

    move-result p1

    return p1
.end method

.method protected getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 30
    iget-object p1, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object p1
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 9
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method protected getValueIfMatching(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 0

    .line 50
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    new-instance p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-direct {p1, p3, p0, p2}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;-><init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V

    return-object p1
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 66
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-nez v3, :cond_1

    .line 76
    iget v3, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    iget-object v5, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v5, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 78
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->rehash()V

    .line 79
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v0

    .line 80
    iget-object v1, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v1, v1, v0

    .line 82
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object p1

    .line 83
    iput-object v1, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 84
    iget-object p2, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast p2, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object p1, p2, v0

    return-object v4

    .line 87
    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p2, :cond_2

    return-object v6

    .line 90
    :cond_2
    iget-object v7, v3, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    if-eqz v6, :cond_4

    .line 91
    invoke-virtual {p0, v6, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v5, :cond_3

    .line 94
    iget-object v3, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v3, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v7, v3, v0

    goto :goto_1

    .line 96
    :cond_3
    iput-object v7, v5, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    :goto_1
    move-object v4, v6

    goto :goto_2

    :cond_4
    move-object v5, v3

    :goto_2
    move-object v3, v7

    goto :goto_0
.end method

.method protected setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 31
    iput-object p2, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 0

    .line 9
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    check-cast p2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V

    return-void
.end method

.method protected valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
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
