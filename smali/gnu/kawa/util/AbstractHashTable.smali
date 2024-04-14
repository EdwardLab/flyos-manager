.class public abstract Lgnu/kawa/util/AbstractHashTable;
.super Ljava/util/AbstractMap;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_SIZE:I = 0x40


# instance fields
.field protected mask:I

.field protected num_bindings:I

.field protected table:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TEntry;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 33
    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    sub-int/2addr v2, v1

    .line 43
    iput v2, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    return-void
.end method


# virtual methods
.method protected abstract allocEntries(I)[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TEntry;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 5

    .line 210
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 211
    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 215
    aget-object v2, v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 218
    invoke-virtual {p0, v2, v3}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    move-object v2, v4

    goto :goto_1

    .line 221
    :cond_0
    aput-object v3, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 234
    new-instance v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    invoke-direct {v0, p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;-><init>(Lgnu/kawa/util/AbstractHashTable;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 102
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected abstract getEntryHashCode(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)I"
        }
    .end annotation
.end method

.method protected abstract getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TEntry;"
        }
    .end annotation
.end method

.method public getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TEntry;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 89
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 90
    iget-object v2, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 91
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected hashToIndex(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr p1, v0

    .line 61
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method protected abstract makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TEntry;"
        }
    .end annotation
.end method

.method protected matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ITEntry;)Z"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p3}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 163
    iget v2, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 165
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractHashTable;->rehash()V

    .line 166
    invoke-virtual {p0, p2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v0

    .line 167
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v1, v1, v0

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1, v1}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 171
    iget-object p2, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object p1, p2, v0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_1
    invoke-virtual {p0, p1, p2, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 177
    invoke-interface {v2, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 180
    :cond_2
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected rehash()V
    .locals 7

    .line 108
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 109
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 111
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    .line 113
    iput-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 114
    iput v2, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 117
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 128
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 129
    invoke-virtual {p0, v2, v4}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 139
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v5

    .line 140
    invoke-virtual {p0, v5}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v5

    .line 141
    aget-object v6, v3, v5

    .line 142
    invoke-virtual {p0, v2, v6}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 143
    aput-object v2, v3, v5

    move-object v2, v4

    goto :goto_1

    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 187
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 189
    iget-object v2, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 192
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 193
    invoke-virtual {p0, p1, v0, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    .line 196
    iget-object p1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v5, p1, v1

    goto :goto_1

    .line 198
    :cond_0
    invoke-virtual {p0, v4, v5}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 199
    :goto_1
    iget p1, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 200
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v4, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method protected abstract setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;TEntry;)V"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .line 228
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    return v0
.end method
