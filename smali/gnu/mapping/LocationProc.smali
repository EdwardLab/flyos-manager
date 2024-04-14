.class public Lgnu/mapping/LocationProc;
.super Lgnu/mapping/Procedure0or1;
.source "LocationProc.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# instance fields
.field loc:Lgnu/mapping/Location;


# direct methods
.method public constructor <init>(Lgnu/mapping/Location;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 28
    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p2}, Lgnu/mapping/LocationProc;->pushConverter(Lgnu/mapping/Procedure;)V

    :cond_0
    return-void
.end method

.method public static makeNamed(Lgnu/mapping/Symbol;Lgnu/mapping/Location;)Lgnu/mapping/LocationProc;
    .locals 1

    .line 21
    new-instance v0, Lgnu/mapping/LocationProc;

    invoke-direct {v0, p1}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    .line 22
    invoke-virtual {v0, p0}, Lgnu/mapping/LocationProc;->setSymbol(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lgnu/mapping/LocationProc;->set0(Ljava/lang/Object;)V

    .line 46
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public final getLocation()Lgnu/mapping/Location;
    .locals 1

    .line 61
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .line 56
    new-instance v0, Lgnu/mapping/Setter0;

    invoke-direct {v0, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public pushConverter(Lgnu/mapping/Procedure;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-static {v0, p1}, Lgnu/mapping/ConstrainedLocation;->make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-super {p0}, Lgnu/mapping/Procedure0or1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<location-proc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
