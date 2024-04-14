.class public Lgnu/mapping/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/mapping/HasNamedParts;


# static fields
.field public static final EmptyNamespace:Lgnu/mapping/Namespace;

.field protected static final nsTable:Ljava/util/Hashtable;


# instance fields
.field log2Size:I

.field private mask:I

.field name:Ljava/lang/String;

.field num_bindings:I

.field protected prefix:Ljava/lang/String;

.field protected table:[Lgnu/mapping/SymbolRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    const-string v0, ""

    .line 26
    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 42
    invoke-direct {p0, v0}, Lgnu/mapping/Namespace;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    const/4 v0, 0x4

    .line 47
    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    .line 48
    :goto_0
    iget v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 49
    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    goto :goto_0

    :cond_0
    shl-int p1, v1, v0

    .line 51
    new-array v0, p1, [Lgnu/mapping/SymbolRef;

    iput-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    sub-int/2addr p1, v1

    .line 52
    iput p1, p0, Lgnu/mapping/Namespace;->mask:I

    return-void
.end method

.method public static create()Lgnu/mapping/Namespace;
    .locals 2

    .line 62
    new-instance v0, Lgnu/mapping/Namespace;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lgnu/mapping/Namespace;
    .locals 1

    .line 57
    new-instance v0, Lgnu/mapping/Namespace;

    invoke-direct {v0, p0}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static getDefault()Lgnu/mapping/Namespace;
    .locals 1

    .line 67
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 72
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://kawa.gnu.org/unknown-namespace/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    :goto_0
    invoke-static {v0, p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf()Lgnu/mapping/Namespace;
    .locals 1

    .line 77
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    .line 84
    :cond_0
    sget-object v0, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    if-eqz v1, :cond_1

    .line 88
    monitor-exit v0

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lgnu/mapping/Namespace;

    invoke-direct {v1}, Lgnu/mapping/Namespace;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/mapping/SimpleSymbol;)Lgnu/mapping/Namespace;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/SimpleSymbol;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 4

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    instance-of v3, v2, Lgnu/mapping/Namespace;

    if-eqz v3, :cond_1

    .line 105
    check-cast v2, Lgnu/mapping/Namespace;

    monitor-exit v1

    return-object v2

    .line 106
    :cond_1
    new-instance v2, Lgnu/mapping/Namespace;

    invoke-direct {v2}, Lgnu/mapping/Namespace;-><init>()V

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 99
    :cond_2
    :goto_0
    invoke-static {p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;
    .locals 2

    .line 190
    iget v0, p0, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr p2, v0

    .line 191
    new-instance v0, Lgnu/mapping/SymbolRef;

    invoke-direct {v0, p1, p0}, Lgnu/mapping/SymbolRef;-><init>(Lgnu/mapping/Symbol;Lgnu/mapping/Namespace;)V

    .line 192
    iput-object p0, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 193
    iget-object v1, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v1, v1, p2

    iput-object v1, v0, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 194
    iget-object v1, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v0, v1, p2

    .line 195
    iget p2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 196
    array-length v0, v1

    if-lt p2, v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->rehash()V

    :cond_0
    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public isConstant(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 1

    .line 203
    monitor-enter p0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Namespace;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    monitor-exit p0

    return-object v0

    :cond_0
    if-eqz p3, :cond_2

    .line 221
    sget-object p3, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    if-ne p0, p3, :cond_1

    .line 222
    new-instance p3, Lgnu/mapping/SimpleSymbol;

    invoke-direct {p3, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    new-instance p3, Lgnu/mapping/Symbol;

    invoke-direct {p3, p0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 225
    :goto_0
    invoke-virtual {p0, p3, p2}, Lgnu/mapping/Namespace;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 228
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 229
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;
    .locals 5

    .line 162
    iget v0, p0, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr p2, v0

    .line 164
    iget-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 166
    iget-object v3, v0, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 167
    invoke-virtual {v0}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    .line 172
    iget-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v3, v0, p2

    goto :goto_1

    .line 174
    :cond_0
    iput-object v3, v2, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 175
    :goto_1
    iget v0, p0, Lgnu/mapping/Namespace;->num_bindings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/mapping/Namespace;->num_bindings:I

    goto :goto_2

    .line 179
    :cond_1
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    :cond_2
    move-object v2, v0

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 311
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    .line 312
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 320
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1
    :goto_0
    sget-object v1, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Namespace;

    if-eqz v2, :cond_2

    return-object v2

    .line 325
    :cond_2
    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method protected rehash()V
    .locals 9

    .line 270
    iget-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, -0x1

    .line 275
    new-array v2, v2, [Lgnu/mapping/SymbolRef;

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 279
    aget-object v5, v0, v1

    :goto_0
    if-eqz v5, :cond_0

    .line 281
    iget-object v6, v5, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 282
    invoke-virtual {v5}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 285
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/2addr v7, v3

    add-int/lit8 v4, v4, 0x1

    .line 289
    aget-object v8, v2, v7

    iput-object v8, v5, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 290
    aput-object v5, v2, v7

    :cond_1
    move-object v5, v6

    goto :goto_0

    .line 296
    :cond_2
    iput-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 297
    iget v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    .line 298
    iput v3, p0, Lgnu/mapping/Namespace;->mask:I

    .line 299
    iput v4, p0, Lgnu/mapping/Namespace;->num_bindings:I

    return-void
.end method

.method public remove(Lgnu/mapping/Symbol;)Z
    .locals 6

    .line 234
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 238
    iget v1, p0, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v2, v2, v0

    :goto_0
    if-eqz v2, :cond_4

    .line 243
    iget-object v3, v2, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 244
    invoke-virtual {v2}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    if-eqz v4, :cond_1

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_3

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 248
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v3, v2, v0

    goto :goto_2

    .line 250
    :cond_2
    iput-object v3, v1, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 251
    :goto_2
    iget v2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    if-eqz v4, :cond_3

    .line 253
    monitor-exit p0

    return v5

    :cond_3
    :goto_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 259
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#,(namespace \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    if-eq v1, v2, :cond_0

    const/16 v1, 0x20

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x29

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
