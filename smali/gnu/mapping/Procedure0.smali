.class public abstract Lgnu/mapping/Procedure0;
.super Lgnu/mapping/Procedure;
.source "Procedure0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    new-instance p1, Lgnu/mapping/WrongArguments;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    new-instance p1, Lgnu/mapping/WrongArguments;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    new-instance p1, Lgnu/mapping/WrongArguments;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    new-instance p1, Lgnu/mapping/WrongArguments;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    array-length v0, p1

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lgnu/mapping/Procedure0;->apply0()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public numArgs()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
