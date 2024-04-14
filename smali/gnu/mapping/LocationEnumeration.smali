.class public Lgnu/mapping/LocationEnumeration;
.super Ljava/lang/Object;
.source "LocationEnumeration.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lgnu/mapping/Location;",
        ">;",
        "Ljava/util/Enumeration<",
        "Lgnu/mapping/Location;",
        ">;"
    }
.end annotation


# instance fields
.field bindings:[Lgnu/mapping/NamedLocation;

.field env:Lgnu/mapping/SimpleEnvironment;

.field index:I

.field inherited:Lgnu/mapping/LocationEnumeration;

.field nextLoc:Lgnu/mapping/NamedLocation;

.field prevLoc:Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/SimpleEnvironment;)V
    .locals 2

    .line 30
    iget-object v0, p1, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iget p1, p1, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    invoke-direct {p0, v0, p1}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    return-void
.end method

.method public constructor <init>([Lgnu/mapping/NamedLocation;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 25
    iput p2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v0, p0}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Lgnu/mapping/Location;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->next()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lgnu/mapping/Location;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public nextLocation()Lgnu/mapping/Location;
    .locals 2

    .line 45
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v1, p0, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v1

    .line 51
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v1, v0, :cond_2

    .line 52
    iput-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 54
    :cond_2
    :goto_1
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    goto :goto_1

    .line 56
    :cond_3
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 57
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v1, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 73
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v1, p0, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 74
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 76
    iput-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 77
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_1

    .line 80
    :cond_1
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v1, p0, Lgnu/mapping/LocationEnumeration;->index:I

    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    aput-object v2, v0, v1

    .line 81
    :goto_1
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    iget v1, v0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    return-void

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
