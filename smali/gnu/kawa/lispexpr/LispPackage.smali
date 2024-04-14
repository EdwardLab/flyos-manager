.class public Lgnu/kawa/lispexpr/LispPackage;
.super Lgnu/mapping/Namespace;
.source "LispPackage.java"


# instance fields
.field exported:Lgnu/mapping/Namespace;

.field imported:Lgnu/kawa/lispexpr/NamespaceUse;

.field importing:Lgnu/kawa/lispexpr/NamespaceUse;

.field shadowingSymbols:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 15
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    return-void
.end method

.method private addToShadowingSymbols(Lgnu/mapping/Symbol;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    :goto_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_1

    .line 101
    check-cast v0, Lgnu/lists/Pair;

    .line 102
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Lgnu/lists/Pair;

    iget-object v1, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    invoke-direct {v0, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    return-void
.end method

.method private removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z
    .locals 4

    .line 112
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v2, :cond_2

    .line 114
    check-cast v0, Lgnu/lists/Pair;

    .line 115
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 116
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    if-nez v1, :cond_0

    .line 119
    check-cast v2, Lgnu/lists/LList;

    iput-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public isPresent(Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 3

    .line 43
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/lispexpr/LispPackage;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 51
    :cond_1
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->imported:Lgnu/kawa/lispexpr/NamespaceUse;

    :goto_0
    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 52
    :cond_2
    iget-object v0, v0, Lgnu/kawa/lispexpr/NamespaceUse;->nextImported:Lgnu/kawa/lispexpr/NamespaceUse;

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 60
    new-instance p3, Lgnu/mapping/Symbol;

    invoke-direct {p3, p0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lgnu/kawa/lispexpr/LispPackage;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 2

    .line 67
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public shadow(Ljava/lang/String;)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    return-void
.end method

.method public shadowingImport(Lgnu/mapping/Symbol;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispPackage;->unintern(Lgnu/mapping/Symbol;)Z

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    return-void
.end method

.method public unintern(Lgnu/mapping/Symbol;)Z
    .locals 4

    .line 80
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 82
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 83
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-super {p0, v0, v1, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 85
    invoke-super {p0, p1}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    :goto_0
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Lgnu/mapping/Symbol;->setNamespace(Lgnu/mapping/Namespace;)V

    .line 89
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method
