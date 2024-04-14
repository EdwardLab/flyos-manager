.class public Lgnu/mapping/ConstrainedLocation;
.super Lgnu/mapping/Location;
.source "ConstrainedLocation.java"


# instance fields
.field protected base:Lgnu/mapping/Location;

.field protected converter:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;
    .locals 1

    .line 15
    new-instance v0, Lgnu/mapping/ConstrainedLocation;

    invoke-direct {v0}, Lgnu/mapping/ConstrainedLocation;-><init>()V

    .line 16
    iput-object p0, v0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    .line 17
    iput-object p1, v0, Lgnu/mapping/ConstrainedLocation;->converter:Lgnu/mapping/Procedure;

    return-object v0
.end method


# virtual methods
.method protected coerce(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 50
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->converter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .line 23
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z

    move-result v0

    return v0
.end method

.method public isConstant()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {p0, p1}, Lgnu/mapping/ConstrainedLocation;->coerce(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {p0, p1}, Lgnu/mapping/ConstrainedLocation;->coerce(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
