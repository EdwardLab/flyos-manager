.class public abstract Lgnu/mapping/NamedLocation;
.super Lgnu/mapping/IndirectableLocation;
.source "NamedLocation.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lgnu/mapping/EnvironmentKey;


# instance fields
.field final name:Lgnu/mapping/Symbol;

.field next:Lgnu/mapping/NamedLocation;

.field final property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/mapping/NamedLocation;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lgnu/mapping/IndirectableLocation;-><init>()V

    .line 41
    iget-object v0, p1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iput-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 42
    iget-object p1, p1, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    iput-object p1, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lgnu/mapping/IndirectableLocation;-><init>()V

    .line 47
    iput-object p1, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 48
    iput-object p2, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public entered()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 82
    instance-of v0, p1, Lgnu/mapping/NamedLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    check-cast p1, Lgnu/mapping/NamedLocation;

    .line 85
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    iget-object v0, p1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v2}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return v1

    .line 87
    :cond_2
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    return v1

    .line 89
    :cond_3
    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public getEnvironment()Lgnu/mapping/Environment;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 26
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v1, :cond_0

    .line 28
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Environment;

    if-eqz v1, :cond_0

    return-object v1

    .line 24
    :cond_0
    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 33
    :cond_1
    invoke-super {p0}, Lgnu/mapping/IndirectableLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .line 53
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 100
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    iget-object v1, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 101
    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 2

    .line 63
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {p1, v0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized setRestore(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/NamedLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Location;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    iput-object v1, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 130
    check-cast p1, Lgnu/mapping/Location;

    iput-object p1, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_0

    .line 134
    :cond_1
    iput-object p1, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 135
    iput-object v1, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/NamedLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v0}, Lgnu/mapping/ThreadLocation;->makeAnonymous(Lgnu/mapping/Symbol;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    .line 112
    iget-object v1, v0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    iget-object v2, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    iput-object v2, v1, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 113
    iget-object v1, v0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    iget-object v2, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, v0}, Lgnu/mapping/NamedLocation;->setAlias(Lgnu/mapping/Location;)V

    .line 115
    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 116
    iput-object p1, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 117
    iput-object p1, v1, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 118
    iget-object p1, v0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
