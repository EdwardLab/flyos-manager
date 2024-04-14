.class Lgnu/text/CharMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable<",
        "Lgnu/text/Char;",
        "Lgnu/text/Char;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lgnu/text/Char;
    .locals 3

    .line 276
    invoke-virtual {p0}, Lgnu/text/CharMap;->cleanup()V

    .line 278
    invoke-virtual {p0, p1}, Lgnu/text/CharMap;->hashToIndex(I)I

    move-result v0

    .line 279
    iget-object v1, p0, Lgnu/text/CharMap;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/text/Char;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Lgnu/text/Char;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 280
    :cond_0
    iget-object v0, v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    goto :goto_0

    .line 286
    :cond_1
    new-instance v0, Lgnu/text/Char;

    invoke-direct {v0, p1}, Lgnu/text/Char;-><init>(I)V

    .line 287
    invoke-super {p0, v0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getKeyFromValue(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 272
    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p0, p1}, Lgnu/text/CharMap;->getKeyFromValue(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1
.end method

.method protected matches(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 0

    .line 298
    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lgnu/text/Char;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
