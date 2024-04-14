.class public Lgnu/mapping/ReadOnlyLocation;
.super Lgnu/mapping/ConstrainedLocation;
.source "ReadOnlyLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/mapping/ConstrainedLocation;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Location;)Lgnu/mapping/ReadOnlyLocation;
    .locals 1

    .line 10
    new-instance v0, Lgnu/mapping/ReadOnlyLocation;

    invoke-direct {v0}, Lgnu/mapping/ReadOnlyLocation;-><init>()V

    .line 11
    iput-object p0, v0, Lgnu/mapping/ReadOnlyLocation;->base:Lgnu/mapping/Location;

    return-object v0
.end method


# virtual methods
.method protected coerce(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 22
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "attempt to modify read-only location"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lgnu/mapping/ReadOnlyLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ": "

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConstant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
