.class public Lgnu/mapping/PropertyLocation;
.super Lgnu/mapping/Location;
.source "PropertyLocation.java"


# instance fields
.field pair:Lgnu/lists/Pair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 147
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2

    .line 129
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    .line 131
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p3, v0, p0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 137
    :cond_1
    :goto_0
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p3, p0, p1, p2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 48
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    sget-object v1, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v1, p0, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyList(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2

    .line 38
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p1, v0, p0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 262
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    .line 265
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 266
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    .line 276
    :goto_0
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    .line 278
    check-cast v0, Lgnu/lists/Pair;

    .line 279
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 280
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 282
    invoke-virtual {v1, p2}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    return-object p0

    .line 285
    :cond_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    invoke-direct {v1, p2, p0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    .line 296
    :goto_0
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_2

    .line 298
    check-cast v1, Lgnu/lists/Pair;

    .line 299
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 300
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 301
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    if-nez v0, :cond_0

    return-object v3

    .line 305
    :cond_0
    invoke-virtual {v0, v3}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    move-object v0, v2

    move-object v1, v3

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 210
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    return-void
.end method

.method public static putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 3

    .line 154
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    .line 156
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p3, v0, p0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object p0

    .line 161
    sget-object p3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0, p3}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {p3, v0, p1}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v1}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v1

    instance-of v2, v1, Lgnu/mapping/PropertyLocation;

    if-eqz v2, :cond_2

    .line 167
    check-cast v1, Lgnu/mapping/PropertyLocation;

    invoke-virtual {v1, p2}, Lgnu/mapping/PropertyLocation;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_2
    sget-object v1, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p3, v1, p0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object p0

    .line 171
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    new-instance v2, Lgnu/lists/Pair;

    invoke-direct {v2, p2, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    new-instance p2, Lgnu/lists/Pair;

    invoke-direct {p2, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0, p2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 197
    new-instance p0, Lgnu/mapping/PropertyLocation;

    invoke-direct {p0}, Lgnu/mapping/PropertyLocation;-><init>()V

    .line 199
    iput-object v2, p0, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    .line 200
    invoke-virtual {p3, v0, p1, p0}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    :goto_1
    return-void
.end method

.method public static removeProperty(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 254
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->removeProperty(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Z

    move-result p0

    return p0
.end method

.method public static removeProperty(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Z
    .locals 6

    .line 218
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    instance-of v3, v2, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    return v1

    .line 224
    :cond_1
    check-cast v2, Lgnu/lists/Pair;

    const/4 v3, 0x0

    .line 228
    :goto_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 236
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v3, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 244
    :goto_1
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_3

    .line 245
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p2, p0, p1}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 230
    :cond_4
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 231
    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_5

    return v1

    .line 234
    :cond_5
    check-cast v3, Lgnu/lists/Pair;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0
.end method

.method public static setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 115
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    return-void
.end method

.method public static setPropertyList(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 5

    .line 60
    monitor-enter p2

    .line 62
    :try_start_0
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 63
    instance-of v1, p0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_4

    .line 65
    check-cast p0, Lgnu/mapping/Symbol;

    .line 66
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    :goto_0
    instance-of v2, v1, Lgnu/lists/Pair;

    if-nez v2, :cond_2

    move-object v1, p1

    .line 83
    :goto_1
    instance-of v2, v1, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    goto :goto_3

    .line 85
    :cond_0
    check-cast v1, Lgnu/lists/Pair;

    .line 86
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-virtual {p2, p0, v2}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v3}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v3

    instance-of v4, v3, Lgnu/mapping/PropertyLocation;

    if-eqz v4, :cond_1

    .line 92
    check-cast v3, Lgnu/mapping/PropertyLocation;

    goto :goto_2

    .line 96
    :cond_1
    new-instance v3, Lgnu/mapping/PropertyLocation;

    invoke-direct {v3}, Lgnu/mapping/PropertyLocation;-><init>()V

    .line 97
    invoke-virtual {p2, p0, v2, v3}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 99
    :goto_2
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 100
    iput-object v1, v3, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    .line 102
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 73
    :cond_2
    check-cast v1, Lgnu/lists/Pair;

    .line 74
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 75
    invoke-static {p1, v2, v3}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p2, p0, v2}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 106
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p1, p0, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    invoke-virtual {v0, p1}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    return-void
.end method
