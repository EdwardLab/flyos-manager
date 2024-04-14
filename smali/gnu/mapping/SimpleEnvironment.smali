.class public Lgnu/mapping/SimpleEnvironment;
.super Lgnu/mapping/Environment;
.source "SimpleEnvironment.java"


# instance fields
.field currentTimestamp:I

.field log2Size:I

.field private mask:I

.field num_bindings:I

.field sharedTail:Lgnu/mapping/NamedLocation;

.field table:[Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 42
    invoke-direct {p0, v0}, Lgnu/mapping/SimpleEnvironment;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 52
    invoke-direct {p0}, Lgnu/mapping/Environment;-><init>()V

    const/4 v0, 0x4

    .line 53
    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 54
    :goto_0
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 55
    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    goto :goto_0

    :cond_0
    shl-int p1, v1, v0

    .line 57
    new-array v0, p1, [Lgnu/mapping/NamedLocation;

    iput-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    sub-int/2addr p1, v1

    .line 58
    iput p1, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 60
    new-instance p1, Lgnu/mapping/PlainLocation;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p0}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lgnu/mapping/SimpleEnvironment;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentLocation(Ljava/lang/String;)Lgnu/mapping/Location;
    .locals 2

    .line 25
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Environment;->getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;

    move-result-object p0

    return-object p0
.end method

.method public static lookup_global(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/mapping/UnboundLocationException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v0, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 6

    .line 182
    instance-of v0, p4, Lgnu/mapping/ThreadLocation;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lgnu/mapping/ThreadLocation;

    iget-object v1, v0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    if-ne v1, p2, :cond_0

    .line 184
    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object p4

    .line 185
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    if-ne p4, v0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 191
    :cond_3
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_6

    if-eqz v3, :cond_4

    .line 194
    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    :cond_4
    if-eqz v3, :cond_5

    .line 198
    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget v3, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_6

    invoke-virtual {p4}, Lgnu/mapping/Location;->isBound()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 203
    :cond_6
    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 204
    move-object v1, p0

    check-cast v1, Lgnu/mapping/InheritingEnvironment;

    invoke-virtual {v1, v2}, Lgnu/mapping/InheritingEnvironment;->getParent(I)Lgnu/mapping/Environment;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v1, p1, p2, p3, p4}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object p1

    iput-object p1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_2

    .line 206
    :cond_7
    iput-object p4, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 207
    :goto_2
    sget-object p1, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    iput-object p1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 2

    .line 175
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method protected addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 1

    .line 94
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr p3, v0

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p1

    const/4 p2, 0x0

    .line 96
    iput-object p2, p1, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 97
    sget-object p2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object p2, p1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;
    .locals 2

    .line 137
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr p3, v0

    .line 138
    iget-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v0, v0, p3

    :goto_0
    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p4}, Lgnu/mapping/NamedLocation;->set(Ljava/lang/Object;)V

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {v0, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanDefine()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result p3

    if-nez p3, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 153
    iput-object p1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 154
    iput-object p4, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    return-object v0

    .line 157
    :cond_4
    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 164
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/SimpleEnvironment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 326
    new-instance v0, Lgnu/mapping/EnvironmentMappings;

    invoke-direct {v0, p0}, Lgnu/mapping/EnvironmentMappings;-><init>(Lgnu/mapping/SimpleEnvironment;)V

    return-object v0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .locals 4

    .line 269
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 270
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 85
    monitor-exit p0

    return-object v0

    :cond_0
    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 87
    monitor-exit p0

    return-object p1

    .line 88
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 3

    .line 284
    :goto_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 286
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 287
    iget v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    sub-int/2addr v0, v1

    iput v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 289
    :cond_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 290
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v0, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    goto :goto_0

    :cond_2
    return v1
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 1

    .line 70
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr p3, v0

    .line 71
    iget-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object p3, v0, p3

    :goto_0
    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {p3, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 72
    :cond_0
    iget-object p3, p3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/SimpleEnvironment;->newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object p2, p2, p3

    if-nez p2, :cond_0

    .line 126
    iget-object p2, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    :cond_0
    iput-object p2, p1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 127
    iget-object p2, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aput-object p1, p2, p3

    .line 128
    iget p3, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 129
    array-length p2, p2

    if-lt p3, p2, :cond_1

    .line 130
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->rehash()V

    :cond_1
    return-object p1
.end method

.method newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;
    .locals 2

    .line 116
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-direct {v0, p1, p2, v1}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lgnu/mapping/PlainLocation;

    invoke-direct {v0, p1, p2}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 103
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {p2}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p2, p3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void

    .line 108
    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to modify read-only location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " loc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 106
    :cond_2
    new-instance p2, Lgnu/mapping/UnboundLocationException;

    invoke-direct {p2, p1}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/SimpleEnvironment;->setSymbol(Ljava/lang/Object;)V

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 315
    sget-object v1, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    if-eqz v1, :cond_0

    return-object v1

    .line 318
    :cond_0
    sget-object v1, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V
    .locals 1

    .line 169
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prohibited define/redefine of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method rehash()V
    .locals 8

    .line 213
    iget-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 214
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 216
    new-array v3, v2, [Lgnu/mapping/NamedLocation;

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 220
    aget-object v4, v0, v1

    :goto_0
    if-eqz v4, :cond_0

    .line 221
    iget-object v5, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    if-eq v4, v5, :cond_0

    .line 223
    iget-object v5, v4, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 224
    iget-object v6, v4, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 225
    iget-object v7, v4, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 226
    invoke-virtual {v6}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v6

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    xor-int/2addr v6, v7

    and-int/2addr v6, v2

    .line 228
    aget-object v7, v3, v6

    if-nez v7, :cond_1

    .line 230
    iget-object v7, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    .line 231
    :cond_1
    iput-object v7, v4, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 232
    aput-object v4, v3, v6

    move-object v4, v5

    goto :goto_0

    .line 236
    :cond_2
    iput-object v3, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 237
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 238
    iput v2, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 21
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    return v0
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .locals 0

    return-void
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 3

    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    invoke-virtual {p0, v0}, Lgnu/mapping/SimpleEnvironment;->toStringBase(Ljava/lang/StringBuffer;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#<environment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;
    .locals 5

    .line 243
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr p3, v0

    .line 245
    iget-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v0, v0, p3

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 248
    iget-object v3, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 249
    invoke-virtual {v0, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    :cond_0
    if-nez v2, :cond_1

    .line 254
    iget-object p1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aput-object v3, p1, p3

    goto :goto_1

    .line 256
    :cond_1
    iput-object v0, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 257
    :goto_1
    iget p1, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    return-object v0

    :cond_2
    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
