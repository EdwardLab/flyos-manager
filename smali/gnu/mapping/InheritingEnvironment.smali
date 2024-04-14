.class public Lgnu/mapping/InheritingEnvironment;
.super Lgnu/mapping/SimpleEnvironment;
.source "InheritingEnvironment.java"


# instance fields
.field baseTimestamp:I

.field inherited:[Lgnu/mapping/Environment;

.field namespaceMap:[Lgnu/mapping/Namespace;

.field numInherited:I

.field propertyMap:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lgnu/mapping/InheritingEnvironment;->addParent(Lgnu/mapping/Environment;)V

    .line 18
    instance-of p1, p2, Lgnu/mapping/SimpleEnvironment;

    if-eqz p1, :cond_0

    .line 20
    check-cast p2, Lgnu/mapping/SimpleEnvironment;

    iget p1, p2, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    .line 21
    iput p1, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    .line 22
    iput p1, p0, Lgnu/mapping/InheritingEnvironment;->currentTimestamp:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addParent(Lgnu/mapping/Environment;)V
    .locals 4

    .line 31
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lgnu/mapping/Environment;

    .line 32
    iput-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v2, v1

    if-gt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 35
    new-array v2, v2, [Lgnu/mapping/Environment;

    const/4 v3, 0x0

    .line 37
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v2, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    return-void
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 4

    .line 128
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 129
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 130
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 132
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 133
    iput v2, v0, Lgnu/mapping/LocationEnumeration;->index:I

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 3

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 95
    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    monitor-exit p0

    return-object v0

    .line 97
    :cond_1
    :try_start_1
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 98
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p3

    .line 107
    iget p4, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/2addr p4, v1

    if-nez p4, :cond_3

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 109
    :cond_3
    iput-object v0, p3, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 110
    iget-object p1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object p2, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne p1, p2, :cond_4

    .line 111
    iget-object p1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_1

    .line 112
    :cond_4
    iget p1, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 113
    sget-object p1, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_1

    .line 115
    :cond_5
    iput-object v2, p3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 116
    :goto_1
    instance-of p1, p3, Lgnu/mapping/SharedLocation;

    if-eqz p1, :cond_6

    .line 117
    move-object p1, p3

    check-cast p1, Lgnu/mapping/SharedLocation;

    iget p2, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    iput p2, p1, Lgnu/mapping/SharedLocation;->timestamp:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_6
    monitor-exit p0

    return-object p3

    .line 121
    :cond_7
    monitor-exit p0

    return-object v0

    :cond_8
    if-eqz p4, :cond_9

    .line 123
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getNumParents()I
    .locals 1

    .line 26
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    return v0
.end method

.method public final getParent(I)Lgnu/mapping/Environment;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 4

    .line 140
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    if-eqz v0, :cond_3

    .line 144
    :goto_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 147
    :goto_1
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iput-object v0, v1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 148
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    invoke-virtual {v0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 150
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 151
    iget-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v2, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 162
    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    add-int/2addr v2, v1

    iput v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ne v2, v3, :cond_0

    .line 166
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 167
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 168
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int v0, v1, v0

    iput v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    goto :goto_2

    .line 164
    :cond_0
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v1, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v0, v0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 155
    iget-object v2, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iget-object v3, v0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lgnu/mapping/InheritingEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 157
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    return v1

    .line 160
    :cond_2
    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_1

    .line 170
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result p1

    return p1
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 2

    .line 85
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 5

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v0, v1, :cond_8

    .line 50
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    if-eqz v1, :cond_2

    array-length v2, v1

    mul-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_2

    .line 52
    aget-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 53
    aget-object v1, v1, v3

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    .line 56
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    if-eq v3, v1, :cond_1

    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 61
    :goto_1
    iget-object v2, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    array-length v3, v2

    mul-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_4

    .line 63
    aget-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 64
    aget-object v2, v2, v4

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eq p2, v2, :cond_5

    goto :goto_2

    :cond_4
    move-object v3, p2

    .line 72
    :cond_5
    iget-object v2, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v3, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 73
    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 75
    instance-of v2, v1, Lgnu/mapping/SharedLocation;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lgnu/mapping/SharedLocation;

    iget v2, v2, Lgnu/mapping/SharedLocation;->timestamp:I

    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    if-ge v2, v3, :cond_7

    :cond_6
    return-object v1

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .locals 2

    const-string v0, " baseTs:"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v0, v1, :cond_0

    const-string v1, " base:"

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Environment;->toStringVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
