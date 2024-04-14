.class public abstract Lgnu/mapping/Environment;
.super Lgnu/mapping/PropertySet;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mapping/Environment$InheritedLocal;
    }
.end annotation


# static fields
.field static final CAN_DEFINE:I = 0x1

.field static final CAN_IMPLICITLY_DEFINE:I = 0x4

.field static final CAN_REDEFINE:I = 0x2

.field static final DIRECT_INHERITED_ON_SET:I = 0x10

.field public static final INDIRECT_DEFINES:I = 0x20

.field static final THREAD_SAFE:I = 0x8

.field protected static final curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

.field static final envTable:Ljava/util/Hashtable;

.field static global:Lgnu/mapping/Environment;


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 340
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/mapping/Environment;->envTable:Ljava/util/Hashtable;

    .line 371
    new-instance v0, Lgnu/mapping/Environment$InheritedLocal;

    invoke-direct {v0}, Lgnu/mapping/Environment$InheritedLocal;-><init>()V

    sput-object v0, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    const/16 v0, 0x17

    .line 43
    iput v0, p0, Lgnu/mapping/Environment;->flags:I

    return-void
.end method

.method public static current()Lgnu/mapping/Environment;
    .locals 1

    .line 369
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrent()Lgnu/mapping/Environment;
    .locals 3

    .line 375
    sget-object v0, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    invoke-virtual {v0}, Lgnu/mapping/Environment$InheritedLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    if-nez v1, :cond_0

    .line 378
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v1

    .line 379
    iget v2, v1, Lgnu/mapping/Environment;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lgnu/mapping/Environment;->flags:I

    .line 380
    invoke-virtual {v0, v1}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static getGlobal()Lgnu/mapping/Environment;
    .locals 1

    .line 25
    sget-object v0, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    .line 346
    :cond_0
    sget-object v0, Lgnu/mapping/Environment;->envTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    if-eqz v1, :cond_1

    .line 350
    monitor-exit v0

    return-object v1

    .line 351
    :cond_1
    new-instance v1, Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v1}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    .line 352
    invoke-virtual {v1, p0}, Lgnu/mapping/Environment;->setName(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;
    .locals 1

    .line 428
    new-instance v0, Lgnu/mapping/InheritingEnvironment;

    invoke-direct {v0, p0, p1}, Lgnu/mapping/InheritingEnvironment;-><init>(Ljava/lang/String;Lgnu/mapping/Environment;)V

    return-object v0
.end method

.method public static make()Lgnu/mapping/SimpleEnvironment;
    .locals 1

    .line 418
    new-instance v0, Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v0}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;
    .locals 1

    .line 423
    new-instance v0, Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v0, p0}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static restoreCurrent(Lgnu/mapping/Environment;)V
    .locals 1

    .line 399
    sget-object v0, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setCurrent(Lgnu/mapping/Environment;)V
    .locals 1

    .line 387
    sget-object v0, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setGlobal(Lgnu/mapping/Environment;)V
    .locals 0

    .line 20
    sput-object p0, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    return-void
.end method

.method public static setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;
    .locals 2

    .line 392
    sget-object v0, Lgnu/mapping/Environment;->curEnvironment:Lgnu/mapping/Environment$InheritedLocal;

    invoke-virtual {v0}, Lgnu/mapping/Environment$InheritedLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    .line 393
    invoke-virtual {v0, p0}, Lgnu/mapping/Environment$InheritedLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static user()Lgnu/mapping/Environment;
    .locals 1

    .line 402
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
.end method

.method public final addLocation(Lgnu/mapping/EnvironmentKey;Lgnu/mapping/Location;)V
    .locals 1

    .line 413
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    return-void
.end method

.method public final addLocation(Lgnu/mapping/NamedLocation;)V
    .locals 2

    .line 406
    invoke-virtual {p1}, Lgnu/mapping/NamedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/NamedLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    return-void
.end method

.method cloneForThread()Lgnu/mapping/SimpleEnvironment;
    .locals 9

    .line 444
    new-instance v0, Lgnu/mapping/InheritingEnvironment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgnu/mapping/InheritingEnvironment;-><init>(Ljava/lang/String;Lgnu/mapping/Environment;)V

    .line 449
    instance-of v2, p0, Lgnu/mapping/InheritingEnvironment;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 451
    move-object v2, p0

    check-cast v2, Lgnu/mapping/InheritingEnvironment;

    .line 452
    iget v4, v2, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 453
    iput v4, v0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 454
    new-array v5, v4, [Lgnu/mapping/Environment;

    iput-object v5, v0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 456
    iget-object v6, v0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget-object v7, v2, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v7, v7, v5

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Environment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v2

    .line 460
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 462
    invoke-virtual {v2}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v4

    .line 464
    invoke-virtual {v4}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    .line 465
    invoke-virtual {v4}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_1

    .line 466
    instance-of v7, v4, Lgnu/mapping/NamedLocation;

    if-eqz v7, :cond_1

    .line 468
    check-cast v4, Lgnu/mapping/NamedLocation;

    .line 469
    iget-object v7, v4, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    if-nez v7, :cond_2

    .line 471
    new-instance v7, Lgnu/mapping/SharedLocation;

    invoke-direct {v7, v5, v6, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 472
    iget-object v8, v4, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v8, v7, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 473
    iput-object v7, v4, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 474
    iput-object v1, v4, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    move-object v4, v7

    .line 477
    :cond_2
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v7

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    xor-int/2addr v7, v8

    .line 478
    invoke-virtual {v0, v5, v6, v7}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v5

    .line 479
    iput-object v4, v5, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 150
    instance-of v0, p1, Lgnu/mapping/EnvironmentKey;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lgnu/mapping/EnvironmentKey;

    .line 153
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 154
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    instance-of v1, p1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    check-cast p1, Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 158
    :goto_1
    invoke-virtual {p0, p1, v0}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public defaultNamespace()Lgnu/mapping/Namespace;
    .locals 1

    .line 332
    invoke-static {}, Lgnu/mapping/Namespace;->getDefault()Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public abstract define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
.end method

.method public abstract enumerateLocations()Lgnu/mapping/LocationEnumeration;
.end method

.method public final get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 184
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    .line 185
    invoke-virtual {p0, v0, p1, p2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 2

    .line 195
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, p1, v1, v0}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    return-object v1

    .line 198
    :cond_0
    new-instance v0, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v0, p1}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 178
    :cond_0
    invoke-virtual {p1, p3}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 224
    instance-of v0, p1, Lgnu/mapping/EnvironmentKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lgnu/mapping/EnvironmentKey;

    .line 227
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 228
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 230
    :goto_0
    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    check-cast p1, Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 232
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 190
    invoke-virtual {p0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCanDefine()Z
    .locals 2

    .line 55
    iget v0, p0, Lgnu/mapping/Environment;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCanRedefine()Z
    .locals 1

    .line 60
    iget v0, p0, Lgnu/mapping/Environment;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getChecked(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 167
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lgnu/mapping/UnboundLocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getFlags()I
    .locals 1

    .line 46
    iget v0, p0, Lgnu/mapping/Environment;->flags:I

    return v0
.end method

.method public final getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 2

    .line 209
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 210
    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    return-object v1

    .line 212
    :cond_0
    new-instance v0, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v0, p1}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 204
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;
    .locals 3

    .line 123
    instance-of v0, p1, Lgnu/mapping/EnvironmentKey;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lgnu/mapping/EnvironmentKey;

    .line 126
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 127
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    instance-of v1, p1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    check-cast p1, Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 131
    :goto_1
    invoke-virtual {p0, p1, v0, p2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public abstract getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
.end method

.method public final getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;
    .locals 2

    .line 116
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 117
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method protected abstract hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
.end method

.method public final isBound(Lgnu/mapping/Symbol;)Z
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Location;->isBound()Z

    move-result p1

    return p1
.end method

.method public final isLocked()Z
    .locals 1

    .line 67
    iget v0, p0, Lgnu/mapping/Environment;->flags:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final lookup(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public final lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object p1

    return-object p1
.end method

.method public abstract lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0, p1, v0}, Lgnu/mapping/Environment;->getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;

    move-result-object p1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p1, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    invoke-virtual {p1, p2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Environment;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 237
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0, p3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final putFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 1

    .line 261
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final remove(Lgnu/mapping/EnvironmentKey;)Ljava/lang/Object;
    .locals 3

    .line 293
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 294
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    .line 295
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    .line 296
    invoke-virtual {p0, v0, p1, v1}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 301
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 302
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Environment;->unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 283
    :cond_0
    invoke-virtual {p1, p2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 284
    invoke-virtual {p1}, Lgnu/mapping/Location;->undefine()V

    return-object p2
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 318
    instance-of v0, p1, Lgnu/mapping/EnvironmentKey;

    if-eqz v0, :cond_0

    .line 320
    check-cast p1, Lgnu/mapping/EnvironmentKey;

    .line 321
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 323
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    check-cast p1, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 325
    :goto_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v0, v2

    .line 326
    invoke-virtual {p0, p1, v1, v0}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Lgnu/mapping/Symbol;)V
    .locals 2

    .line 307
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Ljava/lang/Object;

    return-void
.end method

.method public final removeFunction(Lgnu/mapping/Symbol;)V
    .locals 1

    .line 312
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCanDefine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 57
    iget p1, p0, Lgnu/mapping/Environment;->flags:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lgnu/mapping/Environment;->flags:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lgnu/mapping/Environment;->flags:I

    return-void
.end method

.method public setCanRedefine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    iget p1, p0, Lgnu/mapping/Environment;->flags:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lgnu/mapping/Environment;->flags:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lgnu/mapping/Environment;->flags:I

    return-void
.end method

.method public setFlag(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 50
    iget p1, p0, Lgnu/mapping/Environment;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Lgnu/mapping/Environment;->flags:I

    goto :goto_0

    .line 51
    :cond_0
    iget p1, p0, Lgnu/mapping/Environment;->flags:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lgnu/mapping/Environment;->flags:I

    :goto_0
    return-void
.end method

.method public final setIndirectDefines()V
    .locals 2

    .line 77
    iget v0, p0, Lgnu/mapping/Environment;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgnu/mapping/Environment;->flags:I

    .line 78
    move-object v0, p0

    check-cast v0, Lgnu/mapping/InheritingEnvironment;

    const v1, 0x7fffffff

    iput v1, v0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    return-void
.end method

.method public setLocked()V
    .locals 1

    .line 72
    iget v0, p0, Lgnu/mapping/Environment;->flags:I

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lgnu/mapping/Environment;->flags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<environment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/Environment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lgnu/mapping/Environment;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;
    .locals 0

    .line 274
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported operation: unlink (aka undefine)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
