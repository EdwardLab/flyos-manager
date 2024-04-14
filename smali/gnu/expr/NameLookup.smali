.class public Lgnu/expr/NameLookup;
.super Lgnu/kawa/util/GeneralHashTable;
.source "NameLookup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/GeneralHashTable<",
        "Ljava/lang/Object;",
        "Lgnu/expr/Declaration;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY:Lgnu/mapping/Symbol;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<current-NameLookup>"

    .line 24
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-void
.end method

.method public static getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;
    .locals 1

    .line 33
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object p0

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/NameLookup;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lgnu/expr/NameLookup;

    invoke-direct {v0, p1}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    .line 38
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->setLanguage(Lgnu/expr/Language;)V

    :goto_0
    return-object v0
.end method

.method public static setInstance(Lgnu/mapping/Environment;Lgnu/expr/NameLookup;)V
    .locals 2

    if-nez p1, :cond_0

    .line 48
    sget-object p1, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {p0, p1}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 3

    .line 143
    invoke-virtual {p0, p1}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/HashNode;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .line 149
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v2, v1, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 146
    :cond_0
    iget-object v0, v0, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 158
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p1

    return-object p1
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 0

    .line 103
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/Declaration;)Z

    .line 104
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pop(Lgnu/expr/Declaration;)Z
    .locals 7

    .line 69
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v0

    .line 75
    iget-object v3, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v3, [Lgnu/kawa/util/HashNode;

    aget-object v3, v3, v0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_3

    .line 78
    iget-object v4, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 79
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    if-nez v3, :cond_1

    .line 82
    iget-object p1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast p1, [Lgnu/kawa/util/HashNode;

    aput-object v4, p1, v0

    goto :goto_1

    .line 84
    :cond_1
    iput-object v4, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 85
    :goto_1
    iget p1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    return v0

    :cond_2
    move-object v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_3
    return v1
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget v1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    iget-object v2, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v2, [Lgnu/kawa/util/HashNode;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lgnu/expr/NameLookup;->rehash()V

    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 61
    invoke-virtual {p0, v0, v1, p1}, Lgnu/expr/NameLookup;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object p1

    .line 62
    invoke-virtual {p0, v1}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v0

    .line 63
    iget-object v1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/HashNode;

    aget-object v1, v1, v0

    iput-object v1, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 64
    iget-object v1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/HashNode;

    aput-object p1, v1, v0

    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 97
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSubsumed(Lgnu/expr/Declaration;)V
    .locals 5

    .line 113
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/HashNode;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 119
    iget-object v3, v1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 120
    invoke-virtual {v1}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Declaration;

    if-eq v4, p1, :cond_1

    .line 121
    invoke-virtual {p0, p1, v4}, Lgnu/expr/NameLookup;->subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 124
    iget-object v1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/HashNode;

    aput-object v3, v1, v0

    goto :goto_1

    .line 126
    :cond_0
    iput-object v3, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLanguage(Lgnu/expr/Language;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-void
.end method

.method protected subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z
    .locals 2

    .line 137
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p1

    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p2}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
