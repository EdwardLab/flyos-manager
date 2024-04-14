.class public Lgnu/lists/ImmutablePair;
.super Lgnu/lists/Pair;
.source "ImmutablePair.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/lists/Pair;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/lists/Pair;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/lists/ImmutablePair;->car:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lgnu/lists/ImmutablePair;->cdr:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public setCar(Ljava/lang/Object;)V
    .locals 1

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot modify read-only pair"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCdr(Ljava/lang/Object;)V
    .locals 1

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot modify read-only pair"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
